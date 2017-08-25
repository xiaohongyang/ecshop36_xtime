<?php
namespace zd;

class Goods {
    /**
     * 获得商品选定的属性的附加总价格
     *
     * @param   integer     $goods_id
     * @param   array       $attr
     *
     * @return  void
     */
    public static function get_attr_amount($goods_id, $attr) {
        return Sql::create()->select('SUM(attr_price)')->from('goods_attr')
            ->where('goods_id=')->addInt($goods_id)
            ->andWhere(db_create_in($attr, 'goods_attr_id'))
            ->scalar();
    }

    public static function get_warehouse_id_attr_number($goods_id,
                                                        $attr_id = "",
                                                        $warehouse_id,
                                                        $area_id) {


        if (empty($attr_id)) {
            $attr_id = 0;
        } else {
            $attr_arr = explode(",", $attr_id);

            foreach ($attr_arr as $key => $val ) {
                $sql = " select a.attr_type from " . $GLOBALS["ecs"]->table("goods_attr") . " as ga  left join " .
                    $GLOBALS["ecs"]->table("attribute") .
                    " as a on a.attr_id=ga.attr_id  where goods_attr_id='" . $val . "' ";
                $attr_type = $GLOBALS["db"]->getOne($sql);

                if ($attr_type == 2) {
                    unset($attr_arr[$key]);
                }
            }
            $attr_id = implode(",", $attr_arr);
            $attr_id = str_replace(",", "|", $attr_id);
        }

        $sql = "select product_number, product_sn , bar_code from " . $GLOBALS["ecs"]->table("products") . " where goods_id = '$goods_id' and goods_attr = '$attr_id'";
        return $GLOBALS["db"]->getRow($sql);
    }

    public static function getGoods($id) {
        $time = gmtime();
        $sql = 'SELECT g.*, c.measure_unit, b.brand_id, b.brand_logo, g.comments_number, g.sales_volume,b.brand_name AS goods_brand, m.type_money AS bonus_money, ' .
            'IFNULL(AVG(r.comment_rank), 0) AS comment_rank, ' .
            "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS rank_price " .
            'FROM ' . $GLOBALS['ecs']->table('goods') . ' AS g ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('category') . ' AS c ON g.cat_id = c.cat_id ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('brand') . ' AS b ON g.brand_id = b.brand_id ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('comment') . ' AS r '.
            'ON r.id_value = g.goods_id AND comment_type = 0 AND r.parent_id = 0 AND r.status = 1 ' .
            'LEFT JOIN ' . $GLOBALS['ecs']->table('bonus_type') . ' AS m ' .
            "ON g.bonus_type_id = m.type_id AND m.send_start_date <= '$time' AND m.send_end_date >= '$time'" .
            " LEFT JOIN " . $GLOBALS['ecs']->table('member_price') . " AS mp ".
            "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' ".
            "WHERE g.goods_id = '$id' AND g.is_delete = 0 " .
            "GROUP BY g.goods_id";
        $row = Sql::create($sql)->one();

        if ($row !== false) {
            /* 用户评论级别取整 */
            $row['comment_rank']  = ceil($row['comment_rank']) == 0 ? 5 : ceil($row['comment_rank']);

            /* 折扣节省计算 by ecmoban start */
            if($row['market_price'] > 0) {
                $discount_arr = get_discount($row['goods_id']); //函数get_discount参数goods_id
            }
            $row['zhekou']  = $discount_arr['discount'];  //zhekou
            $row['jiesheng']  = $discount_arr['jiesheng']; //jiesheng
            /* 折扣节省计算 by ecmoban end */

            /* 获得商品的销售价格 */
            $row['market_price']        = price_format($row['market_price']);
            $row['shop_price_formated'] = price_format($row['shop_price']);

            /* 修正促销价格 */
            if ($row['promote_price'] > 0) {
                $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
            } else {
                $promote_price = 0;
            }

            /* 处理商品水印图片 */
            $watermark_img = '';

            if ($promote_price != 0) {
                $watermark_img = "watermark_promote";
            } elseif ($row['is_new'] != 0) {
                $watermark_img = "watermark_new";
            } elseif ($row['is_best'] != 0) {
                $watermark_img = "watermark_best";
            } elseif ($row['is_hot'] != 0) {
                $watermark_img = 'watermark_hot';
            }

            if ($watermark_img != '') {
                $row['watermark_img'] =  $watermark_img;
            }

            $row['promote_price_org'] =  $promote_price;
            $row['promote_price'] =  price_format($promote_price);

            /* 修正重量显示 */
            $row['goods_weight']  = (intval($row['goods_weight']) > 0) ?
                $row['goods_weight'] . $GLOBALS['_LANG']['kilogram'] :
                ($row['goods_weight'] * 1000) . $GLOBALS['_LANG']['gram'];

            /* 修正上架时间显示 */
            $row['add_time']      = local_date($GLOBALS['_CFG']['date_format'], $row['add_time']);

            /* 促销时间倒计时 */
            $time = gmtime();
            if ($time >= $row['promote_start_date'] && $time <= $row['promote_end_date']) {
                $row['gmt_end_time']  = $row['promote_end_date'];
            } else {
                $row['gmt_end_time'] = 0;
            }

            /* 是否显示商品库存数量 */
            $row['goods_number']  = ($GLOBALS['_CFG']['use_storage'] == 1) ? $row['goods_number'] : '';

            /* 修正E币：转换为可使用多少E币（原来是可以使用多少钱的E币） */
            $row['integral']      = $GLOBALS['_CFG']['integral_scale'] ? round($row['integral'] * 100 / $GLOBALS['_CFG']['integral_scale']) : 0;

            /* 修正优惠券 */
            $row['bonus_money']   = ($row['bonus_money'] == 0) ? 0 : price_format($row['bonus_money'], false);

            /* 修正商品图片 */
            $row['goods_img']   = get_image_path($id, $row['goods_img']);
            $row['goods_thumb'] = get_image_path($id, $row['goods_thumb'], true);
            return $row;
        }
        return false;
    }

    public static function getBrands() {
        return Sql::create()->select('brand_id, brand_name, brand_logo')->from('brand')
            ->where('is_show=1')->order('sort_order ASC')->all();
    }

    public static function getRecommendGoods() {
        return Sql::create()->select('goods_id,goods_thumb, goods_name, shop_price, market_price')->from('goods')->where('is_best = 1')
            ->andWhere('is_on_sale = 1 AND is_alone_sale = 1 AND is_delete = 0')
            ->order('sort_order, last_update DESC')->all();
    }

    public static function getAll($is_new = false) {
        $query = Sql::create()
            ->select('goods_id, goods_name, shop_price, goods_thumb')
            ->from('goods')
            ->where('is_on_sale = 1 AND is_alone_sale = 1')
            ->andWhere('is_delete = 0');
        if ($is_new) {
            $query->andWhere('is_new =1');
        }
        $data = $query->all();
        foreach ($data as &$item) {
            $item['price'] = price_format($item['shop_price'], false);
            $item['name'] = $item['goods_name'];
            $item['thumb'] = get_image_path($item['goods_id'], $item['goods_thumb'], true);
            $item['url'] = build_uri('goods', array('gid' => $item['goods_id']), $item['goods_name']);
        }
        return $data;
    }

    /**
     * 获得指定的规格的价格
     *
     * @access  public
     * @param   mix     $spec   规格ID的数组或者逗号分隔的字符串
     * @return  float
     */
    public static function getSpecPrice($spec, $goods_id) {
        if (empty($spec)) {
            return 0;
        }
        if(!is_array($spec)) {
            return getAttrPrice(addslashes($spec));
        }
        foreach($spec['spec'] as $key => $val) {
            $spec['spec'][$key] = addslashes($val);
        }
        $data = Sql::create()->select('a.attr_id, ga.attr_value, ga.attr_price')
            ->from('attribute a')
            ->right('goods_attr ga', 'a.attr_id = ga.attr_id AND ga.goods_id = '.$goods_id)
            ->where('a.attr_id')->addIn(array_keys($spec['input']))
            ->andWhere('a.attr_type = 9')->all();
        $prices = [];
        foreach ($data as $item) {
            if (!array_key_exists($item['attr_id'], $prices)) {
                $prices[$item['attr_id']] = 0;
            }
            if (static::isInSection($spec['input'][$item['attr_id']], $item['attr_value'])) {
                $prices[$item['attr_id']] = Helper::formula($spec['input'][$item['attr_id']], $item['attr_price']);
            }
        }
        $price = 0;
        foreach ($prices as $key => $item) {
            $price += $item;
        }
        return static::getAttrPrice($spec['spec']) + $price;
    }

    protected static function getAttrPrice($spec) {
        $where = db_create_in($spec, 'goods_attr_id');
        $sql = 'SELECT SUM(attr_price) AS attr_price FROM ' . $GLOBALS['ecs']->table('goods_attr') . " WHERE $where";
        $price = floatval($GLOBALS['db']->getOne($sql));
        return $price;
    }

    protected static function isInSection($num, $arg) {
        if (empty($arg)) {
            return true;
        }
        if (strpos($arg, '-') === false) {
            return $num == intval($arg);
        }
        $args = explode('-', $arg);
        $args[0] = intval($args[0]);
        $args[1] = intval($args[1]);
        if ($args[0] < $args[1]) {
            return $num >= $args[0] && $num <= $args[1];
        }
        return $num >= $args[0];
    }

    /**
     * 获得指定的商品属性
     *
     * @access      public
     * @param       array       $arr        规格、属性ID数组
     *
     * @return      string
     */
    public static function getGoodsAttrInfo($arr, $goods_id) {
        if (empty($arr)) {
            return '';
        }
        $attr   = '';
        $fmt = "%s:%s[%s] \n";

        $data = Sql::create()->select('a.attr_name, a.attr_id, ga.attr_value, ga.attr_price')
            ->from('attribute a')
            ->right('goods_attr ga', 'a.attr_id = ga.attr_id')
            ->where('a.attr_id')->addIn(array_keys($arr['input']))
            ->andWhere('ga.goods_id =')->addInt($goods_id)
            ->andWhere('a.attr_type = 9')->all();
        $prices = [];
        foreach ($data as $item) {
            if (!array_key_exists($item['attr_id'], $prices)) {
                $prices[$item['attr_id']] = [
                    'name' => $item['attr_name'],
                    'value' => $arr[$item['attr_id']],
                    'price' => 0
                ];
            }
            if (static::isInSection($arr['input'][$item['attr_id']], $item['attr_value'])) {
                $prices[$item['attr_id']] = [
                    'name' => $item['attr_name'],
                    'value' => $arr['input'][$item['attr_id']],
                    'price' => Helper::formula($arr['input'][$item['attr_id']],
                        $item['attr_price'])
                ];;
            }
        }
        foreach ($prices as $key => $item) {
            unset($arr[$key]);
            $attr .= sprintf($fmt, $item['name'], $item['value'], $item['price']);
        }


        $sql = "SELECT a.attr_name, ga.attr_value, ga.attr_price ".
                "FROM ".$GLOBALS['ecs']->table('goods_attr')." AS ga, ".
                    $GLOBALS['ecs']->table('attribute')." AS a ".
                "WHERE " .db_create_in($arr['spec'], 'ga.goods_attr_id')." AND a.attr_id = ga.attr_id";
        $res = $GLOBALS['db']->query($sql);

        while ($row = $GLOBALS['db']->fetchRow($res)) {
            $attr_price = round(floatval($row['attr_price']), 2);
            $attr .= sprintf($fmt, $row['attr_name'], $row['attr_value'], $attr_price);
        }

        $attr = str_replace('[0]', '', $attr);
        return $attr;
    }

    public static function addTag(array $goods) {
        $goods['has_new_tag'] = isset($goods['add_time']) && $goods['add_time'] > gmtime() - 30 * 24 * 3600;
        $goods['is_vip'] = isset($goods['is_vip']) && $goods['is_vip'] > 0;
        return $goods;
    }
}