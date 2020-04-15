<?php if (isset($_SERVER['HTTP_ORIGIN'])) {
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
$forgot_class=new Forgot();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);

//$auth=$conn->auth($data['auth_key']);

//echo md5();

if($_SERVER['REQUEST_METHOD']==='POST'&& isset($data['email']) && isset($data['otp']) && isset($data['password'])) {
	$check_email = $conn->select_one_row('select * from users where email = "'.$data['email'].'"');
	if($check_email) {

		$otp=$data['otp'];
		$password=$data['password'];
		$user_id=$check_email['id'];
		$verify_otp=$forgot_class->verify_otp($conn, $otp, $user_id);

		if($verify_otp) {
			$date1=strtotime($verify_otp['dated']);
			$date2=strtotime(date("Y-m-d H:i:s"));
			$diff=abs($date2 - $date1);
			$expire_hour = 8;
			$otp_time = ($diff/(3600*$expire_hour))."\n";
	//	$check_strength =$forgot_class->password_strength($password );
		// if($check_strength){
		// 	$pass_error = null;
		// 	foreach($check_strength as $key=>$value){
		// 		$pass_error .="\n ".$value;
		// 	}
		// 		$response["error"]=TRUE;
		// 		$response["message"]=$pass_error;
		// 		header('HTTP/1.1 400 Bad request', true, 400);
		// 		header('Content-Type: application/json');
		// 		//echo json_encode($response);
		// }elseif
		if ($otp_time>$expire_hour){
				$response["error"]=TRUE;
				$response["message"]="OTP has been expired";
				header('HTTP/1.1 400 Bad request', true, 400);
				header('Content-Type: application/json');
				//echo json_encode($response);
			}else {
			 
				$update_password = $conn->only_query('UPDATE
				`users`
			SET
				`password` = "'.md5($password).'",	
				`modified` = "'.date("Y-m-d H:i:s").'"
				 WHERE id = "'.$user_id.'"');
					
				$update_otp_status=$conn->only_query('UPDATE
				`forgot_password` SET `active`="0",
				`dated`="'.date("Y-m-d H:i:s").'"
				WHERE user_id="'.$user_id.'"and otp="'.$otp.'"');
				
				$response["error"]=FALSE;
				$response["message"]="password changed successfully .";
				header('HTTP/1.1 200 success', true, 200);
				header('Content-Type: application/json');
				//echo json_encode($response, JSON_PRETTY_PRINT);
			}
		}
		else {
			$response["error"]=TRUE;
			$response["message"]="Invalid One Time Password (OTP) ";
			header('HTTP/1.1 401 Unauthorized', true, 401);
			header('Content-Type: application/json');
		}
	}
	else {
		$response["error"]=TRUE;
		$response["message"]="Invalid username or password";
		header('HTTP/1.1 401 Unauthorized', true, 401);
		header('Content-Type: application/json');
		//echo json_encode($response);
	}


}
echo json_encode($response, JSON_PRETTY_PRINT);

?>