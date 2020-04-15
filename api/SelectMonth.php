<?php include("config.php");
$conn  = new Myconn();
$convert = new Convert();
$post = json_decode(file_get_contents('php://input'), true);

if (isset($post['auth_key'])) {
	$auth = $conn->auth2($post['auth_key']);
	if ($auth) {
	 	$user_id = $auth['user_id'];
	$sql_3 = 'SELECT distinct 
    m.id as monthid,
    m.monthName as Monthname
    ,if(f.fee>0,f.fee,"") as fee
	,cd.*
	FROM
    month as m 
	Left join course_details as cd on cd.user_id  = '.$user_id.' and cd.active =1
	 LEFT JOIN fee AS f ON m.id = f.monthid and f.classid = cd.class_id and f.active = 1
	 Inner join video as v on v.month_id = m.id and cd.class_id = v.class_id and  v.status =1 ';


		$cd  =  $conn->select_one_row('select * from course_details where user_id = "' . $user_id . '" and paid = 1');

		$course_month = explode(",", $cd['month_id']);
		$data = $conn->select_all_row($sql_3);
		$result = null;
		//	print_r($cd);
		foreach ($data as $dvalue) {
			if (in_array($dvalue['monthid'], $course_month)) {
				$payment_stauts = "true";
			} else {
				$payment_stauts = "false";
			}
			$result[] = ["monthid" => $dvalue['monthid'], "Monthname" => $dvalue['Monthname'], "fee" => $dvalue['fee'], "paid" => $payment_stauts];
		}

		//print_r($result);

		if ($result) {
			$response["error"] = FALSE;
			$response["message"] = 'Success';
			$response["data"] = $result;
			header('HTTP/1.1  200  success', true, 200);
			header('Content-Type: application/json');
			echo json_encode($response, true);
		} else {
			$response["error"] = TRUE;
			$response["message"] = "Data not found ";
			header('HTTP/1.1  404 No Content', true, 404);
			header('Content-Type: application/json');
			echo json_encode($response, JSON_PRETTY_PRINT);
		}
	} else {
		//wrong Credentail
		$response["error"] = TRUE;
		$response["message"] = "Invalid Auth key";
		header('HTTP/1.1 401 Unauthorized', true, 401);
		header('Content-Type: application/json');
		echo json_encode($response);
	}
} else {
	$response["error"] = TRUE;
	$response["message"] = "Required parameters (Auth Key) is missing!";
	header('HTTP/1.1 400 Bad Request', true, 400);
	header('Content-Type: application/json');
	echo json_encode($response);
}
