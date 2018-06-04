<?php
header('Access-Control-Allow-Origin: *');
 
    include 'connexion.php';

    $matricule=$_GET['matricule'];
     
$sql = "DELETE FROM `user` WHERE matricule=$matricule";


if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "no";
}
 
$conn->close(); 
 ?>
