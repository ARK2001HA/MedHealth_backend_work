<?php
require "connection.php";

if ($_SERVER['REQUEST_METHOD'] == "POST")
{
    $response = array();
    $fullname= $_POST['fullname'];
    $email= $_POST['email'];
    $phone= $_POST['phone'];
    $address= $_POST['address'];
    $password= md5($_POST['password']);

    $sql= "SELECT * FROM `user` WHERE email='$email' || phone='$phone'";
    $data= mysqli_query($conn,$sql);
    $result= mysqli_fetch_array($data);

    if($result)
    {
        $response['value'] = 0;
        $response['message'] = "Already Registered !";
        echo json_encode($response);
    }
    else
    {
        $sql = "INSERT INTO `user`(`id_user`, `name`, `email`, `phone`, `address`, `password`, `created_at`, `status`) 
                VALUES ('','$fullname','$email','$phone','$address','$password',NOW(), 1)";
        $data= mysqli_query($conn, $sql);
        if ($data) 
        {
            $response['value'] = 1;
            $response['message'] = "Registration Succesfull !";
            echo json_encode($response);
        }
        else 
        {
            $response['value'] = 2;
            $response['message'] = "Registration Unsuccesfull !";
            echo json_encode($response);
        }
    }
}
?>