
//Toogle Menu
$(document).ready(function(){
$('#action_menu_btn').click(function(){
$('.action_menu').toggle();
});
});

//Set Body Chat
function SetBodyChat(IdSocket,Username){

}




//Set List Daftar User First Connect Socket Io
function SetListUser(DataUser){
  $("#KontakUser").empty();
  $.each(DataUser,function(){
    $("#KontakUser").append(
      '<li id="StatusClick">'+
        '<div class="d-flex bd-highlight">'+
          '<div class="img_cont">'+
            '<img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">'+
            '<span class="online_icon">'+
            '</span>'+
          '</div>'+
          '<div class="user_info">'+
            '<span>'+this['username']+'</span>'+
            '<p>'+this['kategori']+'</p>'+
          '</div>'+
        '</div>'+
      '</li>'
    )
  })
}
