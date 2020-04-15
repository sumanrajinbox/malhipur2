<?php include("config.php");
$Dbcon=new Dbcon();
$convert=new Convert();
$post=json_decode(file_get_contents('php://input'), true);
//print_r ($post);

if(isset($post['auth_key']) && isset($post['month_id'])) {

	$row=$Dbcon->select_one_row("select * from auth where auth_key='".$post['auth_key']."' and active='1'");

	if($row) {
		///Success
		$user_id=$row[ 'user_id'];
		$class_id=$Dbcon->select_one_row("select class_id from course_details where user_id='".$user_id."'");
		//print_r($class_id);
		//$sql1 = "select * from subject where classid='".$class_id['class_id']."' and month_id='".$post['month_id']."'  and active=1";

		$sql2="SELECT DISTINCT
s.* FROM subject as s LEFT join video as v on v.subject_id=s.id and v.class_id=s.classid WHERE s.classid='".$class_id['class_id']."'AND s.month_id='".$post['month_id']."'AND s.active=1 and v.status=1";

		$data=$Dbcon->select_all_row($sql2);

		// echo "select * from subject where classid='".$class_id."' and active=1";
		if($data) {
			$response["error"]=FALSE;
			$response["message"]='Successfull';
			$response["data"]=$data;
			header('Content-Type: application/json');
			echo json_encode($response);
		}

		else {
			$response["error"]=TRUE;
			$response["message"]='No Data Found ';
			$response["data"]=$data;
			header('HTTP/1.1 404 Subject Not Found', true, 404);

			header('Content-Type: application/json');
			echo json_encode($response);
		}


	}

	else {
		//wrong Credentail
		$response["error"]=TRUE;
		$response["message"]="Invalid Auth key";
		header('HTTP/1.1 401 Unauthorized', true, 401);
		header('Content-Type: application/json');
		echo json_encode($response);
	}
}

else {
	$response["error"]=TRUE;
	$response["message"]="Required parameters (Auth Key) is missing!";
	header('HTTP/1.1 400 Bad Request', true, 400);
	header('Content-Type: application/json');
	echo json_encode($response);
}

?>