<?php
include("config.php");
$Dbcon=new Dbcon();
$convert= new Convert();
$data=getallheaders();
if(isset($data['auth_key'])&& isset($data['old_password']) && isset($data['new_password']))
{
	$row=$Dbcon->select_one_row("select * from auth where auth_key='".$data['auth_key']."' and active='1'");
	if($row)
	{
		///Success
		$user_id=$row['user_id'];
		$old_password=$data['old_password'];
		$new_password=$data['new_password'];
		$pass=$Dbcon->select_one_row("SELECT password FROM `users` WHERE password='".md5($old_password)."' and id='".$user_id."' and active='1'");
		if($pass)
		{
			//Success
			$Dbcon->only_query("UPDATE `users` SET `password`='".md5($new_password)."',`modified`='".date( "Y-m-d H:i:s" )."' WHERE id='".$user_id."'");
			$response["error"] = FALSE;
			$response["message"]='Password Successfully Changed';
			header('Content-Type: application/json');
            echo json_encode($response);
		}
		else
		{
			//old password not matched	
	$response["error"] = TRUE;
    $response["message"] = "Invalid Password";
	header('Content-Type: application/json');
    echo json_encode($response);
		}
			 
	}
	else{
		//wrong Credentail
	$response["error"] = TRUE;
    $response["message"] = "Invalid Auth key";
	header('Content-Type: application/json');
    echo json_encode($response);
	}
}
else{
	    $response["error"] = TRUE;
    $response["message"] = "Required parameters (Auth Key, Old Password and New Password) is missing!";
	header('Content-Type: application/json');
    echo json_encode($response);
}

?>