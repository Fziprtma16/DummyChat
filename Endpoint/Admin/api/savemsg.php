<?php
include 'config.php';

$chat = $_POST['value'];
$id_receive = $_POST['id_penerima'];
$id_send = $_POST['from_chat'];
$username = $_POST['username'];
$user_receive = $_POST['nama_penerima'];
$type = $_POST['type'];
$caption = $_POST['caption'];
$rooms = $_POST['rooms'];
$sqlins = "INSERT INTO chat (id_receive,id_send,time,username,receiver,text,text2,caption,status,rooms) VALUES ('$id_receive','$id_send',now(),'$username','$user_receive','$chat','$type','$caption','UNREAD','$rooms')";
$mysqlins = mysqli_query($connection,$sqlins);

if ($mysqlins) {
  echo "success";
  if ($username != "admin") {

    $get_nomor = "SELECT * FROM notifikasi WHERE rooms = '$rooms'";
    $sql_room = mysqli_query($connection,$get_nomor);
    $nomor = "";
    while ($datanomor = mysqli_fetch_array($sql_room)) {
    $nomor .= $datanomor['nomor'].",";
    }
    $nomor = rtrim($nomor, ",");
    $url = "http://116.197.135.158:8001/send-broadcast";
    $curl = curl_init($url);
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $headers = array(
      "Content-Type: application/json",
    );
    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
    $data = [
      "sender" => "012",
      "number" => $nomor,
      "message" => "✨Notifikasi Chat ✨
      Pengirim : " . $username . "
      Penerima  : " . $user_receive . "
      Message  : " . $chat . "
      Balas Chat : https://www.dummytech.id/AdminChat/index.php"
    ];
    curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
    $resp = curl_exec($curl);
    curl_close($curl);
     // sendMessage($chat,$username,$id_send);

  }

}else{
  echo "Failde";
}

function sendMessage($value,$username,$id_send) {
    $content      = array(
        "en" => $value
    );
    $heading = array(
      "en" => 'Pesan Dari '.$username
  );

    $fields = array(
        'app_id' => "cdad0896-6b07-45a8-aa5f-ea8ec723fa6d",
        'included_segments' => array(
            'Subscribed Users'
        ),
        'data' => array(
            "foo" => "bar"
        ),
        'contents' => $content,
        'headings' => $heading,
          "url" => "https://www.dummytech.id/AdminChat/index.php?idS=".$id_send."&username=".$username
    );

    $fields = json_encode($fields);
    print("\nJSON sent:\n");
    print($fields);

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json; charset=utf-8',
        'Authorization: Basic YzFmYmIwMTktNjRlMi00ZmNiLWIxMzItYWY4OGI2MGU1ZmUy'
    ));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
    curl_setopt($ch, CURLOPT_HEADER, FALSE);
    curl_setopt($ch, CURLOPT_POST, TRUE);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

    $response = curl_exec($ch);
    curl_close($ch);

    return $response;
}


 ?>
