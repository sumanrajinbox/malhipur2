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

////
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
	$row = $Dbcon->select_all_row("select * from class where active=1");
$row2=$Dbcon->select_all_row("select * from month where active=1");
$response["message"] = "Successful";
$response["class"] = $row;
$response["month"] = $row2;


header('Content-Type: application/json');
header('HTTP/1.1 200 OK', true, 200);
echo json_encode($response);
}



if ($_SERVER['REQUEST_METHOD'] === 'POST') {

	$post = json_decode(file_get_contents('php://input'), true);
	
	$row=$Dbcon->select_one_row("SELECT `id`, `classid` FROM `fee` WHERE classid='".$post['className']."' and monthid='".$post['monthName']."' and active = 1");
if($row)
{
	
	$response["message"] = "Fee Exists for selected class!";
	header('Content-Type: application/json');
	header('HTTP/1.1 409 conflict', true, 409);
	echo json_encode($response);
}else
{
	$Dbcon->only_query("INSERT INTO `fee`(`id`, `classid`,`monthid`, `fee`, `session`, `modified`, `active`) VALUES (null,'".$post['className']."','".$post['monthName']."','".$post['amount']."','2019-2020','".date( "Y-m-d H:i:s" )."','1')");
	$response["message"] = "Successful";
	header('Content-Type: application/json');
	header('HTTP/1.1 200 OK', true, 200);
	echo json_encode($response);
}

}
