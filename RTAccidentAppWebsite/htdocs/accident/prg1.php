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
  margin:.1% 1.603% .2% 1.6%;
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
	background-color:#e8effc;
}	
td,th{
border: 2px solid;
border-collapse:collapse;
padding:15px;
font-size:30px;
text-align:center;
}
table{
border-collapse:collapse;
background-color:ghostwhite;
width:100%;
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
<div id="trunk">
<table>
<tr id="odd"><th>Accident Title</th><th>State</th><th>City</th><th>Localty</th><th>Description</th><th>Insurance_company</th></tr>
<tr id="even"><td>2 bike crash</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
<tr><td>truck crushed car</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
<tr><td>jeep collided with a tree</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
<tr><td>bike sliped</td><td>State</td><td>City</td><td>Localty</td><td>Description</td><td>Insurance_company</td></tr>
</div>
</body>
</html>