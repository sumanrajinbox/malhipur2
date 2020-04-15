<?php
/**
* 
*/
require_once("Dbcon.php");

class Login extends Dbcon
{
	
	function __construct()
	{
		# code...
	}



function createsessions($username,$password,$remme="no") 
{ 
    //Add additional member to Session array as per requirement 
 

    $_SESSION["gusername"] = $username; 
    $_SESSION["gpassword"] = $password; 
     
    if($remme=="yes") 
    { 
        //Add additional member to cookie array as per requirement 
        setcookie("gusername", $_SESSION['gusername'], time()+60*60*24*100, "/"); 
        setcookie("gpassword", $_SESSION['gpassword'], time()+60*60*24*100, "/"); 
        return; 
    } 
} 

function clearsessionscookies() 
{   
    $_SESSION['gusername']="";
    $_SESSION['gpassword']="";
    
    
    unset($_SESSION['gusername']); 
    unset($_SESSION['gpassword']); 
     
    session_unset();     
    session_destroy();  


    setcookie ("gusername", "",time()-60*60*24*100, "/"); 
    setcookie ("gpassword", "",time()-60*60*24*100, "/"); 
} 

function confirmUser($username,$password) 
{ 
    $Dbcon=new Dbcon();

    /* Validate from the database */ 
  $result= $Dbcon->select_one_row("select * from login where username='".$username."' and password='".$password."' and active='1'");
    if($result) 
        return $result['access']; 
    else 
        return false; 
} 

public function checkLoggedin() 
{ 
    if(isset($_SESSION['gusername']) AND isset($_SESSION['gpassword'])) 
        return true; 
    elseif(isset($_COOKIE['gusername']) && isset($_COOKIE['gpassword'])) 
    {
        if($this->confirmUser($_COOKIE['gusername'],$_COOKIE['gpassword'])) 
        { 
           $this-> createsessions($_COOKIE['gusername'],$_COOKIE['gpassword']); 
            return true; 
        } 
        else 
         { 
           $this-> clearsessionscookies(); 
            return false; 
        } 
    } 

    else 
   
 return false;
 

} 

function redirect($url)
{
    if (!headers_sent())
    {    
        header('Location: '.$url);
        exit;
        }
    else
        {  
        echo '<script type="text/javascript">';
        echo 'window.location.href="'.$url.'";';
        echo '</script>';
        echo '<noscript>';
        echo '<meta http-equiv="refresh" content="0;url='.$url.'" />';
        echo '</noscript>'; exit;
    }
}

function accessLevel($level,$page)
{
if($level!==1 and $page =='admin')
{
    $this->redirect("user-dashboard.php");
}


}



}



?>
