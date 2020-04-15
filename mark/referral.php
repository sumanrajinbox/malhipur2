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
    $total_balance = $conn->select_all_row("select 
          sum(ra.referral_price )as total_balance
          from referral_account as ra where ra.r_code='" . $auth['referral_code'] . "' and ra.active='1'", true);
   //  print_r($total_balance);
    if ($total_balance[0]['total_balance']) {
      $response["error"] = false;
      $response["message"] = "Data found";
      // $response["data"] = $all_data ;
      $response["balance"] = $total_balance[0]['total_balance'];
      header('Content-Type: application/json');
      echo json_encode($response);
    }else{
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
