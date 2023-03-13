-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 07:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `nama_kelas` varchar(30) DEFAULT NULL,
  `kompetensi_keahlian` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(2, 'XII RPL 3', 'Rekayasa Perangkat Lunak'),
(8, 'XII RPL 2', 'Rekayasa Perangkat Lunak'),
(9, 'XII RPL 1', 'Rekayasa Perangkat Lunak'),
(10, 'XII BDP 1', 'Bisnis Daring dan Pemasaran'),
(11, 'XII BDP 2', 'Bisnis Daring dan Pemasaran'),
(12, 'XII BDP 3', 'Bisnis Daring dan Pemasaran'),
(13, 'XII AKL 1', 'Akuntasi dan Keuangan Lembaga'),
(14, 'XII AKL 2', 'Akuntasi dan Keuangan Lembaga'),
(15, 'XII AKL 3', 'Akuntasi dan Keuangan Lembaga'),
(16, 'XII OTKP 1', 'Otomatisasi dan Tata Kelola Perkantoran'),
(17, 'XII OTKP 2', 'Otomatisasi dan Tata Kelola Perkantoran'),
(18, 'XII OTKP 3', 'Otomatisasi dan Tata Kelola Perkantoran');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) UNSIGNED NOT NULL,
  `id_petugas` int(11) UNSIGNED DEFAULT NULL,
  `nisn` char(20) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `bulan_dibayar` varchar(15) DEFAULT NULL,
  `tahun_dibayar` varchar(4) DEFAULT NULL,
  `id_spp` int(11) UNSIGNED DEFAULT NULL,
  `jumlah_bayar` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`) VALUES
(3, 4, '000888', '2023-03-08', 'Januari', '2023', 2, 300000000),
(10, 8, '000888', '2023-03-11', 'Februari', '2023', 2, 300000),
(16, 8, '000100', '2023-03-11', 'Juli', '2022', 3, 200000),
(17, 8, '000100', '2023-03-11', 'Januari', '2023', 2, 300000),
(18, 8, '000100', '2023-03-11', 'Februari', '2023', 2, 300000),
(19, 8, '11222', '2023-03-11', 'Januari', '2023', 2, 300000),
(20, 8, '11222', '2023-03-11', 'Februari', '2023', 2, 300000),
(21, 8, '11222', '2023-03-11', 'Maret', '2023', 2, 300000),
(22, 8, '000200', '2023-03-11', 'Januari', '2023', 2, 300000),
(23, 8, '000200', '2023-03-11', 'Februari', '2023', 2, 300000),
(24, 8, '000300', '2023-03-11', 'Januari', '2023', 2, 300000),
(25, 8, '000300', '2023-03-11', 'Februari', '2023', 2, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) UNSIGNED NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(35) DEFAULT NULL,
  `level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(4, 'admin', '$2a$12$/wPvYeU1le/ABNnIT4yCCuJo.1frJbKLk6btDnZCkQM2prUQiUbii', 'Admin SPP', 'admin'),
(8, 'Nurazijah', '$2a$12$esaPHzEZjuRKx3Pkq5Zj3OvmHmHotrzNkNtvgz..OBe/zSQBgmyeC', 'Admin SPP2', 'admin'),
(13, 'Ayman Amin', '$2a$12$q9qjAwNiq8fGGjfQy5ZxwebGUVHXyNu0vJ2hRVQfJqpGkzdM4i5zG', 'Petugas Satu', 'petugas'),
(14, 'waseem', '$2a$12$q9qjAwNiq8fGGjfQy5ZxwebGUVHXyNu0vJ2hRVQfJqpGkzdM4i5zG', 'petugas dua', 'petugas'),
(15, 'amin', '$2y$10$RShrGHKSjROi5hIkBZsLcOIwEPUwEnysQJZ.U81H2A.I6yQyDdE2y', 'aminin', 'petugas'),
(16, 'Sholihah Nurazijah', '$2y$10$v4kcQI5T2JgtMRP.f0B6zeJl97.amk1QY5EGn7TCcxhRDX79JTzPW', 'Azijah', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(20) NOT NULL DEFAULT '',
  `nis` char(20) NOT NULL DEFAULT '',
  `nama` varchar(35) NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('000100', '000100', 'Akris', 9, 'JL Panembakan', '338398212345', 2),
('000200', '000200', 'Hasanah', 16, 'cikalong wetan', '089745621134', 2),
('000300', '000300', 'Bara Masoud', 8, 'cimahi', '124566342093', 2),
('000777', '000777', 'Shehab al sharani', 2, 'unjani', '0831234567891', 2),
('000888', '000888', 'Sholihah Nurazijah', 2, 'jl padat karya', '083777777', 2),
('11222', '2222', 'aysha', 13, 'Cimahi ', '188899997834', 2);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(2, 2023, 300000),
(3, 2022, 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `pembayaran_siswa` (`id_spp`),
  ADD KEY `pembayaran_petugas` (`id_petugas`),
  ADD KEY `pebayaran_nisn` (`nisn`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `siswa_spp` (`id_spp`),
  ADD KEY `siswa_kelas` (`id_kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pebayaran_nisn` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_petugas` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_siswa` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_spp` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
