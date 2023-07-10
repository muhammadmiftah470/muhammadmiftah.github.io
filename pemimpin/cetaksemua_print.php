<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lapas Banyuasin</title>
    <link rel="icon" href="a.jpg">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

    <style>
        @media print {
            .tmbol {
                display: none;
            }
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="row tmbol" style="margin-top: 30px; text-align: center;">
            <div class="col">
                <button onclick="print()" class="btn btn-primary">Print</button>
                <a href="data_napi.php">
                    <button class="btn btn-danger">Kembali</button>
                </a>
            </div>
        </div>
        <div class="row" style="margin-top: 20px; text-align: center;">
            <img src="../img/header.png" alt="">
        </div>
        <div class="row" style="margin-top: -20px;">
            <hr>
            <hr style="margin-top: -13px;">
        </div>

        <div class="row">
            <h5 class="text-bold">DATA NARAPIDANA :</h5>
            <div class="col">
                <br>
                </br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Nama</th>
                            <th>Nik</th>
                            <th>Tempat Tanggal Lahir</th>
                            <th>Jenis Kelamin</th>
                            <th>Kewarganegaraan</th>
                            <th>Alamat</th>
                            <th>Pekerjaan</th>
                            <th>Tanggal Masuk</th>
                            <th>Tanggal Keluar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                        include 'koneksi.php';

                        if (!empty($_GET['key'])) {
                            $value = htmlspecialchars($_GET['key']);
                            $barang = mysqli_query($koneksi, "SELECT * FROM napi WHERE nama LIKE '%$value%' OR nik LIKE '%$value%' OR tmpt_tgl LIKE '%$value%' OR jkl LIKE '%$value%' OR kwg LIKE '%$value%' alamat LIKE '%$value%' OR pekerjaan LIKE '%$value%' OR tgl_masuk Like '%$value%' OR tgl_keluar LIKE '%$value%'");
                        } else {
                            $barang = mysqli_query($koneksi, "SELECT * FROM napi");
                        }
                        while ($b = mysqli_fetch_array($barang)) {
                        ?>
                            <tr>
                                <td>
                                    <?php echo $b['nama']; ?>
                                </td>
                                <td>
                                    <?php echo $b['nik']; ?>
                                </td>
                                <td>
                                    <?php echo $b['tmpt_tgl']; ?>
                                </td>
                                <td>
                                    <?php echo $b['jkl']; ?>
                                </td>
                                <td>
                                    <?php echo $b['kwg']; ?>
                                </td>
                                <td>
                                    <?php echo $b['alamat']; ?>
                                </td>
                                <td>
                                    <?php echo $b['pekerjaan']; ?>
                                </td>
                                <td>
                                    <?php echo $b['tgl_masuk']; ?>
                                </td>
                                <td>
                                    <?php echo $b['tgl_keluar']; ?>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <h5 class="text-bold">DATA KEJAHATAN NARAPIDANA :</h5>
            <div class="col">
                <br>
                </br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Nama</th>
                            <th>Nomor Registrasi</th>
                            <th>Jenis Kejahatan</th>
                            <th>Pidana</th>
                            <th>Lama Pidana</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                        include 'koneksi.php';

                        if (!empty($_GET['key'])) {
                            $value = htmlspecialchars($_GET['key']);
                            $barang = mysqli_query($koneksi, "SELECT * FROM kejahatan WHERE nama LIKE '%$value%' OR nmr_regis LIKE '%$value%' OR jenis_kjh LIKE '%$value%' OR pidana LIKE '%$value%' OR lama_pidana LIKE '%$value%'");
                        } else {
                            $barang = mysqli_query($koneksi, "SELECT * FROM kejahatan");
                        }
                        while ($b = mysqli_fetch_array($barang)) {
                        ?>
                            <tr>
                                <td>
                                    <?php echo $b['nama']; ?>
                                </td>
                                <td>
                                    <?php echo $b['nmr_regis']; ?>
                                </td>
                                <td>
                                    <?php echo $b['jenis_kjh']; ?>
                                </td>
                                <td>
                                    <?php echo $b['pidana']; ?>
                                </td>
                                <td>
                                    <?php echo $b['lama_pidana']; ?>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="col text-center">
                <h5 style="position: absolute; right: 110px;">
                    Banyuasin,
                    <?= date("d-m-Y") ?><br>Mengetaui,<br>KepalaLembagaPemasyarakatanKelasIIA<br>Banyuasin
                </h5>
            </div>
            <div class="col text-center">
                <h5 class="text-bold" style="position: absolute; right: 100px; margin-top: 170px;">Ronaldo Davinci
                    Talesa, A.Md.IP., SH.,MH</h5>
            </div>
        </div>
    </div>
</body>

</html>