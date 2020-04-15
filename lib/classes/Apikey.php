<?php 
require_once("Dbcon.php");
class Apikey
{
	public function apigen($id,$fcm,$deviceid,$email)
	{
		$Dbcon= new Dbcon();
		$authkey=md5($email.date("Y-m-d H:i:s"));
		
		$result=$Dbcon->select_one_row("select * from auth where user_id='".$id."' and device_id='".$deviceid."' and active='1'");
		if(!$result)
		{
			//echo "insert";
			$api=$Dbcon->only_query("INSERT INTO `auth`(`id`, `user_id`, `fcm`, `device_id`, `auth_key`, `dated`, `active`) VALUES (NULL,'".$id."','".$fcm."','".$deviceid."','".$authkey."','".date( "Y-m-d H:i:s" )."','1')");
			
		}
		else{
			//echo "update";
			
			$Dbcon->only_query("UPDATE `auth` SET `fcm`='".$fcm."',`auth_key`='".$authkey."',`dated`='".date("Y-m-d H:i:s")."' WHERE user_id='".$id."' and device_id='".$deviceid."'");
		}
		
	return $authkey;
	}
	
}

?>