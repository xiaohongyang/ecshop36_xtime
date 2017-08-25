<?php
namespace zd;

class UserRank {

    public static function all() {
        $key = 'rank_all';
        $data = read_static_cache($key);
        if (!empty($data)) {
            return $data;
        }
        $data = Sql::create()
            ->from('user_rank')
            ->order('special_rank asc', 'min_points asc')
            ->all();
        $data = array_column($data, null, 'rank_id');
        write_static_cache($key, $data);
        return $data;
    }

    /**
     * 根据id 获取等级
     * @param $id
     * @param $points
     * @return mixed
     */
    public static function get($id, $points) {
        if (empty($id)) {
            return static::getByPoints($points);
        }
        $data = static::all();
        return isset($data[$id]) ? $data[$id] : static::getByPoints($points);
    }

    public static function specialRank() {
        $data = static::all();
        $args = [];
        foreach ($data as $item) {
            if ($item['special_rank'] > 0) {
                $args[] = $item;
            }
        }
        return $args;
    }

    /***
     * 根据积分获取等级
     * @param $points
     * @return mixed
     */
    public static function getByPoints($points) {
        $data = static::all();
        foreach ($data as $item) {
            if ($item['special_rank'] < 1 && $item['min_points'] <= $points && $item['max_points'] >= $points) {
                return $item;
            }
        }
        reset($data);
        return current($data);
    }

    public static function buyRank($id) {
        global $err;
        $data = static::all();
        if (!isset($data[$id])) {
            $err->add('等级不存在');
            return false;
        }
        $rank = User::rank();
        if ($rank['special_rank'] > 0 && $rank['rank_id'] >= $id) {
            $err->add('高等级不能兑换低等级!');
            //不允许买低等级
            return false;
        }
        $last_rank = $data[$id];
        if (User::user()['pay_points'] < $last_rank['year_points']) {
            $err->add('积分不足！');
            return false;
        }
        log_account_change(User::id(), 0, 0, 0, -$last_rank['year_points'],
            sprintf('兑换一年 %s ', $last_rank['rank_name']), ACT_RANK);
        Sql::insert('rank_log', [
            'user_id' => User::id(),
            'rank_id' => $rank['rank_id'],
            'rank_name' =>$rank['rank_name'],
            'pay_points' => $last_rank['year_points'],
            'create_at' => gmtime()
        ]);
        Sql::update('users', [
            'user_rank'  => $last_rank['rank_id'],
            'expire_rank' => gmtime() + 365 * 24 * 3600
        ], [
            'user_id' => User::id()
        ]);
        return true;
    }
}