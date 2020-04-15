<?php
require_once("Dbcon.php");

class Signup extends Referral
{
    
    /**
     * Check user is existed or not
     */
    public function isUserExisted($email,$contact)
    {
        $conn = new Dbcon();
       $sql = "SELECT u.email,p.contact from users as u left join profile as p on p.user_id = u.id WHERE (u.email = '" . $email . "' and u.active='1') or p.contact = '" . $contact . "' and p.active ='1'";
        $stmt = $conn->select_one_row($sql);
        if ($stmt) {
            return true;
        } else {
            // user not existed
            return false;
        }
    }

    public function storeUser($firstname, $lastname, $contact, $address, $email, $password = "", $fcm = 0, $deviceid = 0,$get_referral_code)
    {
      
        $conn = new Dbcon();
        function gen_code($conn, $length = 6)
        {
            $payment = new Payment();
            $referral_code  =  $payment->random_strings($length);
            $sql_profile = 'select * from profile where referral_code = "' . $referral_code . '"';
            $check_referral_code = $conn->select_all_row($sql_profile);
            $check_referral_code = count($check_referral_code);

            if ($check_referral_code) {
                gen_code($conn, $length = 6);
            }
            return $referral_code;
        }
         $referral_code = gen_code($conn, 6);

        $sql = "INSERT INTO `users`(`id`, `email`, `password`, `created`, `modified`, `active`) VALUES (NULL,'" . $email . "','" . md5($password) . "', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d H:i:s") . "','1')";
        $result = $conn->only_query($sql);

        $conn->only_query("INSERT INTO `profile`(`id`, `user_id`, `first_name`, `last_name`, `email`, `contact`, `address`,`profile_pic`,`referral_code`, `created`, `modified`, `active`) VALUES (null,'" . $result . "','" . $firstname . "','" . $lastname . "','" . $email . "','" . $contact . "','" . $address . "',null,'".$referral_code."','" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d H:i:s") . "','1')");
    // verify and store referral_code_data
          if($get_referral_code){
              if(empty($this->check_duplicate_referral($conn,$referral_code,$get_referral_code))){ 
                  $store_referral = $this->store_referral_data($conn,$referral_code,$get_referral_code);
                }else{
                    
                }
       
          }
      //  print_r($store_referral);
        
        $apiresult = $this->apikey($result, $fcm, $deviceid, $email);

     
        if ($result) {
            $user = $conn->select_one_row("SELECT users.id,users.email,users.created,profile.first_name,profile.last_name,profile.contact,profile.address,profile.profile_pic,profile.modified,auth.auth_key FROM users LEFT JOIN profile on users.id=profile.user_id LEFT JOIN auth on users.id=auth.user_id WHERE users.id='" . $result . "' and users.active='1'");
            return $user;
        } else {
            return false;
        }
    }



    public function apikey($id, $fcm, $deviceid, $email)
    {
        $conn = new Dbcon();
        $authkey = md5($email . date("Y-m-d H:i:s"));
        $api = $conn->only_query("INSERT INTO `auth`(`id`, `user_id`, `fcm`, `device_id`, `auth_key`, `dated`, `active`) VALUES (NULL,'" . $id . "','" . $fcm . "','" . $deviceid . "','" . $authkey . "','" . date("Y-m-d H:i:s") . "','1')");
        if ($api) {
            return true;
        } else {
            return false;
        }
    }



}

