<?php
ini_set('display_errors', 1); //Atau
error_reporting(E_ALL && ~E_NOTICE);
// mengaktifkan session pada php
session_start();
// menghubungkan php dengan koneksi database
include '../../database.php';

// menangkap data yang dikirim dari form login
$username = addslashes($_POST['username']);
$password = security_password($_POST['password']);
// echo $password."<br>";
// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($connection, "select * from users where username='$username'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);
// cek apakah username dan password di temukan pada database
// echo $cek;exit;
if ($cek > 0) {
	$data = mysqli_fetch_assoc($login);
	// echo $data['password'];exit;
	if ($data['status'] != "ACTIVE") {
		header("location:login.php?pesan=gagal");
	} else if ($data['password'] == $password) {
		// echo $data['password'];exit;
		$_SESSION['username'] = $data['username'];
		$_SESSION['id_device'] = $data['id'];
		$_SESSION['desc_device'] = $data['description'];
		$_SESSION['id_chat'] = $data['id_chat'];
 		$ip_addr = $_SERVER['REMOTE_ADDR'];
		header("location:../../index.php");
	} else {
		header("location:../../Page/Login/login.php?pesan=gagal");
	}
} else {
	header("location:../../Page/Login/login.php?pesan=gagal");
}
function security_password($passwd)
{
	$passwd2 = md5($passwd);
	$passwd3 = md5($passwd2);
	$passwd4 = md5($passwd3);
	$passwd5 = base64_encode($passwd4);
	$passwd6 = base64_encode($passwd5);
	return $passwd6;
}
