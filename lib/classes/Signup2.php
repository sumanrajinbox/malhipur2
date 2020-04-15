<?php
require_once("Dbcon.php");
class Signup
{
    /**
     * Check user is existed or not
     */
    public function isUserExisted($email)
    {
        $Dbcon = new Dbcon();
        $stmt = $Dbcon->select_one_row("SELECT email from users WHERE email = '" . $email . "' and active='1'");

        if ($stmt) {
            return true;
        } else {
            // user not existed
            return false;
        }
    }

    public function storeUser($firstname, $lastname, $contact, $address, $email, $password = "", $fcm=0, $deviceid=0)
    {
        $Dbcon = new Dbcon();
        $sql = "INSERT INTO `users`(`id`, `email`, `password`, `created`, `modified`, `active`) VALUES (NULL,'" . $email . "','" . md5($password) . "', '" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d H:i:s") . "','1')";
        $result = $Dbcon->only_query($sql);

        $Dbcon->only_query("INSERT INTO `profile`(`id`, `user_id`, `first_name`, `last_name`, `email`, `contact`, `address`,`profile_pic`, `created`, `modified`, `active`) VALUES (null,'" . $result . "','" . $firstname . "','" . $lastname . "','" . $email . "','" . $contact . "','" . $address . "',null,'" . date("Y-m-d H:i:s") . "', '" . date("Y-m-d H:i:s") . "','1')");


        $apiresult = $this->apikey($result, $fcm, $deviceid, $email);
        // check for successful store
        if ($result) {
            $user = $Dbcon->select_one_row("SELECT users.id,users.email,users.created,profile.first_name,profile.last_name,profile.contact,profile.address,profile.profile_pic,profile.modified,auth.auth_key FROM users LEFT JOIN profile on users.id=profile.user_id LEFT JOIN auth on users.id=auth.user_id WHERE users.id='" . $result . "' and users.active='1'");
            return $user;
        } else {
            return false;
        }
    }

    public function apikey($id, $fcm, $deviceid, $email)
    {
        $Dbcon = new Dbcon();
        $authkey = md5($email . date("Y-m-d H:i:s"));


        $api = $Dbcon->only_query("INSERT INTO `auth`(`id`, `user_id`, `fcm`, `device_id`, `auth_key`, `dated`, `active`) VALUES (NULL,'" . $id . "','" . $fcm . "','" . $deviceid . "','" . $authkey . "','" . date("Y-m-d H:i:s") . "','1')");
        if ($api) {
            return true;
        } else {
            return false;
        }
    }

    public function referral_code($userid)
    {

        $seed = str_split('abcdefghijklmnopqrstuvwxyz'
            . 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
            . '0123456789@#$&'); // and any other characters
        shuffle($seed); // probably optional since array_is randomized; this may be redundant
        $rand = '';
        foreach (array_rand($seed, 5) as $k) $rand .= $seed[$k];

        echo $rand;

        $Dbcon = new Dbcon();
        $Dbcon->only_query("INSERT INTO `referral_code`(`id`, `user_id`, `r_code`, `reddem_id`, `redeem_date`, `created_date`, `active`) VALUES (null,'" . $userid . "','" . $rand . "','','','" . date("Y-m-d H:i:s") . "','1')");
    }
}
