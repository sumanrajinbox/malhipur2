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
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$video_id=$data['video_id'];


$auth_result=$student_class->auth($data['auth_key']);

if ($_SERVER['REQUEST_METHOD']==='POST') {

    if($auth_result) {

        // $check_user=$student_class->select_one_row("select * from exam_user_log where user_id = '".$auth_result['user_id']."' and '".$video_id."'and status='1'");

        // if($check_user) {

        //     $sql_1='UPDATE `exam_user_log` SET end_time = "'.date("Y-m-d H:i:s").'" where video_id ="'.$check_user['video_id'].'"and user_id = "'.$check_user['user_id'].'"';
        //     $user_exam_log=$student_class->only_query($sql_1);
        //     // $response["response"]="Successful";
        //     // header('Content-Type: application/json');
        //     // header('HTTP/1.1 200 OK', true, 200);
        //     // echo json_encode($response);
        // }

        if($data['data']) {
            $count_data=count($data['data']);

            for($i=0; $i<$count_data; $i++) {
                $question_id=$data['data'][$i]['question_id'];
                $answer=$data['data'][$i]['answer'];
                $sql_2='select * from submit_exam where video_id = "'.$video_id.'" and user_id = "'.$auth_result['user_id'].'" and question_id = "'.$question_id.'"';
                $check_user_data=$student_class->select_all_row($sql_2);

                if(count($check_user_data)) {
                    $update_user_submited_data=$student_class->only_query('UPDATE
                        `submit_exam` SET `title_id`="0",
                        `video_id`="'.$video_id.'",
                        `user_id`="'.$auth_result['user_id'].'",
                        `question_id`="'.$question_id.'",
                        `answer`="'.$answer.'",
                        `modified`="'.date("Y-m-d H:i:s").'",
                        `status`="1"
                        WHERE question_id="'.$question_id.'"and video_id="'.$video_id.'"and user_id="'.$auth_result['user_id'].'"');
                    }
                    else {
                        $sql_insert_question='INSERT INTO `submit_exam`( video_id, `user_id`, `question_id`, `answer`, `modified`, `status`) VALUES ("'.$video_id.'","'.$auth_result['user_id'].'","'.$question_id.'","'.$answer.'","'.date("Y-m-d H:i:s").'",1)';
                        $store_user_data=$student_class->only_query($sql_insert_question);
                        //         $response["response"]="Successful";
                        //     header('Content-Type: application/json');
                        //     header('HTTP/1.1 200 OK', true, 200);
                        //    echo json_encode($response);

                    }
                }


                $result_gen=$student_class->topic_result_gen_logic($data['auth_key'], $video_id);

                $total_question=$result_gen['total_question'];
                $total_answer=$result_gen['total_answer'];
                $correct_answer=$result_gen['correct_answer'];
                $wrong_answer=$result_gen['wrong_answer'];

                $check_student_result=$student_class ->student_topic_result($data['auth_key'], $video_id);

                if( !$check_student_result) {
                   // echo "hello insert result ";
                    $sql_insert_result='INSERT INTO `student_result`(`video_id`, `user_id`, `total_question`, `Total_answer`, `correct`, `wrong`, `modified`, `status`) VALUES ("'.$video_id.'","'.$auth_result['user_id'].'","'.$total_question.'","'.$total_answer.'","'.$correct_answer.'","'.$wrong_answer.'","'.date("Y-m-d H:i:s").'",1)';
                    $insert_result=$student_class->only_query($sql_insert_result);
                    
                    $check_student_result2=$student_class ->student_topic_result($data['auth_key'], $video_id);
                    $topic_result_summary=$student_class->student_topic_result_summary($data['auth_key'], $video_id);

        
                    $response["result_data"]=[$check_student_result2];
                    $response["result_summary"]=$topic_result_summary;
                    header('Content-Type: application/json');
                    header('HTTP/1.1 200 OK', true, 200);
                    echo json_encode($response);

                }

                else {


                  //  echo "hello update result";
                  $sql_update_result='UPDATE `student_result`
                    SET
                    
                    `user_id` ="'.$auth_result['user_id'].'",
                    `video_id` = "'.$video_id.'",
                    `total_question` = "'.$total_question.'",
                    `total_answer` = "'.$total_answer.'",
                    `correct` = "'.$correct_answer.'",
                    `wrong` = "'.$wrong_answer.'",
                    `modified` = "'.date("Y-m-d H:i:s").'",
                    `status` = "1"
                    WHERE `video_id` = "'.$video_id.'" and user_id = "'.$auth_result['user_id'].'"
                    ';
                    $update_result=$student_class->only_query($sql_update_result);

                    $show_topic_result=$student_class ->student_topic_result($data['auth_key'], $video_id);
                    $show_topic_summary =$student_class->student_topic_result_summary($data['auth_key'], $video_id);

                    $response["message"]="welcome back........";
                    $response["result_data"]=[$show_topic_result];
                    $response["result_summary"]=$show_topic_summary;
                    header('Content-Type: application/json');
                    header('HTTP/1.1 200 OK', true, 200);
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