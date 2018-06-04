<?php
   header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
$iduser=$_GET['iduser'];
$numcip=$_GET['numcip'];


$sql = "INSERT INTO `cip_user`(`numcip`, `iduser`) VALUES ('$numcip','$iduser')";

if ($conn->query($sql) === TRUE) {


	echo ("ok");
    
} 


$conn->close();
 ?>