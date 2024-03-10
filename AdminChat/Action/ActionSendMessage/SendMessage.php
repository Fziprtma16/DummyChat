<?php
ini_set('display_errors', 1); //Atau
error_reporting(E_ALL && ~E_NOTICE);
// mengaktifkan session pada php
session_start();
// menghubungkan php dengan koneksi database
include '../../database.php';
include '../../Function/Function.php';
$id = $_POST['id'];
$nomor = $_POST['nomor'];
$isi = $_POST['isi'];
echo $id;
echo $nomor;
$url = "http://116.197.135.158:8000/send-message";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
"Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [ "sender" => $id,
"number" => $nomor,
"message" => $isi
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
var_dump($resp);
// $RunFunction = SendMessage($id,$nomor,$isi);
//
// echo $RunFunction;


 ?>
