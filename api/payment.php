<?php

class Payment
{

    // function genhash($data = "", $width = 192, $rounds = 3)
    // {
    //     return substr(
    //         implode(
    //             array_map(
    //                 function ($h) {
    //                     return str_pad(bin2hex(strrev($h)), 16, "0");
    //                 },
    //                 str_split(hash("tiger192,$rounds", $data, true), 8)
    //             )
    //         ),
    //         0,
    //         48 - (192 - $width) / 4
    //     );
    // }
    
    function genhash($data = "")
    {
      //  return strtolower(hash('sha512', $data));
        return hash('sha512', $data);
        // return hash("sha1", $data, true);
    }


   
    public function random_strings($length_of_string)
    {

        $str_result = time() . '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        //$str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'; 
        return substr(
            str_shuffle($str_result),
            0,
            $length_of_string
        );
    }
    public function txnid_gen($conn)
    {
        $txnid = $this->random_strings(8);
        $result_duplicate_txnid = $conn->select_all_row('select * from payment where txnid ="' . $txnid . '"');
        if (count($result_duplicate_txnid) > 0) {
            // $response["error"]=TRUE;
            // $response["message"]="duplicate data found" ;
            // header('HTTP/1.1 404 Not Found', true, 404);
            // header('Content-Type: application/json');
            // echo json_encode($response);
          return $this-> txnid_gen($conn);
        } else {
            return $txnid;
        }
    }
}//end of class
