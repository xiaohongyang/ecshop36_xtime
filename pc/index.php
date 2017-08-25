<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = false;
}

use zd\Sql;
use zd\Goods;

class Home extends \zd\Controller {

    public function indexAction() {
        $key = implode('-', $this->get('sort,order,page'));
        $this->hasCache($key);
        $page_title = '首页';
        $categories =     get_categories_tree(); // 分类树
        $helps = get_shop_help();       // 网店帮助
        $total = Sql::create()
            ->selectCount()->from('goods')
            ->where('is_on_sale = 1 AND is_alone_sale = 1 AND is_delete = 0')
            ->scalar();
        $sort = strtolower($this->get('sort', 'price'));
        $sort_map = [
            'sales' => 'click_count',
            'price' => 'shop_price'
        ];
        $order = strtolower($this->get('order', 'desc'));
        $goods_list = $this->_getGoodsList( array_key_exists($sort, $sort_map) ? $sort_map[$sort] : $sort,
            $order,
            intval($this->get('page', 1)));

        $this->show(compact('page_title',
            'helps', 'categories',
            'sort', 'order',
            'goods_list', 'total'));
    }

    private function _getGoodsList($sort, $order, $page) {
        $res = Sql::create()->select('g.goods_id,g.goods_brief,  g.goods_name, g.market_price, g.is_vip, g.add_time, g.click_count, g.shop_price AS org_price',
            "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS shop_price",
            'g.promote_price, promote_start_date, promote_end_date, g.goods_brief, g.goods_thumb, g.goods_img')
            ->from('goods g')
            ->left('member_price mp', "mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]'")
            ->where('g.is_on_sale = 1')
            ->andWhere('g.is_alone_sale = 1')
            ->andWhere('g.is_delete = 0')
            ->when(!empty($sort), function (Sql $sql) use ($sort, $order) {
                $sql->order(sprintf('g.%s %s', $sort, $order));
            })->limit(($page - 1) * 20, 20)->all();

        $goods = array();
        foreach ($res as $idx => $row) {
            if ($row['promote_price'] > 0) {
                $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
                $goods[$idx]['promote_price'] = $promote_price > 0 ? price_format($promote_price) : '';
            } else {
                $goods[$idx]['promote_price'] = '';
            }

            $goods[$idx]['goods_id'] = $goods[$idx]['id']           = $row['goods_id'];
            $goods[$idx]['goods_name'] = $goods[$idx]['name']         = $row['goods_name'];
            $goods[$idx]['brief']        = $row['goods_brief'];
            $goods[$idx]['market_price'] = price_format($row['market_price']);
            $goods[$idx]['short_name']   = $GLOBALS['_CFG']['goods_name_length'] > 0 ?
                sub_str($row['goods_name'], $GLOBALS['_CFG']['goods_name_length']) : $row['goods_name'];
            $goods[$idx]['shop_price']   = price_format($row['shop_price']);
            $goods[$idx]['goods_thumb'] = $goods[$idx]['thumb']        = get_image_path($row['goods_id'], $row['goods_thumb'], true);
            $goods[$idx]['goods_img']    = get_image_path($row['goods_id'], $row['goods_img']);
            $goods[$idx]['url']          = build_uri('goods', array('gid' => $row['goods_id']), $row['goods_name']);
            $goods[$idx]['sort_price']   = $row['shop_price'];
            $goods[$idx]['add_time']     = $row['add_time'];
            $goods[$idx]['is_vip']     = $row['vip'];
            $goods[$idx]['goods_brief']     = $row['goods_brief'];
            $cum_sales                   = get_cum_sales($row['goods_id']);
            $goods[$idx]['cum_sales']    = $cum_sales;
            $goods[$idx]['total_sort']   = $cum_sales/0.8+$row['click_count']/0.2;
            $goods[$idx] = Goods::addTag($goods[$idx]);
        }


        return $goods;
    }
}
Home::invoke();