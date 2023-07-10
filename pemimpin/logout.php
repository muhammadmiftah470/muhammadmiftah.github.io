<?php 
// mengaktifkan session php
session_start();

// menghapus semua session
session_destroy();
unset($_SESSION["username"]);
unset($_SESSION["password"]);

// mengalihkan halaman ke halaman login
echo "<script>alert('Anda berhasil keluar');document.location='../login.php'</script>";
?>