<?php
include 'config.php';

$rooms = $_GET['rooms'];

$getlayanan = "SELECT * FROM notifikasi WHERE rooms = '$rooms' AND status = 'ACTIVE'";
$sqlLay = mysqli_query($connection,$getlayanan);
$result = array();
while ($data = mysqli_fetch_array($sqlLay)) {

array_push($result,array(

  "Nama" => $data['nama'],
  "Nomor" => $data['nomor']
));

}

echo json_encode(array("result" => $result));
 ?>
