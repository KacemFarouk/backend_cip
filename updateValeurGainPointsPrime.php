<?php
  header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
$numero=$_GET['numero'];
$valeurGain=$_GET['valeurGain'];
$points=$_GET['points'];
$prime=$_GET['prime'];



     
$sql = "UPDATE `cip` SET `valeurGain`='$valeurGain', `points`='$points' , `prime`='$prime' WHERE `numero`=$numero";

if ($conn->query($sql) === TRUE) {
    echo "yes";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
 ?>
