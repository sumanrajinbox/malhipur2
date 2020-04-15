<?php

include("config.php");

$dbcon = new Signup();
$convert = new Convert();
$conn = new Dbcon();
$payment = new Payment();
$referral = new Referral();
// json response array
$data = json_decode(file_get_contents('php://input'), true);

$response = array("error" => FALSE);
if (
	isset($data['email']) && $data['email'] !== '' && isset($data['password']) && $data['password'] !== ''  &&
	isset($data['fcm']) && isset($data['first_name']) && $data['first_name'] !== '' && isset($data['last_name']) && $data['last_name'] !== ''
	&& isset($data['contact']) && $data['contact'] !== ''
	&& isset($data['address']) && $data['address'] !== '' && isset($data['deviceid']) && isset($data['class_id'])
) {
	// receiving the post params
	$email = $data['email'];
	$contact = $data['contact'];
	$fcm = $data['fcm'];
	$deviceid = $data['deviceid'];
 	$referral_code = $data['referral_code'];

	// if (isset($data['referral_code']) && $data['referral_code'] !== '') {
	// 	$rcode = $conn->select_one_row("select * from profile where referral_code='" . $data['referral_code'] . "' and active='1'");
	// 	if ($rcode) {
	// 		$response["error"] = false;
	// 		$response["message"] = "Valid Referral code";
	// 		header('Content-Type: application/json');
	// 		echo json_encode($response);
	// 	} else {
	// 		$response["error"] = TRUE;
	// 		$response["message"] = "Invalid Referral code";
	// 		header('Content-Type: application/json');
	// 		echo json_encode($response);
	// 		exit();
	// 	}
	// }
	if (isset($data['referral_code']) && $data['referral_code'] !== '') {
	$verify_code  = $referral-> verify_profile_referral_code($conn, $referral_code);
	if($verify_code){	
			// $response["error"] = false;
			// $response["verify_data"] = $verify_code;
			// header('Content-Type: application/json');
			// echo json_encode($response);
		} else {
			$response["error"] = TRUE;
			header('HTTP/1.1 400 Bad Request', true, 400);
			$response["message"] = "Invalid Referral code";
			header('Content-Type: application/json');
			echo json_encode($response);
			die();
		}
		// check if user is already existed with the same email
	}
	$check_user_exist = $dbcon->isUserExisted($email, $contact);

	if ($check_user_exist) {
		// user already existed
		$response["error"] = TRUE;
		header('HTTP/1.1 400 Bad Request', true, 400);
		$response["message"] = "User already existed ";
		header('Content-Type: application/json');
		echo json_encode($response);
		die();
		//return false;
	} else {

		// create a new user
		$user = $dbcon->storeUser($data['first_name'], $data['last_name'], $data['contact'], $data['address'], $email, $data['password'], $fcm, $deviceid, $data['referral_code']);

		$conn->only_query('INSERT INTO `course_details`(`id`, `user_id`, `class_id`, `subject_id`, `month_id`, `paid`, `modified`, `active`) VALUES
		(null,"'.$user['id'].'","'.$data['class_id'].'",null,null,null,"'.date( "Y-m-d H:i:s" ).'",1)');
	if ($user) {
			// user stored successfully
			$response["error"] = FALSE;
			$response["message"] = "Successful login";
			$response["auth_key"] = $user['auth_key'];
			$response["user"]["uid"] = $user['id'];
			$response["user"]["first_name"] = $user['first_name'];
			$response["user"]["last_name"] = $user['last_name'];
			$response["user"]["email"] = $user['email'];
			$response["user"]["contact"] = $user['contact'];
			$response["user"]["address"] = $user['address'];
			$response["user"]["profile_pic"] = $user['profile_pic'];
			$response["user"]["updated_at"] = $convert->normalDateTime($user['modified']);
			header('Content-Type: application/json');
			echo json_encode($response);
		} else {
			// user failed to store
			$response["error"] = TRUE;
			header('HTTP/1.1 400 Bad Request', true, 400);
			$response["message"] = "Unknown error occurred in registration!";
			header('Content-Type: application/json');
			echo json_encode($response);
		}
	}
} else {
	$response["error"] = TRUE;
	$response["message"] = "Required parameters (first name, last name, contact, address,email, password,Class Id, FCM or Device ID) is missing!";
	header('Content-Type: application/json');
	header( 'HTTP/1.1 400 Bad Request', true, 400 );
	echo json_encode($response);
}

