<?php
namespace zd;

use Zodream\Domain\Html\Page;

class UserOrder {
    /**
     * @param integer $userId
     * @return Page
     */
    public static function getPage($userId, $search=null, $status=null) {
        $searchWhere = '';
        if(!is_null($search)){
            $searchWhere = " and (og.goods_name like '%{$search}%' 
                or oi.order_sn like '%{$search}%'   
                OR oi.consignee LIKE '%{$search}%' 
                OR oi.address LIKE '%{$search}%' 
                OR oi.tel LIKE '%{$search}%'
                )
            ";
        }
        $statusWhere = is_null($status) ? '' : " and oi.order_status = {$status} ";
        if(is_null($status)) {
            $statusWhere = '';
        } else {

            switch ($status) {
                case 1:
                    //待支付
                    $statusWhere = " and oi.pay_status=0 and oi.order_status<>2 " ;
                    break;
                case 2:
                    //待发货
                    $statusWhere = ' and oi.order_status=1 and oi.shipping_status=0 and oi.pay_status=2  ';
                    break;
                case 3:
                    //待收货
                    $statusWhere = ' and oi.order_status=5 and oi.shipping_status=1 and oi.pay_status=2  ';
                    break;
                case 4:
                    //交易完成
                    $statusWhere = ' and oi.order_status=5 and oi.shipping_status=2 and oi.pay_status=2  ';
                    break;
                case 5:
                    //交易取消
                    $statusWhere = ' and oi.order_status=2  ';
                    break;
                case 6:
                    //退货
                    $statusWhere = ' and oi.order_status =4  ';
                    break;
            }
        }

        $count = Sql::create()->select('COUNT(distinct(oi.order_id)) AS count')
            ->from('order_info oi')
            ->inner('order_goods og', 'oi.order_id=og.order_id')
            ->where('oi.is_delete = 0 ' . $statusWhere . $searchWhere .' and oi.user_id =')
            ->addInt($userId);
        $sql = Sql::create()->select('distinct(oi.order_id),oi.*')
            ->from('order_info oi')
            ->inner('order_goods og', 'oi.order_id=og.order_id')
            ->where('oi.is_delete = 0 ' . $statusWhere . $searchWhere .' and oi.user_id =')->addInt($userId);

        $page = new Page(static::addWhere($count)->scalar());
        $page->setPage(static::addWhere($sql)
            ->order('order_id desc')->limit($page->getLimit())->all());
        $data = array();
        foreach ($page->getPage() as $item) {
            $item = static::formatOrder( $item);
            $item['goods_list'] = self::getOrderGoods($item['order_id']);
            $item['count'] = count($item['goods_list']);
            $data[] = $item;
        }
        return $page->setPage($data);
    }

    public static function formatOrder($item) {



        if ($item['order_status'] == OS_UNCONFIRMED) {
            $item['handler'] = "<a href=\"user.php?act=cancel_order&order_id=" .$item['order_id']. "\" onclick=\"if (!confirm('".$GLOBALS['_LANG']['confirm_cancel']."')) return false;\">".
                $GLOBALS['_LANG']['cancel']."</a>&nbsp;<a href=\"user.php?act=order_detail&order_id="
                .$item['order_id']. '">' .$GLOBALS['_LANG']['pay_money']. '</a>';
        } else if ($item['order_status'] == OS_SPLITED) {
            /* 对配送状态的处理 */
            if ($item['shipping_status'] == SS_SHIPPED) {
                @$item['handler'] = "<a class=\"cf_rv\" href=\"user.php?act=affirm_received&order_id="
                    .$item['order_id']. "\" onclick=\"if (!confirm('".
                    $GLOBALS['_LANG']['confirm_received']."')) return false;\">"
                    .$GLOBALS['_LANG']['received']."</a>";
            } elseif ($item['shipping_status'] == SS_RECEIVED)  {
                @$item['handler'] = '<i style="color:red">'.$GLOBALS['_LANG']['ss_received'] .'</i>';
            } else {
                if ($item['pay_status'] == PS_UNPAYED) {
                    @$item['handler'] = "<a href=\"user.php?act=order_detail&order_id="
                        .$item['order_id']. '">' .$GLOBALS['_LANG']['pay_money']. '</a>';
                } else {
                    @$item['handler'] = "<a href=\"user.php?act=order_detail&order_id="
                        .$item['order_id']. '">' .$GLOBALS['_LANG']['view_order']. '</a>';
                }

            }
        } else {
            //$item['handler'] = '<i style="color:red">'.$GLOBALS['_LANG']['os'][$item['order_status']] .'</i>';
            if ($item['shipping_status'] == SS_UNSHIPPED
                && $item['order_status'] != OS_CANCELED &&
                $item['order_status'] != OS_INVALID) {
            }
        }
        $item['status'] = static::getStatus($item);
        if ($item['status'] == 3) {
            @$item['handler'] = "<a class=\"del_order delA\" href=\"user.php?act=delete_order&order_id="
                .$item['order_id']. "\" data-tip=\"'确定删除此订单？'\">删除订单
                </a>";
        }
        $item['format_status'] = static::getStatusLabel($item);
        $item['shipping_status'] = ($item['shipping_status'] == SS_SHIPPED_ING) ? SS_PREPARING : $item['shipping_status'];
        $item['old_order_status'] = $item['order_status'];
        $item['order_status'] = $GLOBALS['_LANG']['os'][$item['order_status']] . ',' . $GLOBALS['_LANG']['ps'][$item['pay_status']] . ',' . $GLOBALS['_LANG']['ss'][$item['shipping_status']];
        $item['total_fee'] = price_format($item['goods_amount'], false);
        $item['order_time'] = local_date($GLOBALS['_CFG']['time_format'], $item['add_time']);
        return $item;
    }

    public static function getOrderGoods($orderId) {
        $data = Sql::create()->select('og.*,g.goods_thumb')
            ->from('order_goods og')->left('goods g', 'g.goods_id = og.goods_id')
            ->where('og.order_id='.$orderId)->all();
        foreach ($data as &$item) {
            $item['goods_price'] = price_format($item['goods_price'], false);
            $item['market_price'] = price_format($item['market_price'], false);
            $item['subtotal']     = price_format($item['subtotal'], false);

        }
        return $data;
    }

    public static function getCount($user_id) {
        $data = array(
            static::addCountWhere(Sql::create()->selectCount()->from('order_info')
                ->where('user_id='.$user_id), '', 1)->scalar(),
            static::addWhere(Sql::create()->selectCount()->from('order_info')
                ->where('user_id='.$user_id), '', 2)->scalar(),
            static::addWhere(Sql::create()->selectCount()->from('order_info')
                ->where('user_id='.$user_id), '', 3)->scalar()
        );
        return $data;
    }

    /**
     * @param Sql $sql
     * @param string $pre
     * @param null $type
     * @return Sql
     */
    public static function addWhere($sql, $pre = '', $type = null) {
        if (is_null($type)) {
            $type = isset($_GET['type']) ? $_GET['type'] : 0;
        }
        switch ($type) {
            case 1:
                $sql->andWhere($pre.'pay_status='.PS_UNPAYED)
                    ->andWhere('('.$pre.'order_status ='. OS_UNCONFIRMED)
                    ->orWhere($pre.'order_status ='.OS_CONFIRMED.')');
                break;
            case 2:
                $sql->andWhere($pre.'pay_status='.PS_PAYED)
                    ->andWhere($pre.'shipping_status='.SS_UNSHIPPED);
                break;
            case 3:
                $sql->andWhere($pre.'pay_status='.PS_PAYED)
                    ->andWhere('(('.$pre.'shipping_status='.SS_SHIPPED)
                    ->andWhere($pre.'order_status='.OS_SPLITED.')')
                    ->orWhere($pre.'shipping_status='.SS_UNSHIPPED.')')
                ;
                break;
            case 4:
                $sql->andWhere($pre.'pay_status='.PS_PAYED)
                    ->andWhere($pre.'shipping_status='.SS_RECEIVED)
                    ->andWhere($pre.'order_status='.OS_SPLITED);
                break;
            default:
                break;
        }
        return $sql;
    }

    public static function addCountWhere(Sql $sql, $pre = '', $type = null) {
        if (is_null($type)) {
            $type = isset($_GET['type']) ? $_GET['type'] : 0;
        }
        switch ($type) {
            case 1:
                $sql->andWhere($pre.'pay_status='.PS_UNPAYED)
                ->andWhere('('.$pre.'order_status ='. OS_UNCONFIRMED)
                ->orWhere($pre.'order_status ='.OS_CONFIRMED.')');
                break;
            case 2:
                $sql->andWhere($pre.'pay_status='.PS_PAYED)
                    ->andWhere($pre.'shipping_status='.SS_UNSHIPPED);
                break;
            case 3:
                $sql->andWhere($pre.'pay_status='.PS_PAYED)
                    ->andWhere($pre.'shipping_status='.SS_SHIPPED)
                    ->andWhere($pre.'order_status='.OS_SPLITED);
                break;
            case 4:
                $sql->andWhere($pre.'pay_status='.PS_PAYED)
                    ->andWhere($pre.'shipping_status='.SS_RECEIVED)
                    ->andWhere($pre.'order_status='.OS_CONFIRMED);
                break;
            case 5:
                $sql->andWhere($pre.'order_status='.OS_CANCEL);
                break;
            case 6:
                $sql->andWhere($pre.'order_status='.OS_RETURNED);
                break;
            default:
                break;
        }
        return $sql;
    }

    /**
     * @param integer $userId
     * @return Page
     */
    public static function getCollectionGoods($userId) {
        $page = new Page(Sql::create()->select('COUNT(*) AS count')
            ->from('collect_goods')->where('user_id='.$userId)->scalar());
        $page->setPage(Sql::create()->select(array(
            'g.goods_id, g.goods_name, g.market_price, g.shop_price AS org_price',
            'IFNULL(mp.user_price, g.shop_price * '.$_SESSION['discount'].') AS shop_price',
            'g.promote_price, g.promote_start_date,g.promote_end_date, c.rec_id, c.is_attention'
        ))
            ->from('collect_goods c')
            ->left('goods g', 'g.goods_id = c.goods_id')
            ->left('member_price mp', "mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]'")
            ->where('c.user_id='.$userId)
            ->order('c.rec_id DESC')->limit($page->getLimit())->all());
        $goodsList = array();
        foreach ($page->getPage() as $item) {
            if ($item['promote_price'] > 0) {
                $promote_price = bargain_price($item['promote_price'], $item['promote_start_date'], $item['promote_end_date']);
            } else {
                $promote_price = 0;
            }

            $goodsList[$item['goods_id']]['rec_id']        = $item['rec_id'];
            $goodsList[$item['goods_id']]['is_attention']  = $item['is_attention'];
            $goodsList[$item['goods_id']]['goods_id']      = $item['goods_id'];
            $goodsList[$item['goods_id']]['goods_name']    = $item['goods_name'];
            $goodsList[$item['goods_id']]['market_price']  = price_format($item['market_price']);
            $goodsList[$item['goods_id']]['shop_price']    = price_format($item['shop_price']);
            $goodsList[$item['goods_id']]['promote_price'] = ($promote_price > 0) ? price_format($promote_price) : '';
            $goodsList[$item['goods_id']]['url']           = build_uri('goods', array('gid'=>$item['goods_id']), $item['goods_name']);
        }
        return $page->setPage($goodsList);
    }

    public static function deleteCollection($goodsId) {
        return Sql::delete('collect_goods', 'goods_id='.intval($goodsId));
    }

    public static function hasCollected($goodsId) {
        $count = Sql::create()->selectCount()
            ->from('collect_goods')
            ->where('user_id='.$_SESSION['user_id'])->andWhere('goods_id=')->addInt($goodsId)->scalar();
        return $count > 0;
    }

    public static function addCollect($goodsId, $isAttention = false) {
        if (self::hasCollected($goodsId)) {
            return false;
        }
        return Sql::insert('collect_goods', array(
            'user_id' => $_SESSION['user_id'],
            'goods_id' => $goodsId,
            'add_time' => gmtime(),
            'is_attention' => $isAttention ? 1 : 0
        ));
    }

    public static function getErpOrderGoods($orderId) {
        return Sql::create()
            ->select('goods_sn AS goodsNo, goods_number AS total, (goods_number * goods_price) AS amount')
            ->from('order_goods')
            ->where('order_id ='.$orderId)
            ->all();
    }

    public static function getYouLikeGoods() {
        $where = db_create_in($_COOKIE['ECS']['history'], 'goods_id');
        $data = Sql::create()
            ->select('goods_id, cat_id')
            ->from('goods')->where($where)->andWhere('is_on_sale = 1')
            ->andWhere('is_alone_sale = 1')->andWhere('is_delete = 0')->all();
        $goodsList = Sql::create()
            ->select('goods_id, market_price, shop_price, goods_thumb, goods_name')
            ->from('goods')->where('cat_id')->addIn(array_column($data, 'cat_id'))
            ->andWhere('is_on_sale = 1')
            ->andWhere('is_alone_sale = 1')->andWhere('is_delete = 0')
            /*->andWhere('(is_best = 1 OR is_new =1 OR is_hot = 1)')*/->limit(9)->all();
        foreach ($goodsList as &$item) {
            $item['market_price'] = price_format($item['market_price']);
            $item['shop_price']   = price_format($item['shop_price']);
            $item['id']           = $item['goods_id'];
            $item['thumb']        = get_image_path($item['goods_id'], $item['goods_thumb'], true);
            $item['url']          = build_uri('goods', array('gid' => $item['goods_id']), $item['goods_name']);
        }
        return $goodsList;
    }

    /**
     * 取得购物车商品
     * @param   int     $type   类型：默认普通商品
     * @return  array   购物车商品数组
     */
    public static function getCartGoods($type = CART_GENERAL_GOODS) {
        return Cart::getSelected($type);
    }

    public static function isValidated($user_id) {
        return !empty(Sql::create()->selectCount()->from('users')
            ->where('user_id=')->addInt($user_id)->andWhere('is_validated = 1')->scalar());
    }

    public static function getStatusLabel($order) {
        if ($order['order_status'] == OS_CANCELED
            || $order['order_status'] == OS_INVALID) {
            return '交易关闭';
        }
        if ($order['pay_status'] == PS_UNPAYED) {
            return '等待付款';
        }
        if ($order['shipping_status'] == SS_UNSHIPPED) {
            return '等待发货';
        }
        if ($order['shipping_status'] == SS_SHIPPED) {
            return '已发货';
        }
        if ($order['shipping_status'] == SS_RECEIVED) {
            return '已完成';
        }
        if ($order['order_status'] == OS_RETURNED) {
            return '已退货';
        }
    }

    /**
     * 获取总状态
     * @param $order
     * @return int
     */
    public static function getStatus($order) {
        if ($order['order_status'] == OS_CANCELED
            || $order['order_status'] == OS_INVALID) {
            return 5;
        }
        if ($order['pay_status'] == PS_UNPAYED) {
            return 0;
        }
        if ($order['shipping_status'] == SS_UNSHIPPED) {
            return 1;
        }
        if ($order['shipping_status'] == SS_SHIPPED) {
            return 2;
        }
        if ($order['shipping_status'] == SS_RECEIVED) {
            return 3;
        }
        if ($order['order_status'] == OS_RETURNED) {
            return 4;
        }
    }

    public static function getPayment($code) {
        $sql = 'SELECT * FROM ' . $GLOBALS['ecs']->table('payment').
            " WHERE pay_code = '$code' AND enabled = '1'";
        $payment = Sql::create()->from('payment')
        ->where('pay_code=')->addValue($code)
        ->andWhere('enabled = 1')->one();

        if ($payment) {
            $config_list = unserialize($payment['pay_config']);
            foreach ($config_list as $config) {
                $payment[$config['name']] = $config['value'];
            }
        }

        return $payment;
    }

    public static function delete($id) {
        Sql::softDelete('order_info', [
            'order_id' => $id,
            'user_id' => $_SESSION['user_id']
        ]);
    }
}