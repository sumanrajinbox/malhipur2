<?php

class Referral
{
    public function verify_profile_referral_code($conn, $referral_code)
    {
        $rcode = $conn->select_one_row("select p.* ,rp.referral_price as price from profile as p left join referral_price as rp on rp.id = p.referral_price where  p.referral_code='" . $referral_code . "' and p.active='1'");
        if ($rcode) {
            return $rcode;
        } else {
            return false;
        }
    }
    public function store_referral_data($conn, $redeem_code, $referral_code)
    {
        $redeem_data = $this->verify_profile_referral_code($conn, $redeem_code);
        $verify_rcode  = $this->verify_profile_referral_code($conn, $referral_code);
        if ($verify_rcode && $redeem_data) {
            $rsql = 'INSERT INTO `referral_account` set  
                                    `referral_uid` = "' . $verify_rcode['user_id'] . '",
                                     `r_code` = "' . $referral_code . '",
                                     `redeem_id`= "' . $redeem_code . '",
                                     `redeem_uid`= "' . $redeem_data['user_id'] . '",
                                     `referral_price` = "' . $verify_rcode['price'] . '",
                                    `redeem_date` = "' . date("Y-m-d H:i:s") . '",
                                    `created_date`="' . date("Y-m-d H:i:s") . '",
                                    `active` = 1 ';
            $result = $conn->only_query($rsql);
            // if ($result) {
            //     $response["error"] = false;
            //     $response["message"] = "Referral data stored successfully ";
            //     header('Content-Type: application/json');
            //     echo json_encode($response);
            // } else {
            //     $response["error"] = TRUE;
            //     $response["message"] = "Referral code insertion error";
            //     header('Content-Type: application/json');
            //     echo json_encode($response);
            //     exit();
            // }
        }
    }
public function check_duplicate_referral($conn,$referral,$redeem){
    $result = $conn->select_all_row('select * from referral_account where r_code ="'.$referral.'" and redeem_id = "'.$redeem.'" and active = 1');

}





}
