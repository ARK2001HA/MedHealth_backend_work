 <?php

 require 'connection.php';

    if($_SERVER['REQUEST_METHOD'] == 'POST')
    {
        $response = array();
        $id_user = $_POST['id_user'];
        $id_product = $_POST['id_product'];

        $sql= "SELECT * FROM cart WHERE id_user= '$id_user' AND id_product='$id_product'";
        $data= mysqli_query($conn,$sql);
        $result = mysqli_fetch_array($data);

        if ($result) 
        {
            $response['value'] = 2;
            $response['message'] = "Sorry, this product is already available in the basket";
            echo json_encode($response);

        }
        else
        {
            $sql= "SELECT * FROM product WHERE id_product = '$id_product'";
            $data= mysqli_query($conn,$sql);
            $result = mysqli_fetch_array($data);
            $fetchprice= $result['price'];

            $sql2 = "INSERT INTO cart VALUE('','$id_user','$id_product',1,'$fetchprice',NOW())";
            $data2= mysqli_query($conn,$sql2);
            if ($data2) 
            {
                $response['value'] = 2;
                $response['message'] = "Yeah, Product added to cart success";
                echo json_encode($response);
            }
            else 
            {
                $response['value'] = 2;
                $response['message'] = "Sorry, Added product failed";
                echo json_encode($response);
            }
        }
    }
 ?>