<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = false;
}
use zd\Auction as Auc;
use zd\Helper;
use zd\Sql;
use zd\UserAddress;

class Auction extends \zd\Controller {

    public function indexAction() {
        $key = implode('-', $this->get('sort,order,page'));
        $this->hasCache($key);
        $page_title = '热门竞拍';
        $categories =     get_categories_tree(); // 分类树
        $helps = get_shop_help();       // 网店帮助
        $total = Auc::count();
        $search = $this->get('keywords', null);

        $sort = strtolower($this->get('sort', 'price'));
        $order = strtolower($this->get('order', 'desc'));
        $auction_list = Auc::getList($search, $sort, $order);
        $auction_name='auction';
        $user_rank_list = \zd\UserOrder::get_user_rank_list();



        $sort = \zd\Helper::get('sort', 'total');
        $defaultOrder = 'desc';
        $defaultOrder = $sort == 'price' ? 'asc' : $defaultOrder;

        $order = \zd\Helper::get('order', $defaultOrder);

        $page = $this->get('page', 1);
        $auction_list = $this->auction_list(20, $page, $sort, $order);


        $this->show(compact('page_title', 'helps', 'categories','auction_name', 'total', 'auction_list', 'user_rank_list', 'sort', 'order'));
    }


    public function auction_list($size=10, $page=1, $sort=null, $order=null)
    {

        $sort = is_null($sort) ? 'total' : $sort;
        $order = is_null($order) ? 'desc' : $order;

        //$orderByString = "ORDER BY a.act_id DESC";

        $deOrder = $order == 'desc' ? 'asc' : 'desc';

        switch ($sort) {
            case 'process' :
                $orderByString = " ORDER BY a.is_finished {$order} , a.end_time {$order} ";
                break;
            case 'sales' :

                $orderByString = " ORDER BY al.bid_price  {$order}";
                break;

            case 'add_time' :

                $orderByString = " ORDER BY a.act_id  {$order}";
                break;

            default :
                $orderByString = " ORDER BY al_count.count  {$order} , 
                                al.bid_price  {$deOrder},
                                a.act_id  {$order} ";
                breakk;

        }

        $auction_list = array();
//    $auction_list['finished'] = $auction_list['finished'] = array();

        $now = gmtime();
        $sql = "SELECT IFNULL(al_count.count, 0)total_bid_count,  IFNULL(al.bid_price,0) bid_price, a.*, IFNULL(g.goods_thumb, '') AS goods_thumb, g.user_rank " .
            "FROM " . $GLOBALS['ecs']->table('goods_activity') . " AS a " .
            "LEFT JOIN ( ".
            "select ".
            "a.act_id, max(l.bid_price) as bid_price ".
            "from ecs_goods_activity a ".
            "join ecs_auction_log l on a.act_id=l.act_id ".
            "group by act_id ".
            ")  ".
            "AS al ON a.act_id = al.act_id " ;

        $sql .= <<<STD
        LEFT JOIN ( 
                select 
                        a.act_id, count(l.act_id) as count
                from ecs_goods_activity a
                join ecs_auction_log l on a.act_id=l.act_id
                group by l.act_id
         )  
        AS al_count ON a.act_id = al_count.act_id 
STD;




        $sql =  $sql . " LEFT JOIN " . $GLOBALS['ecs']->table('goods') . " AS g ON a.goods_id = g.goods_id " .
            "WHERE a.act_type = '" . GAT_AUCTION . "' " .
            " AND a.is_finished < 2  {$orderByString} ";


        $res = \zd\Sql::create($sql)->query();
        while ($row = $GLOBALS['db']->fetchRow($res))
        {
            $ext_info = unserialize($row['ext_info']);
            $auction = array_merge($row, $ext_info);
            $auction['status_no'] = auction_status($auction);
            $auction['current_price'] = \zd\Sql::create()->select('Max(bid_price) as price')
                ->from('auction_log')
                ->where('act_id = '.$auction['act_id'])->scalar();
            $auction['user_count'] = \zd\Sql::create()->select('count(bid_user) as count')
                ->from('auction_log')
                ->where('act_id = '.$auction['act_id'])
                ->group('bid_user')->scalar();

            $auction['formated_start_time'] = local_date($GLOBALS['_CFG']['time_format'], $auction['start_time']);
            $auction['formated_end_time']   = local_date($GLOBALS['_CFG']['time_format'], $auction['end_time']);
            $auction['formated_start_price'] = price_format($auction['start_price']);
            $auction['formated_end_price'] = price_format($auction['end_price']);
            $auction['formated_deposit'] = price_format($auction['deposit']);
            $auction['goods_thumb'] = get_image_path($row['goods_id'], $row['goods_thumb'], true);
            $auction['url'] = build_uri('auction', array('auid'=>$auction['act_id']));

            /*if($auction['status_no'] < 2)
            {
                $auction_list['under_way'][] = $auction;
            }
            else
            {
                $auction_list['finished'][] = $auction;
            }*/

            $auction_list[] = $auction;
        }

//    $auction_list = @array_merge($auction_list['under_way'], $auction_list['finished']);

        require_once(ROOT_PATH. '/admin/includes/lib_goods.php');
        $rankTmpList = get_user_rank_list();
        $rank_list = [];
        foreach ($rankTmpList as $rank) {
            $rank_list[$rank['rank_id']] = $rank;
        }
        if(is_array($auction_list) && count($auction_list)) {
            foreach ($auction_list as $key=>$auction) {
                $rank = [];
                $tmpRank = $auction['user_rank'];
                $tmpRank = trim($tmpRank, ',');
                $tmpRank = explode(',', $tmpRank);
                if(count($tmpRank)) {
                    foreach ($tmpRank as $rankId) {
                        $rank[] = $rank_list[$rankId];
                    }
                    $auction_list[$key]['user_rank'] = $rank;
                } else {
                    $auction_list[$key]['user_rank'] = [];
                }
            }
        }
        return $auction_list;
    }

    public function viewAction() {
        global $_CFG;
        $id = intval($this->get('id'));
        if ($id <= 0) {
            Helper::redirect('index.php');
        }
        $auction = Auc::info($id);
        if (empty($auction)) {
            Helper::redirect('index.php');
        }

        if($_SESSION['user_id'])
            $userInfo = user_info($_SESSION['user_id']);
        $auction['has_rank'] = true;
        if(is_array($auction['user_rank']) && count($auction['user_rank'])) {
            $auction['has_rank'] = false;
            foreach ($auction['user_rank'] as $item) {
                if($item['rank_id'] == $userInfo['user_rank'])
                    $auction['has_rank'] = true;
            }
        }

        $cache_id = $_CFG['lang'] . '-' . $id . '-' . $auction['status_no'];
        if ($auction['status_no'] == UNDER_WAY)
        {
            if (isset($auction['last_bid']))
            {
                $cache_id = $cache_id . '-' . $auction['last_bid']['bid_time'];
            }
        }
        elseif ($auction['status_no'] == FINISHED && $auction['last_bid']['bid_user'] == $_SESSION['user_id']
            && $auction['order_count'] == 0)
        {
            $auction['is_winner'] = 1;
            $cache_id = $cache_id . '-' . $auction['last_bid']['bid_time'] . '-1';
        }

        $cache_id = sprintf('%X', crc32($cache_id));
        Sql::update('goods', [
            'click_count = click_count + 1'
        ], [
            'goods_id' => $auction['goods_id']
        ]);
        if (!empty($this->userId())) {
            $this->assign('my_bid', Sql::create()
            ->select('MAX(bid_price)')->from('auction_log')
            ->where('bid_user', $this->userId())->andWhere('act_id', $id)
            ->scalar());
        }
        $this->assign('now_time',  gmtime());           // 当前系统时间
        $this->assign('auction', $auction);
        $this->hasCache($cache_id);
        if ($auction['product_id'] > 0)
        {
            $goods_specifications = get_specifications_list($auction['goods_id']);

            $good_products = get_good_products($auction['goods_id'], 'AND product_id = ' . $auction['product_id']);

            $_good_products = explode('|', $good_products[0]['goods_attr']);
            $products_info = '';
            foreach ($_good_products as $value)
            {
                $products_info .= ' ' . $goods_specifications[$value]['attr_name'] . '：' . $goods_specifications[$value]['attr_value'];
            }
            $this->assign('products_info',     $products_info);
            unset($goods_specifications, $good_products, $_good_products,  $products_info);
        }

        $auction['gmt_end_time'] = local_strtotime($auction['end_time']);


        /* 取得拍卖商品信息 */
        $goods_id = $auction['goods_id'];
        $goods = goods_info($goods_id);
        if (empty($goods)) {
            Helper::redirect('index.php');
            exit;
        }
        $goods['url'] = build_uri('goods', array('gid' => $goods_id), $goods['goods_name']);
        $this->assign('auction_goods', $goods);
        $this->assign('pictures',            get_goods_gallery($goods_id));

        /* 出价记录 */
        $this->assign('auction_log', auction_log($id));

        //模板赋值
        $this->assign('cfg', $_CFG);
        assign_template();

        $position = assign_ur_here(0, $goods['goods_name']);
        $this->assign('page_title', $position['title']);    // 页面标题
        $this->assign('ur_here',    $position['ur_here']);  // 当前位置

        $this->assign('categories', get_categories_tree()); // 分类树
        $this->assign('helps',      get_shop_help());       // 网店帮助
        $this->assign('top_goods',  get_top10());           // 销售排行
        $this->assign('promotion_info', get_promotion_info());
        $this->assign('goods', $goods);
        $this->assign('user_id', $this->userId());
        assign_dynamic('auction');
        $this->show();
    }

    public function logAction() {
        $id = intval($this->get('id'));
        $page = intval($this->get('page', 1));
        $auction_log = Auc::log($id, $page > 0 ? $page : 1);
        $this->show(compact('auction_log'));
    }

    public function bidAction() {

        if(!$_SESSION['user_id'])
            Helper::redirect('user.php');

        include_once ROOT_PATH.'includes/lib_order.php';
        $id = intval($this->get('id'));
        if ($id <= 0) {
            Helper::redirect('index.php');
        }
        $auction = Auc::info($id);
        if (empty($auction)) {
            Helper::redirect('index.php');
        }
        $goods = goods_info($auction['goods_id']);
        $last_log = Sql::create()->select('MAX(bid_price) as price, address_id')
            ->from('auction_log')
            ->where('bid_user='.$this->userId())
            ->andWhere('act_id='.$id)->one();
        if ($last_log) {
            $this->assign('last_price', $last_log['price']);
        }
        $default_address = UserAddress::getDefaultId();
        if (!$this->has('address_id') && !empty($default_address) &&
            !isset($_SESSION['auction_address']) && !$last_log) {
            $this->set('address_id', $default_address);
        }
        if ($this->has('address_id')) {
            $_SESSION['auction_address'] = UserAddress::getRegion(intval($this->get('address_id')));
        }
        if (!isset($_SESSION['auction_address']) && $last_log) {
            $_SESSION['auction_address'] = UserAddress::getRegion($last_log['address_id']);
        }
        $this->assign('auction_address', $_SESSION['auction_address']);
        $address_list = UserAddress::all();

        $page_title = '竞拍';
        $consignee = get_consignee($this->userId());
        $user_info = $this->userInfo();
        $this->show(compact('address_list', 'goods', 'auction', 'page_title', 'default_address', 'consignee', 'user_info'));
    }

    public function bidActionPost() {
        global $_LANG;
        $id = intval($this->get('id'));
        if ($id <= 0) {
            Helper::failure('竞拍错误');
        }
        $auction = Auc::info($id);
        if (empty($auction)) {
            Helper::failure('竞拍错误');
        }
        /* 取得出价 */
        $bid_price = round(floatval($this->get('bid')), 2);
        if ($bid_price <= 0) {
            Helper::failure($_LANG['au_bid_price_error']);
        }
        $address_id = intval($this->get('address_id'));
        if ($address_id < 1) {
            Helper::failure('请选择收货地址');
        }

        /* 如果有一口价且出价大于等于一口价，则按一口价算 */
        $is_ok = false; // 出价是否ok
        if ($auction['end_price'] > 0) {
            if ($bid_price >= $auction['end_price']) {
                $bid_price = $auction['end_price'];
                $is_ok = true;
            }
        }

        /* 出价是否有效：区分第一次和非第一次 */
        if (!$is_ok) {
            if ($auction['bid_user_count'] == 0) {
                /* 第一次要大于等于起拍价 */
                $min_price = $auction['start_price'];

                if ($bid_price < $min_price) {
                    Helper::failure(sprintf($_LANG['au_your_lowest_price'], price_format($min_price, false)));
                }

            } else {
                /* 非第一次出价要大于等于最高价加上加价幅度，但不能超过一口价 */
                $min_price = $auction['last_bid']['bid_price'] + $auction['amplitude'];
                if ($auction['end_price'] > 0) {
                    $min_price = min($min_price, $auction['end_price']);
                }

                if ($bid_price < $min_price || $bid_price==$auction['end_price']) {
                    Helper::failure(sprintf($_LANG['au_your_lowest_price'], price_format($min_price, false)));
                }
            }


        }

        /* 检查联系两次拍卖人是否相同 */
        if ($auction['last_bid']['bid_user'] == $this->userId() && $bid_price != $auction['end_price']) {
            Helper::failure($_LANG['au_bid_repeat_user']);
        }

        /* 是否需要保证金 */
        if ($auction['deposit'] > 0) {
            /* 可用资金够吗 */
            if ($this->userInfo()['user_money'] < $auction['deposit']) {
                Helper::failure($_LANG['au_user_money_short']);
            }

            /* 如果不是第一个出价，解冻上一个用户的保证金 */
            if ($auction['bid_user_count'] > 0) {
                log_account_change($auction['last_bid']['bid_user'], $auction['deposit'], (-1) * $auction['deposit'],
                    0, 0, sprintf($_LANG['au_unfreeze_deposit'], $auction['act_name']));
            }

            /* 冻结当前用户的保证金 */
            log_account_change($this->userId(), (-1) * $auction['deposit'], $auction['deposit'],
                0, 0, sprintf($_LANG['au_freeze_deposit'], $auction['act_name']));
        }

        /* 插入出价记录 */
        $auction_log = array(
            'act_id'    => $id,
            'bid_user'  => $this->userId(),
            'bid_price' => $bid_price,
            'bid_time'  => gmtime(),
            'address_id' => $address_id
        );
        Sql::insert('auction_log', $auction_log);

        /* 出价是否等于一口价 */
        if ($bid_price == $auction['end_price']) {
            /* 结束拍卖活动 */
            Sql::update('goods_activity', [
                'is_finished' => 1
            ], [
                'act_id' => $id,
            ], 'LIMIT 1');
        }
        Helper::success([
            'url' => 'auction.php?act=view&id='.$id
        ]);
    }

    public function userId() {
        return $_SESSION['user_id'];
    }

    public function userInfo() {
        if (empty($this->info) && !empty($_SESSION['user_id'])) {
            $this->info = user_info($this->userId());
        }
        return $this->info;
    }

    private function renderHelper(){
        $helps = get_shop_help();       // 网店帮助
        $this->assign('helps', $helps);
    }


    public function init() {

        $this->assign('nav', 'auction');
        $this->renderHelper();

        global $user;
        $this->assign('action', static::$action);
        $this->user = $user;
        if (!empty($_SESSION['user_id'])) {
            include_once ROOT_PATH.'includes/lib_order.php';
            $userInfo = user_info($_SESSION['user_id']);
            $this->assign('user_info', $userInfo);
            $this->assign('user_info2', $userInfo);
            $this->assign('headpic', $userInfo['avatar']);
        }
    }
}
Auction::invoke();