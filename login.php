<?php
    header('Access-Control-Allow-Origin: *');

    include 'connexion.php';


     $email=$_GET["email"];
     $password=$_GET["password"];
     
$sql = "SELECT * FROM `user` where email='$email' and password ='$password'";

/// $sql;
$result = $conn->query($sql);
$rows = array();

if ($result->num_rows > 0) {
    // output data of each row
    while($r = $result->fetch_assoc()) {

        $rows[]=$r;

    }
            echo json_encode($rows[0]);

} else {
    echo json_encode('{error:10,message:"user not found}"');

}
$conn->close(); 
 ?>
