<?php
 header('Access-Control-Allow-Origin: *');


    include 'connexion.php';

          $controlling=$_GET['controlling'];
		  $etat=$_GET["etat"];

$sql ="SELECT * FROM `cip` where etat='$etat'and controlling=$controlling";

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