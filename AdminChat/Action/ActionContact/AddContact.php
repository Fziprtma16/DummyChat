<?php
ini_set('display_errors', 1); //Atau
error_reporting(E_ALL && ~E_NOTICE);
// mengaktifkan session pada php
session_start();
// menghubungkan php dengan koneksi database
include '../../database.php';

$id = $_POST['id'];
$nama = $_POST['nama'];
$nomor = $_POST['nomor'];

$InsertContact = mysqli_query($connection,"INSERT INTO contact (id_device,nomor,nama,datecreated) VALUES ('$id','$nomor','$nama',now())");
if ($InsertContact) {
  echo "Berhasil Insert Contact";
}else{
  echo "Gagal Insert Contact";
}

 ?>
