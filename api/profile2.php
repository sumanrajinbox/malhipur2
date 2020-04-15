<?php
include("config.php");
$Dbcon = new Myconn();
$convert = new Convert();

$data = $data = json_decode(file_get_contents('php://input'), true);
//print_r($data);
if (isset($data['auth_key'])) {
	$auth = $Dbcon->auth2($data['auth_key']);
	if ($auth) {
		//	print_r($auth);
		//Success
		
		$user = $Dbcon->select_one_row("SELECT 
    	p.id,
    	p.user_id,
    	p.first_name,
    	p.last_name,
    	p.email,
    	p.contact,
    	p.address,
    	p.profile_pic,
    	p.referral_code,
    	p.created,
		 rp.referral_price
FROM
    profile AS p
        LEFT JOIN
    referral_price AS rp ON p.referral_price = rp.id
WHERE
    p.user_id = '" . $auth['user_id'] . "' AND p.active = 1 
	AND rp.flag >0");
	
		// $user = $Dbcon->select_one_row("SELECT p.* , r.referral_price from profile as p left join referral_price as r on p.referral_price = r.id WHERE p.user_id= and p.active = 1 ");
		$response["error"] = FALSE;
		$response["message"] = "Success";
		$response["data"] = $user;
		header('Content-Type: application/json');
		echo json_encode($response);
	} else {
		//wrong Credentail
		$response["error"] = TRUE;
		$response["message"] = "Invalid Auth key";
		header('Content-Type: application/json');
		echo json_encode($response);
	}
} else {
	$response["error"] = TRUE;
	$response["message"] = "Required parameters (Auth Key) is missing!";
	header('Content-Type: application/json');
	echo json_encode($response);
}
