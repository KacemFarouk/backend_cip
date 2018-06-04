<?php
 
    include 'connexion.php';

     
$sql = "SELECT * FROM `gain`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "nature du gain: " . $row["nature du gain"] ;
         echo "valeur du gain: " . $row["valeur"] ;
    echo "<br>"; 
    }
} else {
    echo "0 results";
}
$conn->close(); 
 ?>
