<?php 
class Forgot {
	public function send_mail($to, $from='From:challengeeducation@malhipur.in', $subject, $msg) {
		$to_email=$to;
		$subject=$subject;
		$message=$msg;
		$headers=$from;
		return mail($to_email, $subject, $message, $headers);
	}
	
	Public function verify_otp($conn ,$otp,$user_id) {
		$result = $conn->select_one_row('SELECT * FROM `forgot_password` where user_id = "'.$user_id.'" and otp = "'.$otp.'" and active = 1 ');
		return $result;
	}


	Public function otp_generate($digit=6, $pre=null, $choice=null) {
		$random_otp=null;
		if($digit<=3){
			$digit =3;
		}
		switch($choice) {
			case"1":
				$permitted_chars='0123456789abcdefghijklmnopqrstuvwxyz';
			$random_otp=substr(str_shuffle($permitted_chars), 0, $digit);
			break;
			case"2": if($pre) {
				$first_name=strtolower($pre);
				$len = strlen($pre);
				if($len<=$digit){
					$digit=$len;
				}
				$pre=substr($first_name, 0, $digit);
				//$pre=$pre."_";
				$random_otp=$pre;
			}
			for ($i=0; $i<$digit; $i++) {
				$random_otp .=mt_rand(0, 9);
			}
			break;
			default: 
			for ($i=0; $i<6; $i++) {
				$random_otp=mt_rand(0, 9);
			}
			$random_otp=mt_rand(100000, 999999);
		}





		return $random_otp;
	}



}