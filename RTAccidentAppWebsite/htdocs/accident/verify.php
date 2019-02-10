<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>NETTUTS > Sign up</title>
    <link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <!-- start header div --> 
    <div id="header">
        <h3>NETTUTS > Sign up</h3>
    </div>
    <!-- end header div -->   
     
    <!-- start wrap div -->   
    <div id="wrap">
        <!-- start PHP code -->
        <?php
         
            mysql_connect("localhost", "tutorial", "password","accident") or die(mysql_error());
             
            if(isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash']))
            {
                $email = mysql_escape_string($_GET['email']);
                $hash = mysql_escape_string($_GET['hash']);

                $search = mysql_query("SELECT email, hash, active FROM company_detail WHERE email='".$email."' AND hash='".$hash."' AND active='0'") or die(mysql_error()); 
                $match  = mysql_num_rows($search);                
               
                if($match>0)
                {
                    mysql_query("UPDATE company_detail SET active='1' WHERE email='".$email."' AND hash='".$hash."' AND active='0'") or die(mysql_error())
                    $password="SELECT Password From company_detail where Email='".$email"' AND active='1' ";
                    $param="INSERT INTO login_detail(email,password) VALUES ($email,$password)";
                    mysqli_query($conn, $param);
                    echo '<div class="statusmsg">Your account has been activated, you can now login</div>';
                }
                else{
                    echo '<div class="statusmsg">The url is either invalid or you already have activated your account.</div>';
                }
                
            }
            else{
                echo '<div class="statusmsg"> please use the link that has been send to your email.</div>';
}
            }
        ?>
        <!-- stop PHP Code -->
 
         
    </div>
    <!-- end wrap div --> 
</body>
</html>