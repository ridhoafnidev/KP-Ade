-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 05:14 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `authKey` varchar(50) NOT NULL,
  `accesToken` varchar(50) NOT NULL,
  `role` enum('SuperAdmin','Admin','','') NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `authKey`, `accesToken`, `role`, `foto`) VALUES
(1, 'admin', 'admin', 'admin-123456', '4dm1n', 'Admin', 'admin.jpg'),
(2, 'superAdmin', '123', 'asuper-admin-123456', 'super-4dm1n', 'SuperAdmin', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_asset`
--

CREATE TABLE `tb_asset` (
  `jenis_barang` varchar(100) DEFAULT NULL,
  `type_merk` varchar(100) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `harga` int(50) DEFAULT NULL,
  `tahun_perolehan` int(50) DEFAULT NULL,
  `jumlah` int(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `departement` varchar(100) DEFAULT NULL,
  `id_asset` int(11) NOT NULL,
  `code_asset` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_asset`
--

INSERT INTO `tb_asset` (`jenis_barang`, `type_merk`, `quantity`, `capacity`, `harga`, `tahun_perolehan`, `jumlah`, `status`, `keterangan`, `departement`, `id_asset`, `code_asset`) VALUES
('Meja 1/2 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 11, '110101'),
('Meja 1/2 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 12, '110102'),
('Meja 1/2 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 13, '110103'),
('Meja 1/2 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 14, '110104'),
('Meja 1/2 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 15, '110105'),
('Meja 1 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 16, '111201'),
('Meja 1 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 17, '111202'),
('Meja 1 biro', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 18, '111203'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 19, '110201'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 20, '110202'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 21, '110203'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 22, '110204'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 23, '110205'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 24, '110206'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 25, '110207'),
('Kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 26, '110208'),
('Kursi susun', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 27, '110301'),
('Kursi susun', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 28, '110302'),
('Kursi susun', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 29, '110303'),
('Meja R.Rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 30, '110401'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 31, '110501'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 32, '110502'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 33, '110503'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 34, '110504'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 35, '110505'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 36, '110506'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 37, '110507'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 38, '110508'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 39, '110509'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 40, '110511'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 41, '110512'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 42, '110513'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 43, '110514'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 44, '110515'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 45, '110516'),
('Kursi rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 46, '110517'),
('Meja & Kursi tamu', '', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 47, '110701'),
('Lemari Buku Kayu', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 48, '110801'),
('Filling Cabinet', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 49, '120201'),
('Filling Cabinet', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 50, '120202'),
('Lemari Buku Besi', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 51, '120301'),
('Lemari Buku Besi', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 52, '120302'),
('Komputer', 'Acer', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 53, '210101'),
('Komputer', 'LG', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 54, '210102'),
('Komputer', 'LG', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 55, '210103'),
('Laptop', 'Asus', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 56, '210501'),
('Laptop', 'Asus', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 57, '210508'),
('Printer', 'Epson', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 58, '210601'),
('Printer', 'Brother DCP-100', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 59, '210602'),
('Calculator', 'Citizen SDC-444S', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 60, '210701'),
('Calculator', 'Casio DJ2214S', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 61, '210702'),
('Calculator', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 62, '210703'),
('Calculator', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 63, '210704'),
('Cctv', 'Survesdace DVR', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 64, '220201'),
('Monitor CCTV', 'LG 32 inch', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 65, '220301'),
('Infocus', 'Acer', '1 unit', '', NULL, NULL, NULL, 'belum diketahui', '', 'HRD EQUIPME', 66, '220401'),
('Layar Infocus', 'G-Lite', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 67, '220501'),
('Sound sistem', 'CMC', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 68, '220601'),
('AC ', 'SHARP', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 69, '220801'),
('AC', 'SHARP', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 70, '220802'),
('AC', 'LG', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 71, '220803'),
('AC', '', '1 set', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 72, '220803'),
('Mesin Fotocopy', 'Inoe 164', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 73, '221101'),
('Laminator', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 74, '210801'),
('Dispenser', 'Miyako', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 75, '220901'),
('Jam Dinding', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 76, '221501'),
('Infocus', 'Epson', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 77, '220402'),
('TV', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 78, '220701'),
('Kulkas', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 79, '221701'),
('Lemari Buku Besi', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 80, '120308'),
('Locker', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 81, '110901'),
('Brankast', 'Diplomat', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 82, '120101'),
('kursi Rapat', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'HRD EQUIPME', 83, '110510'),
('meja 1/2 biro', 'Expo', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 84, '110107'),
('meja 1/2 biro', 'Expo', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 85, '110108'),
('meja 1/2 biro', 'Expo', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 86, '110109'),
('meja 1/2 biro', 'Expo', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 87, '110110'),
('Meja 1 biro', 'Expo', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 88, '111202'),
('kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 89, '110205'),
('kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 90, '110206'),
('kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 91, '110207'),
('kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 92, '110250'),
('kursi putar', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 93, '110251'),
('kursi susun', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 94, '110302'),
('kursi susun', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 95, '110303'),
('komputer', 'LG', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 96, '210104'),
('komputer', 'LG', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 97, '210105'),
('komputer', 'LG', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 98, '210106'),
('Laptop', 'Toshiba', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 99, '210503'),
('Laptop', 'Asus', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 100, '210508'),
('printer', 'brother ', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 101, '210603'),
('printer', 'brother DCP-T700W', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 102, '210604'),
('printer', 'Epson LX310', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 103, '210619'),
('mesin kasir', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 104, '211201'),
('AC', 'SHARP', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 105, '220818'),
('Lemari Buku Besi', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 106, '120309'),
('Lemari Buku Besi', '', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 107, '120310'),
('meja 1/2 biro', '', '', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 108, '110167'),
('meja 1/2 biro', '', '', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 109, '110168'),
('komputer', 'LG', '1 unit', '', NULL, NULL, NULL, 'baik', '', 'KEUANGAN EQ', 110, '210127'),
('komputer ', 'LG', '1 unit', '', NULL, NULL, NULL, 'Baik', '', 'KEUANGAN EQ', 111, '210128');

-- --------------------------------------------------------

--
-- Table structure for table `tb_departement`
--

CREATE TABLE `tb_departement` (
  `id_departement` int(11) NOT NULL,
  `departement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_departement`
--

INSERT INTO `tb_departement` (`id_departement`, `departement`) VALUES
(1, 'HRD EQUIPMENTS'),
(2, 'KEUANGAN EQUIPMENTS'),
(3, 'PURCHASING EQUIPMENTS'),
(4, 'OPERASIONAL EQUIPMENTS'),
(5, 'PRODUKSI EQUIPMENTS'),
(6, 'KLINIK EQUIPMENTS'),
(7, 'K3 EQUIPMENTS'),
(8, 'LITBANG EQUIPMENTS'),
(9, 'PPIC EQUIPMENTS'),
(10, 'LOGISTIK EQUIPMENTS'),
(11, 'BATCHING PLANT KJ 1'),
(12, 'BATCHING PLANT KJ 2'),
(13, 'BATCHING PLANT KJ 3'),
(14, 'QUALITY MANAGEMENT SYSTEM'),
(15, 'TRANSPORTASI EQUIPMENTS'),
(16, 'QUALITY CONTROL EQUIPMENTS'),
(17, 'ALAT BERAT / KENDARAAN '),
(18, 'KJ 1 FACTORY EQUIPMENTS'),
(19, 'KJ 2 / KJ BANTALAN FACTORY EQUIPMENTS'),
(20, 'KJ 3 FACTORY EQUIPMENTS'),
(21, 'KJ 4 FACTORY EQUIPMENTS'),
(22, 'MUSHOLLA EQUIPMENTS'),
(23, 'REPAER MOULDING KJ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `status` enum('admin','pimpinan','','') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `email`, `no_hp`, `status`, `username`, `password`) VALUES
(1, 'admin', 'aderahmanti@mail.com', '081276463428', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_asset`
--
ALTER TABLE `tb_asset`
  ADD PRIMARY KEY (`id_asset`);

--
-- Indexes for table `tb_departement`
--
ALTER TABLE `tb_departement`
  ADD PRIMARY KEY (`id_departement`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_asset`
--
ALTER TABLE `tb_asset`
  MODIFY `id_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tb_departement`
--
ALTER TABLE `tb_departement`
  MODIFY `id_departement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
