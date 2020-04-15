<?php // android api
include("config.php");
$dbcon=new Chapter();
$conn=new Dbcon();
$response=array("error"=> FALSE);

// json response array

$data=json_decode(file_get_contents('php://input'), true);

//print_r ($data);


if (isset($data['auth_key']) && isset($data['subject_id'])) {

   //check valid auth key

   $row=$conn->select_all_row("select * from auth where auth_key='".$data['auth_key']."' and active='1'");



   if ($row) {

      $chapter=$dbcon->show_chapter_android($data['subject_id']);

      $response["error"]=FALSE;

      $response["message"]="success";
      $response["chapter_data"]=$chapter;

      header('HTTP/1.1 200 success', true, 200);

      header('Content-Type: application/json');

      $response["chapter_data"]=$chapter;

      echo json_encode($response, JSON_PRETTY_PRINT);

   }

   else {

      $response["error"]=TRUE;

      $response["message"]="Invalid auth_key";

      header('HTTP/1.1 401 Unauthorized', true, 401);

      header('Content-Type: application/json');

      echo json_encode($response);

   }



}

else {



   $response["error"]=TRUE;

   $response["message"]="Bad auth key";

   header('HTTP/1.1 400 Bad Request', true, 400);

   header('Content-Type: application/json');

   echo json_encode($response);



}