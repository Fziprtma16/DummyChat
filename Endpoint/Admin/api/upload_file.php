<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_FILES['file'])) {
    $targetDir = 'image/'; // Ganti dengan direktori tujuan untuk menyimpan file yang diunggah

    $targetFile = $targetDir . basename($_FILES['file']['name']);
    $uploadOk = 1;
    $fileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    // Cek apakah file sudah ada atau tidak
    if (file_exists($targetFile)) {
      echo 'File already exists.';
      $uploadOk = 0;
    }

    // Batasi tipe file yang diizinkan
    // $allowedTypes = array('jpg', 'jpeg', 'png');
    // if (!in_array($fileType, $allowedTypes)) {
    //   echo 'Only JPG, JPEG, and PNG files are allowed.';
    //   $uploadOk = 0;
    // }

    // Batasi ukuran file
    // $maxFileSize = 10 * 1024 * 1024; // 10 MB
    // if ($_FILES['file']['size'] > $maxFileSize) {
    //   echo 'File size exceeds the maximum limit.';
    //   $uploadOk = 0;
    // }

    if ($uploadOk) {
      if (move_uploaded_file($_FILES['file']['tmp_name'], $targetFile)) {
        echo 'File uploaded successfully.';
      } else {
        echo 'Error uploading file.';
      }
    }
  } else {
    echo 'No file uploaded.';
  }
}
?>
