-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 11:27 AM
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
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `locations` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `code`, `site`, `coordinates`, `locations`) VALUES
(1, 'main', 'Head Office', '14.626021117687136, 120.99964731838332', 'Sta. Mesa Heights, Quezon City'),
(2, 'main', 'Quirino Stockyard', '14.68306405447992, 121.02120381755093', 'Quirino Hwy, Quezon City'),
(3, '0370', 'Calatrava Substation', '10.552004067027788, 123.46034752273258', 'Calatrava, Negros Occidental'),
(4, '0370', 'EB Magalona Substation', '10.888594927717417, 122.96968221062865', 'Enrique B. Magalona, Negros Occidental'),
(5, '0301', 'CNP2 - Cebu Substation', '10.35845259842208, 123.91877112390864', 'Cebu City, Cebu'),
(6, '0352', 'Dumanjug Substation', '10.03698733312185, 123.44010184999426', 'Dumanjug, Cebu'),
(7, '0512', 'San Jose Substation', '14.820873879155833, 121.04791143999043', 'San Jose Del Monte, Bulacan'),
(8, '0511', 'Maasin Substation', '10.162476336185087, 124.77864212066845', 'Maasin, Leyte'),
(9, '0511', 'Tabango Substation', '11.32343548880757, 124.34246714142843', 'Tabango, Leyte'),
(10, '0511', 'Isabel Substation', '10.918740933924578, 124.44837728868006', 'Isabel, Leyte\r\n'),
(11, '0540', 'Binan Substation', '14.330444671629907, 121.07578846930984', 'Biñan Substation'),
(12, '0540', 'Dasmariñas Substation', '14.312091469222525, 120.9516748246247', 'Dasmariñas, Cavite'),
(13, '0540', 'Muntinlupa Substation', '14.445005391135021, 121.05242248685894', 'Cupang, Muntinlupa'),
(14, '0555', 'Hermosa Substation', '14.866033896195711, 120.49484288481608', 'Hermosa, Bataan'),
(15, '0555', 'Balingueo Substation', '15.958749653230871, 120.4009982948214', 'Balingueo, Pangasinan'),
(16, '0555', 'Bayombong Substation', '16.472538469093053, 121.11123871268487', 'Bayombong, Nueva Vizcaya'),
(17, '0555', 'Pantabangan Substation', '15.811675354820013, 121.10806442309972', 'Pantabangan, Nueva Ecija'),
(18, '0569', 'Botolan Substation', '15.300128642430826, 120.01098476662206', 'Botolan, Zambales'),
(19, '0589', 'Ilijan Substation', '13.62359948201848, 121.07871657113051', 'Ilijan, Batangas'),
(20, '0555', 'Tuguegarao Substation', '17.623393612641106, 121.76976365774496', 'Tuguegarao, Cagayan'),
(21, '0370', 'Cadiz Substation', '10.934816931774133, 123.28658350887586', 'Cadiz City, Negros Occidental'),
(22, '0569', 'Tayabas Substation', '14.022877293451787, 121.60537101584426', 'Tayabas, Quezon'),
(23, 'TL', 'Terra Solar', '15.29180, 121.00746', 'Castellano, Nueva Ecija/San Vicente (Pob.), Nueva Ecija/San Lorenzo (Pob.), Nueva Ecija/San Leonardo, Gapan City, Nueva Ecija/Maburak, Gapan City, Nueva Ecija/Mangino, Gapan City, Nueva Ecija/Puting Tubig, Nueva Ecija/Santa Cruz, Gapan City, Nueva Ecija');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_amlan`
--

CREATE TABLE `assignment_amlan` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_amlan`
--

INSERT INTO `assignment_amlan` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Stockyard', '9.356694, 123.276194\n', 'Magatas, Sibulan, Negros Oriental');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_balingueo`
--

CREATE TABLE `assignment_balingueo` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_balingueo`
--

INSERT INTO `assignment_balingueo` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Balingueo Substation', '15.958668, 120.401037', 'Balingueo, Santa Barbara, Pangasinan');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_banilad`
--

CREATE TABLE `assignment_banilad` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_banilad`
--

INSERT INTO `assignment_banilad` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Banilad Substation', '10.359692, 123.918175', 'Nasipit, Cebu City, Cebu');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_barotac`
--

CREATE TABLE `assignment_barotac` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_barotac`
--

INSERT INTO `assignment_barotac` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Barotac Viejo Substation', '11.032759, 122.869999', 'San Juan, Barotac Viejo, Iloilo');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_bayombong`
--

CREATE TABLE `assignment_bayombong` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_bayombong`
--

INSERT INTO `assignment_bayombong` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Bayombong Substation', '16.472314, 121.111742', 'Busilac, Bayombong, Nueva Vizcaya');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_binan`
--

CREATE TABLE `assignment_binan` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_binan`
--

INSERT INTO `assignment_binan` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Binan Substation', '14.330651, 121.075913', 'San Vicente, Binan, Laguna');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_bolo`
--

CREATE TABLE `assignment_bolo` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_bolo`
--

INSERT INTO `assignment_bolo` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Stockyard', '16.017694, 119.870722\n', 'Bobonot, Dasol, Pangasinan');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_botolan`
--

CREATE TABLE `assignment_botolan` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_botolan`
--

INSERT INTO `assignment_botolan` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Botolan Substation', '15.300035, 120.010958', 'Danacbunga, Botolan, Zambales');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_cadiz`
--

CREATE TABLE `assignment_cadiz` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_cadiz`
--

INSERT INTO `assignment_cadiz` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Cadiz Substation', '10.934334, 123.285753', 'Tinampa-an, Cadiz, Negros Occidental');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_calacass`
--

CREATE TABLE `assignment_calacass` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_calacass`
--

INSERT INTO `assignment_calacass` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Calaca Substation', '13.933619, 120.790837', 'Quisumbing, Calaca, Batangas');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_calacatl`
--

CREATE TABLE `assignment_calacatl` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_calacatl`
--

INSERT INTO `assignment_calacatl` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Stockyard', '14.114472, 120.814000\n', 'Kaytitinga I, Alfonso, Cavite');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_calatrava`
--

CREATE TABLE `assignment_calatrava` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_calatrava`
--

INSERT INTO `assignment_calatrava` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Calatrava Substation', '10.551704, 123.461051', 'San Isidro, Calatrava, Negros Occidental');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_dasmarinas`
--

CREATE TABLE `assignment_dasmarinas` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_dasmarinas`
--

INSERT INTO `assignment_dasmarinas` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Dasmarinas Substation', '14.312282, 120.951995', 'San Agustin, Dasmarinas, Cavite');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_dumanjug`
--

CREATE TABLE `assignment_dumanjug` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_dumanjug`
--

INSERT INTO `assignment_dumanjug` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Dumanjug Substation', '10.03765, 123.44118', 'Cogon, Dumanjug, Cebu');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_ebmagalona`
--

CREATE TABLE `assignment_ebmagalona` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_ebmagalona`
--

INSERT INTO `assignment_ebmagalona` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'EB Magalona Substation', '10.888370924933941, 122.96922269480605', 'Enrique B. Magalona, Negros Occidental');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_headoffice`
--

CREATE TABLE `assignment_headoffice` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_headoffice`
--

INSERT INTO `assignment_headoffice` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Head Office', '14.6259946, 120.9996790\r\n', 'Sta. Mesa Heights, Quezon City');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_hermosa`
--

CREATE TABLE `assignment_hermosa` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_hermosa`
--

INSERT INTO `assignment_hermosa` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Hermosa Substation', '14.866103, 120.494839', 'Balsik, Hermosa, Bataan');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_ilijan`
--

CREATE TABLE `assignment_ilijan` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_ilijan`
--

INSERT INTO `assignment_ilijan` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Ilijan Substation', '13.622569, 121.078627', '');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_isabel`
--

CREATE TABLE `assignment_isabel` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_isabel`
--

INSERT INTO `assignment_isabel` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Isabel Substation', '10.918740933924578, 124.44837728868006', 'Libertad, Isabel, Leyte');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_maasin`
--

CREATE TABLE `assignment_maasin` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_maasin`
--

INSERT INTO `assignment_maasin` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Maasin Substation', '10.162476336185087, 124.77864212066845', 'Tam-is, Maasin, Leyte');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_muntinlupa`
--

CREATE TABLE `assignment_muntinlupa` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_muntinlupa`
--

INSERT INTO `assignment_muntinlupa` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Muntinlupa Substation', '14.445008, 121.052513', 'Buli, Muntinlupa');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_pantabangan`
--

CREATE TABLE `assignment_pantabangan` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_pantabangan`
--

INSERT INTO `assignment_pantabangan` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Pantabangan Substation', '15.811765, 121.108040', 'Fatima, Pantabangan, Nueva Ecija');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_pinamucan`
--

CREATE TABLE `assignment_pinamucan` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_pinamucan`
--

INSERT INTO `assignment_pinamucan` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Pinamucan Substation', '13.771194, 121.115944\r\n', 'Mahacot Kanluran, Batangas');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_quirino`
--

CREATE TABLE `assignment_quirino` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_quirino`
--

INSERT INTO `assignment_quirino` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Quirino Stockyard', '14.68306405447992, 121.02120381755093', 'Quirino Hwy, Quezon City');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_sanjose`
--

CREATE TABLE `assignment_sanjose` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_sanjose`
--

INSERT INTO `assignment_sanjose` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'San Jose Substation', '14.820873879155833, 121.04791143999043', 'Dulong Bayan, San Jose Del Monte, Bulacan');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_tabango`
--

CREATE TABLE `assignment_tabango` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_tabango`
--

INSERT INTO `assignment_tabango` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Tabango Substation', '10.162476336185087, 124.77864212066845', 'Tugas, Tabango, Leyte\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_tayabas`
--

CREATE TABLE `assignment_tayabas` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_tayabas`
--

INSERT INTO `assignment_tayabas` (`id`, `site`, `coordinates`, `location`) VALUES
(2, 'Tayabas Substation', '14.02269, 121.60621', 'Mateuna, Tayabas, Quezon');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_taytay`
--

CREATE TABLE `assignment_taytay` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_taytay`
--

INSERT INTO `assignment_taytay` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Taytay Substation', '14.572271, 121.139728', 'Dolores, Taytay, Rizal');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_terrasolar`
--

CREATE TABLE `assignment_terrasolar` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_terrasolar`
--

INSERT INTO `assignment_terrasolar` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'TOWER 1C', '15.307089, 121.022036', 'Puting Tubig, Nueva Ecija'),
(2, 'STR-1C', '15.307478, 121.022936', 'Puting Tubig, Nueva Ecija'),
(3, 'TOWER 1B', '15.307694, 121.020750', 'Puting Tubig, Nueva Ecija'),
(4, 'STR-1B', '15.308283, 121.021064', 'Puting Tubig, Nueva Ecija'),
(5, 'TOWER 1A', '15.308767, 121.017739\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(6, 'STR-1A', '15.309339, 121.018522\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(7, 'TOWER 1', '15.310525, 121.015361\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(8, 'STR-01', '15.311008, 121.016242\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(9, 'TOWER 2', '15.312142, 121.012853\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(10, 'STR-02', '15.312967, 121.013203\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(11, 'TOWER 3', '15.313753, 121.010356\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(12, 'TOWER 43', '15.314364, 121.010747\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(13, 'TOWER 4', '15.315556, 121.007239\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(14, 'TOWER 44', '15.316592, 121.007806\r\n', 'Maburak, Gapan City, Nueva Ecija'),
(15, 'TOWER 5', '15.318186, 121.006006\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(16, 'TOWER 45', '15.318528, 121.006650\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(17, 'TOWER 6', '15.320333, 121.003653\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(18, 'TOWER 46', '15.320661, 121.004208\r\n', 'Santa Cruz, Gapan City, Nueva Ecija\r\n'),
(19, 'TOWER 7', '15.323381, 121.003108\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(20, 'TOWER 47', '15.324208, 121.003547\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(21, 'TOWER 8', '15.324242, 121.000044\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(22, 'TOWER 48', '15.324850, 121.000586\r\n', 'Santa Cruz, Gapan City, Nueva Ecija'),
(23, 'TOWER 9', '15.324742, 120.998581\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(24, 'TOWER 49', '15.325328, 120.998603\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(25, 'TOWER 10', '15.325475, 120.994961\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(26, 'TOWER 50', '15.327097, 120.995281\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(28, 'TOWER 11', '15.327158, 120.993381\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(29, 'TOWER 51', '15.327814, 120.993536\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(30, 'TOWER 12', '15.329842, 120.990942\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(31, 'TOWER 52', '15.330547, 120.991092\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(32, 'TOWER 13', '15.331144, 120.987525\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(33, 'TOWER 53', '15.331753, 120.987619\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(34, 'TOWER 14', '15.332253, 120.984853\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(35, 'TOWER 54', '15.332933, 120.984642\r\n', 'Mangino, Gapan City, Nueva Ecija'),
(36, 'Stockyard', '15.325540693583635, 120.937097979817', 'San Leonardo, Nueva Ecija');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_tuguegarao`
--

CREATE TABLE `assignment_tuguegarao` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_tuguegarao`
--

INSERT INTO `assignment_tuguegarao` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Tuguegarao Substation', '17.623593, 121.769800', 'Larion Alto, Tuguegarao, Cagayan');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_tuy`
--

CREATE TABLE `assignment_tuy` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_tuy`
--

INSERT INTO `assignment_tuy` (`id`, `site`, `coordinates`, `location`) VALUES
(1, 'Tuy Substation', '14.01748, 120.75539', 'Bolbok, Tuy, Batangas');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `target_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `license_plate_no` varchar(255) NOT NULL,
  `speed_limit` float NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `speed` float NOT NULL,
  `direction` varchar(255) NOT NULL,
  `total_mileage` float NOT NULL,
  `status` varchar(255) NOT NULL,
  `position_time` datetime NOT NULL,
  `address` varchar(255) NOT NULL,
  `cut_address` varchar(255) NOT NULL,
  `gps_id` varchar(255) NOT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `conduction_sticker` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `specs` text NOT NULL,
  `physical_status` text NOT NULL,
  `assignment` text NOT NULL,
  `date_transferred` date NOT NULL,
  `days_contract` int(255) NOT NULL,
  `date_ended` date NOT NULL,
  `days_elapsed` int(255) NOT NULL,
  `remarks` text NOT NULL,
  `days_no_gps` int(255) DEFAULT NULL,
  `last_assignment` text NOT NULL,
  `last_days_contract` int(255) NOT NULL,
  `last_date_transferred` date NOT NULL,
  `last_date_ended` date NOT NULL,
  `last_days_elapsed` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `target_name`, `type`, `license_plate_no`, `speed_limit`, `latitude`, `longitude`, `speed`, `direction`, `total_mileage`, `status`, `position_time`, `address`, `cut_address`, `gps_id`, `equipment_type`, `conduction_sticker`, `tag`, `specs`, `physical_status`, `assignment`, `date_transferred`, `days_contract`, `date_ended`, `days_elapsed`, `remarks`, `days_no_gps`, `last_assignment`, `last_days_contract`, `last_date_transferred`, `last_date_ended`, `last_days_elapsed`) VALUES
(1, 'AK-48dafgwegwegwed', 'AK', '48500', 48500, 14.938688, 120.842118, 0, 'North', 34, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 17:19:14', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005', '', '', 'GPS Tracker', '', '', '', 'Operational', 'assignment_amlan', '2025-04-02', 28, '2025-04-30', 130, '', 1146, '', 0, '0000-00-00', '0000-00-00', 0),
(2, 'AK-49071', 'AK', '49071', 49071, 14.938665, 120.842133, 0, 'North', 8, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 16:45:57', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', 'Operational', 'assignment_bayombong', '2025-04-02', 145, '2025-08-25', 34, '', 1157, '', 0, '0000-00-00', '0000-00-00', 0),
(3, 'AK-31846', 'AK', '31846', 0, 14.939027, 120.842035, 0, 'West', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 14:36:52', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'Not Specified Yet', '', '', '', '', 'assignment_terrasolar', '0000-00-00', 0, '0000-00-00', 0, '', 429, '', 0, '0000-00-00', '0000-00-00', 0),
(4, 'AK-31851', 'AK', '31851', 0, 16.017313, 119.870227, 0, 'West', 7738, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-01 17:24:08', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'GPS Tracker', '', '', '', '', 'assignment_balingueo', '0000-00-00', 0, '0000-00-00', 0, '', 78, '', 0, '0000-00-00', '0000-00-00', 0),
(5, 'AK-31711', 'AK', '31711', 0, 14.939798, 120.841958, 0, 'North', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 15:26:33', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', 'assignment_barotac', '0000-00-00', 0, '0000-00-00', 0, '', 435, '', 0, '0000-00-00', '0000-00-00', 0),
(6, 'AK-21556', 'AK', '21556', 0, -1, -1, 0, 'North', 0, 'ACC OFF,Disarm,Door Close,Power cut', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', 'assignment_binan', '0000-00-00', 0, '0000-00-00', 0, '', 45755, '', 0, '0000-00-00', '0000-00-00', 0),
(7, 'AK-21559', 'AK', '21559', 0, 14.938635, 120.842483, 0, 'Southwest', 3, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-22 13:42:40', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', 'assignment_bolo', '0000-00-00', 0, '0000-00-00', 0, '', 150, '', 0, '0000-00-00', '0000-00-00', 0),
(8, 'AK-21563', 'AK', '21563', 0, 14.934912, 120.842967, 0, 'North-east', 13, 'ACC OFF,Disarm,Door Close,Power connected', '2024-11-28 09:29:55', 'Esguerra Street, Balatong A, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', 'assignment_botolan', '0000-00-00', 0, '0000-00-00', 0, '', 144, '', 0, '0000-00-00', '0000-00-00', 0),
(9, 'AK-21566', 'AK', '21566', 0, 14.938687, 120.842483, 0, 'West', 3, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-23 09:08:42', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', 'assignment_cadiz', '0000-00-00', 0, '0000-00-00', 0, '', 140, '', 0, '0000-00-00', '0000-00-00', 0),
(10, 'AK-21582', 'AK', '21582', 0, 14.683462, 121.020542, 0, 'West', 11, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 15:40:10', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', 'assignment_calacass', '0000-00-00', 0, '0000-00-00', 0, '', 135, '', 0, '0000-00-00', '0000-00-00', 0),
(11, 'AK-21625', 'AK', '21625', 0, 14.93832, 120.842517, 0, 'North-east', 4, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-30 11:19:29', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', 'assignment_calacatl', '0000-00-00', 0, '0000-00-00', 0, '', 142, '', 0, '0000-00-00', '0000-00-00', 0),
(12, 'AK-21649', 'AK', '21649', 0, 14.939063, 120.8423, 0, 'Southwest', 7, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-19 16:04:53', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', 'assignment_calatrava', '0000-00-00', 0, '0000-00-00', 0, '', 122, '', 0, '0000-00-00', '0000-00-00', 0),
(13, 'AK-21653', 'AK', '21653', 0, 14.939132, 120.842383, 0, 'Southwest', 7, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-21 13:51:28', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 151, '', 0, '0000-00-00', '0000-00-00', 0),
(14, 'AK-21660', 'AK', '21660', 0, 14.939713, 120.842333, 38.89, 'South', 6, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-20 13:43:46', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 152, '', 0, '0000-00-00', '0000-00-00', 0),
(15, 'AK-21661', 'AK', '21661', 0, 14.938767, 120.84235, 0, 'East', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-25 09:10:22', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 138, '', 0, '0000-00-00', '0000-00-00', 0),
(16, 'AK-21676', 'AK', '21676', 0, 14.938532, 120.842383, 11.11, 'West', 6, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-19 10:08:29', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 123, '', 0, '0000-00-00', '0000-00-00', 0),
(17, 'AK-21689', 'AK', '21689', 0, 14.938745, 120.84205, 0, 'Southwest', 9, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-24 09:10:33', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 148, '', 0, '0000-00-00', '0000-00-00', 0),
(18, 'AK-21705', 'AK', '21705', 0, 14.938968, 120.8424, 0, 'North', 3, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-21 09:39:42', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 121, '', 0, '0000-00-00', '0000-00-00', 0),
(19, 'AK-31795', 'AK', '31795', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45766, '', 0, '0000-00-00', '0000-00-00', 0),
(20, 'AK-31796', 'AK', '31796', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45766, '', 0, '0000-00-00', '0000-00-00', 0),
(21, 'AK-31797', 'AK', '31797', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45766, '', 0, '0000-00-00', '0000-00-00', 0),
(22, 'AK-31798', 'AK', '31798', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45766, '', 0, '0000-00-00', '0000-00-00', 0),
(23, 'AK-31799', 'AK', '31799', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45766, '', 0, '0000-00-00', '0000-00-00', 0),
(24, '*BT - NCB 4780', 'AK', 'NCB 4780', 0, 10.898075, 123.417128, 0, 'North', 14469, 'ACC ON,Disarm,Door Close,Power connected', '2023-05-27 10:05:58', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'GPS Device not Working', '', '', '', '', 'Bacolod', '0000-00-00', 0, '0000-00-00', 0, '', 695, '', 0, '0000-00-00', '0000-00-00', 0),
(25, '*MDT - KAK 9680', 'AK', 'KAK 9680', 0, 14.021448, 121.605112, 0, 'West', 14149, 'ACC ON,Disarm,Door Close,Power connected', '2024-11-18 22:32:30', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', 'Quezon, Calabarzon', '', 'GPS Device not Working', '', '', '', '', 'Tayabas Substation', '0000-00-00', 0, '0000-00-00', 0, '', 153, '', 0, '0000-00-00', '0000-00-00', 0),
(26, '*MDT - KAK 9682', 'AK', 'KAK 9682', 0, 13.62394, 121.07948, 0, 'Southwest', 66, 'ACC ON,Disarm,Door Close,Power connected', '2024-08-13 14:33:15', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 251, '', 0, '0000-00-00', '0000-00-00', 0),
(27, '*MDT - KAK 9686', 'AK', 'KAK 9686', 0, 13.960947, 121.608847, 0, 'West', 21755, 'ACC OFF,Disarm,Door Close,Power cut', '2024-07-03 13:29:02', 'Lucena Diversion Road, Masigasig, Gulang-Gulang, Lucena, 2nd District, Calabarzon, 4301, Pilipinas', '2nd District, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 291, '', 0, '0000-00-00', '0000-00-00', 0),
(28, '*S - NGX 9585', 'AK', 'NGX 9585', 0, 14.30844, 120.94452, 0, 'North', 17259, 'ACC OFF,Disarm,Door Close,Power cut', '2022-06-02 18:28:52', 'San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1053, '', 0, '0000-00-00', '0000-00-00', 0),
(29, '*S - NIB 3802', 'AK', 'NIB 3802', 0, 10.887462, 122.969012, 0, 'North', 482.915, 'ACC OFF,Disarm,Door Close,Power cut', '2023-01-25 07:24:48', 'Minisca, Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 817, '', 0, '0000-00-00', '0000-00-00', 0),
(30, '*S - NIE 4645', 'AK', 'NIE 4645', 0, 14.31173, 120.949417, 0, 'North', 744, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-10 14:38:20', 'Aguinaldo Highway, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 69, '', 0, '0000-00-00', '0000-00-00', 0),
(31, '*S - NIH 5592', 'AK', 'NIH 5592', 0, 14.682882, 121.020697, 0, 'North', 1949, 'ACC ON,Disarm,Door Close,Power connected', '2023-10-10 10:11:19', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 559, '', 0, '0000-00-00', '0000-00-00', 0),
(32, '*S - NII 6050', 'AK', 'NII 6050', 0, 10.89793, 123.417085, 0, 'East', 51191, 'ACC OFF,Disarm,Door Close,Power cut', '2023-11-10 09:19:35', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 528, '', 0, '0000-00-00', '0000-00-00', 0),
(33, '*SLD - KAE 6029', 'AK', 'KAE 6029', 0, 15.00817, 120.660987, 0, 'East', 4357, 'ACC OFF,Disarm,Door Close,Power cut', '2023-09-17 11:11:22', 'MacArthur Highway, Gugu, Bacolor, Pampanga, Central Luzon, 2001, Pilipinas', 'Pampanga, Central Luzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 582, '', 0, '0000-00-00', '0000-00-00', 0),
(34, 'BT - (HOWO 1330)', 'AK', '(HOWO 1330)', 9544070000, 16.016643, 119.868963, 0, 'South-east', 364.141, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:17', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(35, 'BT - (HOWO 1340)', 'AK', '(HOWO 1340)', 9544070000, 15.32428, 120.936212, 0, 'South', 3038, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:01', 'Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(36, 'BT - HAA 8566', 'AK', 'HAA 8566', 9958920000, 10.85909, 123.481552, 53.71, 'North-west', 72519, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-11 17:39:08', 'Bacolod North Road, Plaridel, Escalante, Negros Occidental, Negros Island Region, Pilipinas', 'Escalante, Negros Occidental', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 9, '', 0, '0000-00-00', '0000-00-00', 0),
(37, 'BT - JFF 832', 'AK', 'JFF 832', 9950690000, 14.015917, 120.728273, 12.96, 'East', 61809, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 11:02:50', 'Basa Street, Rillo, Tuyon-tuyon, Tuy, Batangas, Calabarzon, 4214, Pilipinas', 'Batangas, Calabarzon', '', 'Boomtruck', '', '', '', '', 'assignment_tuy', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(38, 'BT - KAE 4523', 'AK', 'KAE 4523', 9454020000, 14.820568, 121.04929, 0, 'North', 20314, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:53', 'Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', 'Bulacan, Central Luzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(39, 'BT - KAE 4547', 'AK', 'KAE 4547', 9454020000, 13.623477, 121.07959, 0, 'North', 28381, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:15', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(40, 'BT - KAE 4548', 'AK', 'KAE 4548', 9454020000, 10.918958, 124.448167, 0, 'South', 39431, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:52', 'Merida-Ormoc Road, San Roque, Libertad, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', 'Leyte, Eastern Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(41, 'BT - KAE 4549', 'AK', 'KAE 4549', 9544070000, 15.81249, 121.108475, 0, 'Southwest', 31797, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:19', 'San Juan-Fatima Road, Fatima, Pantabangan, Nueva Ecija, Central Luzon, 3124, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(42, 'BT - KAJ 8866', 'AK', 'KAJ 8866', 9260550000, 14.114242, 120.814513, 0, 'South-east', 83191, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 11:41:38', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(43, 'BT - KAJ 8867', 'AK', 'KAJ 8867', 9770070000, 14.313757, 120.952363, 0, 'North', 643028, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:17:38', 'Ramona S. Tirona Avenue, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(44, 'BT - KBE 7023', 'AK', 'KBE 7023', 9544070000, 16.017412, 119.867968, 0, 'North', 3093, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-17 02:01:58', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(45, 'BT - MAF 5392', 'AK', 'MAF 5392', 9958920000, 10.80114, 122.97688, 0, 'North-east', 34091, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-18 09:07:33', 'Rizal Street, Barangay II, Silay, Negros Occidental, Negros Island Region, 6116, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 34, '', 0, '0000-00-00', '0000-00-00', 0),
(46, 'BT - MAH 2674', 'AK', 'MAH 2674', 9770070000, 14.227835, 120.932585, 0, 'North-west', 86044, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 10:49:57', 'Batas, Silang, Cavite, Calabarzon, 4118, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(47, 'BT - MAJ 3099', 'AK', 'MAJ 3099', 9770070000, 10.038327, 123.4396, 0, 'North-west', 31815, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 12:38:11', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', 'Cebu, Central Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(48, 'BT - MAK 2637', 'AK', 'MAK 2637', 9950140000, 14.11436, 120.814495, 0, 'North', 19712, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-01 14:35:19', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 201, '', 0, '0000-00-00', '0000-00-00', 0),
(49, 'BT - NCB 4780', 'AK', 'NCB 4780', 9770070000, 9.862098, 123.577127, 48.28, 'North-east', 29957, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-11 01:57:23', 'Natalio Bacalso Avenue, Tulic, Balisong, Cebu, Central Visayas, 6021, Pilipinas', 'Cebu, Central Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 69, '', 0, '0000-00-00', '0000-00-00', 0),
(50, 'BT - NFP 7479', 'AK', 'NFP 7479', 9458280000, 10.978172, 124.631087, 0, 'Southwest', 37534, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:35', 'Ipil, Ormoc, Leyte, Eastern Visayas, 6541, Pilipinas', 'Leyte, Eastern Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(51, 'BT - NGU 4047', 'AK', 'NGU 4047', 9454020000, 14.686648, 121.024493, 14.82, 'Southwest', 53547, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 16:30:58', '487, Quirino Highway, Villa Florencia Subdivision, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 10, '', 0, '0000-00-00', '0000-00-00', 0),
(52, 'BT - RMA 516', 'AK', 'RMA 516', 9770070000, 10.552843, 123.460063, 0, 'North', 28287, 'ACC ON,Disarm,Door Close,Power connected', '2024-12-23 14:46:04', 'Bacolod North Road, San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', 'Calatrava, Negros Occidental', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 118, '', 0, '0000-00-00', '0000-00-00', 0),
(53, 'BT - RNA 386', 'AK', 'RNA 386', 9260550000, 15.324217, 120.936245, 0, 'North', 48100, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:17:48', 'Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Boomtruck', '', '', '', '', 'assignment_terrasolar', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(54, 'BT - YLK 710', 'AK', 'YLK 710', 9770070000, 14.683682, 121.020477, 0, 'North', 8833, 'ACC OFF,Disarm,Door Close,Power cut', '2025-03-19 09:31:39', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 33, '', 0, '0000-00-00', '0000-00-00', 0),
(55, 'CMT - 1', 'AK', '1', 380089, 16.017475, 119.870618, 0, 'East', 2192, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 16:12:48', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(56, 'CMT - 2', 'AK', '2', 380090, 16.017407, 119.87055, 0, 'East', 1784, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-11 00:49:14', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(57, 'CMT - 3', 'AK', '3', 380091, 16.017103, 119.87036, 0, 'West', 18159.1, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 13:14:51', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(58, 'CMT - 4', 'AK', '4', 3890090, 16.017013, 119.870417, 0, 'North', 60, 'ACC ON,Disarm,Door Close,Power connected', '2024-06-20 16:41:20', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 294, '', 0, '0000-00-00', '0000-00-00', 0),
(59, 'CMT - 5', 'AK', '5', 3890090, 16.016917, 119.868235, 0, 'South-east', 324, 'ACC OFF,Disarm,Door Close,Power cut', '2024-06-20 09:50:59', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 294, '', 0, '0000-00-00', '0000-00-00', 0),
(60, 'CMT - 6', 'AK', '6', 380094, 16.017075, 119.870242, 0, 'South-east', 16947, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 11:55:48', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(61, 'CMT - 7', 'AK', '7', 0, 13.770407, 121.11618, 0, 'North-east', 361, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:48:19', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(62, 'CMT - KBE 7025', 'AK', 'KBE 7025', 0, 16.017062, 119.870302, 0, 'North', 5290, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:21:29', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(63, 'CRN - KATO 25T', 'AK', 'KATO 25T', 9454320000, 15.324383, 120.936255, 0, 'South', 837, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-20 15:36:18', 'Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(64, 'CRN - KATO 55T', 'AK', 'KATO 55T', 9950690000, 14.021563, 121.60567, 0, 'North', 1668, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 09:02:28', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', 'Quezon, Calabarzon', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(65, 'CRN - PQI 476', 'AK', 'PQI 476', 9770070000, 10.934765, 123.28409, 0, 'North', 388, 'ACC OFF,Disarm,Door Close,Power cut', '2024-09-14 14:52:29', 'Daga, Tinampa-an, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 218, '', 0, '0000-00-00', '0000-00-00', 0),
(66, 'CRN - UQA 367', 'AK', 'UQA 367', 9165260000, 14.683878, 121.020193, 0, 'North-west', 29, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-03 09:47:59', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 18, '', 0, '0000-00-00', '0000-00-00', 0),
(67, 'CV - UBA 845', 'AK', 'UBA 845', 0, 14.683462, 121.020367, 0, 'North', 34, 'ACC ON,Disarm,Door Close,Power connected', '2023-12-06 10:03:47', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Closed Van', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 502, '', 0, '0000-00-00', '0000-00-00', 0),
(68, 'DT - AAM 5075', 'AK', 'AAM 5075', 0, 14.820247, 121.04901, 0, 'North', 2275, 'ACC ON,Disarm,Door Close,Power connected', '2023-09-12 09:01:53', 'Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', 'Bulacan, Central Luzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 587, '', 0, '0000-00-00', '0000-00-00', 0),
(69, 'DT - KAJ 3620', 'AK', 'KAJ 3620', 9770070000, 10.038812, 123.442338, 0, 'East', 5928, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:15:06', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', 'Cebu, Central Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(70, 'DT - KAJ 3626', 'AK', 'KAJ 3626', 0, 10.897837, 123.416633, 0, 'South-east', 10122, 'ACC OFF,Disarm,Door Close,Power cut', '2024-09-13 13:20:16', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 220, '', 0, '0000-00-00', '0000-00-00', 0),
(71, 'DT - KAJ 3627', 'AK', 'KAJ 3627', 9770070000, 11.323742, 124.34319, 0, 'North', 14436, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 08:52:27', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', 'Leyte, Eastern Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(72, 'DT - KAJ 3739', 'AK', 'KAJ 3739', 9369160000, 13.770487, 121.116265, 9.26, 'West', 22692, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-20 15:26:41', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(73, 'DT - KAS 2294', 'AK', 'KAS 2294', 9454020000, 13.77247, 121.113453, 0, 'North-west', 10574.5, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:11', 'Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(74, 'DT - KAS 2295', 'AK', 'KAS 2295', 9660040000, 16.016933, 119.867967, 0, 'East', 17306, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:16:16', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(75, 'DT - KAS 2296', 'AK', 'KAS 2296', 9660040000, 13.772843, 121.113258, 0, 'North', 432, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:54', 'Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(76, 'DT - NFQ 1690', 'AK', 'NFQ 1690', 0, 16.016987, 119.86801, 0, 'North', 36683, 'ACC ON,Disarm,Door Close,Power connected', '2024-11-15 16:01:55', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 156, '', 0, '0000-00-00', '0000-00-00', 0),
(77, 'DT - RNL 845', 'AK', 'RNL 845', 9958920000, 14.221308, 120.931718, 0, 'North', 1930, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 11:12:59', 'Tamacan, Amadeo, Cavite, Calabarzon, 4119, Pilipinas', 'Cavite, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 11, '', 0, '0000-00-00', '0000-00-00', 0),
(78, 'DT - WVQ 508', 'AK', 'WVQ 508', 9369160000, 10.919853, 124.446792, 0, 'East', 5887, 'ACC ON,Disarm,Door Close,Power cut', '2025-03-26 13:00:56', 'Merida-Ormoc Road, San Roque, Libertad, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', 'Leyte, Eastern Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 26, '', 0, '0000-00-00', '0000-00-00', 0),
(79, 'G - 1', 'AK', '1', 0, 9.798233, 123.357422, 0, 'North', 2343, 'ACC ON,Disarm,Door Close,Power connected', '2023-08-15 11:30:28', 'Madridejos, Cebu, Central Visayas, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 604, '', 0, '0000-00-00', '0000-00-00', 0),
(80, 'G -2', 'AK', '2', 0, 10.888178, 122.969223, 0, 'North', 16.4144, 'ACC OFF,Disarm,Door Close,Power cut', '2023-07-19 12:29:12', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 642, '', 0, '0000-00-00', '0000-00-00', 0),
(81, 'H2O - JAD 9830', 'AK', 'JAD 9830', 9770070000, 14.683443, 121.020618, 0, 'North', 5527, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-03 13:45:40', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Water Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 48, '', 0, '0000-00-00', '0000-00-00', 0),
(82, 'H2O - MAH8320', 'AK', 'MAH8320', 0, 10.89803, 123.417147, 0, 'East', 1145, 'ACC OFF,Disarm,Door Close,Power cut', '2023-03-23 14:31:11', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 740, '', 0, '0000-00-00', '0000-00-00', 0),
(83, 'MBH - 287', 'AK', '287', 9770070000, 10.551077, 123.460815, 0, 'North-west', 57.3278, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-16 14:03:09', 'San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', 'Calatrava, Negros Occidental', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(84, 'MBH - 333', 'AK', '333', 0, 10.037163, 123.443248, 0, 'North', 405, 'ACC ON,Disarm,Door Close,Power connected', '2023-02-22 17:42:19', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', 'Cebu, Central Visayas', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 788, '', 0, '0000-00-00', '0000-00-00', 0),
(85, 'MBH - CNKA1679', 'AK', 'CNKA1679', 0, 13.772983, 121.115535, 0, 'South-east', 174, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:16', 'Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(86, 'MBH XCMG E-122', 'AK', '122', 0, 14.331513, 121.075067, 0, 'North-east', 7, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-02 11:10:10', 'Tubigan, Biñan, Laguna, Calabarzon, 4024, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(87, 'MBH XCMG E-123', 'AK', '123', 0, 16.472768, 121.111642, 0, 'North-west', 8, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:09:43', 'Water Tank, Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(88, 'MDT - AAV 6960', 'AK', 'AAV 6960', 0, 11.322898, 124.342302, 0, 'North', 12293, 'ACC ON,Disarm,Door Close,Power connected', '2024-04-12 14:44:16', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', 'Leyte, Eastern Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 373, '', 0, '0000-00-00', '0000-00-00', 0),
(89, 'MDT - JAE 1028', 'AK', 'JAE 1028', 9770070000, 11.323712, 124.343838, 0, 'North', 12460, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-16 14:04:05', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', 'Leyte, Eastern Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(90, 'MDT - KAJ 9696', 'AK', 'KAJ 9696', 9770070000, 10.919848, 124.446655, 0, 'North', 34199, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-23 12:40:40', 'Merida-Ormoc Road, San Roque, Libertad, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', 'Leyte, Eastern Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 180, '', 0, '0000-00-00', '0000-00-00', 0),
(91, 'MDT - KAK 9680', 'AK', 'KAK 9680', 9672140000, 14.021553, 121.605433, 0, 'South-east', 3550, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:31', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', 'Quezon, Calabarzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(92, 'MDT - KAK 9681', 'AK', 'KAK 9681', 9454320000, 10.947897, 123.337795, 0, 'North', 27957, 'ACC OFF,Disarm,Door Close,Power connected', '2024-08-15 13:37:31', 'Banquerohan, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 248, '', 0, '0000-00-00', '0000-00-00', 0),
(93, 'MDT - KAK 9682', 'AK', 'KAK 9682', 0, 13.623805, 121.080163, 0, 'North-west', 3755, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:19:11', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(94, 'MDT - KAK 9684', 'AK', 'KAK 9684', 9950690000, 14.821845, 121.046867, 0, 'North', 15125, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:13:00', 'Talisay, Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(95, 'MDT - KAK 9686', 'AK', 'KAK 9686', 9165260000, 14.313668, 120.952388, 0, 'North', 2693, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:22', 'Ramona S. Tirona Avenue, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(96, 'MDT - KAK 9688', 'AK', 'KAK 9688', 9770070000, 10.241722, 124.772555, 61.12, 'North-east', 16806, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:16:04', 'Matalom-Macrohon Road, Caridad, Sante Fe, Matalom, 5th District, Leyte, Eastern Visayas, 6526, Pilipinas', 'Leyte, Eastern Visayas', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(97, 'MDT - KAK 9694', 'AK', 'KAK 9694', 9958920000, 9.368237, 123.269315, 0, 'Southwest', 28225, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-14 11:24:56', 'Dumaguete North Road, Campaclan, Ajong, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 7, '', 0, '0000-00-00', '0000-00-00', 0),
(98, 'MDT - KAK 9695', 'AK', 'KAK 9695', 0, 14.331118, 121.07474, 0, 'Southwest', 21798.1, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:18:44', 'Shell, General Malvar Street, San Vicente, Biñan, Laguna, Calabarzon, 4024, Pilipinas', 'Laguna, Calabarzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(99, 'MDT - KAK 9697', 'AK', 'KAK 9697', 9950690000, 16.473227, 121.111255, 0, 'North-west', 12613, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:13:25', 'Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', 'Nueva Vizcaya, Cagayan Valley', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(100, 'MDT - MAK 2829', 'AK', 'MAK 2829', 9369160000, 10.35855, 123.91859, 0, 'South', 3403, 'ACC ON,Disarm,Door Close,Power connected', '2022-10-09 15:41:11', 'NPC Road, Nasipit, Cebu City, Central Visayas, 6014, Pilipinas', 'Cebu City, Central Visayas', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 924, '', 0, '0000-00-00', '0000-00-00', 0),
(101, 'MDT - NEC 9786', 'AK', 'NEC 9786', 9566890000, 14.019837, 120.753585, 0, 'East', 14268.6, 'ACC OFF,Disarm,Door Close,Power cut', '2024-05-09 18:41:40', 'Bolbok, Tuy, Batangas, Calabarzon, 4214, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 346, '', 0, '0000-00-00', '0000-00-00', 0),
(102, 'MDT - WIV 503', 'AK', 'WIV 503', 9770070000, 9.35677, 123.27607, 0, 'North', 50974, 'ACC OFF,Disarm,Door Close,Power connected', '2025-03-04 15:36:40', 'Calingacion Street, Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 47, '', 0, '0000-00-00', '0000-00-00', 0),
(103, 'MDT - WQC 530', 'AK', 'WQC 530', 0, 14.68366, 121.020358, 0, 'North', 1794, 'ACC ON,Disarm,Door Close,Power connected', '2024-09-15 09:18:37', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 218, '', 0, '0000-00-00', '0000-00-00', 0),
(104, 'MDT KBE7027', 'AK', 'N/A', 0, 10.552953, 123.4602, 0, 'South-east', 34.0956, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:09:20', 'Bacolod North Road, San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(105, 'MRR - TG500', 'AK', 'TG500', 9770070000, 10.162262, 124.778303, 0, 'North', 494, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 09:08:09', 'Maasin – Macrohon – Sogod Road, Lundag, Tam is, Southern Leyte, Eastern Visayas, 6600, Pilipinas', 'Southern Leyte, Eastern Visayas', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 11, '', 0, '0000-00-00', '0000-00-00', 0),
(106, 'P - KAN 1247', 'AK', 'KAN 1247', 9566890000, 15.313167, 120.930478, 0, 'West', 717, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:02', 'Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3106, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Pumpcrete', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(107, 'RR - 1 S143J', 'AK', '1 S143J', 9770070000, 10.55313, 123.459883, 0, 'North', 1697, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-18 16:29:52', 'Bacolod North Road, San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', 'Calatrava, Negros Occidental', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 184, '', 0, '0000-00-00', '0000-00-00', 0),
(108, 'RR - 3 XS143J', 'AK', '3 XS143J', 9958970000, 10.888267, 122.969282, 0, 'North', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-27 19:59:52', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 144, '', 0, '0000-00-00', '0000-00-00', 0),
(109, 'RR - KV4-II', 'AK', 'KV4', 9369170000, 10.889015, 122.96976, 0, 'North', 47, 'ACC OFF,Disarm,Door Close,Power cut', '2022-10-09 18:15:37', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, Pilipinas', 'Enrique B. Magalona, Negros Occidental', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 924, '', 0, '0000-00-00', '0000-00-00', 0),
(110, 'RR - S143J', 'AK', 'S143J', 9454020000, 13.771158, 121.115678, 0, 'South-east', 482, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-26 02:53:09', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 54, '', 0, '0000-00-00', '0000-00-00', 0),
(111, 'S - AAP 1316 (P-UP)', 'AK', 'AAP 1316 (P', 0, 14.11477, 120.81457, 0, 'North', 23466, 'ACC OFF,Disarm,Door Close,Power cut', '2024-07-04 17:27:02', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 290, '', 0, '0000-00-00', '0000-00-00', 0),
(112, 'S - AAW 8901', 'AK', 'AAW 8901', 0, 7.910752, 123.811493, 0, 'North', 19851, 'ACC OFF,Disarm,Door Close,Power cut', '2024-05-07 10:54:16', 'Lala-Salvador-Tubod Road, Narra, Salvador, Lanao del Norte, Northern Mindanao, Pilipinas', 'Salvador, Lanao del Norte', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 349, '', 0, '0000-00-00', '0000-00-00', 0),
(113, 'S - FFK 850', 'AK', 'FFK 850', 0, 10.56975, 123.473528, 0, 'West', 5371, 'ACC OFF,Disarm,Door Close,Power cut', '2022-10-09 17:07:09', 'Bacolod North Road, Patun-an, Calatrava, Negros Occidental, Negros Island Region, 6126, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 924, '', 0, '0000-00-00', '0000-00-00', 0),
(114, 'S - GAS 4199 (INOVA)', 'AK', 'GAS 4199 (INOVA)', 9660040000, 14.82031, 121.049188, 0, 'North', 6006.27, 'ACC ON,Disarm,Door Close,Power cut', '2025-04-21 13:19:06', 'Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', 'Bulacan, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(115, 'S - GJS 937', 'AK', 'GJS 937', 0, 14.938773, 120.842242, 0, 'East', 9, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 16:26:39', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1157, '', 0, '0000-00-00', '0000-00-00', 0),
(116, 'S - LGD 853', 'AK', 'LGD 853', 0, 14.114617, 120.814042, 0, 'North', 74524, 'ACC OFF,Disarm,Door Close,Power connected', '2024-11-18 07:16:46', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 154, '', 0, '0000-00-00', '0000-00-00', 0),
(117, 'S - NAX 3041', 'AK', 'NAX 3041', 0, 7.924372, 123.771172, 0, 'West', 32258, 'ACC OFF,Disarm,Door Close,Power connected', '2023-07-10 15:25:22', 'Durian, Maranding, Lanao del Norte, Northern Mindanao, 9211, Pilipinas', 'Lanao del Norte, Northern Mindanao', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 650, '', 0, '0000-00-00', '0000-00-00', 0),
(118, 'S - NAZ 3423 (FX)', 'AK', 'NAZ 3423 (FX)', 9454320000, 10.945495, 123.316393, 51.86, 'South', 112704, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-18 07:47:40', 'Cabahug Street, Cadiz Heights 1, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 3, '', 0, '0000-00-00', '0000-00-00', 0),
(119, 'S - NBF 6971 (P-UP)', 'AK', 'NBF 6971 (P', 9950690000, 16.061978, 119.870812, 0, 'North', 138369, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-19 13:19:04', 'Burgos, Pangasinan, Ilocos Region, Pilipinas', 'Burgos, Pangasinan', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 2, '', 0, '0000-00-00', '0000-00-00', 0),
(120, 'S - NBO 2732 (FX)', 'AK', 'NBO 2732 (FX)', 9369160000, 10.357817, 123.91911, 0, 'North', 50338, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-14 07:07:22', 'NPC Road, Nasipit, Cebu City, Central Visayas, 6014, Pilipinas', 'Cebu City, Central Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 7, '', 0, '0000-00-00', '0000-00-00', 0),
(121, 'S - NBO 4948 (P-UP)', 'AK', 'NBO 4948 (P', 9770070000, 15.603408, 119.959038, 0, 'North-east', 156792, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:12:45', 'Pinagrealan, Zambales, Central Luzon, 2212, Pilipinas', 'Zambales, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(122, 'S - NDJ 2285 (INOVA)', 'AK', 'NDJ 2285 (INOVA)', 9667730000, 14.019647, 120.752815, 0, 'North-east', 12907, 'ACC ON,Disarm,Door Close,Power cut', '2025-04-21 13:19:01', 'Bolbok, Tuy, Batangas, Calabarzon, 4214, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(123, 'S - NDP 2213 (P-UP)', 'AK', 'NDP 2213 (P', 9454320000, 9.354533, 123.23449, 0, 'North', 113388, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:25', 'Balugo, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(124, 'S - NER 5132 (P-UP)', 'AK', 'NER 5132 (P', 9770070000, 9.333217, 123.294325, 0, 'North-east', 671767, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-04 09:22:03', 'Shell Select, Dumaguete North Road, Agan-an, Sibulan, Negros Oriental, Negros Island Region, 6200, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 48, '', 0, '0000-00-00', '0000-00-00', 0),
(125, 'S - NER 5149', 'AK', 'NER 5149', 0, 11.307853, 124.36824, 0, 'South-east', 80691, 'ACC ON,Disarm,Door Close,Power connected', '2023-08-13 15:30:36', 'Poblacion, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', 'Leyte, Eastern Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 616, '', 0, '0000-00-00', '0000-00-00', 0),
(126, 'S - NER 6695 (FX)', 'AK', 'NER 6695 (FX)', 9260550000, 14.08424, 120.88245, 16.67, 'East', 139975, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:12:27', 'Tagaytay-Nasugbu Road, Luksuhin Ilaya, Sikat, Laurel, Batangas, Calabarzon, 4123, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(127, 'S - NER 6743 (FX)', 'AK', 'NER 6743 (FX)', 9958920000, 9.728293, 122.924662, 0, 'Southwest', 122276, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 12:20:27', 'NGCP-TransCo, Kabankalan - Bais Road, Poblacion, Mabinay, Negros Oriental, Negros Island Region, 6207, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(128, 'S - NER 6825 (FX)', 'AK', 'NER 6825 (FX)', 9958920000, 14.308995, 120.944568, 0, 'North-east', 106373, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-20 18:54:08', 'Acotina Street, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(129, 'S - NER 9197 (FX)', 'AK', 'NER 9197 (FX)', 9369160000, 10.143123, 124.791408, 42.6, 'South-east', 79429, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-21 13:16:15', 'Maasin – Macrohon – Sogod Road, Lundag, Tam is, Southern Leyte, Eastern Visayas, 6600, Pilipinas', 'Southern Leyte, Eastern Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0);
INSERT INTO `devices` (`id`, `target_name`, `type`, `license_plate_no`, `speed_limit`, `latitude`, `longitude`, `speed`, `direction`, `total_mileage`, `status`, `position_time`, `address`, `cut_address`, `gps_id`, `equipment_type`, `conduction_sticker`, `tag`, `specs`, `physical_status`, `assignment`, `date_transferred`, `days_contract`, `date_ended`, `days_elapsed`, `remarks`, `days_no_gps`, `last_assignment`, `last_days_contract`, `last_date_transferred`, `last_date_ended`, `last_days_elapsed`) VALUES
(130, 'S - NFJ 2104 (P-UP)', 'AK', 'NFJ 2104 (P', 9770070000, 15.820602, 119.920243, 24.08, 'South-east', 162439, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 12:54:46', 'Maya, Infanta, Pangasinan, Ilocos Region, 2412, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(131, 'S - NFK 7361 (FX)', 'AK', 'NFK 7361 (FX)', 9950690000, 14.089328, 120.828288, 64.82, 'South-east', 135464, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:16', 'Tagaytay-Nasugbu Road, Phirst Park Homes Batulao, Kaylaway, Nasugbu, Batangas, Calabarzon, 4231, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(132, 'S - NFK 9367 (FX)', 'AK', 'NFK 9367 (FX)', 9950690000, 14.444688, 121.050502, 11.11, 'South', 85544, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:55', '79, M. L. Quezon Street, Mullet Compound, Buli, Muntinlupa District 2, Muntinlupa, Southern Manila District, Metro Manila, 1771, Pilipinas', 'Southern Manila District, Metro Manila', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(133, 'S - NFL 2242 (FX)', 'AK', 'NFL 2242 (FX)', 9770070000, 10.925007, 124.432935, 0, 'North-west', 90001, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:57', 'Marvel, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', 'Leyte, Eastern Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(134, 'S - NFL 9736', 'AK', 'NFL 9736', 9950140000, 10.923435, 124.43644, 0, 'North', 26.5734, 'ACC OFF,Disarm,Door Close,Power connected', '2023-07-29 23:48:40', 'M. L. Quezon Street, Marvel, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', 'Leyte, Eastern Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 631, '', 0, '0000-00-00', '0000-00-00', 0),
(135, 'S - NGX 1474 (P-UP)', 'AK', 'NGX 1474 (P', 9270560000, 13.622307, 121.082775, 48.15, 'West', 143063, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:20', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(136, 'S - NGX 9585 (P-UP)', 'AK', 'NGX 9585 (P', 9950690000, 14.281698, 120.946367, 0, 'North-west', 121371, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 12:39:45', 'Langkaan Road, Langkaan 1, Langkaan, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(137, 'S - NIB 3802 (DMAX)', 'AK', 'NIB 3802 (DMAX)', 9958920000, 10.666472, 122.949067, 0, 'South', 26748.5, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:58', 'Lacson Street, San Sebastian, Barangay 37, Bacolod-2, Bacolod, Negros Island Region, 6100, Pilipinas', 'Bacolod, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(138, 'S - NIE 4645 (INOVA)', 'AK', 'NIE 4645 (INOVA)', 9950690000, 14.309093, 120.944513, 0, 'North', 3416, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:20:02', 'Acotina Street, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(139, 'S - NIE 7803 (INOVA)', 'AK', 'NIE 7803 (INOVA)', 9950690000, 14.834587, 120.276663, 0, 'Southwest', 60.4446, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:19:27', 'Olongapo-Bugallon Road, Upper Kalaklan, Kalaklan, Olongapo, Central Luzon, 2200, Pilipinas', 'Olongapo, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(140, 'S - NIE 7804 (INOVA)', 'AK', 'NIE 7804 (INOVA)', 9154320000, 14.869833, 120.463562, 0, 'North', 1330.46, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:19:00', 'General Luna, Santo Niño, Dinalupihan, Bataan, Central Luzon, 2110, Pilipinas', 'Bataan, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(141, 'S - NIE 8987 (INOVA)', 'AK', 'NIE 8987 (INOVA)', 9567590000, 14.021743, 121.604175, 0, 'West', 86357, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-21 13:16:19', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', 'Quezon, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(142, 'S - NIE 8988 (INOVA)', 'AK', 'NIE 8988 (INOVA)', 9567550000, 17.624742, 121.76838, 0, 'South-east', 79760, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:15:07', 'Tuguegarao, Cagayan, Cagayan Valley, 3500, Pilipinas', 'Cagayan, Cagayan Valley', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(143, 'S - NIE 8989 (INOVA)', 'AK', 'NIE 8989 (INOVA)', 9369160000, 9.356703, 123.275908, 0, 'North-west', 141914, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:14', 'Error in geocoding', 'City/State not found', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(144, 'S - NIG 9368 (LTACE)', 'AK', 'NIG 9368 (LTACE)', 9566890000, 16.006345, 120.403007, 0, 'North', 39614, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:17', 'Old National Road, Poblacion Norte, Nansangaan Proper, Santa Barbara, Pangasinan, Ilocos Region, 2419, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(145, 'S - NIH 2946 (LTACE)', 'AK', 'NIH 2946 (LTACE)', 9566890000, 14.009267, 120.728573, 0, 'South', 77885.7, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-08 14:00:25', 'Error in geocoding', 'City/State not found', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 71, '', 0, '0000-00-00', '0000-00-00', 0),
(146, 'S - NIH 5592 (LTACE)', 'AK', 'NIH 5592 (LTACE)', 9566890000, 14.331807, 121.080502, 0, 'Southwest', 30716.2, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:19:47', 'General Malvar Street, San Vicente, Biñan, Laguna, Calabarzon, 4024, Pilipinas', 'Laguna, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(147, 'S - NIH 9850 (LTACE)', 'AK', 'NIH 9850 (LTACE)', 995, 15.812632, 121.108167, 0, 'South', 71816.9, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:09', 'San Juan-Fatima Road, Fatima, Pantabangan, Nueva Ecija, Central Luzon, 3124, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(148, 'S - NII 6049 (P-UP)', 'AK', 'NII 6049 (P', 9958920000, 10.678982, 122.951923, 0, 'South-east', 143020, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:20', 'Diotay\'s Eatery, Gatuslao Street, Cereza South, Barangay 4, Bacolod-1, Bacolod, Negros Island Region, 6100, Pilipinas', 'Bacolod, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(149, 'S - NII 6050 (P-UP)', 'AK', 'NII 6050 (P', 9770070000, 15.086993, 120.073625, 0, 'North', 65362, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:22:12', 'Zambales, Central Luzon, 2204, Pilipinas', 'Zambales, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(150, 'S - NII 6801 (LTACE)', 'AK', 'NII 6801 (LTACE)', 9542590000, 14.68348, 121.020622, 0, 'North-east', 1555, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:28', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 23, '', 0, '0000-00-00', '0000-00-00', 0),
(151, 'S - NIJ 3629 (INOVA)', 'AK', 'NIJ 3629 (INOVA)', 9567590000, 14.6831, 121.021048, 0, 'North', 49233, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:31', 'Regasco, Quirino Highway, Kampo Dos, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(152, 'S - NIJ 5997 (HIACE)', 'AK', 'NIJ 5997 (HIACE)', 9454020000, 14.619145, 121.00282, 11.11, 'North', 48128.2, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 07:49:23', '4, Apo Street, Santa Teresita, Santa Mesa Heights, 1st District, Quezon City, Eastern Manila District, Metro Manila, 1114, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(153, 'S - NIL 1776 (FX)', 'AK', 'NIL 1776 (FX)', 9454020000, 11.220428, 124.552933, 0, 'North', 81815, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-27 00:35:12', 'Santo Domingo, Kananga, 4th District, Leyte, Eastern Visayas, 6531, Pilipinas', 'Leyte, Eastern Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 53, '', 0, '0000-00-00', '0000-00-00', 0),
(154, 'S - NIL 1777 (FX)', 'AK', 'NIL 1777 (FX)', 9950140000, 16.143675, 119.974943, 0, 'North-west', 95132.2, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:17', 'Santo Rosario Highway, Palamis, Alaminos, Pangasinan, Ilocos Region, 2404, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(155, 'S - NIL 1778 (FX)', 'AK', 'NIL 1778 (FX)', 9454020000, 16.47299, 121.111678, 0, 'North-east', 81166, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:46', 'Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', 'Nueva Vizcaya, Cagayan Valley', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(156, 'S - NIM 3732 (FX)', 'AK', 'NIM 3732 (FX)', 926, 15.31914, 120.93788, 18.63, 'East', 167.077, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-29 08:19:47', 'Dr. Gloria D. Lacson Foundation Colleges Inc., Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 23, '', 0, '0000-00-00', '0000-00-00', 0),
(157, 'S - NKA 3978 (FX)', 'AK', 'NKA 3978 (FX)', 9562530000, 14.308305, 120.9451, 31.58, 'North-east', 43880.2, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:50', 'Highlands Avenue, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(158, 'S - NKA 3980 (FX)', 'AK', 'NKA 3980 (FX)', 9562530000, 16.589038, 121.152278, 0, 'West', 44675.9, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:21:45', 'Nueva Vizcaya, Cagayan Valley, Pilipinas', 'City/State not found', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(159, 'S - NKE 7796 (FX)', 'AK', 'NKE 7796 (FX)', 9958920000, 14.683435, 121.020683, 0, 'North-west', 11404, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-30 13:55:42', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 111, '', 0, '0000-00-00', '0000-00-00', 0),
(160, 'S - NKG 5811 (P-UP)', 'AK', 'NKG 5811 (P', 9667730000, 15.322417, 120.938185, 0, 'East', 10952, 'ACC OFF,Disarm,Door Close,Power cut', '2025-03-22 01:53:14', 'Citi Hardware, Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 30, '', 0, '0000-00-00', '0000-00-00', 0),
(161, 'S - NKG 5934 (P-UP)', 'AK', 'NKG 5934 (P', 9542590000, 13.761547, 121.077917, 0, 'North', 12579, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-16 22:26:34', 'Gulod Itaas, Dalig, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(162, 'S - NKJ 8933 (P-UP)', 'AK', 'NKJ 8933 (P', 9544070000, 13.771102, 121.115965, 0, 'North', 24706, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:19:34', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(163, 'S - NKJ 9173 (P-UP)', 'AK', 'NKJ 9173 (P', 9958920000, 15.332268, 120.958792, 0, 'Southwest', 30810.4, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:32', 'Pambuan, Gapan, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(164, 'S - NKJ 9478 (P-UP)', 'AK', 'NKJ 9478 (P', 958917000, 14.657557, 120.961928, 0, 'South-east', 41933.1, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:18:49', 'McDonald\'s, C-4 Road, Barangay 8, Zone 1, Dagat-Dagatan, District 2, Caloocan, Northern Manila District, Metro Manila, 1411, Pilipinas', 'Northern Manila District, Metro Manila', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(165, 'S - NKJ 9753 (P-UP)', 'AK', 'NKJ 9753 (P', 9958920000, 16.155053, 119.978848, 0, 'East', 37997, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:44', 'C. P. Garcia Street, Poblacion, Alaminos, Pangasinan, Ilocos Region, 2404, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(166, 'S - NQX 856', 'AK', 'NQX 856', 0, 10.898118, 123.417142, 0, 'North', 16472, 'ACC OFF,Disarm,Door Close,Power connected', '2024-09-16 09:50:38', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 217, '', 0, '0000-00-00', '0000-00-00', 0),
(167, 'S - PXI 203 (INOVA)', 'AK', 'PXI 203 (INOVA)', 9770070000, 14.28237, 120.945408, 0, 'North', 59594, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-03 15:22:16', 'Fortune Street, Langkaan 1, Langkaan, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 17, '', 0, '0000-00-00', '0000-00-00', 0),
(168, 'S - PXI 341', 'AK', 'PXI 341', 0, 10.898063, 123.417183, 0, 'North', 46519, 'ACC ON,Disarm,Door Close,Power connected', '2024-05-09 09:41:01', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 347, '', 0, '0000-00-00', '0000-00-00', 0),
(169, 'S - SBD 99', 'AK', 'SBD 99', 0, 15.574935, 120.92073, 0, 'North', 20927, 'ACC OFF,Disarm,Door Close,Power cut', '2024-05-28 11:25:50', 'Maharlika Highway, Poblacion Sur, Sampaloc, Talavera, Nueva Ecija, Central Luzon, 3133, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 328, '', 0, '0000-00-00', '0000-00-00', 0),
(170, 'S - SPC 17 (INOVA)', 'AK', 'SPC 17 (INOVA)', 9770070000, 10.934717, 123.285133, 0, 'North-west', 158579, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 12:53:39', 'Daga, Tinampa-an, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(171, 'S - URB 214', 'AK', 'URB 214', 0, 7.020392, 125.501783, 0, 'North', 15994, 'ACC ON,Disarm,Door Close,Power connected', '2023-07-27 13:11:39', 'De Guzman Street, Purok 20, Crossing Bayabas, Toril, Davao City, Davao Region, 8025, Pilipinas', 'Davao City, Davao Region', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 634, '', 0, '0000-00-00', '0000-00-00', 0),
(172, 'S - XRB 112 (L300)', 'AK', 'XRB 112 (L300)', 9154320000, 14.019507, 120.753835, 0, 'South', 21395, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-31 07:38:12', 'Bolbok, Tuy, Batangas, Calabarzon, 4214, Pilipinas', 'Batangas, Calabarzon', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 172, '', 0, '0000-00-00', '0000-00-00', 0),
(173, 'SD - MBH - IHI', 'AK', 'MBH', 9770070000, 10.934437, 123.285218, 0, 'North', 92, 'ACC ON,Disarm,Door Close,Power connected', '2023-03-03 15:41:26', 'Daga, Tinampa-an, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 779, '', 0, '0000-00-00', '0000-00-00', 0),
(174, 'SD - MDT - KAK 9692', 'AK', 'MDT', 9369160000, 7.910693, 123.811383, 0, 'North', 16160, 'ACC OFF,Disarm,Door Close,Power cut', '2023-03-18 13:37:22', 'Lala-Salvador-Tubod Road, Narra, Salvador, Lanao del Norte, Northern Mindanao, Pilipinas', 'Salvador, Lanao del Norte', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 764, '', 0, '0000-00-00', '0000-00-00', 0),
(175, 'SD - S - CHEVROLET', 'AK', 'S', 9369160000, 10.890733, 124.45577, 0, 'Southwest', 63830, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-15 16:32:43', 'Matlang, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', 'Leyte, Eastern Visayas', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 5, '', 0, '0000-00-00', '0000-00-00', 0),
(176, 'SKD - BOBCAT S130', 'AK', 'BOBCAT S130', 9770070000, 10.038773, 123.440547, 0, 'North', 1047, 'ACC OFF,Disarm,Door Close,Power cut', '2025-01-22 15:54:59', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', 'Cebu, Central Visayas', '', 'Skid Loader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 88, '', 0, '0000-00-00', '0000-00-00', 0),
(177, 'SKD - BOBCAT S150', 'AK', 'BOBCAT S150', 0, 7.91164, 123.81404, 0, 'North', 878, 'ACC OFF,Disarm,Door Close,Power cut', '2022-06-22 21:04:57', 'Lala-Salvador-Tubod Road, Narra, Salvador, Lanao del Norte, Northern Mindanao, Pilipinas', 'Salvador, Lanao del Norte', '', 'Skid Loader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1033, '', 0, '0000-00-00', '0000-00-00', 0),
(178, 'SLD - KAE 6026', 'AK', 'KAE 6026', 9454020000, 14.11464, 120.814155, 0, 'Southwest', 38048, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-20 09:09:51', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(179, 'SLD - KAE 6027', 'AK', 'KAE 6027', 9454020000, 14.683438, 121.020587, 0, 'North', 31242, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 10:22:57', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(180, 'SLD - KAE 6028', 'AK', 'KAE 6028', 9454020000, 15.600627, 119.959897, 0, 'North-east', 46374.1, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:19:21', 'Pinagrealan, Zambales, Central Luzon, 2212, Pilipinas', 'Zambales, Central Luzon', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(181, 'SLD - KAE 6029', 'AK', 'KAE 6029', 9544070000, 15.324728, 120.936842, 0, 'South', 4589, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:19:56', 'Ka Edgar Kambingan Bulaluhan, Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(182, 'SLD - NCR 7275', 'AK', 'NCR 7275', 9770070000, 15.823713, 119.906415, 27.76, 'South', 68297, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:21:07', 'Zambales Highway, Poblacion, Infanta, Pangasinan, Ilocos Region, 2412, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(183, 'SLD - NDP 1833', 'AK', 'NDP 1833', 0, 9.356497, 123.275968, 0, 'South', 65899, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 11:56:40', 'Metro Dumaguete Diversion Road, Magatas, Calabnugan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(184, 'S-NIM 3732 (FX)', 'AK', 'NIM 3732 (FX)', 0, 15.31914, 120.93788, 18.63, 'East', 167.077, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-29 08:19:47', 'Dr. Gloria D. Lacson Foundation Colleges Inc., Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(185, 'ST - MFG 773', 'AK', 'MFG 773', 9770070000, 14.683843, 121.020278, 0, 'North-east', 32781, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 10:56:40', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Saddam Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 20, '', 0, '0000-00-00', '0000-00-00', 0),
(186, 'ST - NBP 9217', 'AK', 'NBP 9217', 9566890000, 14.112202, 120.817683, 0, 'South-east', 22902.5, 'ACC ON,Disarm,Door Close,Power connected', '2024-09-30 13:48:27', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Pumpcrete', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 202, '', 0, '0000-00-00', '0000-00-00', 0),
(187, 'ST - NCA 2535', 'AK', 'NCA 2535', 9950690000, 14.114582, 120.814133, 0, 'North', 381, 'ACC ON,Disarm,Door Close,Power connected', '2023-09-17 11:43:39', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Saddam Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 582, '', 0, '0000-00-00', '0000-00-00', 0),
(188, 'TH - (CHASSIS 4780)', 'AK', '(CHASSIS 4780)', 967, 14.683792, 121.019888, 0, 'North', 3536, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-13 17:54:47', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Tractor Head', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 7, '', 0, '0000-00-00', '0000-00-00', 0),
(189, 'TH - CAG 6031', 'AK', 'CAG 6031', 9950690000, 14.683503, 121.02084, 0, 'North', 54773, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-21 23:06:01', 'Pugo Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Tractor Head', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 30, '', 0, '0000-00-00', '0000-00-00', 0),
(190, 'TH - KBA 5796', 'AK', 'KBA 5796', 967, 15.325708, 120.937133, 0, 'North', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-05 14:22:00', 'Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Tractor Head', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 74, '', 0, '0000-00-00', '0000-00-00', 0),
(191, 'TH - RNW 417', 'AK', 'RNW 417', 9154320000, 14.114743, 120.814393, 0, 'East', 128057, 'ACC ON,Disarm,Door Close,Power cut', '2024-10-03 08:29:24', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Tractor Head', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 200, '', 0, '0000-00-00', '0000-00-00', 0),
(192, 'WLD - 1', 'AK', '1', 0, 14.01665, 120.754478, 0, 'North', 4643, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-26 10:45:25', 'Luna-Magahis Road, Luna, Mataywanac, Tuy, Batangas, Calabarzon, 4214, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 35, '', 0, '0000-00-00', '0000-00-00', 0),
(193, 'WLD - 2', 'AK', '2', 0, 13.770342, 121.115945, 0, 'North', 3948, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 09:01:16', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(194, 'WLD - 3', 'AK', '3', 500, 14.683545, 121.020458, 0, 'North', 5956, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 12:19:17', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(195, 'WLD - ALLIANCE', 'AK', 'ALLIANCE', 0, 16.017405, 119.870245, 0, 'North', 55613, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 10:56:32', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(196, 'WLD - WA200', 'AK', 'WA200', 0, 14.683658, 121.020275, 0, 'North', 197, 'ACC ON,Disarm,Door Close,Power connected', '2023-06-01 08:13:57', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 690, '', 0, '0000-00-00', '0000-00-00', 0),
(197, 'AK-32046', 'AK', '32046', 0, 14.938823, 120.842017, 0, 'North', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 10:59:26', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 427, '', 0, '0000-00-00', '0000-00-00', 0),
(198, '*S - NIM 3732 (FX)', 'AK', 'NIM 3732 (FX)', 0, 14.312783, 120.947343, 0, 'Southwest', 7670.42, 'ACC OFF,Disarm,Door Close,Power cut', '2024-03-15 00:12:12', 'Aguinaldo Highway, San Agustin 2, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 402, '', 0, '0000-00-00', '0000-00-00', 0),
(199, 'AAV 6960', 'AK', 'N/A', 0, 11.322898, 124.342302, 0, 'North', 12293, 'ACC ON,Disarm,Door Close,Power connected', '2024-04-12 14:44:16', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 358, '', 0, '0000-00-00', '0000-00-00', 0),
(200, 'H2O - MAH 8320', 'AK', 'MAH 8320', 9770070000, 10.89803, 123.417147, 0, 'East', 1145, 'ACC OFF,Disarm,Door Close,Power cut', '2023-03-23 14:31:11', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'Water Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 759, '', 0, '0000-00-00', '0000-00-00', 0),
(201, 'MBH - E-122', 'AK', 'E', 9672140000, 14.311003, 120.954062, 0, 'North-east', 19.1515, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-16 08:15:28', 'Burgundy Street, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 5, '', 0, '0000-00-00', '0000-00-00', 0),
(202, 'MBH - E-123', 'AK', 'E', 954, 16.472752, 121.110578, 0, 'North', 50, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:51', 'Basketball Court, Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', 'Nueva Vizcaya, Cagayan Valley', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(203, 'MDT - KBE 7027', 'AK', 'KBE 7027', 9672140000, 9.356533, 123.276295, 0, 'North', 207, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:18:51', 'Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', 'Negros Oriental, Negros Island Region', '', 'Dumptruck', '', '', '', '', 'Bayombong Substation', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(204, 'AK-48500', 'AK', '48500', 0, 14.938688, 120.842118, 0, 'North', 34, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 17:19:14', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1157, '', 0, '0000-00-00', '0000-00-00', 0),
(205, 'MANLIFT', 'AK', 'N/A', 0, 14.683462, 121.020542, 0, 'South', 11, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:26:05', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(206, 'AK-31731', 'AK', '31731', 0, 14.938875, 120.842117, 0, 'West', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 11:30:32', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(207, 'CMT - 1-380089', 'AK', '1', 9454020000, 16.017412, 119.870322, 0, 'West', 2219, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:18:43', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(208, 'CMT - 2-380090', 'AK', '2', 9454280000, 16.017417, 119.87048, 0, 'South-east', 1812, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-21 13:20:44', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(209, 'CMT - 3-380091', 'AK', '3', 9454280000, 16.017655, 119.870523, 0, 'North', 18887, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 12:03:52', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(210, 'CMT - 4-3890092', 'AK', '4', 9454280000, 16.017013, 119.870417, 0, 'North', 60, 'ACC ON,Disarm,Door Close,Power connected', '2024-06-20 16:41:20', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 304, '', 0, '0000-00-00', '0000-00-00', 0),
(211, 'CMT - 5-3890093', 'AK', '5', 9454280000, 16.016917, 119.868235, 0, 'South-east', 324, 'ACC OFF,Disarm,Door Close,Power cut', '2024-06-20 09:50:59', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 305, '', 0, '0000-00-00', '0000-00-00', 0),
(212, 'CMT - 6-380094', 'AK', '6', 9454280000, 16.0177, 119.87069, 0, 'West', 17682, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 11:01:39', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(213, 'CMT - 7-E116', 'AK', '7', 9672140000, 13.771122, 121.113442, 0, 'West', 402.32, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 13:20:15', 'Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(214, 'G - 1-135B00095', 'AK', '1', 0, 9.798233, 123.357422, 0, 'North', 2343, 'ACC ON,Disarm,Door Close,Power connected', '2023-08-15 11:30:28', 'Madridejos, Cebu, Central Visayas, Pilipinas', 'Madridejos, Cebu', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 615, '', 0, '0000-00-00', '0000-00-00', 0),
(215, 'MLT - E-111', 'AK', 'E', 9672140000, 14.683777, 121.020617, 0, 'West', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-14 16:22:22', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 6, '', 0, '0000-00-00', '0000-00-00', 0),
(216, 'MLT - KAS 2292', 'AK', 'KAS 2292', 9672140000, 14.683403, 121.020427, 0, 'West', 946, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-21 13:19:52', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(217, 'MLT - KBE 7024', 'AK', 'KBE 7024', 9672140000, 14.683462, 121.020542, 0, 'North-east', 11, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-16 21:12:04', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(218, 'S-XL 580A (P-UP)', 'AK', 'XL 580A (P', 9672140000, 14.106395, 120.826732, 0, 'North-east', 535, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-20 21:27:42', 'Kaytitinga-Magallanes Road, Purok 1, Kaytitinga I, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(219, 'S-XL 881A (P-UP)', 'AK', 'XL 881A (P', 9672140000, 14.683517, 121.020583, 0, 'South-east', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-20 02:01:02', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(220, 'WLOADER- 1-LW500FN1', 'AK', '1', 9950140000, 14.01665, 120.754478, 0, 'North', 4643, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-26 10:45:25', 'Luna-Magahis Road, Luna, Mataywanac, Tuy, Batangas, Calabarzon, 4214, Pilipinas', 'Batangas, Calabarzon', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 54, '', 0, '0000-00-00', '0000-00-00', 0),
(221, 'WLOADER- 3-500FN3', 'AK', '3', 9770070000, 14.683545, 121.020458, 0, 'North', 5956, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 12:19:17', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 20, '', 0, '0000-00-00', '0000-00-00', 0),
(222, 'WLOADER -LW500', 'AK', 'LW500', 0, 16.017432, 119.870188, 0, 'North-east', 57596, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-21 10:49:49', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(223, 'WLODER- 2-500FN2', 'AK', '2', 9958920000, 13.770342, 121.115945, 0, 'North', 3949, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-16 15:57:36', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `geofence`
--

CREATE TABLE `geofence` (
  `id` int(11) NOT NULL,
  `target_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komtrax`
--

CREATE TABLE `komtrax` (
  `id` int(11) NOT NULL,
  `target_name` varchar(255) DEFAULT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cut_address` varchar(255) NOT NULL,
  `position_time` datetime NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `specs` text NOT NULL,
  `physical_status` text NOT NULL,
  `assignment` text NOT NULL,
  `date_transferred` text NOT NULL,
  `days_contract` int(255) NOT NULL,
  `date_ended` text NOT NULL,
  `days_elapsed` int(255) NOT NULL,
  `remarks` text NOT NULL,
  `days_no_gps` int(255) NOT NULL,
  `last_assignment` text NOT NULL,
  `last_days_contract` int(255) NOT NULL,
  `last_date_transferred` text NOT NULL,
  `last_date_ended` text NOT NULL,
  `last_days_elapsed` int(255) NOT NULL,
  `operator` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komtrax`
--

INSERT INTO `komtrax` (`id`, `target_name`, `equipment_type`, `address`, `cut_address`, `position_time`, `latitude`, `longitude`, `tag`, `specs`, `physical_status`, `assignment`, `date_transferred`, `days_contract`, `date_ended`, `days_elapsed`, `remarks`, `days_no_gps`, `last_assignment`, `last_days_contract`, `last_date_transferred`, `last_date_ended`, `last_days_elapsed`, `operator`) VALUES
(1, 'PC200-10M0 #C50156', 'BH', 'Bayto, Santa Cruz, Zambales, Philippines', '', '2025-04-21 09:24:40', '15.72266601', '119.9438661', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(2, 'PC200-10M0 #C50367', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-16 15:23:51', '15.32483289', '120.9369325', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(3, 'PC200-10M0 #C50474', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:42:41', '15.3180664', '120.92526584', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(4, 'PC200-10M0 #C50799', 'BH', 'Mahayag, Isabel, Leyte, Philippines', '', '2025-04-21 01:41:00', '10.91963324', '124.44863281', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(5, 'PC200-10M0 #C51088', 'BH', 'Tam-is, Maasin City, Southern Leyte, Philippines', '', '2025-04-21 01:30:53', '10.16273329', '124.77926649', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(6, 'PC200-10M0 #C51089', 'BH', 'Balugo, Sibulan, Negros Oriental, Philippines', '', '2025-04-21 01:29:00', '9.35219943', '123.23339952', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(7, 'PC200-10M0 #C51931', 'BH', 'Peng-peng – Baguioso Rd, Mabini, 2409 Pangasinan, Philippines', '', '2025-04-21 01:30:53', '16.04356662', '119.93639974', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(8, 'PC200-10M0 #C51937', 'BH', 'Magatas, Sibulan, Negros Oriental, Philippines', '', '2025-04-21 01:26:59', '9.35666666', '123.27623263', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(9, 'PC200-10M0 #C51996', 'BH', 'Unnamed Road, Sibulan, Negros Oriental, Philippines', '', '2025-04-21 07:46:51', '9.33356662', '123.24573242', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(10, 'PC200-10M0 #C52051', 'BH', 'Mateuna, Tayabas, 4327 Quezon, Philippines', '', '2025-04-16 11:54:58', '14.02159939', '121.60569987', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(11, 'PC200-10M0 #C52056', 'BH', 'Ilihan, Batangas, Philippines', '', '2025-04-21 09:52:20', '13.62376627', '121.08', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(12, 'PC200-10M0 #C52087', 'BH', 'Malimpin, Dasol, Pangasinan, Philippines', '', '2025-04-16 10:10:25', '16.01696614', '119.91033311', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(13, 'PC200-10M0 #C52121', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 07:58:47', '15.31366645', '120.94149956', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(14, 'PC200-10M0 #C52125', 'BH', 'Camagsingalan, Pangasinan, Philippines', '', '2025-04-16 14:36:23', '16.07863281', '120.0140332', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(15, 'PC200-10M0 #C52130', 'BH', 'Maliga, Alaminos, Pangasinan, Philippines', '', '2025-04-15 07:26:14', '16.08216579', '119.99479926', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(16, 'PC200-10M0 #C52131', 'BH', 'Linmansangan, Pangasinan, Philippines', '', '2025-04-15 07:24:41', '16.07979926', '119.98256618', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(17, 'PC200-10M0 #C52653', 'BH', 'Unnamed Road, Candelaria, Zambales, Philippines', '', '2025-04-15 01:50:51', '15.60669921', '119.95756618', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(18, 'PC200-10M0 #C52674', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-15 01:46:46', '15.31803276', '120.92526584', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(19, 'PC200-10M0 #C52675', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:58:51', '15.31799913', '120.9253993', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(20, 'PC200-10M0 #C52676', 'BH', 'Uacon, Zambales, Philippines', '', '2025-04-21 01:56:46', '15.68383246', '119.95243272', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(21, 'PC200-10M0 #C52677', 'BH', 'Doliman, Pangasinan, Philippines', '', '2025-04-21 01:34:44', '15.81896592', '119.95683268', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(22, 'PC200-10M0 #C52678', 'BH', 'Tamacan, Cavite, Philippines', '', '2025-04-21 01:10:46', '14.22146592', '120.93169921', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(23, 'PC200-10M0 #C52679', 'BH', 'Unnamed Road, Dasmariñas, Cavite, Philippines', '', '2025-04-21 08:00:28', '14.27436631', '120.95373263', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(24, 'PC200-10M0 #C52680', 'BH', 'Mahacot Kanluran, Batangas, Philippines', '', '2025-04-16 13:57:47', '13.77099934', '121.11603298', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(25, 'PC200-10M0 #C52681', 'BH', 'Mahacot Kanluran, Batangas, Philippines', '', '2025-04-21 01:34:44', '13.77053276', '121.11633246', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(26, 'PC200-10M0 #C52682', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:30:41', '15.3180664', '120.92513237', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(27, 'PC200-8M0 #C22978', 'BH', 'Busilac, Bayombong, Nueva Vizcaya, Philippines', '', '2025-04-21 09:24:40', '16.47313259', '121.11073242', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(28, 'PC200-8M0 #C23307', 'BH', 'Talipapa, Metro Manila, Philippines', '', '2025-04-16 13:52:32', '14.68363281', '121.02019965', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(29, 'PC200-8M0 #C23308', 'BH', 'Maliwanag, Maigo, Lanao del Norte, Philippines', '', '2025-04-21 09:24:40', '8.14033311', '123.95603298', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(30, 'PC200-8M0 #C23319', 'BH', 'Maningcao, Negros Oriental, Philippines', '', '2025-04-16 15:51:54', '9.37883246', '123.2363661', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(31, 'PC200-8M0 #C23320', 'BH', 'Gahit, Enrique B. Magalona, Negros Occidental, Philippines', '', '2025-04-21 07:56:44', '10.88833333', '122.97053276', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(32, 'PC200-8M0 #C23321', 'BH', 'Langkaan I, Dasmariñas, Cavite, Philippines', '', '2025-04-16 10:58:21', '14.30036566', '120.95163303', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(33, 'PC200-8M0 #C23332', 'BH', 'Unnamed Road, Dasmariñas, Cavite, Philippines', '', '2025-04-21 08:16:20', '14.31059895', '120.95419921', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(34, 'PC210-10M0 #C00020', 'BH', 'Mahacot Kanluran, Batangas, Philippines', '', '2025-04-20 10:14:38', '13.77069987', '121.11569987', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(35, 'PC210-10M0 #C00060', 'BH', 'Cogon, Dumanjug, Cebu, Philippines', '', '2025-04-21 01:54:44', '10.035', '123.44356662', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(36, 'PC210-10M0 #C00203', 'BH', '224 kalye ube street, Obispo Bridge, Tuy, Batangas, Philippines', '', '2025-04-21 01:36:25', '14.00893229', '120.72809895', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(37, 'PC210-10M0 #C00204', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:54:44', '15.31373263', '120.9415332', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `action` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `target_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Main Admin','Admin','Logistics','User') NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(1, 'Ravin', 'Torres', 'Lxoric', '$2y$10$fQCsbCQ1OoG8g.7E7F00Je7l212GPi6ZNXoi9xZBtKFhvBkduKFC2', 'Main Admin'),
(2, 'joshua', 'garcia', 'joshuagarcia', '$2y$10$7lB6g7oYbTfholOYw1mN0OXANtexjQxaKxikhOxMxh6eWM8wThete', 'Main Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_amlan`
--
ALTER TABLE `assignment_amlan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_balingueo`
--
ALTER TABLE `assignment_balingueo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_banilad`
--
ALTER TABLE `assignment_banilad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_barotac`
--
ALTER TABLE `assignment_barotac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_bayombong`
--
ALTER TABLE `assignment_bayombong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_binan`
--
ALTER TABLE `assignment_binan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_bolo`
--
ALTER TABLE `assignment_bolo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_botolan`
--
ALTER TABLE `assignment_botolan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_cadiz`
--
ALTER TABLE `assignment_cadiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_calacass`
--
ALTER TABLE `assignment_calacass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_calacatl`
--
ALTER TABLE `assignment_calacatl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_calatrava`
--
ALTER TABLE `assignment_calatrava`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_dasmarinas`
--
ALTER TABLE `assignment_dasmarinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_dumanjug`
--
ALTER TABLE `assignment_dumanjug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_ebmagalona`
--
ALTER TABLE `assignment_ebmagalona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_headoffice`
--
ALTER TABLE `assignment_headoffice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_hermosa`
--
ALTER TABLE `assignment_hermosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_ilijan`
--
ALTER TABLE `assignment_ilijan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_isabel`
--
ALTER TABLE `assignment_isabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_maasin`
--
ALTER TABLE `assignment_maasin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_muntinlupa`
--
ALTER TABLE `assignment_muntinlupa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_pantabangan`
--
ALTER TABLE `assignment_pantabangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_pinamucan`
--
ALTER TABLE `assignment_pinamucan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_quirino`
--
ALTER TABLE `assignment_quirino`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_sanjose`
--
ALTER TABLE `assignment_sanjose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_tabango`
--
ALTER TABLE `assignment_tabango`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_tayabas`
--
ALTER TABLE `assignment_tayabas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_taytay`
--
ALTER TABLE `assignment_taytay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_terrasolar`
--
ALTER TABLE `assignment_terrasolar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_tuguegarao`
--
ALTER TABLE `assignment_tuguegarao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_tuy`
--
ALTER TABLE `assignment_tuy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `target_name` (`target_name`);

--
-- Indexes for table `geofence`
--
ALTER TABLE `geofence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komtrax`
--
ALTER TABLE `komtrax`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `target_name` (`target_name`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `assignment_amlan`
--
ALTER TABLE `assignment_amlan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_balingueo`
--
ALTER TABLE `assignment_balingueo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_banilad`
--
ALTER TABLE `assignment_banilad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_barotac`
--
ALTER TABLE `assignment_barotac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_bayombong`
--
ALTER TABLE `assignment_bayombong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_binan`
--
ALTER TABLE `assignment_binan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_bolo`
--
ALTER TABLE `assignment_bolo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_botolan`
--
ALTER TABLE `assignment_botolan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_cadiz`
--
ALTER TABLE `assignment_cadiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_calacass`
--
ALTER TABLE `assignment_calacass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_calacatl`
--
ALTER TABLE `assignment_calacatl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_calatrava`
--
ALTER TABLE `assignment_calatrava`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_dasmarinas`
--
ALTER TABLE `assignment_dasmarinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_dumanjug`
--
ALTER TABLE `assignment_dumanjug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_ebmagalona`
--
ALTER TABLE `assignment_ebmagalona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_headoffice`
--
ALTER TABLE `assignment_headoffice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_hermosa`
--
ALTER TABLE `assignment_hermosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_ilijan`
--
ALTER TABLE `assignment_ilijan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_isabel`
--
ALTER TABLE `assignment_isabel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_maasin`
--
ALTER TABLE `assignment_maasin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_muntinlupa`
--
ALTER TABLE `assignment_muntinlupa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_pantabangan`
--
ALTER TABLE `assignment_pantabangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_pinamucan`
--
ALTER TABLE `assignment_pinamucan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_quirino`
--
ALTER TABLE `assignment_quirino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_sanjose`
--
ALTER TABLE `assignment_sanjose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_tabango`
--
ALTER TABLE `assignment_tabango`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_tayabas`
--
ALTER TABLE `assignment_tayabas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_taytay`
--
ALTER TABLE `assignment_taytay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_terrasolar`
--
ALTER TABLE `assignment_terrasolar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `assignment_tuguegarao`
--
ALTER TABLE `assignment_tuguegarao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_tuy`
--
ALTER TABLE `assignment_tuy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `geofence`
--
ALTER TABLE `geofence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `komtrax`
--
ALTER TABLE `komtrax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
