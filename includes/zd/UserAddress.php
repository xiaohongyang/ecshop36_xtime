<?php
namespace zd;

use Zodream\Infrastructure\Support\Curl;

class UserAddress {

    public static function add($args) {
        $args['user_id'] = $_SESSION['user_id'];
        return Sql::insert('user_address', $args);
    }

    public static function update($id, $args) {
        $args['user_id'] = $_SESSION['user_id'];
        return Sql::update('user_address', $args, 'address_id='.intval($id));
    }

    public static function save($data, $isDefault = false) {
        $id = Sql::save('user_address', $data, 'address_id');
        if ($isDefault) {
            Sql::update('users', array(
                'address_id' => $id
            ), 'user_id='.$data['user_id']);
        }
        return $id;
    }

    public static function delete($id) {
        return Sql::delete('user_address', 'user_id='.$_SESSION['user_id'].' AND address_id='.intval($id));
    }

    public static function all() {
        return Sql::create()->select("ua.*, concat(IFNULL(p.region_name, ''), '  ', IFNULL(t.region_name, ''), '  ', IFNULL(d.region_name, '')) AS region")
            ->from('user_address ua')
            ->left('region p', 'ua.province = p.region_id')
            ->left('region t', 'ua.city = t.region_id')
            ->left('region d', 'ua.district = d.region_id')
            ->where('user_id='.$_SESSION['user_id'])
            ->group('ua.address_id')
            ->limit(5)
            ->all();
    }

    public static function get($id) {
        return Sql::create()->from('user_address')
            ->where('address_id='.intval($id))
            ->andWhere('user_id', $_SESSION['user_id'])->one();
    }

    public static function consigneeRegion($id) {
        return Sql::create()->select("concat(IFNULL(p.region_name, ''), '  ', IFNULL(t.region_name, ''), '  ', IFNULL(d.region_name, '')) AS region")
            ->from('user_address u')->left('region p', 'u.province = p.region_id')
                ->left('region t', 'u.city = t.region_id')
                ->left('region d', 'u.district = d.region_id')
            ->where('u.address_id=')
            ->addInt($id)->scalar();
    }

    public static function getRegion($id) {
        return Sql::create()->select("u.*, concat(IFNULL(p.region_name, ''), '  ', IFNULL(t.region_name, ''), '  ', IFNULL(d.region_name, '')) AS region")
            ->from('user_address u')->left('region p', 'u.province = p.region_id')
            ->left('region t', 'u.city = t.region_id')
            ->left('region d', 'u.district = d.region_id')
            ->where('u.address_id=')
            ->addInt($id)->one();
    }

    public static function isUser($id) {
        $count = Sql::create()->select('COUNT(*) AS count')
            ->from('user_address')->where('address_id='.intval($id))
            ->andWhere('user_id='.$_SESSION['user_id'])->scalar();
        return $count > 0;
    }

    public static function setDefault($id) {
        return Sql::update('users', array(
            'address_id' => intval($id),
        ), 'user_id='.$_SESSION['user_id']);
    }

    public static function getDefaultId() {
        return Sql::create()->select('address_id')
            ->from('users')
            ->where('user_id='.$_SESSION['user_id'])->scalar();
    }

    public static function getDefault() {
        return Sql::create()->select('ua.*')
            ->from('user_address ua')
            ->left('users u', 'u.user_id=ua.user_id AND u.address_id = ua.address_id')
            ->where('ua.user_id='.$_SESSION['user_id'])->one();
    }

    public static function getRegions($type = 0, $parent = 0) {
        return Sql::create()->select('region_id, region_name')->from('region')
            ->where('region_type =')
            ->addInt($type)
            ->andWhere('parent_id =')->addInt($parent)->all();
    }

    public static function setDefaultConsignee($addressId, $args) {
        if (!empty($addressId)) {
            return Sql::update('user_address', array(
                'province' => intval($args['province']),
                'city' => intval($args['city']),
                'district' => intval($args['district']),
                'address' => htmlspecialchars($args['address'])
            ), 'address_id ='.$addressId);
        }
        $addressId = Sql::insert('user_address', array(
            'province' => intval($args['province']),
            'city' => intval($args['city']),
            'user_id' => $_SESSION['user_id'],
            'district' => intval($args['district']),
            'address' => htmlspecialchars($args['address'])
        ));
        if ($addressId > 0) {
            static::setDefault($addressId);
        }
        return $addressId;
    }

    public static function getRegionName($region_id) {
        return Sql::create()->select('region_id, region_name')
            ->from('region')->where('region_id=')->addInt($region_id)->one();
    }

    public static function getLocation() {
        global $smarty;
        $current_city_id = Helper::cookie('city');
        $current_city_info = static::getRegionName($current_city_id);

        if (empty($current_city_info)) {
            $res_ip_info = (new Curl("https://pv.sohu.com/cityjson?ie=utf-8"))->get();
            preg_match("/\{(.*)\}/", $res_ip_info, $match);
            $res_city = json_decode("{" . $match[1] . "}", true);
            $res_city_name = trim($res_city["cname"]);
            $current_city_info = Sql::create()
                ->select('`region_id`, `region_name`, `parent_id`')
                ->from('region')->where('region_type = 2')->andWhere('region_name=')
                ->addValue($res_city_name)->one();
            if (empty($current_city_info)) {
                return;
            }

            setcookie("province", $current_city_info["parent_id"], gmtime() + (3600 * 24 * 30));
            setcookie("city", $current_city_info["region_id"], gmtime() + (3600 * 24 * 30));
            setcookie("district", 0, gmtime() + (3600 * 24 * 30));
        }

        $smarty->assign("current_city", $current_city_info);
    }

}