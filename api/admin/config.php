<?php

// function __autoload($class_name)
// {
//     if (file_exists('../../lib/classes/' . $class_name . '.php')) {
//         require_once('../../lib/classes/' . $class_name . '.php');
//     } else {
//         echo ("Unable to load or File Not exist  $class_name.php");
//         die();
//     }
// }
spl_autoload_register('myAutoloader');

function myAutoloader($class_name)
{

    if (file_exists('../../lib/classes/' . $class_name . '.php')) {
        require_once('../../lib/classes/' . $class_name . '.php');
    } else {
        echo ("Unable to load or File Not exist  $class_name.php");
        die();
    }
}
date_default_timezone_set('Asia/Kolkata');
