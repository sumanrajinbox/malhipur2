<?php 
// date_default_timezone_set( 'Asia/Kolkata' );
date_default_timezone_set("Asia/Calcutta");   //India time (GMT+5:30)
// echo date('d-m-Y H:i:s');
class Myconn extends CheckAuth {
    // =============================================================================
    //  sumanrajinbox@gmail.com define function 07-sept-2019
    // =============================================================================
    public $conn="";
  

    public function __construct() {  
        $dns = "mysql:host=localhost;dbname=challenge_mal";
        $db_user = "challenge";
        $db_password = "challengedb@2019";

        try{
        //$this->conn=new PDO ($dns, $db_user, $db_password, array(PDO::MYSQL_ATTR_INIT_COMMAND=> "SET NAMES utf8"));
        $this->conn=new PDO ($dns, $db_user, $db_password);
      //  $this->conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION); // not working 
        }catch(PDOException $e){
            die( "connection Failed".$e->getMessage());
        }
    }

    private function error_handle($error_status, $sth, $result) {
        $arr=$sth->errorInfo();

        if ($error_status==true) {
            if($arr[0]==0) {
                return $result;
            }

            else {
                return $arr[2];
            }
        }

        else {
            return $result;
        }
    }

    public function only_query($query, $error_status=false) {
        $sth=$this->conn->prepare($query);
        $sth->execute();
        $result=$this->conn->lastInsertId();
        return $this->error_handle($error_status, $sth, $result);
        //  return $result;
    }

    public function update($query, $error_status=false) {
        $sth=$this->conn->prepare($query);
        $sth->execute();
        $result= $sth->rowCount();
        return $this->error_handle($error_status, $sth, $result);
        // return $result;
    }

  

    public function select_one_row($query, $error_status=false) {
        $sth=$this->conn->prepare($query);
        $sth->execute();
        $result=$sth->fetch(PDO::FETCH_ASSOC);
        return $this->error_handle($error_status, $sth, $result);
    }

    public function select_all_row($query, $error_status=false) {
        $sth=$this->conn->prepare($query);
        $sth->execute();
        $result=$sth->fetchAll(PDO::FETCH_ASSOC);
        return $this->error_handle($error_status, $sth, $result);
    }
    
    public function delete_data ($id,$table_name,$field_name,$status) {
        $sql = ' UPDATE '.$table_name.'
        SET
       '.$field_name.'='.$status.'
       WHERE id="'.$id.'"';
        $result=$this->only_query($sql,true);
        return $result;
        
    }


}

// end of class