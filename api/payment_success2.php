<?php
include "config.php";
$conn = new Myconn();
$myfunction = new Myfunction();

$post_data = $data = json_decode(file_get_contents('php://input'), true);
$auth = $conn->auth2($post_data['result']['udf1']);
$all_data = serialize($data);
$all_data = $myfunction->myencryption($all_data);
if(isset($auth) && $auth != "" ){
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


$cd  =  $conn->select_one_row('select month_id from course_details where user_id = "' . $auth['user_id'] . '"  and active = 1 ');
if ($cd['month_id'] != "") {
    if ($cd['month_id'] != "" && $data['productinfo'] != "") {
        // echo "if part" ;
        $month_id =  explode(",", $cd['month_id']);
        $product_info = explode("  ", $data['productinfo']);
        foreach ($product_info as $pkey => $pvalue) {
            array_push($month_id, $pvalue);
        }
        $month_id = str_replace(' ', '', implode(",", array_filter($month_id)));
        //echo $month_id;  
           $update_course_details = 'update course_details set paid = 1 ,month_id = "' . $month_id . '"where user_id = "' . $auth['user_id'] . '"';
        $update_course_details_result = $conn->only_query($update_course_details);
    }
} else {
    //  echo "else part";
    // $month_id = implode(",", $data['productinfo']);
    $month_id = explode("  ", $data['productinfo']);
    $month_id = str_replace(' ', '', implode(",", array_filter($month_id)));
    // print_r($month_id);
    $update_course_details = 'update course_details set paid = 1 ,month_id = "' . $month_id . '"where user_id = "' . $auth['user_id'] . '"';
    $update_course_details_result = $conn->only_query($update_course_details);
}
$insert_result = $conn->only_query($sql);
header('HTTP/1.1 200 success', true, 200);
header('Content-Type: application/json');
$response["message"] = "payment successfully ";
echo json_encode($response, JSON_PRETTY_PRINT);
}
else{
    $response["error"]=TRUE;
    $response["message"]="Bad Request";
    header('HTTP/1.1 400 Bad Request', true, 400);
    header('Content-Type: application/json');
    echo json_encode($response);
}
?>

