<?php
namespace zd;

/**
 * 拍卖
 * @package zd
 */
class Auction {
    public static function count() {
        $now = gmtime();
        return Sql::create()
            ->selectCount()->from('goods_activity')
            ->where('act_type', GAT_AUCTION)
            ->andWhere('start_time', '<=', $now)
            ->andWhere('end_time', '>=', $now)->andWhere('is_finished < 2')
            ->scalar();
    }

    public static function getList() {
        $auction_list = array();
        $auction_list['finished'] = $auction_list['finished'] = array();

        $now = gmtime();
        $sql = "SELECT a.*, IFNULL(g.goods_thumb, '') AS goods_thumb " .
            "FROM " . $GLOBALS['ecs']->table('goods_activity') . " AS a " .
            "LEFT JOIN " . $GLOBALS['ecs']->table('goods') . " AS g ON a.goods_id = g.goods_id " .
            "WHERE a.act_type = '" . GAT_AUCTION . "' " .
            " AND a.is_finished < 2 ORDER BY a.act_id DESC";
        $res = Sql::create($sql)->query();
        while ($row = $GLOBALS['db']->fetchRow($res)) {
            $ext_info = unserialize($row['ext_info']);
            $auction = array_merge($row, $ext_info);
            $auction['status_no'] = auction_status($auction);
            $auction['current_price'] = Sql::create()->select('Max(bid_price) as price')
                ->from('auction_log')
                ->where('act_id = '.$auction['act_id'])->scalar();
            $auction['user_count'] = Sql::create()->select('count(bid_user) as count')
                ->from('auction_log')
                ->where('act_id = '.$auction['act_id'])
                ->group('bid_user')->scalar();

            $auction['formated_start_time'] = local_date($GLOBALS['_CFG']['time_format'], $auction['start_time']);
            $auction['formated_end_time']   = local_date($GLOBALS['_CFG']['time_format'], $auction['end_time']);
            $auction['formated_start_price'] = price_format($auction['start_price']);
            $auction['formated_end_price'] = price_format($auction['end_price']);
            $auction['formated_deposit'] = price_format($auction['deposit']);
            $auction['goods_thumb'] = get_image_path($row['goods_id'], $row['goods_thumb'], true);
            $auction['url'] = build_uri('auction', array('auid'=>$auction['act_id']));

            if($auction['status_no'] < 2)
            {
                $auction_list['under_way'][] = $auction;
            }
            else
            {
                $auction_list['finished'][] = $auction;
            }
        }

        $auction_list = @array_merge($auction_list['under_way'], $auction_list['finished']);

        return $auction_list;
    }

    public static function info($id) {
        return auction_info($id);
    }

    public static function log($id, $page = 1) {
        $res = Sql::create()
            ->select('a.*, u.user_name, u.avatar')
            ->from('auction_log a')
            ->left('users u', 'a.bid_user = u.user_id')
            ->where('a.act_id', $id)
            ->order('a.log_id DESC')
            ->limit(($page - 1) * 8, 8)->query();
        $log = array();
        while ($row = $GLOBALS['db']->fetchRow($res))
        {
            $row['bid_time'] = local_date($GLOBALS['_CFG']['time_format'], $row['bid_time']);
            $row['formated_bid_price'] = price_format($row['bid_price'], false);
            $log[] = $row;
        }
        return $log;
    }

    public static function getUserList() {
        $total = Sql::create()
            ->selectCount()
            ->from('auction_log')
            ->where('bid_user', $_SESSION['user_id'])
            ->scalar();
        $page = Sql::pageLimit();
        if ($page[0] > $total) {
            return [$total, []];
        }
        $data = Sql::create()
            ->select('al.*, a.end_time, a.is_finished, a.ext_info, g.goods_id, g.goods_name, g.goods_thumb, ua.*', 'concat(IFNULL(p.region_name, \'\'), \'  \', IFNULL(t.region_name, \'\'), \'  \', IFNULL(d.region_name, \'\')) AS region')
            ->from('auction_log al')
            ->left('goods_activity a', 'a.act_id = a.act_id')
            ->left('goods g', 'a.goods_id = g.goods_id')
            ->left('user_address ua', 'al.address_id = ua.address_id')
            ->left('region p', 'ua.province = p.region_id')
            ->left('region t', 'ua.city = t.region_id')
            ->left('region d', 'ua.district = d.region_id')
            ->where('al.bid_user', $_SESSION['user_id'])
            ->group('al.log_id')
            ->order('al.log_id desc')
            ->limit($page)
            ->all();
        foreach ($data as &$item) {
            $item['ext_info'] = unserialize($item['ext_info']);
            $item['status_no'] = auction_status($item);
            $item['max_price'] = Sql::create()
                ->select('max(bid_price)')
                ->from('auction_log')
                ->where('act_id', $item['act_id'])
                ->scalar();
        }

        return [$total, $data];
    }
}