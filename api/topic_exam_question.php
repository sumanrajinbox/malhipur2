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
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$auth_key=$data['auth_key'];
$video_id=$data['video_id'];

function check_auth($auth, $conn) {
    $auth_result=$conn->select_all_row("select * from auth where auth_key = '".$auth."' and active = 1");
    return $auth_result;
}

//echo "<pre>";
//print_r(check_auth($data['auth_key'],$conn));

if ($_SERVER['REQUEST_METHOD']==='POST') {

    if(check_auth($data['auth_key'], $conn)&& isset($video_id) && $video_id !=="") {

       $time_check = $conn ->select_one_row("select * from exam_setup as es where es.start_time ");
       $exam_question= $conn->select_all_row("SELECT 
       eq.id as question_id,
       eq.video_id,
       eq.question,
       eq.option1,
       eq.option2,
       eq.option3,
       eq.option4,
       eq.modified,
       eq.answer
   FROM
       exam_question_setup as eq
  
   WHERE
       video_id = '".$video_id."' and
       eq.question<>'' and
       eq.option1<>'' and
       eq.option2<>'' and
       eq.option3<>'' and
       eq.option4<>'' and
       eq.answer<>'' and
       eq.flag > 0
       ");
       $result=[];
        $serial = 1;
    foreach ( $exam_question as $key=> $value ) {
        $result [$key]=[
            'question_id'=>$value['question_id'],
            'question'=> $serial . '' . '.' . $value['question'],
            'option1'=>$value['option1'],
            'option2'=>$value['option2'],
            'option3'=>$value['option3'],
            'option4'=>$value['option4'],
            'modified'=>$value['modified'],
            'answer'=>$value['answer']
            
        ];
            $serial++;
        }
        
if($exam_question)
{
                $response["message"]="Successful";
                $response["video_id"]=$exam_question[0]["video_id"];

            //$response["data"]=$exam_question;
            $response["total_minutes"] =1;
            $response["total_seconds"] = 3600;
                $response["data"]=$result;
                header('Content-Type: application/json');
                header('HTTP/1.1 200 OK', true, 200);
                echo json_encode($response);
            }
            else {
                $response["message"]=" Data not found ";
                header('Content-Type: application/json');
                header('HTTP/1.1 404 OK', true, 404);
                $response["data"]=$exam_question;
                echo json_encode($response);
            }
        }

        else {
            $response["error"]=TRUE;
            $response["message"]="Unauthorized";
            header('HTTP/1.1 401 Unauthorized', true, 401);
            header('Content-Type: application/json');
            echo json_encode($response);
            die;
        }
    }