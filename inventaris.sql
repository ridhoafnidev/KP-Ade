-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 06:04 AM
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
(1, 'admin', 'admin111', 'admin-123456', '4dm1n', 'Admin', 'admin.jpg'),
(2, 'superAdmin', '123', 'asuper-admin-123456', 'super-4dm1n', 'SuperAdmin', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_asset`
--

CREATE TABLE `tb_asset` (
  `id_asset` int(11) NOT NULL,
  `jenis_barang` varchar(100) DEFAULT NULL,
  `tanggal_masuk` date NOT NULL,
  `type_merk` varchar(225) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `harga` int(50) DEFAULT NULL,
  `tahun_perolehan` varchar(50) DEFAULT NULL,
  `jumlah` int(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `departement` int(11) DEFAULT NULL,
  `code_asset` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_asset`
--

INSERT INTO `tb_asset` (`id_asset`, `jenis_barang`, `tanggal_masuk`, `type_merk`, `quantity`, `capacity`, `harga`, `tahun_perolehan`, `jumlah`, `status`, `keterangan`, `departement`, `code_asset`) VALUES
(112, 'meja 1/2 biro', '2019-09-10', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110101'),
(113, 'meja 1/2 biro', '2019-09-10', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110102'),
(114, 'meja 1/2 biro', '2019-09-10', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110103'),
(115, 'meja 1/2 biro', '2019-09-10', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110104'),
(116, 'meja 1/2 biro', '2019-11-12', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110106'),
(117, 'meja 1 biro', '2020-11-03', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '111201'),
(118, 'meja 1 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '111202'),
(119, 'meja 1 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '111203'),
(120, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110201'),
(121, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110202'),
(122, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110203'),
(124, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110204'),
(125, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110205'),
(126, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110206'),
(127, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110207'),
(128, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110208'),
(129, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110301'),
(130, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110302'),
(131, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110303'),
(132, 'meja R.rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110401'),
(133, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110501'),
(134, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110502'),
(135, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110503'),
(136, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110504'),
(137, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110505'),
(138, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110506'),
(139, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110507'),
(140, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110508'),
(141, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110509'),
(142, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110510'),
(143, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110511'),
(144, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110512'),
(145, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110513'),
(146, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110514'),
(147, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110515'),
(148, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110516'),
(149, 'kursi rapat', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110517'),
(150, 'meja & kursi tamu', '0000-00-00', '', '1 set', '', NULL, '', NULL, 'baik', '', 1, '110701'),
(151, 'lemari buku kayu', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110801'),
(152, 'filling cabinet', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '120201'),
(153, 'filling cabinet', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '120202'),
(154, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '120301'),
(155, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '120302'),
(156, 'komputer', '0000-00-00', 'Acer', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210101'),
(157, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210102'),
(158, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210103'),
(159, 'laptop', '0000-00-00', 'Asus', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210501'),
(160, 'laptop', '0000-00-00', 'Asus', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210508'),
(161, 'printer', '0000-00-00', 'Epson', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210601'),
(162, 'printer', '0000-00-00', 'Brother DCP-100', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210602'),
(163, 'calculator', '0000-00-00', 'Citizen SDC-444S', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210701'),
(164, 'calculator', '0000-00-00', 'Casio DJ2214S', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210702'),
(165, 'calculator', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210703'),
(166, 'calculator', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210704'),
(167, 'CCTV', '0000-00-00', 'survesdace DVR ', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220201'),
(168, 'monitor CCTV', '0000-00-00', 'LG 32 inch', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220301'),
(169, 'in focus', '0000-00-00', 'Acer', '1 unit', '', NULL, '', NULL, 'belum diketahui', '', 1, '220401'),
(170, 'layar in focus', '0000-00-00', 'G-lite', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '220501'),
(171, 'sound sistem', '0000-00-00', 'CMC', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220601'),
(172, 'AC', '0000-00-00', 'sharp', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220801'),
(173, 'AC', '0000-00-00', 'sharp', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220802'),
(174, 'AC', '0000-00-00', 'LG', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220803'),
(175, 'AC', '0000-00-00', '', '1 set', '', NULL, '', NULL, 'baik', '', 1, '220803'),
(176, 'mesin fotocopy', '0000-00-00', 'Inoe 164', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '221101'),
(177, 'laminator', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '210801'),
(178, 'dispenser', '0000-00-00', 'miyako', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '220901'),
(179, 'jam dinding', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '221501'),
(180, 'in focus', '0000-00-00', 'Epson', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '220402'),
(181, 'TV', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '220701'),
(182, 'kulkas', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '221701'),
(183, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '120308'),
(184, 'locker', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110901'),
(185, 'brankas', '0000-00-00', 'diplomat', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '120101'),
(186, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110107'),
(187, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 1, '110108'),
(188, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110109'),
(189, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110110'),
(190, 'meja 1 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '111202'),
(191, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110205'),
(192, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110206'),
(193, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110207'),
(194, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110250'),
(195, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110251'),
(196, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110302'),
(197, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '110303'),
(198, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210104'),
(199, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210105'),
(200, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210106'),
(201, 'laptop', '0000-00-00', 'toshiba', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210503'),
(202, 'laptop', '0000-00-00', 'Asus', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210508'),
(203, 'printer', '0000-00-00', 'Brother', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210603'),
(204, 'printer', '0000-00-00', 'Brother DCP-T700W', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210604'),
(205, 'printer', '0000-00-00', 'Epson LX310', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210619'),
(206, 'mesin kasir', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '211201'),
(207, 'AC', '0000-00-00', 'sharp', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '220818'),
(208, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '120309'),
(209, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '120310'),
(210, 'meja 1/2 biro', '0000-00-00', '', '', '', NULL, '', NULL, 'baik', '', 2, '110167'),
(211, 'meja 1/2 biro', '0000-00-00', '', '', '', NULL, '', NULL, 'baik', '', 2, '110168'),
(212, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210127'),
(213, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 2, '210128'),
(214, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110111'),
(216, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110112'),
(217, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110113'),
(218, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110208'),
(219, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110209'),
(220, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110210'),
(221, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110211'),
(222, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '120303'),
(223, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '120304'),
(224, 'locker', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '110902'),
(225, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '210107'),
(226, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '210108'),
(227, 'AC', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '220804'),
(228, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'rusak', '', 3, '210620'),
(229, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '210623'),
(230, 'dispenser', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '220902'),
(231, 'UPS', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 3, '221402'),
(232, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110114'),
(233, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110115'),
(234, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110116'),
(235, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110117'),
(236, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110117'),
(237, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110118'),
(238, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110119'),
(239, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110120'),
(240, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110121'),
(241, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110122'),
(242, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110123'),
(243, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110304'),
(245, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110305'),
(246, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110306'),
(247, 'laptop', '0000-00-00', 'HP', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '210504'),
(248, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '210109'),
(249, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '210129'),
(250, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '210621'),
(251, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '210622'),
(252, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '210131'),
(253, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'rusak', '', 4, '110164'),
(254, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110254'),
(255, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110255'),
(256, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110256'),
(257, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110257'),
(258, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110258'),
(259, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110259'),
(260, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110260'),
(261, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110261'),
(262, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110262'),
(263, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110263'),
(264, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 4, '110264'),
(265, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110115'),
(266, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110116'),
(267, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110117'),
(268, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110118'),
(269, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110119'),
(270, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110120'),
(271, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110121'),
(272, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110122'),
(273, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110212'),
(274, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110213'),
(275, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110214'),
(276, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110215'),
(277, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110216'),
(278, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110306'),
(279, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110313'),
(280, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110314'),
(281, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110315'),
(282, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '110316'),
(283, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '120305'),
(284, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '210110'),
(285, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '210605'),
(286, 'AC', '0000-00-00', 'sharp', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '220805'),
(287, 'dispenser', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '220903'),
(288, 'laptop', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '210508'),
(289, 'laptop', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 5, '210506'),
(290, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '110128'),
(291, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '110218'),
(292, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '110310'),
(293, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '110311'),
(294, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '120306'),
(295, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '210112'),
(296, 'AC', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '220808'),
(297, 'dispenser', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 6, '220905'),
(298, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110129'),
(299, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110130'),
(300, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110131'),
(301, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110219'),
(302, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110220'),
(303, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110221'),
(304, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '210113'),
(305, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '210607'),
(306, 'AC', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '220807'),
(307, 'dispenser', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '220906'),
(308, 'camera digital', '0000-00-00', 'canon', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '211101'),
(309, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110170'),
(310, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 7, '110171'),
(311, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '110132'),
(312, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '110133'),
(313, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '110134'),
(314, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '110222'),
(315, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '110223'),
(316, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '110224'),
(317, 'filling kabinet', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '120204'),
(318, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '210114'),
(319, 'laptop', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '210505'),
(320, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '210608'),
(321, 'hardisk ekstenal', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 8, '211401'),
(322, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110135'),
(323, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110136'),
(324, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110137'),
(325, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110225'),
(326, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110226'),
(327, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110227'),
(328, 'komputer', '0000-00-00', 'benq', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210115'),
(329, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210116'),
(330, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210609'),
(331, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210610'),
(332, 'indicator timbangan', '0000-00-00', 'osit', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '211301'),
(333, 'UPS', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '221403'),
(334, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210132'),
(335, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210134'),
(336, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110255'),
(337, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, '0', '', 9, '110256'),
(338, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, '2', '', 9, '110165'),
(339, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '110166'),
(340, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '210624'),
(341, 'dispenser', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '220917'),
(342, 'AC', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 9, '220812'),
(343, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '110138'),
(344, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '110139'),
(345, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '110140'),
(346, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '110228'),
(347, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '110229'),
(348, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '110230'),
(349, 'rak besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120401'),
(350, 'rak besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120402'),
(351, 'rak besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120403'),
(352, 'rak besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120404'),
(353, 'rak besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120405'),
(354, 'rak besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120406'),
(355, 'komputer', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '210117'),
(356, 'printer', '0000-00-00', 'Epson', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '210611'),
(357, 'dispenser', '0000-00-00', 'miyako', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '220907'),
(358, 'AC', '0000-00-00', 'Samsung', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '220809'),
(359, 'lemari buku besi', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 10, '120311'),
(360, 'Air Conditioner (AC)', '0000-00-00', 'Sharp', '1 unit', '', NULL, '', NULL, 'baik', '', 11, '220810'),
(361, 'Stavolt', '0000-00-00', 'OKI', '1 unit', '', NULL, '', NULL, 'baik', '', 11, '221601'),
(362, 'komputer', '0000-00-00', 'Acer', '1 unit', '', NULL, '', NULL, 'baik', '', 11, '210118'),
(363, 'UPS Power Supply', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 11, '221401'),
(364, 'Air Conditioner (AC) ', '0000-00-00', 'Gree', '1 unit', '', NULL, '', NULL, 'baik', '', 12, '220811'),
(365, 'dispenser', '0000-00-00', 'miyako', '1 unit', '', NULL, '', NULL, 'baik', '', 12, '220908'),
(366, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 13, '110312'),
(367, 'Air Conditioner (AC)', '0000-00-00', 'Aux', '1 unit', '', NULL, '', NULL, 'baik', '', 13, '220812'),
(368, 'dispenser', '0000-00-00', 'miyako', '1 unit', '', NULL, '', NULL, 'baik', '', 13, '220909'),
(369, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 unit', '', NULL, '', NULL, 'baik', '', 14, '110137'),
(370, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 14, '110231'),
(371, 'laptop', '0000-00-00', 'Asus', '1 unit', '', NULL, '', NULL, 'baik', '', 14, '210507'),
(372, 'meja 1/2 biro', '0000-00-00', 'Olympic', '1 unti', '', NULL, '', NULL, 'baik', '', 15, '110138'),
(373, 'meja 1/2 biro', '0000-00-00', 'Olympic', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110139'),
(374, 'meja 1/2 biro', '0000-00-00', 'Olympic', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110140'),
(375, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110141'),
(376, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110142'),
(377, 'meja 1/2 biro', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110143'),
(378, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110232'),
(379, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110233'),
(380, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110234'),
(381, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110235'),
(382, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110236'),
(383, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '110237'),
(384, 'dispenser', '0000-00-00', 'miyako', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '220910'),
(385, 'AC', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '220814'),
(386, 'filling kabinet', '0000-00-00', 'Okumura', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '120205'),
(387, 'kunci soket 8mm-32mm', '0000-00-00', 'TEKIRO', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310101'),
(388, 'kunci ring pas 8mm', '0000-00-00', 'Tekiro', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310201'),
(389, 'kunci inggris 375mm', '0000-00-00', 'Tekiro', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310301'),
(390, 'kunci L socket biasa ', '0000-00-00', 'bullock', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310401'),
(391, 'kunci L socket bunga', '0000-00-00', 'Bullock', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310501'),
(392, 'alat pembuat kepala Nepel', '0000-00-00', 'Asian first', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310601'),
(393, 'alat pembengkok pipa', '0000-00-00', 'Tekiro', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310701'),
(394, 'kunci moment', '0000-00-00', 'Tekiro', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310801'),
(395, 'Sliding Hammer', '0000-00-00', 'Tekiro', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '310901'),
(396, 'Grease Backet/Pompa Grease', '0000-00-00', 'Yamada', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311001'),
(397, 'bor tangan', '0000-00-00', 'Bosch', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311101'),
(398, 'dongkrak buaya', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311201'),
(399, 'obeng plus(+)', '0000-00-00', 'Toba', '4 unit', '', NULL, '', NULL, 'baik', '', 15, '311301'),
(400, 'obeng minus(-)', '0000-00-00', 'Toba', '3 Unit', '', NULL, '', NULL, 'baik', '', 15, '311401'),
(401, 'kunci T 8 MM', '0000-00-00', 'GLT', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311501'),
(402, 'kunci T 12 MM', '0000-00-00', 'Matsu', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311601'),
(403, 'Sprygun 1 ltr', '0000-00-00', 'Meiji', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311701'),
(404, 'kunci busi 16mm', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311801'),
(405, 'kunci busi 21mm', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '311901'),
(406, 'kunci filter 3 kaki', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '312001'),
(407, 'tang kombinasi', '0000-00-00', 'Tekiro', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '312101'),
(408, 'tang SPI buka', '0000-00-00', 'Tekiro', '1 Unit', '', NULL, '', NULL, 'baik', '', 15, '312201'),
(409, 'tang SPI tutup', '0000-00-00', 'Tekiro', '', '', NULL, '', NULL, 'baik', '', 15, '312301'),
(410, 'polyster', '0000-00-00', 'RYU', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '312401'),
(411, 'mata bor 1mm', '0000-00-00', 'Bulldog', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '312501'),
(412, 'multi tester', '0000-00-00', 'Sanwa', '1 Unit', '', NULL, '', NULL, 'baik', '', 15, '312601'),
(413, 'mesin bor bobok', '0000-00-00', 'Bosch', '1 unit', '', NULL, '', NULL, 'baik', '', 15, '312701'),
(414, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110144'),
(415, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110145'),
(416, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110146'),
(417, 'meja 1/2 biro', '0000-00-00', 'Expo', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110147'),
(418, 'kursi putar', '0000-00-00', '', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110238'),
(419, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '110252'),
(420, 'kursi putar', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '110253'),
(421, 'kursi susun', '0000-00-00', '', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110313'),
(422, 'kursi susun', '0000-00-00', '', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110314'),
(423, 'kursi susun', '0000-00-00', '', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '110315'),
(424, 'kursi susun', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '110317'),
(425, 'lemari buku besi', '0000-00-00', '', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '120307'),
(426, 'alat uji bending spun pile', '0000-00-00', 'Enerpac 700 bar-10000 Psi', '1 set', '', NULL, '', NULL, 'baik', '', 16, '410101'),
(427, 'alat uji slump', '0000-00-00', 'kerucut abram', '3 buah', '', NULL, '', NULL, 'baik', '', 16, '410201'),
(428, 'alat uji tekan beton modifikasi ', '0000-00-00', 'porce gauge analog-2000 KN/10KN', '1 Unit', '', NULL, '', NULL, 'Rusak', '', 16, '410301'),
(429, 'alat uji tekan beton modifikasi ', '0000-00-00', 'kap;2000KN, no seri display 2000.290317', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '410401'),
(430, 'ban ukur', '0000-00-00', 'Feris 30 m', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '410501'),
(431, 'botol kaca', '0000-00-00', 'duran-250ml', '4 buah', '', NULL, '', NULL, 'baik', '', 16, '410601'),
(432, 'capping comroud warmer', '0000-00-00', '220 V-50/60 Hz-1000W', '1 unit', '', NULL, '', NULL, 'rusak', '', 16, '410701'),
(433, 'cetakan benda uji kubus', '0000-00-00', 'kubus (15x15x15cm) ', '51 buah', '', NULL, '', NULL, '48 baik/8 rusak', '', 16, '410801'),
(434, 'cetakan benda uji silinder', '0000-00-00', 'silinder dia.150mm', '50 buah', '', NULL, '', NULL, '42 baik/8 rusak', '', 16, '410901'),
(435, 'cetakan benda uji silinder', '0000-00-00', 'silinder dia.100mm', '6 buah', '', NULL, '', NULL, 'baik', '', 16, '411001'),
(436, 'dongkrak', '0000-00-00', 'Tekiro-10 ton', '4 buah', '', NULL, '', NULL, 'baik', '', 16, '411101'),
(437, 'drying oven ', '0000-00-00', 'millenium MO 2806-365 C/0,1C', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '412201'),
(438, 'gelas ukur kaca', '0000-00-00', 'iwaki-500 ml', '2 buah', '', NULL, '', NULL, '1 baik / 1rusak', '', 16, '411301'),
(439, 'gelas ukur kaca', '0000-00-00', 'herma-500 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '411401'),
(440, 'gelas ukur kaca', '0000-00-00', 'iwaki-1000 ml', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '411501'),
(441, 'gelas ukur kaca', '0000-00-00', 'iwaki-50 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '411601'),
(442, 'gelas ukur kaca', '0000-00-00', 'iwaki-25 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '411701'),
(443, 'gelas ukur plastik', '0000-00-00', 'vitlab-500 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '411801'),
(444, 'gelas ukur plastik', '0000-00-00', 'vitlab-1000 ml', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '411901'),
(445, 'gelas ukur plastik', '0000-00-00', '100 ml/1 ml', '1  buah', '', NULL, '', NULL, 'baik', '', 16, '412001'),
(446, 'gelas ukur plastik', '0000-00-00', '50 ml / 0,5 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412101'),
(447, 'gelas ukur plastik', '0000-00-00', '25 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412201'),
(448, 'hammer test', '0000-00-00', 'astech-100 skala / 2 skala-2', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '412301'),
(449, 'jangka sorong', '0000-00-00', 'tricel brand/shanghai china-150 mm/0,02 mm', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412401'),
(450, 'jangka sorong', '0000-00-00', 'tricel brand / shanghai china 300 mm / 0,05 mm', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412501'),
(451, 'katrol', '0000-00-00', '1 ton', '1 set', '', NULL, '', NULL, 'baik', '', 16, '412601'),
(452, 'kompor gas', '0000-00-00', 'quantum-QGC 101 R', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412701'),
(453, 'kompor minyak', '0000-00-00', 'hock 16 sumbu', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412801'),
(454, 'kuali besi', '0000-00-00', '', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '412901'),
(455, 'los angeles', '0000-00-00', '220 v-50/60 Hz-1450 rpm-1000 w', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '413001'),
(456, 'meja tempat uji berat jenis', '0000-00-00', '', '1 set', '', NULL, '', NULL, 'rusak', '', 16, '413101'),
(457, 'mistar baja 1 m', '0000-00-00', '1000 mm / 0,5 mm', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '413201'),
(458, 'molen beton ', '0000-00-00', 'kapasitas kecil', '3 buah', '', NULL, '', NULL, 'baik', '', 16, '413301'),
(459, 'piknometer', '0000-00-00', 'iwaki/ / asah glass-500 ml', '3 buah', '', NULL, '', NULL, 'baik', '', 16, '413401'),
(460, 'piknometer', '0000-00-00', 'schot duran-500 ml', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '413501'),
(461, 'sieve mesh', '0000-00-00', 'no 200(0,074 mm)', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '413601'),
(462, 'sieve mesh', '0000-00-00', 'no 100(0,150 mm)', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '413701'),
(463, 'sieve mesh', '0000-00-00', 'no 60(0,180 mm)', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '413801'),
(464, 'sieve mesh', '0000-00-00', 'no 50(0,300 mm)', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '413901'),
(465, 'sieve mesh', '0000-00-00', 'no 40(0,430 mm)', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '414001'),
(466, 'sieve mesh', '0000-00-00', 'no 30(0,600 mm)', '2 buah', '', NULL, '', NULL, 'BAIK', '', 16, '414101'),
(467, 'sieve mesh', '0000-00-00', 'no 20', '1 buah', '', NULL, NULL, NULL, 'baik', '', 1, '414201'),
(468, 'sieve mesh', '0000-00-00', 'no 16 (1,18mm)', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '414301'),
(469, 'sieve mesh', '0000-00-00', 'no 10', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '414401'),
(470, 'sieve mesh', '0000-00-00', 'no 12', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '414501'),
(471, 'sieve mesh', '0000-00-00', 'no 8(2,36 mm)', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '414601'),
(472, 'sieve mesh', '0000-00-00', 'no 4(4,76 mm)', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '414701'),
(473, 'sieve mesh', '0000-00-00', 'no 2', '2 buah', '', NULL, '', NULL, 'baik', '', 16, '414801'),
(474, 'sieve mesh', '0000-00-00', 'no 1/4 \"(6,25 mm)', '1 buah', '', NULL, '', NULL, 'baik', '', 16, '414901'),
(475, 'sieve mesh', '0000-00-00', 'no 3/8 \"(9,50 mm)', '2 buah', '', NULL, NULL, NULL, 'baik', '', 1, '415001'),
(476, 'sieve mesh', '0000-00-00', 'no1/2 \"(12,50 mm)', '1 buah', '', NULL, NULL, NULL, 'baik', '', 1, '415101'),
(477, 'sieve mesh', '0000-00-00', 'no 3/4 \"\'(20 mm)', '1 buah', '', NULL, NULL, NULL, 'baik', '', 1, '415201'),
(478, 'sieve mesh', '0000-00-00', 'no 1\"(25 mm)', '2 uah', '', NULL, NULL, NULL, 'baik', '', 16, '415301'),
(479, 'sieve mesh', '0000-00-00', 'no 1 1/4\" ', '2 buah', '', NULL, NULL, NULL, 'baik', '', 1, '415401'),
(480, 'sieve mesh', '0000-00-00', 'no 1 1/2\"(40 mm)', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '415501'),
(481, 'sieve mesh', '0000-00-00', 'no 2\"(50mm)', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '415601'),
(482, 'sieve mesh', '0000-00-00', 'pan ', '2 buah', '', NULL, NULL, NULL, 'baik', '', 16, '415701'),
(483, 'sieve mesh', '0000-00-00', 'tutp saringan', '2 buah', '', NULL, NULL, NULL, 'baik', '', 16, '415801'),
(484, 'sieve shaker', '0000-00-00', 'SBIJ-220V;50Hz', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '415901'),
(485, 'sieve shaker', '0000-00-00', 'BK-220V-50/60Hz-200w', '1 buah', '', NULL, NULL, NULL, 'rusak', '', 16, '416001'),
(486, 'stop watch', '0000-00-00', 'diamond/analog/803-15mnt 59det/0,1det', '2 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416101'),
(487, 'tabung gas', '0000-00-00', 'pertamina 12kg', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416201'),
(488, 'tachnometer', '0000-00-00', 'sampo DT6235B S421746', '1 buah', '', NULL, NULL, NULL, 'rusak', '', 16, '416301'),
(489, 'tachnometer', '0000-00-00', 'DT6235B S145108', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416401'),
(490, 'talam bulat', '0000-00-00', '9 besar hock, 5 sedang, & 5 kecil', '19 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416501'),
(491, 'talam kotak', '0000-00-00', '2 besar, 1 sedang, & 1 kecil', '4 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416601'),
(492, 'thermometer', '0000-00-00', 'sense analog-200C/2C', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416701'),
(493, 'thermometer', '0000-00-00', 'sense analog-100C', '1 buah', '', NULL, NULL, NULL, 'rusak', '', 16, '416801'),
(494, 'thermometer', '0000-00-00', 'MC-100C', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '416901'),
(495, 'timbangan elektronik', '0000-00-00', 'CAP-Crane scale-3000kg/1kg-|||', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417001'),
(496, 'timbangan elektronik', '0000-00-00', 'sonic 25 sonic T10-60kg/0,2g-|||', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417101'),
(497, 'timbangan elektronik', '0000-00-00', 'excellent-6kg/0,1g-|||', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417201'),
(498, 'timbangan elektronik', '0000-00-00', 'excellent-30kg/0,1g-|||', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417301'),
(499, 'vibrating table', '0000-00-00', 'JCO 545-220V-3600rpm', '1 unit', '', NULL, NULL, NULL, 'rusak', '', 16, '417401'),
(500, 'waterpas besar', '0000-00-00', 'xander level W/magnetic 50cm', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417501'),
(501, 'waterpas kecil', '0000-00-00', 'prohex art.4610-100', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417601'),
(502, 'stock watch digital', '0000-00-00', 'rox sw 2018', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417701'),
(503, 'glass magnifyng', '0000-00-00', '75 mm', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417801'),
(504, 'molen beton', '0000-00-00', 'kapasitas kecil', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '417901'),
(505, 'jangka sorong digital', '0000-00-00', 'nankai 300mm', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '418001'),
(506, 'timbangan elektronik', '0000-00-00', 'acis AW-x 3kg x 0,2gr', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '418101'),
(507, 'timbangan elektronik gantung', '0000-00-00', 'kap:50kg kenko KK 300H', '1 unit', '', NULL, NULL, NULL, 'baik', '', 16, '418201'),
(508, 'mini grinder', '0000-00-00', 'bosch Gws 060', '1 unit ', '', NULL, NULL, NULL, 'baik', '', 16, '418301'),
(509, 'senter', '0000-00-00', 'visalux vs 7015SL', '1 unit ', '', NULL, NULL, NULL, 'baik', '', 16, '418401'),
(510, 'gerobak sorong ', '0000-00-00', 'artco merah', '2 buah', '', NULL, NULL, NULL, 'baik', '', 16, '418501'),
(511, 'kunci pas', '0000-00-00', 'Tekiro -17', '6 buah', '', NULL, NULL, NULL, 'baik', '', 16, '418601'),
(512, 'kunci pas', '0000-00-00', 'Tekiro -14', '2  buah', '', NULL, NULL, NULL, 'baik', '', 16, '418701'),
(513, 'kunci pas', '0000-00-00', 'drop forget 12-13', '1 buah', '', NULL, NULL, NULL, 'baik', '', 16, '418801'),
(514, 'timbangan batching plant', '0000-00-00', 'great scale/XK 3190 A7-6000kg/2kg (Ag.)-1500kg/2kg (Smn)', '2 unit', '', NULL, NULL, NULL, 'baik', '', 16, '418901'),
(515, 'timbangan batching plant', '0000-00-00', 'sonic A12 E-6000kg/5kg (Ag.) -3000kg/2kg (Smn)', '2 unit', '', NULL, '', NULL, 'baik', '', 16, '419001'),
(516, 'timbangan batching plant', '0000-00-00', 'rinstrum R30-3000kg/2kg (Ag.) -1500kg/2kg (Smn)', '2 unit', '', NULL, '', NULL, 'baik', '', 16, '419101'),
(517, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '210119'),
(518, 'printer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '210613'),
(519, 'AC', '0000-00-00', '', '1 unit ', '', NULL, '', NULL, 'baik', '', 16, '220815'),
(520, 'kamera digital', '0000-00-00', '', '1 unit ', '', NULL, '', NULL, 'baik', '', 16, '211102'),
(521, 'komputer', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '210133'),
(522, 'dispenser', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 16, '220911'),
(523, 'loader', '0000-00-00', 'komatsu (WA 380)', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '312801'),
(524, 'loader', '0000-00-00', 'GMC LW 321 F', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '312901'),
(525, 'loader', '0000-00-00', 'Changlin 937', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313001'),
(526, 'truck fuso mixer (BA 8574 QU)', '0000-00-00', 'hino PS 250', '1 unit', '', NULL, '', NULL, 'rusak', '', 17, '313101'),
(527, 'truck fuso mixer (BA 8570 QU)', '0000-00-00', 'Hino PS 250', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313201'),
(528, 'forklift', '0000-00-00', 'mitsubishi', '1 unit', '', NULL, '', NULL, 'rusak', '', 17, '313301'),
(529, 'forklift', '0000-00-00', 'toyota', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313401'),
(530, 'colt diesel', '0000-00-00', 'mitsubishi PS 100', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313501'),
(531, 'kijang avanza', '0000-00-00', 'toyota BA 1308 QN', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313601'),
(532, 'kijang avanza', '0000-00-00', 'toyota BM 1364 JO', '', '1 UNIT', NULL, '', NULL, 'baik', '', 17, '313701'),
(533, 'kijang avanza', '0000-00-00', 'toyota BA 1832 LO', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313801'),
(534, 'kijang avanza', '0000-00-00', 'toyota BA 1898 BB', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '313901'),
(535, 'kijang avanza', '0000-00-00', 'toyota BM 1693 QD', '', '1 unit', NULL, '', NULL, 'baik', '', 17, '314001'),
(536, 'grand max', '0000-00-00', 'daihatsu BM 8501 TK', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314101'),
(537, 'grand max', '0000-00-00', 'daihatsu BM 1492 ZF', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314201'),
(538, 'grand max (ambulance)', '0000-00-00', 'daihatsu BM 8958 FB', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314301'),
(539, 'panther', '0000-00-00', 'isuzu BA 1389 BH', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314401'),
(540, 'motor triesda', '0000-00-00', 'KAISAR BM 5356 FP', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314501'),
(541, 'motor mio', '0000-00-00', 'YAMAHA BM', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314601'),
(542, 'kijang innova', '0000-00-00', 'BA 1299 FR', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314701'),
(543, 'HILUX', '0000-00-00', 'BA 1458 XY', '1 unit', '', NULL, '', NULL, 'baik', '', 17, '314801'),
(544, 'gentri', '0000-00-00', '', '4', '', NULL, '', NULL, '1 rusak', 'bisa diprbaiki', 18, '510101'),
(545, 'hoist crane', '0000-00-00', 'hitachi', '2', '7,5 ton', NULL, '2010', NULL, 'baik', '', 18, '510201'),
(546, 'hoist crane', '0000-00-00', 'LG', '3', '5 ton', NULL, '2016', NULL, 'baik', '', 18, '510301'),
(547, 'hoist crane', '0000-00-00', 'BLACK BEAR', '2', '3,2 ton', NULL, '2011', NULL, 'baik', '', 18, '510401'),
(548, 'mesin spining', '0000-00-00', 'China', '2', '55 KW', NULL, '2010 / 2011', NULL, 'baik', '', 18, '510501'),
(549, 'boiler', '0000-00-00', 'indonesia', '1', '5 ton', NULL, '2010', NULL, 'baik', '', 18, '510601'),
(550, 'gerobak pengecoran', '0000-00-00', '', '1', '', NULL, '2010', NULL, 'baik', '', 18, '510701'),
(551, 'batching plant', '0000-00-00', 'sicoma', '2', '2 s/d kubik', NULL, '2010 / 2017', NULL, '1 tidak di pakai ', 'tidak diketahui', 18, '510801'),
(552, 'strasing tiang listrik', '0000-00-00', 'China', '2', '60 mpA', NULL, '2012', NULL, 'baik', '', 18, '510901'),
(553, 'mesin heading tiang listrik', '0000-00-00', 'PARILLA', '1', '7,0 s/d 9 mm', NULL, '2012', NULL, 'rusak', '', 18, '511001'),
(554, 'travo las(besar)', '0000-00-00', 'YS-500A', '3', '', NULL, '2017', NULL, 'baik', '', 18, '511101'),
(555, 'travo las(besar)', '0000-00-00', 'TITAN 2X6-500', '1', '', NULL, '2016', NULL, 'baik', '', 18, '511201'),
(556, 'travo las(besar)', '0000-00-00', 'MANFACTURE PRODUK(BA 500 A)', '2', '', NULL, '2012', NULL, '1 rusak / 1 baik', 'tidak pernah diperbaiki', 18, '511301'),
(557, 'mesin bubut', '0000-00-00', 'C 6280B/300', '1', '', NULL, '2012', NULL, 'baik', '', 18, '511401'),
(558, 'mesin bubut', '0000-00-00', 'C 6280B/200', '2', '', NULL, '2015', NULL, 'baik', '', 18, '5115001'),
(559, 'jangka sorong', '0000-00-00', 'MITOROYO', '1', '0 s//d 300 mm', NULL, '2012', NULL, 'baik', '', 18, '511601'),
(560, 'chain black', '0000-00-00', '', '1', '2 ton', NULL, '2014', NULL, 'baik', '', 18, '511701'),
(561, 'sisir drat', '0000-00-00', '', '1', '', NULL, '2012', NULL, 'baik', '', 18, '511801'),
(562, 'bor duduk', '0000-00-00', '', '1', '', NULL, '2010', NULL, 'rusak', 'belum diketahui', 18, '511901'),
(563, 'bor duduk(besar)', '0000-00-00', 'KRISBOW', '1', '', NULL, '2011', NULL, 'baik', '', 18, '512001'),
(564, 'gergaji mesin', '0000-00-00', 'yanmar', '1', '', NULL, '2015', NULL, 'baik', '', 18, '512101'),
(565, 'gerinda 5', '0000-00-00', 'makita', '2', '', NULL, '', NULL, 'baik', '', 18, '512201'),
(566, 'bor magnet 300 W', '0000-00-00', 'leopart', '1', '', NULL, '', NULL, 'baik', '', 18, '512301'),
(567, 'siku-siku', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '512401'),
(568, 'klem-F', '0000-00-00', 'DIN-5117', '1', '', NULL, '', NULL, 'baik', '', 18, '512501'),
(569, 'mesin vibrator', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '512601'),
(570, 'water pas', '0000-00-00', 'eye brand', '1', '', NULL, '', NULL, 'baik', '', 18, '512701'),
(571, 'bor magnet', '0000-00-00', 'THYSON TH28N ', '1', '', NULL, '', NULL, 'baik', '', 18, '512801'),
(572, 'compresor', '0000-00-00', 'krisbow 13 KW', '1', '', NULL, '', NULL, 'baik', '', 18, '512901'),
(573, 'meja rangkaian 9 m', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '513201'),
(574, 'travo las(besar)', '0000-00-00', 'YS-400A', '1', '', NULL, '', NULL, 'baik', '', 18, '513001'),
(575, 'compresor', '0000-00-00', 'puma', '1', '', NULL, '', NULL, 'baik', '', 18, '513101'),
(576, 'meja rangkaian 12 m', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '513301'),
(577, 'meja rangkain 14 m', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '513401'),
(578, 'mesin bubut', '0000-00-00', 'wijaya machinery', '1', '', NULL, '', NULL, 'baik', '', 18, '513501'),
(579, 'chain block/katrol', '0000-00-00', '10 ton', '1', '', NULL, '', NULL, 'baik', '', 18, '513601'),
(580, 'chain block/katrol', '0000-00-00', '1 ton', '2', '', NULL, '', NULL, '1 rusak', '', 18, '513701'),
(581, 'tangki angin', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '513801'),
(582, 'compresor', '0000-00-00', 'united', '1', '', NULL, '', NULL, 'baik', '', 18, '513901'),
(583, 'tangki angin kecil', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514001'),
(584, 'motor gear box crane', '0000-00-00', 'room 3 phase', '6', '', NULL, '', NULL, 'baik', '', 18, '514101'),
(585, 'mesin stresing', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514201'),
(586, 'mesin grobak pengisian', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514301'),
(587, 'gear box gerobak pengisian', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514401'),
(588, 'vibrator gerobak pengisian', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '5145001'),
(589, 'motor penggerak moullding', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514601'),
(590, 'mesin penggulung spiral', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514701'),
(591, 'mesin heading', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '514801'),
(592, 'pompa air pedrollo', '0000-00-00', '3 phase', '2', '', NULL, '', NULL, 'baik', '', 18, '514901'),
(593, 'pompa air shimizu', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '515001'),
(594, 'hoist crane', '0000-00-00', 'black bear', '1', '', NULL, '', NULL, 'rusak', 'tidak diketahui', 18, '515101'),
(595, 'hoist crane', '0000-00-00', '', '2', '', NULL, '', NULL, 'rusak', 'tidak diketahui', 18, '515201'),
(596, 'buket material', '0000-00-00', '', '1', '', NULL, '', NULL, 'rusak', '', 18, '515301'),
(597, 'pompa air national', '0000-00-00', '3 phase', '1', '', NULL, '', NULL, 'baik', '', 18, '515401'),
(598, 'mesin heading tiang listrik', '0000-00-00', 'cina', '1', '', NULL, '', NULL, 'baik', '', 18, '515501'),
(599, 'hidrolik valve gerobak', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 18, '515601'),
(600, 'kubikel', '0000-00-00', '', '', '', NULL, '', NULL, '', '', 18, '515701'),
(601, 'hoist crane', '0000-00-00', 'HITACHI', '6', '7,5 ton', NULL, '2012', NULL, 'baik', '', 19, '515801'),
(602, 'hoist crane', '0000-00-00', 'HITACHI', '2', '3,2 ton', NULL, '2012', NULL, 'baik', '', 19, '515901'),
(603, 'hoist crane', '0000-00-00', 'HITACHI', '1', '5 ton', NULL, '2016', NULL, 'baik', '', 19, '516001'),
(604, 'batching plant', '0000-00-00', 'sikoma', '1', '2 s/d kubik', NULL, '2012', NULL, 'baik', '', 19, '516101'),
(605, 'mesin heading PC wire', '0000-00-00', 'KCC', '1', '', NULL, '2013', NULL, '1 baik/ 1 rusak', 'rusak(belum diketahui)', 19, '516201'),
(606, 'mesin heading tiang PC bar', '0000-00-00', 'DT-1 automatic pear machine', '1', '', NULL, '2012', NULL, 'baik', '', 19, '516301'),
(607, 'boiler', '0000-00-00', '', '1', '3 ton', NULL, '2013', NULL, 'baik', 'tidak dipakai', 19, '516401'),
(608, 'boiler', '0000-00-00', '', '1', '5 ton', NULL, '2016', NULL, 'baik', '', 19, '516501');
INSERT INTO `tb_asset` (`id_asset`, `jenis_barang`, `tanggal_masuk`, `type_merk`, `quantity`, `capacity`, `harga`, `tahun_perolehan`, `jumlah`, `status`, `keterangan`, `departement`, `code_asset`) VALUES
(609, 'cage forme', '0000-00-00', 'JGD-PC3D TAIZHUO HENGYUN', '1', '350 s/d 600 mm', NULL, '2012', NULL, 'baik', '', 19, '516601'),
(610, 'gerobak pengecoran', '0000-00-00', '', '1', '', NULL, '2012', NULL, 'baik', '', 19, '516701'),
(611, 'wing troli pembakaran', '0000-00-00', '', '1', '', NULL, '2012', NULL, 'baik', '', 19, '516801'),
(612, 'wing troli pengecoran', '0000-00-00', '', '1', '', NULL, '2012', NULL, 'baik', '', 19, '516901'),
(613, 'stresing tiang listrik', '0000-00-00', 'CHINA', '2', '', NULL, '2012', NULL, '1 rusak / 1 baik', '', 19, '517001'),
(614, 'stresing tiang pancang', '0000-00-00', '', '2', '', NULL, '2012', NULL, 'baik', '', 19, '517101'),
(615, 'mesin spinning', '0000-00-00', 'CHINA', '2', '', NULL, '2012', NULL, 'baik', '', 19, '517201'),
(616, 'gearder', '0000-00-00', '', '3', '7,5 ton', NULL, '2012', NULL, 'baik', '', 19, '517301'),
(617, 'gearder', '0000-00-00', '', '4', '3 ton', NULL, '2012', NULL, 'baik', '', 19, '517401'),
(618, 'kompresor', '0000-00-00', 'ingersoll land', '2', '8  bar', NULL, '2016', NULL, '1 rusak / 1baik', '', 19, '517501'),
(619, 'kompresor', '0000-00-00', 'krisbow 13KW', '2', '8 Bbar', NULL, '2012', NULL, '2 rusak / 1 baik', '', 19, '517601'),
(620, 'travo las(besar)', '0000-00-00', 'YS-500 A', '1', '', NULL, '', NULL, 'baik', '', 19, '517701'),
(621, 'travo las(besar)', '0000-00-00', 'BX1-500-2', '1', '40 KVA', NULL, '', NULL, 'baik', '', 19, '517801'),
(622, 'travo las(besar)', '0000-00-00', '', '2', '', NULL, '', NULL, '1 baik / 1 rusak', 'rusak(belum diketahui)', 19, '517901'),
(623, 'genset', '0000-00-00', 'CUMMINS', '1', '1000 KVA', NULL, '', NULL, 'baik', '', 19, '5180001'),
(624, 'meja rangkaian', '0000-00-00', '', '4', '', NULL, '', NULL, 'baik', '', 19, '518101'),
(625, 'barbending', '0000-00-00', 'krisbow', '4', '', NULL, '', NULL, 'baik', '', 19, '518201'),
(626, 'hoist crane', '0000-00-00', 'LG', '1', '10  ton', NULL, '', NULL, 'KJ Bantalan (baik)', '', 19, '518301'),
(627, 'hoist crane', '0000-00-00', 'HITACHI', '1', '5 ton', NULL, '', NULL, 'KJ Bantalan (baik)', '', 19, '518401'),
(628, 'mesin penggulung spiral ', '0000-00-00', '', '1 ', '', 2010, '', NULL, 'baik', '', 19, '518501'),
(629, 'mesin cutting modiv', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 19, '518601'),
(630, 'hoist crane', '0000-00-00', 'Demac', '2', '', NULL, '', NULL, 'rusak', '', 19, '518701'),
(631, 'hoist crane', '0000-00-00', 'HYUNDAI', '1', '', NULL, '', NULL, 'baik', '', 19, '518801'),
(632, 'gentri', '0000-00-00', '', '4', '', NULL, '', NULL, 'baik', '', 19, '518901'),
(633, 'gentri bantalan', '0000-00-00', '', '2', '', NULL, '', NULL, 'baik', '', 19, '519001'),
(634, 'hoist crane', '0000-00-00', 'HITACHI ', '2', '7.5 ton', NULL, '2016', NULL, 'baik', '', 20, '519101'),
(635, 'hoist crane', '0000-00-00', 'Black Bear', '1', '3.2 ton', NULL, '2013', NULL, 'baik', '', 20, '519201'),
(636, 'hoist crane', '0000-00-00', 'black bear', '1', '5 ton', NULL, '2012', NULL, 'baik', '', 20, '519301'),
(637, 'batching plant', '0000-00-00', 'sikoma', '1', '2/3 kubik', NULL, '2015', NULL, 'baik', '', 20, '519401'),
(638, 'gearder', '0000-00-00', '', '2', '7,5 ton', NULL, '2015', NULL, 'baik', '', 20, '519501'),
(639, 'travo las besar', '0000-00-00', 'titan ZX6-500', '4', '', NULL, '', NULL, '3 baik / 1 rusak', 'rusak karena terbakar', 20, '519601'),
(640, 'travo las besar', '0000-00-00', 'ARC-160 HD', '1', '', NULL, '', NULL, 'rusak', 'belum diketahui', 20, '519701'),
(641, 'travo las besar', '0000-00-00', 'BX 1-500', '3', '', NULL, '', NULL, '1 baik / 2 rusak', 'belum diketahui', 20, '519801'),
(642, 'stresing pancang W', '0000-00-00', 'power team', '1', '800 ton', NULL, '2015', NULL, 'baik', '', 20, '519901'),
(643, 'strasing pancang petak', '0000-00-00', 'power team', '4', '300 ton', NULL, '2015', NULL, 'baik', '', 20, '5110001'),
(644, 'travo las besar', '0000-00-00', 'YS-500A', '3', '', NULL, '', NULL, 'baik', '', 20, '5110101'),
(645, 'barbending', '0000-00-00', 'krisbow', '1', '', NULL, '2014', NULL, 'baik', '', 20, '5110201'),
(646, 'bor duduk', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 20, '5110301'),
(647, 'bor magnet', '0000-00-00', 'RMD-28N', '3', '', NULL, '', NULL, 'baik', '', 20, '5110401'),
(648, 'mesin spiral', '0000-00-00', '1', '', '', NULL, '2015', NULL, 'baik', '', 20, '5110501'),
(649, 'vibrator', '0000-00-00', 'makita', '1', '', NULL, '', NULL, 'baik', '', 20, '5101601'),
(650, 'monjek', '0000-00-00', '', '2', '', NULL, '', NULL, 'baik', '', 20, '5110701'),
(651, 'kompresor', '0000-00-00', 'puma', '1', '', NULL, '', NULL, 'baik', '', 20, '5110801'),
(652, 'pompa air shimidzu', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 20, '5110901'),
(653, 'cutting 14 inc modif', '0000-00-00', '', '1', '', NULL, '', NULL, 'baik', '', 20, '5111001'),
(654, 'hoist crane', '0000-00-00', 'hyundai', '1', '', NULL, '', NULL, 'baik', '', 20, '5111101'),
(655, 'mesin cutting otomatic', '0000-00-00', 'including support fanme', '1 unit', '15 mm', 232509000, '2017 ', NULL, 'baik', '', 21, '511101'),
(656, 'air conditioner (AC)', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 22, '220816'),
(657, 'air conditioner (AC)', '0000-00-00', 'LG', '1 unit', '', NULL, '', NULL, 'baik', '', 22, '220817'),
(658, 'Vacum Cleaner', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 22, '221901'),
(659, 'stand maic', '0000-00-00', '', '1 unit', '', NULL, '', NULL, 'baik', '', 22, '222263'),
(660, 'moulding tiang pancang', '0000-00-00', 'pancang PCAØ300', '16 batang', '', NULL, '', NULL, '12 batang baik / 4 batang rusak', '', 23, '5110801'),
(661, 'moulding tiang pancang', '0000-00-00', 'pancang PCAØ350', '32 batang', '', NULL, '', NULL, '32 batang baik', '', 23, '5110901'),
(662, 'moulding tiang pancang', '0000-00-00', 'pancang PCAØ400', '59 batang', '', NULL, '', NULL, '59 batang baik', '', 23, '5111001'),
(663, 'moulding tiang pancang', '0000-00-00', 'pancang PCAØ450', '26 batang', '', NULL, '', NULL, '26 batang baik', '', 23, '5111101'),
(664, 'moulding tiang pancang', '0000-00-00', 'pancang PCAØ n500', '45 batang', '', NULL, '', NULL, '45 batang baik', '', 23, '5111201'),
(665, 'moulding tiang pancang ', '0000-00-00', 'pancang PCAØ600', '17 batang', '', NULL, '', NULL, '17 batang baik', '', 23, '5111301'),
(666, 'moulding tiang listrik', '0000-00-00', '2 meter', '20 batang', '', NULL, '', NULL, '20 batang baik', '', 23, '5111401'),
(667, 'moulding tiang listrik', '0000-00-00', '9 meter', '51 batang', '', NULL, '', NULL, '36 batang baik / 15 batang rusak', '', 23, '5111501'),
(668, 'moulding tiang listrik', '0000-00-00', '11 meter', '33 batang', '', NULL, '', NULL, '13 batang baik/10 batang rusak/10 rusak parah', '', 23, '5111601'),
(669, 'moulding tiang listrik', '0000-00-00', '12 meter', '42 batang', '', NULL, '', NULL, '20 batang baik/19 batang rusak/3 rusak parah', '', 23, '5111701'),
(670, 'moulding tiang listrik', '0000-00-00', '13 meter', '10 batang', '', NULL, '', NULL, '6 batang baik/3 batang rusak/1 rusak parah', '', 23, '5111801'),
(671, 'moulding tiang listrik', '0000-00-00', '14 meter', '13 batang', '', NULL, '', NULL, '8 batang baik/3 batang rusak/2 rusak parah', '', 23, '5111901'),
(672, 'Air Conditiooner', '0000-00-00', 'Aux', '1 unit', '', NULL, '', NULL, 'baik', '', 13, '220813'),
(673, 'CAGE FORMING  MACHINE', '0000-00-00', '', '2', '300-600mm', 2147483647, '2017', NULL, 'baik', '', 21, '511201'),
(674, 'Spining d300 - d600', '0000-00-00', 'Doble Spining Machine (Including 110kw Sienemens Motor,132kw Inventer Control Cabinet ) Spindle 13mm', '4', '', 2147483647, '2017', NULL, 'baik', '', 21, '511301'),
(675, 'Hot Heading Michine', '0000-00-00', 'Elektrik pump 3hp power team', '2', '5mm-11mm', 703732000, '2017', NULL, 'baik', '', 21, '511401');

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
  `password` varchar(50) NOT NULL,
  `authKey` varchar(50) NOT NULL,
  `accesToken` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `email`, `no_hp`, `status`, `username`, `password`, `authKey`, `accesToken`) VALUES
(1, 'Ade Rahmanti', 'aderahmanti@mail.com', '081276463428', 'admin', 'admin', 'admin', '', ''),
(2, 'Pimpinan', 'pimpinan@mail.com', '081276463428', 'pimpinan', 'pimpinan', 'pimpinan', '', '');

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
  ADD PRIMARY KEY (`id_asset`),
  ADD KEY `departement` (`departement`);

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
  MODIFY `id_asset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT for table `tb_departement`
--
ALTER TABLE `tb_departement`
  MODIFY `id_departement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_asset`
--
ALTER TABLE `tb_asset`
  ADD CONSTRAINT `tb_asset_ibfk_1` FOREIGN KEY (`departement`) REFERENCES `tb_departement` (`id_departement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
