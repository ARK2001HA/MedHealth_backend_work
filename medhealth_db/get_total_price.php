<?php
header("Content-Type: application/json");

require "connection.php";

$response = array();
$userID = $_GET['userID'];

$query_total_price = mysqli_query($conn, "SELECT SUM(quantity*price) as Total FROM cart WHERE id_user='$userID'");

$result = mysqli_fetch_array($query_total_price);

$response['Total'] = $result['Total'];

echo json_encode($response);