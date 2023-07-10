<?php 
// https://www.malasngoding.com
// menghubungkan koneksi database
include 'koneksi.php';

// menangkap data dari form
$nama = $_POST['nama'];
$nmr_regis = $_POST['nmr_regis'];
$jenis_kjh = $_POST['jenis_kjh'];
$pidana = $_POST['pidana'];
$lama_pidana = $_POST['lama_pidana'];
// menginput data ke table barang

mysqli_query($koneksi,"INSERT INTO kejahatan VALUES ('', '$nama', '$nmr_regis', '$jenis_kjh', '$pidana', '$lama_pidana')")or die(mysqli_error($koneksi));

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data berhasil ditambah');document.location='input_kejahatan.php'</script>";
?>