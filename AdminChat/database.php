<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST,PATCH, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST,PATCH, OPTIONS");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");

define("MYSQL_SERVER", "localhost");
define("MYSQL_USER", "n1563747_chat");
define("MYSQL_PASS", "dummy!@#");
define("MYSQL_DBNAME", "n1563747_chat");
define("MYSQL_DBPORT", "3306");
//$con = @new mysqli(MYSQL_SERVER,MYSQL_USER,MYSQL_PASS,MYSQL_DBNAME);

$connection = mysqli_connect(MYSQL_SERVER, MYSQL_USER, MYSQL_PASS, MYSQL_DBNAME);
if (!$connection) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}
?>
