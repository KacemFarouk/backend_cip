<?php
 
    include 'connexion.php';
$nom=$_GET['nom'];
$prenom=$_GET['prenom'];
$email=$_GET['email'];
$password=$_GET['password'];

     
$sql = "INSERT INTO user(nom,prenom,  email, password) VALUES ('$nom','$prenom','$email','$password')";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
