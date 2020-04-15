<?php
include("config.php");
$conn = new Myconn();
$convert = new Convert();
$data = json_decode(file_get_contents('php://input'), true);


if (isset($data['auth_key'])) {
  $auth = $conn->auth_profile($data['auth_key']);

  if ($auth) {
    // $all_data = $conn->select_all_row("select ra.r_code as referral_code ,
    //      ra.referral_uid ,
    //       ra.redeem_id as redeem_code ,
    //       ra.redeem_uid,
    //       ra.referral_price 
    //       from referral_account as ra where ra.r_code='" . $auth['referral_code'] . "' and ra.active='1'", true);
    $sum_referral_price = $conn->select_all_row("SELECT 

   if( isnull(SUM(ra.referral_price)),0,SUM(ra.referral_price)) as ra_amount
FROM
    referral_account AS ra
        
WHERE
    ra.referral_uid = '" . $auth['user_id'] . "'
        AND ra.active = '1' ", true);

    $sum_referral_account_price = $conn->select_all_row("SELECT
    IF(
        ISNULL((pd.referral_amount)),
        0,
        SUM(pd.referral_amount)
    ) as pd_amount
FROM
    payment_details AS pd
WHERE
    pd.user_id = '" . $auth['user_id'] . "' AND pd.flag = '0'", true);

    // print_r($sum_referral_price);
    // echo '====================';
    // print_r($sum_referral_account_price);
     $sum_referral_account_price = $sum_referral_account_price[0]['pd_amount'];
     $sum_referral_price = $sum_referral_price[0]['ra_amount'];
    if ($sum_referral_account_price && $sum_referral_price) {
      if ($sum_referral_account_price <= $sum_referral_price) {
        $total_balance =   $sum_referral_price - $sum_referral_account_price;
      }else{
        $total_balance =null ;
      }
    }

    if ($total_balance) {
      $response["error"] = false;
      $response["message"] = "Data found";
      $response["sum_of_payment_amount"] = $sum_referral_account_price ;
      $response["sum_of_referral_amount"] = $sum_referral_price ;
      $response["balance"] = $total_balance;
      header('Content-Type: application/json');
      echo json_encode($response);
    } else {
      $response["error"] = false;
      $response["message"] = "No data found";
      $response["balance"] = "0.00";
      header('HTTP/1.1 200 Bad Request', true, 200);
      header('Content-Type: application/json');
      echo json_encode($response);
    }
  } else {
    $response["error"] = TRUE;
    $response["message"] = "invalid user";
    header('HTTP/1.1 400 Bad Request', true, 400);
    header('Content-Type: application/json');
    echo json_encode($response);
  }

  // $all_data = $conn->select_all_row("select * from referral_code where r_code='" . $data['referral_code'] . "' and active='1'");
  // if ($rcode) {
  //     $response["error"] = false;
  //     $response["message"] = "Valid Referral code";
  //     header('Content-Type: application/json');
  //     echo json_encode($response);
  // } else {
  //     $response["error"] = TRUE;
  //     $response["message"] = "Invalid Referral code";
  //     header('Content-Type: application/json');
  //     echo json_encode($response);
  // }
}
