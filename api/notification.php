<?php
include("config.php");
$Dbcon=new Dbcon();
$convert= new Convert();
$data=getallheaders();
if(isset($data['auth_key'])&& isset($data['role']))
{
	$row=$Dbcon->select_one_row("select * from auth where auth_key='".$data['auth_key']."' and active='1'");
	if($row)
	{
		///Success
	
		 $email = $Dbcon->select_one_row("SELECT email,id from users where id='".$row['user_id']."'");
           if($email && $data['role']=='yes')
		   {
			   
			   $user_id=$Dbcon->select_one_row("select user_id from notification where user_id='".$email['id']."'");
			   
			   if($user_id)
			   {
				  //update
			$Dbcon->only_query("UPDATE `notification` SET `modified`='".date( "Y-m-d H:i:s" )."',`active`='1' WHERE user_id='".$email['id']."'"); 
			   }
			   else
			   {
				   
				 //insert
			$Dbcon->only_query("INSERT INTO `notification`(`id`, `user_id`, `modified`, `created`, `active`) VALUES (NULL,'".$email['id']."','".date( "Y-m-d H:i:s" )."','".date( "Y-m-d H:i:s" )."','1')");  
			   }
			   
			   
			    $response["error"] = FALSE;
				$response["message"]='Notification Successfully Updated';
			header('Content-Type: application/json');
            echo json_encode($response);
		   }
		else
		{
			 	$user_id=$Dbcon->select_one_row("select user_id from notification where user_id='".$email['id']."'");
			   if($user_id)
			   {
				  //update
			$Dbcon->only_query("UPDATE `notification` SET `modified`='".date( "Y-m-d H:i:s" )."',`active`='0' WHERE user_id='".$email['id']."'"); 
				   
			$response["error"] = FALSE;
			$response["message"]='Notification Successfully Updated';
			header('Content-Type: application/json');
            echo json_encode($response);
			   }
			
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
    $response["message"] = "Required parameters (Auth Key) is missing!";
	header('Content-Type: application/json');
    echo json_encode($response);
}

?>