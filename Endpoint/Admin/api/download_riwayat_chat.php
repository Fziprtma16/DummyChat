<?php
include 'config.php';
$name = $_GET['username'];
$rooms = $_GET['rooms'];
// Query untuk mengambil data dari tabel
$query = "SELECT username,receiver,text,time,text2 FROM chat WHERE (username='admin' AND receiver='$name' AND rooms = '$rooms') OR (username='$name' AND receiver='admin' AND rooms = '$rooms')";
$result = mysqli_query($connection, $query);

// Memeriksa apakah query berhasil dijalankan
if (!$result) {
    die('Query gagal: ' . mysqli_error($conn));
}

// Membuka output buffering
ob_start();
$textt = "";
// Menulis data ke dalam output
while ($row = mysqli_fetch_array($result)) {
  if ($row['text2'] == "image") {
    $pesan = 'Pesan Gambar';
  }else if($row['text2'] == "text"){
    $pesan = $row['text'];
  }
    '\t
    '.$textt .= $row['time']." ---->  ".$row['username']."   : ".$pesan.'
';
}
echo $textt;
// Menghapus output buffering dan mendapatkan isi output
$content = ob_get_clean();

// Mengatur header untuk mengunduh file teks
header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename="data.txt"');
header('Content-Length: ' . strlen($content));

// Mengirimkan isi output ke klien
echo $content;

 ?>
