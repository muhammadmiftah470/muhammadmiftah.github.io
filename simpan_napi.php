<?php
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
$tgl_masuk = $_POST['tgl_masuk'];
$tgl_keluar = $_POST['rwyt_keluar'];

// menginput data ke table barang

if (mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM napi WHERE nik = '$nik'")) && mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM napi WHERE nama = '$nama'"))) {
    session_start();
    $_SESSION["v_duplicate"] = "Nama dan NIK Napi Sudah Terdaftar";
    header("Location: input_napi.php");
    exit;
} else if (mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM napi WHERE nama = '$nama'"))) {
    session_start();
    $_SESSION["v_duplicate"] = "Nama Napi Sudah Terdaftar";
    header("Location: input_napi.php");
    exit;
} elseif (mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM napi WHERE nik = '$nik'"))) {
    session_start();
    $_SESSION["v_duplicate"] = "NIK Napi Sudah Terdaftar";
    header("Location: input_napi.php");
    exit;
}

mysqli_query($koneksi, "INSERT INTO napi VALUES ('', '$nama', '$nik', '$tmpt_tgl', '$jkl', '$kwg', '$alamat', '$pekerjaan', '$tgl_masuk','$tgl_keluar')") or die(mysqli_error($koneksi));

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data berhasil ditambah');document.location='data_napi.php'</script>";
