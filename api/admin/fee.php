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
	$fee_sql =  'select f.id as fee_id from fee as f  
	left join class as cl on f.class_id =cl.id
	left join month as m on f.month_id = m.id

	';
	$row = $Dbcon->select_all_row('SELECT 
    f.id AS fee_id,
	f.fee,
    cl.name,
    cl.id as id, 
    m.monthName as monthname
FROM
    fee AS f
        LEFT JOIN
    class AS cl ON f.classid = cl.id
        LEFT JOIN
    month AS m ON f.monthid = m.id
     WHERE  f.active=1 ');

	// echo "SELECT class.name,fee.amount, FROM class LEFT JOIN profile on class.id=fee.classid  WHERE class.active='1'";
$response["message"] = "Successful";
$response["class"] = $row;

header('Content-Type: application/json');
header('HTTP/1.1 200 OK', true, 200);
echo json_encode($response);

}

?>