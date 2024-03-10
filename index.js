var express = require('express');
var app = express();
var http = require('http');
var request = require('request');
var  mysql = require('mysql');
var moment = require('moment');
var fs = require('fs');
var path = require('path');
const mime = require('mime-types');
const axios = require('axios');
var server = http.createServer(app);
var { Server } = require("socket.io");
const io = new Server(server, {
  cors: {
    origin: "*",
    methods: ["GET", "POST"],
    credentials: true,
    transports: ['polling'],
  },
  allowEIO3: true
});


const database = {
    host: "localhost",
    user: "n1563747_chat",
    password: "dummy!@#" ,
    database : "n1563747_chat"
};

var connection;
function handleDisconnect() {
  connection = mysql.createConnection(database);

  connection.connect(function(err) {
    if(err) {
      console.log('error when connecting to db:', err);
      setTimeout(handleDisconnect, 2000);
    }else{
      console.log('db Connected');
    }
  });
  connection.on('error', function(err) {
    console.log('db error', err);
    if(err.code === 'PROTOCOL_CONNECTION_LOST') {
      handleDisconnect();
    } else {
      console.log("[mysql error]",err);
    }
  });
}

handleDisconnect();

// Routes

app.get('/', function(req, res) {
res.send('Hello World! Ini adalah Website Express.js pertama saya');
 });


// Listen

var port = process.env.PORT || 3000;
server.listen(port);
console.log('Listening on localhost:'+ port);

 const myarr = undefined;
const sessions_users = myarr || [];
const session_active = myarr || [];
var isInitSessions = false;
var IdUser = 0;


var getUser = "SELECT * FROM user_chat ORDER BY date DESC";
let queryUsers = connection.query(getUser, (err,response)=>{

  response.forEach(function(result) {
   sessions_users.push({
     username: result.username,
     id : IdUser ++ ,
     description: 'user',
     idS : result.id_socket ,
     activeTime : result.date,
     ready : result.status,
     rooms : result.rooms
 });
 });
});

function clearArray(array) {
  while (array.length > 0) {
    array.pop();
  }
}

function convertBase64ToFile(base64String, filePath,NameFile) {
  const base64Data = base64String.replace(/^data:image\/\w+;base64,/, '');
  const mimeType = base64String.match(/^data:(.*?);/)[1];
  const extension = mime.extension(mimeType);
  const fileName = `${NameFile}.${extension}`;
  const fileBuffer = Buffer.from(base64Data, 'base64');
  const fullFilePath = `${filePath}/${fileName}`;
  const url = "https://dummytech.id/chat_apps/Admin/api/upload_file.php";
  fs.writeFileSync(fullFilePath, fileBuffer);


  const formData = {
      file: fs.createReadStream(fullFilePath),
    };

    request.post({ url, formData }, (error, response, body) => {
      if (error) {
        console.error('Error uploading file:', error);
      } else {
        console.log('File uploaded successfully');
        console.log('Response:', body);
      }
    });
  return fileName;
}


const removeById = (arr, username) => {
   const requiredIndex = arr.findIndex(el => {
      return el.idS === String(username);
   });
   if(requiredIndex === -1){
      return false;
   };
   return !!arr.splice(requiredIndex, 1);
};


io.on('connection', (socket) => {
handleDisconnect();

socket.on('get online users', function() {
      io.emit('daftar user pertalis',sessions_users);
      socket.emit('daftar_user',sessions_users);
  });

  socket.on('active users', function(){
      io.emit('active_user',session_active);
  });

io.emit('daftar user',sessions_users);

    socket.on('create-session', function(data) {
     console.log('Create session: ' + data.username);
     console.log('Create session: ' + data.rooms);
     var getUser = "SELECT * FROM user_chat WHERE username = '"+data.username+"' AND rooms = '"+data.rooms+"'";
      io.emit('cek qry',getUser);
      let queryUsers = connection.query(getUser, (err,result)=>{
       io.emit('cek jumlah',result);

     if (result && result.length > 0) {
       result.forEach(function(response) {

             console.log(result.length);
             var UpdateOnline = "UPDATE user_chat SET status = 'true' , date = now() WHERE username= '"+data.username+"' AND rooms = '"+data.rooms+"'";
         connection.query(UpdateOnline,(err,response)=>{
           if (err) {
            console.log(UpdateOnline);
        }else{
          console.log("Berhasil Update");
        }
      });


      const checkUsers = session_active.find(sess => sess.username == data.username && sess.rooms == data.rooms);
      if (checkUsers) {
        socket.username = response.username;
        socket.kamar = response.rooms;
        io.emit('reconnect',{users:data.username,id:response.id_socket,rooms:response.rooms});
        io.emit('reconect admin',{users:data.username,id:response.id_socket,rooms:response.rooms});
        socket.emit('login',{users:data.username,id:response.id_socket,rooms:response.rooms});
        socket.broadcast.emit('user join',{users : data.username , id : response.id_socket,rooms:response.rooms});
        console.log(`User ${data} Joined Again`);
      usersaktif(io)
    }else{
      session_active.push({
        username: response.username,
        id : IdUser ++ ,
        description: 'user',
        idS : response.id_socket ,
        activeTime : response.date ,
        ready : true,
        rooms : response.rooms
      });
     socket.username = response.username;
     socket.kamar = response.rooms;
     socket.broadcast.emit('reconnect',{users:data.username,id:response.id_socket,rooms:response.rooms});
    io.emit('reconect admin',{users:data.username,id:response.id_socket,rooms:response.rooms});
     socket.emit('login',{users:data.username,id:response.id_socket,rooms:response.rooms});
     socket.broadcast.emit('user join',{users : data.username , id : response.id_socket,rooms:response.rooms});
     console.log(`User ${data} Joined Again`);
   usersaktif(io)

   console.log(sessions_users)
     io.emit('active_user',session_active);
    }

   });
     }else{

       console.log("Creating dimulai");
    var waktusekarang =  moment().format('YYYY-MM-DD hh:mm:ss');

    axios.post('https://dummytech.id/chat_apps/Admin/api/save_user.php',{
        iduser:IdUser++,
        username:data.username,
        idsocket:socket.id,
        status:"true",
        rooms : data.rooms
      })
  .then(response => {
    const responseData = response.data;
    usersaktif(io)
    session_active.push({
      username: data.username,
      id : IdUser ++ ,
      description: 'user',
      idS : socket.id ,
      activeTime : waktusekarang ,
      ready : true,
      rooms : data.rooms
    });

      sessions_users.push({
        username: data.username,
        id : IdUser ++ ,
        description: 'user',
        idS : socket.id ,
        activeTime : waktusekarang,
        ready : true,
        rooms : data.rooms
    });

    socket.username = data.username;
    socket.kamar = data.rooms;
    socket.emit('login',{users:data.username,id:socket.id,rooms:data.rooms});
    socket.broadcast.emit('user join',{users : data.username , id :socket.id,rooms:data.rooms});
    console.log(`User ${data.username} Joined`);
io.emit('active_user',session_active);
    console.log(sessions_users)
    console.log("Berhasil Insert");

  })
  .catch(error => {
    console.log('Terjadi kesalahan pada permintaan POST:', error);
  });
     }

   });

   });




socket.on('message',(msg,to,rooms)=>{

if( to !== undefined && socket.username !== undefined){
  console.log(msg);
  console.log('pesan'+to);
  const clientLocalSes = sessions_users.find(sess => sess.username == socket.username && sess.rooms == socket.kamar);
  const ToDataLocalSes = sessions_users.find(sess => sess.idS == to);

  socket.broadcast.emit('pesan',{
    'username' : socket.username,
    'value' : msg ,
     "id" : to,
     "from" : clientLocalSes.idS,
     "nameto" : ToDataLocalSes.username,
     "rooms" : rooms
});

request.post('https://dummytech.id/chat_apps/Admin/api/savemsg.php').form(
  {
    username:socket.username,
    value:msg,
    id_penerima:to,
    from_chat:clientLocalSes.idS,
    nama_penerima : ToDataLocalSes.username,
    type : "text",
    caption :"",
    rooms : rooms
  },function(err,res,json){
    if(err){
      console.log("API POST FAILED");
    }else{
      console.log(json);
    }
  });


// var InsertChatTxt = `INSERT INTO chat (id_receive,id_send,time,username,receiver,text,text2,caption,status,rooms) VALUES ('${to}','${clientLocalSes.idS}',now(),'${socket.username}','${ToDataLocalSes.username}','${msg}','text','','UNREAD','${rooms}')`;
// let QueryInsertChattxt = connection.query(InsertChatTxt,(err,response)=>{
//   if (err) {
//    console.log(InsertChatTxt);
// }else{
//  console.log("Berhasil Insert");
// }
// });


}
})


socket.on('send_img', (msg,to,caption,rooms) => {

  if(to !== undefined && socket.username !== undefined ){
    console.log('received base64 file from' + to);
    var waktusekarang =  moment().format('YYYY-MM-DD hh:mm:ss');
    var nameFile = waktusekarang+"_"+socket.username;
    const targetPath = "image";
    const filePath = convertBase64ToFile(msg, targetPath,nameFile);
    const nameFullUrl = "https://dummytech.id/chat_apps/Admin/api/image/"+filePath;
    console.log('File converted and saved to:', filePath);


    const clientLocalSes = sessions_users.find(sessx => sessx.username == socket.username  && sessx.rooms == socket.kamar);
    const ToDataLocalSes = sessions_users.find(sess => sess.idS == to);
  socket.broadcast.emit('pesan_img',
      {
        "username": socket.username,
        "base64": msg,
        "caption": caption,
        "id" : to ,
        "from" : clientLocalSes.idS,
        "nameto" : ToDataLocalSes.username,
        "rooms" : ToDataLocalSes.rooms
      }

  );

  request.post('https://dummytech.id/chat_apps/Admin/api/savemsg.php').form(
    {
      username:socket.username,
      value:nameFullUrl,
      id_penerima:to,
      from_chat:clientLocalSes.idS,
      nama_penerima : ToDataLocalSes.username,
      type : "image",
      caption :caption,
      rooms : rooms
    },function(err,res,json){
      if(err){
        console.log("API POST FAILED");
      }else{
        console.log(json);
      }
    });

//   var InsertChat = `INSERT INTO chat (id_receive,id_send,time,username,receiver,text,text2,caption,status,rooms) VALUES ('${to}','${clientLocalSes.idS}',now(),'${socket.username}','${ToDataLocalSes.username}','${nameFullUrl}','image','${caption}','UNREAD','${rooms}')`;
//   let QueryInsertChat = connection.query(InsertChat,(err,response)=>{
//     if (err) {
//      console.log(InsertChat);
//  }else{
//    console.log("Berhasil Insert");
//  }
// });
}
});




  socket.on('disconnect', (reason)=>{
    var connectionMessage = socket.username + " Disconnected from Socket " + socket.id;
    console.log(connectionMessage);


    const clientLocal = sessions_users.find(sess => sess.username == socket.username && sess.rooms == socket.kamar);
    const sessionIndexLocal = sessions_users.findIndex(sess => sess.username == socket.username  && sess.rooms == socket.kamar);
    if (sessionIndexLocal !== -1) {
      if (sessions_users[sessionIndexLocal].ready) {
    sessions_users[sessionIndexLocal].ready = false;
  } else {
    sessions_users[sessionIndexLocal].ready = false; // Jika properti age sebelumnya tidak terdefinisi, kita tetapkan nilai baru
  }

    }
    if(socket.username !== undefined){

    if (clientLocal) {

      var QueryUpdate = "UPDATE user_chat SET status = 'false' WHERE username= '"+clientLocal.username+"' AND '"+clientLocal.rooms+"'";
      connection.query(QueryUpdate,(err,response)=>{
        if (err) {
         console.log(QueryUpdate);
     }else{
       console.log("Berhasil Update");
     }
   });

removeById(session_active,clientLocal.idS);

       io.emit('active_user',session_active);
    socket.broadcast.emit('user left',
    {username : clientLocal.username, id : clientLocal.idS , rooms : clientLocal.rooms});
    usersaktif(io)
        socket.broadcast.emit('cek_dis',{username:socket.username,rooms:clientLocal.rooms,socket:clientLocal.idS});
}

    }



  });



});

const usersaktif = function(io){
  const dataAktif = [];
  for (var i = 0; i < sessions_users.length; i++) {
    const data = sessions_users[i];
    if (data.ready === true) {
    dataAktif.push(
      {data}
    );
    }
io.emit('list on',dataAktif);
  }
}
