<?php
include("config.php");
$Dbcon=new Dbcon();
$convert= new Convert();
$data=getallheaders();

if(isset($data['auth_key']))
{
	$row=$Dbcon->select_one_row("select * from auth where auth_key='".$data['auth_key']."' and active='1'");
	if($row)
	{
		
		$user_id=$row['user_id'];
		$post = json_decode(file_get_contents('php://input'), true);
		
		if(isset($post['name']) && isset($post['last_name']) && isset($post['dob']) && isset($post['height']) && isset($post['weight']) && isset($post['gender'])&& isset($post['profile_pic']))
		{
//			print_r($post);
			$newname=$user_id.".jpg";
			 $base=$post['profile_pic'];
     $binary=base64_decode($base);
    header('Content-Type: bitmap; charset=utf-8');
    $file = fopen("../profile_pic/".$newname, 'wb');
    fwrite($file, $binary);
    fclose($file);
    
			
			
			$data=$Dbcon->select_one_row("select user_id from profile where user_id='".$user_id."' and active='1'");
			if($data)
			{
				
				$data=$Dbcon->only_query("UPDATE `profile` SET `name`='".$post['name']."',`last_name`='".$post['last_name']."',`dob`='".$convert->MysqlDate($post['dob'])."',`height`='".$post['height']."',`weight`='".$post['weight']."',`gender`='".$post['gender']."',`profile_pic`='".$newname."',`modified`='".date( "Y-m-d H:i:s" )."' WHERE user_id='".$user_id."'");
				
					$response["error"] = FALSE;
    				$response["message"] = "Successful Profile Updated";
					header('Content-Type: application/json');
					echo json_encode($response);
				
				
			}
			else
			{
				//Insert				
				$data=$Dbcon->only_query("INSERT INTO `profile`(`id`, `user_id`, `name`, `dob`, `height`, `weight`, `gender`, `profile_pic`, `created`, `modified`, `active`) VALUES (NULL,'".$user_id."','".$post['name']."','".$convert->mysqlDate($post['dob'])."','".$post['height']."','".$post['weight']."','".$post['gender']."','".$newname."','".date( "Y-m-d H:i:s" )."','".date( "Y-m-d H:i:s" )."','1')");
				if($data)
				{
					$response["error"] = FALSE;
    				$response["message"] = "Successful Profile Updated";
					header('Content-Type: application/json');
					echo json_encode($response);
				}
				else
				{
					$response["error"] = TRUE;
					$response["message"] = "Oops Some thing went wrong!";
					header('Content-Type: application/json');
					echo json_encode($response);
				}
				
			}
			
		}
		else{
				$response["error"] = TRUE;
				$response["message"] = "Required parameters (First Name, Last name, Height, Weight, DOB, Gender, Profile Picture) is missing!";
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
    $response["message"] = "Required parameters (Auth Key) is missing!";
	header('Content-Type: application/json');
    echo json_encode($response);
}

?>