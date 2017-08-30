<?php
namespace Zodream\Service\Rest\OAuth\Grant;


/**
 * Created by PhpStorm.
 * User: zx648
 * Date: 2016/11/29
 * Time: 15:46
 */
use Zodream\Service\Rest\OAuth\Exception\OAuthServerException;
use Zodream\Infrastructure\Http\RequestFinal;

class PasswordGrant extends BaseGrant {

    protected function validateUser() {
        $username = RequestFinal::request('username');
        if (is_null($username)) {
            throw OAuthServerException::invalidRequest('username');
        }

        $password = RequestFinal::request('password');
        if (is_null($password)) {
            throw OAuthServerException::invalidRequest('password');
        }
    }

    /**
     * {@inheritdoc}
     */
    public function getIdentifier() {
        return 'password';
    }
}