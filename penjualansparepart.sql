-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 08:54 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualansparepart`
--

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`kd_brg`, `nama_brg`, `stok`, `harga_jual`, `harga_beli`, `satuan`, `kategori`) VALUES
('001', 'Oli shell', 50, 50000, 45000, 'pcs', 'Motor'),
('002', 'shock breaker', 30, 110000, 100000, 'pcs', 'motor'),
('003', 'Ban', 25, 90000, 60000, 'pcs', 'motor'),
('004', 'Rantai', 35, 45000, 30000, 'pcs', 'motor');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `tgl_faktur` date NOT NULL,
  `no_faktur` varchar(50) NOT NULL,
  `nama_ksm` varchar(100) NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `stok` int(100) NOT NULL,
  `jumlah` double NOT NULL,
  `harga_satuan` double NOT NULL,
  `harga_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`tgl_faktur`, `no_faktur`, `nama_ksm`, `kd_brg`, `nama_brg`, `stok`, `jumlah`, `harga_satuan`, `harga_total`) VALUES
('2018-01-02', 'f002', 'Burhan', '002', 'Oli Castrol', 50, 1, 55000, 55000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
