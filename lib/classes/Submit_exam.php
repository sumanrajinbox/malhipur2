<?php 
class Submit_exam extends Myconn {

    public function update_exam_log(int $title_id=0,  int $user_id, $end_time) {
        $update_exam_log='UPDATE `exam_user_log` SET end_time = "'.$end_time.'" where exam_title ="'.$title_id.'"and user_id = "'.$user_id.'"';

        $exam_log=$this->update($update_exam_log, true);
        return $exam_log;
    }

  


    public function verify_submition_data (int $title_id=0,  int $user_id, $question_id) {

        $sql_check_user='select * from submit_exam where title_id = "'.$title_id.'" and user_id = "'.$user_id.'" and question_id = "'.$question_id.'"';

        $verify_submition_data=$this->select_one_row($sql_check_user);
        return $verify_submition_data;

    }


}


?>