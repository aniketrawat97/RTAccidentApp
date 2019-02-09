<?php
   $con=mysqli_connect("localhost","root","","accident");

   if (mysqli_connect_errno($con)) {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
   }
   $name = $_POST['name'];
   $number = $_POST['number'];
   $result = mysqli_query($con,"INSERT INTO PERSONAL_INFO (NAME,NUMBER,TYPE) VALUES ('$name','$number','POLICE')");
   echo "Done  $result";
   mysqli_close($con);
?>