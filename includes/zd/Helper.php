<?php
namespace zd;

use Zodream\Domain\ThirdParty\API\Common;
use Zodream\Infrastructure\Http\Request;

/**
 * Created by PhpStorm.
 * User: zx648
 * Date: 2017/2/22
 * Time: 16:23
 */
class Helper {
    public static function get($key, $default = null) {
        return isset($_GET[$key]) ? $_GET[$key] : $default;
    }

    public static function post($key, $default = null) {
        return isset($_POST[$key]) ? $_POST[$key] : $default;
    }

    public static function request($key, $default = null) {
        return isset($_REQUEST[$key]) ? $_REQUEST[$key] : $default;
    }

    public static function cookie($key, $default = null) {
        return isset($_COOKIE[$key]) ? $_COOKIE[$key] : $default;
    }

    public static function session($key, $default = null) {
        return isset($_SESSION[$key]) ? $_SESSION[$key] : $default;
    }

    public static function ajax($data) {
        exit(json_encode($data));
    }

    public static function success($data = null) {
        if (!Request::isAjax()) {
            show_message($data);
            exit();
        }
        static::ajax(array(
            'code' => 0,
            'status' => 'success',
            'data' => $data
        ));
    }

    public static function successMessage($message) {
        static::ajax(array(
            'code' => 0,
            'status' => 'success',
            'msg' => $message
        ));
    }

    public static function failure($message = '', $code = 1) {
        if (!Request::isAjax()) {
            show_message($message);
            exit();
        }
        static::ajax(array(
            'code' => $code,
            'status' => 'failure',
            'msg' => $message
        ));
    }

    public static function redirect($url, $time = 0) {
        if (Request::isAjax()) {
            static::success([
               'url' => $url
            ]);
        }
        if ($time > 0) {
            header('Refresh '.$time.';url='.$url);
            exit();
        }
        header('Location: '.$url);
        exit();
    }

    public static function validateMobile($mobile) {
        return preg_match('#^13[\d]{9}$|^14[57]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0678]{1}\d{8}$|^18[\d]{9}$#', $mobile, $ma);
    }

    public static function paserKuaiDi($getcom) {
        switch ($getcom){
            case "EMS"://ecshop后台中显示的快递公司名称
                $postcom = 'ems';//快递公司代码
                break;
            case "中国邮政":
                $postcom = 'ems';
                break;
            case "申通快递":
                $postcom = 'shentong';
                break;
            case "圆通速递":
                $postcom = 'yuantong';
                break;
            case "顺丰速运":
                $postcom = 'shunfeng';
                break;
            case "天天快递":
                $postcom = 'tiantian';
                break;
            case "韵达快递":
                $postcom = 'yunda';
                break;
            case "中通速递":
                $postcom = 'zhongtong';
                break;
            case "龙邦物流":
                $postcom = 'longbanwuliu';
                break;
            case "宅急送":
                $postcom = 'zhaijisong';
                break;
            case "全一快递":
                $postcom = 'quanyikuaidi';
                break;
            case "汇通速递":
                $postcom = 'huitongkuaidi';
                break;
            case "民航快递":
                $postcom = 'minghangkuaidi';
                break;
            case "亚风速递":
                $postcom = 'yafengsudi';
                break;
            case "快捷速递":
                $postcom = 'kuaijiesudi';
                break;
            case "华宇物流":
                $postcom = 'tiandihuayu';
                break;
            case "中铁快运":
                $postcom = 'zhongtiewuliu';
                break;
            case "FedEx":
                $postcom = 'fedex';
                break;
            case "UPS":
                $postcom = 'ups';
                break;
            case "DHL":
                $postcom = 'dhl';
                break;
            default:
                $postcom = '';
        }
        return $postcom;
    }

    public static function kuaiDi($id, $getcom) {
        $postcom = static::paserKuaiDi($getcom);
        $data = (new Common())
            ->kuaidi100([
                'key' => '',
                'customer' => '',
                'com' => $postcom,
                'num' => $id,
            ]);
        if ($data['status'] != 200) {
            return [];
        }
        switch ($data['state']) {
            case 0:
                $data['format_state'] = '在途';
                break;
            case 1:
                $data['format_state'] = '揽件';
                break;
            case 2:
                $data['format_state'] = '疑难';
                break;
            case 3:
                $data['format_state'] = '签收';
                break;
            case 4:
                $data['format_state'] = '退签';
                break;
            case 5:
                $data['format_state'] = '派件';
                break;
            case 6:
                $data['format_state'] = '退回';
                break;
            default:
                $data['format_state'] = '';
                break;
        }
        return $data;
    }

    /**
     * 转化成大写数字
     * @param $num
     * @param bool $mode
     * @return string
     */
    public static function chNum($num, $mode=true) {
        $char = array("零","壹","贰","叁","肆","伍","陆","柒","捌","玖");
        $dw = array("","拾","佰","仟","","萬","億","兆");
        $dec = "點";
        $retval = "";
        if($mode) {
            preg_match_all("/^0*(\d*)\.?(\d*)/",$num, $ar);
        } else {
            preg_match_all("/(\d*)\.?(\d*)/",$num, $ar);
        }
        if($ar[2][0] != "") {
            if (intval($ar[2][0]) == 0) {
                $retval = '整';
            } else {
                $retval = $dec . static::chNum($ar[2][0],false); //如果有小数，则用递归处理小数
            }
        }
        if($ar[1][0] != "") {
            $str = strrev($ar[1][0]);
            for($i=0;$i<strlen($str);$i++) {
                $out[$i] = $char[$str[$i]];
                if($mode) {
                    $out[$i] .= $str[$i] != "0"? $dw[$i%4] : "";
                    if($str[$i]+$str[$i-1] == 0)
                        $out[$i] = "";
                    if($i%4 == 0)
                        $out[$i] .= $dw[4+floor($i/4)];
                }
            }
            $retval = join("",array_reverse($out)) . $retval;
        }
        return $retval;
    }

    /**
     * 公式计算
     * @param $x
     * @param $formula
     * @return mixed
     */
    public static function formula($x, $formula) {
        $func = create_function('$x', sprintf('return %s;', str_replace('x', '$x', $formula)));
        return $func($x);
    }

    /**
     * 隐藏中间数字
     * @param $phone
     * @return mixed
     */
    public static function hidTel($phone){
        $IsWhat = preg_match('/(0[0-9]{2,3}[\-]?[2-9][0-9]{6,7}[\-]?[0-9]?)/i',$phone); //固定电话
        if($IsWhat == 1){
            return preg_replace('/(0[0-9]{2,3}[\-]?[2-9])[0-9]{3,4}([0-9]{3}[\-]?[0-9]?)/i','$1****$2',$phone);
        }else{
            return  preg_replace('/(\d{3})[0-9]{4}(\d{4})/i','$1****$2',$phone);
        }
    }

    /**
     * 获取分页链接
     * @param $total
     * @param $size
     * @return string
     */
    public static function page($total, $size = 20) {
        return Page::show([
            'total' => $total, //总条数
            'pageSize' => $size,
            'page' => max(1, Request::get('page', 1)),

        ]);
    }

    /**
     * 格式化价格
     * @param $price
     * @return string
     */
    public static function priceFormat($price) {
        $price = number_format($price, 2, '.', '').'';
        $price = explode('.', $price, 2);
        return '<span class="cgoods-money">'
            .sprintf($GLOBALS['_CFG']['currency_format'], '<b><em class="cfont-big">'.$price[0].'</em>.'
                .$price[1].'</b>').'</span>';
    }

    /**
     * 格式化积分
     * @param $points
     * @return string
     */
    public static function pointsFormat($points) {
        return '<span class="cgoods-points"><b>'.$points.'</b>'.$GLOBALS['_CFG']['integral_name'].'</span>';
    }
}