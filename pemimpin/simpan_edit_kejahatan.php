<?php 
// koneksi database
include 'koneksi.php';

// menangkap data yang di kirim dari form
$id = $_POST['id'];
$nama = $_POST['nama'];
$nmr_regis = $_POST['nmr_regis'];
$jenis_kjh = $_POST['jenis_kjh'];
$pidana = $_POST['pidana'];
$lama_pidana = $_POST['lama_pidana'];

// update data ke database
mysqli_query($koneksi,"update kejahatan set id='$id', nama='$nama', nmr_regis='$nmr_regis', jenis_kjh='$jenis_kjh', pidana='$pidana', lama_pidana='$lama_pidana' where id='$id'");

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data anda berhasil diupdate');document.location='data_kejahatan.php'</script>";

?>