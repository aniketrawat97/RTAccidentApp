<html>
<head>
<style>
table{
	border-radius:4px;
border-collapse:collapse;
width:100%;
}
tr:nth-child(even) {background-color: ghostwhite;}
tr:nth-child(odd) {background-color: lavender}
td,th{
border: 2px solid;
border-radius:4px;
border-collapse:collapse;
padding:15px;
font-size:30px;
text-align:center;
}
#descrp{
color:black;
font-size:30px;
background-color:lightgreen;
border-radius:4px;
width:40%;
height:50px;
text-align:center;
cursor:pointer;
border-width:1px;
border-color:black;
position:fixed;
}
#cont1{
	display:none;
	width:40%;
	padding-left:20px;
	margin-left:20px;
	margin-top:20px;
	margin-bottom:20px;
	border-radius:6px;
}
</style>
</head>
<body>
<div id="cont1">
<table><tr><th>Name</th><th>Name</th><th>Name</th></tr></table>
</div>
<button onclick="document.getElementById('cont1').style.display='block'" id="descrp">FORM</button>
</body>
</html>