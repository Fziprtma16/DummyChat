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
                    <h4 class="app-card-title">Send Media</h4>
                  </div><!--//col-->
                </div><!--//row-->
            </div><!--//app-card-header-->
            <div class="app-card-body px-4 w-100">
              <div class="item border-bottom py-3">
                <div class="row justify-content-between align-items-center">
                  <div class="col-auto col-lg-12 mb-3">
                    <label for="" style="font-weight: bold;">Nomor Penerima :</label>
                    <input type="number" class="form-control" id="NomorPenerima" placeholder="Nomor Penerima" name="" value="">
                    <input type="text" hidden value="<?=$id?>" class="form-control" id="IDPengirim"  name="" value="">
                  </div><!--//col-->
                  <div class="col-auto col-lg-12 mb-3">
                    <label for="" style="font-weight: bold;">Media :</label>
                    <input type="file" class="form-control" id="Media"  name="" value="">
                  </div><!--//col-->
                  <div class="col-auto col-lg-12 mb-3">
                    <label for="" style="font-weight: bold;">Input Caption :</label>
                    <textarea name="name" class="form-control" id="ValuePesan" rows="8" cols="80"></textarea>
                  </div><!--//col-->
                  <?php
                  if ($ReturnCek > 0) {
                   ?>
                  <div class="col text-end">
                    <a class="btn app-btn-secondary" onclick="SendMessage()" id="Kirim" href="#">Kirim</a>
                  </div><!--//col-->
                <?php }else{ ?>
                  <div class="col text-end">
                    <a class="btn app-btn-secondary" href="#">Whatsapp Tidak Terkoneksi</a>
                  </div><!--//col-->
                <?php } ?>
                </div><!--//row-->
              </div><!--//item-->

                  </div><!--//col-->

                </div><!--//row-->
              </div><!--//item-->
            </div><!--//app-card-body-->

        </div><!--//app-card-->
              </div><!--//col-->
<script src="MainJs/Send/SendMedia.js" charset="utf-8"></script>
