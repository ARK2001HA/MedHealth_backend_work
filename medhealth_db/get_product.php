<?php

    require 'connection.php';
    $response= array();
    $sql= "SELECT * FROM `product` WHERE status='1'";
    $data= mysqli_query($conn,$sql);
    
    while($result = mysqli_fetch_array($data))
    {
        $key['id_product'] = $result['id_product'];
        $key['id_category'] = $result['id_category'];
        $key['name'] = $result['name'];
        $key['description'] = $result['description'];
        $key['image'] = $result['image'];
        $key['price'] = $result['price'];
        $key['status'] = $result['status'];
        $key['created_at'] = $result['created_at'];
        

        array_push($response, $key);
    }
echo json_encode($response);
?>