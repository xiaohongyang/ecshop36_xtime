<?php
namespace zd;

use Zodream\Infrastructure\Base\MagicObject;
use Zodream\Infrastructure\Http\Component\Uri;
use Zodream\Infrastructure\ObjectExpand\StringExpand;
use Zodream\Infrastructure\Traits\SingletonPattern;
use Zodream\Service\Factory;
use Zodream\Service\Routing\Url;

/**
 * Class User
 * @package zd
 * @property integer $user_id
 * @property integer $group_id
 * @property array $user 用户信息
 * @property Uri $invite_url  邀请链接
 * @method array user()
 */
class User extends MagicObject {

    use SingletonPattern;

    /**
     * 获取用户信息
     * @param null $id
     * @return array
     */
    public function getUser($id = null) {
        if ($this->has('profile') && empty($id)) {
            return $this->profile();
        }
        if (empty($id)) {
            $id = $this->userId();
        }
        $user = Sql::create()
            ->select('user_id, user_name, nick_name,user_rank, expire_rank,
            avatar, user_money as money, pay_points, rank_points, parent_id')
            ->from('users')
            ->where('user_id', $id)
            ->one();
        $user['nick_name'] = empty($user['nick_name']) ?  $user['user_name']
            : $user['nick_name'];
        if ($user['expire_rank'] > 0 && $user['expire_rank'] < gmtime()) {
            $user['user_rank'] = 0;
        }
        return $user;
    }

    public function getProfile($id = null) {
        if (empty($id)) {
            $id = $this->userId();
        }
        $user = Sql::create()
            ->select('user_id, user_name, nick_name, 
            avatar, user_money as money, rank_points, pay_points, user_rank, expire_rank, parent_id,
            mobile_phone')
            ->from('users')
            ->where('user_id', $id)
            ->one();
        $user['nick_name'] = empty($user['nick_name']) ?  $user['user_name']
            : $user['nick_name'];
        if ($user['expire_rank'] > 0 && $user['expire_rank'] < gmtime()) {
            $user['user_rank'] = 0;
        }
        $user['rank_name'] = UserRank::get( $user['user_rank'], $user['rank_points'])['rank_name'];
        return $user;
    }

    /**
     * 获取上级信息
     * @return array|bool
     */
    public function getParentInfo() {
        $user = $this->user();
        if (empty($user) || empty($user['parent_id'])) {
            return false;
        }
        $info = Sql::create()
            ->select('user_id,user_name,nick_name, pay_points, mobile_phone, user_rank, expire_rank, avatar, parent_id')
            ->from('users')
            ->where('user_id', $user['parent_id'])
            ->one();
        $info['nick_name'] = empty($info['nick_name']) ?  $info['username']
            : $info['nick_name'];
        return $info;
    }


    /**
     * 获取当前用户等级的最小值最大值，方便取下级订单和取上级能取的订单
     * @return array
     * @internal param null $points
     */
    public function getRank() {
        return UserRank::get($this->user()['user_rank'], $this->user()['rank_points']);
    }

    public function getId() {
        return $this->userId();
    }

    /**
     * 获取用户ID
     * @return integer
     */
    public function getUserId() {
        return $_SESSION['user_id'];
    }

    public function get($key = null, $default = null) {
        if (empty($key)) {
            return $this->_data;
        }
        if (!is_array($this->_data)) {
            $this->_data = (array)$this->_data;
        }
        if ($this->has($key)) {
            return $this->_data[$key];
        }
        $method = 'get'.StringExpand::studly($key);
        if (!method_exists($this, $method)) {
            return $default;
        }
        $val = call_user_func([$this, $method]);
        $this->set($key, $val);
        return $val;
    }


    public function __call($name, $arguments) {
        if (empty($arguments) && $this->has($name)) {
            return $this->get($name);
        }
        $method = 'get'.StringExpand::studly($name);
        if (!method_exists($this, $method)) {
            throw new \BadMethodCallException($name.' NOT FOUND');
        }
        $val = call_user_func_array([$this, $method], $arguments);
        //$this->set($name, $val);
        return $val;
    }

    public static function __callStatic($action, $arguments = array()) {
        return call_user_func_array([static::getInstance(), $action], $arguments);
    }
}