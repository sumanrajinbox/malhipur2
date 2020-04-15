<?php
include_once("config.php");
$myfunction = new Myfunction();
$enc_string =  $myfunction->myencryption("select * from login");
echo $enc_string;
$dec_string = $myfunction->mydencryption($enc_string);
echo $dec_string;
echo "third";