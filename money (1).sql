-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 04:52 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `money`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi`
--

CREATE TABLE `chi` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `money` int(100) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chi`
--

INSERT INTO `chi` (`id`, `date`, `money`, `note`) VALUES
(1, '2021-05-28', 35000, 'Trà sữa');

-- --------------------------------------------------------

--
-- Table structure for table `cmt`
--

CREATE TABLE `cmt` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cmt`
--

INSERT INTO `cmt` (`id`, `email`, `phone`, `note`) VALUES
(4, 'nam.real.notfake@gmail.com', '0962638061', 'web giao diện hơi chán');

-- --------------------------------------------------------

--
-- Table structure for table `thu`
--

CREATE TABLE `thu` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `moneys` int(100) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thu`
--

INSERT INTO `thu` (`id`, `date`, `moneys`, `note`) VALUES
(2, '2021-05-29', 200000, 'Mua đồ ăn cho 2 ngày cuối tuần'),
(4, '2021-05-28', 20000000, 'Lĩnh lương tháng 6'),
(5, '2021-06-18', 1886000, 'Tiền ăn tháng 6'),
(6, '2021-06-19', 25000, 'Mua bánh đa');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `phone`, `name`) VALUES
(1, 'admin', 'admin', 0, ''),
(2, 'test@gmail.com', '628a7453e405381ff6bf9e3a2c4cf396', 0, 'Test 2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi`
--
ALTER TABLE `chi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thu`
--
ALTER TABLE `thu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi`
--
ALTER TABLE `chi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmt`
--
ALTER TABLE `cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thu`
--
ALTER TABLE `thu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
