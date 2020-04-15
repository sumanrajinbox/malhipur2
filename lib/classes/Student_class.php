<?php 
class Student_class extends Myconn {
    public function insert_class($class_name, $session) {
        $result=$this->only_query('INSERT INTO `class`(
            `id`,
            `name`,
            `session`,
            `modified`,
            `active`) VALUES("",
            "'.$class_name.'",
            "'.$session.'",
            "'.date( "Y-m-d H:i:s" ).'",
            "1")',true);
            return $result;

    }
    
    public function verify_data($class_name, $session) {
        $result=$this->select_one_row('select * from class where name = "'.$class_name.'" and session = "'.$session.'" and active =1 ');
        return $result;
        }


    public function delete_class($class_id, $status) {

        $result=$this->only_query(' UPDATE `class`
             SET
            `active`="'.$status.'"
            WHERE id="'.$class_id.'"',true);
            return $result;

        }














    }

    ?>