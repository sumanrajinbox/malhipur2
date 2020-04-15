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
//$student_class=new Dbcon();
$student_class=new Student_result();
$submit_exam_class=new Submit_exam();
$exam_title_class=new Exam_title();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$title_id=$data['title_id'];

$auth_result=$student_class ->auth($data['auth_key']);
$user_id=$auth_result['user_id'];

if ($_SERVER['REQUEST_METHOD']==='POST') {

    if($auth_result) {

        $check_user=$student_class->select_one_row("select * from exam_user_log where user_id = '".$auth_result['user_id']."' and '".$title_id."'and status='1'");

        if($check_user) {
            $title_data=$exam_title_class->get_title_data($title_id);
            // echo "title_time --- ".$title_data['end_time']."\n";
            //echo "current time -- ".date('Y-m-d H:i:s')."\n";
            $current_time=strtotime(date('Y-m-d H:i:s'));
            $title_end_time=strtotime($title_data['end_time']);

            if($current_time>$title_end_time) {
                $end_time=$title_data['end_time'];
                $msg="submit with default exam end time ---> ".$end_time;
            }

            else {
                $end_time=date('Y-m-d H:i:s');
            }

            $user_exam_log=$submit_exam_class->update_exam_log($title_id, $auth_result['user_id'], $end_time);
            // $response["exam_end_time_status "]="update Successful ".$msg;
            // header('Content-Type: application/json');
            // header('HTTP/1.1 200 OK', true, 200);
            //   echo json_encode($response);
        }

        if($data['data']) {
            $count_data=count($data['data']);

            //  echo $count_data;
            for($i=0; $i<$count_data; $i++) {

                $question_id=$data['data'][$i]['question_id'];
                $answer=$data['data'][$i]['answer'];

                $verify_submition_data=$submit_exam_class->verify_submition_data ($title_id, $user_id, $question_id);

                if($verify_submition_data) {
                    // $response["error"]=TRUE;
                    // $response["message"]="Already submited ";
                    // header('HTTP/1.1 409 Conflict', true, 409);
                    // header('Content-Type: application/json');
                    // echo json_encode($response);
                    //  die;
                }

                else {
                    $store_user_data=$student_class->only_query('INSERT INTO `submit_exam`( `title_id`, `user_id`, `question_id`, `answer`, `modified`, `status`) VALUES ("'.$title_id.'","'.$auth_result['user_id'].'","'.$question_id.'","'.$answer.'","'.date("Y-m-d H:i:s").'",1)');
                    //         $response["response"]="Successful";
                    //     header('Content-Type: application/json');
                    //     header('HTTP/1.1 200 OK', true, 200);
                    //    echo json_encode($response);
                }
            }

            $genrate_student_result=$student_class->generate_week_result($data['auth_key'], $title_id);



            $check_student_result2=$student_class ->student_week_result($data['auth_key'], $title_id);
            $student_week_result_summary=$student_class->student_week_result_summary($data['auth_key'], $title_id);

            if ($check_student_result2) {
                $response["result_generate"]="result generated";
                $response["result_data"]=[$check_student_result2];
                $response["result_summary"]=$student_week_result_summary;
                header('Content-Type: application/json');
                header('HTTP/1.1 200 OK', true, 200);
                echo json_encode($response);
            }

            else {
                $response["error"]=TRUE;
                $response["message"]="No result data found ";
                header('HTTP/1.1 404 Not Found', true, 404);
                header('Content-Type: application/json');
                echo json_encode($response);

            }


        }
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