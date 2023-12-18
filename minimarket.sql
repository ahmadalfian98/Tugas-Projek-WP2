-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2023 at 12:00 PM
-- Server version: 8.0.34
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minimarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `name_adm` varchar(125) NOT NULL,
  `address_adm` text NOT NULL,
  `no_phoneadm` varchar(15) NOT NULL,
  `useradm` varchar(50) NOT NULL,
  `passadm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name_adm`, `address_adm`, `no_phoneadm`, `useradm`, `passadm`) VALUES
(3, 'Admin', 'Kuningan Jawa Barat', '0875698745633', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id_disc` int NOT NULL,
  `id_produk` varchar(7) NOT NULL,
  `id_admin` int NOT NULL,
  `name_disc` varchar(30) DEFAULT NULL,
  `disc` varchar(15) DEFAULT '0',
  `tgl_end` varchar(15) DEFAULT NULL,
  `tgl_start` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id_disc`, `id_produk`, `id_admin`, `name_disc`, `disc`, `tgl_end`, `tgl_start`) VALUES
(1, 'jibrO', 0, NULL, '0', NULL, NULL),
(2, 'ObPu7', 0, '0', '0', '0', '0'),
(3, 'duBaw', 0, 'Sale Of Day', '5', '2022-11-24', '2022-11-01'),
(4, 'gShp7', 0, NULL, '0', NULL, NULL),
(5, 'IJNOv', 0, NULL, '0', NULL, NULL),
(6, 'l1Az5', 0, NULL, '0', NULL, NULL),
(7, 'vBu1O', 0, NULL, '0', NULL, NULL),
(8, 'cry4N', 0, NULL, '0', NULL, NULL),
(9, 'uaXPU', 0, NULL, '0', NULL, NULL),
(10, 'gjLG4', 0, NULL, '0', NULL, NULL),
(11, 'VLpMj', 0, NULL, '0', NULL, NULL),
(12, 'VGhAy', 0, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_category` int NOT NULL,
  `name_category` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_category`, `name_category`) VALUES
(1, 'Makanan'),
(2, 'Sembako');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int NOT NULL,
  `nama_kecamatan` varchar(30) NOT NULL,
  `ongkir` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `ongkir`) VALUES
(2, 'Argapura', '20000'),
(3, 'Majalengka', '15000');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_cart` int NOT NULL,
  `id_produk` varchar(7) NOT NULL,
  `id_cust` int NOT NULL,
  `qty_cart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_order`
--

CREATE TABLE `my_order` (
  `id_order` varchar(30) NOT NULL,
  `id_cust` int NOT NULL,
  `tgl_order` varchar(15) NOT NULL,
  `total_order` varchar(15) NOT NULL,
  `status_order` int NOT NULL,
  `bukti_pembayaran` text NOT NULL,
  `type_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `my_order`
--

INSERT INTO `my_order` (`id_order`, `id_cust`, `tgl_order`, `total_order`, `status_order`, `bukti_pembayaran`, `type_order`) VALUES
('20220821EDFCN2SP', 1, '2022-08-21', '31000', 4, '31084499740-bukti_transfer1.jpg', 0),
('20220821GELOYWN2', 1, '2022-08-21', '113000', 0, '', 0),
('20220821LTKCZHWI', 2, '2022-08-21', '51000', 0, '', 0),
('20220822MDCTCLY4', 1, '2022-08-22', '31000', 4, '31084499740-bukti_transfer2.jpg', 0),
('20220914ATMNCQIM', 1, '2022-09-14', '113000', 4, 'Screenshot_2022-06-27_120645.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_cust` int NOT NULL,
  `name_cust` varchar(125) NOT NULL,
  `address_cust` text NOT NULL,
  `no_phone` varchar(15) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `member` int NOT NULL,
  `create_member` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ttl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_cust`, `name_cust`, `address_cust`, `no_phone`, `jk`, `username`, `password`, `member`, `create_member`, `ttl`) VALUES
(1, 'Zahra', 'Kuningan Jawa Barat', '08976788777', 'Perempuan', 'pelanggan', 'pelanggan', 0, '2022-08-20 13:29:21', ''),
(2, 'Zaenal', 'Kuningan', '08976788777', 'Laki - Laki', 'pelanggan1', 'pelanggan2', 0, '2022-08-21 10:04:16', ''),
(3, 'coba', 'LINK.KRAMAT JAYA RT/RW 007/003', '085156727368', 'Perempuan', 'admin', 'coba', 0, '2022-08-22 12:15:04', ''),
(4, 'Naya', 'Kuningan', '089876567654', 'Perempuan', 'naya', 'naya', 0, '2023-01-18 06:42:39', '1999-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id_pengiriman` int NOT NULL,
  `id_order` varchar(30) NOT NULL,
  `id_kecamatan` int NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `id_order`, `id_kecamatan`, `alamat`) VALUES
(1, '20220821EDFCN2SP', 2, 'Lingk. Harapan II Rt.02 Rw.05'),
(2, '20220821LTKCZHWI', 3, 'Lingk. Lingga Kamuning Rt.03 Rw. 03'),
(3, '20220821GELOYWN2', 2, 'LINK.KRAMAT JAYA RT/RW 007/003'),
(4, '20220822MDCTCLY4', 2, 'PAMIJAHAN '),
(5, '20220914ATMNCQIM', 2, 'Gunungkeling, Kuningan Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(7) NOT NULL,
  `id_category` int NOT NULL,
  `name_prod` varchar(125) NOT NULL,
  `ket_prod` text NOT NULL,
  `price_prod` varchar(15) NOT NULL,
  `stok_prod` int NOT NULL,
  `gambar` text NOT NULL,
  `target_awal` int NOT NULL,
  `target_akhir` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_category`, `name_prod`, `ket_prod`, `price_prod`, `stok_prod`, `gambar`, `target_awal`, `target_akhir`) VALUES
('cry4N', 1, 'Malkist Kopyor', 'Bngks', '5000', 99, '311.jpg', 20, 50),
('duBaw', 1, 'Swalow', 'Bngks', '5000', 95, '3.jpg', 20, 50),
('gjLG4', 1, 'Friench Fries', 'Bngks', '6000', 30, '50.jpg', 10, 50),
('gShp7', 1, 'Hello Panda', 'Bngks', '1000', 147, '19.jpg', 10, 50),
('IJNOv', 1, 'Taro Net', 'Bngks', '4500', 100, '24.jpg', 20, 50),
('jibrO', 1, 'Palmia Mentega', 'Bngks', '15000', 25, '2.jpg', 30, 50),
('l1Az5', 1, 'Energen Vanila', 'Pak', '19000', 46, '22.jpg', 20, 50),
('ObPu7', 1, 'Biskuit Regal', 'Bngks', '22000', 46, '20.jpg', 20, 50),
('uaXPU', 1, 'Sosis Champ', 'Bngks', '15000', 100, '32.jpg', 15, 50),
('vBu1O', 1, 'Pota Bee', 'Bngks', '2300', 100, '13.jpg', 20, 50),
('VGhAy', 1, 'ccc', 'Bngks', '10000', 100, '34.jpg', 20, 50),
('VLpMj', 1, 'Kopi Freshko', 'Bngks', '1000', 100, '35.jpg', 25, 50);

-- --------------------------------------------------------

--
-- Table structure for table `produk_order`
--

CREATE TABLE `produk_order` (
  `id_prod_order` int NOT NULL,
  `id_order` varchar(30) NOT NULL,
  `id_produk` varchar(7) NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk_order`
--

INSERT INTO `produk_order` (`id_prod_order`, `id_order`, `id_produk`, `qty`) VALUES
(1, '20220821EDFCN2SP', 'duBaw', 2),
(2, '20220821EDFCN2SP', 'gShp7', 1),
(3, '20220821LTKCZHWI', 'duBaw', 2),
(4, '20220821LTKCZHWI', 'gShp7', 2),
(5, '20220821LTKCZHWI', 'l1Az5', 1),
(6, '20220821LTKCZHWI', 'cry4N', 1),
(7, '20220821GELOYWN2', 'duBaw', 2),
(8, '20220821GELOYWN2', 'gShp7', 2),
(9, '20220821GELOYWN2', 'l1Az5', 4),
(10, '20220821GELOYWN2', 'cry4N', 1),
(11, '20220822MDCTCLY4', 'duBaw', 2),
(12, '20220822MDCTCLY4', 'gShp7', 1),
(13, '20220914ATMNCQIM', 'ObPu7', 4),
(14, '20220914ATMNCQIM', 'duBaw', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id_disc`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `my_order`
--
ALTER TABLE `my_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_cust`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_order`
--
ALTER TABLE `produk_order`
  ADD PRIMARY KEY (`id_prod_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id_disc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_cart` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_cust` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id_pengiriman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk_order`
--
ALTER TABLE `produk_order`
  MODIFY `id_prod_order` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
