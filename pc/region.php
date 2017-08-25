<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = false;
}

use zd\Helper;
use zd\Sql;
use Zodream\Service\Factory;
use Zodream\Domain\Html\Tree;

class Region extends \zd\Controller {

    public function indexAction() {
        $type = intval($this->get('type'));
        $parent = intval($this->get('parent'));
        Helper::success(get_regions($type, $parent));
    }

    public function treeAction() {
        $key = 'region_tree';
        if (Factory::cache()->has($key)) {
            Helper::success(Factory::cache()->get($key));
        }
        $data = (new Tree(Sql::create()
            ->select('region_id as id, region_name as name, parent_id')->from('region')
        ->order('parent_id asc', 'region_id asc')))->makeIdTree();
        Factory::cache()->set($key, $data);
        Helper::success($data);
    }
}
Region::invoke();