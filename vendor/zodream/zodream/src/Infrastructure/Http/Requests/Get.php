<?php
namespace Zodream\Infrastructure\Http\Requests;
/**
 * Created by PhpStorm.
 * User: zx648
 * Date: 2016/4/3
 * Time: 9:29
 */
use Zodream\Infrastructure\Http\RequestFinal;
use Zodream\Infrastructure\ObjectExpand\StringExpand;

class Get extends BaseRequest {
    public function __construct() {
        if (!RequestFinal::isCli()) {
            $this->setValues($_GET);
            return;
        }
        // SET ARGV TO GET PARAM, IF NO '=' , VALUE IS '', YOU CAN USE IS_NULL JUDGE
        $args = RequestFinal::server('argv');
        if (empty($args)) {
            return;
        }
        array_shift($args);
        foreach ($args as $k => $arg) {
            list($key, $item) = StringExpand::explode($arg, ':', 2, '');
            $this->_data[$k] = $arg;
            if ($arg != $key) {
                $this->_data[$key] = $item;
            }
        }
    }
}