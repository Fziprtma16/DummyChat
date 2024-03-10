 <?php
date_default_timezone_set('Asia/Jakarta');
session_start();
if ($_SESSION['username'] == "") {
    header("location:Page/Login/login.php");
}
error_reporting(0);
error_reporting(E_ALL ^ E_NOTICE);
include "../../database.php";
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
$id_chat = $_SESSION['id_chat'];
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
                     <input type="text" id='rooms' hidden name="" value="<?=$id_chat?>">
                     <h4 class="app-card-title">Riwayat Chat</h4>
                   </div><!--//col-->
                 </div><!--//row-->
             </div><!--//app-card-header-->
             <div class="col-lg-12">


             </div>
             <div class="app-card-body px-4 w-100">


               <div id="list_group" class="list-group">

               </div>



                   </div><!--//col-->

                 </div><!--//row-->
               </div><!--//item-->
             </div><!--//app-card-body-->

         </div><!--//app-card-->
               </div><!--//col-->
               <script type="text/javascript">
               get_list_user_chat();

               function get_list_user_chat() {
                 var rooms = $("#rooms").val();
    var url = "https://dummytech.id/chat_apps/Admin/api/list_user_chat.php?rooms="+rooms;
    $.getJSON(url, function(data) {
        $("#list_group").empty();
        $.each(data.result, function() {
            $("#list_group").append(
              '<a href="#" class="list-group-item list-group-item-action flex-column align-items-start start">'+
                '<div class="d-flex w-100 justify-content-between">'+
                  '<h5 class="mb-1">'+this['username']+'</h5>'+
                '</div>'+
                '<small>'+this['idsocket']+'</small>'+
                  '<br><button class="btn btn-success text-white" onclick=downloadDataAsTxt("'+this['username']+'")>Download Riwayat</button>'+
              '</a>'
              );
        });
    })
}

function downloadDataAsTxt(username) {
  var rooms = $("#rooms").val();
  // Menggunakan metode $.get() untuk melakukan permintaan GET ke server
  var url = "https://dummytech.id/chat_apps/Admin/api/download_riwayat_chat.php?username="+username+"&rooms="+rooms;
  $.get(url, function(data) {
    // Membuat elemen anchor untuk mengunduh file
    var link = document.createElement('a');
    link.href = 'data:text/plain;charset=utf-8,' + encodeURIComponent(data);
    link.download = 'Riwayat Chat '+username+'.txt';

    // Menambahkan elemen anchor ke dalam dokumen
    document.body.appendChild(link);

    // Mengklik elemen anchor secara otomatis
    link.click();

    // Menghapus elemen anchor setelah diunduh
    document.body.removeChild(link);
  });
}
               </script>
    <!-- <script src="MainJs/Contact/Contact.js" charset="utf-8"></script> -->
