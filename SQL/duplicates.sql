-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2025 at 01:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `duplicates`
--

CREATE TABLE `duplicates` (
  `id` int(11) NOT NULL,
  `target_name` varchar(255) DEFAULT NULL,
  `similar_name` varchar(255) DEFAULT NULL,
  `similarity` float DEFAULT NULL,
  `detected_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duplicates`
--

INSERT INTO `duplicates` (`id`, `target_name`, `similar_name`, `similarity`, `detected_at`) VALUES
(3, 'DWQFWQFQF', 'CQEFEQF', 24, '2025-04-29 18:52:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `duplicates`
--
ALTER TABLE `duplicates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `duplicates`
--
ALTER TABLE `duplicates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
