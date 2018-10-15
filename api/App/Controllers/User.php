<?php

namespace App\Controllers;

use \Core\View;
use App\Models\UserModel;
use App\Config;
use Firebase\JWT\JWT;

/**
 * Home controller
 *
 * PHP version 7.0
 */
class User extends \Core\Controller
{
    private $con;

    function __construct(){

        $this->con = new UserModel();
    }

    /**
     * Show the index page
     *
     * @return void
     */
    public function indexAction()
    {
        View::renderTemplate('Home/index.html');
    }

    /**
     * Show the index page
     *
     * @return void
     */
    public function loginAction()
    {
    
    //View::render('Home/index.html');
      /* return *///
      $user = $this->con->login('speedflakes@gmail.com', 'admin');

       $tokenId = base64_encode(openssl_random_pseudo_bytes(32));
                $issuedAt = time();
                $notBefore = $issuedAt + 10;
                $expire = $notBefore + 60;
                $serverName = Config::JWT_INFO['serverName'];
                
                $data = [
                        'iat' => $issuedAt,
                        'jti' => $tokenId,
                        'iss' => $serverName,
                        'nbf' => $notBefore,
                        'exp' => $expire,
                        'data' => [
                            'userId' => $user[0],
                            'fname' => $user[1],
                            'lname' => $user[2],
                            'email' => $user[3],
                            'phone' => $user[4],
                        ]
                    ];

                $secretKey = base64_encode(Config::JWT_INFO['jwt']['key']);
                $algorithm = Config::JWT_INFO['jwt']['algorithm'];
                $jwt = JWT::encode($data, $secretKey, $algorithm);

                $unencodedArr = ['jwt' => $jwt];

            echo json_encode($unencodedArr);
    }
}
