$(document).ready(function(){
	var socket = io('http://116.197.135.158:8001',{path:'/socket.io'});

  var $ClientID = $("#id_device").val();
  var $ClientDesc = $("#desc_device").val();


  $('#ReconectWA').click(function() {
    socket.emit('create-session',{
      id: $ClientID,
      description: $ClientDesc
    });
  });



//Init Whatsapp
socket.on('init',function(data){
  for (var i = 0; i < data.length; i++) {
    var SessionDevice = data[i];
    var ClientId = SessionDevice.id ;
    var ClientDesc = SessionDevice.description;

    if (ClientId == $ClientID) {
      if (SessionDevice.ready) {
          $("#ReconectWA").hide();
            $("#LogConnection").empty();
        $("#LogConnection").append($('<li>').text('Whatsapp is ready!'));
      } else {
        $("#LogConnection").append($('<li>').text('Connecting...'));
      }
    }

  }
});

//Log Connection
  socket.on('message', function(data) {
    // console.log(data.text);
    if (data.id == $ClientID) {
      $("#LogConnection").empty();
      $("#LogConnection").append($('<li>').text(data.text));
      if (data.text == "Whatsapp is disconnected!") {
          $("#LogConnection").empty();
          $("#ReconectWA").show();
      }
    }

  });

  socket.on('remove-session', function(id) {
    if (id == $ClientID) {
        $("#ReconectWA").show();
    }
  });

//GetQR
socket.on('qr', function(data) {
  if (data.id == $ClientID) {
    $("#PictQR").attr('src', data.src);
    $("#PictQR").show();
     $("#ReconectWA").hide();
  }
  });

//WA ready
  socket.on('ready', function(data) {
    if (data.id == $ClientID) {
      $("#PictQR").hide();
      $("#ReconectWA").hide();
    }
  });

//WA Sudah Ter authenticated
  socket.on('authenticated', function(data) {
    if (data.id == $ClientID) {
      $("#PictQR").hide();
        $("#ReconectWA").hide();
    }
  });


});
