<?php 
class Update {
    public function chapter($conn, $id, $class_id, $subject_id, $month_id, $chapter_name, $status) {
        $result=only_query('UPDATE
            `chapter` SET `class_id`="'.$class_id.'",
            `subject_id`="'.$subject_id.'",
            `month_id`="'.$month_id.'",
            `chapter_name`="'.$chapter_name.'",
            `modified`='.date( "Y-m-d H:i:s" ).',
            `status`="'.$status.'"
            WHERE `id`="'.$id.'"');
return $result;
        }

        public function upload_file($file, $destination, $file_extensions, $size, $multiple=1, $pre_name='file') {
            $response=[];

            if($multiple) {
                $totals=1;
            }
            else {
                $totals=count($file['name']);
            }

            for($key=0; $key < $totals; $key++) {

                if(isset($file['name'][$key]) && $file['size'][$key]) {
                    $errors=array();
                    $file_name=$file['name'][$key];
                    $file_size=$file['size'][$key];
                    $file_tmp=$file['tmp_name'][$key];
                    $file_type=$file['type'][$key];
                    $fileNameCmps=explode(".", $file_name);
                    $file_ext=strtolower(end($fileNameCmps));
                   $extensions=$file_extensions;
                 //  print_r($extensions);

                    if(in_array($file_ext, $extensions)===false) {
                        $errors[]=".".$file_ext."  <---- file extension not allowed.";
                    }
                    if($file_size > $size) {
                        $errors[]=basename($file_name).'  <---- File size must be excately 1000 MB';  
                    }
                    //$originalname=$file['name'][$key];
                    //$target=$destination . basename($originalname);
                    $file_rename=$pre_name.'_'.date('YmdHis')."_".$key.".".$file_ext;
                    $target=$destination .$file_rename;
                    $tmp=$file_tmp;

                    if($errors) {
                        $response['error']=$errors;
                        // print_r($response);
                    }

                    else {
                        
                        move_uploaded_file($tmp, $target) or die(" Couldn't upload file");
                            $response['message'] ="successfully uploaded";
                            $response['file_name']=$file_rename;
                            $response['file_url']=$target;
                        
                    } 
                    return $response;

                }
            }
        }


        public function unlink_file($url) {
            if(file_exists($url)) {

                return unlink($url);
            }
        }

public function update_student($conn,$uid,$fname = null, $lname = null ,$email = null,$contact = null){
    //$check_user = $conn->select_one_row('select * from users where id ="'.$uid.'"');
$result = $conn->only_query('
UPDATE
    `profile`
SET
    `first_name` = "'.$fname.'",
    `last_name` = "'.$lname.'",
    `email` ="'.$email.'",
    `contact` = "'.$contact.'",
    `created` = ,
    `modified` = ,
WHERE
    id = "'.$uid.'"
');

}

    }// end class 
