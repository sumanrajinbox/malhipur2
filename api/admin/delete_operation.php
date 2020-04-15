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
$delete_operation=new Delete_operation();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$target=$data['target'];



if ($_SERVER['REQUEST_METHOD']==='POST'&& $data['id'] !="") {
    $id=$data['id'];

    switch($target) {
        case "class":
            $result=$delete_operation -> delete_class($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="class deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
        }

        break;
        case "chapter": $result=$delete_operation ->delete_chapter($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="chapter deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
        }

        break;
        case "user": $result=$delete_operation ->delete_user($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="user deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
        }

        break;
        case "fee": $result=$delete_operation ->delete_fee($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="fee deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);

        }

        break;
        case "exam_question": $result=$delete_operation ->delete_question($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="exam question deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);

        }

        break;
        case "subject": $result=$delete_operation ->delete_subject($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="subject deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);

        }

        break;
        case "exam_title_master": $result=$delete_operation ->delete_titile_master($id, $status=0);

        if($result==0) {

            $response["error"]=FALSE;
            $response["message"]="exam_title has been  deleted successfully";
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);

        }

        break;
        
    }//end switch

}

?>