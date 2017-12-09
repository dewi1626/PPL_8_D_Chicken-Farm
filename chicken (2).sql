-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2017 at 03:33 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chicken`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayam`
--

CREATE TABLE `ayam` (
  `idAyam` int(11) NOT NULL,
  `idPemain` int(11) NOT NULL,
  `waktuTelur` int(11) NOT NULL,
  `waktuLapar` int(11) NOT NULL,
  `jmlTelur` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `waktuMati` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ayam`
--

INSERT INTO `ayam` (`idAyam`, `idPemain`, `waktuTelur`, `waktuLapar`, `jmlTelur`, `state`, `waktuMati`) VALUES
(1, 1, 7, 0, 15, 3, 25),
(2, 1, 7, 15, 15, 5, 25),
(3, 1, 7, 15, 15, 5, 25),
(4, 1, 7, 15, 15, 5, 25),
(5, 1, 7, 15, 15, 5, 25),
(6, 1, 7, 15, 15, 5, 25),
(7, 1, 7, 15, 15, 5, 25),
(8, 2, 7, 15, 15, 5, 25),
(9, 2, 7, 15, 15, 2, 25),
(10, 2, 7, 15, 15, 2, 25),
(11, 2, 7, 15, 15, 2, 25),
(12, 2, 7, 15, 15, 2, 25),
(13, 2, 7, 15, 15, 2, 25),
(14, 2, 7, 15, 15, 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `beruang`
--

CREATE TABLE `beruang` (
  `idBeruang` int(11) NOT NULL,
  `idPemain` int(11) NOT NULL,
  `waktuKeluar` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beruang`
--

INSERT INTO `beruang` (`idBeruang`, `idPemain`, `waktuKeluar`, `state`) VALUES
(1, 1, 60, 3),
(2, 2, 60, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rumput`
--

CREATE TABLE `rumput` (
  `idRumput` int(11) NOT NULL,
  `idPemain` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rumput`
--

INSERT INTO `rumput` (`idRumput`, `idPemain`, `jumlah`) VALUES
(1, 1, 7),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `idScore` int(11) NOT NULL,
  `idPemain` int(11) NOT NULL,
  `score` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`idScore`, `idPemain`, `score`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `idState` int(11) NOT NULL,
  `state` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`idState`, `state`) VALUES
(1, 'makan'),
(2, 'mati'),
(3, 'hidup'),
(4, 'jalan'),
(5, 'lapar'),
(6, 'stop');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idPemain` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jumlahAyam` int(2) NOT NULL,
  `koin` int(11) NOT NULL,
  `telur` int(11) NOT NULL,
  `pakan` int(11) NOT NULL,
  `waktuMain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idPemain`, `nama`, `jumlahAyam`, `koin`, `telur`, `pakan`, `waktuMain`) VALUES
(1, 'ar36', 7, 179, 97, 21, 150),
(2, 'ar', 1, 30, 0, 0, 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ayam`
--
ALTER TABLE `ayam`
  ADD PRIMARY KEY (`idAyam`);

--
-- Indexes for table `beruang`
--
ALTER TABLE `beruang`
  ADD PRIMARY KEY (`idBeruang`);

--
-- Indexes for table `rumput`
--
ALTER TABLE `rumput`
  ADD PRIMARY KEY (`idRumput`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`idScore`),
  ADD KEY `idPemain` (`idPemain`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`idState`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idPemain`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ayam`
--
ALTER TABLE `ayam`
  MODIFY `idAyam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `beruang`
--
ALTER TABLE `beruang`
  MODIFY `idBeruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rumput`
--
ALTER TABLE `rumput`
  MODIFY `idRumput` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `idScore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `idState` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idPemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`idPemain`) REFERENCES `user` (`idPemain`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
