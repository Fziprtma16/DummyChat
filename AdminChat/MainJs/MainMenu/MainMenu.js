$(document).ready(function () {
$('.PindahMenu').click(function(){

			var menu = $(this).attr('id');
        console.log(menu);
          if (menu) {
        $("#loadisi").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://gifimage.net/wp-content/uploads/2018/04/loader-gif-transparent-animated-7.gif' class='text-center'></div>");
        $('#loadisi').load(menu);
        return false;
          }else if(menu == "index2.php"){
            $("#loadisi").empty().append("<div  class='text-center col-12 mt-5' id='loading'><img src='https://gifimage.net/wp-content/uploads/2018/04/loader-gif-transparent-animated-7.gif' class='text-center'></div>");
        $('#loadisi').load("index2.php");

          }
});
});
