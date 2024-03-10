<?php
date_default_timezone_set('Asia/Jakarta');
session_start();
if ($_SESSION['username'] == "") {
header("location:Page/Login/login.php");
}
error_reporting(0);
error_reporting(E_ALL ^ E_NOTICE);
include "../../database.php";
include '../../Function/Function.php';
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
// $GetScan = mysqli_query($connection,"SELECT * FROM qrscan WHERE iduser = '$id' ORDER BY id DESC");
// $DataScan = mysqli_fetch_array($GetScan);
// $Edit = "+".$DataScan['nomor'];
 // $Cut = FormattedNumber($DataScan['nomor']);

 ?>
<div class="container-fluid h-100">

 <div class="row justify-content-center h-100">

			    <div class="app-card alert alert-dismissible shadow-sm mb-4 border-left-decoration" role="alert">
				    <div class="inner">
					    <div class="app-card-body p-3 p-lg-4">
						    <h3 class="mb-3">Welcome, developer!</h3>
                <br>
						    <div class="row gx-5 gy-3">
						        <div class="col-12 col-lg-9">

							        <div>
                        <h4>ID Device : <?=$id?></h4>
                        <br>
                      <h4>Description Device : <?=$desc?></h4>
                      <br>
                      <h4>Last Connection Number : <?=$Cut;?></h4>
                      </div>
							    </div><!--//col-->
							    <div class="col-12 col-lg-3">
								    <a class="btn app-btn-primary PindahMenu" id="Page/Koneksi/KoneksiDevice.php" href="">
                      Connection To Whatsapp
                    </a>
							    </div><!--//col-->
						    </div><!--//row-->
						    <!-- <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button> -->
					    </div><!--//app-card-body-->

				    </div><!--//inner-->
			    </div><!--//app-card-->
        </div>
      </div>
      <script type="text/javascript">

      $('.PindahMenu').click(function(){

            var menu = $(this).attr('id');
              console.log(menu);
                if (menu) {
              $("#LoadData").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://media.tenor.com/SLFiTi_nrQ4AAAAC/loader.gif' class='text-center'></div>");
              $('#LoadData').load(menu);
              return false;
                }else if(menu == "index2.php"){
                  $("#LoadData").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://media.tenor.com/SLFiTi_nrQ4AAAAC/loader.gif' class='text-center'></div>");
              $('#LoadData').load("Page/liveChat/Dashboard.php");

                }
      });


      </script>
