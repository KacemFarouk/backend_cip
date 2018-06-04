<?php
  header('Access-Control-Allow-Origin: *');

    include 'connexion.php';

    $numero=$_GET['numero'];
     
$sql = "DELETE FROM `cip` WHERE numero=$numero";


if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "no";
}
 
$conn->close(); 
 ?>
