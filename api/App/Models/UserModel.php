<?php

namespace App\Models;

use PDO;


/**
 * Example user model
 *
 * PHP version 7.0
 */
class UserModel extends \Core\Model
{
    private $db;

    function __construct(){
        
    }
    /**
     * Get all the users as an associative array
     *
     * @return array
     */
    public function login($email, $password)
    {   
        $db = static::connect();
        $result = [];
        $result['error'] = true;
        $stmt = $db->prepare('SELECT * FROM users WHERE email = :email');
        $stmt->bindValue(':email', $email);
        //print_r( hashSSHA($password));
        if($stmt->execute()){
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            $checkHash = $this->checkhashSSHA($user['salt'], $password);
            if($checkHash == $user['hash']){
                $result['error'] = false;
                array_push($result, $user['id']);
                array_push($result, $user['fname']);
                array_push($result, $user['lname']);
                array_push($result, $user['email']);
                array_push($result, $user['phone']);
                array_push($result, $user['dob']);


                return $result;
            }else{
                return $result['error'] = true;
            }
        }
        
    }

    /**
     * Get all the users as an associative array
     *
     * @return array
     */
    public function register($data)
    {   
        $fname = $data['fname'];
        $lname = $data['lname'];
        $email = $data['email'];
        $phone = $data['phone'];
        $dob = $data['dob'];
        $password = $data['password'];
        $hashAndSalt = $this->hashSSHA($password);
        $salt = $hashAndSalt['salt'];
        $hash = $hashAndSalt['hash'];

        $db = static::connect();
        $result = [];
        $result['error'] = true;
        $stmt = $db->prepare('INSERT INTO users (fname, lname, email, phone, dob, salt, hash) VALUES (:fname, :lname, :email, :phone, :dob, :salt, :hash)');
        $stmt->bindValue(':fname', $fname);
        $stmt->bindValue(':lname', $lname);
        $stmt->bindValue(':email', $email);
        $stmt->bindValue(':phone', $phone);
        $stmt->bindValue(':dob', $dob);
        $stmt->bindValue(':salt', $salt);
        $stmt->bindValue(':hash', $hash);
        //print_r( hashSSHA($password));
        if($stmt->execute()){
            $stmt = $db->prepare('SELECT * FROM users WHERE email = :email');
            $stmt->bindValue(':email', $email);

            if($stmt->execute()){
                $result['error'] = false;
                array_push($result, $user['id']);
                array_push($result, $user['fname']);
                array_push($result, $user['lname']);
                array_push($result, $user['email']);
                array_push($result, $user['phone']);
                array_push($result, $user['dob']);
                
                return $result;
            }else{
                return $result['error'] = true;
            }
        }
        
    }

    /**
    *Encrypting password
    *@param password
    *returns salt and encrypted password
    */

    private function hashSSHA($password) {

        $salt = sha1(rand());
        $salt = substr($salt, 0, 10);
        $encrypted = base64_encode(sha1($password . $salt, true) . $salt);
        $hash = array("salt" => $salt, "encrypted" => $encrypted);
        return $hash;
    }

    /**
     * Decrypting password
     * @param salt, password
     * returns hash string
     */

    private function checkhashSSHA($salt, $password){

        $hash = base64_encode(sha1($password . $salt, true) . $salt);

        return $hash;
    }


    
}
