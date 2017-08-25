<?php
namespace zd;

use Zodream\Domain\Html\Page;

class UserFeed {
    public static function feed($goodsId) {
        if (static::isFeed($goodsId)) {
            return false;
        }
        return Sql::insert('user_feed', array(
            'user_id' => $_SESSION['user_id'],
            'goods_id' => $goodsId,
            'create_at' => gmtime()
        ));
    }

    public static function isFeed($goodsId) {
        $count =Sql::create()->select('COUNT(*) AS count')
            ->from('user_feed')->where('user_id=')->addInt($_SESSION['user_id'])
            ->andWhere('goods_id=')->addInt($goodsId)->scalar();
        return $count > 0;
    }

    public static function getPage() {
        $page = new Page();
        $page->setTotal(Sql::create()->select('COUNT(*) AS count')
            ->from('user_feed')->where('user_id='.$_SESSION['user_id'])->scalar());
        $page->setPage(Sql::create()->select('*')
            ->from('user_feed')->where('user_id='.$_SESSION['user_id'])
            ->order('create_at desc')->limit($page->getLimit())->all());
        return $page;
    }
}