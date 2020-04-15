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
$conn=new Dbcon();
$convert=new Convert();
$response = array("error" => FALSE);
$data = json_decode(file_get_contents('php://input'), true);

function check_auth($auth,$conn){
    
    $auth_result = $conn->select_all_row("select * from auth where auth_key = '".$auth."' and active = 1");

        return $auth_result; 
   
      
   
}
 //echo "<pre>";
 //print_r(check_auth($data['auth_key'],$conn));

if(check_auth($data['auth_key'],$conn)){
    echo count(check_auth($data['auth_key'],$conn));
   
}
else {
    $response["error"] = TRUE;
	$response["message"] = "Invalid auth_key";
	header( 'HTTP/1.1 401 Unauthorized', true, 401 );	
	header('Content-Type: application/json');
    echo json_encode($response); 
    die;
}
if ($_SERVER['REQUEST_METHOD']==='GET') {

    $row=$conn->select_all_row("SELECT 
   es.id,
   es.title_id,
   es.class_id,
   es.subject_id,
   es.video_id,
   es.question,
   es.option1,
   es.option2,
   es.option3,
   es.option4,
   es.flag,
   es.answer,
   es.modified
FROM
    exam_question_setup AS es
WHERE
        es.flag = 1 
        AND es.title_id ='".$data['title_id']."'
        AND es.title_id <> ''
        AND es.question <> ''
        AND es.option1 <> ''
        AND es.option2 <> ''
        AND es.option3 <> ''
        AND es.option4 <> ''
        AND es.answer <> ''
");
if(count($row)){
    $response["message"]="Successful";
    $response["data"]=$row;
    header('Content-Type: application/json');
    header('HTTP/1.1 200 OK', true, 200);
    echo json_encode($response);
}else{
        $response["message"] = " Data not found ";
        header('Content-Type: application/json');
        header('HTTP/1.1 404 OK', true, 404);
        $response["data"] = $row;
        echo json_encode($response);
}




}