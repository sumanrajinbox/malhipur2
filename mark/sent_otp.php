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

if($_SERVER['REQUEST_METHOD']==='POST'&& isset($data['email'])) {
	$check_email = $conn->select_one_row('select * from users where email = "'.$data['email'].'"');
	$user_id=$check_email['id'];
	
	if($check_email) {
		//print_r($check_email);
		function obfuscate_email($email)
		{
			$em   = explode("@",$email);
			$name = implode(array_slice($em, 0, count($em)-1), '@');
			$len  = floor(strlen($name)/2);
		
			return  substr($name,0, $len) . str_repeat('x', $len) . "@" . end($em);   
		}
		$mask_email= obfuscate_email($check_email['email']) . " \n";
	
		$to=$conn->select_one_row('select u.*,p.* from users as u  left join profile as p on p.user_id = u.id where u.id = "'.$user_id.'"');		
	
	
		$first_name=$to['first_name'];
		$generate_otp=$forgot_class->otp_generate(5, $first_name, 2);
		$verify_otp=$forgot_class->verify_otp($conn, $generate_otp, $user_id);
		while($generate_otp==$verify_otp['otp']) {
			echo "welcome to while loop ";
			$generate_otp=$forgot_class->otp_generate(5, $first_name, 2);
		}
		$user_exist=$conn->select_one_row('SELECT * FROM `forgot_password` where user_id = "'.$user_id.'" ');

		if($user_exist) {
					    $update_sql= 'UPDATE
								forgot_password 
								SET 
								otp= "'.$generate_otp.'",
								active="1",
								dated="'.date( "Y-m-d H:i:s").'"
								WHERE user_id="'.$user_id.'"';
					$update_otp=$conn->only_query($update_sql,true);
					//echo 'otp updated';		
		}

		else {

			$insert_otp=$conn->only_query('INSERT INTO `forgot_password`(`id`, `user_id`, `otp`, `active`, `dated`) VALUES ("","'.$user_id.'","'.$generate_otp.'",1,"'.date("Y-m-d H:i:s").'")');
			//echo 'otp inserted';		
		
		}

		$to = $to['email'];
$subject = 'OTP by challenge education ';
$from = 'challengeeducation@malhipur.in';
 
// To send HTML mail, the Content-type header must be set
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
 
// Create email headers
$headers .= 'From: '.$from."\r\n".
    'Reply-To: '.$from."\r\n" .
    'X-Mailer: PHP/' . phpversion();
 
// Compose a simple HTML email message
$message = '<html><body>';
$message .= '<p style="color:#2E4053;font-size:12px;">We thank you for using our learning App.</p>';
$message .= '<p style="color:#2E86C1;font-size:12px;">Your One Time Password (OTP) is .   </p><h2 style="color:#f40;">'.$generate_otp.'</h2>';
$message .= '<p style="color:#2E4053;font-size:12px;">It is Valid till.</p>';
$message .= '</br></br><p style="color:#2E4053;font-size:12px;">Warm Regards</p>';
$message .= '</body></html>';
 

$send_result = mail($to, $subject, $message, $headers);
if($send_result){
	$response["error"]=FALSE;
		$response["message"]="OTP has been sent in your Registered Email id ".$mask_email;
		header('HTTP/1.1 200 success', true, 200);
		header('Content-Type: application/json');
		echo json_encode($response);
   
} else{
    echo 'Unable to send email. Please try again.';
}		
	}
	else {
		$response["error"]=TRUE;
		$response["message"]="Email Id dosen't exitst ";
		header('HTTP/1.1 401 Unauthorized', true, 401);
		header('Content-Type: application/json');
		echo json_encode($response);
	}


}


?>