<?php
define('IN_ECS', true);
require(__DIR__ . '/includes/init.php');
if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = false;
}

use zd\Helper;
use zd\Sql;
use zd\Goods;

class Category extends \zd\Controller {

    public function indexAction() {
        $key = implode('-', $this->get('sort,order,page,id'));
        $this->hasCache($key);
        $cat_id = intval($this->get('id'));
        $page_title = '首页';
        $categories =     get_categories_tree(); // 分类树
        $helps = get_shop_help();       // 网店帮助
        $children = get_children($cat_id);

        $cat = Sql::create()
            ->select('cat_name, keywords, cat_desc, style, grade, filter_attr, parent_id')
            ->from('category')
            ->where('cat_id', $cat_id)->one();
        if (!empty($cat)) {
            $this->assign('keywords',    htmlspecialchars($cat['keywords']));
            $this->assign('description', htmlspecialchars($cat['cat_desc']));
            $this->assign('cat_style',   htmlspecialchars($cat['style']));
        } else {
            /* 如果分类不存在则返回首页 */
            Helper::redirect('index.php');
        }
        $total = $this->_getCagtegoryGoodsCount($children);
        $goods_list = $this->_getGoodsList($children, $this->get('sort', 'shop_price'),
            $this->get('order', 'desc'),
            intval($this->get('page', 1)), intval($this->get('size', 16)));


        if($cat['cat_name'] == '主题周边'){
            $category_01 = true;
        } else if($cat['cat_name'] == '音像作品'){
            $category_02 = true;
        } else if($cat['cat_name'] == '演出票务'){
            $category_03 = true;
        } else if($cat['cat_name'] == '积分商城'){
            $category_04 = true;
        }

        $this->assign('category_01', $category_01);
        $this->assign('category_02', $category_02);
        $this->assign('category_03', $category_03);
        $this->assign('category_04', $category_04);
        $this->show(compact('page_title', 'helps', 'categories', 'goods_list', 'total'));
    }

    private function _getGoodsList($children, $sort, $order, $page, $size) {
        $display = $GLOBALS['display'];
        $where = "g.is_on_sale = 1 AND g.is_alone_sale = 1 AND ".
            "g.is_delete = 0 AND ($children OR " . get_extension_goods($children) . ')';

        /* 获得商品列表 */
        $sql = 'SELECT g.goods_id, g.goods_name, g.goods_brief, g.goods_name_style, g.add_time, g.is_vip, g.market_price, g.is_new, g.is_best, g.is_hot, g.shop_price AS org_price, ' .
            "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS shop_price, g.promote_price, g.goods_type, " .
            'g.promote_start_date, g.promote_end_date, g.goods_brief, g.goods_thumb , g.goods_img ' .
            'FROM ' . $GLOBALS['ecs']->table('goods') . ' AS g ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('member_price') . ' AS mp ' .
            "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' " .
            "WHERE $where ORDER BY $sort $order";
        $res = $GLOBALS['db']->selectLimit($sql, $size, ($page - 1) * $size);

        $arr = array();
        while ($row = $GLOBALS['db']->fetchRow($res)) {
            if ($row['promote_price'] > 0) {
                $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
            } else {
                $promote_price = 0;
            }

            /* 处理商品水印图片 */
            $watermark_img = '';

            if ($promote_price != 0) {
                $watermark_img = "watermark_promote_small";
            } elseif ($row['is_new'] != 0) {
                $watermark_img = "watermark_new_small";
            } elseif ($row['is_best'] != 0) {
                $watermark_img = "watermark_best_small";
            } elseif ($row['is_hot'] != 0) {
                $watermark_img = 'watermark_hot_small';
            }

            if ($watermark_img != '') {
                $arr[$row['goods_id']]['watermark_img'] =  $watermark_img;
            }

            $arr[$row['goods_id']]['goods_id']         = $row['goods_id'];
            if($display == 'grid') {
                $arr[$row['goods_id']]['goods_name']       = $GLOBALS['_CFG']['goods_name_length'] > 0 ? sub_str($row['goods_name'], $GLOBALS['_CFG']['goods_name_length']) : $row['goods_name'];
            } else {
                $arr[$row['goods_id']]['goods_name']       = $row['goods_name'];
            }
            $arr[$row['goods_id']]['name']             = $row['goods_name'];
            $arr[$row['goods_id']]['goods_brief']      = $row['goods_brief'];
            $arr[$row['goods_id']]['goods_style_name'] = add_style($row['goods_name'],$row['goods_name_style']);
            $arr[$row['goods_id']]['market_price']     = price_format($row['market_price']);
            $arr[$row['goods_id']]['shop_price']       = price_format($row['shop_price']);
            $arr[$row['goods_id']]['type']             = $row['goods_type'];
            $arr[$row['goods_id']]['promote_price']    = ($promote_price > 0) ? price_format($promote_price) : '';
            $arr[$row['goods_id']]['goods_thumb']      = get_image_path($row['goods_id'], $row['goods_thumb'], true);
            $arr[$row['goods_id']]['goods_img']        = get_image_path($row['goods_id'], $row['goods_img']);
            $arr[$row['goods_id']]['url']              = build_uri('goods', array('gid'=>$row['goods_id']), $row['goods_name']);
            $arr[$row['goods_id']]['add_time']     = $row['add_time'];
            $arr[$row['goods_id']]['is_vip']     = $row['vip'];
            $arr[$row['goods_id']]['goods_brief']     = $row['goods_brief'];
            $arr[$row['goods_id']] = Goods::addTag($arr[$row['goods_id']]);
        }

        return $arr;
    }

    private function _getCagtegoryGoodsCount($children, $brand = 0, $min = 0, $max = 0, $ext='') {
        $where  = "g.is_on_sale = 1 AND g.is_alone_sale = 1 AND g.is_delete = 0 AND ($children OR " . get_extension_goods($children) . ')';

        if ($brand > 0) {
            $where .=  " AND g.brand_id = $brand ";
        }

        if ($min > 0) {
            $where .= " AND g.shop_price >= $min ";
        }

        if ($max > 0) {
            $where .= " AND g.shop_price <= $max ";
        }
        /* 返回商品总数 */
        return $GLOBALS['db']->getOne('SELECT COUNT(*) FROM ' . $GLOBALS['ecs']->table('goods') . " AS g WHERE $where $ext");
    }
}
Category::invoke();