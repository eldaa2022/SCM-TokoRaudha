-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 10:35 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_raudha`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `foto_barang` varchar(255) DEFAULT NULL,
  `modal_barang` int(11) DEFAULT NULL,
  `stok` int(50) NOT NULL,
  `rop` int(50) NOT NULL,
  `lot_sizing` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`, `foto_barang`, `modal_barang`, `stok`, `rop`, `lot_sizing`) VALUES
('b01', 'Beras Belida', 106000, '0e0db708bb2d8ca5edc8ae072f0d14d0.jpg', 102000, 48, 1, 12),
('b02', 'Tissue Nice', 10000, 'cc9b1c3bbacaf13ccf6639b239805fd8.jpg', 6500, 1, 10, 10),
('b03', 'Susu Frisian Flag', 6000, 'c312f46aaa58b48d43f463fa3a295cdf.png', 4600, 0, 2, 39),
('b04', 'Air Mineral SMS', 21000, '5dbdec8bf32ad25a9d4fbd135d7a0226.jpg', 16000, 0, 1, 12),
('b05', 'Es krim Choco Magma', 2000, '8c761c5a86ae8fa1bbb97633ad041ee9.jpg', 1500, 0, 10, 10),
('b06', 'Yakult', 2500, '0b1aa1423cd43772ceb64766ac3c2349.jpeg', 1700, 0, 10, 10),
('b07', 'Cimory Yogurt Squeeze', 10000, 'a9f152f8bd8b451b3b8c72070cc4414b.jpg', 8250, 0, 10, 10),
('b08', 'Indomie Goreng', 3500, 'eeffd721df2e66c9c63121ab236c80fe.jpg', 2600, 49, 25, 250),
('b09', 'Ichitan Brown Sugar', 8000, 'd9e9983e0a907790a278bd74753806fb.jpg', 6400, 0, 1, 19),
('b10', 'Biskuit Roma Kelapa', 8000, 'fbf3c5a245b8b78615efb8a0eb38c364.jpg', 7500, 0, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_brg_keluar` int(255) NOT NULL,
  `id_barang` varchar(255) DEFAULT NULL,
  `id_cus` int(100) DEFAULT NULL,
  `tgl_keluar` timestamp NULL DEFAULT current_timestamp(),
  `jml_keluar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_brg_keluar`, `id_barang`, `id_cus`, `tgl_keluar`, `jml_keluar`) VALUES
(1, 'b01', 1, '2022-07-31 06:06:27', 2),
(3, 'b08', 1, '2022-07-31 06:12:50', 1),
(18, 'b02', 1, '2022-08-02 08:23:42', 59),
(19, 'b08', 1, '2022-08-02 08:26:28', 132),
(20, 'b08', 1, '2022-08-02 08:28:13', 2);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_brg_masuk` varchar(255) NOT NULL,
  `id_barang` varchar(255) DEFAULT NULL,
  `id_supplier` varchar(255) DEFAULT NULL,
  `tgl_masuk` timestamp NULL DEFAULT current_timestamp(),
  `jml_masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_brg_masuk`, `id_barang`, `id_supplier`, `tgl_masuk`, `jml_masuk`) VALUES
('BM01', 'b11', 'SP10', '2022-07-09 16:09:21', 10),
('BM02', 'b13', 'SP09', '2022-07-13 01:58:16', 100),
('BM03', 'b13', 'SP10', '2022-07-13 02:09:37', 100),
('BM04', 'b13', 'SP01', '2022-07-13 02:13:20', 100),
('BM05', 'b01', 'SP01', '2022-07-28 18:09:16', 20),
('BM06', 'b08', 'SP02', '2022-07-30 10:54:32', 1),
('BM08', 'b08', 'SP02', '2022-07-30 14:04:01', 3),
('BM09', 'b08', 'SP02', '2022-08-01 14:53:43', 100),
('BM10', 'b02', 'SP03', '2022-08-02 08:23:06', 30),
('BM11', 'b08', 'SP02', '2022-08-02 08:27:06', 50);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk_supplier`
--

CREATE TABLE `barang_masuk_supplier` (
  `id_brg_masuk` varchar(100) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `tgl_masuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jml_masuk` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_masuk_supplier`
--

INSERT INTO `barang_masuk_supplier` (`id_brg_masuk`, `id_barang`, `tgl_masuk`, `jml_masuk`) VALUES
('BMS01', 'b08', '2022-07-30 11:00:07', 19),
('BMS02', 'b08', '2022-07-30 14:03:40', 3),
('BMS03', 'b08', '2022-08-01 02:48:33', 2),
('BMS04', 'b08', '2022-08-01 13:58:21', 31),
('BMS05', 'b08', '2022-08-01 14:53:16', 250);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_cus` int(100) NOT NULL,
  `nama_cus` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_cus`, `nama_cus`, `email`, `password`, `username`) VALUES
(1, 'Lala', 'lala@gmail.com', 'lalala', 'lala22');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` varchar(100) NOT NULL,
  `nama_staff` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `foto_staff` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama_staff`, `no_hp`, `foto_staff`, `username`, `password`) VALUES
('S01', 'Syafiq', '081288912760', NULL, 'syafiq', 'syafiq_20SI'),
('S02', 'Elda Nandini', '085272330976', NULL, 'supplier', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `stoksupplier`
--

CREATE TABLE `stoksupplier` (
  `id_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `foto_barang` varchar(100) DEFAULT NULL,
  `stok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stoksupplier`
--

INSERT INTO `stoksupplier` (`id_barang`, `nama_barang`, `foto_barang`, `stok`) VALUES
('b08', 'Indomie Goreng', NULL, '43');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(255) NOT NULL,
  `id_staff` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `id_staff`, `nama_supplier`, `no_hp`) VALUES
('SP01', 'S01', 'PT Agrimitra Utama Persada', '085266789012'),
('SP02', 'S01', 'PT Indofood CBP Sukses Makmur', '085223456908'),
('SP03', 'S01', 'Pindo Deli Pulp & Paper Mills', '081280953428'),
('SP04', 'S01', 'PT Frisian Flag Indonesia', '085290782754'),
('SP05', 'S01', 'PT Unilever Indonesia Tbk', '085206571249'),
('SP06', 'S01', 'PT Yakult Indonesia', '081200864751'),
('SP07', 'S01', 'PT Cisarua Mountain Dairy', '082376596218'),
('SP08', 'S01', 'PT Ichi Tan Indonesia', '089605342552'),
('SP09', 'S01', 'PT Mayora Indah Tbk', '081207521009'),
('SP10', 'S01', 'Toko Makmur Jaya', '085277411309'),
('SP11', 'S02', 'PT Chevron Indonesia', '082268814285');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_brg_keluar`),
  ADD KEY `id_barang_kedua` (`id_barang`),
  ADD KEY `id_cus` (`id_cus`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_brg_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `barang_masuk_supplier`
--
ALTER TABLE `barang_masuk_supplier`
  ADD PRIMARY KEY (`id_brg_masuk`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_cus`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `stoksupplier`
--
ALTER TABLE `stoksupplier`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `id_staff` (`id_staff`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_brg_keluar` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`id_cus`) REFERENCES `customer` (`id_cus`);

--
-- Constraints for table `barang_masuk_supplier`
--
ALTER TABLE `barang_masuk_supplier`
  ADD CONSTRAINT `barang_masuk_supplier_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `stoksupplier` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
