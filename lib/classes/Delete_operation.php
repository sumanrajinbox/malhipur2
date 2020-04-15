<?php 
class Delete_operation extends Myconn {

        public function delete_class($id, $status=0) {
                $result=$this->only_query('UPDATE class SET modified =  "'.date("Y-m-d H:i:s").'" ,`active`="'.$status.'" WHERE id="'.$id.'"', true);
                return $result;
        }

        public function delete_chapter($id, $status=0) {
                $result=$this->only_query('UPDATE chapter SET modified =  "'.date("Y-m-d H:i:s").'" ,`status`="'.$status.'" WHERE id="'.$id.'"', true);
                return $result;
        }
        public function delete_fee($id, $status=0) {
                $result=$this->only_query('UPDATE fee SET modified =  "'.date("Y-m-d H:i:s").'" ,`active`="'.$status.'" WHERE id="'.$id.'"', true);
                return $result;
        }
        public function delete_question($id, $status=0) {
                $result=$this->only_query('UPDATE exam_question_setup SET modified =  "'.date("Y-m-d H:i:s").'" ,`flag`="'.$status.'" WHERE id="'.$id.'"', true);
                return $result;
        }
        public function delete_subject($id, $status=0) {
                $result=$this->only_query('UPDATE subject SET modified =  "'.date("Y-m-d H:i:s").'" ,`active`="'.$status.'" WHERE id="'.$id.'"', true);
                return $result;
        }
        public function delete_titile_master($id, $status=0) {
                $result=$this->only_query('UPDATE exam_title_master SET modified =  "'.date("Y-m-d H:i:s").'" ,`status`="'.$status.'" WHERE id="'.$id.'"', true);
                return $result;
        }

        public function delete_user($id, $status=0) {
                 $sql = 'UPDATE users as u
                LEFT JOIN
            profile as p  ON u.id = p.user_id
            left join 
            auth as a on a.user_id = u.id
        SET 
            u.active ="'.$status.'",
            p.active = "'.$status.'",
            a.active = "'.$status.'",
            u.modified = "'.date( "Y-m-d H:i:s" ).'",
            p.modified = "'.date( "Y-m-d H:i:s" ).'",
            a.dated = "'.date( "Y-m-d H:i:s" ).'"

        WHERE
           u.id = "'.$id.'"';
                $result=$this->only_query($sql, true);
                return $result;
        }


}