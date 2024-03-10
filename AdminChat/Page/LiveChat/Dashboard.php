<?php
date_default_timezone_set('Asia/Jakarta');
session_start();
if ($_SESSION['username'] == "") {
  header("location:login/logout.php");
}
// error_reporting(0);
// error_reporting(E_ALL ^ E_NOTICE);
include "database.php";
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
$id_chat = $_SESSION['id_chat'];
?>




                  <iframe src="https://dummytech.id/chat_apps/Admin/admin.html?idchat=<?=$id_chat?>" width="100%" height="800px" />





						    </div><!--//app-card-body-->

						</div><!--//app-card-->
	                </div><!--//col-->
