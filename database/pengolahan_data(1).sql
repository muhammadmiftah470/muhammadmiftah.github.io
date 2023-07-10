-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2023 pada 18.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengolahan_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kejahatan`
--

CREATE TABLE `kejahatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(222) NOT NULL,
  `nmr_regis` varchar(222) NOT NULL,
  `jenis_kjh` varchar(222) NOT NULL,
  `pidana` varchar(222) NOT NULL,
  `lama_pidana` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kejahatan`
--

INSERT INTO `kejahatan` (`id`, `nama`, `nmr_regis`, `jenis_kjh`, `pidana`, `lama_pidana`) VALUES
(13, 'Amizar', 'BI. 110/2020', 'Narkotika', 'Pasal 114 UU RI No. 35/2009', '14 Tahun Denda Rp.1.000.000.000 Subs. 03 Bulan'),
(14, 'Ari Ananda', 'BI. 400/2019', 'Narkotika', 'Pasal 114 UU RI No. 35/2009', '14 Tahun Denda Rp.1.000.000.000 Subs. 03 Bulan'),
(15, 'Badrun', 'BI. 028/2017', 'Kekerasan seksual', 'Pasal 46 UU RI No. 23/2004', '10 Tahun'),
(16, 'Deka Candra', 'BI. 076/2020', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '04Tahun Denda Rp.800.000.000 Subs. 03 Bulan'),
(17, 'Eko Maulana Ikrak Suyoto', 'BI. 158/2020', 'Perlindungan anak', 'Pasal 82 UU RI No.23/2002', '6 Tahun Denda Rp.1.000.000.000 Subs. 02 Bulan'),
(18, 'Iqbal', 'BI. 165/2020', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '06 Tahun Denda Rp.800.000.000 Subs. 03 Bulan'),
(19, 'Mansyur ', 'BI. 110/2020', 'Narkotika', 'Pasal 114 UU RI No. 35/2009 ', '06 Tahun Denda Rp.1.000.000.000 Subs. 03 Bulan'),
(20, 'Supeno', 'BI. 113/2019', 'Pembunuhan', 'Pasal 338 KUHP', '09 Tahun 06 Bulan'),
(21, 'Ruli astoni', 'BI. 179/2017', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '05 Tahun Denda Rp.800.000.000 Subs. 03 Bulan'),
(23, 'Aladin', 'BI. 564/2019', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '04 Tahun 10 Bulan Denda Rp.800.000.000 Subs. 01 Bulan'),
(24, 'Muksin', 'BI. 137/2020', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '04 Tahun Denda Rp.800.000.000 Subs. 02 Bulan'),
(25, 'Pero', 'BI. 362/2020', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '08 Tahun Denda Rp.800.000.000 Subs. 01 Bulan'),
(26, 'Gandi', 'BI. 563/2020', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '04 Tahun 10 Bulan Denda Rp.800.000.000 Subs. 01 Bulan'),
(27, 'M Fendi', 'BI. 170/2020', 'pencurian', 'Pasal 363 KUHP', '02 Tahun'),
(28, 'Muhammad Nasrun', 'BI. 715/2019', 'Narkotika', 'Pasal 114 UU RI No. 35/2009', '05 Tahun 06 Bulan Denda Rp.1.000.000.000 Subs. 02 Bulan'),
(29, 'Adi Muliawan', 'BI. 665/2019', 'Pencurian', 'Pasal 363 KUHP', '02 Tahun'),
(30, 'Permadi', 'BI. 183/2018', 'Narkotika', 'Pasal 114 UU RI No. 35/2009 ', '06 Tahun 06 Bulan Denda Rp.1.000.000.000 Subs. 06 Bulan'),
(31, 'Sriyanto', 'BI. 134/2020', 'Pembunuhan', 'Pasal 338 KUHP', '09 Tahun 06 Bulan'),
(32, 'Berry Febrianto', 'BI. 391/2017', 'Narkotika', 'Pasal 114 UU RI No. 35/2009 ', '12Tahun Denda Rp.1.000.000.000 Subs. 04 Bulan'),
(33, 'Muhammad Nasir', 'BI. 161/2019', 'Narkotika', 'Pasal 114 UU RI No. 35/2009', '05 Tahun Denda Rp. 800.000.0000 Subs. 03 Bulan'),
(34, 'Muhammad Miftrah Fajrin', '26526562', 'hacker', '5=1y27', '28727');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `level` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'pemimpin', 'pemimpin', 'pemimpin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `napi`
--

CREATE TABLE `napi` (
  `id` int(11) NOT NULL,
  `nama` varchar(222) NOT NULL,
  `nik` varchar(222) NOT NULL,
  `tmpt_tgl` varchar(222) NOT NULL,
  `jkl` varchar(222) NOT NULL,
  `kwg` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(222) NOT NULL,
  `tgl_masuk` varchar(225) NOT NULL,
  `tgl_keluar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `napi`
--

INSERT INTO `napi` (`id`, `nama`, `nik`, `tmpt_tgl`, `jkl`, `kwg`, `alamat`, `pekerjaan`, `tgl_masuk`, `tgl_keluar`) VALUES
(43, 'Mansyur ', '1803012503770011', 'Palembang 13-mei-1970', 'Laki-laki', 'WNI', 'Jl. Raden saleh Rt 05 Rw 02 No 14', 'Wiraswasta', '4 Maret 2020 ', '4 Maret 2026'),
(44, 'Ari Ananda', '3200054650000033', 'Palembang 13-Maret-1965', 'Laki-laki', 'WNI', 'JL. Ahmad yani Rt 02 Rw 01 No 881', 'Wiraswasta', '11 Maret 2019 ', '11 Maret 2033'),
(45, 'Amizar', '1806303343535536', 'Palembang 18-Januari-1973', 'Laki-laki', 'WNI', 'Jl. rambutan Rt. 03 Rw 08 No.76', 'Wiraswasta', '8 Januari 2019 ', '8 Januari 2024'),
(46, 'Iqbal', '1701040240000031', 'Lahat, 08-September-1984', 'Laki-laki', 'WNI', 'JL. Tengku umar Rt 01 Rw 04 No 19 ', 'Karyawan swasta', '6 Oktober 2019 ', '6 Oktober 2025'),
(47, 'Deka Candra', '4003010243000010', 'Palembang, 10-Agustus-1987', 'Laki-laki', 'WNI', 'Jl. imam bonjol Rt 03 Rw 07 No 61', 'Montir', '13 Februari 2020 ', '13 Februari 2024'),
(48, 'Eko Maulana Ikrak Suyoto', '3173050581800005', 'Palembang 07-Februari-1995', 'Laki-laki', 'WNI', 'JL. Talang keramat', 'Karyawan swasta', '11 Desember 2020 ', '11 Desember 2026'),
(49, 'Supeno', '1371016902570008', 'Palembang13', 'Laki-laki', 'WNI', 'Jl. Pipa reja Rt 07 Rw 02 No 68', 'Wiraswasta', '9 November 2019 ', '9 November 2028 '),
(50, 'Badrun', '1444000130000092', 'Sekojo 19-Januari-1990', 'Laki-laki', 'WNI', 'Jl. sekojo Rt 06 Rw 10 No 120', 'Wiraswasta', '1 Mei 2017 ', '1 Mei 2027'),
(51, 'Ruli astoni', '8111934780220016', 'Sungsang 17-Desember-1978', 'Laki-laki', 'WNI', 'Jl. kenten perumahan surya permai no.03', 'Wiraswasta', '1 Oktober 2017 ', '1 Oktober 2022'),
(52, 'Aladin', '4661010370000005', 'Kayu agung 10-November-1973', 'Laki-laki', 'WNI', 'Jl. Ahmad yani lorong rambutan Rt 01 Rw 05 No 9', 'Pegawai Negri Sipil', '7 Mei 2019 ', '8 Mei 2023'),
(53, 'Muksin', '1761000380000007', 'Lahat 15-maret-1983', 'Laki-laki', 'WNI', 'Jl. surya permai Rt 02 Rw 03 No 81', 'Sopir', '20 Maret 2020', '20 Maret 2024'),
(55, 'Gandi Farliansyah', '1820003217911100', 'Palembang, 04-Oktober-1989', 'Laki-laki', 'WNI', 'Jl. Kebun bungan lorohng sahabat No 81', 'Wiraswasta', '22 April 2019 ', '22 April 2024'),
(57, 'M Fendi', '4222022010000021', 'Palembang, 01-Maret-1994', 'Laki-laki', 'WNI', 'JL. Rimau lorong sahabat Rt 02 Rw 03 No 18 ', 'Pedagang', '3 Januari 2020 ', '3 Januari 2022'),
(58, 'Muhammad Nasrun', '8111321220000005', 'Banyuasin, 18-September-1974', 'Laki-laki', 'WNI', 'JL. Sudirman sahabat Rt 01 Rw 04 No 11 ', 'Wiraswasta', '5 Juli 2019 ', '5 Juli 2024'),
(60, 'Permadi', '1992341180002344', 'Metro', 'Laki-laki', 'WNI', 'JL. Mato Merah Perumhana abadi Rt 01 Rw 06 No 30', 'Pegawai Negri Sipil', '19 Juni 2019 ', '19 Juni 2025'),
(61, 'Sriyanto', '1999300010000310', 'Palembang, 09-Januari-1978', 'Laki-laki', 'WNI', 'JL.  Anatasari Lorong rambutan Rt 05 Rw 04 No 10', 'Wiraswasta', '21 maret 2017 ', '21 maret 2023'),
(62, 'Berry Febrianto', '1500711320000333', 'Indralaya 15-Desember-1984', 'Laki-laki', 'WNI', 'JL. Lunjuk Jaya Rt 02 Rw 04 No 19', 'Pedagang', '1 Mei 2017 ', '1 Mei 2031'),
(63, 'Muhammad Nasir', '1401879132100001', 'Palembang 16-Oktober-1985', 'Laki-laki', 'WNI', 'JL. Swakarsa Rt 03 Rw 02 No 21', 'Sopir', '11 Maret 2019 ', '11 Maret 2024');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kejahatan`
--
ALTER TABLE `kejahatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `napi`
--
ALTER TABLE `napi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kejahatan`
--
ALTER TABLE `kejahatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `napi`
--
ALTER TABLE `napi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
