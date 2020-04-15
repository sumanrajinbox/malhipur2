<?php // Allow from any origin

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
$conn = new Week_exam();
$title_class = new Exam_title();
$response = array("error" => FALSE);
$data = json_decode(file_get_contents('php://input'), true);
$auth_key = $data['auth_key'];
$title_id = $data['title_id'];
$auth = $conn->auth2($auth_key);

$user_id = $auth['user_id'];
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($auth && isset($title_id) && $title_id !== "") {
        $check_user = $conn->student_exam_attendance($user_id, $title_id);
        $title_data = $title_class->get_title_data($title_id);
        $current_time = date("Y-m-d H:i:s");
        $exam_start_time = $title_data['start_time'];
        $exam_end_time = $title_data['end_time'];
        //print_r($title_data);
        // echo "current_ time from server -> ".  $current_time = strtotime($current_time);
        // echo "\n";
        // echo"exam_start_time ". $exam_start_time = strtotime($exam_start_time);
        // echo "\n";
        // echo"exam_end_time  ". $exam_end_time = strtotime($exam_end_time);
        // echo "\n";
        // echo "conv reformated server current_time --> ".  date('Y-m-d H:i:s', $current_time);
        // echo "\n";
        // echo "conv reformated server title_start_time --> ". date('Y-m-d H:i:s', $exam_start_time);
        // echo "\n";
        // echo "conv reformated server title_end_time --> ".  date('Y-m-d H:i:s', $exam_end_time);
        // echo "\n";
        // echo "$current_time>= $exam_start_time && $current_time <= $exam_end_time";
        // echo "\n";
        $current_time = strtotime($current_time);
        $exam_start_time = strtotime($exam_start_time);
        $exam_end_time = strtotime($exam_end_time);

        //=================================================================================================================================
        $exam_start_month = ltrim(date("m", $exam_start_time), '0');
        $exam_end_month = ltrim(date("m", $exam_end_time), '0');
        $exam_end_month = ltrim(date("m", $exam_end_time), '0');
        $current_date_month = ltrim(date("m", $current_time), '0');

        $payment_data = $conn->select_one_row('select * from course_details where user_id = "' . $auth['user_id'] . '" and active = 1');
        $student_paid_month = explode(",", $payment_data['month_id']);
       // print_r($student_paid_month);
        $all_month = [];
        for ($c = $exam_start_month; $c <= $exam_end_month; $c++) {
            if (in_array($c, $student_paid_month) && $current_date_month == $c) {
                $all_month[] = $c;
            }
        }
function Check_payment($all_month,$title_data){
        if ($all_month) {
            $title_data = $title_data;
           return  true;
        } else {
            $title_data = false;
            return false;
            //die();
        }
    }
             $check_payment = Check_payment($all_month,$title_data);
        if ($current_time >= $exam_start_time && $current_time <= $exam_end_time) {
            if($check_payment == false){
                $response["error"] = TRUE;
                $response["message"] = "This month is not subscribed ";
                header('HTTP/1.1 404 no exam available', true, 404);
                header('Content-Type: application/json');
                echo json_encode($response);
                $title_data = false;
                die;
            }
           // $title_data = $title_data;
        } 
       else {
            if ($check_payment == false) {
                $payment_error = "and This month is not subscribed ! ";
             //   $title_data = false;
            }  else{
                $payment_error = "";
            }
            $title_data = false;
            $response["error"] = TRUE;
            $response["message"] = "no exam available ".$payment_error;
            header('HTTP/1.1 404 no exam available', true, 404);
            header('Content-Type: application/json');
            echo json_encode($response);
             die;
        }
        if ($title_data) {
            if (!$check_user) {
                function total_time($title_data)
                {
                    $current_time = strtotime(date('Y-m-d H:i:s'));
                    $title_end_time = strtotime($title_data['end_time']);
                    if ($current_time < $title_end_time) {
                        $time_diff = ($title_end_time - $current_time);
                        // echo $time_diff."\n";
                        $total_minute = floor(($time_diff) / 60);
                        $total_seconds = floor(($time_diff));
                        return $total_time = [
                            'total_minutes' => $total_minute,
                            'total_seconds' => $total_seconds
                        ];
                    } else {
                        return $total_time = [
                            'total_minutes' => 0,
                            'total_seconds' => 0
                        ];
                    }
                }
                $total_time = total_time($title_data);
                $insert_exam_log=$conn->insert_exam_log($title_id, $video_id=0, $user_id, date('Y-m-d H:i:s'), $title_data['end_time']) or die("exam log error");
                $result = [];
                $exam_question = $conn->week_exam_question($title_id);
                foreach ($exam_question as $key => $value) {
                    $result[$key] = [
                        'question_id' => $value['id'],
                        'question' => $value['question'],
                        'option1' => $value['option1'],
                        'option2' => $value['option2'],
                        'option3' => $value['option3'],
                        'option4' => $value['option4'],
                        'modified' => $value['modified'],
                        'answer' => $value['answer']
                    ];
                }
                if ($exam_question) {
                    $response["message"] = "Successful";
                    $response["title_id"] = $exam_question[0]["title_id"];
                    $response["title_name"] = $exam_question[0]["title_name"];
                    $response["total_minutes"] = $total_time['total_minutes'];
                    $response["total_seconds"] = $total_time['total_seconds'];
                    $response["start_time"] = date('Y-m-d H:i:s');
                    $response["end_time"] = $title_data['end_time'];
                    $response["data"] = $result;
                    header('Content-Type: application/json');
                    header('HTTP/1.1 200 OK', true, 200);
                    echo json_encode($response);
                } else {
                    $response["message"] = " Data not found ";
                    header('Content-Type: application/json');
                    header('HTTP/1.1 404 OK', true, 404);
                    $response["data"] = $exam_question;
                    echo json_encode($response);
                }
            } else {
                $response["error"] = TRUE;
                $response["message"] = "you are already attended the exam  ";
                header('HTTP/1.1 409 you Already attended the exam', true, 409);
                header('Content-Type: application/json');
                echo json_encode($response);
                die;
            }
        } 

        
    } else {
        $response["error"] = TRUE;
        $response["message"] = "Unauthorized";
        header('HTTP/1.1 401 Unauthorized', true, 401);
        header('Content-Type: application/json');
        echo json_encode($response);
        die;
    }
}
