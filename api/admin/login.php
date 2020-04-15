<?php
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
	header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Max-Age: 86400');    // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
		header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

	exit(0);
}
include("config.php");
$Dbcon = new Dbcon();
$apikey = new Apikey();
$convert = new Convert();

$data = getallheaders();
$post = json_decode(file_get_contents('php://input'), true);

$email = $post['username'];
$password = $post['password'];



///App login

if (isset($post['username']) && isset($post['password'])) {


	////
	$row = $Dbcon->select_one_row("select * from login where username='" . $email  . "' and password='" .md5($password) . "' and active=1");
	//$row = $Dbcon->select_one_row("select * from login where username='" . $email . "' and password='" .$password . "' and active=1");

	if ($row) {

	
		$response["message"] = "Successful login";
		$response["auth_key"] = "kjsgdfigiusdf87634kjbfkjbi73kbjeg";


		header('Content-Type: application/json');
		header('HTTP/1.1 200 OK', true, 200);
		echo json_encode($response);
	} else {
	
		$response["message"] = "Invalid username or password";
		header('HTTP/1.1 401 Unauthorized', true, 401);
		header('Content-Type: application/json');
		echo json_encode($response);
	}
} else {

	$response["message"] = "Required parameters (email or password) is missing!";
	header('Content-Type: application/json');
	echo json_encode($response);
}
