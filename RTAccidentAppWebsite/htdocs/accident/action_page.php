<html>
<body>
<?php
$servername='localhost';
$username='root';
$password='';
$dbname='accident';
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(!$conn)
	echo "Connection failed".mysqli_connect_error();
$sql="insert into personal_info values('bk',24,'other')";
$chk1=mysqli_query($conn,$sql);
if($chk1)
	echo "Inserted values";
//"Name:".$_GET[name].'<br>'."Number: ".$_GET[number].'<br>'."Type: ".$_GET[type];
mysqli_close($conn);
?>
</body>
</html>