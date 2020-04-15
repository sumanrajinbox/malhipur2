<?php //web api
include("config.php");
// $conn = new Myconn();
// $payment = new Payment();
$data = json_decode(file_get_contents('php://input'), true);

$Dbcon = new Myconn();

function gen_code($Dbcon,$length = 6 ){
    $payment = new Payment();
    $referral_code  =  $payment->random_strings($length);
    $sql_profile = 'select * from profile where referral_code = "' . $referral_code . '"';
    $check_referral_code = $Dbcon->select_all_row($sql_profile);
    $check_referral_code = count($check_referral_code);

    if($check_referral_code){
        gen_code($Dbcon,$length = 6);
    }
        return $referral_code;
}
echo $referral_code = gen_code($Dbcon,6);


$count_all_profile = count($Dbcon->select_all_row('select * from profile'));

//echo $count_all_profile;
// echo 'this '.$referral_code.'\n';
// print_r($check_referral_code);
//echo $referral_code;

for($i = 1 ; $i <= $count_all_profile;$i++){
   echo  $referral_code = gen_code($Dbcon, 6);
   echo "\n";
   echo $sql = 'update profile set referral_code = "' . $referral_code . '" where user_id = "' . $i . '"';
   // $Dbcon->only_query($sql);
}