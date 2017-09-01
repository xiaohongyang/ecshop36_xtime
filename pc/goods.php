<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
if ((DEBUG_MODE & 2) != 2) {
    $smarty->caching = false;
}

use zd\Helper;
use zd\Sql;
use zd\Goods as UserGoods;

class Goods extends \zd\Controller {

    public function indexAction() {
        $id = intval($this->id);
        $this->hasCache($id . '-' . $_SESSION['user_rank']);
        $goods = get_goods_info($id);
        if ($goods === false) {
            Helper::redirect('index.php');
        }
        $goods['goods_style_name'] = add_style($goods['goods_name'], $goods['goods_name_style']);
        UserGoods::addTag($goods);
        $keywords =  htmlspecialchars($goods['keywords']);
        $description =  htmlspecialchars($goods['goods_brief']);

        $pictures = get_goods_gallery($id);
        $position = assign_ur_here($goods['cat_id'], $goods['goods_name']);

        /* current position */
        $page_title =  $position['title'];                    // 页面标题
        $ur_here = $position['ur_here'];                  // 当前位置

        $properties = get_goods_properties($id);  // 获得商品的规格和属性
        $specification = $properties['spe'];
        $properties = $properties['pro'];                              // 商品属性

        $helps = get_shop_help();       // 网店帮助
        $goods_list = get_recommend_goods('hot');     // 热销商品
        $cat = Sql::create()
            ->from('category')->where('cat_id', $goods['cat_id'])->one();
        $this->show(compact('page_title',
            'keywords',
            'description',
            'ur_here',
            'properties',
            'cat',
            'specification',
            'goods_list',
            'helps', 'goods', 'pictures', 'id'));
    }

    public function collectCountAction() {
        $id = intval($this->id);
        if (empty($id)) {
            Helper::failure('商品有误');
        }
        $count = Sql::create()
            ->selectCount()
            ->from('collect_goods')
            ->where('goods_id', $id)->scalar();
        $hasCollect = false;
        if (!empty($_SESSION['user_id'])) {
            $hasCollect = Sql::create()
                ->selectCount()->from('collect_goods')
                ->where('goods_id', $id)
                ->andWhere('user_id', intval($_SESSION['user_id']))->scalar() > 0;
        }
        Helper::success([
            'count' => $count,
            'collected' => $hasCollect
        ]);
    }

    public function priceAction(){

        $res    = array('err_msg' => '', 'result' => '', 'qty' => 1);

        $attr_id    = isset($_REQUEST['attr']) ? explode(',', $_REQUEST['attr']) : array();
        $number     = (isset($_REQUEST['number'])) ? intval($_REQUEST['number']) : 1;
        $goods_id = isset($_REQUEST['id'])  ? intval($_REQUEST['id']) : 0;
        if ($goods_id == 0)
        {
            $res['err_msg'] = $_LANG['err_change_attr'];
            $res['err_no']  = 1;
        }
        else
        {
            if ($number == 0)
            {
                $res['qty'] = $number = 1;
            }
            else
            {
                $res['qty'] = $number;
            }

            $shop_price  = get_final_price($goods_id, $number, true, $attr_id);
            $res['result'] = price_format($shop_price * $number, false);

            $goodsInfo = get_products_info($goods_id, $attr_id);
            $res['product_number'] = is_null($goodsInfo['product_number']) ? 0 : $goodsInfo['product_number'];
            $res['product_price'] = $shop_price;
        }

        die( json_encode($res));
    }
}
Goods::invoke();