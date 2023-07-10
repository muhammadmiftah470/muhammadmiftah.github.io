-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Agu 2021 pada 10.41
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
  `pekerjaan` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `napi`
--

INSERT INTO `napi` (`id`, `nama`, `nik`, `tmpt_tgl`, `jkl`, `kwg`, `alamat`, `pekerjaan`) VALUES
(31, 'Mansyur ', '16577458765456578', 'Palembang, 07-Juni-1970', 'Laki-laki', 'WNI', 'JL. Macan Kumbang I, Kelurahan No.77 Rt.43 Rw.11 Demang Lebar Daun Kec. Ilir Barat Kota Palembang', 'Wiraswasta'),
(32, 'Ari Ananda ', '1703101335000003', 'Palembang, 15-Januari-1976', 'Laki-laki', 'WNI', 'Jl. May Zen Lorong Cendana, Sei Slayur Kec. Kalidoni, Kota Palembang', 'Wiraswasta'),
(36, 'Iqbal', '1806303343535536', 'Pulau rimau 09-07-1999', 'Laki-laki', 'WNI', 'Jl. Kelapa Dua Rt 02 Rw 06 ', 'Wiraswasta'),
(37, 'Amizar', '177266666633', 'palembang, 07-mei-2000', 'Laki-laki', 'WNI', 'jl. sribasuki palembang', 'Wiraswasta'),
(38, 'Mansyur ', '177266666633', '', '', '', '', ''),
(39, 'Amizar', '177266666633', '', '', '', '', ''),
(40, 'lala', '675', '', '', '', '', ''),
(41, 'Iqbal', '34', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `napi`
--
ALTER TABLE `napi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `napi`
--
ALTER TABLE `napi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
