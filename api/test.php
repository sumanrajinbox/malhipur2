<?php //web api
include("config.php");


// $conn = new Myconn();
// $payment = new Payment();
$data = json_decode(file_get_contents('php://input'), true);
$conn = new Myconn();

// print_r($data['auth']);
// $auth2 = $conn->auth2($data['auth']);
//echo $sql = 'select * from auth ';
echo $sql = 'select a.*,u.* from auth as a left join users as u on u.id = a.user_id  where a.auth_key = "' . $data['auth'] . '" and a.active  = 1 ';
$auth = $conn->select_all_row($sql);
print_r($auth);