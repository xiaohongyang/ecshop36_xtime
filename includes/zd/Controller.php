<?php
namespace zd;

use Zodream\Infrastructure\Base\MagicObject;
use Zodream\Infrastructure\Http\Request;
use Zodream\Infrastructure\ObjectExpand\StringExpand;
use Zodream\Service\Factory;

abstract class Controller extends MagicObject {

    protected static $action = 'index';
    /**
     * action key
     * @var string
     */
    protected static $actionKey = 'act';

    protected function getViewFile($action = null) {
        if (empty($action)) {
            $action = static::$action;
        }
        if (strpos($action, 'str:') === 0) {
            return $action;
        }
        if ($action == 'index') {
            return strtolower(sprintf('%s.dwt', static::class));
        }
        if (strpos($action, '.') > 0) {
            return $action;
        }
        if (strpos($action, '/') !== 0) {
            $action = sprintf('%s_%s', static::class, $action);
        } else {
            $action = substr($action, 1);
        }
        return strtolower($action.'.dwt');
    }

    private $_cacheKey = '';

    public function __construct() {
        $this->_data = Request::request();
    }

    /**
     * 初始化
     */
    public function init() {

    }

    /**
     * 判断是否存在缓存
     * @param $key
     * @return bool
     */
    public function hasCache($key) {
        global $smarty;
        $this->_cacheKey = sprintf('%X', crc32($key));
        if ($smarty->is_cached($this->getViewFile(), $key)) {
            $this->show();
            return true;
        }
        return false;
    }

    public function assign($k, $v = null) {
        global $smarty;
        $smarty->assign($k, $v);
        return $this;
    }

    public function show($file = null, $data = []) {
        global $smarty;
        if (is_array($file)) {
            $data = $file;
            $file = null;
        }
        if (!empty($data)) {
            $this->assign($data);
        }
        $smarty->display($this->getViewFile($file), $this->_cacheKey);
        exit();
    }

    /**
     * 获取模板生成内容
     * @param null $file
     * @param array $data
     * @return \sring|string
     */
    public function render($file = null, $data = []) {
        global $smarty;
        if (is_array($file)) {
            $data = $file;
            $file = null;
        }
        if (!empty($data)) {
            $this->assign($data);
        }
        return $smarty->fetch($this->getViewFile($file), $this->_cacheKey);
    }

    public static function invoke($name = null) {
        $instance = new static();
        $action = !is_null($name) ? $name :
            $instance->get(static::$actionKey);
        if (!empty($action)) {
            static::$action = $action;
        }
        $instance->init();
        $instance->invokeAction(static::$action);
    }


    public function invokeAction($action) {
        static::$action = $action;
        $action = lcfirst(StringExpand::studly(static::$action)).'Action';
        if (Request::isPost() && method_exists($this, $action . 'Post')) {
            $action .= 'Post';
        }
        if (!method_exists($this, $action)) {
            static::notFound();
        }
        call_user_func([$this, $action]);
    }

    protected static function notFound() {
        if (defined('DEBUG') && DEBUG) {
            throw new \Exception(sprintf('%s : %s , ACTION ERROR!'));
        }
        Factory::response()
            ->setStatusCode(404)
            ->sendHtml('404')
            ->send();
    }

    public static function __callStatic($name, $arguments) {
        return static::invoke($name);
    }
}