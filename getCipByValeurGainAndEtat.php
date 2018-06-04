<?php
 header('Access-Control-Allow-Origin: *');


    include 'connexion.php';

     
     $valeurGain=$_GET['valeurGain'];
		$etat=$_GET["etat"];

$sql ="SELECT * FROM `cip` where `valeurGain` >= '$valeurGain' and etat='$etat' ";

$result = $conn->query($sql);

$rows = array();


if ($result->num_rows > 0) {
    // output data of each row
    while($r = $result->fetch_assoc()) {
       
               $rows[]=$r;

    }
                echo json_encode($rows);

} else {
    echo "0 results";
}
$conn->close(); 
 ?>