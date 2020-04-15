<?php 
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}
// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD']=='OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}

include("config.php");
$conn=new Exam_title();
$week_exam_class=new Week_exam();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$auth_key=$data['auth_key'];
$date=date('Y-m-d H:i:s');
$auth=$conn->auth($auth_key);

if ($_SERVER['REQUEST_METHOD']==='POST') {
    if($auth) {
        $exam_title=$conn->get_auth_title($auth_key);
        if($exam_title){
        $result=[];
        foreach($exam_title as $key=>$value){
          //  print_r($value);
           // echo $exam_title['title_id'];
           // $check_user=$week_exam_class ->student_exam_attendance($auth['user_id'], $value['title_id']);
           $check_user = false;
             if (!$check_user){
                 $result[] = $value;
             }
             else{
                $response["error"]=TRUE;
                $response["message"]="you already attended the exam ";
                header('HTTP/1.1 409 you Already attended the exam', true, 409);
                header('Content-Type: application/json');
             }
        } 
       // echo json_encode($response);         
        if($result){
            $response["message"]="Successful";
            $response["data"]=$result;
            header('Content-Type: application/json');
            header('HTTP/1.1 200 OK', true, 200);
            echo json_encode($response);
        }
     }
        else {
            $response["data"]=[];
            $response["message"]=" Data not found ";
            header('Content-Type: application/json');
            header('HTTP/1.1 404 No exam title available ', true, 404);
            $response["data"]=$exam_title;
            echo json_encode($response);
        }
    }
    else {
        $response["error"]=TRUE;
        $response["message"]="Invalid auth_key";
        header('HTTP/1.1 401 Unauthorized', true, 401);
        header('Content-Type: application/json');
        echo json_encode($response);
        die;
    }
}