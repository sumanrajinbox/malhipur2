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
$video_operation_class=new Media_operation();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$action=$data['action'];



if ($_SERVER['REQUEST_METHOD']==='POST'&& $data['video_id'] !=""&& $data['action']=="delete") {
    $video_id=$data['video_id'];
    $verify_video=$video_operation_class->verify_video($video_id);
    $verify_pdf =$video_operation_class->verify_pdf($video_id);
    $verify_thumb=$video_operation_class->verify_thumb($video_id);
    //   print_r ($verify_pdf);
    //   die;

    if($verify_video) {
        $video_url=$verify_video['video_url'];
        $pdf_url=$verify_pdf['pdf_url'];
        $thumb_url=$verify_thumb['thumb_url'];
    

        $video_result=$video_operation_class->delete_media($video_id);

        if (file_exists($video_url)) {
            $deleted=unlink($video_url);    
        }
        
        if (file_exists($pdf_url)) {
            $deleted=unlink($pdf_url);    
        }
        
        if (file_exists($thumb_url)) {
            $deleted=unlink($thumb_url);    
        }


        $response["error"]=FALSE;
        $response["message"]="The file has been successfully deleted";
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

?>