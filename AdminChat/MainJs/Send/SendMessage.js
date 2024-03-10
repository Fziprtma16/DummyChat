function SendMessage(){
var id_device = $("#IDPengirim").val();
var nomor = $("#NomorPenerima").val();
var isi = $("#ValuePesan").val();

console.log(id_device+"*"+nomor+"*"+isi) ;
var data ={
  id: id_device,
  nomor : nomor ,
  isi : isi
}
$.ajax({
  url : "https://sofwareshop.com/appstore/api/SendMessage.php",
  method:"POST",
  data : data,
  success : function(response) {
    if (response = 1) {
      alert("Berhasil Kirim");
    }else{
      alert("Gagal Kirim");
    }
 }
});

}
