<?php 
// $con=mysqli_connect('localhost','root','','ecommerce_1');
$con = new mysqli('localhost','root','','nepallion');
if(!$con){
    die(mysqli_error($con));
}




?>