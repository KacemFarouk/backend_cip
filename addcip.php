<?php
   header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
 $matricule=$_GET['matricule'];

$description=$_GET['description'];
$natureGain=$_GET['natureGain'];

     
$sql = "INSERT INTO cip( matricule,description,natureGain) VALUES ('$matricule','$description','$natureGain')";

if ($conn->query($sql) === TRUE) {
    
} else {
}

$conn->close();
 ?>
