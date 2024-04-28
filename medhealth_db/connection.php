<?php
$servername= "localhost";
$username= "root";
$password= "";
$db= "medhealth";
$conn= mysqli_connect($servername,$username,$password,$db);
if($conn)
{
	//echo "Connection Successfull";
}
else
{
	//echo "Not Connected";
	die("connection is lost because".mysqli_connect_error());
}
?>