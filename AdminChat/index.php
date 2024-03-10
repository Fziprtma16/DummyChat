<?php
session_start();
if ($_SESSION['username'] == "") {
    header("location:Page/Login/login.php");
}
include 'Include/HeaderPage.php';
include 'Include/HeadBar.php';
include 'Include/SideBar.php';
 ?>
<section>




   <div class="app-content pt-3 p-md-3 p-lg-4">
     <div class="container-xl">

       <!-- <h1 class="app-page-title">Overview</h1> -->

      <div id="LoadData">

      </div>


     </div><!--//container-fluid-->
   </div><!--//app-content-->




 </section>

  <script type="text/javascript">
  $(document).ready(function() {
      loadindex();
      $('.PindahMenu').click(function(){

      			var menu = $(this).attr('id');
              console.log(menu);
                if (menu) {
              $("#LoadData").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://media.tenor.com/SLFiTi_nrQ4AAAAC/loader.gif' class='text-center'></div>");
              $('#LoadData').load(menu);
              return false;
                }else if(menu == "index2.php"){
                  $("#LoadData").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://media.tenor.com/SLFiTi_nrQ4AAAAC/loader.gif' class='text-center'></div>");
              $('#LoadData').load("./Page/liveChat/Dashboard.php");

                }
      });
  });

  function loadindex() {
      $("#LoadData").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://media.tenor.com/SLFiTi_nrQ4AAAAC/loader.gif' class='text-center'></div>");
      $('#LoadData').load("./Page/LiveChat/Dashboard.php");
  }
  </script>

 <?php include 'Include/FooterPage.php'; ?>
