<?php
include 'config.php';

$rooms = $_GET['rooms'];
$sqldata = "SELECT * FROM tampilan_icon WHERE rooms = '$rooms'";
$mysqldata = mysqli_query($connection,$sqldata);
$data=mysqli_fetch_array($mysqldata);
  if ($data['url_gambar'] == "") {
    $url_gambar = "";
  }else{
    $url_gambar = $data['url_gambar'];
  }

  if ($data['posisi_widget'] == "") {
    $posisi_widget = "";
  }else{
    $posisi_widget = $data['posisi_widget'];
  }

  if ($data['icon_admin'] == "") {
    $icon_admin = "";
  }else{
    $icon_admin = $data['icon_admin'];
  }

  if ($data['nama_widget'] == "") {
    $nama_widget = "";
  }else{
    $nama_widget = $data['nama_widget'];
  }

  if ($data['warna_top'] == "") {
    $warna_top = "";
  }else{
    $warna_top = $data['warna_top'];
  }
  $datanya = array(
    'url_gambar' => $url_gambar,
    'posisi_widget' => $posisi_widget,
    'icon_admin' => $icon_admin,
    'nama_widget' => $nama_widget,
    'warna_top' => $warna_top
  );

echo json_encode($datanya);

 ?>
