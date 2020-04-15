<?php
include("config.php");
$Dbcon=new Dbcon();
$convert= new Convert();
$data=getallheaders();
if(isset($data['otp']) && isset($data['email']) && isset($data['password']))
{
	$row=$Dbcon->select_one_row("select email,id from users where email='".$data['email']."' and active='1'");
	if($row)
	{
		$user_id= $row['id'];
		///Success
		$otpvalue=$Dbcon->select_one_row("select otp from forgot_password where user_id='".$user_id."' and otp='".$data['otp']."' and active='1'");
		
		if($otpvalue)
		{
			$pass=$data['password'];
			$Dbcon->only_query("UPDATE `forgot_password` SET `active`='0' WHERE user_id='".$user_id."' and otp='".$data['otp']."'");
			$password=$Dbcon->only_query("UPDATE `users` SET `password`='".md5($pass)."' WHERE id='".$user_id."'");
			//echo "UPDATE `forgot_password` SET `active`='1' WHERE user_id='".$user_id."' and otp='".$data['otp']."'";
			
//			if($password)
//			{
	$response["error"] = FALSE;
    $response["message"] = "Successfully Password changed ";	
	header('Content-Type: application/json');
    echo json_encode($response);
//			}
//			else
//			{
//	$response["error"] = TRUE;
//    $response["message"] = "Oops Something went wrong ";
//		
//	header('Content-Type: application/json');
//    echo json_encode($response);
//			}
			
		}
		else
		{
	$response["error"] = TRUE;
    $response["message"] = "Invalid OTP";
		
	header('Content-Type: application/json');
    echo json_encode($response);
		}
			
		
	}
	else{
		//wrong Credentail
	$response["error"] = TRUE;
    $response["message"] = "No Account associated with this email";
	header('Content-Type: application/json');
    echo json_encode($response);
	}
}
else{
	 $response["error"] = TRUE;
    $response["message"] = "Required parameters (Email,OTP,Password) is missing!";
	header('Content-Type: application/json');
    echo json_encode($response);
}

?>