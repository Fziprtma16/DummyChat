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
                     <h4 class="app-card-title">Contact</h4>
                   </div><!--//col-->
                 </div><!--//row-->
             </div><!--//app-card-header-->
             <div class="col-lg-12">
               <button type="button" class="btn btn-primary text-white" data-bs-toggle="modal" data-bs-target="#exampleModal">
ADD CONTACT
</button>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Contact</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <div class="col-lg-12">
        <div class="row">
          <div class="col-lg-6">
            <input type="text" class="form-control" value="<?=$id;?>" readonly id="IdDevice" name="" value="">
          </div>
          <div class="col-lg-6 mb-3">
            <input type="text" class="form-control" placeholder="Nama" id="Nama" name="" value="">
          </div>
          <div class="col-lg-12">
            <input type="number" class="form-control" placeholder="Nomor" id="Nomor" name="" value="">
          </div>
        </div>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" onclick="AddContact()" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
             </div>
             <div class="app-card-body px-4 w-100">

               <div id="DataTables">

               </div>


                   </div><!--//col-->

                 </div><!--//row-->
               </div><!--//item-->
             </div><!--//app-card-body-->

         </div><!--//app-card-->
               </div><!--//col-->
    <script src="MainJs/Contact/Contact.js" charset="utf-8"></script>
    <script type="text/javascript">
    function AddContact () {
    var id =  $("#IdDevice").val();
    var nama = $("#Nama").val();
    var nomor = $("#Nomor").val();
    var data = {
      id : id ,
      nama : nama ,
      nomor : nomor
    }

    $.ajax({
      url : "Action/ActionContact/AddContact.php",
      method:"POST",
      data : data,
      success : function(response) {
        alert(response);
        $("#DataTables").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://gifimage.net/wp-content/uploads/2018/04/loader-gif-transparent-animated-7.gif' class='text-center'></div>");
        $('#DataTables').load("Page/Contact/TableContact.php");
     }
    });

    }
    </script>
