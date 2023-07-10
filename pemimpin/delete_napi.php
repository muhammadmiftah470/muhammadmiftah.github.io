<?php 
// koneksi database
include 'koneksi.php';

// menangkap data id yang di kirim dari url
$id = $_GET['id'];


// menghapus data dari database
mysqli_query($koneksi,"delete from napi where id='$id'");

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data baru saja dihapus');document.location='data_napi.php'</script>";

?>