<?php
 
    include 'connexion.php';

$id=$_GET['id'];
$serviceName=$_GET['serviceName'];

     
$sql = "UPDATE `services` SET `serviceName`='$serviceName' WHERE `id`=$id";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
