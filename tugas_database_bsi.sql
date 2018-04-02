-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 04:23 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas database bsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `Kode Dosen` char(10) NOT NULL,
  `Kode MK` varchar(50) NOT NULL,
  `Nama Dosen` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`Kode Dosen`, `Kode MK`, `Nama Dosen`) VALUES
('323', '201', 'Ade Setiawan'),
('723', '305', 'Ratna Kartika');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` char(50) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `JENIS KELAMIN` enum('Laki-Laki','Perempuan') NOT NULL DEFAULT 'Laki-Laki',
  `ALAMAT` varchar(50) NOT NULL,
  `STATUS PERKULIAHAN` enum('AKTIF','TIDAK AKTIF') NOT NULL DEFAULT 'AKTIF'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NAMA`, `JENIS KELAMIN`, `ALAMAT`, `STATUS PERKULIAHAN`) VALUES
('12170383', 'Maulana Yusuf', 'Laki-Laki', 'Tanah Abang', 'AKTIF'),
('12170892', 'Rendi Simon', 'Laki-Laki', 'Kemayoran', 'AKTIF'),
('12178213', 'Defi Lukita', 'Perempuan', 'Sunter', 'AKTIF'),
('12179822', 'Aprijal Septra', 'Laki-Laki', 'Tanah Abang', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `mata kuliah`
--

CREATE TABLE `mata kuliah` (
  `Kode MK` char(50) NOT NULL,
  `Nama MK` varchar(50) NOT NULL,
  `Ruang` varchar(10) NOT NULL,
  `Hari` varchar(10) NOT NULL,
  `Waktu` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata kuliah`
--

INSERT INTO `mata kuliah` (`Kode MK`, `Nama MK`, `Ruang`, `Hari`, `Waktu`) VALUES
('305', 'Bahasa Inggris II', '403', 'Senin', '19.00-21.15'),
('201', 'Web Programming I', '203', 'Selasa', '17.00-20.15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`Kode Dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mata kuliah`
--
ALTER TABLE `mata kuliah`
  ADD PRIMARY KEY (`Kode MK`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
