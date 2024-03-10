<?php
session_start();
include "../../database.php";
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
$id_chat = $_SESSION['id_chat'];
 ?>
 <input type="text" id="rooms" name="" hidden value="<?=$id_chat?>">
 <div class="table table-responsive">
   <table id="myTable" class="table app-table-hover">
    <thead>
        <tr>
            <th>No</th>
            <th>Layanan</th>
            <th>Direct Link</th>
        </tr>
    </thead>
    <tbody id="layanan_bot">


    </tbody>
</table>
 </div>
 <script type="text/javascript">
 $('#myTable').DataTable({
   dom: 'Bfrtip',
      buttons: [
          'copy', 'csv', 'excel', 'pdf', 'print'
      ]
 });
GetLayananBot();
 function GetLayananBot() {
   var roomsID = $("#rooms").val();
   var url = "https://dummytech.id/chat_apps/Admin/api/get_layanan.php?rooms=" + roomsID;
   $.getJSON(url, function(data) {
     $("#layanan_bot").empty();
     var count = 1 ;
     $.each(data.result, function() {
       $("#layanan_bot").append('<tr><td>'+
       count+'</td>'+
       '<td>'+this['NamaLayanan']+'</td>'+
       '<td>'+this['link']+'</td>'+
       '<tr>'
     );
     count++;
     });
   });
 }
 </script>
