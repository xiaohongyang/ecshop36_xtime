<?php
namespace zd;

class UserCard {

    public static function getUser($card) {
        return Sql::create()->from('users')
            ->where('card=')->addValue($card)->one();
    }

    public static function getUserId($card) {
        return Sql::create()->select('user_id')->from('users')
            ->where('card=')->addValue($card)->scalar();
    }

    public static function hasBind($card) {
        $count = Sql::create()->selectCount()
            ->from('users')->where('card=')->addValue($card)->scalar();
        return $count > 0;
    }

    public static function getCardByUserId($userId) {
        return Sql::create()->select('card')->from('users')
            ->where('user_id=')->addInt($userId)->scalar();
    }

    public static function bind($userId, $card) {

    }

    public static function getWeChat($card) {
        return Sql::create()->select('wxid')
            ->from('users')
            ->where('card=')->addValue($card)->scalar();
    }

    public static function makeBCGcode($card) {
        $plugin = dirname(__DIR__).'/plugin/barcodegen/class/';
        require_once($plugin.'BCGColor.php');
        require_once($plugin.'BCGDrawing.php');
        require_once($plugin.'BCGcode128.barcode2d.php');

        $colorFront = new \BCGColor(0, 0, 0);
        $colorBack = new \BCGColor(255, 255, 255);

// Barcode Part
        $code = new \BCGcode128();
        $code->setScale(2);
        $code->setColor($colorFront, $colorBack);
        $code->parse($card);

// Drawing Part
        $drawing = new \BCGDrawing('', $colorBack);
        $drawing->setBarcode($code);
        $drawing->draw();

        header('Content-Type: image/png');

        $drawing->finish(\BCGDrawing::IMG_FORMAT_PNG);
    }
}