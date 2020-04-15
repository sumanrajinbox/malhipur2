<?php
include("config.php");
$Dbcon=new Dbcon();
$convert= new Convert();
$post = json_decode(file_get_contents('php://input'), true);

if(isset($post['auth_key']))
{
	$row=$Dbcon->select_one_row("select * from auth where auth_key='".$post['auth_key']."' and active='1'");
	if($row)
	{
		///Success
		$Dbcon->only_query("UPDATE `auth` SET `active`='0' WHERE auth_key='".$post['auth_key']."'");
			
			$response["error"] = FALSE;
			$response["message"]='Successfully Logout';
			header('Content-Type: application/json');
            echo json_encode($response);
			 
	}
	else{
		//wrong Credentail
	$response["error"] = TRUE;
	$response["message"] = "Invalid Auth key";
	header( 'HTTP/1.1 401 Unauthorized', true, 401 );
	header('Content-Type: application/json');
    echo json_encode($response);
	}
}
else{
	    $response["error"] = TRUE;
	$response["message"] = "Required parameters (Auth Key) is missing!";
	header( 'HTTP/1.1 400 Bad Request', true, 400 );
	header('Content-Type: application/json');
    echo json_encode($response);
}

?>