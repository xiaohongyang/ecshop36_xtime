<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = false;
}
use zd\Helper;
use zd\Uploader;
use Zodream\Domain\Image\Captcha;
use Zodream\Service\Factory;
use Zodream\Infrastructure\ObjectExpand\StringExpand;
class Tool extends \zd\Controller {

    public function indexAction() {

    }

    public function uploadAction() {
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

    public function captchaAction() {
        $image = new Captcha();
        $image->setConfigs([
            'width' => 130,
            'height' => 60,
            'fontSize' => 30,
            'length' => 4,    //验证码长度
            'sensitive' => false,
            'fontFamily' => ROOT_PATH.'data/fonts/Ubuntu_regular.ttf',   //指定字体大小
        ]);
        Factory::response()
            ->image($image->generate())
            ->send();
    }

    function smsAction() {
//        session_start();
        $send_code = Helper::post('send_code');
        $check_mobile_exist = Helper::post('check_mobile_exist');
        //防用户恶意请求
        if(empty($_SESSION['send_code']) || $send_code != $_SESSION['send_code']){
            Helper::failure('请求超时，请刷新页面后重试');
        }
        $phone = Helper::post('phone');

        if(strpos($_SERVER['HTTP_REFERER'], 'register') !== false || $check_mobile_exist) {
            $u = \zd\Sql::create()
                ->selectCount()->from('users')
                ->where('user_name=')->addValue($phone)
                ->scalar();
            if ($u > 0) {
                Helper::failure('手机号已存在！');
            }
        }

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
}
Tool::invoke();