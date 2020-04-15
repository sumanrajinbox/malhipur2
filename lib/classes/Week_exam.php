<?php 
class Week_exam extends Myconn {
    
    public function week_exam_question(int $title_id) {
        $sql=$this->select_all_row("SELECT 
            eq.id,
            eq.question,
            eq.option1,
            eq.option2,
            eq.option3,
            eq.option4,
            eq.modified,
            eq.answer,
            etm.title_name as title_name,
            etm.id as title_id FROM exam_question_setup as eq 
            left join exam_title_master as etm on etm.id=eq.title_id 
            WHERE
             eq.flag=1 
             and
              title_id='".$title_id."'
              and eq.question<>''and 
              eq.option1<>''and eq.option2<>''and 
              eq.option3<>''and eq.option4<>''and 
              eq.answer<>'' and eq.flag > 0
            ");
            return $sql;
        }
    
    public function insert_exam_log(int $title_id = 0 ,int $video_id = 0,int $user_id,$start_time ,$end_time)   {
        $insert_exam_log = 'INSERT INTO `exam_user_log`(
            `id`,
            `exam_title`,
            `user_id`,
            `video_id`,
            `start_time`,
            `end_time`,
            `modified`,
            `status`)value("",
            "'.$title_id.'", 
            "'.$user_id.'",
            "'.$video_id.'", 
            "'.$start_time.'", 
            "'.$end_time.'",
            "'. date( 'Y-m-d H:i:s' ).'",
            1)';

      $exam_log=$this-> only_query($insert_exam_log,true) or die('storing user log error');
            return $exam_log;
    }
    
    public function student_exam_attendance(int $user_id,int $id){
        $sql="select * from exam_user_log where user_id = '".$user_id."' and exam_title =
        '".$id."'and status='1'";
        $check_user=$this->select_one_row($sql);
        return $check_user;

    }










}//end class


    ?>