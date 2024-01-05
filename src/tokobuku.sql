-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 05:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `tokobuku`
--
CREATE DATABASE IF NOT EXISTS `tokobuku` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tokobuku`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `jenis`, `harga`) VALUES
('001', 'Buku Tulis', 'buku', 10000),
('002', 'Pensil 2B', 'atk', 3000),
('003', 'Chiki', 'snack', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `jualdetail`
--

DROP TABLE IF EXISTS `jualdetail`;
CREATE TABLE `jualdetail` (
  `id` int(11) NOT NULL,
  `jualNomor` int(11) NOT NULL,
  `barangKode` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jualmaster`
--

DROP TABLE IF EXISTS `jualmaster`;
CREATE TABLE `jualmaster` (
  `nomor` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `konsumenId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

DROP TABLE IF EXISTS `konsumen`;
CREATE TABLE `konsumen` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jualdetail`
--
ALTER TABLE `jualdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jualmaster`
--
ALTER TABLE `jualmaster`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jualdetail`
--
ALTER TABLE `jualdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jualmaster`
--
ALTER TABLE `jualmaster`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
