<?php //web api

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
$convert=new Convert();
$conn=new Dbcon();
$response=array("error"=> FALSE);
$all_data=file_get_contents('php://input');
$data=json_decode($all_data, true);

// $title_id = $_POST['title_id'];
// $class_id = $_POST['class_id'];
// $question = $_POST['question'];
// $option1 = $_POST['option1'];
// $option2 = $_POST['option2'];
// $option3 = $_POST['option3'];
// $option4 = $_POST['option4'];
// $flag = $_POST['flag'];
// $answer = $_POST['answer'];
// $modified = $_POST['modified'];



if ($_SERVER['REQUEST_METHOD']==='POST') {
function is_json($string, $return_data=false) {
    $data=json_decode($string);
    return (json_last_error()==JSON_ERROR_NONE) ? ($return_data ? $data : TRUE): FALSE;
}

if( ! is_json($all_data, $return_data=false)) {
    die("invalid json");
}
    $count_set=count($data);
   // print_r($data);
    //die;

    for ($i=0; $i < $count_set; $i++) {
        $title_id=$data[$i]['title_id'];
        $class_id=$data[$i]['class_id'];
        $subject_id=$data[$i]['subject_id'];
        $video_id=$data[$i]['video_id'];
        $question=$data[$i]['question'];
        $option1=$data[$i]['option1'];
        $option2=$data[$i]['option2'];
        $option3=$data[$i]['option3'];
        $option4=$data[$i]['option4'];
        $flag=$data[$i]['flag'];
        $answer=$data[$i]['answer'];

        $check_duplicate=$conn->select_all_row("select * from exam_question_setup where question= '".$question."' and option1 ='".$option1."' and option2 = '".$option2."'and option3 = '".$option3."' and option4 = '".$option4."'");

        $count_duplicate=count($check_duplicate);
        if($count_duplicate==0 
        && isset($class_id) && $class_id !==""
        && isset($question) && $question !==""
        && isset($option1) && $option1 !==""
        && isset($option2) && $option2 !==""
        && isset($option3) && $option3 !==""
        && isset($option4) && $option4 !==""
        && isset($flag) && $flag !==""
        && isset($answer) && $answer !==""

        ) {

            $sql=$conn->only_query('INSERT INTO `exam_question_setup`
(                   `title_id`,
                    `class_id`,
                    `subject_id`,
                    `video_id`,
                    `question`,
                    `option1`,
                    `option2`,
                    `option3`,
                    `option4`,
                    `flag`,
                    `answer`,
                    `modified`) VALUES ("'.$title_id.'",
                    "'.$class_id.'",
                    "'.$subject_id.'",
                    "'.$video_id.'",
                    "'.$question.'",
                    "'.$option1.'",
                    "'.$option2.'",
                    "'.$option3.'",
                    "'.$option4.'",
                    "'.$flag.'",
                    "'.$answer.'",
                    "'.date( "Y-m-d H:i:s" ).'") ');
if($sql) {
                    $response["error"]=FALSE;
                    $response["message"]=$data[$i]['question']." stored successfully";
                    header('HTTP/1.1 200 success', true, 200);
                    header('Content-Type: application/json');
                    echo json_encode($response, JSON_PRETTY_PRINT);
                }
            }

            else {
                // echo"<pre>";
                // print_r($data[$i]);
                // echo"<pre>";
                $response["error"]=TRUE;
                $response["message"]=$data[$i]['question']."Need required field";
                header('HTTP/1.1 400 bad request', true, 400);
                header('Content-Type: application/json');
                echo json_encode($response, JSON_PRETTY_PRINT);
            }
        }
    }

    if ($_SERVER['REQUEST_METHOD']==='GET') {

        $exam_question_setup=$conn->select_all_row("SELECT 
        etm.title_name,
        c.name as class_name,
        s.subjectName as subject_name,
        
        v.video_title as video_name,
        eqs.id as eqs_id,
        eqs.subject_id,
        eqs.video_id,
        eqs.question,
        eqs.option1,
        eqs.option2,
        eqs.option3,
        eqs.option4,
        eqs.answer,
        eqs.flag
        FROM
            exam_question_setup AS eqs
                LEFT JOIN
            exam_title_master AS etm ON eqs.title_id = etm.id
            LEFT JOIN
            class AS c ON c.id = eqs.class_id
            LEFT JOIN
            subject AS s ON s.id = eqs.subject_id
            LEFT JOIN
            video AS v ON v.id = eqs.video_id
           where eqs.flag >0
            
            ");

        if($exam_question_setup) {

            $response["error"]=FALSE;
            $response["message"]="success";
            $response["exam_question_setup"]=$exam_question_setup;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response);
        }

        else {
            $response["error"]=TRUE;
            $response["message"]="no record found";
            header('HTTP/1.1 404 Not Found', true, 404);
            header('Content-Type: application/json');
            echo json_encode($response);
        }
    }