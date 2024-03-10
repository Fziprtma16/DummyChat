<?php
session_start();
include "../../database.php";
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
 ?>
 <div class="table table-responsive">
   <table id="myTable" class="table app-table-hover">
    <thead>
        <tr>
            <th>Nama</th>
            <th>Nomor</th>
            <th>Date Created</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $GetContact = mysqli_query($connection,"SELECT * FROM contact WHERE id_device = '$id'");
        while ($Data = mysqli_fetch_array($GetContact)) {
       ?>
        <tr>
            <td><?=$Data['nama'];?></td>
            <td><?=$Data['nomor'];?></td>
            <td><?=$Data['datecreated'];?></td>
        </tr>
      <?php } ?>
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
 </script>
