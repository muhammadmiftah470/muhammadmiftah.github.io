<?php 
// https://www.malasngoding.com
// menghubungkan koneksi database
include 'koneksi.php';

// menangkap data dari form
$nama = $_POST['nama'];
$nik = $_POST['nik'];
$tmpt_tgl = $_POST['tmpt_tgl'];
$jkl = $_POST['jkl'];
$kwg = $_POST['kwg'];
$alamat = $_POST['alamat'];
$pekerjaan = $_POST['pekerjaan'];
// menginput data ke table barang

mysqli_query($koneksi,"INSERT INTO napi VALUES ('', '$nama', '$nik', '$tmpt_tgl', '$jkl', '$kwg', '$alamat', '$pekerjaan')")or die(mysqli_error($koneksi));

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data berhasil ditambah');document.location='input_napi.php'</script>";
?>