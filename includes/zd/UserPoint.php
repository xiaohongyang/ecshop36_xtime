<?php
namespace zd;
define('ACT_EDIT_INFO', 51); //完善资料
define('ACT_SIGN',  52);     //签到
define('ACT_READ',  53);     //阅读文章
define('ACT_SHARE',  54);     //转发文章
define('ACT_RESEARCH',  55);     //调研表
define('ACT_GAME',  56);     //游戏
define('ACT_LT_ORDER',  57);     //大于8折
define('ACT_GT_ORDER',  58);     //小于8折
define('ACT_OTHER_ORDER',  58);     //其他非正价商品
use Zodream\Domain\Html\Page;
/**
 * 积分奖励模块
 */
class UserPoint {
    protected static function getConfig($key) {
        global $_CFG;
        if (array_key_exists($key, $_CFG)) {
            return $_CFG[$key];
        }
        return 0;
    }

    /**
     * 一次性的积分判断
     * @param string $action
     * @param integer $id
     * @return bool
     */
    public static function canPoint($action, $id = null) {
        $query = Sql::create()->select('COUNT(*) AS count')
            ->from('account_log')->where('user_id = '.$_SESSION['user_id'])
            ->andWhere('change_type='.$action);
        if ($id > 0) {
            $query->andWhere('value_id='.$id);
        }
        $count = $query->scalar();
        return $count < 1;
    }

    /**
     * 记录用户积分变动情况
     * @param $action
     * @param $point
     * @param $desc
     * @return bool
     */
    public static function logUserPoint($action, $point, $desc) {
        if (!isset($_SESSION['user_id']) || $point <= 0) {
            return false;
        }
        $id = log_account_change($_SESSION['user_id'], 0, 0, 0, $point, $desc, $action);
        if (isset($_SESSION['card_no'])) {
            ERP::updateIntegral($_SESSION['card_no'], $point, $id);
        }
        return true;
    }

    /**
     * 完善资料
     */
    public static function editInfo() {
        if (!static::canPoint(ACT_EDIT_INFO)) {
            return false;
        }
        return self::logUserPoint(ACT_EDIT_INFO, static::getConfig(__FUNCTION__), '完善资料送积分');
    }

    /**
     * 签到送积分
     * @param integer $count
     * @return bool
     */
    public static function sign($count) {
        $point = intval(static::getConfig('signBasic')) + intval(static::getConfig('signAdd')) * floor($count / 10);
        Sql::insert('sign_log', array(
            'user_id' => $_SESSION['user_id'],
            'create_at' => gmtime(),
            'points' => $point
        ));
        self::logUserPoint(ACT_SIGN, $point, '连续签到 '.$count.' 天');
        return true;
    }

    /**
     * 阅读文章送积分
     * @param $id
     * @return bool
     */
    public static function readArticle($id) {
        if (!static::canPoint(ACT_READ, $id)) {
            return false;
        }
        return self::logUserPoint(ACT_READ, static::getConfig(__FUNCTION__), '阅读文章送积分');
    }

    /**
     * 转发文章送积分
     * @param $id
     * @return bool
     */
    public static function shareArticle($id) {
        if (!static::canPoint(ACT_SHARE, $id)) {
            return false;
        }
        return self::logUserPoint(ACT_SHARE, static::getConfig(__FUNCTION__), '转发文章送积分');
    }

    /**
     * 填写调研表送积分
     * @param $id
     * @return bool
     */
    public static function research($id) {
        if (!static::canPoint(ACT_RESEARCH, $id)) {
            return false;
        }
        return self::logUserPoint(ACT_RESEARCH, static::getConfig(__FUNCTION__), '填写调研表送积分');
    }

    /**
     * 玩游戏送积分
     * @param $id
     * @return bool
     */
    public static function game($id) {
        if (!static::canPoint(ACT_GAME, $id)) {
            return false;
        }
        return self::logUserPoint(ACT_GAME, static::getConfig(__FUNCTION__), '玩游戏送积分');
    }

    /**
     * 正价大于8折
     * @param $amount
     * @return bool
     */
    public static function lt8price($amount) {
        return self::logUserPoint(ACT_LT_ORDER,
            floor($amount / static::getConfig(__FUNCTION__)),
            '购物送积分');
    }

    /**
     * 正价小于8折
     * @param $amount
     * @return bool
     */
    public static function gt8price($amount) {
        return self::logUserPoint(ACT_GT_ORDER,
            floor($amount / static::getConfig(__FUNCTION__)),
            '购物送积分');
    }

    /**
     * 其他非增加商品
     * @param $amount
     * @return bool
     */
    public static function otherPrice($amount) {
        return self::logUserPoint(ACT_OTHER_ORDER,
            floor($amount / static::getConfig(__FUNCTION__)),
            '购物送积分');
    }

    public static function getPage() {
        $page = new Page(Sql::create()->select('COUNT(*) AS count')
            ->from('account_log')->where('pay_points != 0')
            ->andWhere('user_id='.$_SESSION['user_id'])->scalar());
        $page->setPage(Sql::create()->select('*')
            ->from('account_log')->where('pay_points != 0')
            ->andWhere('user_id='.$_SESSION['user_id'])
            ->order('change_time')->limit($page->getLimit())->all());
        return $page;
    }

    public static function getGetPoints() {
        return Sql::create()->select('SUM(pay_points) AS count')
            ->from('account_log')->where('pay_points > 0')
            ->andWhere('user_id='.$_SESSION['user_id'])->scalar();
    }

    public static function getLessPoints() {
        return Sql::create()->select('SUM(pay_points) AS count')
            ->from('account_log')->where('pay_points < 0')
            ->andWhere('user_id='.$_SESSION['user_id'])->scalar();
    }
}