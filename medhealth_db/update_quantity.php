<?php

require "connection.php";

if ($_SERVER["REQUEST_METHOD"] == 'POST') {
    # code...
    $response = array();
    $cartID = $_POST['cartID'];
    $tipe = $_POST['tipe'];

    $cek_cart = mysqli_query($conn, "SELECT * FROM cart WHERE id_cart = '$cartID'");
    $result = mysqli_fetch_array($cek_cart);

    $qty = $result['quantity'];

    if ($result) {
        # code...
        if ($tipe == "add") {
            # code...
            $update_add = mysqli_query($conn, "UPDATE cart set quantity = quantity + 1 WHERE id_cart = '$cartID'");
            if ($update_add) {
                # code...
                $response['value'] = 1;
                $response['message'] = "";
                echo json_encode($response);
            } else {
                # code...
                $response['value'] = 0;
                $response['message'] = "Failed to add the quantity";
                echo json_encode($response);
            }
        } else {
            # code...
            if ($qty == "1") {
                # code...
                $query_delete = mysqli_query($conn, "DELETE FROM cart WHERE id_cart = '$cartID'");
                if ($query_delete) {
                    # code...
                    $response['value'] = 1;
                    $response['message'] = "";
                    echo json_encode($response);
                } else {
                    # code...
                    $response['value'] = 0;
                    $response['message'] = "Failed to add the quantity";
                    echo json_encode($response);
                }
            } else {
                # code...
                $update_less = mysqli_query($conn, "UPDATE cart set quantity = quantity - 1 WHERE id_cart = '$cartID'");
                if ($update_less) {
                    # code...
                    $response['value'] = 1;
                    $response['message'] = "";
                    echo json_encode($response);
                } 
                else {
                    # code...
                    $response['value'] = 0;
                    $response['message'] = "Failed to add the quantity";
                    echo json_encode($response);
                }
            }
        }
    } else {
        # code...
        $response['value'] = 0;
        $response['message'] = "Failed to add the quantity";
        echo json_encode($response);
    }
}