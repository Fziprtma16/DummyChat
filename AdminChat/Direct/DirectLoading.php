<?php
session_start();
ini_set('display_errors', 1); //Atau
error_reporting(E_ALL && ~E_NOTICE);
include '../database.php';

$pass = $_GET['xyxsw'];
$username_code = $_GET['dkoep'];
$id_chat = base64_decode($_GET['dsadw']);
$username = base64_decode($username_code);
// echo $username;exit;
$GetUser = "SELECT * FROM users where username = '$username' AND password = '$pass' ";
$SqlGetUser = mysqli_query($connection,$GetUser);
$CekUser = mysqli_num_rows($SqlGetUser);
if ($CekUser > 0 ) {
  	$data = mysqli_fetch_assoc($SqlGetUser);
    $_SESSION['username'] = $data['username'];
    $_SESSION['id_device'] = $data['id'];
    $_SESSION['desc_device'] = $data['description'];
    $_SESSION['id_chat'] = $data['id_chat'];
    $ip_addr = $_SERVER['REMOTE_ADDR'];
    header("location:../index.php");
}else{
  $GetId = mysqli_query($connection,"SELECT max(id) AS Id_Max FROM users");
  $FetchID = mysqli_fetch_array($GetId);
  $nourut = $FetchID['Id_Max'] + 1;
  $IdUsers = sprintf("%03d",$nourut);
  $desc = "Users_".$IdUsers;

  // echo $IdUsers;exit;
  $InsertUsers = "INSERT INTO users(id,description,id_chat,ready,username,password,pass_rec,status) VALUES ('$IdUsers','$desc','$id_chat',1,'$username','$pass','$pass','ACTIVE')";
  $SqlIns = mysqli_query($connection,$InsertUsers);
  if ($SqlIns) {
    $cek_menu = "SELECT * FROM userakses WHERE user = 'admin'";
    $sqlcekmenu = mysqli_query($connection,$cek_menu);
    while ($datamenu = mysqli_fetch_array($sqlcekmenu)) {
      $akses = $datamenu['aksesmenu'];
      $insertmenu = "INSERT INTO userakses (user,aksesmenu,created_date,update_date) VALUES ('$username','$akses',now(),now())";
      mysqli_query($connection,$insertmenu);
    }
    $_SESSION['username'] = $username;
    $_SESSION['id_device'] = $IdUsers;
    $_SESSION['desc_device'] = $desc;
    $_SESSION['id_chat'] = $id_chat;
    $ip_addr = $_SERVER['REMOTE_ADDR'];
    header("location:../index.php");
  }else{
    header("location:https://sofwareshop.com/appstore");
  }
}

 ?>
