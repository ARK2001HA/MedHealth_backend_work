<?php

require 'connection.php';

$response = array();
$userID = $_GET['userID'];

$query_select_cart = mysqli_query($conn, "SELECT COUNT(*) as Amount FROM cart WHERE id_user = '$userID'");

while ($row = mysqli_fetch_array($query_select_cart)) {
    # code...

    $key['Amount'] = $row['Amount'];

    array_push($response, $key);
}

echo json_encode($response);