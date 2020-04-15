<?php

class Exam_title extends Myconn
{
    public function get_title_data(int $title_id)
    {
        return $title_data = $this->select_one_row('select * 
        from 
        exam_title_master as etm 
        where 
        id = "' . $title_id . '" and 
        status = 1 ');
    }
    public function get_auth_title(string $auth_key)
    {
        return $title_data = $this->select_all_row('SELECT 
           DISTINCT  
			etm.id as title_id,
            etm.class_id, 
            etm.title_name,
            etm.start_time,
            etm.end_time ,
            etm.modified
            FROM 
            exam_title_master AS etm 
            LEFT JOIN auth AS a ON a.auth_key = "' . $auth_key . '"
            LEFT JOIN course_details AS cd
            ON 
            cd.user_id=a.user_id 
            where
            etm.class_id=cd.class_id and etm.status = 1  
            order by etm.modified desc  
            ');
        // having NOW() BETWEEN etm.start_time AND etm.end_time
    }
}
