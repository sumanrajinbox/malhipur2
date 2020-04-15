<?php
include("config.php");
$conn = new Dbcon();
$data = json_decode(file_get_contents('php://input'), true);
$response = array("error" => FALSE);
$url = "http://malhipur.in/api";


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
   
if(	isset($data['chapter_id']) && 
$data['chapter_id'] !== ''
&& isset($data['auth_key']) 
)
   {

$auth_valid = $conn -> select_one_row("select * from auth where auth_key = '".$data['auth_key']."' and active = 1");

if ($auth_valid){

   
$video_data = $conn->select_all_row("select * from video v left join thumb as t on v.id = t.video_id
where 
 v.chapter_id ='".$data['chapter_id']."' and v.status=1");

$all_data =[]; 

 foreach($video_data as $chapter){
  
   $pdf_data = $conn->select_one_row("select pdf_name,pdf_url from pdf where video_id = '".$chapter['id']."'");
//print_r ($pdf_data['pdf_name']);
     $result = [
         "chapter_id" =>$chapter['chapter_id'],
         "class_id" =>$chapter['class_id'],
         "subject_id" =>$chapter['subject_id'],
         "video_id" =>$chapter['id'],
         "video_url" =>$url.substr($chapter['video_url'],2),
         "video_name" =>$chapter['video_name'],
         "video_title" =>$chapter['video_title'],
         "video_description" =>$chapter['video_description'],
         "thumb" =>$url.substr($chapter['thumb_url'],2),
         "pdf_name"=>$pdf_data['pdf_name'],
         "pdf_url"=>$url.substr($pdf_data['pdf_url'],2)
   ];


   
   array_push($all_data, $result);
   //echo json_encode($result);
 }


if($all_data){

  $response_chapter_data["chapter_data"]=$all_data; //************** replace chapter data to video data  */
  header( 'HTTP/1.1 200 success', true, 200 );	
  header('Content-Type: application/json');
  echo json_encode($response_chapter_data);
}else{ 
   $response["error"] = TRUE;
   $response["message"] = "Data not found ";   
   header( 'HTTP/1.1   No Content', true, 404 );	
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