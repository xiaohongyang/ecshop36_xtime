<?php
namespace zd;

use Zodream\Domain\ThirdParty\OAuth\WeChat as BaseWeChat;

class WeChat {
    private static $_instane;

    public static function instance() {
        if (empty(self::$_instane)) {
            self::$_instane = new BaseWeChat();
        }
        return self::$_instane;
    }

    public static function signIn() {
        global $user, $err, $db;
        /** @var $user \wechat */
        $oauth = static::instance();
        if ($oauth->callback() === false || $oauth->info() === false) {
            show_message('微信登录失败！');
        }
        if (isset($_GET['backUrl'])) {
            $_SESSION['backUrl'] = $_GET['backUrl'];
        }
        $_SESSION['openid'] = $openid = $oauth->get('openid');
        $identity = $oauth->identity;
        $users = Sql::create()->from('users')
            ->where('wxid=')->addValue($identity)->one();
        if (!empty($users)) {
            Sql::update('users', array(
                'openid' => $openid
            ), 'user_id='.$users['user_id']);

            $user->set_session($users['wxid']);
            $user->set_cookie($users['wxid']);
            // 登录
            update_user_info();
            recalculate_price();
            Helper::redirect(isset($_SESSION['backUrl']) ? $_SESSION['backUrl'] : 'user.php');
        }
        require_once dirname(__DIR__).'/lib_passport.php';
        if (register($identity, gmtime(), $identity.'@wechat.com', array(
            'sex' => $oauth->sex == '女' ? 2: 1,
            'avatar' => $oauth->avatar,
            'real_name' => $oauth->username,
            'user_name' => $oauth->username,
            'openid' => $openid))) {
            Helper::redirect(isset($_SESSION['backUrl']) ? $_SESSION['backUrl'] : 'user.php');
        }
        Helper::redirect('index.php');
    }
}