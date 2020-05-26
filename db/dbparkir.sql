-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2020 pada 06.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbparkir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jeniskendaraan`
--

CREATE TABLE `jeniskendaraan` (
  `jenis_id` int(10) NOT NULL,
  `jeniskendaraan` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL,
  `bayar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jeniskendaraan`
--

INSERT INTO `jeniskendaraan` (`jenis_id`, `jeniskendaraan`, `status`, `bayar`) VALUES
(1, 'Motor', 'on', 2000),
(2, 'Mobil', 'on', 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `kendaraan_id` int(10) NOT NULL,
  `jenis_id` int(10) NOT NULL,
  `nomor_polisi` varchar(250) NOT NULL,
  `waktu_masuk` datetime NOT NULL,
  `waktu_keluar` datetime NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` enum('Masuk','Keluar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`kendaraan_id`, `jenis_id`, `nomor_polisi`, `waktu_masuk`, `waktu_keluar`, `harga`, `keterangan`) VALUES
(31, 2, 'Z5432BB', '2019-05-02 10:12:45', '2019-05-02 10:18:40', 4000, 'Keluar'),
(32, 1, '12312455', '2019-05-02 10:21:20', '2019-05-02 10:22:04', 2000, 'Keluar'),
(33, 2, 'Z9876GB', '2019-05-02 10:34:47', '2019-05-02 13:31:10', 12000, 'Keluar'),
(34, 1, 'Z8765NB', '2019-05-02 13:08:55', '2019-05-02 13:29:42', 2000, 'Keluar'),
(35, 2, 'B7654RG', '2019-05-02 13:30:56', '2019-05-02 13:31:23', 4000, 'Keluar'),
(36, 2, 'Z1234NN', '2019-05-02 13:33:26', '2019-05-02 13:33:42', 4000, 'Keluar'),
(37, 1, 'Z856BB', '2019-05-02 13:37:15', '2019-05-02 13:37:21', 2000, 'Keluar'),
(38, 2, 'Z6754FG', '2019-05-02 13:39:07', '2019-05-02 13:40:19', 4000, 'Keluar'),
(39, 1, 'Z6754HJ', '2019-05-02 13:41:13', '2019-05-02 13:53:19', 2000, 'Keluar'),
(40, 1, 'Z6543ER', '2019-05-02 13:53:42', '2019-05-02 13:53:47', 2000, 'Keluar'),
(41, 2, 'Z5438HJ', '2019-05-02 13:55:43', '2019-05-02 13:56:56', 4000, 'Keluar'),
(42, 2, 'Z786BN', '2019-05-02 13:57:42', '2019-05-02 14:00:59', 4000, 'Keluar'),
(43, 1, 'Z7865BV', '2019-05-02 14:01:37', '2019-05-02 14:01:46', 2000, 'Keluar'),
(44, 2, 'Z564VV', '2019-05-02 14:02:32', '2019-05-02 14:03:20', 4000, 'Keluar'),
(45, 2, 'Z7654RT', '2019-05-02 14:05:01', '2019-05-02 14:05:06', 4000, 'Keluar'),
(46, 2, 'Z0987NM', '2019-05-02 14:05:28', '2019-05-02 14:05:36', 4000, 'Keluar'),
(47, 2, 'Z432HJ', '2019-05-02 14:06:50', '2019-05-02 14:07:17', 4000, 'Keluar'),
(48, 2, 'Z456KL', '2019-05-02 14:09:13', '2019-05-02 14:09:21', 4000, 'Keluar'),
(49, 2, 'Z746BN', '2019-05-02 14:10:57', '2019-05-02 14:11:02', 4000, 'Keluar'),
(50, 1, 'Z789MN', '2019-05-02 14:12:58', '2019-05-02 14:22:21', 2000, 'Keluar'),
(51, 1, 'B769MN', '2019-05-02 14:23:24', '2019-05-02 14:23:33', 2000, 'Keluar'),
(52, 1, 'Z0987MN', '2019-05-02 14:24:19', '2019-05-02 14:24:36', 2000, 'Keluar'),
(53, 1, 'Z765SD', '2019-05-02 14:26:09', '2019-05-02 14:26:15', 2000, 'Keluar'),
(54, 1, 'Z678GH', '2019-05-02 14:28:33', '2019-05-02 14:34:20', 2000, 'Keluar'),
(55, 2, 'Z5643JK', '2019-05-02 14:35:14', '2020-01-10 11:40:27', 24284000, 'Keluar'),
(56, 1, 'Z7659KL', '2019-05-02 14:35:24', '2020-01-10 11:38:48', 12142000, 'Keluar'),
(57, 2, 'Z6543FR', '2019-05-02 15:13:16', '2020-01-10 11:47:16', 24280000, 'Keluar'),
(58, 1, 'F450RT', '2020-01-10 11:39:04', '2020-01-10 11:39:11', 2000, 'Keluar'),
(59, 1, 'F4569OP', '2020-01-10 11:46:18', '2020-01-10 11:47:43', 2000, 'Keluar'),
(60, 2, 'D341EE', '2020-01-10 11:48:18', '2020-01-10 11:48:19', 4000, 'Keluar'),
(61, 1, 'ADA', '2020-01-10 11:49:38', '2020-01-10 11:52:18', 2000, 'Keluar'),
(62, 1, 'r54545p', '2020-01-10 11:54:41', '2020-01-10 11:56:30', 2000, 'Keluar'),
(63, 2, 'D5444E', '2020-01-10 11:57:53', '2020-01-10 11:57:54', 4000, 'Keluar'),
(64, 1, 'A2121FF', '2020-01-10 11:59:07', '2020-01-10 11:59:08', 2000, 'Keluar'),
(65, 1, 'TTT44', '2020-01-10 12:01:27', '2020-01-10 12:01:28', 2000, 'Keluar'),
(66, 1, 'asa', '2020-01-10 12:07:19', '2020-01-10 12:07:21', 2000, 'Keluar'),
(67, 1, 'asasasaaaaaaaaaaa', '2020-01-10 12:13:32', '2020-01-10 12:20:31', 2000, 'Keluar'),
(68, 1, 'F 69 SX', '2020-01-10 12:23:20', '0000-00-00 00:00:00', 0, 'Masuk'),
(69, 2, 'B 4 BI', '2020-01-10 12:23:29', '0000-00-00 00:00:00', 0, 'Masuk'),
(70, 1, 'C 351 RIA', '2020-01-10 12:26:33', '2020-01-10 12:46:22', 2000, 'Keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `username`, `alamat`, `phone`, `password`, `status`) VALUES
(10, 'Admin', 'Administrator', 'admin', 'NY', '089756', 'admin', 'on');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jeniskendaraan`
--
ALTER TABLE `jeniskendaraan`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`kendaraan_id`),
  ADD KEY `kategori_id` (`jenis_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jeniskendaraan`
--
ALTER TABLE `jeniskendaraan`
  MODIFY `jenis_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `kendaraan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `kendaraan_ibfk_1` FOREIGN KEY (`jenis_id`) REFERENCES `jeniskendaraan` (`jenis_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
