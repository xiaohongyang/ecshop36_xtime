<?php
namespace Zodream\Service\Rest\OAuth\Grant;

/**
 * Created by PhpStorm.
 * User: zx648
 * Date: 2016/11/29
 * Time: 15:46
 */
use Zodream\Infrastructure\Http\RequestFinal;
use Zodream\Infrastructure\Http\Component\Uri;

class AuthCodeGrant extends BaseGrant {

    public function authorizationCode() {
        if (RequestFinal::get('response_type') != 'code') {
            return false;
        }
        $redirect_uri = RequestFinal::get('redirect_uri');
        $state = RequestFinal::get('state');
        $scope = RequestFinal::get('scope');

        return (new Uri($redirect_uri))->addData([
            'state' => $state,
            'code' => ''
        ]);
    }

    public function accessToken() {

    }


    /**
     * Return the grant identifier that can be used in matching up requests.
     *
     * @return string
     */
    public function getIdentifier() {
        return 'authorization_code';
    }
}