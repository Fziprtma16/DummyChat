<?php
include 'config.php';

$rooms = $_POST['rooms'];
$nama = $_POST['nama'];
$nomor  = $_POST['nomor'];

$insert = "INSERT INTO notifikasi (rooms,nomor,nama,status) VALUES ('$rooms','$nomor','$nama','ACTIVE')";
$sqlinsert = mysqli_query($connection,$insert);
if ($sqlinsert) {
  echo "Berhasil Tambah Layanan";
}else{
  echo "Gagal Tambah Layanan";
}

 ?>
