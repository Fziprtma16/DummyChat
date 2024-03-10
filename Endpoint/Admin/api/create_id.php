<?php
include 'config.php';

$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];

$GetId = mysqli_query($connection,"SELECT max(id) AS Id_Max FROM rooms");
$FetchID = mysqli_fetch_array($GetId);
$nourut = $FetchID['Id_Max'] + 1;
$IdUsers = sprintf("%03d",$nourut);
$desc = "CHT_".$IdUsers;

$Ins = "INSERT INTO rooms (id_rooms,keyapi,date) VALUES ('$desc','$password',now())";
$sqlIns = mysqli_query($connection,$Ins);
if ($sqlIns) {
  echo $desc;
}else{
  echo "Gagal";
}
 ?>
