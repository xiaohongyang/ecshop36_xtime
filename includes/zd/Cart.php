<?php
namespace zd;


class Cart {

    /**
     * 获取购物车商品总数
     * @param int $type
     * @return bool|string
     */
    public static function count($type = CART_GENERAL_GOODS) {
        return Sql::create()
            ->selectCount()
            ->from('cart')
            ->where('session_id', SESS_ID)
            ->andWhere('parent_id', 0)
            ->andWhere('is_gift', 0)
            ->andWhere('rec_type', $type)
            ->scalar();
    }

    /**
     * 获取所有商品
     * @param int $type
     * @return array|bool
     */
    public static function all($type = CART_GENERAL_GOODS) {
        $arr = Sql::create()->select('c.*, c.goods_price * c.goods_number AS subtotal, g.goods_thumb')->from('cart c')
        ->left('goods g', 'c.goods_id = g.goods_id')
        ->where('session_id', SESS_ID)
        ->andWhere('rec_type', $type)->all();

        /* 格式化价格及礼包商品 */
        foreach ($arr as $key => $value) {
            $arr[$key]['formated_market_price'] = price_format($value['market_price'], false);
            $arr[$key]['formated_goods_price']  = price_format($value['goods_price'], false);
            $arr[$key]['formated_subtotal']     = price_format($value['subtotal'], false);

            if ($value['extension_code'] == 'package_buy') {
                $arr[$key]['package_goods_list'] = get_package_goods($value['goods_id']);
            }
        }
        return $arr;
    }

    /**
     * 获取选中的id
     * @return array|null
     */
    public static function getSelectedId() {
        static $data = null;
        if (!is_null($data)) {
            return $data;
        }
        if (!isset($_SESSION['cart_value'])) {
            return $data = [];
        }
        $ids = explode(',', $_SESSION['cart_value']);
        $data = [];
        foreach ($ids as $item) {
            $item = intval($item);
            if ($item > 0) {
                $data[] = $item;
            }
        }
        array_unique($data);
        return $data;
    }

    /**
     * 获取当前选中
     * @param int $type
     * @return array|bool
     */
    public static function getSelected($type = CART_GENERAL_GOODS) {
        $query = Sql::create()->select('c.rec_id, 
                c.user_id, c.goods_id, c.goods_name, c.goods_sn, 
                c.goods_number,c.market_price, c.goods_price, c.goods_attr, 
                c.is_real, g.goods_thumb, c.extension_code, c.parent_id, c.is_gift, 
                c.is_shipping, c.goods_price * c.goods_number AS subtotal')
            ->from('cart c')
            ->left('goods g', 'c.goods_id = g.goods_id')
            ->where('c.session_id =')->addValue(SESS_ID)
            ->andWhere('c.rec_type =')->addValue($type);
        if (!empty(static::getSelectedId())) {
            $query->andWhere('rec_id')->addIn(static::getSelectedId());
        }

        $arr = $query->all();

        /* 格式化价格及礼包商品 */
        foreach ($arr as $key => $value) {
            $arr[$key]['formated_market_price'] = price_format($value['market_price'], false);
            $arr[$key]['formated_goods_price']  = price_format($value['goods_price'], false);
            $arr[$key]['formated_subtotal']     = price_format($value['subtotal'], false);

            if ($value['extension_code'] == 'package_buy')
            {
                $arr[$key]['package_goods_list'] = get_package_goods($value['goods_id']);
            }
        }
        return $arr;
    }

    public static function updateCart($arr) {
        /* 处理 */
        foreach ($arr AS $key => $val) {
            $val = intval(make_semiangle($val));
            if ($val <= 0 || !is_numeric($key)) {
                continue;
            }

            //查询：
            $sql = "SELECT `goods_id`, `goods_attr_id`, `product_id`, `extension_code` FROM" .$GLOBALS['ecs']->table('cart').
                " WHERE rec_id='$key' AND session_id='" . SESS_ID . "'";
            $goods = $GLOBALS['db']->getRow($sql);

            $sql = "SELECT g.goods_name, g.goods_number ".
                "FROM " .$GLOBALS['ecs']->table('goods'). " AS g, ".
                $GLOBALS['ecs']->table('cart'). " AS c ".
                "WHERE g.goods_id = c.goods_id AND c.rec_id = '$key'";
            $row = $GLOBALS['db']->getRow($sql);

            //查询：系统启用了库存，检查输入的商品数量是否有效
            if (intval($GLOBALS['_CFG']['use_storage']) > 0 && $goods['extension_code'] != 'package_buy')
            {
                if ($row['goods_number'] < $val)
                {
                    Helper::failure(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                        $row['goods_number'], $row['goods_number']));
                    exit;
                }
                if ($val >= 99) {
                    Helper::failure(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                        $row['goods_number'], $row['goods_number']));
                    exit;
                }
                if ($val < 1) {
                    Helper::failure(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                        $row['goods_number'], $row['goods_number']));
                    exit;
                }
                /* 是货品 */
                $goods['product_id'] = trim($goods['product_id']);
                if (!empty($goods['product_id']))
                {
                    $sql = "SELECT product_number FROM " .$GLOBALS['ecs']->table('products'). " WHERE goods_id = '" . $goods['goods_id'] . "' AND product_id = '" . $goods['product_id'] . "'";

                    $product_number = $GLOBALS['db']->getOne($sql);
                    if ($product_number < $val)
                    {
                        Helper::failure(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                            $product_number['product_number'], $product_number['product_number']));
                        exit;
                    }
                    if ($val > 99)
                    {
                        Helper::failure(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                            $row['goods_number'], $row['goods_number']));
                        exit;
                    }
                    if ($val < 1) {
                        Helper::failure(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                            $row['goods_number'], $row['goods_number']));
                        exit;
                    }
                }
            }
            elseif (intval($GLOBALS['_CFG']['use_storage']) > 0 && $goods['extension_code'] == 'package_buy')
            {
                if (judge_package_stock($goods['goods_id'], $val)) {
                    Helper::failure($GLOBALS['_LANG']['package_stock_insufficiency']);
                    exit;
                }
            }

            /* 查询：检查该项是否为基本件 以及是否存在配件 */
            /* 此处配件是指添加商品时附加的并且是设置了优惠价格的配件 此类配件都有parent_id goods_number为1 */
            $sql = "SELECT b.goods_number, b.rec_id
                FROM " .$GLOBALS['ecs']->table('cart') . " a, " .$GLOBALS['ecs']->table('cart') . " b
                WHERE a.rec_id = '$key'
                AND a.session_id = '" . SESS_ID . "'
                AND a.extension_code <> 'package_buy'
                AND b.parent_id = a.goods_id
                AND b.session_id = '" . SESS_ID . "'";

            $offers_accessories_res = $GLOBALS['db']->query($sql);

            //订货数量大于0
            if ($val > 0)
            {
                /* 判断是否为超出数量的优惠价格的配件 删除*/
                $row_num = 1;
                while ($offers_accessories_row = $GLOBALS['db']->fetchRow($offers_accessories_res))
                {
                    if ($row_num > $val)
                    {
                        $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
                            " WHERE session_id = '" . SESS_ID . "' " .
                            "AND rec_id = '" . $offers_accessories_row['rec_id'] ."' LIMIT 1";
                        $GLOBALS['db']->query($sql);
                    }

                    $row_num ++;
                }

                /* 处理超值礼包 */
                if ($goods['extension_code'] == 'package_buy')
                {
                    //更新购物车中的商品数量
                    $sql = "UPDATE " .$GLOBALS['ecs']->table('cart').
                        " SET goods_number = '$val' WHERE rec_id='$key' AND session_id='" . SESS_ID . "'";
                }
                /* 处理普通商品或非优惠的配件 */
                else
                {
                    $attr_id    = empty($goods['goods_attr_id']) ? array() : explode(',', $goods['goods_attr_id']);
                    $goods_price = get_final_price($goods['goods_id'], $val, true, $attr_id);

                    //更新购物车中的商品数量
                    $sql = "UPDATE " .$GLOBALS['ecs']->table('cart').
                        " SET goods_number = '$val', goods_price = '$goods_price' WHERE rec_id='$key' AND session_id='" . SESS_ID . "'";
                }
            }
            //订货数量等于0
            else
            {
                /* 如果是基本件并且有优惠价格的配件则删除优惠价格的配件 */
                while ($offers_accessories_row = $GLOBALS['db']->fetchRow($offers_accessories_res))
                {
                    $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') .
                        " WHERE session_id = '" . SESS_ID . "' " .
                        "AND rec_id = '" . $offers_accessories_row['rec_id'] ."' LIMIT 1";
                    $GLOBALS['db']->query($sql);
                }

                $sql = "DELETE FROM " .$GLOBALS['ecs']->table('cart').
                    " WHERE rec_id='$key' AND session_id='" .SESS_ID. "'";
            }

            $GLOBALS['db']->query($sql);
        }

        /* 删除所有赠品 */
        $sql = "DELETE FROM " . $GLOBALS['ecs']->table('cart') . " WHERE session_id = '" .SESS_ID. "' AND is_gift <> 0";
        $GLOBALS['db']->query($sql);
    }

    public static function cartStock($arr) {
        foreach ($arr AS $key => $val)
        {
            $val = intval(make_semiangle($val));
            if ($val <= 0 || !is_numeric($key))
            {
                continue;
            }

            $sql = "SELECT `goods_id`, `goods_attr_id`, `extension_code` FROM" .$GLOBALS['ecs']->table('cart').
                " WHERE rec_id='$key' AND session_id='" . SESS_ID . "'";
            $goods = $GLOBALS['db']->getRow($sql);

            $sql = "SELECT g.goods_name, g.goods_number, c.product_id ".
                "FROM " .$GLOBALS['ecs']->table('goods'). " AS g, ".
                $GLOBALS['ecs']->table('cart'). " AS c ".
                "WHERE g.goods_id = c.goods_id AND c.rec_id = '$key'";
            $row = $GLOBALS['db']->getRow($sql);

            //系统启用了库存，检查输入的商品数量是否有效
            if (intval($GLOBALS['_CFG']['use_storage']) > 0 && $goods['extension_code'] != 'package_buy')
            {
                if ($row['goods_number'] < $val)
                {
                    show_message(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                        $row['goods_number'], $row['goods_number']));
                    exit;
                }

                /* 是货品 */
                $row['product_id'] = trim($row['product_id']);
                if (!empty($row['product_id']))
                {
                    $sql = "SELECT product_number FROM " .$GLOBALS['ecs']->table('products'). " WHERE goods_id = '" . $goods['goods_id'] . "' AND product_id = '" . $row['product_id'] . "'";
                    $product_number = $GLOBALS['db']->getOne($sql);
                    if ($product_number < $val)
                    {
                        show_message(sprintf($GLOBALS['_LANG']['stock_insufficiency'], $row['goods_name'],
                            $row['goods_number'], $row['goods_number']));
                        exit;
                    }
                }
            }
            elseif (intval($GLOBALS['_CFG']['use_storage']) > 0 && $goods['extension_code'] == 'package_buy')
            {
                if (judge_package_stock($goods['goods_id'], $val))
                {
                    show_message($GLOBALS['_LANG']['package_stock_insufficiency']);
                    exit;
                }
            }
        }

    }

    public static function availablePoints() {
        $sql = "SELECT SUM(g.integral * c.goods_number) ".
            "FROM " . $GLOBALS['ecs']->table('cart') . " AS c, " . $GLOBALS['ecs']->table('goods') . " AS g " .
            "WHERE c.session_id = '" . SESS_ID . "' AND c.goods_id = g.goods_id AND c.is_gift = 0 AND g.integral > 0 " .
            "AND c.rec_type = '" . CART_GENERAL_GOODS . "'";

        $val = intval($GLOBALS['db']->getOne($sql));

        return [
            $val,
            integral_of_value($val)
        ];
    }

    public static function getSelectedWhere() {
        $where = '';
        if (!empty(static::getSelectedId())) {
            $where = " AND rec_id IN (".implode(", ", static::getSelectedId()).")";
        }
        return $where;
    }

    public static function clearCart($type = CART_GENERAL_GOODS) {
        Sql::delete('cart', [
            'session_id' => SESS_ID,
            'rec_type' => $type
        ], static::getSelectedWhere());
    }

    /**
     * 加入订单
     * @param $order_id
     * @param int $type
     */
    public static function toOrder($order_id, $type = CART_GENERAL_GOODS) {
        Sql::insert('order_goods',
            'order_id, goods_id, goods_name, goods_sn, product_id, goods_number, market_price, goods_price, goods_attr, is_real, extension_code, parent_id, is_gift, goods_attr_id',
            Sql::create()
            ->select($order_id, 'goods_id, goods_name, goods_sn, product_id, goods_number, market_price',
                'goods_price, goods_attr, is_real, extension_code, parent_id, is_gift, goods_attr_id')
            ->from('cart')
            ->where('session_id', SESS_ID)
            ->andWhere('rec_type', $type)
            ->addSql(static::getSelectedWhere())
        );
    }


    /**
     * 添加商品到购物车
     *
     * @access  public
     * @param   integer $goods_id   商品编号
     * @param   integer $num        商品数量
     * @param   array   $spec       规格值对应的id数组
     * @param   integer $parent     基本件
     * @return  boolean|integer
     */
    public static function addToCart($goods_id, $num = 1, $spec = array(), $parent = 0, $rec_type = CART_GENERAL_GOODS) {

        $rec_type = $_REQUEST['flow_type'] == 'buy_now' ? CART_BUY_NOW : $rec_type;

        $GLOBALS['err']->clean();
        $_parent_id = $parent;

        /* 取得商品信息 */
        $sql = "SELECT g.goods_name, g.goods_sn, g.is_on_sale, g.is_real, ".
            "g.market_price, g.shop_price AS org_price, g.promote_price, g.promote_start_date, ".
            "g.promote_end_date, g.goods_weight, g.integral, g.extension_code, ".
            "g.goods_number, g.is_alone_sale, g.is_shipping,".
            "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS shop_price ".
            " FROM " .$GLOBALS['ecs']->table('goods'). " AS g ".
            " LEFT JOIN " . $GLOBALS['ecs']->table('member_price') . " AS mp ".
            "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' ".
            " WHERE g.goods_id = '$goods_id'" .
            " AND g.is_delete = 0";
        $goods = $GLOBALS['db']->getRow($sql);

        if (empty($goods))
        {
            $GLOBALS['err']->add($GLOBALS['_LANG']['goods_not_exists'], ERR_NOT_EXISTS);

            return false;
        }

        /* 如果是作为配件添加到购物车的，需要先检查购物车里面是否已经有基本件 */
        if ($parent > 0)
        {
            $sql = "SELECT COUNT(*) FROM " . $GLOBALS['ecs']->table('cart') .
                " WHERE goods_id='$parent' AND session_id='" . SESS_ID . "' AND extension_code <> 'package_buy'";
            if ($GLOBALS['db']->getOne($sql) == 0)
            {
                $GLOBALS['err']->add($GLOBALS['_LANG']['no_basic_goods'], ERR_NO_BASIC_GOODS);

                return false;
            }
        }

        /* 是否正在销售 */
        if ($goods['is_on_sale'] == 0)
        {
            $GLOBALS['err']->add($GLOBALS['_LANG']['not_on_sale'], ERR_NOT_ON_SALE);

            return false;
        }

        /* 不是配件时检查是否允许单独销售 */
        if (empty($parent) && $goods['is_alone_sale'] == 0)
        {
            $GLOBALS['err']->add($GLOBALS['_LANG']['cannt_alone_sale'], ERR_CANNT_ALONE_SALE);

            return false;
        }

        /* 如果商品有规格则取规格商品信息 配件除外 */
        $sql = "SELECT * FROM " .$GLOBALS['ecs']->table('products'). " WHERE goods_id = '$goods_id' LIMIT 0, 1";
        $prod = $GLOBALS['db']->getRow($sql);

        if (is_spec($spec) && !empty($prod))
        {
            $product_info = get_products_info($goods_id, $spec);
        }
        if (empty($product_info))
        {
            $product_info = array('product_number' => '', 'product_id' => 0);
        }

        /* 检查：库存 */
        if ($GLOBALS['_CFG']['use_storage'] == 1)
        {
            //检查：商品购买数量是否大于总库存
            if ($num > $goods['goods_number'])
            {
                $GLOBALS['err']->add(sprintf($GLOBALS['_LANG']['shortage'], $goods['goods_number']), ERR_OUT_OF_STOCK);

                return false;
            }

            //商品存在规格 是货品 检查该货品库存
            if (is_spec($spec) && !empty($prod))
            {
                if (!empty($spec))
                {
                    /* 取规格的货品库存 */
                    if ($num > $product_info['product_number'])
                    {
                        $GLOBALS['err']->add(sprintf($GLOBALS['_LANG']['shortage'], $product_info['product_number']), ERR_OUT_OF_STOCK);

                        return false;
                    }
                }
            }
        }

        /* 计算商品的促销价格 */
        $spec_price             = spec_price($spec);
        $goods_price            = get_final_price($goods_id, $num, true, $spec);
        $goods['market_price'] += $spec_price;
        $goods_attr             = get_goods_attr_info($spec);
        $goods_attr_id          = join(',', $spec);

        /* 初始化要插入购物车的基本件数据 */
        $parent = array(
            'user_id'       => $_SESSION['user_id'],
            'session_id'    => SESS_ID,
            'goods_id'      => $goods_id,
            'goods_sn'      => addslashes($goods['goods_sn']),
            'product_id'    => $product_info['product_id'],
            'goods_name'    => addslashes($goods['goods_name']),
            'market_price'  => $goods['market_price'],
            'goods_attr'    => addslashes($goods_attr),
            'goods_attr_id' => $goods_attr_id,
            'is_real'       => $goods['is_real'],
            'extension_code'=> $goods['extension_code'],
            'is_gift'       => 0,
            'is_shipping'   => $goods['is_shipping'],
            'rec_type'      => $rec_type
        );

        /* 如果该配件在添加为基本件的配件时，所设置的“配件价格”比原价低，即此配件在价格上提供了优惠， */
        /* 则按照该配件的优惠价格卖，但是每一个基本件只能购买一个优惠价格的“该配件”，多买的“该配件”不享 */
        /* 受此优惠 */
        $basic_list = array();
        $sql = "SELECT parent_id, goods_price " .
            "FROM " . $GLOBALS['ecs']->table('group_goods') .
            " WHERE goods_id = '$goods_id'" .
            " AND goods_price < '$goods_price'" .
            " AND parent_id = '$_parent_id'" .
            " ORDER BY goods_price";
        $res = $GLOBALS['db']->query($sql);
        while ($row = $GLOBALS['db']->fetchRow($res))
        {
            $basic_list[$row['parent_id']] = $row['goods_price'];
        }

        /* 取得购物车中该商品每个基本件的数量 */
        $basic_count_list = array();
        if ($basic_list)
        {
            $sql = "SELECT goods_id, SUM(goods_number) AS count " .
                "FROM " . $GLOBALS['ecs']->table('cart') .
                " WHERE session_id = '" . SESS_ID . "'" .
                " AND parent_id = 0" .
                " AND extension_code <> 'package_buy' " .
                " AND goods_id " . db_create_in(array_keys($basic_list)) .
                " GROUP BY goods_id";
            $res = $GLOBALS['db']->query($sql);
            while ($row = $GLOBALS['db']->fetchRow($res))
            {
                $basic_count_list[$row['goods_id']] = $row['count'];
            }
        }

        /* 取得购物车中该商品每个基本件已有该商品配件数量，计算出每个基本件还能有几个该商品配件 */
        /* 一个基本件对应一个该商品配件 */
        if ($basic_count_list)
        {
            $sql = "SELECT parent_id, SUM(goods_number) AS count " .
                "FROM " . $GLOBALS['ecs']->table('cart') .
                " WHERE session_id = '" . SESS_ID . "'" .
                " AND goods_id = '$goods_id'" .
                " AND extension_code <> 'package_buy' " .
                " AND parent_id " . db_create_in(array_keys($basic_count_list)) .
                " GROUP BY parent_id";
            $res = $GLOBALS['db']->query($sql);
            while ($row = $GLOBALS['db']->fetchRow($res))
            {
                $basic_count_list[$row['parent_id']] -= $row['count'];
            }
        }

        $rec_id = 0;

        /* 循环插入配件 如果是配件则用其添加数量依次为购物车中所有属于其的基本件添加足够数量的该配件 */
        foreach ($basic_list as $parent_id => $fitting_price)
        {
            /* 如果已全部插入，退出 */
            if ($num <= 0)
            {
                break;
            }

            /* 如果该基本件不再购物车中，执行下一个 */
            if (!isset($basic_count_list[$parent_id]))
            {
                continue;
            }

            /* 如果该基本件的配件数量已满，执行下一个基本件 */
            if ($basic_count_list[$parent_id] <= 0)
            {
                continue;
            }

            /* 作为该基本件的配件插入 */
            $parent['goods_price']  = max($fitting_price, 0) + $spec_price; //允许该配件优惠价格为0
            $parent['goods_number'] = min($num, $basic_count_list[$parent_id]);
            $parent['parent_id']    = $parent_id;

            /* 添加 */
            Sql::insert('cart', $parent);
            /* 改变数量 */
            $num -= $parent['goods_number'];
        }

        /* 如果数量不为0，作为基本件插入 */
        if ($num > 0)
        {
            $tmpRecType = $rec_type == CART_BUY_NOW ? CART_BUY_NOW : CART_GENERAL_GOODS;
            /* 检查该商品是否已经存在在购物车中 */
            $sql = "SELECT goods_number, rec_id FROM " .$GLOBALS['ecs']->table('cart').
                " WHERE session_id = '" .SESS_ID. "' AND goods_id = '$goods_id' ".
                " AND parent_id = 0 AND goods_attr = '" .get_goods_attr_info($spec). "' " .
                " AND extension_code <> 'package_buy' " .
                " AND rec_type = '{$tmpRecType}'";

            $row = $GLOBALS['db']->getRow($sql);


            if($row) //如果购物车已经有此物品，则更新
            {
                $rec_id = $row['rec_id'];
                $num += $row['goods_number'];
                if(is_spec($spec) && !empty($prod) )
                {
                    $goods_storage=$product_info['product_number'];
                }
                else
                {
                    $goods_storage=$goods['goods_number'];
                }

                if($num > 99) {
                    Helper::failure(sprintf($GLOBALS['_LANG']['cart_limit_99']));
                }
                if ($GLOBALS['_CFG']['use_storage'] == 0 || $num <= $goods_storage)
                {
                    $goods_price = get_final_price($goods_id, $num, true, $spec);
                    $sql = "UPDATE " . $GLOBALS['ecs']->table('cart') . " SET goods_number = '$num'" .
                        " , goods_price = '$goods_price'".
                        " WHERE session_id = '" .SESS_ID. "' AND goods_id = '$goods_id' ".
                        " AND parent_id = 0 AND goods_attr = '" .get_goods_attr_info($spec). "' " .
                        " AND extension_code <> 'package_buy' " .
                        "AND rec_type = 'CART_GENERAL_GOODS'";
                    $GLOBALS['db']->query($sql);
                }
                else
                {
                    $GLOBALS['err']->add(sprintf($GLOBALS['_LANG']['shortage'], $num), ERR_OUT_OF_STOCK);

                    return false;
                }
            }
            else //购物车没有此物品，则插入
            {
                $goods_price = get_final_price($goods_id, $num, true, $spec);
                $parent['goods_price']  = max($goods_price, 0);
                $parent['goods_number'] = $num;
                $parent['parent_id']    = 0;
                $rec_id = Sql::insert('cart', $parent);
            }
        }

        /* 把赠品删除 */
        $sql = "DELETE FROM "
            . $GLOBALS['ecs']->table('cart') . " WHERE session_id = '" . SESS_ID . "' AND is_gift <> 0";
        $GLOBALS['db']->query($sql);
        return $rec_id;
    }

    public static  function getCartNumber($goods_id, $spec) {
        $sql = "select goods_number from " . $GLOBALS['ecs']->table('cart') . " 
            WHERE session_id = '" .SESS_ID. "' AND goods_id = '$goods_id' ".
            " AND parent_id = 0 AND goods_attr = '" .get_goods_attr_info($spec). "' " .
            " AND extension_code <> 'package_buy' " .
            "AND rec_type = 'CART_GENERAL_GOODS'";

        $result = $GLOBALS['db']->getOne($sql);
        return $result;
    }
}