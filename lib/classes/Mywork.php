<?php

class Mywork
{

   // public function __construct() {

   //  //   echo "hello mywork cunstructor ";
   // }
   public function all_auth($conn, $status)
   {
      return $conn->select_all_row('select * from auth ', true);
   }
   public function all_table($conn)
   {
      return $conn->select_all_row('SELECT TABLE_NAME
        FROM INFORMATION_SCHEMA.TABLES
        WHERE TABLE_TYPE = "BASE TABLE" ', true);
   }
   public function all_col($conn)
   {
      return $conn->select_all_row('SELECT COLUMN_NAME FROM information_schema.columns WHERE table_schema="challenge_mal" ', true);
   }
   public function valid_email($str)
   {
      return (!preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $str)) ? FALSE : TRUE;
   }

   public  function createDir($path)
   {
      if (!file_exists($path)) {
         $old_mask = umask(0);
         mkdir($path, 0777, TRUE);
         umask($old_mask);
      }
   }
   public function get_time_ago($time)
   {
      $time_difference = time() - $time;

      if ($time_difference < 1) {
         return 'less than 1 second ago';
      }
      $condition = array(
         12 * 30 * 24 * 60 * 60 =>  'year',
         30 * 24 * 60 * 60       =>  'month',
         24 * 60 * 60            =>  'day',
         60 * 60                 =>  'hour',
         60                      =>  'minute',
         1                       =>  'second'
      );

      foreach ($condition as $secs => $str) {
         $d = $time_difference / $secs;

         if ($d >= 1) {
            $t = round($d);
            return 'about ' . $t . ' ' . $str . ($t > 1 ? 's' : '') . ' ago';
         }
      }
   }


   // echo get_time_ago( time()-5 ).'<br>';
   // echo get_time_ago( time()-60 ).'<br>';
   // echo get_time_ago( time()-3600 ).'<br>';
   // echo get_time_ago( time()-86400 ).'<br>';
   // echo get_time_ago( time()-2592000 ).'<br>';
   // echo get_time_ago( time()-31104000 ).'<br>';
   // echo "---".'<br>';
   // echo get_time_ago( strtotime("2013-12-01") );





   
}//end class 
