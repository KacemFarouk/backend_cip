<?php
   header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
$serviceName=$_GET['serviceName'];
$SMRT=$_GET['SMRT'];


     
$sql = "INSERT INTO departement(serviceName,SMRT) VALUES ('$serviceName','$SMRT')";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
