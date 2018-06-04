<?php
  header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
 

    $id=$_GET['id'];
     
$sql = "DELETE FROM `cip_user` WHERE id=$id";


if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "no";
}
 
$conn->close(); 
 ?>
