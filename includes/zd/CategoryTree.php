<?php
namespace zd;

class CategoryTree {
    public static function getRecommendCategories($num = 8, $hasRecommendGoods = false) {
        $data = Sql::create()->select('cat_id, cat_name')
            ->from('category')
            ->where('show_in_nav = 1')
            ->limit($num)->all();
        foreach ($data as &$row) {
            $row["id"] = $row["cat_id"];
            $row["url"] = build_uri("category", array("cid" => $row["cat_id"]), $row["cat_name"]);
            $row["name"] = $row["cat_name"];
            $row["nolinkname"] = $row["cat_name"];
            if ($hasRecommendGoods) {
                $row['goods_list'] = static::getRecommendGoods($row["cat_id"]);
            }
        }
        return $data;
    }

    public static function getRecommendChildrenCategories() {
        return Sql::create()->select('cat_id, cat_name, cat_ico')
            ->from('category')
            ->where('show_in_nav = 1')->andWhere('parent_id > 0')->all();
    }

    protected static function getAllCategory() {
        static $data = null;
        if (!is_array($data)) {
            $data = static::getAllCategoryAndKey();
        }
        return $data;
    }

    protected function getAllCategoryAndKey() {
        $data = Sql::create()
            ->select('cat_id, cat_name, category_links, parent_id, cat_alias_name')
            ->from('category')
            ->where('is_show = 1')
            ->order('parent_id ASC,sort_order ASC, cat_id ASC')->all();
        $result = array();
        foreach ($data as $item) {
            $result[$item['cat_id']] = $item;
        }
        return $result;
    }

    protected function getChildrenId($parent_id = 0) {
        $data = static::getAllCategory();
        $ids = array();
        foreach ($data as $item) {
            if ($item['parent_id'] === $parent_id) {
                $ids[] = $item['cat_id'];
            }
        }
        return $ids;
    }

    public static function getRecommendGoods($cat_id = 0, $region_id = 0, $area_id = 0) {
        $child_children = empty($cat_id) ? '' : get_children($cat_id);
        $goods_list = get_category_recommend_goods("best",
            $child_children, 0, 0, 0, "", 9);
        return $goods_list;
    }

    public static function getRecommendBrand($cat_id = 0) {
        $child_children = empty($cat_id) ? '' : get_children($cat_id);
        return Sql::create()->select('b.*')->from('brand b')->right('goods g', 'g.brand_id = b.brand_id')
            ->where($child_children)->group('b.brand_id')->all();
    }

    public static function getLevelCategory($parentId = 0, $level = 1,
                                            $hasRecommendGoods = false,
                                            $hasBrand = false) {
        $res = Sql::create()->select('cat_id, cat_name')
            ->from('category')->where('parent_id =')->addInt($parentId)
            ->andWhere('is_show = 1')->order('sort_order ASC, cat_id ASC')->all();
        $data = array();
        $level --;
        $i = 0;
        foreach ($res as $row ) {
            $row["id"] = $row["cat_id"];
            $row["url"] = build_uri("category", array("cid" => $row["cat_id"]), $row["cat_name"]);
            $row["name"] = $row["cat_name"];
            $row["nolinkname"] = $row["cat_name"];
            $row['active'] = $i < 1;
            $i ++;
            if ($level > 0) {
                $row['children'] = static::getLevelCategory($row["cat_id"], $level, $hasRecommendGoods);
            }
            if ($hasRecommendGoods) {
                $row['goods_list'] = static::getRecommendGoods($row["cat_id"]);
            }
            if ($hasBrand) {
                $row['brand_list'] = static::getRecommendBrand($row["cat_id"]);
            }
            $data[$row["cat_id"]] = $row;
        }
        return $data;
    }

    public static function getChildrenCats($cat_id) {
        $data = Sql::create()->select('cat_id, cat_name, parent_id, is_show, cat_ico')
            ->from('category')->where('parent_id=')->addInt($cat_id)
            ->andWhere('is_show=1')->order('sort_order ASC, cat_id ASC')->all();
        foreach ($data as &$item) {
            $item['id']   = $item['cat_id'];
            $item['name'] = $item['cat_name'];
            $item['url'] = build_uri('category', array('cid' => $item['cat_id']), $item['cat_name']);
        }
        return $data;
    }
}