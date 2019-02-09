<html>
<head>
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
	margin-top:-.5vw;
	padding-top:2%;
	padding-left:2%;
	padding-right:2%;
	padding-bottom:2%;
	border-radius:4px;
	height:auto;
	width:auto;
	border-style:double;
	border-width:5px;
	background-color:white;
}	
td,th{
border: 2px solid;
border-radius:4px;
border-collapse:collapse;
padding:15px;
font-size:30px;
text-align:center;
}
table{
	border-radius:4px;
border-collapse:collapse;
width:100%;
}
tr:nth-child(even) {background-color: ghostwhite;}
tr:nth-child(odd) {background-color: lavender}
</style>
</head>
<body>
<div id="top_c">
<h1 style="cursor:pointer;">LOGO</h1>
</div>
<div id="descrp">
<?php
$x = ''; 
if( isset( $_GET['Case_ID'])) {
    $x = $_GET['Case_ID']; 
}
echo $x;
$servername='localhost';
$username='root';
$password='';
$dbname='accident';
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(!$conn)
	echo "Connection failed:".mysqli_connect_error();
$sql="select * FROM accident_report where (Case_ID=$x)";
$chk=mysqli_query($conn,$sql);
if($chk)
	echo "values fetched";
$result=mysqli_query($conn,$sql);
//if(mysqli_num_rows($result) > 0){
	$row=mysqli_fetch_assoc($result);
	echo "<table><tr><th>Title</th><td>".$row["Title"]."</td></tr>";
	echo "<tr><th>Vehicle_No</th><td>".$row["Vehicle_No"]."</td></tr>";
	//echo "<tr><th>State</th><td>".$row["State"]."</td></tr>";
	//echo "<tr><th>City</th><td>".$row["City"]."</td></tr>";
	//echo "<tr><th>Locality</th><td>".$row["Locality"]."</td></tr>";
	echo "<tr><th>Casualty</th><td>".$row["Casualty"]."</td></tr>";
	echo "<tr><th>Injuries</th><td>".$row["injuries"]."</td></tr>";
	echo "<tr><th>Date</th><td>".$row["Date"]."</td></tr>";
	echo "<tr><th>Time</th><td>".$row["Time"]."</td></tr>";
	echo "<tr><th>Eyewitness Description</th><td>".$row["Description"]."</td></tr>";
	//echo "<tr><th>Police_report</th><td>".$row["Report"]."</td></tr>";
	//echo "<tr><th>Policy_No</th><td>".$row["Policy_no"]."</td></tr>";
	//echo "<tr><th>Insurance_company</th><td>".$row["Insurance_company"]."</td></tr>";
	echo "</table>";
	
//else
	//echo "0 results";
mysqli_close($conn);
?>
</div>
</body>
</html>