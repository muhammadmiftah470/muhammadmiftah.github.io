<?php 
// koneksi database
include 'koneksi.php';

// menangkap data yang di kirim dari form
$id = $_POST['id'];
$nama = $_POST['nama'];
$nik = $_POST['nik'];
$tmpt_tgl = $_POST['tmpt_tgl'];
$jkl = $_POST['jkl'];
$kwg = $_POST['kwg'];
$alamat = $_POST['alamat'];
$pekerjaan = $_POST['pekerjaan'];

// update data ke database
mysqli_query($koneksi,"update napi set id='$id', nama='$nama', nik='$nik', tmpt_tgl='$tmpt_tgl', jkl='$jkl', kwg='$kwg', alamat='$alamat', pekerjaan='$pekerjaan' where id='$id'");

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data anda berhasil diupdate');document.location='data_napi.php'</script>";

?>