<?php // Allow from any origin

if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}

include("config.php");
$update_operation = new Data_update();
$conn = new Myconn();
$response = array("error" => FALSE);
$data = json_decode(file_get_contents('php://input'), true);
$target = $data['target'];
$field = $data['field'];
//print_r($field);
if ($_SERVER['REQUEST_METHOD'] === 'POST' && $data['id'] != "") {
    $id = $data['id'];

    switch ($target) {
        case "student":
            $result =  $update_operation->update_student($conn, $id, ['fname' => null, 'lname' => null, 'email' => null, 'contact' => null, 'class' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;
        case "fee":
            $fee_result =  $update_operation->update_fee($conn, $id, ['amount' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $fee_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;
        case "subject":
            $subject_result =  $update_operation->update_subject($conn, $id, ['subject_name' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $subject_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;
        case "chapter":
            $chapter_result =  $update_operation->update_chapter($conn, $id, ['name' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $chapter_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;
        case "week_exam_question":
            $weq_result =  $update_operation->update_weq($conn, $id, ['question' => null, 'option1' => null, 'option2' => null, 'option3' => null, 'option4' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $weq_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;
        case "topic_exam_question":
            $topic_result =  $update_operation->update_topic($conn, $id, ['question' => null, 'option1' => null, 'option2' => null, 'option3' => null, 'option4' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $topic_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;

        case "week_exam_time":
            $wet_result =  $update_operation->update_wet($conn, $id, ['start_time' => null, 'end_time' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $wet_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;
        case "update_class":
            $class_result =  $update_operation->update_class($conn, $id, ['name' => null], $data['field']);
            $response["error"] = FALSE;
            $response["message"] = $class_result;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
            break;













        default:
            $response["error"] = true;
            $response["message"] = "invalid target parameter ";
            header('HTTP/1.1 404 bad', true, 404);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
    } //end switch

}
