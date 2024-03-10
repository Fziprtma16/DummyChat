<?php
//Function Format Number
function FormattedNumber($Nomor){
  $Edit = "+".$Nomor;
  $Cut = str_replace("+62","0",$Edit);
  return $Cut;
}

//Function Send Message
function SendMessage($id_device,$nomor,$isi){
  $url = "http://116.197.135.158:8001/send-message";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
"Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [ "sender" => $id_device,
"number" => $nomor,
"message" => $isi
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
return $resp;
}


 ?>
