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
$data=json_decode(file_get_contents('php://input'), true);

$title_id=$data['title_id'];
$start_time=$data['start_time'];
$end_time=$data['end_time'];

if ($_SERVER['REQUEST_METHOD']==='POST') {

    $check_exam_setup=$conn->select_one_row("select * from exam_setup where title_id = '".$title_id."'");

    if($check_exam_setup) {
        $conn->only_query("
             UPDATE 
            `exam_setup` 
             SET 
            `title_id`='".$title_id."',
            `start_time`='".$start_time."',
            `end_time`='".$end_time."',
            `modified`='".date( "Y-m-d H:i:s" )."',
            `status`=1 WHERE title_id='".$title_id."'
            ");

            $response["error"]=TRUE;
            $response["message"]="title id already exist and new start time and end time updated  ";
            header('HTTP/1.1 409 Conflict', true, 409);
            header('Content-Type: application/json');
            echo json_encode($response);
            die();

        }

        else {
            if(isset($title_id) && $title_id !=""&& isset($start_time) && $start_time !=""&& isset($end_time) && $end_time !="") {
                $conn->only_query('INSERT INTO `exam_setup`(
`id`,
                    `title_id`,
                    `start_time`,
                    `end_time`,
                    `modified`,
                    `status`) VALUES ("",
                    "'.$title_id.'",
                    "'.$convert->MysqlDateTime($start_time).'",
                    "'.$convert->MysqlDateTime($end_time).'",
                    "'.date( "Y-m-d H:i:s" ).'",
                    1)');


                $response["error"]=FALSE;
                $response["message"]=$title_id." stored successfully";
                header('HTTP/1.1 200 success', true, 200);
                header('Content-Type: application/json');
                echo json_encode($response, JSON_PRETTY_PRINT);
            }

            else {
                $response["error"]=TRUE;
                $response["message"]="title_id or start time or end time missing";
                header('HTTP/1.1 400 Bad Request', true, 400);
                header('Content-Type: application/json');
                echo json_encode($response);

            }


        }

    }



    if ($_SERVER['REQUEST_METHOD']==='GET') {

        $exam_setup=$conn->select_all_row("SELECT 
        es.title_id AS title_id,
        es.modified,
        es.start_time ,
        es.end_time,
        etm.title_name AS title_name ,
         es.status 
         FROM
          `exam_setup` AS es 
          LEFT JOIN exam_title_master AS etm 
          ON title_id=etm.id WHERE es.status=1 having es.start_time>=now() ");
    if($exam_setup) {

                $response["error"]=FALSE;
                $response["message"]="success";
                $response["exam_setup"]=$exam_setup;
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