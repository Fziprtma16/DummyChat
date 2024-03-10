<?php
error_reporting(0);
// mengaktifkan session php
session_start();

// menghapus semua session
session_destroy();

// mengalihkan halaman ke halaman login
header("location:https://sofwareshop.com/appstore/logout.php");
