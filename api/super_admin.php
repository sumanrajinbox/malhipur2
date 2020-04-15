<?php
include_once("config.php");
$myfunction = new Myfunction();
$enc_string =  $myfunction->myencryption("select * from login");
echo $enc_string;
