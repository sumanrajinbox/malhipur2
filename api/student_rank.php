<?php 
include("config.php");
$conn=new Myconn();
$student_rank_class=new Student_rank();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);

$auth_result=$conn->auth($data['auth_key']);

if ($_SERVER['REQUEST_METHOD']==='POST') {

    if($auth_result) {
$student_rank_result = $student_rank_class->top_rank($conn,$data['title_id']);

$response["top_result"]=$student_rank_result;
header('Content-Type: application/json');
header('HTTP/1.1 200 OK', true, 200);
echo json_encode($response);
      
    }
    else {
        $response["error"]=TRUE;
        $response["message"]="Invalid username or password";
        header('HTTP/1.1 401 Unauthorized', true, 401);
        header('Content-Type: application/json');
        echo json_encode($response);
    }

}























?>