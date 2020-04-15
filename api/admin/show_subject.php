<?php



// Allow from any origin

if (isset($_SERVER['HTTP_ORIGIN'])) {

	header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");

	header('Access-Control-Allow-Credentials: true');

	header('Access-Control-Max-Age: 86400');    // cache for 1 day

}



// Access-Control headers are received during OPTIONS requests

if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {



	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))

		header("Access-Control-Allow-Methods: GET, POST, OPTIONS");



	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))

		header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");



	exit(0);

}







include("config.php");

$conn = new Dbcon();

$sub = new Show_subject();



$response = array("error" => FALSE);

$data = json_decode(file_get_contents('php://input'), true);



if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if(isset($data['class_id']) && $data['class_id'] ){

        $subject_data = $conn->select_all_row("select 
        s.id as subject_id ,
         s.subjectName as subject_name
          from
           subject s 
           where 
           classid = '".$data['class_id']."' and  s.active=1 ");
        if ($subject_data){
        $response["message"] = "Successful";
        header('Content-Type: application/json');
        header('HTTP/1.1 200 OK', true, 200);
        $response["subject_data"] = $subject_data;
        echo json_encode($response);
        }

        else{

            $response["message"] = "subject not found ";

        header('Content-Type: application/json');

        header('HTTP/1.1 404 OK', true, 404);

        $response["subject_data"] = $subject_data;

        echo json_encode($response);

        }

    }

 



}