<?php
   header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
$numero=$_GET['numero'];
$description=$_GET['description'];
$natureGain=$_GET['natureGain'];

     
$sql = "UPDATE `cip` SET `description`='$description',`natureGain`='$natureGain' WHERE `numero`=$numero";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
