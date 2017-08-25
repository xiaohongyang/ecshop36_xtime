<?php
namespace zd;

use Zodream\Domain\Html\Page;

class UserComment {

    const NONE = 0;
    const IMAGE = 1;
    const COMPLETE = 2;

    const PASSING = 0;
    const PASS = 1;
    const UN_PASS = 3;

    public static function getCommentCount($type = self::NONE) {
        return static::allowComment(Sql::create()->selectCount('g.goods_id')->from('order_goods g')
            ->left('order_info o', 'o.order_id = g.order_id')
            ->where('o.user_id='.$_SESSION['user_id'])
            ->andWhere('g.comment_status=')->addInt($type))
            ->scalar();
    }

    public static function canComment($goodsId, $orderId) {
        $count = static::allowComment(Sql::create()->selectCount()->from('order_goods g')
            ->left('order_info o', 'o.order_id = g.order_id')
            ->where('o.user_id='.$_SESSION['user_id'])
            ->andWhere('g.comment_status='.self::NONE)->andWhere('g.goods_id=')->addInt($goodsId))
            ->scalar();
        return $count > 0;
    }

    public static function getCommentGoods($goodsId) {
        return Sql::create()->select('goods_id, goods_name,goods_thumb')->from('goods')
            ->where('goods_id=')->addInt($goodsId)->one();
    }

    public static function getComments($status = self::NONE) {
        $page = new Page(static::getCommentCount($status));
        $page->setPage(static::allowComment(Sql::create()
            ->select('g.goods_id, o.order_id,og.comment_id, g.goods_name, g.goods_thumb,og.comment_status,og.goods_price')
            ->from('order_goods og')
            ->left('goods g', 'og.goods_id=g.goods_id')
            ->left('order_info o', 'o.order_id = og.order_id')
            ->where('o.user_id='.$_SESSION['user_id'])
            ->andWhere('og.comment_status=')->addInt($status))
            ->limit($page->getLimit())
            ->all());
        return $page;
    }

    public static function allowComment(Sql $sql) {
        return $sql->andWhere("(o.order_status = '" . OS_CONFIRMED . "' or o.order_status = '" . OS_SPLITED . "') ".
            " AND (o.pay_status = '" . PS_PAYED . "' OR o.pay_status = '" . PS_PAYING . "') ".
            " AND (o.shipping_status = '" . SS_SHIPPED . "' OR o.shipping_status = '" . SS_RECEIVED . "')");
    }

    public static function getRecommendComments($goodsId) {
        $data = Sql::create()
            ->select('u.nick_name,u.avatar,c.comment_id, c.add_time, c.comment_rank,c.content')
            ->from('comment c')
            ->left('users u', 'c.user_id = u.user_id')
            ->where('c.comment_type = 0')
            ->andWhere('c.id_value='.$goodsId)
            ->andWhere('c.status=1')
            ->order('c.add_time desc,comment_rank desc')->limit(3)->all();
        foreach ($data as &$item) {
            $item['add_time'] = local_date('Y-m-d');
            $item['images'] = static::getCommentImages($item['comment_id']);
        }
        return $data;
    }

    public static function getGoodsCommentCount($goodsId) {
        return Sql::create()->selectCount()
            ->from('comment')->where('comment_type = 0')
            ->andWhere('id_value='.$goodsId)
            ->andWhere('status=1')->scalar();
    }

    /**
     * @param $goodsId
     * @return Page
     */
    public static function getCommentsPage($goodsId) {
        $page = new Page(static::getGoodsCommentCount($goodsId));
        $data = Sql::create()
            ->select('u.nick_name,u.avatar,c.comment_id, c.add_time, c.comment_rank,c.content')
            ->from('comment c')
            ->left('users u', 'c.user_id = u.user_id')
            ->where('c.comment_type = 0')
            ->andWhere('c.id_value='.$goodsId)
            ->andWhere('c.status=1')
            ->order('c.add_time desc,comment_rank desc')->limit($page->getLimit())->all();
        foreach ($data as &$item) {
            $item['add_time'] = local_date('Y-m-d');
            $item['images'] = static::getCommentImages($item['comment_id']);
        }
        $page->setPage($data);
        return $page;
    }

    public static function getAComment($commentId) {
        $item = Sql::create()
            ->select('u.nick_name,u.avatar,c.comment_id, c.add_time, c.comment_rank,c.content')
            ->from('comment c')
            ->left('users u', 'c.user_id = u.user_id')
            ->where('c.comment_type = 0')
            ->andWhere('c.comment_id=')->addInt($commentId)->one();
        $item['add_time'] = local_date('Y-m-d');
        $item['images'] = static::getCommentImages($item['comment_id']);
        return $item;
    }

    public static function getCommentImages($commentId) {
        $data = Sql::create()
            ->select('image')
            ->from('comment_image i')
            ->where('comment_id='.$commentId)
            ->andWhere('status='.self::PASS)->all();
        return is_array($data) ? array_column($data, 'image') : array();
    }

    public static function getMyCommentImages() {
        return Sql::create()
            ->select('goods_id,image')
            ->from('comment_image i')
            ->where('user_id='.$_SESSION['user_id'])
            ->andWhere('status='.self::PASS)->order('create_at desc')
            ->limit(10)->all();
    }
}