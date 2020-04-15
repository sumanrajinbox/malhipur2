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
		 $email = $Dbcon->select_one_row("SELECT email from users where id='".$row['user_id']."'");
           if($email && $data['role']=='yes')
		   {
			   
			   $subs=$Dbcon->select_one_row("select email from subscription where email='".$email['email']."'");
			   if($subs)
			   {
				  //update
			$Dbcon->only_query("UPDATE `subscription` SET `modified`='".date( "Y-m-d H:i:s" )."',`active`='1' WHERE email='".$email['email']."'"); 
			   }
			   else
			   {
				 //insert
			$Dbcon->only_query("INSERT INTO `subscription`(`id`, `email`, `modified`, `created`, `active`) VALUES (NULL,'".$email['email']."','".date( "Y-m-d H:i:s" )."','".date( "Y-m-d H:i:s" )."','1')");  
			   }
			   
			   
			    $response["error"] = FALSE;
				$response["message"]='Subscription Successfully Updated';
			header('Content-Type: application/json');
            echo json_encode($response);
		   }
		else
		{
			 	$subs=$Dbcon->select_one_row("select email from subscription where email='".$email['email']."'");
			   if($subs)
			   {
				  //update
			$Dbcon->only_query("UPDATE `subscription` SET `modified`='".date( "Y-m-d H:i:s" )."',`active`='0' WHERE email='".$email['email']."'"); 
				   
			$response["error"] = FALSE;
			$response["message"]='Subscription Successfully Updated';
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