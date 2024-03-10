<?php
include 'config.php';
$rooms = $_POST['rooms'];
$nama = $_POST['Nama'];
$warna = $_POST['WarnaWidget'];
$posisi = $_POST['posisi'];

$icon  = basename($_FILES['icon']['name']);
$gambarx = basename($_FILES['gambar']['name']);

$temp_icon = $_FILES['icon']['tmp_name'];
$temp_gambar = $_FILES['gambar']['tmp_name'];
// echo $gambarx;exit;
$posisi_icon = 'config/'.$rooms.$icon;
$posisi_gambar = 'config/'.$rooms.$gambarx;
 move_uploaded_file($temp_icon,$posisi_icon);
 move_uploaded_file($temp_gambar,$posisi_gambar);

$url_icon = "https://pertalis.com/chat_apps/Admin/api/config/".$rooms.$icon;
$url_gambar = "https://pertalis.com/chat_apps/Admin/api/config/".$rooms.$gambarx;

$cek_config = "SELECT * FROM tampilan_icon WHERE rooms = '$rooms'";
$sqlCek = mysqli_query($connection,$cek_config);
$itungCek = mysqli_num_rows($sqlCek);
if ($itungCek > 0) {
  $upd_conf = "UPDATE tampilan_icon SET url_gambar = '$url_gambar',posisi_widget = '$posisi',icon_admin = '$url_icon',nama_widget = '$nama' , warna_top = '$warna' WHERE rooms = '$rooms'";
  $sql_upd = mysqli_query($connection,$upd_conf);
  if ($sql_upd) {
    echo "Berhasil";
  }
}else{
  $Ins_Conf = "INSERT INTO tampilan_icon (url_gambar,posisi_widget,icon_admin,nama_widget,warna_top,rooms) VALUES ('$url_gambar','$posisi','$url_icon','$nama','$warna','$rooms')";
  $sqlIns = mysqli_query($connection,$Ins_Conf);
  if ($sqlIns) {
    echo "Berhasil";
  }else{
    echo "Gagal";
  }
}
?>
