<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
ul{
list-style-type:none;
padding:0px;
margin:0px;
overflow:hidden;
background-color:gainsboro;
font-size:30px;
}
li{
  display:block;
  float:left;
  <!--padding-left:50px;
  padding-bottom:10px;
  padding-right:50px;-->
  padding-left:3.76%;
  padding-right:3.76%;
  margin:.1% 2% .2% 1.6%;
  color:black;
  text-decoration:none;
  font-weight:bold;
  text-align:center;
}
#trunk{
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
#descrp{
color:black;
font-size:30px;
background-color:lightgreen;
border-radius:4px;
width:80%;
height:50px;
text-align:center;
cursor:pointer;
border-width:1px;
border-color:black;
}
#descrp:hover{
	opacity:0.6;
}
</style>
</head>
<body>
<div id="top_c">
<h1 style="cursor:pointer;">LOGO</h1>
</div>
<div id="filter_head">
<form action="" method="get">
<ul>
<li><label>State </label><br>
<select style="width:100%;height:30px;">
               <option value = "All" selected>ALL</option>
			   <option value = "RJ">Rajasthan</option>
               <option value = "GJ">Gujrat</option>
               <option value = "MP">Madhya Pradesh</option>
             </select></li>
<li><label>City <br>
</label><input type="text" name="city" placeholder="select city.." style="width:100%;height:30px;"></li>
<li><label>Locality </label><br>
<input type="text" name="locality" placeholder="Locality.." style="width:100%;height:30px;"></li>
<li><label>Date </label><br>
<input type="date" name="date" style="width:100%;height:30px;"></li>
<li><label>Time </label><br>
<input type="time" name="time" placeholder="Duration.." style="width:100%;height:30px;"></li>
<li><label>Ins_comp </label><br>
<input type="text" name="Ins_comp" placeholder="Insurance_company..." style="width:100%;height:30px;"></li>
</ul>
</form>
</div> 
<div id="trunk">
<?php
$servername='localhost';
$username='root';
$password='';
$dbname='accident';
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(!$conn)
	echo "Connection failed".mysqli_connect_error();
$sql="select * from admin";
$chk1=mysqli_query($conn,$sql);
if($chk1)
	echo "Fetched values";
$result=mysqli_query($conn,$sql);
?>
<table>
<tr id="odd"><th>Accident Title</th><th>State</th><th>City</th><th>Localty</th><th>Description</th><th>Insurance_company</th></tr>
<tr id="even"><td>
<?php if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo  $row["Title"];
    }
} else {
    echo "0 results";
}
	mysqli_close($conn);?>
</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
<tr><td>truck crushed car</td><td>State</td><td>City</td><td>Localty</td><td><a href="" target="_blank"><button type="submit" id="descrp">View</button></a></td><td>Insurance_company</td></tr>
<tr><td>jeep collided with a tree</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
<tr><td>bike sliped</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
</table>
</div>
</body>
</html>