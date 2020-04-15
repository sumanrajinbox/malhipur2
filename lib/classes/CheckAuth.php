<?php

class CheckAuth
{

    public function auth($auth_key)
    {
        $auth_result = $this->select_one_row('select * from auth where auth_key = "' . $auth_key . '" and active  = 1 ', true);
        return $auth_result;
    }
    public function auth2($auth_key)
    {
        $auth_result = $this->select_all_row('select * from auth where auth_key = "' . $auth_key . '" and active  = 1 ', true);
        if (count($auth_result) > 1) {
            return "more than 1 auth key found";
        } else {
            return $auth_result = $this->select_one_row('select a.*,u.* from auth as a left join users as u on u.id = a.user_id  where a.auth_key = "' . $auth_key . '" and a.active  = 1 ', true);
        }
    }
    public function auth_profile($auth_key)
    {
        $auth_result = $this->select_all_row('SELECT 
    a.user_id,
    a.auth_key,
    p.first_name,
    p.last_name,
    p.email,
    p.address,
    p.referral_code,
    rp.referral_price
FROM
    auth AS a
        LEFT JOIN
    profile AS p ON p.user_id = a.user_id
        LEFT JOIN
    referral_price AS rp ON rp.id = p.referral_price
WHERE
    a.auth_key = "' . $auth_key . '"
        AND a.active = 1', true);
        if (count($auth_result) > 1) {
            return "more than 1 auth key found";
        } else {
            return $auth_result = $this->select_one_row('SELECT 
    a.user_id,
    a.auth_key,
    p.first_name,
    p.last_name,
    p.email,
    p.address,
    p.referral_code,
    rp.referral_price
FROM
    auth AS a
        LEFT JOIN
    profile AS p ON p.user_id = a.user_id
        LEFT JOIN
    referral_price AS rp ON rp.id = p.referral_price
WHERE
    a.auth_key = "' . $auth_key . '"
        AND a.active = 1', true);
        }
    }

public function user_fee_detail($user_id){
  return  $this->select_one_row('select * from course_details where user_id ="'.$user_id.'" ');

}



}
