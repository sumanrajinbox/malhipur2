<?php
class Convert
{

function MysqlDate( $dt ) {
	$time = strtotime( $dt );
	$newformat = date( "Y-m-d", $time );
	return $newformat;
}
function MysqlDateTime( $dt ) {
  $time = strtotime( $dt );
  $newformat = date( "Y-m-d H:i:s", $time );
  return $newformat;
}

function normalDate( $dt, $type = "d-M-Y" ) {
	$time = strtotime( $dt );
	$newformat = date( $type, $time );
	return $newformat;
}
function normalDateTime( $dt, $type = "d-M-Y h:i a" ) {
  $time = strtotime( $dt );
  $newformat = date( $type, $time );
  return $newformat;
}

function random( $length = 7 ) {
	$alphanum = "aAbBcCdDeEfFgGhHjJkKmMnNpPqQrRsStTuUvVwWxXyY123456789";
	$randText = substr( str_shuffle( $alphanum ), 0, $length );
	return $randText;
}
	
function base64_to_jpeg($base64_string, $output_file) {
    // open the output file for writing
    $ifp = fopen( $output_file, 'wb' ); 

    // split the string on commas
    // $data[ 0 ] == "data:image/png;base64"
    // $data[ 1 ] == <actual base64 string>
    $data = explode( ',', $base64_string );

    // we could add validation here with ensuring count( $data ) > 1
    fwrite( $ifp, base64_decode( $data[ 1 ] ) );

    // clean up the file resource
    fclose( $ifp ); 

    return $output_file; 
}

function picbase($image)
{
	$path = '../profile_pic/'.$image;
$type = pathinfo($path, PATHINFO_EXTENSION);
$data = file_get_contents($path);
return $base64 = 'data:image/' . $type . ';base64,' . base64_encode($data);
}

function numberTowords($number)
{
   $no = round($number);
   $point = round($number - $no, 2) * 100;
   $hundred = null;
   $digits_1 = strlen($no);
   $i = 0;
   $str = array();
   $words = array('0' => '', '1' => 'one', '2' => 'two',
    '3' => 'three', '4' => 'four', '5' => 'five', '6' => 'six',
    '7' => 'seven', '8' => 'eight', '9' => 'nine',
    '10' => 'ten', '11' => 'eleven', '12' => 'twelve',
    '13' => 'thirteen', '14' => 'fourteen',
    '15' => 'fifteen', '16' => 'sixteen', '17' => 'seventeen',
    '18' => 'eighteen', '19' =>'nineteen', '20' => 'twenty',
    '30' => 'thirty', '40' => 'forty', '50' => 'fifty',
    '60' => 'sixty', '70' => 'seventy',
    '80' => 'eighty', '90' => 'ninety');
   $digits = array('', 'hundred', 'thousand', 'lakh', 'crore');
   while ($i < $digits_1) {
     $divider = ($i == 2) ? 10 : 100;
     $number = floor($no % $divider);
     $no = floor($no / $divider);
     $i += ($divider == 10) ? 1 : 2;
     if ($number) {
        $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
        $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
        $str [] = ($number < 21) ? $words[$number] .
            " " . $digits[$counter] . $plural . " " . $hundred
            :
            $words[floor($number / 10) * 10]
            . " " . $words[$number % 10] . " "
            . $digits[$counter] . $plural . " " . $hundred;
     } else $str[] = null;
  }
  $str = array_reverse($str);
  $result = implode('', $str);
  $points = ($point) ?
    "." . $words[$point / 10] . " " . 
          $words[$point = $point % 10] : '';
	if($points ){$p=" Paise";}else{$p="";}
  return $result . "Rupees  " . $points .$p;  
}



}