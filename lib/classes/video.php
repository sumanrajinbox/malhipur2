<?php
include("config.php");
$conn = new Dbcon();
$data = json_decode(file_get_contents('php://input'), true);
$response = array("error" => FALSE);
$url = "http://malhipur.in/api/";


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
   
if(	isset($data['chapter_id']) && $data['chapter_id'] !== ''
&& isset($data['auth_key']) 
)
   {

$auth_valid = $conn -> select_one_row("select * from auth where auth_key = '".$data['auth_key']."' and active = 1");

if ($auth_valid){

   
$chapter_data = $conn->select_all_row("select * from video v
where 
 v.chapter_id ='".$data['chapter_id']."' ");

$all_data =[]; 

 foreach($chapter_data as $chapter){
  
   $pdf_data = $conn->select_one_row("select pdf_name,pdf_url from pdf where video_id = '".$chapter['id']."'");
//print_r ($pdf_data['pdf_name']);
     $result = [
         "chapter_id" =>$chapter['id'],
         "class_id" =>$chapter['class_id'],
         "subject_id" =>$chapter['subject_id'],
         "video_id" =>$chapter['id'],
         "video_url" =>$url.$chapter['video_url'],
         "video_name" =>$chapter['video_name'],
         "video_description" =>$chapter['video_description'],
         "thumb" =>$url.$chapter['thumb'],
         "pdf_name"=>$pdf_data['pdf_name'],
         "pdf_url"=>$pdf_data['pdf_url']
   ];


   
   //array_push($all_data, $result);
   echo json_encode($result);
 }


if($result){

  $response_chapter_data["chapter_data"]=$all_data;
  header( 'HTTP/1.1 200 success', true, 200 );	
  header('Content-Type: application/json');
  echo json_encode($response_chapter_data);
}else{ 
   $response["error"] = TRUE;
   $response["message"] = "Data not found ";   
   header( 'HTTP/1.1 404  No Content', true, 404 );	
   header('Content-Type: application/json');
   echo json_encode($response,JSON_PRETTY_PRINT);

}
}else{    		//wrong Credentail
	$response["error"] = TRUE;
	$response["message"] = "Invalid Auth key";
	header( 'HTTP/1.1 401 Unauthorized', true, 401 );
	header('Content-Type: application/json');
    echo json_encode($response);
}



}
else {
   
    $response["error"] = TRUE;
    $response["message"] = "chapter_id ,auth_key  is missing ";   
    header( 'HTTP/1.1 400 bad request', true, 400 );	
    header('Content-Type: application/json');
    echo json_encode($response,JSON_PRETTY_PRINT);
}
}
?>