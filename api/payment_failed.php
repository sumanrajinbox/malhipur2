<?php
include "config.php";
$conn = new Myconn();
$myfunction = new Myfunction();

$post_data = $data = json_decode(file_get_contents('php://input'), true);
$auth = $conn->auth2($post_data['result']['udf1']);
$all_data = serialize($data);
$all_data = $myfunction->myencryption($all_data);

//$decoded_data = $myfunction->mydencryption($all_data);
//$decoded_data = unserialize($decoded_data);
//print_r($decoded_data);

$enc_sql = 'INSERT INTO payment_data set
    all_data= "' . $all_data . '",
    flag= 0,
    modified= "' . date("Y-m-d H:i:s") . '" ';

$enc_insert_result = $conn->only_query($enc_sql);
header('HTTP/1.1 200 success', true, 200);
header('Content-Type: application/json');
$response["message"] =  '  payment_data insertation successfully';
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
    $check_duplicate_txnid = $conn->select_one_row("select * from payment_details where txnid = '".$data['txnid']."'");
if ( !$check_duplicate_txnid){
    
$insert_result = $conn->only_query($sql);
    header('HTTP/1.1 200 success', true, 200);
    header('Content-Type: application/json');
    $response["message"] =  'payment_failed_details insertation successfully';

}
else {
        header('HTTP/1.1 409 conflict', true, 409);
    header('Content-Type: application/json');
    $response["message"] =  'txnid already exist ';
    
}echo json_encode($response, JSON_PRETTY_PRINT);
   
?>

<!-- <!DOCTYPE html>
<html>

<body>

    <h2 style="margin: 0 auto;">payment failed </h2>
  
    <h2 style="margin: 0 auto;">something went wrong </h2>
    <h3 style="margin: 0 auto;">Transaction id : <?php //echo $data['txnid']; ?></h3>
    <p>please Note: - Transaction Id is mandatory for tracking please notedown </p>


</body>

</html> -->