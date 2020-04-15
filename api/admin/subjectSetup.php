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
$Dbcon=new Dbcon();
$apikey=new Apikey();
$convert=new Convert();

////
if ($_SERVER['REQUEST_METHOD']=='GET') {
	$row=$Dbcon->select_all_row("SELECT subject
    .subjectName,
    subject.id,
    subject.modified,
    class.name,
    month.monthName as month_name
FROM subject
LEFT JOIN class ON subject
    .classid = class.id
LEFT JOIN month ON subject
    .month_id = month.id
WHERE subject.active = '1'");

	$response["message"]="Successful";
	$response["subject"]=$row;



	header('Content-Type: application/json');
	header('HTTP/1.1 200 OK', true, 200);
	echo json_encode($response);
}





	if ($_SERVER['REQUEST_METHOD']==='POST'){
	$post=json_decode(file_get_contents('php://input'), true);
	//print_r ($post);
	if (isset($post['month_id']) && $post['month_id'] !=="" 
	&& isset($post['subjectName']) && $post['subjectName'] !=="" 
	&& isset($post['classid']) && $post['classid'] !=="" ){



	$row=$Dbcon->select_one_row("SELECT `subjectName`, `classid` FROM `subject` WHERE classid='".$post['classid']."' and subjectName='".$post['subjectName']."' and month_id='".$post['month_id']."'and active = 1");


	if($row) {

		$response["message"]="Subject Exists!";
		header('Content-Type: application/json');
		header('HTTP/1.1 409 conflict', true, 409);
		echo json_encode($response);
	}

	else {
		$Dbcon->only_query("INSERT INTO `subject`(
			`id`,
			`subjectName`,
			`classid`,
			`session`,
			`modified`,
			`active`,
			`month_id`
		)
		VALUES(
			NULL,
			'".$post['subjectName']."',
			'".$post['classid']."',
			'2019-2020',
			'".date( "Y-m-d H:i:s" )."',
			'1',
			'".$post['month_id']."'
		)");

$response["message"]="Successful";
		header('Content-Type: application/json');
		header('HTTP/1.1 200 OK', true, 200);
		echo json_encode($response);
	}

}
}