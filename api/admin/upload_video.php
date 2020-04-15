<?php 
// Allow from any origin
if (isset($_SERVER['HTTP_ORIGIN'])) {
	header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
	header('Access-Control-Allow-Credentials: true');
	header('Access-Control-Max-Age: 86400');    // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
		header("Access-Control-Allow-Headers:        {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

	exit(0);
}
include("config.php");
$conn=new Dbcon();
$video_file=$_FILES['video_upload'];
$thumb_file=$_FILES['thumb_upload'];
$pdf_file=$_FILES['pdf_upload'];


$class_id = $_POST['class_id'];
$subject_id = $_POST['subject_id'];
$chapter_id = $_POST['chapter_id'];
$month_id = $_POST['month_id'];
$video_title = $_POST['video_title'];
$video_description =isset($_POST['video_desc'])?$_POST['video_desc']:"";

$new_name;

// define folder 
$video_dir='../video/';
$thumb_dir='../thumb/';
$pdf_dir='../pdf/';
$response=array("error"=> FALSE);

//$new_name = $class_name."_".$subject_name."_".$chapter_name;
if(empty($new_name)) {
    $new_name="video_";
}



if ( isset($class_id) && $class_id !=="" 
&& isset($subject_id) && $subject_id!=="" 
&& isset($chapter_id) && $chapter_id!=="" 
&& isset($month_id) && $month_id!==""
&& isset($video_title) && $video_title!=="" ){

//$total_files=count($video_file['name']);
$total_files=1;

for($key=0; $key < $total_files; $key++) {
    if(isset($video_file['name'][$key]) && $video_file['size'][$key] > 0) {
        $errors=array();
        $file_name=$video_file['name'][$key];
        $file_size=$video_file['size'][$key];
        $file_tmp=$video_file['tmp_name'][$key];
        $file_type=$video_file['type'][$key];
        $fileNameCmps=explode(".", $video_file['name'][$key]);
        $file_ext=strtolower(end($fileNameCmps));
        $extensions=array("avi", "mkv", "webm", "mp4");

        if(in_array($file_ext, $extensions)===false) {
            $errors[]=".".$file_ext." <---- video extension not allowed, please choose a, avi, mkv, webm, mp4 file.";
        }

        if($file_size > 2097152*1000) {
            $errors[]=basename($video_file['name'][$key]).' <----File size must be excately 1000 MB';
        }

        //$original_video_filename=$video_file['name'][$key];
        //$target=$destination . basename($original_video_filename);
        $video_name=$video_rename=$new_name.date('YmdHis')."_".$key.".".$file_ext;
        $video_url=$target=$video_dir .$video_rename;
        $tmp=$video_file['tmp_name'][$key];

        //========================================== thumb upload ==========================================================

        $file_name_thumb=$thumb_file['name'][$key];
        $file_size_thumb=$thumb_file['size'][$key];
        $file_tmp_thumb=$thumb_file['tmp_name'][$key];
        $file_type_thumb=$thumb_file['type'][$key];
        $fileNameCmps_thumb=explode(".", $thumb_file['name'][$key]);
        $file_ext_thumb=strtolower(end($fileNameCmps_thumb));
        $extensions_thumb=array("jpg", "jpeg", "png", "gif");

        if(in_array($file_ext_thumb, $extensions_thumb)===false) {
            $errors[]=".".$file_ext_thumb."  <---- thumb extension not allowed, please choose a JPEG or PNG file.";
        }
        if($file_size > 2097152*1000) {
            $errors[]=basename($thumb_file['name'][$key]).'  <---- File size must be excately 1000 MB';
        }
        //$original_thumb_filename=$thumb_file['name'][$key];
        //$target=$destination . basename($original_thumb_filename);
        $thumb_rename="thumb_".date('YmdHis')."_".$key.".".$file_ext_thumb;
        $target_thumb=$thumb_dir .$thumb_rename;
        $tmp_thumb=$thumb_file['tmp_name'][$key];
        //===================================================================================================================

        if(empty($errors)==true) {            
            // $myFileLink=fopen($target, 'w') or die("can't open file");
            // fclose($myFileLink);
            // $myFile=$target;
            // unlink($myFile) or die("Couldn't delete file");
            move_uploaded_file($tmp, $target) or die("Couldn't upload file");

            // -----------------------------------------------------------------
            // insert video data in db
            // -----------------------------------------------------------------


            $sql='INSERT INTO `video` set `id`="",
            `class_id`="'.$class_id.'",
            `subject_id`="'.$subject_id.'",
            `chapter_id`="'.$chapter_id.'",
            `month_id`="'.$month_id.'",
            `session`="19-20",
            `video_title`="'.$video_title.'",
            `video_name`="'.$video_name.'",
            `video_description`="'.$video_description.'",
            `video_url`="'.$video_url.'",
            `modified`="'.date( "Y-m-d H: i:s" ).'",
            `status`="1"
            ';
   
      
            $conn=new Dbcon();
            $video_result=$conn->only_query($sql);

            if($video_result) {
                $response["error"]=FALSE;
                $response["video_status"]="data uploaded successfully";
                header('HTTP/1.1 200 success', true, 200);
                header('Content-Type: application/json');
                echo json_encode($response);
            }

           $last_id=$conn->only_query("SELECT * LAST_INSERT_ID()");
            // =================================================================
            // insert thumb data in db
            // =================================================================
            move_uploaded_file($tmp_thumb, $target_thumb) or die("thumb Couldn't upload file");
            $sql_thumb='INSERT INTO `thumb` set 
            `id`="",
            `video_id`="'.$last_id.'",
            `thumb_url`="'.$target_thumb.'",
            `modified`="'.date( "Y-m-d H: i:s" ).'",
            `status`=1';
 

            // echo $sql;
            $conn=new Dbcon();
            $thumb_result=$conn->only_query($sql_thumb);
            
            // if($thumb_result) {
            //     $response["error"]=FALSE;
            //     $response["message"]="thumb uploaded successfully";
            //     header('HTTP/1.1 200 success', true, 200);
            //     header('Content-Type: application/json');
            //     echo json_encode($response);
            // }

                    // ---------------------------------pdf puload -----------------------------


                   
                    $total_pdf_files=count($pdf_file['name']);
        for($key_pdf=0; $key_pdf < $total_pdf_files; $key_pdf++) { 
            if(isset($pdf_file['name'][$key_pdf]) && $pdf_file['size'][$key_pdf] > 0) {
            $file_name_pdf=$pdf_file['name'][$key_pdf];
            $file_size_pdf=$pdf_file['size'][$key_pdf];
            $file_tmp_pdf=$pdf_file['tmp_name'][$key_pdf];
            $file_type_pdf=$pdf_file['type'][$key_pdf];
            $fileNameCmps_pdf=explode(".", $pdf_file['name'][$key_pdf]);
            $file_ext_pdf=strtolower(end($fileNameCmps_pdf));
            $extensions_pdf=array("jpg", "jpeg", "png", "gif");
            
            if(in_array($file_ext_pdf, $extensions_pdf)===false) {
                $errors[]=".".$file_ext_pdf."  <---- pdf extension not allowed, please choose a JPEG or PNG file.";
            }
            if($file_size > 2097152*1000) {
                $errors[]=basename($pdf_file['name'][$key_pdf]).'  <---- File size must be excately 1000 MB';
            }
            //$original_pdf_filename=$pdf_file['name'][$key_pdf];
            //$target=$destination . basename($original_pdf_filename);
            $pdf_rename="pdf_".date('YmdHis')."_".$key_pdf.".".$file_ext_pdf;
            $target_pdf=$pdf_dir .$pdf_rename;
     
            $tmp_pdf=$pdf_file['tmp_name'][$key_pdf];    
        }
        move_uploaded_file($tmp_pdf, $target_pdf) or die("thumb Couldn't upload file");
        $sql_pdf = 'INSERT INTO `pdf` set
            `id`="",
            `video_id` = "'.$last_id.'",
            `pdf_name`="'.$pdf_rename.'",
            `pdf_url`="'.$target_pdf.'",
            `modified`="'.date( "Y-m-d H: i:s" ).'",
            `status`=1
        ';
            // echo $sql;
          //  $conn=new Dbcon();
            $pdf_result=$conn->only_query($sql_pdf);
            
            // if($pdf_result) {
            //     $response["error"]=FALSE;
            //     $response["message"]="pdf uploaded successfully";
            //     header('HTTP/1.1 200 success', true, 200);
            //     header('Content-Type: application/json');
            //     echo json_encode($response);
            // }
    }
            // ---------------------------------------------------------------------
        }

        else {
            $response["error"]=TRUE;
            $response["message"]=$errors;
            header('HTTP/1.1 400 bad request', true, 400);
            header('Content-Type: application/json');
            echo json_encode($response, JSON_PRETTY_PRINT);
        }
    }

}


}

         else {
            $response["error"]=TRUE;
            $response["message"]="class_id or subject_id or vide_title or month_id or chapter_id may be missing";
            header('HTTP/1.1 400 bad request', true, 400);
            header('Content-Type: application/json');
            print_r($_POST);
            echo json_encode($response, JSON_PRETTY_PRINT);
        }





?>