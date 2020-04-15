<?php
//web api
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
//$dbcon = new Chapter();
$conn = new Dbcon();
$month_data = $conn->select_all_row("select id,monthName as month_name from month");
if($month_data){
    $response["month_data"]=$month_data;
      echo json_encode($response,JSON_PRETTY_PRINT);
  }




?>