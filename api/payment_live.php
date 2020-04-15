<?php //web api
include("config.php");
$conn = new Myconn();
$payment = new Payment();
$data = json_decode(file_get_contents('php://input'), true);
// function check_post($data,$key){
//     if(isset($data[$key])){
//         return $data[$key];
//     }else{
//         return "" ;
//     }
// }
function checkNull($value) {
    if ($value == null) {
          return '';
    } else {
          return $value;
    }
}
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $auth_key = $data['auth_key'];
    $amount = $data['amount'];
    $month = $data['month'];
    $salt_key = '2c38SUGTkw';
    $merchant_key = 'QdL5tCnW';
    $email = '';
    $udf1="";
    $udf2="";
    $udf3="";
    $udf4="";
    $udf5="";
    $udf6="";
}

$auth = $conn->auth2($auth_key);
//$txnid = $payment->txnid_gen($conn);
$txnid = $data['txnid'];


if (
    $_SERVER['REQUEST_METHOD'] === 'POST' && $txnid != "" && $auth['user_id'] > 0 && $amount != "" && $month != ""
) {
    $uid = $auth['user_id'];
   // $hash_string =$merchant_key.'|'. $amount . '|' . $txnid . '|' .$email.'|'. implode(",",$month).'|'.$uid .'|'.''.'|'.''.'|'.''.'|'.''.'|'.''.'|'.'|'.$salt_key;
   //$payhash_str = $key . '|' . checkNull($txnId) . '|' .checkNull($amount)  . '|' .checkNull($productName)  . '|' . checkNull($firstName) . '|' . checkNull($email) . '|' . checkNull($udf1) . '|' . checkNull($udf2) . '|' . checkNull($udf3) . '|' . checkNull($udf4) . '|' . checkNull($udf5) . '||||||'. $salt;
$hash_string = $merchant_key . '|' . checkNull($txnid) . '|' .checkNull($amount)  . '|' .implode(",",$month)  . '|' . checkNull($uid) . '|' . checkNull($email) . '|' . checkNull($udf1) . '|' . checkNull($udf2) . '|' . checkNull($udf3) . '|' . checkNull($udf4) . '|' . checkNull($udf5) . '|'.checkNull($udf6).'|'. $salt_key;
    $gen_hash = $payment->genhash($hash_string);
    $insert_sql = 'insert into payment set 
    `uid` = "' . $auth['user_id'] . '",
    `auth_key` = "' . $auth_key . '",
    `month`="' . implode(",",$month) . '",
    `amount` = "' . $amount . '",
    `txn_id` = "' . $txnid . '",
    `hash_key` = "' . $gen_hash . '",
    `modified` = "' . date("Y-m-d H:i:s") . '",
    `flag`=1
    ';
    $result_max_id = $conn->select_one_row('SELECT max(id) as id FROM payment');
    $max_id = 0;
    $max_id = $result_max_id['id'];
  //  echo count(str_split($gen_hash));
    $insert_result = $conn->only_query($insert_sql);
   $sql_student_payment = 'select * from course_details where user_id = "'.$uid.'" and paid = 1';
    $check_student_payment = $conn ->select_one_row($sql_student_payment);
   // print_r($check_student_payment);

    if(!$check_student_payment){
    if($max_id<$insert_result){
        $response["error"]=FALSE;
        $response["hash"]=$gen_hash;
        $response["txnid"]=$txnid;
        header('HTTP/1.1 200 success', true, 200);
        header('Content-Type: application/json');
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    else{
        $response["error"]=TRUE;
        $response["message"]="hash key error";
        header('HTTP/1.1 404 Bad', true, 404);
        header('Content-Type: application/json');
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
}else{
    $response["error"]=TRUE;
    $response["message"]="already paid";
    header('HTTP/1.1 404 Bad', true, 404);
    header('Content-Type: application/json');
    echo json_encode($response, JSON_PRETTY_PRINT);
}
}  else{
    $response["error"]=TRUE;
    $response["message"]="field error";
    header('HTTP/1.1 404 Bad', true, 404);
    header('Content-Type: application/json');
    echo json_encode($response, JSON_PRETTY_PRINT);
}
