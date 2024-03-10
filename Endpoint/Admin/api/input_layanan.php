<?php
include 'config.php';

$rooms = $_POST['rooms'];
$nama = $_POST['nama'];
$link  = $_POST['link'];

$insert = "INSERT INTO layanan_chat (nama_layanan,isi_chat_layanan,rooms,datecreated) VALUES ('$nama','$link','$rooms',now())";
$sqlinsert = mysqli_query($connection,$insert);
if ($sqlinsert) {
  echo "Berhasil Tambah Layanan";
}else{
  echo "Gagal Tambah Layanan";
}

 ?>
