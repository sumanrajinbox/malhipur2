<?php // Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
	header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Max-Age: 86400'); // cache for 1 day
}
// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
	exit(0);
}
include("config.php");
$Dbcon = new Dbcon();
$apikey = new Apikey();
$convert = new Convert();
$data = getallheaders();
$post = json_decode(file_get_contents('php://input'), true);

		///App login
		if (isset($post['email']) && isset($post['password'])) {
			$email = $post['email'];
			$password = $post['password'];
			$row = $Dbcon->select_one_row("select * from users where email='" . $email . "' and password='" . md5($password) . "' and active=1");
			//echo "select * from users where email='".$email."' and password='".md5($password)."' and active=1";
			//print_r($row);
			if ($row) {
			//	$apikey->apigen($row['id'], $fcm, $deviceid, $email);
				$user = $Dbcon->select_one_row("SELECT users.id,users.email,users.created,profile.first_name,profile.last_name,profile.contact,profile.address,profile.profile_pic,profile.modified,profile.referral_code,auth.auth_key FROM users LEFT JOIN profile on users.id=profile.user_id LEFT JOIN auth on users.id=auth.user_id WHERE users.id='" . $row['id'] . "'  and users.active='1' and auth.active='1'");
				// print_r($user);
				$profilepic = "";
				$dob = "";
				if ($user['profile_pic']) {
					$profilepic = $convert->picbase($user['profile_pic']);
				}
				$response["error"] = FALSE;
				$response["message"] = "Successful login";
				$response["auth_key"] = $user['auth_key'];
				$response["user"]["uid"] = $user['id'];
				$response["user"]["first_name"] = $user['first_name'];
				$response["user"]["last_name"] = $user['last_name'];
				$response["user"]["email"] = $user['email'];
				$response["user"]["contact"] = $user['contact'];
				$response["user"]["address"] = $user['address'];
				$response["user"]["profile_pic"] = $profilepic;
				$response["user"]["referral_code"] = $user['referral_code'];
				$response["user"]["updated_at"] = $convert->normalDateTime($user['modified']);
				header('Content-Type: application/json');
				header('HTTP/1.1 200 OK', true, 200);
				echo json_encode($response);
			} else {
				$response["error"] = TRUE;
				$response["message"] = "Invalid username or password";
				header('HTTP/1.1 401 Unauthorized', true, 401);
				header('Content-Type: application/json');
				echo json_encode($response);
			}
		} else {
			$response["error"] = TRUE;
			$response["message"] = "Required parameters (email or password) is missing!";
			header('HTTP/1.1 401 Unauthorized', true, 401);
			header('Content-Type: application/json');
			echo json_encode($response);
		}
