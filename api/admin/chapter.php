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
$dbcon=new Chapter();
$conn=new Dbcon();

$response=array("error"=> FALSE);


$data=json_decode(file_get_contents('php://input'), true);

if ($_SERVER['REQUEST_METHOD']==='POST') {
  if (isset($data['class_id']) && $data['class_id'] !==''
    && isset($data['subject_id']) && $data['subject_id'] !==''
    && isset($data['chapter_name']) && $data['chapter_name'] !==''
    && isset($data['month_id']) && $data['month_id'] !==''

  ) {

    // check duplicate chapter 
    $row2=$conn ->select_all_row("
select * from chapter where class_id='".$data['class_id']."'and chapter_name='".$data['chapter_name']."'and subject_id='".$data['subject_id']."' and status=1
      ");
$count_row2=count($row2);

      if($count_row2 > 0) {
        // chapter already existed
        $response["error"]=TRUE;
        $response["message"]="chapter already existed with ". $data['chapter_name'];
        header('HTTP/1.1 409 conflict', true, 409);
        header('Content-Type: application/json');
        echo json_encode($response);
        //exit(0);
        //stop executation 
      }

      //insert chapter data 
      if($count_row2==0) {

        $conn->only_query('INSERT INTO `chapter`(
`id`,
          `class_id`,
          `subject_id`,
          `chapter_name`,
          `month_id`,
          `modified`,
          `status`) VALUES ("", "'.$data['class_id'].'",
          "'.$data['subject_id'].'",
          "'.$data['chapter_name'].'",
          "'.$data['month_id'].'",
          "'.date( "Y-m-d H:i:s" ).'",
          1)');


        $response["error"]=FALSE;
        $response["message"]=$data['chapter_name']." stored successfully";
        header('HTTP/1.1 200 success', true, 200);
        header('Content-Type: application/json');
        echo json_encode($response, JSON_PRETTY_PRINT);
      }
    }

    else {
      //$response["error"] = TRUE;
      $response["message"]="class_id ,subject_id,chapter_name is missing ";
      header('HTTP/1.1 400 bad request', true, 400);
      header('Content-Type: application/json');
      echo json_encode($response, JSON_PRETTY_PRINT);
    }
  }

  if ($_SERVER['REQUEST_METHOD']==='GET') {



    //onload show data

    $all_data=$conn -> select_all_row("SELECT
	ch.id,
      ch.chapter_name,
      c.name as class_name,
      s.subjectName as subject_name,
      m.monthName as month_name FROM chapter ch 
      LEFT JOIN 
      class c ON ch.class_id=c.id 
      LEFT JOIN 
      subject AS s ON ch.subject_id=s.id 
      LEFT JOIN 
      month AS m ON ch.month_id=m.id
      where ch.status = 1");
if($all_data) {
        $response["error"] = TRUE;
        $response["chapter_data"]=$all_data;
        header('HTTP/1.1 200 success', true, 200);
        header('Content-Type: application/json');
        echo json_encode($response);
  }  else {
          //$response["error"] = TRUE;
          $response["chapter_data"]=[];
          //header('HTTP/1.1 404 not found', true, 404);
          header('Content-Type: application/json');
          echo json_encode($response, JSON_PRETTY_PRINT);
        }

    }
