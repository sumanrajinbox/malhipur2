<?php // Allow from any origin

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
$student_class = new Student_class();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$action = $data['action'];

// print_r($data);
// die;

if ($_SERVER['REQUEST_METHOD']==='POST'&& $action=="delete" && $data['class_id']!= "") {
    

    echo $delete_class=$student_class ->delete_data ($data['class_id'],"class","active",0) ;
    $response["error"]=FALSE;
    $response["message"]="success";
    header('Content-Type: application/json');
    header('HTTP/1.1 200 OK', true, 200);
    echo json_encode($response);
}


if ($_SERVER['REQUEST_METHOD']==='POST'&& $action=="add_class" && $data['class_name']!= ""&& $data['session']!= "") {
    $class_name = $data['class_name'];
    $session = $data['session'];

    $verify_class =$student_class->verify_data($class_name, $session);
    //print_r($verify_class);
    //die("hello i am die  ");
    if($verify_class) {

        $response["message"]="Class Already Exists!";
        header('Content-Type: application/json');
        header('HTTP/1.1 409 conflict', true, 409);
        echo json_encode($response);
    }

    else {
        $insert_class = $student_class->insert_class($class_name, $session) ;
        if($insert_class){
            $response["error"]=FALSE;
            $response["message"]="success";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response);
        }
    }

}