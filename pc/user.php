<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/user.php');
if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = false;
}
use zd\Helper;
use zd\UserAddress;
use zd\Sql;
use zd\UserOrder;
use Zodream\Domain\Image\Captcha;
use zd\Uploader;
use zd\Auction;

class User extends \zd\Controller {

    /**
     * @var bool|array
     */
    protected $info = false;

    /**
     * @var ecshop
     */
    protected $user;

    /**
     * 不需要登录的action
     * @var array
     */
    protected $notLogin = ['login', 'register', 'find_password','getPassword','account_add'];

    public function loginAction() {
        $this->renderHelper();
        $page_title = '登录';
        $this->show('/login', compact('page_title'));
    }

    public function loginActionPost() {
        global $_LANG;
        $username = $this->get('username');
        $password = $this->get('password');
        $back_act = $this->get('back_act');
        $code = $this->get('code');
        if (!(new Captcha)->verify($code)) {
            Helper::failure('验证码错误！');
        }
        if ($this->user->login($username, $password, $this->has('remember'))) {
            update_user_info();
            recalculate_price();
            //$ucdata = isset($this->user->ucdata)? $this->user->ucdata : '';
            Helper::success([
                'url' => empty($back_act) ? 'user.php' : $back_act
            ]);
        }
        $_SESSION['login_fail'] ++ ;
        Helper::failure($_LANG['login_failure']);
    }

    public function registerAction() {
        global $_LANG;
        $page_title = '注册';
        $send_code = $this->random(6,1);

        $sql = 'SELECT * FROM ' . $GLOBALS['ecs']->table('reg_fields') . ' WHERE type < 2 AND display = 1 ORDER BY dis_order, id';
        $extend_info_list = $GLOBALS['db']->getAll($sql);

        $this->assign('extend_info_list', $extend_info_list);

        //开启SESSION
        session_start();

        $_SESSION['send_code'] = $send_code;

        /* 密码提示问题 */
        $this->assign('passwd_questions', $_LANG['passwd_questions']);
//        print_r($_LANG['passwd_questions']);
//        exit;

        $this->assign('send_code', $send_code);
        $this->show('/register', compact('page_title'));
    }
    public function registerActionPost() {
        global $_CFG, $_LANG, $ecs, $db, $err;
        if ($_CFG['shop_reg_closed']) {
            Helper::failure('注册已关闭！');
        }
        include_once(ROOT_PATH . 'includes/lib_passport.php');

        session_start();
        $username = $this->get('username');
        $password = $this->get('password');
        $email    = $username.'@xtime.com';//isset($_POST['email']) ? trim($_POST['email']) : '';
        $other['msn'] = $this->get('extend_field1');
        $other['qq'] = $this->get('extend_field2');
        $other['office_phone'] = $this->get('extend_field3');
        $other['home_phone'] = $this->get('extend_field4');
        $other['mobile_phone'] = $username;//isset($_POST['extend_field5']) ? $_POST['extend_field5'] : '';


        $question = $this->get('question');

        $answer_01 = $this->get('answer_01');
        $answer_02 = $this->get('answer_02');
        $answer_03 = $this->get('answer_03');

        $question = implode('|', $question);
        $answer = $answer_01 . '|' . $answer_02 . '|' . $answer_03;

        $sel_question = $question;
        $passwd_answer = $answer;

//        $sel_question = $this->get('sel_question');
//        $passwd_answer = $this->get('passwd_answer');

        $mobile_code = $this->get('mobile_code');

        if (empty($username)) {
            Helper::failure('手机号码不可为空');
        }
        if (empty($mobile_code)) {
            Helper::failure('手机验证码不可为空');
        }
        if($username != $_SESSION["sms_mobile"]){
            Helper::failure('请填写发送短信时的手机号码');
        }
        if ($_POST['mobile_code'] != $_SESSION["sms_mobile_code"]) {
            Helper::failure('手机验证码输入错误');
        }
        $_SESSION["sms_mobile_code"] = '';
        $_SESSION["sms_mobile"] = '';


        $back_act = $this->get('back_act');

        if(!$this->has('agreement')) {
            Helper::failure($_LANG['passport_js']['agreement']);
        }
        if (strlen($username) < 3) {
            Helper::failure($_LANG['passport_js']['username_shorter']);
        }

        if (strlen($password) < 6) {
            Helper::failure($_LANG['passport_js']['password_shorter']);
        }

        if (strpos($password, ' ') > 0) {
            Helper::failure($_LANG['passwd_balnk']);
        }

        if (register($username, $password, $email, $other) !== false)
        {
            /*把新注册用户的扩展信息插入数据库*/
            $sql = 'SELECT id FROM ' . $ecs->table('reg_fields') . ' WHERE type = 0 AND display = 1 ORDER BY dis_order, id';   //读出所有自定义扩展字段的id
            $fields_arr = $db->getAll($sql);

            $extend_field_str = '';    //生成扩展字段的内容字符串
            foreach ($fields_arr AS $val)
            {
                $extend_field_index = 'extend_field' . $val['id'];
                if(!empty($_POST[$extend_field_index]))
                {
                    $temp_field_content = strlen($_POST[$extend_field_index]) > 100 ? mb_substr($_POST[$extend_field_index], 0, 99) : $_POST[$extend_field_index];
                    $extend_field_str .= " ('" . $_SESSION['user_id'] . "', '" . $val['id'] . "', '" . compile_str($temp_field_content) . "'),";
                }
            }
            $extend_field_str = substr($extend_field_str, 0, -1);

            if ($extend_field_str)      //插入注册扩展数据
            {
                $sql = 'INSERT INTO '. $ecs->table('reg_extend_info') . ' (`user_id`, `reg_field_id`, `content`) VALUES' . $extend_field_str;
                $db->query($sql);
            }

            /* 写入密码提示问题和答案 */
            if (!empty($passwd_answer) && !empty($sel_question))
            {
                $sql = 'UPDATE ' . $ecs->table('users') . " SET `passwd_question`='$sel_question', `passwd_answer`='$passwd_answer'  WHERE `user_id`='" . $_SESSION['user_id'] . "'";
                $db->query($sql);
            }
            /* 判断是否需要自动发送注册邮件 */
            if ($GLOBALS['_CFG']['member_email_validate'] && $GLOBALS['_CFG']['send_verify_email'])
            {
                send_regiter_hash($_SESSION['user_id']);
            }
            $ucdata = empty($this->user->ucdata)? "" : $this->user->ucdata;
            include_once(ROOT_PATH . 'includes/cls_matrix.php');
            $matrix = new matrix;
            if($matrix->get_bind_info('ecos.taocrm')){
                $matrix->createMember($_SESSION['user_id'],'ecos.taocrm');
            }
            Helper::success([
                'url' => $back_act
            ]);
        }
        Helper::failure($err->last_message());
    }

    public function findPasswordAction() {

        $this->renderHelper();

        global $_LANG;
        $page_title = '找回密码';
        $send_code = $this->random(6,1);

        //开启SESSION
        session_start();

        $_SESSION['send_code'] = $send_code;

        $username = '15995716443';

        /* 密码提示问题 */
        $this->assign('passwd_questions', $_LANG['passwd_questions']);
        $this->assign('send_code', $send_code);
        $this->show('/find_password.dwt', compact('page_title'));
    }

    public function findPasswordActionPost() {
        global $_CFG, $_LANG, $ecs, $db, $err;
        if ($_CFG['shop_reg_closed']) {
            Helper::failure('注册已关闭！');
        }
        include_once(ROOT_PATH . 'includes/lib_passport.php');

        session_start();
        $username = $this->get('username');
        $password = $this->get('password');

        $mobile_code = $this->get('mobile_code');

        if (empty($username)) {
            Helper::failure('手机号码不可为空');
        }
        if (empty($mobile_code)) {
            Helper::failure('手机验证码不可为空');
        }
        if($username != $_SESSION["sms_mobile"]){
            Helper::failure('请填写发送短信时的手机号码');
        }
        if ($_POST['mobile_code'] != $_SESSION["sms_mobile_code"]) {
            Helper::failure('手机验证码输入错误');
        }
        $_SESSION["sms_mobile_code"] = '';
        $_SESSION["sms_mobile"] = '';


        $back_act = $this->get('back_act');


        if (strlen($username) < 3) {
            Helper::failure($_LANG['passport_js']['username_shorter']);
        }

        if (strlen($password) < 6) {
            Helper::failure($_LANG['passport_js']['password_shorter']);
        }

        if (strpos($password, ' ') > 0) {
            Helper::failure($_LANG['passwd_balnk']);
        }

        $userId = Sql::create()->select('user_id')->from('users')->where("mobile_phone ='{$username}'  ")->scalar();

        if($userId) {
            $password = $this->get('password');
            $ec_salt=rand(1,9999);
            $password = md5(md5($password).$ec_salt);
            $data = [
                'password' => $password,
                'ec_salt' => $ec_salt
            ];
            Sql::update('users', $data, [
                'user_id' => $userId
            ]);
            Helper::success();
        } else {
            Helper::failure('用户不存在');
        }
    }

    public function logoutAction() {
        if ((!isset($back_act)|| empty($back_act))
            && isset($GLOBALS['_SERVER']['HTTP_REFERER'])) {
            $back_act = strpos($GLOBALS['_SERVER']['HTTP_REFERER'], 'user.php') ? './index.php' : $GLOBALS['_SERVER']['HTTP_REFERER'];
        }

        $this->user->logout();
        //$ucdata = empty($this->user->ucdata) ? '' : $this->user->ucdata;
        Helper::redirect($back_act);
     }

    public function indexAction() {
        $helps = get_shop_help();       // 网店帮助
        $page_title = '会员中心';
        $this->show(compact('page_title', 'helps'));
    }

    /**
     * 我的余额
     */
    public function accountAction() {
        $page_title = '我的余额';
        $total = Sql::create()
            ->selectCount()
            ->from('account_log')
            ->where('user_id', $this->userId())
            ->andWhere('user_money', '<>', 0)
            ->scalar();
        $log_list = Sql::create()->from('account_log')
            ->where('user_id', $this->userId())
            ->andWhere('user_money', '<>', 0)
            ->order('change_time desc')
            ->limit(Sql::pageLimit())->all();
        $this->renderHelper();
        $this->show(compact('page_title', 'total', 'log_list'));
    }

    /**
     * 余额充值
     */
    public function accountAddAction(){

        include_once(ROOT_PATH . 'includes/lib_order.php');

        /* 检查参数 */
        $user_id = empty($_REQUEST['user_id']) ? 0 : intval($_REQUEST['user_id']);
        if ($user_id <= 0)
        {
            Helper::failure('用户id错误');
        }
        $user = user_info($user_id);
        if (empty($user))
        {
            Helper::failure('用户不存在');
        }

        /* 提交值 */
        $change_desc    = sub_str($_POST['change_desc'], 255, false);
        $user_money     = floatval($_POST['add_sub_user_money']) * abs(floatval($_POST['user_money']));
        $frozen_money   = floatval($_POST['add_sub_frozen_money']) * abs(floatval($_POST['frozen_money']));
        $rank_points    = floatval($_POST['add_sub_rank_points']) * abs(floatval($_POST['rank_points']));
        $pay_points     = floatval($_POST['add_sub_pay_points']) * abs(floatval($_POST['pay_points']));

        if ($user_money == 0 && $frozen_money == 0 && $rank_points == 0 && $pay_points == 0)
        {
            Helper::failure('金额没有变化');
        }

        /* 保存 */
        log_account_change($user_id, $user_money, $frozen_money, $rank_points, $pay_points, $change_desc, ACT_ADJUSTING);
        Helper::success('充值成功');
    }

    /**
     * 我的积分
     */
    public function pointsAction() {
        $page_title = '我的积分';
        $total = Sql::create()
            ->selectCount()
            ->from('account_log')
            ->where('user_id', $this->userId())
            ->andWhere('pay_points', '<>', 0)
            ->scalar();
        $log_list = Sql::create()->from('account_log')
            ->where('user_id', $this->userId())
            ->andWhere('pay_points', '<>', 0)
            ->order('change_time desc')
            ->limit(Sql::pageLimit())->all();
        $this->renderHelper();
        $this->show(compact('page_title', 'total', 'log_list'));
    }

    public function orderListAction() {
        $page_title = '我的订单';
        $search = $this->get('search');
        $status = $this->get('status');
        $helps = get_shop_help();       // 网店帮助
        $pager = UserOrder::getPage($_SESSION['user_id'], $search, $status);
        $order_list = $pager->getPage();
        $total = $pager->getTotal();
        $user_rank_list = UserOrder::get_user_rank_list();
        $this->show(compact('page_title', 'helps', 'order_list', 'total', 'search', 'status', 'user_rank_list'));
    }

    public function removeOrderAction(){

        $order_id = intval($_REQUEST['id']);
        $userId = $_SESSION['user_id'];

        $dbOrderId = Sql::create()->select('order_id')
            ->from('order_info')->where('user_id='.$userId)->andWhere('order_id='.$order_id)->scalar();
        $isUserOrder = $dbOrderId ? true : false;

        if($isUserOrder) {
            $GLOBALS['db']->query("DELETE FROM ".$GLOBALS['ecs']->table('order_info'). " WHERE order_id = '$order_id'");
            $GLOBALS['db']->query("DELETE FROM ".$GLOBALS['ecs']->table('order_goods'). " WHERE order_id = '$order_id'");
            $GLOBALS['db']->query("DELETE FROM ".$GLOBALS['ecs']->table('order_action'). " WHERE order_id = '$order_id'");
            $action_array = array('delivery', 'back');
            $this->del_delivery($order_id, $action_array);

            if ($GLOBALS['db'] ->errno() == 0)
            {
//            $url = 'order.php?act=query&' . str_replace('act=remove_order', '', $_SERVER['QUERY_STRING']);
                $url = $_SERVER['HTTP_REFERER'];
                Helper::success("删除成功");
            }
            else
            {
//            make_json_error($GLOBALS['db']->errorMsg());
                Helper::failure("删除失败");
            }
        } else {
            Helper::failure("无权限删除访订单");
        }


    }

    public function affirmReceivedAction(){

        include_once(ROOT_PATH . 'includes/lib_transaction.php');
        $order_id = isset($_GET['order_id']) ? intval($_GET['order_id']) : 0;
        $user_id = $this->userId();
        affirm_received($order_id, $user_id);

        Helper::redirect($GLOBALS['_SERVER']['HTTP_REFERER']);
    }

    public function cancelOrderAction() {
        global $err, $_LANG;
        $id = intval($this->get('id'));
        include_once(ROOT_PATH . 'includes/lib_transaction.php');
        include_once(ROOT_PATH . 'includes/lib_order.php');
        if (cancel_order($id, $this->userId())) {
            // 通知erp取消订单
            include_once(ROOT_PATH . 'includes/cls_matrix.php');
            $matrix = new matrix();
            $matrix->set_dead_order($id);
            ecs_header("Location: user.php?act=order_list\n");
            exit;
        }
        $err->show($_LANG['order_list_lnk'], 'user.php?act=order_list');
    }

    public function avatarAction() {
        $upload = new Uploader('file', array(
            'maxSize' => 20000000,
            'allowFiles' => array('.png', '.jpg', '.jpeg', '.gif', '.bmp'),
            'pathFormat' => '/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}'
        ));
        $data = $upload->getFileInfo();
        if ($data['state'] == 'SUCCESS') {
            Sql::update('users', [
                'avatar' => $data['url']
            ], [
                'user_id' => $this->userId()
            ]);
            Helper::success($data);
        }
        Helper::failure($data['state']);
    }

    public function infoAction() {
        Helper::success([
            'user_id' => $this->user['user_id'],
            'user_name' => $this->user['user_name'],
            'avatar' => $this->user['avatar'],
            'money' => $this->user['formated_user_money'],
            'pay_points' => $this->user['pay_points']
        ]);
    }

    public function updateInfoAction() {
        $nick_name = $this->get('nick_name');
        $sex = intval($this->get('sex'));
        $birthday = sprintf('%s-%s-%s', intval($this->get('year')),
            intval($this->get('month')), intval($this->get('day')));
        Sql::update('users', [
            'nick_name' => addslashes($nick_name),
            'sex' => $sex,
            'birthday' => $birthday
        ], [
            'user_id' => $this->userId()
        ]);
        Helper::success();
    }

    public function updateRealNameAction(){
        $real_name = $this->get('real_name');

        Sql::update('users', [
            'real_name' => addslashes($real_name),
        ], [
            'user_id' => $this->userId()
        ]);
        Helper::success();
    }

    public function updateOneFieldAction(){

        $column = $this->get('column');
        $data = [];
        switch ($column) {
            case 'password' :
                $password = $this->get('password');
                $ec_salt=rand(1,9999);
                /*$sql = "UPDATE " .$ecs->table('admin_user'). "SET password = '".md5(md5($new_password).$ec_salt)."',`ec_salt`='$ec_salt' ".
                    "WHERE user_id = '$adminid'";*/
                $password = md5(md5($password).$ec_salt);
                $data = [
                    'password' => $password,
                    'ec_salt' => $ec_salt
                ];
                break;
            default :
                $data = [
                    $column => $this->get($column)
                ];
                breakk;
        }
        if(count($data)){
            Sql::update('users', $data, [
                'user_id' => $this->userId()
            ]);
        }
        Helper::success();
    }

    public function addressListAction() {
        $page_title = '地址管理';
        $address_list = UserAddress::all();
        $this->renderHelper();
        $this->show(compact('page_title', 'address_list'));
    }

    /**
     * 删除地址
     */
    public function deleteAddressAction() {
        $id = intval($this->get('id'));
        if ($id < 1) {
            Helper::failure('地址不存在');
        }
        UserAddress::delete($id);
        Helper::success();
    }

    /**
     * 设置默认地址
     */
    public function defaultAddressAction() {
        $id = intval($this->get('id'));
        if ($id < 1) {
            Helper::failure('地址不存在');
        }
        UserAddress::setDefault($id);
        return Helper::success();
    }

    /**
     * 获取地址
     */
    public function addressAction() {
        $id = intval($this->get('id'));
        if ($id < 1) {
            Helper::failure('地址不存在');
        }
        $address = UserAddress::get($id);
        if (empty($address)) {
            Helper::failure('地址不存在');
        }
        Helper::success($address);
    }

    public function saveAddressActionPost() {
        $data = $this->get('consignee,address_id,tel,zipcode,country,province,city,district,zipcode,address');
        $data['user_id'] = $_SESSION['user_id'];
        $data['address_id'] = UserAddress::save($data);
        if (empty($data['address_id'])) {
            Helper::failure('保存失败！');
        }
        $data['region'] = UserAddress::consigneeRegion($data['address_id']);
        Helper::success($data);
    }

    public function passwordAction() {
        $page_title = '修改绑定手机';

        $send_code = $this->random(6,1);

        //开启SESSION
        //session_start();

        $_SESSION['send_code'] = $send_code;


        $this->assign('send_code', $send_code);

        $this->show(compact('page_title'));
    }

    public function passwordActionPost() {

        $password = $this->get('password');
        $mobile = $this->get('mobile');
        $code = $this->get('mobile_code');

        $userInfo = $this->userInfo();

        if (!$this->user->check_user($userInfo['user_name'], $password)){
            //验证密码
            Helper::failure('密码错误');
        } else if($code != $_SESSION["send_code"]){
            //验证验证码是否正确
            Helper::failure('验证码不正确');
        }

        Sql::update('users', [
            'mobile_phone' => $mobile,
        ], [
            'user_id' => $this->userId()
        ]);
        Helper::success();
    }

    public function getPasswordAction(){
        $page_title = '找加密码';

        $this->show('user_password.dwt', compact('page_title'));
    }

    public function auctionListAction() {
        $page_title = '我的竞拍';
        list($total, $auction_list) = Auction::getUserList();
        $this->renderHelper();
        $this->show(compact('page_title', 'total', 'auction_list'));
    }

    public function collectAction() {
        $goods_id = intval($this->get('id'));
        if (empty($goods_id)) {
            Helper::failure('请选择商品！');
        }
        $count = Sql::create()
            ->selectCount()->from('collect_goods')
            ->where('goods_id', $goods_id)
            ->andWhere('user_id', $this->userId())->scalar();
        if ($count > 0) {
            Helper::failure('商品已收藏！');
        }
        $id = Sql::insert('collect_goods', [
            'goods_id' => $goods_id,
            'user_id' => $this->userId(),
            'add_time' => gmtime()
        ]);
        if (empty($id)) {
            Helper::failure('收藏失败！');
        }
        Helper::success();
    }


    public function collectListAction() {

        include_once(ROOT_PATH . 'includes/lib_clips.php');
        $total = Sql::create()
            ->selectCount()
            ->from('collect_goods')
            ->where('user_id', $this->userId())
            ->scalar();
        $page = intval($this->get('page', 1));
        $pager = get_pager('user.php', array('act' => 'collect_list'), $total, $page);
        $goods_list = get_collection_goods($this->userId(),
            $pager['size'], $pager['start']);
        $page_title = '我的收藏';

        $this->renderHelper();
        $this->show(compact('pager', 'goods_list', 'page_title', 'total'));
    }

    private function renderHelper(){
        $helps = get_shop_help();       // 网店帮助
        $this->assign('helps', $helps);
    }

    public function deleteCollectAction() {
        $id = intval($this->get('id'));
        if (!empty($id)) {
            Sql::delete('collect_goods', [
                'rec_id' => $id,
                'user_id' => $this->userId()]);
        }
        Helper::success();
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

    public static function getUserInfo(){
        $userInfo = [];
        if (!empty($_SESSION['user_id'])) {
            $userInfo = user_info($_SESSION['user_id']);
        }
        return $userInfo;
    }

    public function init() {
        global $user;

        $this->assign('referer', $_SERVER['HTTP_REFERER']);

        $this->assign('action', static::$action);
        $this->user = $user;
        if (!empty($_SESSION['user_id'])) {
            include_once ROOT_PATH.'includes/lib_order.php';
            $userInfo = $this->userInfo();
            $this->assign('user_info', $userInfo);
            $this->assign('user_info2', $userInfo);
            $this->assign('headpic', $userInfo['avatar']);
        } elseif (!in_array(static::$action, $this->notLogin)) {
            $this->invokeAction('login');
        }

        $this->renderHelper();
    }

    /**
     * 判断是否已经登录
     * @param bool $hasReturn
     * @return bool
     */
    public function isLogin($hasReturn = false) {
        if (empty($this->info)) {
            !$hasReturn && $this->invokeAction('login');
            return false;
        }
        return true;
    }


    // 验证码生成
    public function random($length = 6 , $numeric = 0) {
        PHP_VERSION < '4.2.0' && mt_srand((double)microtime() * 1000000);
        if($numeric) {
            $hash = sprintf('%0'.$length.'d', mt_rand(0, pow(10, $length) - 1));
        } else {
            $hash = '';
            $chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789abcdefghjkmnpqrstuvwxyz';
            $max = strlen($chars) - 1;
            for($i = 0; $i < $length; $i++) {
                $hash .= $chars[mt_rand(0, $max)];
            }
        }
        return $hash;
    }



    /**
     * 删除订单所有相关单子
     * @param   int     $order_id      订单 id
     * @param   int     $action_array  操作列表 Array('delivery', 'back', ......)
     * @return  int     1，成功；0，失败
     */
    private function del_delivery($order_id, $action_array)
    {
        $return_res = 0;

        if (empty($order_id) || empty($action_array))
        {
            return $return_res;
        }

        $query_delivery = 1;
        $query_back = 1;
        if (in_array('delivery', $action_array))
        {
            $sql = 'DELETE O, G
                FROM ' . $GLOBALS['ecs']->table('delivery_order') . ' AS O, ' . $GLOBALS['ecs']->table('delivery_goods') . ' AS G
                WHERE O.order_id = \'' . $order_id . '\'
                AND O.delivery_id = G.delivery_id';
            $query_delivery = $GLOBALS['db']->query($sql, 'SILENT');
        }
        if (in_array('back', $action_array))
        {
            $sql = 'DELETE O, G
                FROM ' . $GLOBALS['ecs']->table('back_order') . ' AS O, ' . $GLOBALS['ecs']->table('back_goods') . ' AS G
                WHERE O.order_id = \'' . $order_id . '\'
                AND O.back_id = G.back_id';
            $query_back = $GLOBALS['db']->query($sql, 'SILENT');
        }

        if ($query_delivery && $query_back)
        {
            $return_res = 1;
        }

        return $return_res;
    }
}
User::invoke();