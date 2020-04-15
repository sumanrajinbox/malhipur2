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
$conn=new Dbcon();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
if ($_SERVER['REQUEST_METHOD']==='POST'){
$title_name = $data['title_name'];
$class_id = $data['class_id'];
$start_time = $data['start_time'];
$end_time = $data['end_time'];
}
if ($_SERVER['REQUEST_METHOD']==='POST' && $title_name !=""&& $class_id !=""&& $start_time !=""&& $end_time !="") {
  
    $check_exam_title = $conn->select_one_row("select * from exam_title_master where title_name = '".$title_name."' where status = 1");
    if($check_exam_title ){

        $response["error"]=TRUE;
        $response["message"]="duplicate data found";
        header('HTTP/1.1 409 Conflict', true, 409);
        header('Content-Type: application/json');
        echo json_encode($response);
        die('critical stop');

    }
    else{
         $insert_title_sql='INSERT INTO `exam_title_master`(
            `id`,
              `title_name`,
              `class_id`,
              `start_time`,
              `end_time`,
              `modified`,
              `status`) VALUES (
              "",
              "'.$title_name.'",
              "'.$class_id.'",
              "'.$start_time.'",
              "'.$end_time.'",
              "'.date( "Y-m-d H:i:s" ).'",
              1)';
        $title_insert = $conn->only_query($insert_title_sql);
            
            if($title_insert){
                    $response["error"]=FALSE;
                    $response["message"]=$title_name." stored successfully";
                    header('HTTP/1.1 200 success', true, 200);
                    header('Content-Type: application/json');
                    echo json_encode($response, JSON_PRETTY_PRINT);
            }
                 

    }
   
   
    }
    // else{

    //     $response["error"]=TRUE;
    //     $response["message"]="title_name,class_id,start_time,end_time missing ";
    //     header('HTTP/1.1 400 Bad Request', true, 400);
    //     header('Content-Type: application/json');
    //     echo json_encode($response);
    // }


if ($_SERVER['REQUEST_METHOD']==='GET') {
    
 $exam_title=$conn->select_all_row("select etm.* ,c.name as class_name from  exam_title_master as etm left join class as c  on etm.class_id = c.id  where etm.status = 1");
    if($exam_title) {
  
            $response["error"]=FALSE;
            $response["message"]="success";
            $response["exam_title"]=$exam_title;
            header('HTTP/1.1 200 success', true, 200);
            header('Content-Type: application/json');
            echo json_encode($response);
        }

        else {
            $response["error"]=TRUE;
            $response["message"]="no record found";
            $response["exam_title"]=[];
            //header('HTTP/1.1 404 Not Found', true, 404);
            header('Content-Type: application/json');
            echo json_encode($response);
        }
    }