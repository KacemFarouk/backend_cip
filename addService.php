<?php
   header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
$serviceName=$_GET['serviceName'];



     
$sql = "INSERT INTO departement(serviceName) VALUES ('$serviceName')";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
