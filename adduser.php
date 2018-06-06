<?php
 
header('Access-Control-Allow-Origin: *');
    include 'connexion.php';
$nom=$_GET['nom'];
$prenom=$_GET['prenom'];
$service=$_GET['service'];
$email=$_GET['email'];
$statut=$_GET['statut'];
$password=$_GET['password'];

     
$sql = "INSERT INTO `user`(`nom`,`prenom`,`service`,`email`,`statut`,`password`) VALUES ('$nom','$prenom','$service','$email','$statut','$password')";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
