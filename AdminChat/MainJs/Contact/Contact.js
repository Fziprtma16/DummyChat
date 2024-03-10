$(document).ready(function () {
  $("#DataTables").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://gifimage.net/wp-content/uploads/2018/04/loader-gif-transparent-animated-7.gif' class='text-center'></div>");
  $('#DataTables').load("Page/Contact/TableContact.php");
});
