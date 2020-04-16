<?php
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}
// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}

include("config.php");
$conn = new Myconn();
$data = json_decode(file_get_contents('php://input'), true);
$email = $data['email'];

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($data['email'])) {
    if (!empty($data['email'])) {
        $result = $conn->select_all_row("select u.id,fp.* from users as u  left join forgot_password as fp on u.id = fp.user_id where u.email = '" . $data['email'] . "' and fp.user_id = u.id and u.active = 1");
    } else {
        $result = $conn->select_all_row("select u.email ,fp.* from forgot_password as fp  left join  users as u on u.id = fp.user_id where u.active =1 order by fp.dated desc  ");
    }
    header('Content-Type: application/json');
    header('HTTP/1.1 404 No exam title available ', true, 404);
    $response["data"] = $result;
    echo json_encode($response);
}
