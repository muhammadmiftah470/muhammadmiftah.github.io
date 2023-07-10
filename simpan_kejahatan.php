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

if (mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM kejahatan WHERE nmr_regis = '$nmr_regis'    ")) && mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM kejahatan WHERE nama = '$nama'"))) {
    session_start();
    $_SESSION["v_duplicate"] = "Nama dan Nomor Registrasi Sudah Terdaftar";
    header("Location: input_kejahatan.php");
    exit;
} else if (mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM kejahatan WHERE nama = '$nama'"))) {
    session_start();
    $_SESSION["v_duplicate"] = "Nama Sudah Terdaftar";
    header("Location: input_kejahatan.php");
    exit;
} elseif (mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM kejahatan WHERE nmr_regis = '$nmr_regis'  "))) {
    session_start();
    $_SESSION["v_duplicate"] = "Nomor Registrasi Sudah Terdaftar";
    header("Location: input_kejahatan.php");
    exit;
}

mysqli_query($koneksi, "INSERT INTO kejahatan VALUES ('', '$nama', '$nmr_regis', '$jenis_kjh', '$pidana', '$lama_pidana')") or die(mysqli_error($koneksi));

// mengalihkan halaman kembali ke index.php
echo "<script>alert('Data berhasil ditambah');document.location='data_kejahatan.php'</script>";
