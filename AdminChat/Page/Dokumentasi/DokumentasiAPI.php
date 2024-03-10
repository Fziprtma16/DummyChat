<?php
date_default_timezone_set('Asia/Jakarta');
session_start();
if ($_SESSION['username'] == "") {
header("location:login/logout.php");
}
// error_reporting(0);
// error_reporting(E_ALL ^ E_NOTICE);
include "database.php";
$username = $_SESSION["username"];
$id = $_SESSION['id_device'];
$desc = $_SESSION['desc_device'];
?>
<div class="app-card app-card-accordion shadow-sm mb-4">
  <div class="app-card-header p-4 pb-2  border-0">
    <h4 class="app-card-title">Dokumentasi
    </h4>
  </div>
  <!--//app-card-header-->
  <div class="app-card-body p-4 pt-0">
    <div id="faq1-accordion" class="faq1-accordion faq-accordion accordion">
      <div class="accordion-item">
        <h2 class="accordion-header" id="faq1-heading-1">
          <!-- <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-1" aria-expanded="false" aria-controls="faq1-1">
            API Send Message
          </button> -->
        </h2>
        <div id="faq1-1" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-1">
          <div class="accordion-body text-start p4">
            <div class="card col-12">
              <div class="card-body">
                <b>Contoh
                </b>
                <div class="alert alert-secondary bg-primary">
                  <pre class="text-light">
$url = "http://116.197.135.158:8001/send-message";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
"Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [ "sender" => "/*Your ID*/" ,
"number" => "/*Your Number Target*/",
"message" => "/*Data Pesan*/",
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
</pre>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--//accordion-item-->
      <div class="accordion-item">
        <h2 class="accordion-header" id="faq1-heading-2">
          <!-- <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-2" aria-expanded="false" aria-controls="faq1-2">
            API Send Image
          </button> -->
        </h2>
        <div id="faq1-2" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-2">
          <div class="accordion-body text-start p4">
            <div class="card col-12">
              <div class="card-body">
                <b>Contoh
                </b>
                <div class="alert alert-secondary bg-primary">
                  <pre class="text-light">
$url = "http://116.197.135.158:8001/send-media";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
   "Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [
"sender" => "/*Your ID*/" ,
"number" => "/*Target Number*/",
"caption" => "/*Caption*/",
"filename" => "Foto",
"url" => "/*URL Foto*/",
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
</pre>
                </div>
              </div>
            </div>
        </div>
      </div>
      <!--//accordion-item-->
      <div class="accordion-item">
        <h2 class="accordion-header" id="faq1-heading-3">
          <!-- <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-3" aria-expanded="false" aria-controls="faq1-3">
            API Send File
          </button> -->
        </h2>
        <div id="faq1-3" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-3">
          <div class="accordion-body text-start p4">
            <div class="card col-12">
              <div class="card-body">
                <b>Contoh
                </b>
                <div class="alert alert-secondary bg-primary">
                  <pre class="text-light">
$url = "http://116.197.135.158:8001/send-media-msg";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
"Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [
"sender" => "/*Your ID*/" ,
"number" => "/*Target Number*/",
"caption" => "/*Caption*/",
"filename" => "Media",
"url" => "/*URL Media*/",
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
        </pre>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--//accordion-item-->
      <div class="accordion-item">
        <h2 class="accordion-header" id="faq1-heading-4">
          <!-- <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-4" aria-expanded="false" aria-controls="faq1-4">
            Send broadcast
          </button> -->
        </h2>
        <div id="faq1-4" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-4">
          <div class="accordion-body text-start p4">
            <div class="card col-12">
              <div class="card-body">
                <b>Contoh
                </b>
                <div class="alert alert-secondary bg-primary">
                  <pre class="text-light">
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
"sender" => "/* Your ID */" ,
"number" => "/* Target Number 08xxx,08xxxx */",
"message" => "/* Isi Pesan */"
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
        </pre>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--//accordion-item-->
      <div class="accordion-item">
        <h2 class="accordion-header" id="faq1-heading-5">
          <!-- <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-5" aria-expanded="false" aria-controls="faq1-5">
            Send Group
          </button> -->
        </h2>
        <div id="faq1-5" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-5">
          <div class="accordion-body text-start p4">
            <div class="card col-12">
              <div class="card-body">
                <b>Contoh
                </b>
                <div class="alert alert-secondary bg-primary">
                  <pre class="text-light">
$url = "http://116.197.135.158:8001/send-group-msg";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
"Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [
"sender" => "/* Your ID */" ,
"namagrup" => "/* Nama Group */",
"message" => "/* Isi Pesan */"
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
        </pre>
                </div>
              </div>
            </div>
        </div>
      </div>
      <!--//accordion-item-->
      <div class="accordion-item">
        <h2 class="accordion-header" id="faq1-heading-6">
          <!-- <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-6" aria-expanded="false" aria-controls="faq1-6">
            Send Group Image
          </button> -->
        </h2>
        <div id="faq1-6" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-6">
          <div class="accordion-body text-start p4">
            <div class="card col-12">
              <div class="card-body">
                <b>Contoh
                </b>
                <div class="alert alert-secondary bg-primary">
                  <pre class="text-light">
$url = "http://116.197.135.158:8001/send-group";
$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$headers = array(
"Content-Type: application/json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
$data = [
"sender" => "/* Your ID */" ,
"namagrup" => "/* Nama Group */",
"message" => "/* Isi Pesan */" ,
"urlimg" => "/* URL Image */"
];
curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
$resp = curl_exec($curl);
curl_close($curl);
        </pre>
                </div>
              </div>
        </div>
      </div>
      <!--//accordion-item-->
    </div>
    <!--//faq1-accordion-->
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="faq1-heading-7">
      <button class="accordion-button btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#faq1-7" aria-expanded="false" aria-controls="faq1-7">
        Live Chat Plugin
      </button>
    </h2>
    <div id="faq1-7" class="accordion-collapse collapse border-0" aria-labelledby="faq1-heading-7">
      <div class="accordion-body text-start p4">
        <div class="card col-12">
          <div class="card-body">
            <b>Installasi Plugin Di Website Anda
              <br>
              <i>* Ingat Satu ID Hanya Untuk Satu Room Chat</i>
            </b>
            <div class="alert alert-secondary bg-primary">
              <pre class="text-light">
-PLUGIN INI WAJIB MEMAKAI BOOSTRAP
-PLUGIN INI SUDAH INCLUDE DENGAN JQUERY
Buat Html Berikut :
&lt;div id="DummyChatId"&gt;

&lt;/div&gt;

CSS :

Jika Belum Menambahkan Fontawesome
&lt;link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" /&gt;

Plugin CSS
&lt;link rel="stylesheet" href="https://cdn.statically.io/gh/indriyani13/chat/main/ChatDummyTech.css"&gt;


JavaScript :

&lt;script type="text/javascript"&gt;
  var roomsID = "{PASANG DENGAN ID ANDA}";
&lt;/script&gt;
&lt;script src="https://cdn.statically.io/gh/indriyani13/chat/main/ChatDummyTech.js"&gt;  &lt;/script&gt;



    </pre>
            </div>
          </div>
    </div>
  </div>
  <!--//accordion-item-->
</div>
<!--//faq1-accordion-->
</div>

  <!--//app-card-body-->
</div>
