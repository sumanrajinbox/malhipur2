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
if ($_SERVER['REQUEST_METHOD'] === 'GET') {

	$row = $Dbcon->select_all_row("SELECT 
    p.*,
    cl.name as class_name ,
    u.email as user_email
FROM
    users AS u
        LEFT JOIN
    profile AS p ON p.user_id = u.id
        LEFT JOIN
    course_details AS cd ON cd.user_id = u.id
    LEFT JOIN
    class AS cl ON cd.class_id = cl.id
    WHERE
    u.active = 1 
    and 
    p.active = 1
     ");


$response["message"] = "Successful";
$response["class"] = $row;
header('Content-Type: application/json');
header('HTTP/1.1 200 OK', true, 200);
echo json_encode($response);





}

