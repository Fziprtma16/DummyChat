<?php
date_default_timezone_set('Asia/Jakarta');
session_start();
if ($_SESSION['username'] == "") {
  header("location:login/logout.php");
}
error_reporting(0);
error_reporting(E_ALL ^ E_NOTICE);
include "../../database.php";
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
$id_chat = $_SESSION['id_chat'];
$CekUsers = mysqli_query($connection,"SELECT * FROM users WHERE ready = 1 AND id = '$id'");
$ReturnCek = mysqli_num_rows($CekUsers);
// $Edit = "+".$DataScan['nomor'];
 ?>
<div class="col-12 col-lg-12">
                <div class="app-card app-card-account shadow-sm d-flex flex-column align-items-start">
            <div class="app-card-header p-3 border-bottom-0">
                <div class="row align-items-center gx-3">
                  <div class="col-auto">
                    <div class="app-icon-holder">
                      <img width="30px" height="30px" src="https://cdn-icons-png.flaticon.com/512/2905/2905997.png" alt="">
                    <!-- <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                      </svg> -->
                  </div><!--//icon-holder-->

                  </div><!--//col-->
                  <div class="col-auto">
                    <h4 class="app-card-title">Config Widget</h4>
                  </div><!--//col-->
                </div><!--//row-->
            </div><!--//app-card-header-->
            <div class="app-card-body px-4 w-100">
              <div class="item border-bottom py-3">
                <div class="row justify-content-between align-items-center">
                  <div class="row">
                  <div class="col-auto col-lg-4 mb-3">
                    <label for="" style="font-weight: bold;">Posisi Widget:</label>
                    <br>
                    <label for="">
                    <input type="radio"  id="PosisiKiri" class="PosisiWidget"  name="PosisiWidget" value="right"> Right</label>
                    <br>
                    <label for="">
                    <input type="radio"  id="PosisiKanan" class="PosisiWidget"  name="PosisiWidget" value="left"> Left</label>
                  </div><!--//col-->

                  <div class="col-auto col-lg-4 mb-3">
                    <label for="" style="font-weight: bold;">Nama Widget:</label>
                    <br>
                    <input type="text" class="form-control"  id="NamaWidget" placeholder="Nama Widget"  value="">
                    <input type="text" class="form-control"  id="Roomschat" hidden   value="<?=$id_chat?>" >
                  </div>

                  <div class="col-auto col-lg-4 mb-3">
                    <label for="" style="font-weight: bold;">Gambar Widget:</label>
                    <br>
                    <input type="file" class="form-control"  id="gambar"  value="">

                  </div>
                  </div>
                  <br>
                  <div class="row">

                  <div class="col-auto col-lg-4 mb-3">
                    <label for="" style="font-weight: bold;">Warna Widget:</label>
                    <br>
                    <input type="color" class="form-control"  id="WarnaWidget" placeholder="Nama Widget"  value="">

                  </div>

                  <div class="col-auto col-lg-4 mb-3">
                    <label for="" style="font-weight: bold;">Icon Widget:</label>
                    <br>
                    <input type="file" class="form-control"  id="IconWidget"   value="">

                  </div>
                  </div>

                  <div class="col text-end">
                    <a class="btn app-btn-secondary" onclick="SubmitConfig()" id="Kirim" href="#">Kirim</a>
                  </div><!--//col-->

                </div><!--//row-->
              </div><!--//item-->

                  </div><!--//col-->

                </div><!--//row-->
              </div><!--//item-->
            </div><!--//app-card-body-->

        </div><!--//app-card-->
              </div><!--//col-->
        <script type="text/javascript">
          function SubmitConfig(){

          var Posisi = $('input[name="PosisiWidget"]:checked').val();
          var gambar = $("#gambar").prop('files')[0];
          var IconWidget = $("#IconWidget").prop('files')[0];
          var WarnaWidget = $("#WarnaWidget").val();
          var NamaWidget = $("#NamaWidget").val();
          var rooms = $("#Roomschat").val();
          let formData = new FormData();
          formData.append('posisi',Posisi);
          formData.append('gambar',gambar);
          formData.append('icon',IconWidget);
          formData.append('WarnaWidget',WarnaWidget);
          formData.append('Nama',NamaWidget);
          formData.append('rooms',rooms);

          $.ajax({
            url : "https://dummytech.id/chat_apps/Admin/api/input_config.php",
            method:"POST",
            data : formData,
            contentType: 'multipart/form-data',
            cache: false,
            processData: false,
            contentType: false,
            crossDomain: true,
            success : function(response) {
              if (response == "Berhasil") {
                alert("Berhasil Kirim");
              }else{
                alert("Gagal Kirim");
              }
           }
          });
          }
        </script>
