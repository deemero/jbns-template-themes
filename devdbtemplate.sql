-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: cmsaknsv2_db
-- Generation Time: Aug 23, 2023 at 12:39 AM
-- Server version: 8.0.26
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devdbtemplate`
--

-- --------------------------------------------------------

--
-- Table structure for table `agensi`
--

CREATE TABLE `agensi` (
  `ai` int NOT NULL,
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `lokasi` text COLLATE utf8mb4_general_ci,
  `notel` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nofaks` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emel` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hari_bekerja` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `masa_bekerja` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `waktu_rehat` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cuti` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `banner` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pautan_video_korporat` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pensijilan` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agensi`
--

INSERT INTO `agensi` (`ai`, `website_id`, `url_agensi`, `logo`, `nama`, `alamat`, `lokasi`, `notel`, `nofaks`, `emel`, `hari_bekerja`, `masa_bekerja`, `waktu_rehat`, `cuti`, `facebook`, `twitter`, `youtube`, `banner`, `pautan_video_korporat`, `pensijilan`) VALUES
(47, 'WB-932034-2023', 'jbn', 'logojbns2019t.png', 'JABATAN BENDAHARI NEGERI SABAH', 'Jabatan Bendahari Negeri Sabah,\r\nMenara Kinabalu,\r\nBlok A, TINGKAT 8-11,\r\nJalan Teluk Likas, Tanjung Lipat,\r\n88400 Kota Kinabalu\r\nSabah', 'https://maps.google.com/maps?q=Menara+Sabah/Pusat+Pentadbiran+Negeri+Sabah+(PPNS),+88400+Kota+Kinabalu,+Sabah&output=embed', '088-368397', '088-211392', 'bn.jbn@sabah.gov.my', '   Isnin - Jumaat', '   8.00 AM - 5.00 PM', '   1.00 PM', '   Sabtu, Ahad dan Hari Kelepasan Am', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tarikh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `pautan` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`ai`, `trash`, `website_id`, `url_agensi`, `tarikh`, `tajuk`, `deskripsi`, `pautan`) VALUES
(106, 0, 'WB-932034-2023', 'jbn', '2022-01-27', 'Majlis Amanat Bendahari Negeri', 'Jabatan Bendahari Negeri Sabah', 'Amanat BN 2022.jpg'),
(235, 0, 'WB-932034-2023', 'jbn', '2022-07-15', 'KONVENSYEN  PENOLONG AKAUNTAN', 'Jabatan Bendahari Negeri Sabah', 'KPA.jpg'),
(236, 0, 'WB-932034-2023', 'jbn', '2022-05-26', 'MESYUARAT AKAUNTAN GUNASAMA 2022', 'Jabatan Bendahari Negeri Sabah', 'MAGS.jpg'),
(383, 0, 'WB-932034-2023', NULL, '2023-03-15', 'Kunjungan Hormat dari Bank Tabung Haji', 'Kunjungan Hormat dari Bank Tabung Haji pada 15 Mac 2023 bertempat di Bilik Mesyuarat Perdana JBNS, Tingkat 11, Menara Kinabalu.', 'IMG_E7611.JPG'),
(526, 0, 'WB-932034-2023', NULL, '2023-02-16', 'Majlis Amanat Bendahari Negeri 2023', 'Jabatan Bendahari Negeri Sabah', 'AMANAT BN LIVESTREAM.jpg'),
(527, 0, 'WB-932034-2023', NULL, '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', '', 'MESYUARAT AKAUNTAN GUNASAMA 2023.jpg'),
(528, 1, 'WB-932034-2023', NULL, '2023-08-16', 'BENGKEL PIAWAIAN PERAKAUNAN KERAJAAN SIRI 3', 'BENGKEL PIAWAIAN PERAKAUNAN KERAJAAN SIRI 3\r\nyang telah diadakan di Bilik Latihan aras 8, Jabatan Bendahari Negeri Sabah, blok A Menara Kinabalu selama dua hari.\r\nBeberapa perkongsian yang dikongsikan oleh Puan Sharifah Arshad, Ketua Penolong Bendahari (Akauan Awam) selaku penceramah bagi bengkel tersebut mengenai tatacara pembuatan baucer jurnal dan penyata penyesuaian.\r\n\r\nTurut hadir beberapa kakitangan awam yang menyertai bengkel tersebut terdiri daripada Jabatan Perhutanan Negeri Sabah, Pejabat Perhubungan Negeri Sabah (Kuala Lumpur), Kementerian Kerajaan Tempatan & Perumahan Negeri Sabah dan Jabatan Bendahari Negeri Sabah yang melibatkan seramai 30 orang Kakitangan awam.\r\nLima pegawai selaku Fasilitator bagi bengkel tersebut terdiri daripada Puan Fatimah Hakim, Puan Dayang Fadzurainah Bte Awang Kassim , En. Mohd Jazli Bin Jali, En. Mohammad Razif Bin Abdullah & En. Mohamad Norsyafiq Bin Burhan,  (Bahagian Akaun Awam, Jabatan Bendahari Negeri Sabah).\r\n\r\nSekian dan terima kasih.\r\n\r\nLaporan dan foto disediakan oleh Ahmad Rajaie Bin Wahap\r\n(Seksyen Korporat Bahagian Perancangan & Pembangunan) Jabatan Bendahari Negeri Sabah.', 'WhatsApp Image 2023-08-17 at 1.46.53 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `carta`
--

CREATE TABLE `carta` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fail` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carta`
--

INSERT INTO `carta` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `fail`) VALUES
(133, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Carta Fungsi', 'fungsi.jpg'),
(138, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Carta Organisasi', 'resizeimage (2).jpg'),
(205, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Sejarah', 'history.png'),
(209, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Fungsi Jabatan', 'fungsi .png'),
(218, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Visi, Misi', 'VisiMisi1.jpg'),
(484, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Piagam Pelanggan', 'PIAGAM PELANGGAN 1.jpg'),
(485, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Piagam Pelanggan', 'PIAGAM PELANGGAN 2.jpg'),
(595, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', ''),
(596, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'WhatsApp Image 2023-04-19 at 2.13.09 PM (1).jpeg'),
(597, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'WhatsApp Image 2023-04-19 at 2.13.09 PM.jpeg'),
(598, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'WhatsApp Image 2023-04-19 at 2.13.09 PM (1).jpeg'),
(645, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'TAKWIM MEI.png'),
(646, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'TAKWIM JUN.png'),
(746, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'julai.png'),
(747, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', 'ogos.png'),
(758, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Program Latihan JBNS', '02 (5).png');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `ai` int NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pelawat` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`ai`, `url_agensi`, `website_id`, `pelawat`) VALUES
(1, 'uat_master', NULL, 87045),
(16, 'TSKND_2', NULL, 61),
(21, 'JPSM', NULL, 0),
(27, 'jpknkeningau', NULL, 0),
(32, 'ppnskl_2', NULL, 103),
(38, 'jbn', 'WB-932034-2023', 129806);

-- --------------------------------------------------------

--
-- Table structure for table `dasar_notis`
--

CREATE TABLE `dasar_notis` (
  `ai` int NOT NULL,
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `privasi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keselamatan` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notis_penafian` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `soalan_lazim` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dasar_notis`
--

INSERT INTO `dasar_notis` (`ai`, `website_id`, `url_agensi`, `privasi`, `keselamatan`, `notis_penafian`, `soalan_lazim`) VALUES
(20, 'WB-932034-2023', 'jbn', 'Dasar Privasi.pdf', 'Dasar Keselamatan.pdf', NULL, 'SOALAN.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `direktori`
--

CREATE TABLE `direktori` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sambungan` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notel` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bahagian` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `direktori`
--

INSERT INTO `direktori` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `nama`, `sambungan`, `notel`, `bahagian`, `gambar`) VALUES
(1575, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Direktori', 'Datin Mary Angela Sipaun', '8388', '088368388', 'Bendahari Negeri', 'Blank face.png'),
(1576, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Direktori', 'Puan Nurul Atiqah Yong', '8389', '088368389', 'Pembantu Setiausaha Bendahari Negeri', 'Blank face.png'),
(1577, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Direktori', 'Puan Jeselia Jonimin', '8580', '088368580', 'Pembantu Khas Bendahari Negeri', 'Blank face.png');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tarikh` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `fail` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `tarikh`, `tajuk`, `deskripsi`, `fail`) VALUES
(2004, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', '1.jpg'),
(2005, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', '2.JPG'),
(2006, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', '3.jpg'),
(2007, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', '4.jpg'),
(2008, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', '5.jpg'),
(2009, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', '6.jpg'),
(2010, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300476.JPG.jpg'),
(2011, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300477-min.JPG'),
(2012, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300506-min.JPG'),
(2013, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300511-min.JPG'),
(2014, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300564-min.JPG'),
(2015, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300565-min.JPG'),
(2016, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300592-min.JPG'),
(2017, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300593-min.JPG'),
(2018, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300648-min.JPG'),
(2019, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-05-26', 'Mesyuarat Akauntan Gunasama 2022', 'Mesyuarat Akauntan Gunasama 2022 bertarikh 26 Mei 2022, bertempat di Shangri-La Tanjung Aru.', 'L1300756.JPG.jpg'),
(2038, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', '00.jpg'),
(2039, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', '1.JPG'),
(2040, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', '2.JPG'),
(2041, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', '3.JPG'),
(2042, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', '4.JPG'),
(2043, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', '5.JPG'),
(2044, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1330978-min.JPG'),
(2045, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340523-min.JPG'),
(2046, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340610-min.JPG'),
(2047, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340710-min.JPG'),
(2048, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340857-min.JPG'),
(2049, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340923-min.JPG'),
(2050, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340965-min.JPG'),
(2051, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1340978-min.JPG'),
(2052, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1350396-min.JPG'),
(2053, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1350421-min.JPG'),
(2054, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-07-15', 'KONVENSYEN PENOLONG AKAUNTAN 2022', '', 'L1350555-min.JPG'),
(2110, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', '1-min.JPG'),
(2111, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', '2-min.JPG'),
(2112, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', '3-min.JPG'),
(2113, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1320340-min.JPG'),
(2114, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1320514-min.JPG'),
(2115, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1320578-min.JPG'),
(2116, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1320588-min.JPG'),
(2117, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1320948-min.JPG'),
(2118, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1330073-min.JPG'),
(2119, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1330105-min.JPG'),
(2120, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1330289-min.JPG'),
(2121, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-24', 'Program Perakaunan Akruan Siri 1 Tahun 2022', '', 'L1330364-min.JPG'),
(2122, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310287-min-min.JPG'),
(2123, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310293-min-min.JPG'),
(2124, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310306-min-min.JPG'),
(2125, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310316-min-min.JPG'),
(2126, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310323-min-min.JPG'),
(2127, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310343-min-min.JPG'),
(2128, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310439-min-min.JPG'),
(2129, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310517-min-min.JPG'),
(2130, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-06-03', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang 2022', '', 'L1310548-min-min.JPG'),
(2388, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-05', 'IKRAR BEBAS RASUAH DAN KIBAR BENDERA BULAN MERDEKA 2022', '', 'photo_2022-08-08_09-40-16 copy.png'),
(2389, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-05', 'IKRAR BEBAS RASUAH DAN KIBAR BENDERA BULAN MERDEKA 2022', '', 'photo_2022-08-08_09-40-18 copy.png'),
(2390, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-05', 'IKRAR BEBAS RASUAH DAN KIBAR BENDERA BULAN MERDEKA 2022', '', 'photo_2022-08-08_09-40-29 copy.png'),
(2391, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-05', 'IKRAR BEBAS RASUAH DAN KIBAR BENDERA BULAN MERDEKA 2022', '', 'photo_2022-08-08_09-40-31 copy.png'),
(2631, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-26', 'KUNJUNGAN HORMAT CO OP BANK DAN PERASMIAN BACKDROP JBNS BARU', '', 'coop bank.jpeg'),
(2632, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-17', 'KUNJUNGAN HORMAT PENGERUSI AFFIN BANK', 'Kunjungan hormat Pengerusi Affin Bank Dato Agil Natt serta rombongan pada 17 Ogos 2022', 'Affin Bank.jpeg'),
(2633, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-11', 'Signing Of Agreement Between AMC College and Jabatan Bendahari Negeri Sabah (JBNS)', '', 'Bank Rakyat.jpeg'),
(2662, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-09-02', 'KUNJUNGAN HORMAT MUAMALAT BANK', '', 'Bank Muamalat.jpeg'),
(2663, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-29', 'KUNJUNGAN HORMAT PEGAWAI BANK RAKYAT', '', 'CIMA.jpeg'),
(2886, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-53-56.jpg'),
(2887, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-53-59.jpg'),
(2888, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-00.jpg'),
(2889, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-01.jpg'),
(2890, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-02.jpg'),
(2891, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-03.jpg'),
(2892, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-04.jpg'),
(2893, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-05 (2).jpg'),
(2894, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-05.jpg'),
(2895, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-07.jpg'),
(2896, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-17', 'Lawatan ke Jabatan Perhutanan Negeri Sabah, Sandakan', 'Lawatan Perkongsian mengenai Pengurusan Rekod & Pengurusan Stor Di Jabatan Perhutanan Sabah', 'photo_2022-10-19_08-54-08.jpg'),
(3009, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-05-04.jpg'),
(3010, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-05-08.jpg'),
(3011, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-05-14.jpg'),
(3012, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-05-40.jpg'),
(3013, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-06-13.jpg'),
(3014, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-06-17.jpg'),
(3015, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-30', 'Program Mendaki Gunung Kinabalu', 'Program Mendaki Gunung Kinabalu yang diadakan bermula pada 28 hingga 29 Oktober 2022 melibatkan anggota Jabatan Bendahari Negeri Sabah', 'photo_2022-11-04_10-06-22.jpg'),
(3263, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'IPN 2.jpg'),
(3264, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'IPN 3.jpg'),
(3265, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'IPN 4.jpg'),
(3266, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'IPN 5.jpg'),
(3267, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'JAN 1.jpg'),
(3268, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'JAN 2.jpg'),
(3269, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'JAN 3.jpg'),
(3270, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'JAN 4.jpg'),
(3271, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'photo_2022-11-15_14-35-59 copy.jpg'),
(3272, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-08', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS', 'Lawatan Rasmi ke Kuala Lumpur yang diketuai oleh Puan Modesta Siambun, Ketua Penolong Bendahari, Bahagian Perancangan dan Pembangunan JBNS dari 8hb Nov ke Jabatan Akauntan Negara Malaysia, 9hb ke Institut Perakaunan Negara dan 10hb ke Pejabat Perhubungan Negeri Sabah', 'SLU 1.jpg'),
(3274, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_3968-min.JPG'),
(3275, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4006-min.JPG'),
(3276, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4032-min.JPG'),
(3277, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4062-min.JPG'),
(3278, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4143-min.JPG'),
(3279, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4186-min.JPG'),
(3280, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4250-min.JPG'),
(3281, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4258-min.JPG'),
(3282, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4285-min.JPG'),
(3283, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4325-min.JPG'),
(3284, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4425-min.JPG'),
(3285, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-10-06', 'Program Retreat JBNS', 'Program diadakan pada 5 & 6 Oktober di TSM Merrimas Villa Kudat dan juga Lawatan ke Kampung Lompozou, Daerah Kecil Matunggong', 'IMG_4431-min.JPG'),
(3286, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_1479-min.JPG'),
(3287, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_1489-min.JPG'),
(3288, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_1512-min.JPG'),
(3289, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_1513-min.JPG'),
(3290, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_1515-min.JPG'),
(3291, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_2863-min.JPG'),
(3292, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_2869-min.JPG'),
(3293, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_3017-min.JPG'),
(3294, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_3025-min.JPG'),
(3295, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_3041-min.JPG'),
(3296, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-08-31', 'Program Kolaborasi Bank Rakyat Wilayah Sabah Bersama Jabatan Bendahari Negeri Sabah', 'Program diadakan di Holy Family Resident, Papar pada 31 Ogos 2022.', 'IMG_3048-min.JPG'),
(3297, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-04.jpg'),
(3298, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-06.jpg'),
(3299, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-08.jpg'),
(3300, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-10.jpg'),
(3301, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-11.jpg'),
(3302, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-13.jpg'),
(3303, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-14.jpg'),
(3304, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-19.jpg'),
(3305, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-21.jpg'),
(3306, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-23.jpg'),
(3307, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-22', 'Taklimat Inspektorat Pematuhan Keselamatan Perlindungan ', 'Taklimat diadakan pada 22 November 2022 bertempat di Bilik Mesyuarat Aras 11, Jabatan Bendahari Negeri Sabah', 'photo_2022-11-25_10-41-32.jpg'),
(3308, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-04-26', 'Program Kasih Ramadan Kolaborasi bersama Perbadanan Pinjaman Sabah', 'Program ini diadakan pada 26 April 2022 bertempat di Dewan Kampung Biau, Bongawan.', 'WhatsApp Image 2022-11-25 at 9.57.26 AM.jpeg'),
(3309, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-04-26', 'Program Kasih Ramadan Kolaborasi bersama Perbadanan Pinjaman Sabah', 'Program ini diadakan pada 26 April 2022 bertempat di Dewan Kampung Biau, Bongawan.', 'WhatsApp Image 2022-11-25 at 9.57.27 AM.jpeg'),
(3310, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-04-26', 'Program Kasih Ramadan Kolaborasi bersama Perbadanan Pinjaman Sabah', 'Program ini diadakan pada 26 April 2022 bertempat di Dewan Kampung Biau, Bongawan.', 'WhatsApp Image 2022-11-25 at 9.57.28 AM.jpeg'),
(3311, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-04-26', 'Program Kasih Ramadan Kolaborasi bersama Perbadanan Pinjaman Sabah', 'Program ini diadakan pada 26 April 2022 bertempat di Dewan Kampung Biau, Bongawan.', 'WhatsApp Image 2022-11-25 at 9.57.29 AM.jpeg'),
(3312, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-04-26', 'Program Kasih Ramadan Kolaborasi bersama Perbadanan Pinjaman Sabah', 'Program ini diadakan pada 26 April 2022 bertempat di Dewan Kampung Biau, Bongawan.', 'WhatsApp Image 2022-11-25 at 9.57.30 AM.jpeg'),
(3313, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5451-min.JPG'),
(3314, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5464-min.JPG'),
(3315, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5497-min.JPG'),
(3316, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5505-min.JPG'),
(3317, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5508-min.JPG'),
(3318, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5523-min.JPG'),
(3319, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5574-min.JPG'),
(3320, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5582-min.JPG'),
(3321, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5591-min.JPG'),
(3322, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5616-min.JPG'),
(3323, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5627-min.JPG'),
(3324, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-21', 'Lawatan Pemeriksaan Bilik Fail bersama Pengurusan Tertinggi', '', 'IMG_5638-min.JPG'),
(3325, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-29', 'Bengkel Pelaksanaan E-Resit Pejabat Daerah Pejabat Daerah Kecil Sandakan', '', 'WhatsApp Image 2022-11-29 at 11.55.26 AM.jpeg'),
(3326, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-29', 'Bengkel Pelaksanaan E-Resit Pejabat Daerah Pejabat Daerah Kecil Sandakan', '', 'WhatsApp Image 2022-11-29 at 2.36.20 PM.jpeg'),
(3327, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-11-29', 'Bengkel Pelaksanaan E-Resit Pejabat Daerah Pejabat Daerah Kecil Sandakan', '', 'WhatsApp Image 2022-11-29 at 2.36.19 PM.jpeg'),
(3369, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', '1.jpg'),
(3370, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-15-44.jpg'),
(3371, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-15-54.jpg'),
(3372, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-15-59.jpg'),
(3373, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-16-00.jpg'),
(3374, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-16-01.jpg'),
(3375, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-16-03.jpg'),
(3376, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-16-06.jpg'),
(3377, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-16-08.jpg'),
(3378, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2022-12-14', 'Program Aku Janji Dan Ikrar Bebas Rasuah', '', 'photo_2022-12-14_14-16-11.jpg'),
(3408, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-01-06', 'Kunjungan Hormat oleh Pegawai Pegawai Universiti Malaysia Sabah', '', '20230106_104922 (1).jpg'),
(3727, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '1-min.jpg'),
(3728, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '2-min.jpg'),
(3729, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '3-min.jpg'),
(3730, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '4-min.jpg'),
(3731, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '5-min.jpg'),
(3732, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '6-min.jpg'),
(3733, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '7-min.jpg'),
(3734, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '8-min.jpg'),
(3735, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '9-min.jpg'),
(3736, 1, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Media', '2023-02-23', 'Direkori JBNS', '', '10-min.jpg'),
(3754, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420352-min.JPG'),
(3755, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420369-min.JPG'),
(3756, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420415-min.JPG'),
(3757, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420449-min.JPG'),
(3758, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420450-min.JPG'),
(3759, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420461-min.JPG'),
(3760, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420463-min.JPG'),
(3761, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420489-min.JPG'),
(3762, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420529-min.JPG'),
(3763, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420573-min.JPG'),
(3764, 1, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-02-16', 'AMANAT BENDAHARI NEGERI 2023', 'Amanat Bendahari Negeri dilaksanakan dengan jayanya pada 16 Februari 2023, bertempat di Dewan Wisma Wanita. \r\nProgram ini telah diadakan dalam bentuk fizikal dan juga virtual melalui saluran youtube Sabah Goverment Official.', 'L1420580-min.JPG'),
(4434, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440794-min.JPG'),
(4435, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440796-min.JPG'),
(4436, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440859-min.JPG'),
(4437, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440870-min.JPG'),
(4438, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440879-min.JPG'),
(4439, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440894-min.JPG'),
(4440, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440429-min.JPG'),
(4441, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440431-min.JPG'),
(4442, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440474-min.JPG'),
(4443, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440569-min.JPG'),
(4444, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440655-min.JPG'),
(4445, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440710-min.JPG'),
(4446, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 8 Mei 2023, bertempat di Shangri-la Tanjung Aru Resort.', 'L1440793-min.JPG'),
(4447, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', '1.JPG'),
(4448, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', '2.JPG'),
(4449, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440474-min.JPG'),
(4450, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440569-min.JPG'),
(4451, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440655-min.JPG'),
(4452, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440710-min.JPG'),
(4453, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440793-min.JPG'),
(4454, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440794-min.JPG'),
(4455, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440796-min.JPG'),
(4456, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440859-min.JPG'),
(4457, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440870-min.JPG'),
(4458, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440879-min.JPG'),
(4459, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-05-18', 'Mesyuarat Akauntan Gunasama 2023', 'Mesyuarat Akauntan Gunasama 2023 diadakan pada 18 Mei 2023, bertempat di Shangri-La Tanjung Aru Resort.', 'L1440894-min.JPG'),
(4896, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '1.jpg'),
(4897, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '2.jpg'),
(4898, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '3.jpg'),
(4899, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '4.jpg'),
(4900, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '5.jpg'),
(4901, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '6.jpg'),
(4902, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '7.jpg'),
(4903, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '8.jpg'),
(4904, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '9.jpg'),
(4905, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '10.jpg'),
(4906, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '11.jpg'),
(4907, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '12.jpg'),
(4908, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '13.jpg'),
(4909, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-28', 'Majlis Apresiasi Anugerah Perkhidmatan Cemerlang', '', '14.jpg'),
(4910, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-04', 'Lawatan ke Arkib Negeri Keningau', '', '15.jpg'),
(4911, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-04', 'Lawatan ke Arkib Negeri Keningau', '', '16.jpg'),
(4912, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-04', 'Lawatan ke Arkib Negeri Keningau', '', '17.jpg'),
(4913, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-04', 'Lawatan ke Arkib Negeri Keningau', '', '18.jpg'),
(4914, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-04', 'Lawatan ke Arkib Negeri Keningau', '', '19.jpg'),
(4917, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '1.jpg'),
(4918, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '2.jpg'),
(4919, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '3.jpg'),
(4920, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '4.jpg'),
(4921, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '5.jpg'),
(4922, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '6.jpg'),
(4923, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '7.jpg'),
(4924, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '8.jpg'),
(4925, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-07-04', 'Bengkel Piawaian Perakaunan Kerajaan', '', '9.jpg'),
(4927, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-01-18', 'Kursus Sistem PSH 2023', '', '10.jpg'),
(4928, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-01-18', 'Kursus Sistem PSH 2023', '', '11.jpg'),
(4929, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-01-18', 'Kursus Sistem PSH 2023', '', '12.jpg'),
(4930, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-01-18', 'Kursus Sistem PSH 2023', '', '13.jpg'),
(4931, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-01-18', 'Kursus Sistem PSH 2023', '', '14.jpg'),
(4932, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-01-18', 'Kursus Sistem PSH 2023', '', '15.jpg'),
(4933, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '16.jpg'),
(4934, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '17.jpg'),
(4935, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '18.jpg'),
(4936, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '19.jpg'),
(4937, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '20.jpg');
INSERT INTO `galeri` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `tarikh`, `tajuk`, `deskripsi`, `fail`) VALUES
(4938, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '21.jpg'),
(4939, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '22.jpg'),
(4940, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '23.jpg'),
(4941, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-06-28', 'Lawatan Arkib Negeri Sabah ke JBN 2023', '', '24.jpg'),
(4950, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-16', 'Bendahari Negeri Sabah Mengadakan Kunjungan Tapak ke SK Kipovo Penampang', 'YBhg Datin Mary Angela Sipaun, Bendahari Negeri Sabah beserta rombongan telah mengadakan kunjungan tapak ke Bangunan Pondok Ilmu, Laluan Susur Gajah STEM dan Penutup Perparitan bertempat di Sekolah Kebangsaan Kipovo, Penampang, hari ini. \r\n\r\nKunjungan tersebut bertujuan untuk meninjau persiapan fasiliti sekolah yang telah hampir 93% siap hasil daripada kolaborasi bersama pihak Yayasan Perbadanan Pinjaman Sabah untuk Projek Tanggungjawab Sosial Responsibiliti (CSR) yang telah pun masuk tahun kedua. \r\n\r\nKolaborasi yang terjalin juga adalah untuk menyampaikan mesej kepada orang ramai bahawasanya agensi kerajaan sentiasa prihatin dan siapsiaga menjalinkan kerjasama dalam memberikan perkhidmatan terbaik khususnya kepada masyarakat yang terdapat di luar bandar.\r\n\r\nTurut hadir, Puan Salina Haji Salimi, Ketua Jabatan Pentadbiran dan Logistik, Perbadanan Pinjaman Sabah mewakili Tuan George Taitim Tulas, Ketua Pegawai Eksekutif Perbadanan Pinjaman Sabah , Tuan Putera Jali, Timbalan Bendahari Negeri (Pentadbiran) JBNS,  Puan Sabrina Steven, Penolong Kanan SK Kipovo mewakili Puan Jeinah Jaafar, Guru Besar SK Kipovo,  Puan Germaine Marcella Sikijip, Timbalan Pegawai Pendidikan Daerah Penampang, Sektor Perancangan (menjalankan tugas sebagai Pegawai Pendidikan Daerah Penampang), Puan Gladys Yapp, Penolong Pegawai Pendidikan Unit Pendidikan Swasta, para guru SK Kipovo, dan anggota-anggota JBNS. \r\n\r\nSekian, terima kasih.\r\nLaporan dan foto disediakan oleh \r\nAhmad Rajaie Wahap Seksyen Korporat Bahagian Perancangan dan Pembangunan Jabatan Bendahari Negeri Sabah', 'WhatsApp Image 2023-08-16 at 3.42.01 PM.jpeg'),
(4969, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Media', '2023-08-16', 'BENGKEL PIAWAIAN PERAKAUNAN KERAJAAN SIRI 3', 'BENGKEL PIAWAIAN PERAKAUNAN KERAJAAN SIRI 3\r\nyang telah diadakan di Bilik Latihan aras 8, Jabatan Bendahari Negeri Sabah, blok A Menara Kinabalu selama dua hari.\r\nBeberapa perkongsian yang dikongsikan oleh Puan Sharifah Arshad, Ketua Penolong Bendahari (Akauan Awam) selaku penceramah bagi bengkel tersebut mengenai tatacara pembuatan baucer jurnal dan penyata penyesuaian.\r\n\r\nTurut hadir beberapa kakitangan awam yang menyertai bengkel tersebut terdiri daripada Jabatan Perhutanan Negeri Sabah, Pejabat Perhubungan Negeri Sabah (Kuala Lumpur), Kementerian Kerajaan Tempatan & Perumahan Negeri Sabah dan Jabatan Bendahari Negeri Sabah yang melibatkan seramai 30 orang Kakitangan awam.\r\nLima pegawai selaku Fasilitator bagi bengkel tersebut terdiri daripada Puan Fatimah Hakim, Puan Dayang Fadzurainah Bte Awang Kassim , En. Mohd Jazli Bin Jali, En. Mohammad Razif Bin Abdullah & En. Mohamad Norsyafiq Bin Burhan,  (Bahagian Akaun Awam, Jabatan Bendahari Negeri Sabah).\r\n\r\nSekian dan terima kasih.\r\n\r\nLaporan dan foto disediakan oleh Ahmad Rajaie Bin Wahap\r\n(Seksyen Korporat Bahagian Perancangan & Pembangunan) Jabatan Bendahari Negeri Sabah', 'WhatsApp Image 2023-08-17 at 1.46.53 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `maklum_balas`
--

CREATE TABLE `maklum_balas` (
  `ai` int NOT NULL,
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tarikh` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notel` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emel` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mesej` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_main`
--

CREATE TABLE `menu_main` (
  `ai` int NOT NULL,
  `trash` int DEFAULT '0' COMMENT '1 deleted',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `page` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `main_order` int NOT NULL DEFAULT '0',
  `sub_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_main`
--

INSERT INTO `menu_main` (`ai`, `trash`, `website_id`, `url_agensi`, `page`, `menu`, `sub`, `main_order`, `sub_order`) VALUES
(1290, 0, 'WB-932034-2023', 'jbn', '', 'Profail Jabatan', '', 1, 0),
(1312, 0, 'WB-932034-2023', 'jbn', 'perutusan', 'Profail Jabatan', 'Perutusan BN', 0, 0),
(1315, 0, 'WB-932034-2023', 'jbn', '', 'Info Perakaunan', '', 0, 0),
(1316, 0, 'WB-932034-2023', 'jbn', '', 'Lain-Lain', '', 0, 0),
(1317, 0, 'WB-932034-2023', 'jbn', '', 'Perkhidmatan', '', 0, 0),
(1588, 0, 'WB-932034-2023', 'jbn', 'carta', 'Profail Jabatan', 'Visi, Misi & Objektif', 0, 0),
(1594, 0, 'WB-932034-2023', 'jbn', 'carta', 'Profail Jabatan', 'Fungsi Jabatan', 0, 0),
(1595, 0, 'WB-932034-2023', 'jbn', 'carta', 'Profail Jabatan', 'Carta Organisasi', 0, 0),
(1634, 0, 'WB-932034-2023', 'jbn', 'video', 'Lain-Lain', 'Majlis amant Bendahari Negeri', 0, 0),
(1705, 0, 'WB-932034-2023', 'jbn', 'text_nopic', 'Perkhidmatan', 'Perkhidmatan JBNS', 0, 1),
(1761, 0, 'WB-932034-2023', 'jbn', 'carta', 'Profail Jabatan', 'Sejarah', 0, 0),
(1916, 0, 'WB-932034-2023', 'jbn', '', 'Lain-lain', '', 0, 0),
(1985, 0, 'WB-932034-2023', 'jbn', 'galeri', 'Lain-Lain', 'Media', 0, 0),
(2021, 0, 'WB-932034-2023', 'jbn', '', 'Borang-Borang', '', 0, 0),
(2022, 0, 'WB-932034-2023', 'jbn', 'text_nopic', 'Borang-Borang', 'Borang JBNS', 0, 0),
(2027, 0, 'WB-932034-2023', 'jbn', 'text_nopic', 'Info Perakaunan', 'Kod-Kod Akaun ', 0, 0),
(2967, 0, 'WB-932034-2023', 'jbn', 'text_nopic', 'Lain-Lain', 'Perpindahan Kakitangan Gred W', 0, 0),
(3613, 0, 'WB-932034-2023', 'jbn', 'text_nopic', 'Info Perakaunan', 'Penyata Kewangan Negeri Sabah', 0, 0),
(3987, 0, 'WB-932034-2023', 'jbn', 'carta', 'Profail Jabatan', 'Piagam Pelanggan', 0, 0),
(4198, 1, 'WB-932034-2023', 'jbn', 'direktori', 'Profail Jabatan', 'Direktori', 0, 0),
(4813, 0, 'WB-932034-2023', NULL, 'carta', 'Lain-Lain', 'Program Latihan JBNS', 0, 0),
(5136, 1, 'WB-932034-2023', NULL, 'tinymce', 'Perkhidmatan', 'Perkhidmatan JBNS', 0, 0),
(5139, 1, 'WB-932034-2023', NULL, 'text_pic', 'Perkhidmatan', 'Perkhidmatan JBNS', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website_id` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tajuk` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pautan_agensi`
--

CREATE TABLE `pautan_agensi` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pautan` text COLLATE utf8mb4_general_ci,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pautan_agensi`
--

INSERT INTO `pautan_agensi` (`ai`, `trash`, `website_id`, `url_agensi`, `pautan`, `tajuk`, `logo`) VALUES
(179, 1, 'WB-932034-2023', 'jbn', 'https://www.anm.gov.my/', 'Jabatan Akauntan Negara Malaysia', 'anm.png'),
(180, 1, 'WB-932034-2023', 'jbn', 'https://mof.sabah.gov.my/', 'Kementerian Kewangan Sabah', 'mof.png'),
(181, 1, 'WB-932034-2023', 'jbn', 'https://jpan.sabah.gov.my/', 'Jabatan Perkhidmatan Awam Negeri Sabah', 'jpan.jpg'),
(183, 1, 'WB-932034-2023', 'jbn', 'https://www.sabah.gov.my/cms/', 'Laman Web Rasmi Kerajaan Negeri Sabah', 'sabah.png'),
(184, 1, 'WB-932034-2023', 'jbn', 'https://insan.jpan.my/', 'INSAN', 'insan.png'),
(185, 1, 'WB-932034-2023', 'jbn', 'https://jpkn.sabah.gov.my/', 'Jabatan Perkhidmatan Koputer Negeri Sabah', 'logojpkn.png'),
(186, 1, 'WB-932034-2023', 'jbn', 'https://www.mia.org.my/v2/', 'Malaysian Institute of Accountant', 'mia.png'),
(187, 1, 'WB-932034-2023', 'jbn', 'https://www.accaglobal.com/gb/en.html', 'ACCA', 'acca.png'),
(188, 1, 'WB-932034-2023', 'jbn', 'https://www.mof.gov.my/', 'Ministry of Finance Malaysia', 'mofmy.png'),
(189, 1, 'WB-932034-2023', 'jbn', 'https://www.malaysia.gov.my/portal/index', 'Malaysia Govt', 'jata.png'),
(512, 1, 'WB-932034-2023', NULL, 'http://sabah.gov.my/cms/', 'PORTAL RASMI  KERAJAAN NEGERI SABAH', 'sabah.png'),
(513, 1, 'WB-932034-2023', NULL, 'https://mof.sabah.gov.my/', 'KEMENTERIAN KEWANGAN SABAH', 'mof.jfif'),
(514, 1, 'WB-932034-2023', NULL, 'http://sabah.gov.my/cms/', 'PORTAL RASMI  KERAJAAN NEGERI SABAH', 'sabah1.png'),
(515, 1, 'WB-932034-2023', NULL, 'https://mof.sabah.gov.my/', 'KEMENTERIAN KEWANGAN SABAH', 'mof.jpg'),
(516, 1, 'WB-932034-2023', NULL, 'https://jpkn.sabah.gov.my/#', 'JABATAN PERKHIDMATAN KOMPUTER NEGERI SABAH', 'jpkn1.png');

-- --------------------------------------------------------

--
-- Table structure for table `pautan_url`
--

CREATE TABLE `pautan_url` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pautan` text COLLATE utf8mb4_general_ci,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pautan_url`
--

INSERT INTO `pautan_url` (`ai`, `trash`, `website_id`, `url_agensi`, `pautan`, `tajuk`) VALUES
(202, 0, 'WB-932034-2023', 'jbn', 'http://sww.jpkn.sabah.gov.my/semakanbayaran/', 'E-Slip Gaji'),
(203, 0, 'WB-932034-2023', 'jbn', 'http://sww.jpkn.sabah.gov.my/eleave/', 'E-Cuti'),
(204, 0, 'WB-932034-2023', 'jbn', 'http://sww.jpkn.sabah.gov.my/smapan/personalrec.asp', 'SM2 (Peribadi)'),
(205, 0, 'WB-932034-2023', 'jbn', 'http://sww.jpkn.sabah.gov.my/epergerakan/', 'E-Pergerakan'),
(206, 0, 'WB-932034-2023', 'jbn', 'https://eprestasi.sabah.gov.my/', 'E-Prestasi'),
(207, 0, 'WB-932034-2023', 'jbn', 'http://sww.jpkn.sabah.gov.my/izinhadirseminar/default.htm', 'Izin-Hadir Seminar'),
(208, 0, 'WB-932034-2023', 'jbn', 'https://www.sabah.gov.my/ecircular/archives.aspx', 'e-pekeliling'),
(244, 0, 'WB-932034-2023', 'jbn', 'https://s3p.sabah.gov.my/semakan_bayaran/', 'Semakan Bayaran Peribadi'),
(257, 0, 'WB-932034-2023', 'jbn', 'https://www.anm.gov.my/awam/pertukaran-mata-wang-asing', 'Pertukaran Wang Asing');

-- --------------------------------------------------------

--
-- Table structure for table `penerbitan`
--

CREATE TABLE `penerbitan` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tarikh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci NOT NULL,
  `fail` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbitan`
--

INSERT INTO `penerbitan` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `type`, `tarikh`, `tajuk`, `deskripsi`, `fail`) VALUES
(62, 0, 'WB-932034-2023', 'jbn', 'Borang', 'PDF', 'pdf', '2022-04-22', 'PDF SAHAJA', 'test', '553-Article Text-1347-1-10-20201101.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tarikh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `pautan` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`ai`, `trash`, `website_id`, `url_agensi`, `tarikh`, `tajuk`, `deskripsi`, `pautan`) VALUES
(89, 0, 'WB-932034-2023', 'jbn', '2022-06-17', 'Penutupan Akaun Bulanan (E-Lejar)', 'Untuk makluman, Lejar bagi bulan MEI 2022 telah di tutup dan sedia untuk diakses melalui sistem E-Lejar', 'main[1].php'),
(145, 0, 'WB-932034-2023', 'jbn', '2022-08-29', 'Penutupan Akaun Bulanan (eLejer)', 'Penutupan Akaun Bulanan Bagi Bulan Julai 2022. eLejer boleh diakses ( https://s3p.sabah.gov.my/apps/elejar/main.php)', 'elejer.png'),
(173, 0, 'WB-932034-2023', 'jbn', '2022-09-23', 'Penutupan Akaun Bulanan (eLejer)', 'Penutupan Akaun Bulanan Bagi Bulan Ogos 2022. eLejer boleh diakses ( https://s3p.sabah.gov.my/apps/elejar/main.php)', 'main[1].php'),
(184, 0, 'WB-932034-2023', 'jbn', '2022-10-25', 'Penutupan Akaun Bulanan (eLejer)', 'Penutupan Akaun Bulanan Bagi Bulan September 2022. eLejer boleh diakses ( https://s3p.sabah.gov.my/apps/elejar/main.php)', 'e-Lejar.html'),
(226, 0, 'WB-932034-2023', NULL, '2023-03-07', 'NOTIS MAKLUMAN KEROSAKAN TALIAN TELEFON DI PEJABAT JBNS', '', 'Notis.jpg'),
(321, 1, 'WB-932034-2023', NULL, '2023-06-22', 'Program Kesedaran Kesihatan Fizikal dan Mental', 'Program Kesedaran Kesihatan Fizikal dan Mental ini terbuka kepada warga Jabatan Bendahari Negeri. Program diadakan pada hari Selasa, bertarikh 27 Jun 2023, bermula jam 7.30 pagi sehingga 4.00 petang di Bahagian Perancangan dan Pembangunan JBN, Aras 8, Blok A, Menara Kinabalu.', 'Pemeriksaan Tekanan Darah (1).png'),
(322, 1, 'WB-932034-2023', NULL, '2023-06-22', 'Program Kesedaran Kesihatan Fizikal dan Mental', 'Program Kesedaran Kesihatan Fizikal dan Mental ini terbuka kepada warga Jabatan Bendahari Negeri. Program diadakan pada hari Selasa, bertarikh 27 Jun 2023, bermula jam 7.30 pagi sehingga 4.00 petang di Bahagian Perancangan dan Pembangunan JBN, Aras 8, Blok A, Menara Kinabalu.', 'Pemeriksaan Tekanan Darah (1).png'),
(328, 0, 'WB-932034-2023', NULL, '2023-07-05', 'PERMOHONAN PENGAMBILAN BAHARU PELAJAR CIMA SIRI 2 2023/2024', 'Permohonan pengambilan baharu pelajar CIMA Siri 2 2023/2024 bagi pegawai WA41 dan ke atas kini dibuka dan akan ditutup pada 21 Julai 2023', 'PERMOHONAN CIMA SIRI 2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `perutusan`
--

CREATE TABLE `perutusan` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `gambar` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perutusan`
--

INSERT INTO `perutusan` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `tajuk`, `deskripsi`, `gambar`) VALUES
(223, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Perutusan Bendahari Negeri', 'Perutusan Bendahari Negeri', 'Salam sejahtera kepada semua warga Jabatan Bendahari Negeri (JBN) dan pelanggan-pelanggan yang dihormati.\r\n\r\nPertamanya, selamat melayari laman web JBN yang baru. Di era pendigitalan, JBN sekali lagi mengorak langkah meningkatkan perkhidmatan dan saluran informasi melalui laman web yang direka semula ini.\r\n\r\nJBN merupakan organisasi awam negeri yang bertanggungjawab terhadap perkhidmatan kewangan dan perakaunan Kerajaan Negeri. JBN telah banyak mengharungi cabaran dan mencapai pelbagai kejayaan. Antaranya, JBN telah mendapat pengiktirafan Sijil Tanpa Teguran sejak tahun 2000 dan telah mewujudkan pelbagai sistem atas talian bagi meningkatkan prestasi perkhidmatan seperti S3P, eMove, eKontrak, ePayA3 dan e-SlipGaji. JBN juga telah banyak memperkenalkan pembaharuan seperti kelulusan baucar bayaran di peringkat Pusat Tanggungjawab (PTJ) terpilih, meningkatkan had bayaran di Bendahari Cawangan dan eBanking serta mengemaskini prosedur penyemakan dan pertimbangan baucar bayaran.\r\n\r\nBagaimanapun, JBN perlu sentiasa dinamik. Pada masa ini, JBN fokus kepada pelaksanaan perakaunan akruan di peringkat Kerajaan Negeri Sabah. Transisi kepada perakaunan akruan merupakan langkah seterusnya yang tepat serta tepat pada masanya dan JBN mempunyai peranan yang amat penting sebagai agensi peneraju pelaksanaan. JBN juga tidak ketinggalan bersama-sama menyokong dan merealisasikan Pelan Pendigitalan Kerajaan Negeri melalui Konsep 5A ‘Accessible by Anyone at Any time, Any where, by Any mobile device’. Justeru, pelaksanaan perakaunan akruan disekalikan dengan pembangunan Intelligent State Financial and Accounting System (iSFAS). Kedua-dua projek ini memerlukan komitmen idea, masa dan sumber manusia terlatih yang secukupnya bagi menetapkan dasar dan prosedur, membina sistem, mengadakan latihan dan mengumpul data aset.\r\n\r\nDi samping cabaran memenuhi dan mengatasi ekspektasi standard perkhidmatan kewangan dan perakaunan, JBN juga terkesan oleh penularan wabak COVID-19. Selain memastikan perkhidmatan bayaran (essential service) yang tidak terputus, JBN juga perlu mematuhi arahan-arahan Kerajaan bagi memutuskan rantaian jangkitan wabak ini. Cabaran ini menekankan lagi keperluan tranformasi perkhidmatan kewangan dan perakaunan ke arah pendigitalan sepenuhnya bukan sahaja supaya perkhidmatan sentiasa tersedia tetapi untuk menjamin keselamatan dan kesihatan anggota JBN dan semua warga kerja Klasifikasi Kewangan dan Perakaunan.\r\n\r\nJusteru, persefahaman, sokongan dan kerjasama semua tidak kira samada pelanggan JBN mahupun anggota JBN dan warga kerja Klasifikasi Kewangan dan Perakaunan dipohon bagi memastikan perkhidmatan Kewangan dan Perakaunan Kerajaan Negeri sentiasa berada pada tahap yang terbaik.\r\n\r\nAkhir kata, diharapkan agar laman web ini dapat memenuhi keperluan anda. JBN sentiasa bersedia menerima dan mengalu-alukan maklumbalas anda tentang perkongsian dan penyaluran informasi kami serta perkhidmatan yang kami berikan.\r\n\r\nSekian\r\n\r\nTerima kasih.\r\n\r\nDatin Mary Angela Sipaun (C.A(M), FCPA(A), ASEAN CPA)\r\n\r\nBendahari Negeri', 'Presentation1.png'),
(236, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Perutusan BN', 'Perutusan Bendahari Negeri', 'Salam sejahtera kepada semua warga Jabatan Bendahari Negeri (JBN) dan pelanggan-pelanggan yang dihormati.\r\n\r\nPertamanya, selamat melayari laman web JBN yang baru. Di era pendigitalan, JBN sekali lagi mengorak langkah meningkatkan perkhidmatan dan saluran informasi melalui laman web yang direka semula ini.\r\n\r\nJBN merupakan organisasi awam negeri yang bertanggungjawab terhadap perkhidmatan kewangan dan perakaunan Kerajaan Negeri. JBN telah banyak mengharungi cabaran dan mencapai pelbagai kejayaan. Antaranya, JBN telah mendapat pengiktirafan Sijil Tanpa Teguran sejak tahun 2000 dan telah mewujudkan pelbagai sistem atas talian bagi meningkatkan prestasi perkhidmatan seperti S3P, eMove, eKontrak, ePayA3 dan e-SlipGaji. JBN juga telah banyak memperkenalkan pembaharuan seperti kelulusan baucar bayaran di peringkat Pusat Tanggungjawab (PTJ) terpilih, meningkatkan had bayaran di Bendahari Cawangan dan eBanking serta mengemaskini prosedur penyemakan dan pertimbangan baucar bayaran.\r\n\r\nBagaimanapun, JBN perlu sentiasa dinamik. Pada masa ini, JBN fokus kepada pelaksanaan perakaunan akruan di peringkat Kerajaan Negeri Sabah. Transisi kepada perakaunan akruan merupakan langkah seterusnya yang tepat serta tepat pada masanya dan JBN mempunyai peranan yang amat penting sebagai agensi peneraju pelaksanaan. JBN juga tidak ketinggalan bersama-sama menyokong dan merealisasikan Pelan Pendigitalan Kerajaan Negeri melalui Konsep 5A ‘Accessible by Anyone at Any time, Any where, by Any mobile device’. Justeru, pelaksanaan perakaunan akruan disekalikan dengan pembangunan Intelligent State Financial and Accounting System (iSFAS). Kedua-dua projek ini memerlukan komitmen idea, masa dan sumber manusia terlatih yang secukupnya bagi menetapkan dasar dan prosedur, membina sistem, mengadakan latihan dan mengumpul data aset.\r\n\r\nDi samping cabaran memenuhi dan mengatasi ekspektasi standard perkhidmatan kewangan dan perakaunan, JBN juga terkesan oleh penularan wabak COVID-19. Selain memastikan perkhidmatan bayaran (essential service) yang tidak terputus, JBN juga perlu mematuhi arahan-arahan Kerajaan bagi memutuskan rantaian jangkitan wabak ini. Cabaran ini menekankan lagi keperluan tranformasi perkhidmatan kewangan dan perakaunan ke arah pendigitalan sepenuhnya bukan sahaja supaya perkhidmatan sentiasa tersedia tetapi untuk menjamin keselamatan dan kesihatan anggota JBN dan semua warga kerja Klasifikasi Kewangan dan Perakaunan.\r\n\r\nJusteru, persefahaman, sokongan dan kerjasama semua tidak kira samada pelanggan JBN mahupun anggota JBN dan warga kerja Klasifikasi Kewangan dan Perakaunan dipohon bagi memastikan perkhidmatan Kewangan dan Perakaunan Kerajaan Negeri sentiasa berada pada tahap yang terbaik.\r\n\r\nAkhir kata, diharapkan agar laman web ini dapat memenuhi keperluan anda. JBN sentiasa bersedia menerima dan mengalu-alukan maklumbalas anda tentang perkongsian dan penyaluran informasi kami serta perkhidmatan yang kami berikan.\r\n\r\nSekian\r\n\r\nTerima kasih.\r\n\r\nDatin Mary Angela Sipaun (C.A(M), FCPA(A), ASEAN CPA)\r\n\r\nBendahari Negeri', 'Presentation4.gif');

-- --------------------------------------------------------

--
-- Table structure for table `sebutharga`
--

CREATE TABLE `sebutharga` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rujukan` text COLLATE utf8mb4_general_ci,
  `keterangan` text COLLATE utf8mb4_general_ci,
  `makluman` text COLLATE utf8mb4_general_ci,
  `perolehan` text COLLATE utf8mb4_general_ci,
  `tarikh` date DEFAULT NULL,
  `fail` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sebutharga`
--

INSERT INTO `sebutharga` (`ai`, `trash`, `website_id`, `url_agensi`, `rujukan`, `keterangan`, `makluman`, `perolehan`, `tarikh`, `fail`) VALUES
(313, 1, 'WB-932034-2023', 'jbn', 'No. JBNS/2022/03', 'LKK 2022', 'PEROLEHAN PERALATAN ICT BAGI PELAKSANAAN APLIKASI PEMBAYARAN DAN \r\nAPLIKASI ATAS TALIAN DI JABATAN BENDAHARI NEGERI SABAH', 'Kelengkapan ICT', '2022-11-14', 'NOTIS Sebutharga erolehan Peralatan ICT JBNS LKK 2-2022 versi4.pdf'),
(348, 0, 'WB-932034-2023', NULL, 'NO. SEBUTHARGA : JBNS/2023/01', 'Sebutharga adalah dipelawa daripada kontraktor-kontraktor yang berdaftar dengan Pusat Pendaftaran \r\n Kontraktor Kerja, Bekalan dan Perkhidmatan Negeri Sabah (PUKONSA) dibawah Kepala 21 Sub Kepala \r\n 210101', 'Borang Sebutharga akan dijual mulai 06 Mac 2023 pada waktu pejabat di Seksyen Pengurusan Dana, Jabatan \r\nBendahari Negeri Sabah, Aras 9, Blok A, Menara Kinabalu, Jalan Teluk Likas, Tanjung Lipat, 88400 Kota \r\nKinabalu, Sabah.', 'PEROLEHAN TONER DAN INK CARTRIDGE MESIN PENCETAK UNTUK JABATAN BENDAHARI NEGERI \r\nSABAH', '2023-03-14', 'IKLAN TONER 2023.pdf'),
(349, 1, 'WB-932034-2023', NULL, 'JBNS/2023/01', 'Sebutharga adalah dipelawa daripada kontraktor-kontraktor yang berdaftar dengan Pusat Pendaftaran\r\nKontraktor Kerja, Bekalan dan Perkhidmatan Negeri Sabah (PUKONSA) dibawah Kepala 21 Sub Kepala\r\n210101', 'Borang Sebutharga akan dijual mulai 06 Mac 2023 pada waktu pejabat di Seksyen Pengurusan Dana, Jabatan\r\nBendahari Negeri Sabah, Aras 9, Blok A, Menara Kinabalu, Jalan Teluk Likas, Tanjung Lipat, 88400 Kota\r\nKinabalu, Sabah.', 'PEROLEHAN TONER DAN INK CARTRIDGE MESIN PENCETAK UNTUK JABATAN BENDAHARI NEGERI\r\nSABAH', '2023-03-14', 'IKLAN TONER 2023.pdf'),
(535, 0, 'WB-932034-2023', NULL, 'NO. SEBUTHARGA : JBNS/2023/02', 'Sebut harga adalah dipelawa daripada syarikat-syarikat yang mempunyai Lesen Berniaga yang \r\nsah dan berdaftar dengan Pusat Pendaftaran Pembekal Kerja, Bekalan dan Perkhidmatan \r\nNegeri Sabah (PUKONSA) di bawah KEPALA 21 SUB KEPALA 0101-0100', 'Borang Sebutharga akan dijual mulai tarikh 07 JUN 2023 pada waktu pejabat di Bahagian \r\nPengurusan Dana, Jabatan Bendahari Negeri Sabah, Aras 9, Blok A, Menara Kinabalu, \r\nJalan Teluk Likas, Tanjung Lipat, 88400 Kota Kinabalu, Sabah.', 'PEROLEHAN ICT UNTUK MEMODENKAN BILIK MESYUARAT DAN MELENGKAPKAN \r\nPERALATAN ICT JABATAN BENDAHARI NEGERI SABAH', '2023-06-16', 'NOTIS Sebutharga Perolehan Peralatan ICT JBNS 2023.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gambar` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`ai`, `trash`, `website_id`, `url_agensi`, `gambar`, `link`) VALUES
(1031, 0, 'WB-932034-2023', 'jbn', 'BANNER DATIN.gif', ''),
(1089, 1, 'WB-932034-2023', 'jbn', 'integriti.jpg', ''),
(1090, 1, 'WB-932034-2023', 'jbn', 'integriti2.jpg', ''),
(1091, 1, 'WB-932034-2023', 'jbn', '2-2020.jpg', ''),
(1334, 1, 'WB-932034-2023', 'jbn', 'AMANAT BN LIVESTREAM.png', 'https://www.youtube.com/watch?v=HuMiTti8QNg'),
(1372, 1, 'WB-932034-2023', NULL, 'Notis.jpg', ''),
(1381, 1, 'WB-932034-2023', NULL, 'Hari wanita.jpg', ''),
(1623, 1, 'WB-932034-2023', NULL, 'WhatsApp Image 2023-04-11 at 9.03.32 AM.jpeg', ''),
(1624, 1, 'WB-932034-2023', NULL, 'WhatsApp Image 2023-04-11 at 9.03.32 AM (1).jpeg', ''),
(1625, 0, 'WB-932034-2023', NULL, 'Pemakluman Keselamatan.png', ''),
(1626, 0, 'WB-932034-2023', NULL, 'Integriti 2022.png', ''),
(1658, 1, 'WB-932034-2023', NULL, '1.jpg', ''),
(1810, 1, 'WB-932034-2023', NULL, '7.jpg', ''),
(1967, 1, 'WB-932034-2023', NULL, 'Pemeriksaan Tekanan Darah (1).png', ''),
(1994, 1, 'WB-932034-2023', NULL, '9.jpg', ''),
(2015, 1, 'WB-932034-2023', NULL, 'PERMOHONAN CIMA SIRI 2.jpg', 'https://shorturl.at/dktxR'),
(2152, 0, 'WB-932034-2023', NULL, 'SPRM.jpg', 'https://drive.google.com/drive/folders/1RBq1HtuqPjLDsV4aXFTmzcMCZpkTWpkN');

-- --------------------------------------------------------

--
-- Table structure for table `text_nopic`
--

CREATE TABLE `text_nopic` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `link` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `text_nopic`
--

INSERT INTO `text_nopic` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `tajuk`, `deskripsi`, `link`) VALUES
(263, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'SISVOT (S3P)', '', 'https://s3p.sabah.gov.my/mirror/sisvot'),
(264, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'PAYCENTRE', '', 'https://s3p.sabah.gov.my/mirror/paycentre/login'),
(265, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'e-KONTRAK', '', 'https://egjpkn.sabah.gov.my/ekontrak/JBN_Userlogin.asp'),
(266, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'CENTRAL CODE', '', 'https://s3p.sabah.gov.my/mirror/centralcode/'),
(267, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'e-LEJER', '', 'https://s3p.sabah.gov.my/apps/elejar/main.php'),
(268, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'e-KUASA', '', 'http://sww.jpkn.sabah.gov.my/TandatanganBaucarDebit/'),
(269, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'PSH', '', 'http://sww.jpkn.sabah.gov.my/gajihari/'),
(270, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'e PAY A3', '', 'http://paya3.jpkn.sabah.gov.my/'),
(271, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Perkhidmatan JBNS', 'e-POL', '', 'https://pol.sabah.gov.my/login.php#!'),
(323, 0, 'WB-932034-2023', 'jbn', 'Borang-Borang', 'Borang JBNS', 'JBN.54a & b', '', 'https://drive.google.com/file/d/18kLz3ojsNtyZOr7dTMMgVPf59OGJ2Njp/view?usp=sharing'),
(324, 0, 'WB-932034-2023', 'jbn', 'Borang-Borang', 'Borang JBNS', 'GCR', '', 'https://drive.google.com/file/d/1r8FVCgAmLGLL4UzM4HYlN7gsQrZGLvw0/view?usp=sharing'),
(325, 0, 'WB-932034-2023', 'jbn', 'Borang-Borang', 'Borang JBNS', 'T.F 01(Pind..1/2008)', '', 'https://drive.google.com/file/d/1em9A8VeYnfTCdWRPAA5MVNfDR_cObfdL/view?usp=sharing'),
(326, 0, 'WB-932034-2023', 'jbn', 'Borang-Borang', 'Borang JBNS', 'JBN.01', '', 'https://drive.google.com/file/d/1nLrCbYy8Oka-Pe2y8shJrcacn0wV7Ohw/view?usp=sharing'),
(327, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun MBS', 'KOD MBS', '', 'https://drive.google.com/file/d/1w4yysPxO_jproZgXU8auaI5zzoqWWajn/view?usp=sharing'),
(328, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun ', 'Kod MBS', '', 'https://drive.google.com/file/d/1w4yysPxO_jproZgXU8auaI5zzoqWWajn/view?usp=sharing'),
(329, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun ', 'Kod Bank SISVOT', '', 'https://drive.google.com/file/d/12PKAkukaVw4LEzGYgZ4SUTRRvSNYPtj8/view?usp=sharing'),
(330, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun', 'Kod Gaji & Elaun', '', 'https://drive.google.com/file/d/1DLStp36ZAF66jtJiODtWXVMXo_0X-0M1/view?usp=sharing'),
(383, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun ', 'Garispanduan Senarai Semak Penyediaan Baucar', '', 'https://drive.google.com/file/d/1_mvozQ_-Z6rK1PNsvss3XsWx_-mmSexM/view?usp=sharing'),
(384, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun ', 'Senarai Semak Saraan', '', 'https://drive.google.com/file/d/1huYtd0y1ugiGiX-6XqVQBgocY5pvCZ9x/view?usp=sharing'),
(550, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Perpindahan Kakitangan Gred W', 'PERTUKARAN KAKITANGAN GRED W', 'OKTOBER HINGGA DISEMBER 2021', 'https://drive.google.com/file/d/1hICSh6IPviUD9RzX87XY8IMQpd7vex1z/view?usp=sharing'),
(585, 0, 'WB-932034-2023', 'jbn', 'Borang-Borang', 'Borang JBNS', 'JBN.08', '', 'https://drive.google.com/file/d/1dKbj6CqwEsJiJGhBoxxGQSxQiqXZpC8c/view?usp=sharing'),
(586, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Perpindahan Kakitangan Gred W', 'PERTUKARAN KAKITANGAN GRED W', 'JANUARI HINGGA JULAI 2022', 'https://drive.google.com/file/d/1Pi4xtrVWoaBEu06U1JD3o0BmkoPY9ArB/view?usp=sharing'),
(716, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Perpindahan Kakitangan Gred W', 'PERTUKARAN KAKITANGAN GRED W', 'MEI - OGOS 2022', 'https://drive.google.com/file/d/1ccyAGupFIm4gyyGBxxQTJaLWVJtpOtxu/view?usp=sharing'),
(717, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Penyata Kewangan Negeri Sabah', 'PENYATA KEWANGAN NEGERI SABAH', 'TAHUN 2020', 'https://heyzine.com/flip-book/11d999687e.html'),
(719, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Penyata Kewangan Negeri Sabah', 'PENYATA KEWANGAN NEGERI SABAH', 'TAHUN 2021', 'https://heyzine.com/flip-book/64a1947721.html'),
(746, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Penyata Kewangan Negeri Sabah', 'PENYATA KEWANGAN NEGERI SABAH', 'TAHUN 2021( VERSI PDF )', 'https://drive.google.com/file/d/1PbtnUMr9ZVJtpBBF4557Z24vJqhRr6pF/view?usp=sharing'),
(754, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun ', 'KOD OBJEK BAHARU', 'PEMAKLUMAN  PENGGUNAAN  KOD OBJEK BAHARU', 'https://drive.google.com/file/d/1NP4lZSTOu6C9lJjGmazZnlS9I_g0xLHv/view?usp=sharing'),
(761, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Penyata Kewangan Negeri Sabah', 'PENYATA KEWANGAN NEGERI SABAH', 'TAHUN 2021 ( VERSI  ENGLISH )', 'https://heyzine.com/flip-book/b43166518f.html'),
(777, 0, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Penyata Kewangan Negeri Sabah', 'PENYATA KEWANGAN NEGERI SABAH', 'TAHUN 2021 (ENG VER. PDF)', 'https://drive.google.com/file/d/1IE6A0iWxAZ2mMUejQo-AlxLDhWNej-mY/view?usp=share_link'),
(801, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Perpindahan Kakitangan Gred W', 'PERTUKARAN KAKITANGAN GRED W', 'SEPTEMBER HINGGA DISEMBER 2022', 'https://drive.google.com/file/d/1CDp73w-tFJ7F5y-FVRedh4LUKYWdE9ux/view?usp=share_link'),
(836, 1, 'WB-932034-2023', 'jbn', 'Info Perakaunan', 'Kod-Kod Akaun ', 'Senrai Semak Kursus/Bengkel/Ceramah/Latihan', 'Senarai semak Tuntutan bayaran', 'https://drive.google.com/file/d/1uSgmvsVrAjF9xNCwzrxWh_5J-bQlfHGG/view?usp=share_link'),
(913, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Perpindahan Kakitangan Gred W', 'PERTUKARAN KAKITANGAN GRED W', 'JANUARI HINGGA APRIL 2023', 'https://drive.google.com/file/d/1kh4OszWqVU0oJcM0HrZcvoUjfNyFeX4m/view?usp=share_link'),
(1055, 0, 'WB-932034-2023', NULL, 'Info Perakaunan', 'Kod-Kod Akaun ', 'Senarai Semak Kursus/Bengkel/Ceramah/Latihan', 'Senarai semak Tuntutan Bayaran', 'https://drive.google.com/file/d/1uSgmvsVrAjF9xNCwzrxWh_5J-bQlfHGG/view');

-- --------------------------------------------------------

--
-- Table structure for table `text_pic`
--

CREATE TABLE `text_pic` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `gambar` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `text_pic`
--

INSERT INTO `text_pic` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `tajuk`, `deskripsi`, `gambar`, `link`) VALUES
(323, 0, 'WB-932034-2023', 'jbn', 'Profail Jabatan', 'Perutusan Bendahari Ngeri', 'Perutusan Bendahari Negeri', 'Businex-Team\r\nSalam sejahtera kepada semua warga Jabatan Bendahari Negeri (JBN) dan pelanggan-pelanggan yang dihormati.\r\n\r\nPertamanya, selamat melayari laman web JBN yang baru. Di era pendigitalan, JBN sekali lagi mengorak langkah meningkatkan perkhidmatan dan saluran informasi melalui laman web yang direka semula ini.\r\n\r\nJBN merupakan organisasi awam negeri yang bertanggungjawab terhadap perkhidmatan kewangan dan perakaunan Kerajaan Negeri. JBN telah banyak mengharungi cabaran dan mencapai pelbagai kejayaan. Antaranya, JBN telah mendapat pengiktirafan Sijil Tanpa Teguran sejak tahun 2000 dan telah mewujudkan pelbagai sistem atas talian bagi meningkatkan prestasi perkhidmatan seperti S3P, eMove, eKontrak, ePayA3 dan e-SlipGaji. JBN juga telah banyak memperkenalkan pembaharuan seperti kelulusan baucar bayaran di peringkat Pusat Tanggungjawab (PTJ) terpilih, meningkatkan had bayaran di Bendahari Cawangan dan eBanking serta mengemaskini prosedur penyemakan dan pertimbangan baucar bayaran.\r\n\r\nBagaimanapun, JBN perlu sentiasa dinamik. Pada masa ini, JBN fokus kepada pelaksanaan perakaunan akruan di peringkat Kerajaan Negeri Sabah. Transisi kepada perakaunan akruan merupakan langkah seterusnya yang tepat serta tepat pada masanya dan JBN mempunyai peranan yang amat penting sebagai agensi peneraju pelaksanaan. JBN juga tidak ketinggalan bersama-sama menyokong dan merealisasikan Pelan Pendigitalan Kerajaan Negeri melalui Konsep 5A ‘Accessible by Anyone at Any time, Any where, by Any mobile device’. Justeru, pelaksanaan perakaunan akruan disekalikan dengan pembangunan Intelligent State Financial and Accounting System (iSFAS). Kedua-dua projek ini memerlukan komitmen idea, masa dan sumber manusia terlatih yang secukupnya bagi menetapkan dasar dan prosedur, membina sistem, mengadakan latihan dan mengumpul data aset.\r\n\r\nDi samping cabaran memenuhi dan mengatasi ekspektasi standard perkhidmatan kewangan dan perakaunan, JBN juga terkesan oleh penularan wabak COVID-19. Selain memastikan perkhidmatan bayaran (essential service) yang tidak terputus, JBN juga perlu mematuhi arahan-arahan Kerajaan bagi memutuskan rantaian jangkitan wabak ini. Cabaran ini menekankan lagi keperluan tranformasi perkhidmatan kewangan dan perakaunan ke arah pendigitalan sepenuhnya bukan sahaja supaya perkhidmatan sentiasa tersedia tetapi untuk menjamin keselamatan dan kesihatan anggota JBN dan semua warga kerja Klasifikasi Kewangan dan Perakaunan.\r\n\r\nJusteru, persefahaman, sokongan dan kerjasama semua tidak kira samada pelanggan JBN mahupun anggota JBN dan warga kerja Klasifikasi Kewangan dan Perakaunan dipohon bagi memastikan perkhidmatan Kewangan dan Perakaunan Kerajaan Negeri sentiasa berada pada tahap yang terbaik.\r\n\r\nAkhir kata, diharapkan agar laman web ini dapat memenuhi keperluan anda. JBN sentiasa bersedia menerima dan mengalu-alukan maklumbalas anda tentang perkongsian dan penyaluran informasi kami serta perkhidmatan yang kami berikan.\r\n\r\nSekian\r\n\r\nTerima kasih.\r\n\r\nDatin Mary Angela Sipaun (C.A(M), FCPA(A), ASEAN CPA)\r\n\r\nBendahari Negeri\r\n', 'BN SIT small.jpg', ''),
(338, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Semakan Bayaran Peribadi', 'Semakan Bayaran Peribadi', '', 'semakan bayaran.jpg', 'https://s3p.sabah.gov.my/semakan_bayaran/'),
(339, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Semakan Bayaran Peribadi', 'Central Code', '', 'central code.jpg', 'https://s3p.sabah.gov.my/mirror/centralcode/'),
(340, 0, 'WB-932034-2023', 'jbn', 'Perkhidmatan', 'Semakan Bayaran Peribadi', 'S3P', '', 'sisvot.jpg', 'https://s3p.sabah.gov.my/mirror/sisvot/'),
(1669, 1, 'WB-932034-2023', NULL, 'Perkhidmatan', 'Perkhidmatan JBNS', 'PAYCENTRE', '', 'PAYCENTRE.jpg', 'https://paycentre.sabah.gov.my/login'),
(1670, 1, 'WB-932034-2023', NULL, 'Perkhidmatan', 'Perkhidmatan JBNS', 'PAYCENTRE', 'PAYCENTRE', 'PAYCENTRE.jpg', 'https://paycentre.sabah.gov.my');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `ai` int NOT NULL,
  `trash` int NOT NULL DEFAULT '0',
  `website_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url_agensi` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sub` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tajuk` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pautan` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`ai`, `trash`, `website_id`, `url_agensi`, `menu`, `sub`, `tajuk`, `pautan`) VALUES
(92, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Majlis amant Bendahari Negeri 2022', 'Majlis Amanat Bendahari Negeri 2022', 'https://www.youtube.com/watch?v=qHHXGefNLWw&t=4510s'),
(93, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Majlis amant Bendahari Negeri 2022', 'Majlis AManat Bendahari Negeri 2021', 'https://www.youtube.com/watch?v=H8fdUI37PXk'),
(94, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Majlis amant Bendahari Negeri', 'Majlis AManat Bendahari Negeri 2021', 'https://www.youtube.com/watch?v=H8fdUI37PXk'),
(95, 0, 'WB-932034-2023', 'jbn', 'Lain-Lain', 'Majlis amant Bendahari Negeri', 'Majlis Amanat Bendahari Negeri 2022', 'https://www.youtube.com/watch?v=qHHXGefNLWw&t=4510s'),
(299, 0, 'WB-932034-2023', NULL, 'Lain-Lain', 'Majlis amant Bendahari Negeri', 'Majlis Amanat Bendahari Negeri 2023', 'https://www.youtube.com/watch?v=HuMiTti8QNg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agensi`
--
ALTER TABLE `agensi`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `dasar_notis`
--
ALTER TABLE `dasar_notis`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `direktori`
--
ALTER TABLE `direktori`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `maklum_balas`
--
ALTER TABLE `maklum_balas`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `menu_main`
--
ALTER TABLE `menu_main`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `pautan_agensi`
--
ALTER TABLE `pautan_agensi`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `pautan_url`
--
ALTER TABLE `pautan_url`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `penerbitan`
--
ALTER TABLE `penerbitan`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `perutusan`
--
ALTER TABLE `perutusan`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `sebutharga`
--
ALTER TABLE `sebutharga`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `text_nopic`
--
ALTER TABLE `text_nopic`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `text_pic`
--
ALTER TABLE `text_pic`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`ai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agensi`
--
ALTER TABLE `agensi`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;

--
-- AUTO_INCREMENT for table `carta`
--
ALTER TABLE `carta`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=826;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `dasar_notis`
--
ALTER TABLE `dasar_notis`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `direktori`
--
ALTER TABLE `direktori`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2741;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5064;

--
-- AUTO_INCREMENT for table `maklum_balas`
--
ALTER TABLE `maklum_balas`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21846;

--
-- AUTO_INCREMENT for table `menu_main`
--
ALTER TABLE `menu_main`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6390;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `pautan_agensi`
--
ALTER TABLE `pautan_agensi`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `pautan_url`
--
ALTER TABLE `pautan_url`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;

--
-- AUTO_INCREMENT for table `penerbitan`
--
ALTER TABLE `penerbitan`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `perutusan`
--
ALTER TABLE `perutusan`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1239;

--
-- AUTO_INCREMENT for table `sebutharga`
--
ALTER TABLE `sebutharga`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2227;

--
-- AUTO_INCREMENT for table `text_nopic`
--
ALTER TABLE `text_nopic`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1230;

--
-- AUTO_INCREMENT for table `text_pic`
--
ALTER TABLE `text_pic`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2153;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `ai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
