<?php
   header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
 
$description=$_GET['description'];
$natureGain=$_GET['natureGain'];

     
$sql = "INSERT INTO cip( description,natureGain) VALUES ('$description','$natureGain')";

if ($conn->query($sql) === TRUE) {
    
} else {
}

$conn->close();
 ?>
