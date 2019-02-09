<html>
<head>
<meta name="viewport" content="viewport-fit=cover, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<style>
#top_c{
background-color:teal;
height:50px;
margin-left:-0.5vw;
margin-top:-2vw;
margin-right:-0.5vw;
border-radius:4px;
padding:20px;
}
#descrp{
	margin-top:5%;
	margin-bottom:2%;
	margin-left:15%;
	margin-right:15%;
	padding-top:2%;
	padding-left:2%;
	padding-right:2%;
	padding-bottom:2%;
	border-radius:4px;
	height:auto;
	width:auto;
	border-style:solid;
	border-width:2px;
	background-color:white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}	
td,th{
border: 2px solid;
border-radius:4px;
border-collapse:collapse;
padding:15px;
font-size:190%;
text-align:center;
}
table{
	align:center;
	border-radius:4px;
border-collapse:collapse;
width:100%;
}
tr:nth-child(even) {background-color: white;}
tr:nth-child(odd) {background-color: gainsboro;}
#img_cont{
margin-top:.02%;
margin-bottom:2%;
margin-left:.02%;
margin-right:.02%%;
height:100%;
width:15%;
float:left;
background-color:white;
}
#report_img{
width:100%;
height:100%;
}
#header{
	width:100%;
	height:15%;
	background-color:#91a8ee;
	color:black;
	border-radius:2px;
	border-style:solid;
	border-width:3px;
	border-color:black;
	border-bottom-width:3px;
	border-bottom-style:solid;
}
#text{
	float:left;
	font-size:40px;
	font-weight:bold;
	width:80%;
	height:100%;
	margin-bottom:1%;
	text-align:center;
	padding-top:20px;
	}
</style>
</head>
<body style="background-color:lavender;">
<!--<div id="top_c">
<h1 style="cursor:pointer;">LOGO</h1>
</div>-->
<div id="descrp">
<div id="header">
<div id="img_cont">
<img src="report.jpg" alt="ADMIN" id="report_img">
</div>
<div id="text">Complete Details
</div>
</div>
<?php
$x = ''; 
if( isset( $_GET['Case_ID'])) {
    $x = $_GET['Case_ID']; 
}
$servername='localhost';
$username='root';
$password='';
$dbname='accident';
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(!$conn)
	echo "Connection failed:".mysqli_connect_error();
$sql1="select * FROM accident_report where (Case_ID=$x)";
$sql2="select * FROM police where (Case_ID=$x)";
$sql3="select * FROM admin where (Case_ID=$x)";
$sql4="select * FROM insurance_details where (Case_ID=$x)";
$chk=mysqli_query($conn,$sql1);
if(!$chk)
	echo "values not fetched";
$result1=mysqli_query($conn,$sql1);
$result2=mysqli_query($conn,$sql2);
$result3=mysqli_query($conn,$sql3);
$result4=mysqli_query($conn,$sql4);
//if(mysqli_num_rows($result) > 0){
	$row1=mysqli_fetch_assoc($result1);
	$row2=mysqli_fetch_assoc($result2);
	$row3=mysqli_fetch_assoc($result3);
	$row4=mysqli_fetch_assoc($result4);
	echo "<table><tr><th>Title</th><td>".$row1["Title"]."</td></tr>";
	echo "<tr><th>Vehicle_No</th><td>".$row4["Vehicle_No"]."</td></tr>";
	echo "<tr><th>State</th><td>".$row3["State"]."</td></tr>";
	echo "<tr><th>City</th><td>".$row3["City"]."</td></tr>";
	echo "<tr><th>Locality</th><td>".$row3["Locality"]."</td></tr>";
	echo "<tr><th>Casualty</th><td>".$row1["Casualty"]."</td></tr>";
	echo "<tr><th>Injuries</th><td>".$row1["Injuries"]."</td></tr>";
	echo "<tr><th>Date</th><td>".$row1["Date"]."</td></tr>";
	echo "<tr><th>Time</th><td>".$row1["Time"]."</td></tr>";
	echo "<tr><th>Eyewitness Description</th><td>".$row1["Description"]."</td></tr>";
	echo "<tr><th>Police report</th><td>".$row2["Report"]."</td></tr>";
	echo "<tr><th>Policy_No</th><td>".$row4["Policy_no"]."</td></tr>";
	echo "<tr><th>Ins_comp</th><td>".$row3["Insurance_company"]."</td></tr>";
	echo "</table>";
	
//else
	//echo "0 results";
mysqli_close($conn);
?>
</div>
</body>
</html>