<?php
 
    include 'connexion.php';

    $id=$_GET['id'];
     
$sql = "DELETE FROM `services` WHERE id=$id";


if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "no";
}
 
$conn->close(); 
 ?>
