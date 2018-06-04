<?php
 
    include 'connexion.php';
$id=$_GET['id'];
$natureGain=$_GET['natureGain'];


     
$sql = "UPDATE `gain` SET `natureGain`='$natureGain'WHERE `id`=$id";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
