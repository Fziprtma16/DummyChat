<?php
include 'config.php';

$rooms = $_GET['rooms'];

$sqlUser = "SELECT * FROM user_chat WHERE rooms = '$rooms' AND username != 'admin'";
$mysqluser = mysqli_query($connection,$sqlUser);
$array = array();
while ($data = mysqli_fetch_array($mysqluser)) {

array_push($array,array(
  "username" => $data['username'],
  "idsocket" => $data['id_socket']
));
}
  echo json_encode(array("result"=>$array));

 ?>
