<?php
 
header('Access-Control-Allow-Origin: *');
    include 'connexion.php';
$nom=$_GET['nom'];
$prenom=$_GET['prenom'];
$service=$_GET['service'];
$email=$_GET['email'];
$role=$_GET['statut'];

     
$sql = "INSERT INTO user(nom,prenom,service,email,statut) VALUES ('$nom','$prenom','$service','$email','$statut')";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
