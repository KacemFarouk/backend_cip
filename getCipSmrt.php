<?php
 header('Access-Control-Allow-Origin: *');

    include 'connexion.php';
 

     $vSMRT=(int) $_GET['vSMRT'];
$statment= $conn->prepare("SELECT * FROM (SELECT @vSMRT:?) parm , user_by_smrt;");
$statment-> bind_param("b",$vSMRT);

$statment->execute();
$statment-> bind_result($result);

$statment->fetch();

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
