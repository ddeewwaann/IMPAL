-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 06:00 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_impal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `kost`
--

CREATE TABLE `kost` (
  `namakost` varchar(30) NOT NULL,
  `kodekost` char(5) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `fasilitas` varchar(200) NOT NULL,
  `harga` int(20) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `namapemilik` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kost`
--

INSERT INTO `kost` (`namakost`, `kodekost`, `alamat`, `fasilitas`, `harga`, `jenis`, `namapemilik`, `contact`) VALUES
('kostambi', 'kt001', 'perum oesman', 'ac,tv', 100000, 'putra', 'dewan', '087772873877'),
('taruna', 'kt002', 'perum griya', 'ac,tv', 100000, 'putra', 'esa', '087772873877'),
('dembaba', 'kt003', 'perum panorama', 'ac,tv', 100000, 'putri', 'juki', '087772873877'),
('mawar', 'kt004', 'perum asri', 'ac,tv', 100000, 'putra', 'yuleo', '087772873877'),
('melati', 'kt005', 'perum singawinata', 'ac,tv', 100000, 'putri', 'wira', '087772873877');

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `nama` varchar(30) NOT NULL,
  `noidentitas` char(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `norekening` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`nama`, `noidentitas`, `email`, `username`, `password`, `norekening`, `contact`) VALUES
('dewan', '4215653245665553', 'dewan.satriakamal@gmail.com', 'ddeemaann', 'dewandewan', '231321321', '087772873877'),
('esa', '4215653245665553', 'esa.satriakamal@gmail.com', 'esa', 'esa', '2313213221', '0877722223877'),
('wira', '4215653245665553', 'wira.satriakamal@gmail.com', 'wira', 'wira', '231326621', '055572873877'),
('yuleo', '4215653245665553', 'yuleo.satriakamal@gmail.com', 'yuleo', 'yuleo', '231331321', '087772444877'),
('zuqi', '4215653241165553', 'zuqii.satriakamal@gmail.com', 'zuqii', 'zuqii', '231321321', '087733373877');

-- --------------------------------------------------------

--
-- Table structure for table `pencari`
--

CREATE TABLE `pencari` (
  `nama` varchar(30) NOT NULL,
  `noidentitas` char(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `norekening` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pencari`
--

INSERT INTO `pencari` (`nama`, `noidentitas`, `email`, `username`, `password`, `norekening`, `contact`) VALUES
('dewan', '4215653245665553', 'dewan.satriakamal@gmail.com', 'ddeemaann', 'dewandewan', '231321321', '087772873877'),
('esa', '4215653245665553', 'esa.satriakamal@gmail.com', 'esa', 'esa', '2313213221', '0877722223877'),
('wira', '4215653245665553', 'wira.satriakamal@gmail.com', 'wira', 'wira', '231326621', '055572873877'),
('yuleo', '4215653245665553', 'yuleo.satriakamal@gmail.com', 'yuleo', 'yuleo', '231331321', '087772444877'),
('zuqi', '4215653241165553', 'zuqii.satriakamal@gmail.com', 'zuqii', 'zuqi', '231321321', '087733373877');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`kodekost`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pencari`
--
ALTER TABLE `pencari`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
