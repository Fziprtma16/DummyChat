function SendMessage(){
var id_device = $("#IDPengirim").val();
var nomor = $("#NomorPenerima").val();
var isi = $("#ValuePesan").val();
var file = $("#Media").prop('files')[0];
console.log(id_device+"*"+nomor+"*"+isi) ;
let formData = new FormData();
formData.append('id',id_device);
formData.append('nomor',nomor);
formData.append('caption',isi);
formData.append('file',file);

$.ajax({
  url : "https://sofwareshop.com/appstore/api/SendMedia.php",
  method:"POST",
  data : formData,
  contentType: 'multipart/form-data',
  cache: false,
  processData: false,
  contentType: false,
  success : function(response) {
    if (response = 1) {
      alert("Berhasil Kirim");
    }else{
      alert("Gagal Kirim");
    }
 }
});

}
