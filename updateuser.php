<?php
header('Access-Control-Allow-Origin: *');
 
    include 'connexion.php';
    $matricule=$_GET['matricule'];
$nom=$_GET['nom'];
$prenom=$_GET['prenom'];
$service=$_GET['service'];
$email=$_GET['email'];

$role=$_GET['role'];

     
$sql = "UPDATE `user` SET `nom`='$nom',`prenom`='$prenom',`service`='$service',`email`='$email',`role`='$role' WHERE `matricule`=$matricule";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
