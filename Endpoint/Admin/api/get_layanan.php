<?php
include 'config.php';

$rooms = $_GET['rooms'];

$getlayanan = "SELECT * FROM layanan_chat WHERE rooms = '$rooms'";
$sqlLay = mysqli_query($connection,$getlayanan);
$result = array();
while ($data = mysqli_fetch_array($sqlLay)) {

array_push($result,array(

  "NamaLayanan" => $data['nama_layanan'],
  "link" => $data['isi_chat_layanan']
));

}

echo json_encode(array("result" => $result));
 ?>
