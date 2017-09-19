<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/shopping_flow.php');
if ((DEBUG_MODE & 2) != 2) {
    $smarty->caching = false;
}

use zd\Helper;
use zd\Cart;
use zd\UserAddress;
use zd\UserOrder;
use zd\Sql;

class Flow extends \zd\Controller {

    protected static $action = 'cart';

    protected static $actionKey = 'step';

    protected $info;

    /**
     * 获取购物车的商品
     */
    public function cartAction() {
        $goods_list = Cart::all();
        $page_title = '我的购物车';
        $this->show(compact('goods_list', 'page_title'));
    }

    public function addGoodsAction() {
        global $err;
        include_once ROOT_PATH. 'includes/lib_order.php';

        $flow_type = isset($_SESSION['flow_type']) ? intval($_SESSION['flow_type']) : CART_GENERAL_GOODS;
        $num = $_REQUEST['num'];

        if ($_REQUEST['flow_type'] == 'buy_now') {
            if($num > 99) {
                Helper::failure(sprintf($GLOBALS['_LANG']['cart_limit_99']));
            }
            $goods_id = intval($_GET['goods_id']);
            $num = intval(Helper::get('num', 1));
            $spec = explode(',', Helper::get('spec', ''));
            $flowType = CART_GENERAL_GOODS;
            $rec_id = Cart::addToCart($goods_id, $num, $spec,0,$flow_type);
            if (!empty($rec_id)) {
                Helper::success($rec_id);
            }
            $msg = $err->last_message();
            Helper::failure(is_array($msg) ? current($msg) : $msg);
        }  else {
            if($num > 99) {
                Helper::failure(sprintf($GLOBALS['_LANG']['cart_limit_99']));
            }
            $goods_id = intval($_GET['goods_id']);
            $num = intval(Helper::get('num', 1));
            $spec = explode(',', Helper::get('spec', ''));
            $rec_id = Cart::addToCart($goods_id, $num, $spec);
            if (!empty($rec_id)) {
                Helper::success($rec_id);
            }
            $msg = $err->last_message();
            Helper::failure(is_array($msg) ? current($msg) : $msg);
        }
    }

    public function dropGoodsAction() {
        global $err;

        $rec_id = intval($this->get('id'));
        $this->flow_drop_cart_goods($rec_id);

        Helper::success();
    }

    public function updateCartAction() {
        global $_LANG;

        $goodsNumber = $_POST['goods_number'];
        $checkMsg = $this->checkGoods($goodsNumber);
        if($checkMsg != '')
            Helper::failure($checkMsg);

        if (isset($_POST['goods_number']) && is_array($goodsNumber)) {
            Cart::updateCart($goodsNumber);
            Helper::success($_LANG['update_cart_notice']);
        }
        Helper::failure('更新失败！');
    }

    protected function checkGoods($goods) {

        $result = "";
        if(is_array($goods) && count($goods)) {
            $keys = array_keys($goods);
            $values = array_values($goods);
            foreach ($values as $item) {
                if($item > 99) {
                    $result = "数量不能超过99";
                    break;
                }
            }
        }
        return $result;
    }

    public function infoAction() {
        $goods_list = Cart::all();
        if (empty($goods_list)) {
            $this->show();
            //Helper::success();
        }
        $total = 0;
        foreach ($goods_list as $goods) {
            $total += $goods['subtotal'];
        }
        $this->show(compact('goods_list', 'total'));
    }

    public function checkoutAction() {
        global $_LANG;
        if($_REQUEST['flow_type'] && $_REQUEST['flow_type'] == 'buy_now'){

            $flow_type = CART_BUY_NOW;
            $this->assign('flow_type', 'buy_now');
        } else {

            $flow_type = isset($_SESSION['flow_type']) ? intval($_SESSION['flow_type']) : CART_GENERAL_GOODS;
        }
        /* 团购标志 */
        if ($flow_type == CART_GROUP_BUY_GOODS) {
            $this->assign('is_group_buy', 1);
        }
        /* 积分兑换商品 */
        elseif ($flow_type == CART_EXCHANGE_GOODS) {
            $this->assign('is_exchange_goods', 1);
        } else {
            //正常购物流程  清空其他购物流程情况
            $_SESSION['flow_order']['extension_code'] = '';
        }
        $consignee = get_consignee($this->userId());
        if (!empty($consignee) && !array_key_exists('region', $consignee)) {
            $consignee = UserAddress::getRegion($consignee['address_id']);
        }
        $_SESSION['flow_consignee'] = $consignee;
        $default_address = UserAddress::getDefaultId();
        $address_list = UserAddress::all();
        $goods_list = Cart::getSelected($flow_type);

        /*
 * 取得订单信息
 */
        $order = flow_order_info();

        /* 计算折扣 */
        if ($flow_type != CART_EXCHANGE_GOODS && $flow_type != CART_GROUP_BUY_GOODS)
        {
            $discount = compute_discount();
            $this->assign('discount', $discount['discount']);
            $favour_name = empty($discount['name']) ? '' : join(',', $discount['name']);
            $this->assign('your_discount', sprintf($_LANG['your_discount'], $favour_name, price_format($discount['discount'])));
        }

        /*
         * 计算订单的费用
         */
        $total = order_fee($order, $goods_list, $consignee);

        $page_title = '确认订单';

        $this->show(compact('page_title', 'address_list',
            'goods_list', 'total', 'order', 'consignee', 'default_address'));
    }

    public function payAction() {
        $id = intval($this->get('id'));
        $order = Sql::create()
            ->from('order_info')
            ->where('user_id', $this->userId())
            ->andWhere('order_id', $id)->one();
        if (empty($order)) {
            show_message('订单不能存在！');
        }
        if ($order['pay_status'] != PS_UNPAYED) {
            show_message('订单已支付!');
        }
        if ($order['order_status'] == OS_RETURNED ||
            $order['order_status'] == OS_CANCELED || $order['order_status'] == OS_INVALID) {
            show_message('订单无效！');
        }
        $page_title = '支付订单';

        $this->show('done', compact('order', 'page_title'));
    }

    public function doneAction() {
        global $_LANG, $_CFG, $ecs, $db;
        include_once('includes/lib_clips.php');
        include_once('includes/lib_payment.php');

        /* 取得购物类型 */
        if($_REQUEST['flow_type'] == 'buy_now'){
            $flow_type = CART_BUY_NOW;
        } else {
            $flow_type = isset($_SESSION['flow_type']) ? intval($_SESSION['flow_type']) : CART_GENERAL_GOODS;
        }

        /* 检查购物车中是否有商品 */

        if (Cart::count($flow_type) == 0) {
            show_message($_LANG['no_goods_in_cart'], '', '', 'warning');
        }

        /* 检查商品库存 */
        /* 如果使用库存，且下订单时减库存，则减少库存 */
        if ($_CFG['use_storage'] == '1' && $_CFG['stock_dec_time'] == SDT_PLACE) {
            $cart_goods_stock = Cart::getSelected($flow_type);
            $_cart_goods_stock = array();
            foreach ($cart_goods_stock as $value)
            {
                $_cart_goods_stock[$value['rec_id']] = $value['goods_number'];
            }
            Cart::cartStock($_cart_goods_stock);
            unset($cart_goods_stock, $_cart_goods_stock);
        }

        /*
         * 检查用户是否已经登录
         * 如果用户已经登录了则检查是否有默认的收货地址
         * 如果没有登录则跳转到登录和注册页面
         */
        if (empty($_SESSION['direct_shopping']) && $_SESSION['user_id'] == 0) {
            /* 用户没有登录且没有选定匿名购物，转向到登录页面 */
            ecs_header("Location: flow.php?step=login\n");
            exit;
        }

//        $consignee = get_consignee($_SESSION['user_id']);
        $consignee = get_consignee_by_id($_POST['address_id']);

        /* 检查收货人信息是否完整 */
        if (!check_consignee_info($consignee, $flow_type)) {
            /* 如果不完整则转向到收货人信息填写界面 */
            Helper::redirect('user.php?act=address_list');
            exit;
        }

        $_POST['how_oos'] = isset($_POST['how_oos']) ? intval($_POST['how_oos']) : 0;
        $_POST['card_message'] = isset($_POST['card_message']) ? compile_str($_POST['card_message']) : '';
        $_POST['inv_type'] = !empty($_POST['inv_type']) ? compile_str($_POST['inv_type']) : '';
        $_POST['inv_payee'] = isset($_POST['inv_payee']) ? compile_str($_POST['inv_payee']) : '';
        $_POST['inv_content'] = isset($_POST['inv_content']) ? compile_str($_POST['inv_content']) : '';
        $_POST['postscript'] = isset($_POST['postscript']) ? compile_str($_POST['postscript']) : '';

        $order = array(
            'shipping_id'     => intval($_POST['shipping']),
            'pay_id'          => intval($_POST['payment']),
            'pack_id'         => isset($_POST['pack']) ? intval($_POST['pack']) : 0,
            'card_id'         => isset($_POST['card']) ? intval($_POST['card']) : 0,
            'card_message'    => trim($_POST['card_message']),
            'surplus'         => isset($_POST['surplus']) ? floatval($_POST['surplus']) : 0.00,
            'integral'        => isset($_POST['integral']) ? intval($_POST['integral']) : 0,
            'bonus_id'        => isset($_POST['bonus']) ? intval($_POST['bonus']) : 0,
            'need_inv'        => empty($_POST['need_inv']) ? 0 : 1,
            'inv_type'        => $_POST['inv_type'],
            'inv_payee'       => trim($_POST['inv_payee']),
            'inv_content'     => $_POST['inv_content'],
            'postscript'      => trim($_POST['postscript']),
            'how_oos'         => isset($_LANG['oos'][$_POST['how_oos']]) ? addslashes($_LANG['oos'][$_POST['how_oos']]) : '',
            'need_insure'     => isset($_POST['need_insure']) ? intval($_POST['need_insure']) : 0,
            'user_id'         => $_SESSION['user_id'],
            'add_time'        => gmtime(),
            'lastmodify'      => gmtime(),
            'order_status'    => OS_UNCONFIRMED,
            'shipping_status' => SS_UNSHIPPED,
            'pay_status'      => PS_UNPAYED,
            'agency_id'       => get_agency_by_regions(array($consignee['country'], $consignee['province'], $consignee['city'], $consignee['district']))
        );

        /* 扩展信息 */
        if (isset($_SESSION['flow_type']) && intval($_SESSION['flow_type']) != CART_GENERAL_GOODS)
        {
            $order['extension_code'] = $_SESSION['extension_code'];
            $order['extension_id'] = $_SESSION['extension_id'];
        } else {
            $order['extension_code'] = '';
            $order['extension_id'] = 0;
        }

        /* 检查积分余额是否合法 */
        $user_id = $_SESSION['user_id'];
        if ($user_id > 0) {
            $user_info = user_info($user_id);

            $order['surplus'] = min($order['surplus'], $user_info['user_money'] + $user_info['credit_line']);
            if ($order['surplus'] < 0)
            {
                $order['surplus'] = 0;
            }

            // 查询用户有多少积分
            $flow_points = Cart::availablePoints()[1];  // 该订单允许使用的积分
            $user_points = $user_info['pay_points']; // 用户的积分总数

            $order['integral'] = min($order['integral'], $user_points, $flow_points);
            if ($order['integral'] < 0)
            {
                $order['integral'] = 0;
            }
        }
        else
        {
            $order['surplus']  = 0;
            $order['integral'] = 0;
        }

        /* 检查红包是否存在 */
        if ($order['bonus_id'] > 0)
        {
            $bonus = bonus_info($order['bonus_id']);

            if (empty($bonus) || $bonus['user_id'] != $user_id || $bonus['order_id'] > 0 || $bonus['min_goods_amount'] > cart_amount(true, $flow_type))
            {
                $order['bonus_id'] = 0;
            }
        }
        elseif (isset($_POST['bonus_sn'])) {
            $bonus_sn = trim($_POST['bonus_sn']);
            $bonus = bonus_info(0, $bonus_sn);
            $now = gmtime();
            if (empty($bonus) || $bonus['user_id'] > 0 || $bonus['order_id'] > 0 || $bonus['min_goods_amount'] > cart_amount(true, $flow_type) || $now > $bonus['use_end_date'])
            {
            }
            else
            {
                if ($user_id > 0)
                {
                    Sql::update('user_bonus', [
                        'user_id' => $user_id,
                    ], 'bonus_id = '.$bonus['bonus_id']. ' LIMIT 1');
                }
                $order['bonus_id'] = $bonus['bonus_id'];
                $order['bonus_sn'] = $bonus_sn;
            }
        }

        /* 订单中的商品 */
        $cart_goods = cart_goods($flow_type);

        if (empty($cart_goods))
        {
            show_message($_LANG['no_goods_in_cart'], $_LANG['back_home'], './', 'warning');
        }

        /* 检查商品总额是否达到最低限购金额 */
        if ($flow_type == CART_GENERAL_GOODS && cart_amount(true, CART_GENERAL_GOODS) < $_CFG['min_goods_amount'])
        {
            show_message(sprintf($_LANG['goods_amount_not_enough'], price_format($_CFG['min_goods_amount'], false)));
        }

        /* 收货人信息 */
        foreach ($consignee as $key => $value)
        {
            $order[$key] = addslashes($value);
        }

        /* 判断是不是实体商品 */
        foreach ($cart_goods AS $val)
        {
            /* 统计实体商品的个数 */
            if ($val['is_real'])
            {
                $is_real_good=1;
            }
        }
        if(isset($is_real_good))
        {
            $shipping_id = Sql::create()
                ->select('shipping_id')
                ->from('shipping')
                ->where('shipping_id', $order['shipping_id'])
                ->andWhere('enabled =1')->scalar();
            if(empty($shipping_id))
            {
                show_message($_LANG['flow_no_shipping']);
            }
        }
        /* 订单中的总额 */
        $total = order_fee($order, $cart_goods, $consignee);
        $order['bonus']        = $total['bonus'];
        $order['goods_amount'] = $total['goods_price'];
        $order['discount']     = $total['discount'];
        $order['surplus']      = $total['surplus'];
        $order['tax']          = $total['tax'];

        // 购物车中的商品能享受红包支付的总额
        $discount_amout = compute_discount_amount();
        // 红包和积分最多能支付的金额为商品总额
        $temp_amout = $order['goods_amount'] - $discount_amout;
        if ($temp_amout <= 0)
        {
            $order['bonus_id'] = 0;
        }

        /* 配送方式 */
        if ($order['shipping_id'] > 0)
        {
            $shipping = shipping_info($order['shipping_id']);
            $order['shipping_name'] = addslashes($shipping['shipping_name']);
        }
        $order['shipping_fee'] = $total['shipping_fee'];
        $order['insure_fee']   = $total['shipping_insure'];

        /* 支付方式 */
        if ($order['pay_id'] > 0)
        {
            $payment = payment_info($order['pay_id']);
            $order['pay_name'] = addslashes($payment['pay_name']);
        }
        $order['pay_fee'] = $total['pay_fee'];
        $order['cod_fee'] = $total['cod_fee'];

        /* 商品包装 */
        if ($order['pack_id'] > 0)
        {
            $pack               = pack_info($order['pack_id']);
            $order['pack_name'] = addslashes($pack['pack_name']);
        }
        $order['pack_fee'] = $total['pack_fee'];

        /* 祝福贺卡 */
        if ($order['card_id'] > 0)
        {
            $card               = card_info($order['card_id']);
            $order['card_name'] = addslashes($card['card_name']);
        }
        $order['card_fee']      = $total['card_fee'];

        $order['order_amount']  = number_format($total['amount'], 2, '.', '');

        /* 如果全部使用余额支付，检查余额是否足够 */
        if ($payment['pay_code'] == 'balance'
            && $order['order_amount'] > 0) {
            if($order['surplus'] >0) //余额支付里如果输入了一个金额
            {
                $order['order_amount'] = $order['order_amount'] + $order['surplus'];
                $order['surplus'] = 0;
            }
            if ($order['order_amount'] > ($user_info['user_money'] + $user_info['credit_line']))
            {
                show_message($_LANG['balance_not_enough']);
            }
            else
            {
                $order['surplus'] = $order['order_amount'];
                $order['order_amount'] = 0;
            }
        }

        /* 如果订单金额为0（使用余额或积分或红包支付），修改订单状态为已确认、已付款 */
        if ($order['order_amount'] <= 0)
        {
            $order['order_status'] = OS_CONFIRMED;
            $order['confirm_time'] = gmtime();
            $order['pay_status']   = PS_PAYED;
            $order['pay_time']     = gmtime();
            $order['order_amount'] = 0;
        }

        $order['integral_money']   = $total['integral_money'];
        $order['integral']         = $total['integral'];

        if ($order['extension_code'] == 'exchange_goods')
        {
            $order['integral_money']   = 0;
            $order['integral']         = $total['exchange_integral'];
        }

        $order['from_ad']          = !empty($_SESSION['from_ad']) ? $_SESSION['from_ad'] : '0';
        $order['referer']          = !empty($_SESSION['referer']) ? addslashes($_SESSION['referer']) : '';

        /* 记录扩展信息 */
        if ($flow_type != CART_GENERAL_GOODS)
        {
            $order['extension_code'] = $_SESSION['extension_code'];
            $order['extension_id'] = $_SESSION['extension_id'];
        }

        $affiliate = unserialize($_CFG['affiliate']);
        if(isset($affiliate['on']) && $affiliate['on'] == 1 && $affiliate['config']['separate_by'] == 1)
        {
            //推荐订单分成
            $parent_id = get_affiliate();
            if($user_id == $parent_id)
            {
                $parent_id = 0;
            }
        }
        elseif(isset($affiliate['on']) && $affiliate['on'] == 1 && $affiliate['config']['separate_by'] == 0)
        {
            //推荐注册分成
            $parent_id = 0;
        }
        else
        {
            //分成功能关闭
            $parent_id = 0;
        }
        $order['parent_id'] = $parent_id;

        /* 插入订单表 */
        $error_no = 0;
        do
        {
            $order['order_sn'] = get_order_sn(); //获取新订单号
            $GLOBALS['db']->autoExecute($GLOBALS['ecs']->table('order_info'), $order, 'INSERT');

            $error_no = $GLOBALS['db']->errno();

            if ($error_no > 0 && $error_no != 1062)
            {
                die($GLOBALS['db']->errorMsg());
            }
        }
        while ($error_no == 1062); //如果是订单号重复则重新提交数据

        $new_order_id = $db->insert_id();
        $order['order_id'] = $new_order_id;

        /* 插入订单商品 */
        $sql = "INSERT INTO " . $ecs->table('order_goods') . "( " .
            "order_id, goods_id, goods_name, goods_sn, product_id, goods_number, market_price, ".
            "goods_price, goods_attr, is_real, extension_code, parent_id, is_gift, goods_attr_id) ".
            " SELECT '$new_order_id', goods_id, goods_name, goods_sn, product_id, goods_number, market_price, ".
            "goods_price, goods_attr, is_real, extension_code, parent_id, is_gift, goods_attr_id".
            " FROM " .$ecs->table('cart') .
            " WHERE session_id = '".SESS_ID."' AND rec_type = '$flow_type'";
        $db->query($sql);
        /* 修改拍卖活动状态 */
        if ($order['extension_code']=='auction')
        {
            $sql = "UPDATE ". $ecs->table('goods_activity') ." SET is_finished='2' WHERE act_id=".$order['extension_id'];
            $db->query($sql);
        }

        /* 处理余额、积分、红包 */
        if ($order['user_id'] > 0 && $order['surplus'] > 0)
        {
            log_account_change($order['user_id'], $order['surplus'] * (-1), 0, 0, 0, sprintf($_LANG['pay_order'], $order['order_sn']));
            //订单支付后，创建订单到淘打
            include_once("includes/cls_matrix.php");
            $matrix = new matrix();
            $bind_info = $matrix->get_bind_info(array('taodali'));
            if($bind_info){
                $matrix->createOrder($order['order_sn'],'taodali');
            }
        }
        if ($order['user_id'] > 0 && $order['integral'] > 0)
        {
            log_account_change($order['user_id'], 0, 0, 0, $order['integral'] * (-1), sprintf($_LANG['pay_order'], $order['order_sn']));
            //订单支付后，创建订单到淘打
            include_once("includes/cls_matrix.php");
            $matrix = new matrix();
            $bind_info = $matrix->get_bind_info(array('taodali'));
            if($bind_info){
                $matrix->createOrder($order['order_sn'],'taodali');
            }
        }


        if ($order['bonus_id'] > 0 && $temp_amout > 0)
        {
            use_bonus($order['bonus_id'], $new_order_id);
        }

        /* 如果使用库存，且下订单时减库存，则减少库存 */
        if ($_CFG['use_storage'] == '1' && $_CFG['stock_dec_time'] == SDT_PLACE)
        {
            change_order_goods_storage($order['order_id'], true, SDT_PLACE);
        }

        /* 给商家发邮件 */
        /* 增加是否给客服发送邮件选项 */
        if ($_CFG['send_service_email'] && $_CFG['service_email'] != '')
        {
            $tpl = get_mail_template('remind_of_new_order');
            $this->assign('order', $order);
            $this->assign('goods_list', $cart_goods);
            $this->assign('shop_name', $_CFG['shop_name']);
            $this->assign('send_date', date($_CFG['time_format']));
            $content = $this->render('str:' . $tpl['template_content']);
            send_mail($_CFG['shop_name'], $_CFG['service_email'], $tpl['template_subject'], $content, $tpl['is_html']);
        }

        /* 如果需要，发短信 */
        if ($_CFG['sms_order_placed'] == '1' && $_CFG['sms_shop_mobile'] != '')
        {
            include_once('includes/cls_sms.php');
            $sms = new sms();
            $msg = $order['pay_status'] == PS_UNPAYED ?
                $_LANG['order_placed_sms'] : $_LANG['order_placed_sms'] . '[' . $_LANG['sms_paid'] . ']';
            $sms->send($_CFG['sms_shop_mobile'], sprintf($msg, $order['consignee'], $order['tel']),'', 13,1);
        }

        /* 如果订单金额为0 处理虚拟卡 */
        if ($order['order_amount'] <= 0)
        {
            $sql = "SELECT goods_id, goods_name, goods_number AS num FROM ".
                $GLOBALS['ecs']->table('cart') .
                " WHERE is_real = 0 AND extension_code = 'virtual_card'".
                " AND session_id = '".SESS_ID."' AND rec_type = '$flow_type'";

            $res = $GLOBALS['db']->getAll($sql);

            $virtual_goods = array();
            foreach ($res AS $row)
            {
                $virtual_goods['virtual_card'][] = array('goods_id' => $row['goods_id'], 'goods_name' => $row['goods_name'], 'num' => $row['num']);
            }

            if ($virtual_goods AND $flow_type != CART_GROUP_BUY_GOODS)
            {
                /* 虚拟卡发货 */
                if (virtual_goods_ship($virtual_goods,$msg, $order['order_sn'], true))
                {
                    /* 如果没有实体商品，修改发货状态，送积分和红包 */
                    $sql = "SELECT COUNT(*)" .
                        " FROM " . $ecs->table('order_goods') .
                        " WHERE order_id = '$order[order_id]' " .
                        " AND is_real = 1";
                    if ($db->getOne($sql) <= 0)
                    {
                        /* 修改订单状态 */
                        update_order($order['order_id'], array('shipping_status' => SS_SHIPPED, 'shipping_time' => gmtime()));

                        /* 如果订单用户不为空，计算积分，并发给用户；发红包 */
                        if ($order['user_id'] > 0)
                        {
                            /* 取得用户信息 */
                            $user = user_info($order['user_id']);

                            /* 计算并发放积分 */
                            $integral = integral_to_give($order);
                            log_account_change($order['user_id'], 0, 0, intval($integral['rank_points']), intval($integral['custom_points']), sprintf($_LANG['order_gift_integral'], $order['order_sn']));

                            /* 发放红包 */
                            send_order_bonus($order['order_id']);
                        }
                    }
                }
            }

        }

        /* 清空购物车 */
        clear_cart($flow_type);
        /* 清除缓存，否则买了商品，但是前台页面读取缓存，商品数量不减少 */
        clear_all_files();

        /* 插入支付日志 */
        $order['log_id'] = insert_pay_log($new_order_id, $order['order_amount'], PAY_ORDER);

        /* 取得支付信息，生成支付代码 */
        if ($order['order_amount'] > 0)
        {
            $payment = payment_info($order['pay_id']);

            include_once('includes/modules/payment/' . $payment['pay_code'] . '.php');
            $pay_obj    = new $payment['pay_code'];
//为天宫支付传递商品名
            $sql = "SELECT goods_name FROM " . $ecs->table('order_goods') . " WHERE order_id =" . $order['order_id'];
            $res = $db->query($sql);
            while ($aaa[] = $db->fetchRow($res))
            {
                $bbb = array_values($aaa);
            }
            foreach($bbb as $v)
            {
                $ccc[] = $v['goods_name'];
            }
            $goods_name = implode(',',$ccc);
            $order['goods_name'] = $goods_name;

//天工结束

            //云起收银
            $payment['pay_code']='yunqi' and  $order['yunqi_paymethod'] = $_POST['yunqi_paymethod'];
            $pay_online = $pay_obj->get_code($order, unserialize_config($payment['pay_config']));

            $order['pay_desc'] = $payment['pay_desc'];

            $this->assign('pay_online', $pay_online);
        }
        if(!empty($order['shipping_name']))
        {
            $order['shipping_name']=trim(stripcslashes($order['shipping_name']));
        }

        /* 订单信息 */
        $this->assign('order',      $order);
        $this->assign('total',      $total);
        $this->assign('goods_list', $cart_goods);
        $this->assign('order_submit_back', sprintf($_LANG['order_submit_back'], $_LANG['back_home'], $_LANG['goto_user_center'])); // 返回提示

        // 对接erp将订单推送到erp
        include_once(ROOT_PATH . 'includes/cls_matrix.php');
        $matrix = new matrix;
        $matrix->createOrder($order['order_sn']);

        user_uc_call('add_feed', array($order['order_id'], BUY_GOODS)); //推送feed到uc
        unset($_SESSION['flow_consignee']); // 清除session中保存的收货人信息
        unset($_SESSION['flow_order']);
        unset($_SESSION['direct_shopping']);
        if ($order['order_amount'] <= 0) {
            $this->show('success');
        }
        $this->show();
    }

    public function successAction() {
        $this->show();
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

    public function init() {
        $this->assign('action', static::$action);
        if (!empty($_SESSION['user_id'])) {
            include_once ROOT_PATH.'includes/lib_order.php';
            $this->assign('user_info', $this->userInfo());
            $this->assign('user_info2', $this->userInfo());
        } else if (!in_array(static::$action, ['info'])) {
            Helper::redirect('user.php');
        }
    }



    private function flow_drop_cart_goods($id)
    {
        /* 取得商品id */
        $sql = "SELECT * FROM " .$GLOBALS['ecs']->table('cart'). " WHERE rec_id = '$id'";
        $row = $GLOBALS['db']->getRow($sql);
        if ($row)
        {
            //如果是超值礼包
            if ($row['extension_code'] == 'package_buy')
            {
                $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
                    " WHERE session_id = '" . SESS_ID . "' " .
                    "AND rec_id = '$id' LIMIT 1";
            }

            //如果是普通商品，同时删除所有赠品及其配件
            elseif ($row['parent_id'] == 0 && $row['is_gift'] == 0)
            {
                /* 检查购物车中该普通商品的不可单独销售的配件并删除 */
                $sql = "SELECT c.rec_id
                    FROM " . $GLOBALS['ecs']->table('cart') . " AS c, " . $GLOBALS['ecs']->table('group_goods') . " AS gg, " . $GLOBALS['ecs']->table('goods'). " AS g
                    WHERE gg.parent_id = '" . $row['goods_id'] . "'
                    AND c.goods_id = gg.goods_id
                    AND c.parent_id = '" . $row['goods_id'] . "'
                    AND c.extension_code <> 'package_buy'
                    AND gg.goods_id = g.goods_id
                    AND g.is_alone_sale = 0";
                $res = $GLOBALS['db']->query($sql);
                $_del_str = $id . ',';
                while ($id_alone_sale_goods = $GLOBALS['db']->fetchRow($res))
                {
                    $_del_str .= $id_alone_sale_goods['rec_id'] . ',';
                }
                $_del_str = trim($_del_str, ',');

                $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
                    " WHERE session_id = '" . SESS_ID . "' " .
                    "AND (rec_id IN ($_del_str) OR parent_id = '$row[goods_id]' OR is_gift <> 0)";
            }

            //如果不是普通商品，只删除该商品即可
            else
            {
                $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
                    " WHERE session_id = '" . SESS_ID . "' " .
                    "AND rec_id = '$id' LIMIT 1";
            }

            $GLOBALS['db']->query($sql);
        }

        $this->flow_clear_cart_alone();
    }


    /**
     * 删除购物车中不能单独销售的商品
     *
     * @access  public
     * @return  void
     */
    private function flow_clear_cart_alone()
    {
        /* 查询：购物车中所有不可以单独销售的配件 */
        $sql = "SELECT c.rec_id, gg.parent_id
            FROM " . $GLOBALS['ecs']->table('cart') . " AS c
                LEFT JOIN " . $GLOBALS['ecs']->table('group_goods') . " AS gg ON c.goods_id = gg.goods_id
                LEFT JOIN" . $GLOBALS['ecs']->table('goods') . " AS g ON c.goods_id = g.goods_id
            WHERE c.session_id = '" . SESS_ID . "'
            AND c.extension_code <> 'package_buy'
            AND gg.parent_id > 0
            AND g.is_alone_sale = 0";
        $res = $GLOBALS['db']->query($sql);
        $rec_id = array();
        while ($row = $GLOBALS['db']->fetchRow($res))
        {
            $rec_id[$row['rec_id']][] = $row['parent_id'];
        }

        if (empty($rec_id))
        {
            return;
        }

        /* 查询：购物车中所有商品 */
        $sql = "SELECT DISTINCT goods_id
            FROM " . $GLOBALS['ecs']->table('cart') . "
            WHERE session_id = '" . SESS_ID . "'
            AND extension_code <> 'package_buy'";
        $res = $GLOBALS['db']->query($sql);
        $cart_good = array();
        while ($row = $GLOBALS['db']->fetchRow($res))
        {
            $cart_good[] = $row['goods_id'];
        }

        if (empty($cart_good))
        {
            return;
        }

        /* 如果购物车中不可以单独销售配件的基本件不存在则删除该配件 */
        $del_rec_id = '';
        foreach ($rec_id as $key => $value)
        {
            foreach ($value as $v)
            {
                if (in_array($v, $cart_good))
                {
                    continue 2;
                }
            }

            $del_rec_id = $key . ',';
        }
        $del_rec_id = trim($del_rec_id, ',');

        if ($del_rec_id == '')
        {
            return;
        }

        /* 删除 */
        $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') ."
            WHERE session_id = '" . SESS_ID . "'
            AND rec_id IN ($del_rec_id)";
        $GLOBALS['db']->query($sql);
    }

}

Flow::invoke();