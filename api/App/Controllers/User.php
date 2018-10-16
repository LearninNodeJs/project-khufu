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
      // echo json_encode(file_get_contents('php://input')); exit;
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

    public function seed(){
        $typeM = [0, 1, 2, 3, 4];
        $typeB = [5, 2, 3, 4, 5];
        $id = 1;
        // $transction_type = $_POST['tr_type'];
        $transction_type = 'mpesa_records';

        $type = $typeM[0];

        //get range for number of records
        $range = rand(rand(20, 70), rand(70, 130));
        //get user
        $user = $this->con->get_user($id);

        if(!isset($user['fname'])){
            echo json_encode(['error' => true, 'error_r' =>'user does not exist']);
        }else{

            //check last bal_before
            $bal_before = $this->con->last_payment_record($transction_type, $id);
            if(!isset($bal_before['bal_after'])){
                $bal_before = 0;
            }else{
                $bal_before = $bal_before['bal_after'];
            }

            $fname = $user['fname'];
            $lname = $user['lname'];

            for($i = 0; $i <= $range; $i ++){
                //get random amount
                $amount = $this->get_strat_rand_amount($type);

                //if last bal_before is 0, or < amount generated, then add amount to account
                if($amount > $bal_before){
                    $bal_before = $this->con->add_payment_record($transction_type, $amount, $bal_before, $id, $fname, $lname);
                    echo "$bal_before <br>";

                }else if(($amount < $bal_before) && ((rand(2, 7)%2) == 0) || ((rand(2, 9)%3) == 0)){ //else at rand count,if last balance is > 0, or > amount generated, then subtract amount to account (record an expenditure)
                    $amount = 0 - $amount;
                    $bal_before = $this->con->add_payment_record($transction_type, $amount, $bal_before, $id, $fname, $lname);
                    echo "$bal_before <br>";

                }else{//just add
                    $bal_before = $this->con->add_payment_record($transction_type, $amount, $bal_before, $id, $fname, $lname);
                    echo "$bal_before <br>";
                }

                
                
            }
        }
    }

    private function get_strat_rand_amount($type): int {

        $amt_range_start = 0;
        $amt_range_stop = 0;

        switch ($type) {
            case 0:
                $amt_range_start = 5;
                $amt_range_stop = 12000;
                break;
            case 1:
                $amt_range_start = 50;
                $amt_range_stop = 30000;
                break;

            case 2:
                $amt_range_start = 50;
                $amt_range_stop = 65000;
                break;
            case 3:
                $amt_range_start = 50;
                $amt_range_stop = 80000;
                break;
            case 4:
                $amt_range_start = 50;
                $amt_range_stop = 100000;
                break;
            
            default:
                break;
        }

        $amount = mt_rand($amt_range_start, $amt_range_stop);

        if(($amount % 2) == 0){
            $amount = $amount / 2;
        }

        return $amount;
    }
}
