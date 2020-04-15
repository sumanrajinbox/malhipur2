<?php
include("config.php");
$Dbcon=new Dbcon();
$convert= new Convert();
$data=getallheaders();
$post = json_decode(file_get_contents('php://input'), true);

if(strtoupper($_SERVER['REQUEST_METHOD']) === 'POST') { // if form submitted with post method
if(isset($data['auth_key']) && isset($post['stretch']) && isset($post['minutes']) && isset($post['days']) && !empty($post['stretch']) && !empty($post['minutes']) && !empty($post['days']))
{
	$row=$Dbcon->select_one_row("select user_id from auth where auth_key='".$data['auth_key']."' and active=1");
	if($row)
	{
		///Success
		
		$userid=$Dbcon->select_one_row("select user_id from user_goal where user_id=".$row['user_id']." and active='1'");
		
	if($userid)
	{
		
		$Dbcon->only_query("UPDATE `user_goal` SET `stretch`='".$post['stretch']."',`minute`='".$post['minutes']."',`days`='".$post['days']."',`dated`='".date( "Y-m-d H:i:s" )."' WHERE user_id='".$row['user_id']."'");
		
		$response["error"] = FALSE;
    	$response["message"] = "Goal Updated";
		$response["stretch"] = $post['stretch'];
    	$response["minutes"] = $post['minutes'];
    	$response["days"] = $post['days'];
				
	header('Content-Type: application/json');
    echo json_encode($response);
	}
		else
		{
			$Dbcon->only_query("INSERT INTO `user_goal`(`goal_id`, `user_id`, `stretch`, `minute`, `days`, `dated`, `active`) VALUES (NULL,'".$row['user_id']."','".$post['stretch']."','".$post['minutes']."','".$post['days']."','".date( "Y-m-d H:i:s" )."','1')");
		$response["error"] = FALSE;
    	$response["message"] = "Goal Set";
		$response["stretch"] = $post['stretch'];
    	$response["minutes"] = $post['minutes'];
    	$response["days"] = $post['days'];
				
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
    $response["message"] = "Required parameters (Auth Key, Stretch, Minutes, Days) is missing or Empty for POST method";
	header('Content-Type: application/json');
    echo json_encode($response);
}
}

/////////////PUT Method////////////////////

//if(strtoupper($_SERVER['REQUEST_METHOD']) === 'PUT') { // if form submitted with post method
// if(isset($data['auth_key']) && isset($post['stretch']) && isset($post['minutes']) && isset($post['days']) && !empty($post['stretch']) && !empty($post['minutes']) && !empty($post['days']))
//{
//	$row=$Dbcon->select_one_row("select user_id from auth where auth_key='".$data['auth_key']."' and active=1");
//	if($row)
//	{
//		///Success
//		$response["error"] = FALSE;
//    	$response["message"] = "Successful Updated";		
//				
//	header('Content-Type: application/json');
//    echo json_encode($response); 
//	}
//	else{
//		//wrong Credentail
//	$response["error"] = TRUE;
//    $response["message"] = "Invalid Auth key";
//	header('Content-Type: application/json');
//    echo json_encode($response);
//	}
//}
//else{
//	    $response["error"] = TRUE;
//    $response["message"] = "Required parameters (Auth Key, Stretch, Minutes, Days) is missing or Empty for PUT method";
//	header('Content-Type: application/json');
//    echo json_encode($response);
//}}

/////////Get Method///////////
if(strtoupper($_SERVER['REQUEST_METHOD']) === 'GET') { // if form submitted with post method
    if(isset($data['auth_key']) && !empty($data['auth_key']))
{
	$row=$Dbcon->select_one_row("select user_id from auth where auth_key='".$data['auth_key']."' and active=1");
	if($row)
	{
		///Success
		
		$data=$Dbcon->select_one_row("SELECT * from user_goal where user_id='".$row['user_id']."'");
		if($data)
		{
				$response["error"] = FALSE;
    	$response["message"] = "Goal Set";
    	$response["stretch"] = $data['stretch'];
    	$response["minutes"] = $data['minute'];
    	$response["days"] = $data['days'];
			
				
	header('Content-Type: application/json');
    echo json_encode($response);
		}
		else
		{
				$response["error"] = FALSE;
    	$response["message"] = "Goal not set";		
				
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
    $response["message"] = "Required parameters (Auth Key) is missing or Empty For GET method";
	header('Content-Type: application/json');
    echo json_encode($response);
}}
?>