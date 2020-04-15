<?php
include "config.php";
$conn = new Myconn();
$myfunction = new Myfunction();

$post_data = $data = json_decode(file_get_contents('php://input'), true);
$auth = $conn->auth2($post_data['result']['udf1']);
$all_data = serialize($data);
$all_data = $myfunction->myencryption($all_data);
if (isset($auth) && $auth != "" && $data['result']['txnid'] != "") {
    //$decoded_data = $myfunction->mydencryption($all_data);
    //$decoded_data = unserialize($decoded_data);
    //print_r($decoded_data);
    $enc_sql = 'INSERT INTO payment_data set
    all_data= "' . $all_data . '",
    flag= 0,
    modified= "' . date("Y-m-d H:i:s") . '" ';

    $enc_insert_result = $conn->only_query($enc_sql);
    // header('HTTP/1.1 200 success', true, 200);
    // header('Content-Type: application/json');
    // $response["last_id"] = $enc_insert_result . 'of payment_data';
    // echo json_encode($response, JSON_PRETTY_PRINT);


    $data = $data['result'];

    $sql = 'INSERT INTO payment_details set
    txnid= "' . $data["txnid"] . '",
    paymentId= "' . $data["paymentId"] . '",
    mode= "' . $data["mode"] . '",
    payuMoneyId= "' . $data["payuMoneyId"] . '",
    net_amount_debit= "' . $data["net_amount_debit"] . '",
    status= "' . $data["status"] . '",
    amount= "' . $data["amount"] . '",
    additionalCharges= "' . $data["additionalCharges"] . '",
    addedon= "' . $data["addedon"] . '",
    createdOn= "' . $data["createdOn"] . '",
    productinfo= "' . $data["productinfo"] . '",
    firstname= "' . $data["firstname"] . '",
    lastname= "' . $data["lastname"] . '",
    auth_key = "' . $data["udf1"] . '",
    referral_amount = "' . $data["udf2"] . '",
    user_id = "' . $auth["user_id"] . '",
    hash= "' . $data["hash"] . '",
    field1= "' . $data["field1"] . '",
    field2= "' . $data["field2"] . '",
    field3= "' . $data["field3"] . '",
    field4= "' . $data["field4"] . '",
    field5= "' . $data["field5"] . '",
    field6= "' . $data["field6"] . '",
    field7= "' . $data["field7"] . '",
    field8= "' . $data["field8"] . '",
    field9= "' . $data["field9"] . '",
    bankcode= "' . $data["bankcode"] . '",
    error= "' . $data["error"] . '",
    error_Message= "' . $data["error_Message"] . '",
    name_on_card= "' . $data["name_on_card"] . '",
    cardnum= "' . $data["cardnum"] . '",
    card_type= "' . $data["card_type"] . '",
    flag= 0,
    modified= "' . date("Y-m-d H:i:s") . '" ';

    $referral_amount = $data['udf2'];
    $month_id = explode("  ", $data['productinfo']);
    $sql_cd ='select month_id ,class_id from course_details where user_id = "' . $auth['user_id'] . '"  and active = 1 ';
    $cd  =  $conn->select_one_row($sql_cd);
    $sql_fee_details = 'select * from fee where monthid = "' . str_replace(' ', '', $month_id[0]) . '" and classid = "' . $cd['class_id'] . '" and active = 1';
    $fee_details = $conn->select_one_row($sql_fee_details);
    $get_redeem_id = $conn->select_one_row('select * from profile where user_id = "' . $auth['user_id'] . '"');
    $referral_code = $conn->select_one_row('select * from referral_account where redeem_id = "' . $get_redeem_id['referral_code'] . '"');  
    $referral_code_data = $conn->select_one_row('select * from referral_account where r_code = "' . $referral_code['r_code'] . '" and redeem_id = "'. $get_redeem_id['referral_code'].'"');
    
    // if($referral_amount){
    //     $referral_amount = $referral_code_data['referral_price'] - $referral_amount;
    //     $update_redeem_prrson_price = $conn->only_query('update referral_account set referral_price = "' . $referral_amount . '" where  r_code = "' . $get_redeem_id['referral_code'] . '" and redeem_id = "' . $referral_code['r_code'] . '"');
    // }

    //  print_r($fee_details);
    // print_r($cd);
    //print_r($get_referral_code);
    //print_r($referral_code);
    //print_r( $fee_details ['fee']);
    // print_r( $referral_code_data);
    //  die;

    if ($cd['month_id'] != "") {
        if ($cd['month_id'] != "" && $data['productinfo'] != "") {
            $month_id =  explode(",", $cd['month_id']);
            $product_info = explode("  ", $data['productinfo']);
            foreach ($product_info as $pkey => $pvalue) {
                array_push($month_id, $pvalue);
            }
            $month_id = str_replace(' ', '', implode(",", array_filter($month_id)));
            $update_course_details = 'update course_details set paid = 1 ,month_id = "' . $month_id . '"where user_id = "' . $auth['user_id'] . '"';
           $update_course_details_result = $conn->only_query($update_course_details);
        }
    } else {
        // echo 'referral_code -->  ' . $referral_code['r_code'] . ' --- ';
        // echo 'get_redeem_id -->  ' . $get_redeem_id['referral_code'];
        $last_price =  $referral_code['referral_price'];
        $fee = ($fee_details['fee'] * 20) / 100;
        // $fee = $last_price + $fee;
        // print_r($referral_code);
        $sql_referral_account = 'update referral_account set referral_price = "' . $fee . '" where r_code = "' . $referral_code['r_code'] . '" and redeem_id = "'. $get_redeem_id['referral_code'].'" and active = 1';
        $update_referral_prrson_price = $conn->only_query($sql_referral_account);
        $month_id = str_replace(' ', '', implode(",", array_filter($month_id)));
        $update_course_details = 'update course_details set paid = 1 ,month_id = "' . $month_id . '"where user_id = "' . $auth['user_id'] . '"';
       $update_course_details_result = $conn->only_query($update_course_details);
    }
    
    $insert_result = $conn->only_query($sql);
    header('HTTP/1.1 200 success', true, 200);
    header('Content-Type: application/json');
    $response["message"] = "payment successfully ";
    echo json_encode($response, JSON_PRETTY_PRINT);
} else {
    $response["error"] = TRUE;
    $response["message"] = "Bad Request";
    header('HTTP/1.1 400 Bad Request', true, 400);
    header('Content-Type: application/json');
    echo json_encode($response);
}
