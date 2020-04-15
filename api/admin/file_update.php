<?php // Allow from any origin

if (isset($_SERVER['HTTP_ORIGIN'])) {
    header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
    header('Access-Control-Allow-Credentials: true');
    header('Access-Control-Max-Age: 86400'); // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD']=='OPTIONS') {
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    exit(0);
}





include("config.php");
$update_operation=new Update();
$conn=new Myconn();
$response=array("error"=> FALSE);
$data=json_decode(file_get_contents('php://input'), true);
$id=$_POST['id'];
$vidoe_title=$_POST['video_title'];

function recieve_file($key) {
    if(array_key_exists($key, $_FILES)) {
        return $_FILES[$key];
    }

    else {
        return false;
    }
}

$video_file=recieve_file('video_upload');
$pdf_file=recieve_file('pdf_upload');
$thumb_file=recieve_file('thumb_upload');


if ($_SERVER['REQUEST_METHOD']==='POST'&& $id !="") {

    $video_title=$_POST['video_title'];
    $video_description = $_POST['video_desc'];
    if( $video_title || $video_description){
        $rest = null;
   if($video_title){
        $rest .= '`video_title` = "'.$video_title.'",';
    }if($video_description){
        $rest .= '`video_description` = "'.$video_description.'",';
    }
         $sql='UPDATE `video` SET '.$rest.'`modified`="'.date( "Y-m-d H: i:s" ).'" WHERE `id`="'.$id.'"';

         $other_insert = $conn->only_query($sql);

    }
 

    //video update ====================================================================================== 
    if ($video_file) {
        $video_upload_result=$update_operation->upload_file($video_file, '../video/', ["avi", "mkv", "webm", "mp4"], 2097152000, 1, 'video');
        if(array_key_exists('error',$video_upload_result)){
            $error =  $video_upload_result['error'];
            foreach($error as $er){
                $response['message'][]=$er;
            }
        }
        if(array_key_exists('file_name',$video_upload_result)&& array_key_exists('file_url',$video_upload_result)) {
            $video_file_detail=$conn->select_one_row('select video_url from video as v where v.id = "'.$id.'" ');
            $update_operation->unlink_file($video_file_detail['video_url']);
            $video_sql='UPDATE `video`
            SET
            `video_name`="'.$video_upload_result['file_name'].'",
            `video_url`="'.$video_upload_result['file_url'].'",
            `modified`="'.date( "Y-m-d H: i:s" ).'"
                WHERE `id`="'.$id.'"';
            $update_video_result=$conn->only_query($video_sql);
            $response["error"]=FALSE;
            $response["message"][]=" video update successfully";
            
            //echo json_encode($response, JSON_PRETTY_PRINT);
        }
        //===================== update other video detail ===========
  
    }

    //video update end =====================================================================================

    if($pdf_file){
        $pdf_upload_result=$update_operation->upload_file($pdf_file, '../pdf/', ["pdf"], 2097152000, 1, 'pdf');
        if(array_key_exists('error',$pdf_upload_result)){
            $error =  $pdf_upload_result['error'];
            foreach($error as $er){
                $response['message'][]=$er;
            }
        }
        if(array_key_exists('file_name',$pdf_upload_result)&& array_key_exists('file_url',$pdf_upload_result)) {
            $pdf_file_detail=$conn->select_one_row('select pdf_url from pdf as p where p.video_id = "'.$id.'" ');
            if($pdf_file_detail){
                
                    $update_operation->unlink_file($pdf_file_detail['pdf_url']);
                    $pdf_sql='UPDATE `pdf`
                    SET
                    `pdf_name`="'.$pdf_upload_result['file_name'].'",
                    `pdf_url`="'.$pdf_upload_result['file_url'].'",
                    `modified`="'.date( "Y-m-d H: i:s" ).'"
                     WHERE `video_id`="'.$id.'"';                        
                    $update_pdf_result=$conn->only_query($pdf_sql);
                    $response["error"]=FALSE;
                    $response["message"][]=" pdf update successfully";
            }
           else{
            $insert_pdf_sql = 'INSERT INTO `pdf` set
            
                `video_id` = "'.$id.'",
                `pdf_name`= "'.$pdf_upload_result['file_name'].'",
                `pdf_url`="'.$pdf_upload_result['file_url'].'",
                `modified`="'.date( "Y-m-d H: i:s" ).'",
                `status`= "1"';
           // echo $insert_pdf_sql;
            $insert_pdf_result = $conn->only_query($insert_pdf_sql);
            $response["message"][]=" pdf insert successfully";
        }        
        }
        
    }

   // thumb update ===========================================================================================

    if($thumb_file){
        $thumb_upload_result=$update_operation->upload_file($thumb_file, '../thumb/', ["jpg","png","gif","jpeg"], 2097152000, 1, 'thumb');
        
        if(array_key_exists('error',$thumb_upload_result)){
            $error =  $thumb_upload_result['error'];
            foreach($error as $er){
                $response['message'][]=$er;
            }
        }
        if(array_key_exists('file_name',$thumb_upload_result)&& array_key_exists('file_url',$thumb_upload_result)) {
            $unlink_file=$conn->select_one_row('select thumb_url from thumb as t where t.id = "'.$id.'" ');
                    $update_operation->unlink_file($unlink_file['thumb_url']);
                    $thumb_sql='UPDATE `thumb`
                    SET
                    `thumb_name`="'.$thumb_upload_result['file_name'].'",
                    `thumb_url`="'.$thumb_upload_result['file_url'].'",
                    `modified`="'.date( "Y-m-d H: i:s" ).'"
                     WHERE `id`="'.$id.'"';                        
                    $update_thumb_result=$conn->only_query($thumb_sql);
                    $response["error"]=FALSE;
                    $response["message"][]=" thumb update successfully";
                    
        }
    }
 //   header('HTTP/1.1 200 success', true, 200);
    header('Content-Type: application/json');
    echo json_encode($response, JSON_PRETTY_PRINT);

   }// POST and id block

?>