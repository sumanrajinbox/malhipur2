<?php

// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}

include("config.php");
$student_class=new Student_result();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
if (isset($data['video_id'])) {
    $video_id=$data['video_id'];
}
if (isset($data['title_id'])) {
    $title_id=$data['title_id'];
}
if(isset($data['action'])) {
    $action=$data['action'];
}
else {
    $action="";
}
$post_data=null;
$week_result=null;
$topic_result=null;
//die("die function ");
if ($_SERVER['REQUEST_METHOD']==='POST') {
 
        if ($action == "top_result" && $title_id != "") {
            $top_result = $student_class->top_result_admin($title_id);
            if($top_result){
             $i = 1;
            foreach($top_result as $tr){         
                    $top_result_data[] = array(
                        'Full_name' => $tr['Full_name'],
                        'title_name' => $tr['title_name'],
                        'email' => $tr['email'],
                        'user_id' => $tr['user_id'],
                        'contact' => $tr['contact'],
                    'percentage' => $tr['percentage'],
                    'used_time' => $tr['used_time'],
                    'exam_start_time' => $tr['exam_start_time'],
                    'exam_end_time' => $tr['exam_end_time'],
                    'title_id' => $tr['title_id'],
                    'rank' => $i
                    );
                    $i++ ;    
            }
            } else {
                $top_result_data = [];
            }
           
            $response["top_result"] = $top_result_data;
            header('Content-Type: application/json');
            header('HTTP/1.1 200 OK', true, 200);
            echo json_encode($response);
            die;
        } else {
            // $response["error"] = TRUE;
            // $response["message"] = "title_id may be missing ";
            // header('HTTP/1.1 400 bad request', true, 400);
            // header('Content-Type: application/json');
            // echo json_encode($response);
        }
  
        if($action=="all_attend_exam") {
            $attend_result=$student_class->all_attend_exam($data['auth_key']);
            if ($attend_result) {
                $response["data"]=$attend_result;
            }
            else {
                $response["data"]="No Record Found";
            }
            header('Content-Type: application/json');
            header('HTTP/1.1 200 OK', true, 200);
            echo json_encode($response);
            die;
        }
        if(isset($video_id)&& !empty($video_id)) {
            $topic_result=$student_class ->student_topic_result($data['auth_key'], $video_id);
            $topic_result_summary=$student_class->student_topic_result_summary($data['auth_key'], $video_id);
            if($topic_result) {
                $response["topic_result_data"]=$topic_result;
                $response["topic_result_summary"]=$topic_result_summary;
                header('Content-Type: application/json');
                header('HTTP/1.1 200 OK', true, 200);
                echo json_encode($response);
            }
            else {
                $response["message"]="No Data Found";
                header('Content-Type: application/json');
                header('HTTP/1.1 200 OK', true, 200);
                echo json_encode($response);
            }
        }
        if(isset($title_id)&& !empty($title_id)) {
            $week_result=$student_class ->student_week_result($data['auth_key'], $title_id);
            $week_result_summary=$student_class->student_week_result_summary($data['auth_key'], $title_id);
            if($week_result) {
                $response["result_data"]=[$week_result];
                $response["result_summary"]=$week_result_summary;
            }
            header('Content-Type: application/json');
            header('HTTP/1.1 200 OK', true, 200);
            echo json_encode($response);
        }
        else {
            $response["message"]="No Data Found";
            header('Content-Type: application/json');
            header('HTTP/1.1 200 OK', true, 200);
            echo json_encode($response);

        }
    

}
