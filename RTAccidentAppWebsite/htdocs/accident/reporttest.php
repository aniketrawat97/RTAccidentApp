<html>
<body>
<?php
echo "Value we got:";
$Case_ID = ''; 
if( isset( $_GET['Case_ID'])) {
    $Case_ID = $_GET['Case_ID']; 
} 
echo $Case_ID;
?>
</body>
</html>