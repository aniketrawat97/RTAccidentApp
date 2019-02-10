<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#top_c{
	height:50px;
	padding:20px;
	background-color:#116466;
	border-radius:4px;
	margin-top:-2vw;
	margin-left:-0.5vw;
	margin-right:-0.5vw;
	color:mintcream;
	}
#trunk{
	margin-top:2px;
	border-radius:4px;
	height:auto;
	width:auto;
	border-style:double;
	border-width:5px;
	background-color:#d3f8d3;
}	
#login{
background-color:ghostwhite;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
height:auto;
width:45%;
margin-left:25%;
margin-top:100px;
margin-bottom:100px;
padding-left:10px;
padding-right:10px;
border-radius:6px;
font-weight:bold;
border-style:double;
border-width:5px
} 
#img_cont{
margin-top:10px;
margin-left:30%;
height:250px;
width:45%;
}
#signup_img{
width:100%;
height:100%;
}
#log_sub{
color:mintcream;
font-size:30px;
background-color:dimgray;
border-radius:4px;
width:100%;
height:50px;
text-align:center;
cursor:pointer;
border-width:1px;
border-color:black;
}
#wrap .statusmsg{
    font-size: 12px; /* Set message font size  */
    padding: 3px; /* Some padding to make some more space for our text  */
    background: #EDEDED; /* Add a background color to our status message   */
    border: 1px solid #DFDFDF; /* Add a border arround our status message   */
}
#log_sub:hover{
opacity:0.8;
}

#signup{
color:#262626;
font-size:30px;
background-color:#4CAF50;
border-radius:4px;
width:100%;
height:50px;
text-align:center;
cursor:pointer;
border-width:1px;
border-color:black;
}
#signup:hover{
opacity:0.8;
}
</style>
</head>
<body>
<div id="top_c">
<h1 style="cursor:pointer">LOGO</h1>
</div>
<div id="trunk">
<div id="login">
<div id="img_cont">
<img src="signup1.jpg" alt="ADMIN" id="signup_img">
</div>
<form method="post" style="text-align:left;">
<label for="Firstname" style="font-size:30px;">Firstname</label><br><br>
<input type="text" name="Firstname" placeholder="firstname" required autofocus style="width:100%;height:30px;"><hr><hr>
<label for="Lastname" style="font-size:30px;">Lastname</label><br><br>
<input type="text" name="Lastname" placeholder="lastname" required style="width:100%;height:30px;"><hr><hr>
<label for="cname" style="font-size:30px;">Company-Name</label><br><br>
<input type="text" name="cname" placeholder="Name of org.." required style="width:100%;height:30px;"><hr><hr>
<label for="cnumber" style="font-size:30px;">Number</label><br><br>
<input type="tel" name="cnumber" placeholder="ur_contact_number" pattern="[0-9]{10}" title="a valid mobile number" style="width:100%;height:30px;"><hr><hr>
<label for="Email" style="font-size:30px;">Email-ID</label><br><br>
<input type="email" name="Email" placeholder="Email" style="width:100%;height:30px;"><hr><hr>
<label for="Password" style="font-size:30px;">Password</label><br><br>
<input type="password" name="Password" placeholder="password" style="width:100%;height:30px;"><hr><hr>
<button type="submit" name="submit" id="signup">Register</button><br><br>
</form>
<!--<!--container for pop up of signup form 
<div id="signup">
<div id="img_cont">
<img src="login.jpg" alt="ADMIN" id="login_img">
</div>
<form method="get" style="text-align:left;">
<label for="username" style="font-size:50px;">Username</label><br><br>
<input type="text" name="username" placeholder="username" required autofocus style="width:100%;height:50px;"><hr><hr>
<label for="contact_number" style="font-size:50px;">Number</label><br><br>
<input type="tel" name="contact_number" placeholder="ur_contact_number" pattern="[0-9]{10}" title="a valid mobile number" style="width:100%;height:50px;"><hr><hr>
<button type="submit" id="log_sub">Signup</button><br><br>
</form>
</div>
-->
</div>
</div>
</body>
</html>
<!-- start PHP code -->
<?php
        
        $conn = mysqli_connect("localhost", "root", "","accident") or die(mysql_error());

        #if(isset($msg)){  // Check if $msg is not empty
		#	echo '<div class="statusmsg">'.$msg.'</div>'; // Display our message and wrap it with a div with the class "statusmsg".
		#} 
    
	#if(isset($_POST['Firstname']) && !empty($_POST['Firstname']) AND isset($_POST['company_name']) && !empty($_POST['company_name']) AND isset($_POST['contact_number']) && !empty($_POST['contact_number']) AND isset($_POST['Email']) && !empty($_POST['Email']) AND isset($_POST['Password']) && !empty($_POST['Password']))
	if (isset($_POST['submit']) AND isset($_POST['Firstname'])  AND isset($_POST['cname']) AND isset($_POST['cnumber']) AND isset($_POST['Email']) AND isset($_POST['Password']))
	{
		
		$Fname = $_POST['Firstname'];
		$Lname = $_POST['Lastname'];
		$cname = $_POST['cname'];
		$cnumber = $_POST['cnumber']; 
		$email = $_POST['Email'];
		$password=$_POST['Password'];
		
		$password=sha1(md5($cnumber.$password));
		 
		#if(!eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $email))
		#{
		#	$msg = 'The email you have entered is invalid, please try again.';
		#}
		#else
		#{
		#	$msg = 'Your account has been made, <br /> please verify it by clicking the activation link that has been send to your email.';
		#}
		$hash_value=md5(rand(0,1000));
		$inserting_data="INSERT INTO company_detail(Firstname,Lastname,company_name,contact_number,Email, Passwords ,hashs) VALUES ('$Fname', '$Lname','$cname','$cnumber','$email','$password','$hash_value')";

		if (mysqli_query($conn, $inserting_data)) {
			echo "New record created successfully";
		} else {
			echo "Error ";
		}
	 
		$url="https://www.RTAccidentInfo.com/verify.php?email=".$email.' hash='.$hash_value ;
		echo $url;
	}
	mysqli_close($conn);
             
?>
<!-- stop PHP Code -->