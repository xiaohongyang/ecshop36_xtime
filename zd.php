<?php
use zd\Sql;
use zd\Helper;
use zd\Uploader;
use Zodream\Infrastructure\ObjectExpand\StringExpand;
use Zodream\Service\Factory;
use Zodream\Domain\Html\Tree;

defined('IN_ECS') or define('IN_ECS', true);
require_once(dirname(__FILE__) . "/includes/init.php");

$action = (isset($_GET['act']) ? $_GET['act'] : 'index').'Action';

if (function_exists($action)) {
    call_user_func($action);
}

function uploadAction() {
    $upload = new Uploader('file', array(
        'maxSize' => 20000000,
        'allowFiles' => array('.png', '.jpg', '.jpeg', '.gif', '.bmp'),
        'pathFormat' => 'upload/image/{yyyy}{mm}{dd}/{time}{rand:6}'
    ));
    $data = $upload->getFileInfo();
    if ($data['state'] == 'SUCCESS') {
        Helper::success($data);
    }
    Helper::failure($data['state']);
}

function versionAction() {
    global $smarty;
    $smarty->assign('page_title', '版本信息');
    $smarty->display('version.dwt');
}

function aboutAction() {
    global $smarty;
    $smarty->assign('page_title', '关于我们');
    $smarty->display('about.dwt');
}

function moreAction() {
    global $smarty;
    $smarty->assign('page_title', '更多');
    $smarty->display('more.dwt');
}

function qrAction() {
    require_once 'includes/phpqrcode.php';
    QRcode::png($_GET['content']);
}

function smsAction() {
    $send_code = Helper::post('send_code');
    //防用户恶意请求
    if(empty($_SESSION['send_code']) || $send_code != $_SESSION['send_code']){
        Helper::failure('请求超时，请刷新页面后重试');
    }
    $phone = Helper::post('phone');
    if(empty($phone) || !Helper::validateMobile($phone)){
        Helper::failure('请输入正确的手机号');
    }
    if (isset($_SESSION['sms_time']) &&  time() - $_SESSION['sms_time'] < 60) {
        Helper::failure('发送太频繁，发送失败！');
    }
    $code = StringExpand::randomNumber();
    if (!empty(Helper::post('more'))) {
        $_SESSION["sms_mobile1"] = $phone;
        $_SESSION["sms_mobile_code1"] = $code;
    } else {
        $_SESSION["sms_mobile"] = $phone;
        $_SESSION["sms_mobile_code"] = $code;
    }
    include_once(ROOT_PATH.'includes/cls_sms.php');
    $sms = new sms();
    $result = $sms->sendCode($phone, $code);
    if ($result) {
        Helper::success(sprintf('已发送至 %s ，注意查收！', $phone));
    }
    Factory::log()->info(var_export($sms->errors, true));
    Helper::failure('发送失败！');
}

function wechatAction() {
    if (!isset($_GET['log'])) {
        exit('支付记录不存在');
    }
    $log = Sql::create()->from('pay_log')->where('log_id =')
        ->addInt($_GET['log'])->one();
    if (empty($log) || $log['is_paid'] === 1) {
        exit('订单已支付或不存在');
    }
    $order = Sql::create()
        ->from('order_info')
        ->where('order_id='.$log['order_id'])
        ->one();
    include_once __DIR__.'/includes/lib_payment.php';
    include_once __DIR__.'/includes/modules/payment/wx_pay.php';
    try {
        $pay = new wx_pay();
        $pay->pay(array_merge($order, $log));
    } catch (Exception $ex) {
        exit($ex->getMessage());
    }
}

function regionAction() {
    $key = 'All_Region';
    $data = read_static_cache($key);
    if (empty($data)) {
        $data = Sql::create()
            ->select('region_id as id, region_name as name, parent_id')
            ->from('region')->all();
        $tree = new Tree($data);
        $data = $tree->makeIdTree();
        unset($tree);
        write_static_cache($key, $data);
    }
    Helper::success($data);
}