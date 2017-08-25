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
}
Tool::invoke();