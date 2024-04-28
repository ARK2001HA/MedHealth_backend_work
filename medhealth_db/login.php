<?php
require "connection.php";

if ($_SERVER['REQUEST_METHOD'] == "POST")
{
    $response = array();
    $email= $_POST['email'];
    $password= md5($_POST['password']);

    $sql= "SELECT * FROM `user` WHERE email='$email'";
    $data= mysqli_query($conn,$sql);
    $result= mysqli_fetch_array($data);

    if($result)
    {
        $sql= "SELECT * FROM user WHERE email='$email' && password='$password'";
        $data= mysqli_query($conn,$sql);
        if ($data) 
        {
            $response['value'] = 1;
            $response['message'] = "Login Succesfull !";
            $response['user_id'] = $result['id_user'];
            $response['name'] = $result['name'];
            $response['email'] = $result['email'];
            $response['phone'] = $result['phone'];
            $response['address'] = $result['address'];
            $response['created_at'] = $result['created_at'];
            $response['message'] = "Login Succesfull !";
            echo json_encode($response);
        }
        else 
        {
            $response['value'] = 2;
            $response['message'] = "Login Unsuccesfull !";
            echo json_encode($response);
        }

    }
    else
    {
        $response['value'] = 2;
        $response['message'] = "User not registered !";
        echo json_encode($response);
    }
}
?>