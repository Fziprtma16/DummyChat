<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST,PATCH, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
$connection = mysqli_connect('localhost','n1563747_chat','dummy!@#','n1563747_chat');
$connect = new PDO('mysql:host=localhost;dbname=n1563747_chat', 'n1563747_chat', 'dummy!@#');

?>
