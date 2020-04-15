<?php
$to = $data['email'];
$subject = 'We Stretch Password Recovery';
$from = 'a@gmail.com';
$name="Dear User";
 
// To send HTML mail, the Content-type header must be set
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
 
// Create email headers
$headers .= 'From: '.$from."\r\n".
    'Reply-To: '.$from."\r\n" .
    'X-Mailer: PHP/' . phpversion();
 
// Compose a simple HTML email message
$message = '<html><body>';
$message .= '<h4>'.$name.'</h4>';
$message .= '<p style="font-size:12px;">Your OTP is '.$otp .'</p>';


$message .= '</body></html>';
 
//echo $message;
// Sending email
mail($to, $subject, $message, $headers);





?>