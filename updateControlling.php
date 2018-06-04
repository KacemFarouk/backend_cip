<?php
 header('Access-Control-Allow-Origin: *');
    include 'connexion.php';
$numero=$_GET['numero'];
$controlling=$_GET['controlling'];


     
$sql = "UPDATE `cip` SET `controlling`='$controlling'WHERE `numero`=$numero";

if ($conn->query($sql) === TRUE) {
   
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
