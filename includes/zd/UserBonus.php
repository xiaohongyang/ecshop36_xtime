<?php
namespace zd;

class UserBonus {
    const BONUS_NONE = 0;
    const BONUS_CODE = 1; //生日折扣码

    public static function canBirthCode($user_id) {
        $count = Sql::create()->select('COUNT(*) AS count')
            ->from('user_bonus')
            ->where('user_id=')->addInt($user_id)
            ->andWhere('bonus_type_id=5')
            ->andWhere('create_at>=')
            ->addInt(mktime(0, 0, 0, 1, 1, date('Y')))->scalar();
        return $count < 1;
    }

    public static function sendBirthCode($user_id) {
        if (!static::canBirthCode($user_id)) {
            return false;
        }
        return Sql::insert('user_bonus', array(
            'bonus_type_id' => 5,
            'create_at' => gmtime(),
            'user_id' => $user_id,
            'used_time' => 0
        ));
    }

    public static function getBirthUsers() {
        return Sql::create()->select('user_id, openid, real_name, sex')->from('users')
            ->where('month(birthday)=')->addInt(date('m'))->all();
    }

    public static function format($card) {
        if (!is_array($card)) {
            return $card;
        }
        $card['name'] = $card['type_name'];
        $card['use_url'] = '/categoryall.php';
        if ($card['send_type'] == SEND_BY_BIRTH) {
            $card['type_money'] = $card['type_money'].'折';
            $card['min_goods_amount'] = '满'.$card['min_goods_amount'].'使用';
            $card['start_at'] = date('Y-m-1');
            $card['end_at'] = date('Y-m-t');
            return $card;
        }
        $card['start_at'] = local_date('Y-m-d', $card['use_start_date']);
        $card['end_at'] = local_date('Y-m-d', $card['use_end_date']);
        $card['type_money'] = price_format($card['type_money'], false);
        $card['min_goods_amount'] = '满 '.$card['min_goods_amount'].' 使用';
        return $card;
    }

    public static function getPrice($total, $bonusId, $bonusSn = null) {
        $sql = "SELECT t.*, b.* " .
            "FROM " . $GLOBALS['ecs']->table('bonus_type') . " AS t," .
            $GLOBALS['ecs']->table('user_bonus') . " AS b " .
            "WHERE t.type_id = b.bonus_type_id ";
        if ($bonusId > 0) {
            $sql .= "AND b.bonus_id = '$bonusId'";
        } else {
            $sql .= "AND b.bonus_sn = '$bonusSn'";
        }
        $card = Sql::create($sql)->one();
        if ($card['send_type'] == SEND_BY_BIRTH) {
            return $total * (10 - floatval($card['type_money'])) /10;
        }
        return $card['type_money'];
    }

    /**
     * 获取有效的优惠券
     * @return mixed
     */
    public static function getCards() {
        $time = gmtime();
        $time1 = mktime(0, 0, 0, date('m'), 1, date('Y'));
        return static::formatAll(Sql::create()->from('user_bonus ub')
            ->left('bonus_type bt', 'ub.bonus_type_id = bt.type_id')
            ->where("ub.user_id={$_SESSION['user_id']} AND 
            ((bt.use_start_date <= {$time} AND bt.use_end_date >= {$time}) OR 
            (bt.send_type = 4 AND ub.create_at >= {$time1})) AND ub.used_time = 0")->all());
    }

    /**
     * 获取金额能使用的优惠券
     * @param $userId
     * @param int $money
     * @return mixed
     */
    public static function getCanUseCards($userId, $money = 0) {
        $time = gmtime();
        $time1 = mktime(0, 0, 0, date('m'), 1, date('Y'));
        return static::formatAll(Sql::create()->from('user_bonus ub')
            ->left('bonus_type bt', 'ub.bonus_type_id = bt.type_id')
            ->where("ub.user_id={$userId} AND 
            ((bt.use_start_date <= {$time} AND bt.use_end_date >= {$time}) OR 
            (bt.send_type = 4 AND ub.create_at >= {$time1})) AND ub.used_time = 0")
            ->andWhere('bt.min_goods_amount <='.$money)->all());
    }

    /**
     * 获取过期的优惠券
     * @return mixed
     */
    public static function getExpireCards() {
        $time = gmtime();
        $time1 = mktime(0, 0, 0, date('m'), 1, date('Y'));
        return static::formatAll(Sql::create()->from('user_bonus ub')
            ->left('bonus_type bt', 'ub.bonus_type_id = bt.type_id')
            ->where("ub.user_id={$_SESSION['user_id']} AND 
            ((bt.use_end_date < {$time}) OR 
            (bt.send_type = 4 AND ub.create_at < {$time1})) AND ub.used_time = 0")->all());
    }


    /**
     * 获取已经使用的优惠券
     * @return mixed
     */
    public static function getUsedCards() {
        return static::formatAll(Sql::create()->from('user_bonus ub')
            ->left('bonus_type bt', 'ub.bonus_type_id = bt.type_id')
            ->where("ub.user_id={$_SESSION['user_id']} AND used_time > 0")->all());
    }

    protected static function formatAll($data) {
        if (!is_array($data)) {
            return $data;
        }
        foreach ($data as &$item) {
            $item = static::format($item);
        }
        return $data;
    }
}