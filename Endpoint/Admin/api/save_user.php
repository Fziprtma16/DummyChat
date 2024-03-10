<?php
include 'config.php';
$request_body = file_get_contents('php://input');
$data = json_decode($request_body, true);
$idusers = $data['iduser'];
$username = $data['username'];
$idsocket = $data['idsocket'];
$status = $data['status'];
$rooms = $data['rooms'];

$sqlIns = "INSERT INTO user_chat (id_user,username,id_socket,status,date,rooms) VALUES ('$idusers','$username','$idsocket','$status',now(),'$rooms')";
$mysqlins = mysqli_query($connection,$sqlIns);
if ($mysqlins) {
  echo "berhasil";
}else{
  echo "gagal";
}
 ?>
