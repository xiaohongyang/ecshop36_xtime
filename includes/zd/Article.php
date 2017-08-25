<?php
namespace zd;


class Article {
    public static function getSupport() {
        $data = Sql::create()
            ->from('article_cat')
            ->where('parent_id = 8')
            ->all();
        foreach ($data as &$item) {
            $item['article_list'] = Sql::create()
                ->select('article_id,title')
                ->from('article')
                ->where('cat_id='.$item['cat_id'])
                ->all();
        }
        return $data;
    }

    public static function getVideo() {
        return Sql::create()
            ->select('article_id,title,thumb,description')
            ->from('article')
            ->where('cat_id=13')
            ->all();
    }
}