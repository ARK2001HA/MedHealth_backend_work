<?php

require "connection.php";

$response = array();
$id_user = $_GET['id_user'];

$sql =  "SELECT * FROM orders WHERE id_user = '$id_user' LIMIT 5";
$data= mysqli_query($conn,$sql);

while ($row_order = mysqli_fetch_array($data)) 
{
    $noInvoice = $row_order['invoice'];
    $key['invoice'] = $noInvoice;
    $key['id_user'] = $row_order['id_user'];
    $key['order_at'] = $row_order['order_at'];
    $key['status'] = $row_order['status'];
    $key['detail'] = array();

    $sql = "SELECT order_details.*, product.name FROM order_details JOIN product on 
    order_details.id_product = product.id_product WHERE order_details.invoice = '$noInvoice' LIMIT 5";
    $data = mysqli_query($conn,$sql);

    while ($row_order_detail = mysqli_fetch_array($data)) 
    {
        $key['detail'][] = array(
            "id_orders" => $row_order_detail['id_orders'],
            "invoice" => $row_order_detail['invoice'],
            "id_product" => $row_order_detail['id_product'],
            "nameProduct" => $row_order_detail['name'],
            "quantity" => $row_order_detail['quantity'],
            "price" => $row_order_detail['price'],
        );
    }
    array_push($response, $key);
}
echo json_encode($response);