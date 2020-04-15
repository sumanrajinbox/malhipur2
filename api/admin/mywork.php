<?php // Allow from any origin

if (isset($_SERVER['HTTP_ORIGIN'])) {
	header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Max-Age: 86400'); // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD']=='OPTIONS') {

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

	exit(0);
}

include("config.php");
$conn=new Myconn();
$mywork=new Mywork();
$response=array("error"=> FALSE);

$all_auth=$mywork->all_auth($conn, 1);
$all_table=$mywork->all_table($conn);
$all_col=$mywork->all_col($conn);

$all_class=$conn->select_all_row('select * from class');


function show_column($conn, $table, $field) {
	$query='SHOW COLUMNS FROM '.$table.'';
	$result=$conn->select_all_row($query, true);
	$v = array_column($result, $field);
	$mydata="<tr>";
	foreach($v as $v_key=>$v_value) {
		$mydata .="<td>". $v_value."</td>";
	}
	$mydata .="</tr>";
	return $mydata;
	 
}



//show_column($conn, "auth","Field");


function show_table($conn, $table,$field) {
	$data = "<table>";
	$data .=show_column($conn, $table, $field);
    $query_data = "select * from ".$table."";
	$result = $conn->select_all_row($query_data,true);
	
	foreach($result  as $result_key => $result_value ){
		 $data .= "<td>".$result_value['id'];
		
	}
	echo $data;
}


 show_table($conn, "users","Field");







?>