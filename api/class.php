<?php include("config.php");

$Dbcon=new Dbcon();

$convert=new Convert();

$post=json_decode(file_get_contents('php://input'), true);







$row=$Dbcon->select_all_row("select * from class where active='1'");

if($row) {

  $response["error"]=false;

  $response["message"]="Success";

  $response["class_name"]=$row;





  header('Content-Type: application/json');

  echo json_encode($response);



}

else {

  $response["error"]=TRUE;

  $response["message"]="No class Found";

  header('Content-Type: application/json');

  echo json_encode($response);



}







?>