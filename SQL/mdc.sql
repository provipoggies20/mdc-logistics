-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2025 at 02:32 AM
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
(1, 'Bayombong Substation', '16.472314, 121,111742', 'Busilac, Bayombong, Nueva Vizcaya');

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
(1, 'AK-48dafgwegwegwed', 'AK', '48500', 48500, 14.938688, 120.842118, 0, 'North', 34, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 17:19:14', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005', '', '', 'GPS Tracker', '', '', '', 'Operational', 'Tayabas Substation', '2025-04-02', 28, '2025-04-30', 130, '', 1146, '', 0, '0000-00-00', '0000-00-00', 0),
(2, 'AK-49071', 'AK', '49071', 49071, 14.938665, 120.842133, 0, 'North', 8, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 16:45:57', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', 'Operational', '', '2025-04-02', 145, '2025-08-25', 34, '', 1151, '', 0, '0000-00-00', '0000-00-00', 0),
(3, 'AK-31846', 'AK', '31846', 0, 14.939027, 120.842035, 0, 'West', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 14:36:52', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 429, '', 0, '0000-00-00', '0000-00-00', 0),
(4, 'AK-31851', 'AK', '31851', 0, 16.017313, 119.870227, 0, 'West', 7738, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-01 17:24:08', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 72, '', 0, '0000-00-00', '0000-00-00', 0),
(5, 'AK-31711', 'AK', '31711', 0, 14.939798, 120.841958, 0, 'North', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 15:26:33', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 429, '', 0, '0000-00-00', '0000-00-00', 0),
(6, 'AK-21556', 'AK', '21556', 0, -1, -1, 0, 'North', 0, 'ACC OFF,Disarm,Door Close,Power cut', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45755, '', 0, '0000-00-00', '0000-00-00', 0),
(7, 'AK-21559', 'AK', '21559', 0, 14.938635, 120.842483, 0, 'Southwest', 3, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-22 13:42:40', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 143, '', 0, '0000-00-00', '0000-00-00', 0),
(8, 'AK-21563', 'AK', '21563', 0, 14.934912, 120.842967, 0, 'North-east', 13, 'ACC OFF,Disarm,Door Close,Power connected', '2024-11-28 09:29:55', 'Esguerra Street, Balatong A, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 137, '', 0, '0000-00-00', '0000-00-00', 0),
(9, 'AK-21566', 'AK', '21566', 0, 14.938687, 120.842483, 0, 'West', 3, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-23 09:08:42', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 140, '', 0, '0000-00-00', '0000-00-00', 0),
(10, 'AK-21582', 'AK', '21582', 0, 14.683462, 121.020542, 0, 'West', 11, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 15:40:10', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 135, '', 0, '0000-00-00', '0000-00-00', 0),
(11, 'AK-21625', 'AK', '21625', 0, 14.93832, 120.842517, 0, 'North-east', 4, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-30 11:19:29', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 135, '', 0, '0000-00-00', '0000-00-00', 0),
(12, 'AK-21649', 'AK', '21649', 0, 14.939063, 120.8423, 0, 'Southwest', 7, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-19 16:04:53', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 116, '', 0, '0000-00-00', '0000-00-00', 0),
(13, 'AK-21653', 'AK', '21653', 0, 14.939132, 120.842383, 0, 'Southwest', 7, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-21 13:51:28', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 144, '', 0, '0000-00-00', '0000-00-00', 0),
(14, 'AK-21660', 'AK', '21660', 0, 14.939713, 120.842333, 38.89, 'South', 6, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-20 13:43:46', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 145, '', 0, '0000-00-00', '0000-00-00', 0),
(15, 'AK-21661', 'AK', '21661', 0, 14.938767, 120.84235, 0, 'East', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-25 09:10:22', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 138, '', 0, '0000-00-00', '0000-00-00', 0),
(16, 'AK-21676', 'AK', '21676', 0, 14.938532, 120.842383, 11.11, 'West', 6, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-19 10:08:29', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 116, '', 0, '0000-00-00', '0000-00-00', 0),
(17, 'AK-21689', 'AK', '21689', 0, 14.938745, 120.84205, 0, 'Southwest', 9, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-24 09:10:33', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 141, '', 0, '0000-00-00', '0000-00-00', 0),
(18, 'AK-21705', 'AK', '21705', 0, 14.938968, 120.8424, 0, 'North', 3, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-21 09:39:42', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 114, '', 0, '0000-00-00', '0000-00-00', 0),
(19, 'AK-31795', 'AK', '31795', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45760, '', 0, '0000-00-00', '0000-00-00', 0),
(20, 'AK-31796', 'AK', '31796', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45760, '', 0, '0000-00-00', '0000-00-00', 0),
(21, 'AK-31797', 'AK', '31797', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45760, '', 0, '0000-00-00', '0000-00-00', 0),
(22, 'AK-31798', 'AK', '31798', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45760, '', 0, '0000-00-00', '0000-00-00', 0),
(23, 'AK-31799', 'AK', '31799', 0, -1, -1, 0, 'North', 0, '', '1900-01-01 08:00:00', 'Address not found', 'City/State not found', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 45760, '', 0, '0000-00-00', '0000-00-00', 0),
(24, '*BT - NCB 4780', 'AK', 'NCB 4780', 0, 10.898075, 123.417128, 0, 'North', 14469, 'ACC ON,Disarm,Door Close,Power connected', '2023-05-27 10:05:58', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'GPS Device not Working', '', '', '', '', 'Bacolod', '0000-00-00', 0, '0000-00-00', 0, '', 688, '', 0, '0000-00-00', '0000-00-00', 0),
(25, '*MDT - KAK 9680', 'AK', 'KAK 9680', 0, 14.021448, 121.605112, 0, 'West', 14149, 'ACC ON,Disarm,Door Close,Power connected', '2024-11-18 22:32:30', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', 'Quezon, Calabarzon', '', 'GPS Device not Working', '', '', '', '', 'Tayabas Substation', '0000-00-00', 0, '0000-00-00', 0, '', 147, '', 0, '0000-00-00', '0000-00-00', 0),
(26, '*MDT - KAK 9682', 'AK', 'KAK 9682', 0, 13.62394, 121.07948, 0, 'Southwest', 66, 'ACC ON,Disarm,Door Close,Power connected', '2024-08-13 14:33:15', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 244, '', 0, '0000-00-00', '0000-00-00', 0),
(27, '*MDT - KAK 9686', 'AK', 'KAK 9686', 0, 13.960947, 121.608847, 0, 'West', 21755, 'ACC OFF,Disarm,Door Close,Power cut', '2024-07-03 13:29:02', 'Lucena Diversion Road, Masigasig, Gulang-Gulang, Lucena, 2nd District, Calabarzon, 4301, Pilipinas', '2nd District, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 285, '', 0, '0000-00-00', '0000-00-00', 0),
(28, '*S - NGX 9585', 'AK', 'NGX 9585', 0, 14.30844, 120.94452, 0, 'North', 17259, 'ACC OFF,Disarm,Door Close,Power cut', '2022-06-02 18:28:52', 'San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1047, '', 0, '0000-00-00', '0000-00-00', 0),
(29, '*S - NIB 3802', 'AK', 'NIB 3802', 0, 10.887462, 122.969012, 0, 'North', 482.915, 'ACC OFF,Disarm,Door Close,Power cut', '2023-01-25 07:24:48', 'Minisca, Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 811, '', 0, '0000-00-00', '0000-00-00', 0),
(30, '*S - NIE 4645', 'AK', 'NIE 4645', 0, 14.31173, 120.949417, 0, 'North', 744, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-10 14:38:20', 'Aguinaldo Highway, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 63, '', 0, '0000-00-00', '0000-00-00', 0),
(31, '*S - NIH 5592', 'AK', 'NIH 5592', 0, 14.682882, 121.020697, 0, 'North', 1949, 'ACC ON,Disarm,Door Close,Power connected', '2023-10-10 10:11:19', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 552, '', 0, '0000-00-00', '0000-00-00', 0),
(32, '*S - NII 6050', 'AK', 'NII 6050', 0, 10.89793, 123.417085, 0, 'East', 51191, 'ACC OFF,Disarm,Door Close,Power cut', '2023-11-10 09:19:35', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 521, '', 0, '0000-00-00', '0000-00-00', 0),
(33, '*SLD - KAE 6029', 'AK', 'KAE 6029', 0, 15.00817, 120.660987, 0, 'East', 4357, 'ACC OFF,Disarm,Door Close,Power cut', '2023-09-17 11:11:22', 'MacArthur Highway, Zone 2, Bacolor, Pampanga, Central Luzon, 2001, Pilipinas', 'Pampanga, Central Luzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 575, '', 0, '0000-00-00', '0000-00-00', 0),
(34, 'BT - (HOWO 1330)', 'AK', '(HOWO 1330)', 9544070000, 16.016723, 119.868455, 0, 'North', 362, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:37:11', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(35, 'BT - (HOWO 1340)', 'AK', '(HOWO 1340)', 9544070000, 15.32553, 120.937007, 0, 'North', 2985.07, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:37:53', 'Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(36, 'BT - HAA 8566', 'AK', 'HAA 8566', 9958920000, 10.85909, 123.481552, 53.71, 'North-west', 72519, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-11 17:39:08', 'Bacolod North Road, Plaridel, Escalante, Negros Occidental, Negros Island Region, Pilipinas', 'Escalante, Negros Occidental', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 3, '', 0, '0000-00-00', '0000-00-00', 0),
(37, 'BT - JFF 832', 'AK', 'JFF 832', 9950690000, 14.016595, 120.733217, 12.96, 'East', 61386, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:37:38', 'Basa Street, Luna, Tuyon-tuyon, Tuy, Batangas, Calabarzon, 4214, Pilipinas', 'Batangas, Calabarzon', '', 'Boomtruck', '', '', '', '', 'assignment_tuy', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(38, 'BT - KAE 4523', 'AK', 'KAE 4523', 9454020000, 14.683408, 121.020622, 0, 'North-west', 20280.7, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 02:48:53', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(39, 'BT - KAE 4547', 'AK', 'KAE 4547', 9454020000, 13.624333, 121.078747, 0, 'South-east', 28330, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-15 08:37:52', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(40, 'BT - KAE 4548', 'AK', 'KAE 4548', 9454020000, 11.322967, 124.342322, 0, 'South-east', 39368, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-12 14:54:40', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', 'Leyte, Eastern Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 2, '', 0, '0000-00-00', '0000-00-00', 0),
(41, 'BT - KAE 4549', 'AK', 'KAE 4549', 9544070000, 14.683613, 121.020327, 0, 'North', 31625, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-14 19:50:59', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(42, 'BT - KAJ 8866', 'AK', 'KAJ 8866', 9260550000, 14.107562, 120.8279, 12.96, 'West', 82991, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:29:43', 'Amuyong-Kaytitinga Road, Purok 1, Kaytitinga III, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(43, 'BT - KAJ 8867', 'AK', 'KAJ 8867', 9770070000, 14.31106, 120.95439, 0, 'North-east', 620679, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:24:08', 'Piedmont Ends, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(44, 'BT - KBE 7023', 'AK', 'KBE 7023', 9544070000, 16.017412, 119.867968, 0, 'North', 3093, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-12 18:38:14', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 2, '', 0, '0000-00-00', '0000-00-00', 0),
(45, 'BT - MAF 5392', 'AK', 'MAF 5392', 9958920000, 10.80114, 122.97688, 0, 'North-east', 34091, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-18 09:07:33', 'Rizal Street, Barangay II, Silay, Negros Occidental, Negros Island Region, 6116, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 27, '', 0, '0000-00-00', '0000-00-00', 0),
(46, 'BT - MAH 2674', 'AK', 'MAH 2674', 9770070000, 14.04818, 120.698027, 0, 'South', 85786, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:36:57', 'Tagaytay-Nasugbu Road, Palico, Sabang, Tuy, Batangas, Calabarzon, Pilipinas', 'Tuy, Batangas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(47, 'BT - MAJ 3099', 'AK', 'MAJ 3099', 9770070000, 10.038293, 123.439172, 0, 'North', 31745, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-15 08:13:12', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', 'Cebu, Central Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(48, 'BT - MAK 2637', 'AK', 'MAK 2637', 9950140000, 14.11436, 120.814495, 0, 'North', 19712, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-01 14:35:19', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', 'Cavite, Calabarzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 195, '', 0, '0000-00-00', '0000-00-00', 0),
(49, 'BT - NCB 4780', 'AK', 'NCB 4780', 9770070000, 9.862098, 123.577127, 48.28, 'North-east', 29957, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-11 01:57:23', 'Natalio Bacalso Avenue, Tulic, Balisong, Cebu, Central Visayas, 6021, Pilipinas', 'Cebu, Central Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 63, '', 0, '0000-00-00', '0000-00-00', 0),
(50, 'BT - NFP 7479', 'AK', 'NFP 7479', 9458280000, 10.162578, 124.779148, 0, 'North', 36753, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:36:12', 'Maasin – Macrohon – Sogod Road, Lundag, Tam is, Southern Leyte, Eastern Visayas, 6600, Pilipinas', 'Southern Leyte, Eastern Visayas', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(51, 'BT - NGU 4047', 'AK', 'NGU 4047', 9454020000, 14.686648, 121.024493, 14.82, 'Southwest', 53547, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 16:30:58', '487, Quirino Highway, Villa Florencia Subdivision, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(52, 'BT - RMA 516', 'AK', 'RMA 516', 9770070000, 10.552843, 123.460063, 0, 'North', 28287, 'ACC ON,Disarm,Door Close,Power connected', '2024-12-23 14:46:04', 'Bacolod North Road, San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', 'Calatrava, Negros Occidental', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 112, '', 0, '0000-00-00', '0000-00-00', 0),
(53, 'BT - RNA 386', 'AK', 'RNA 386', 9260550000, 15.324217, 120.936245, 0, 'North', 48099, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-13 22:07:05', 'Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 5, '', 0, '0000-00-00', '0000-00-00', 0),
(54, 'BT - YLK 710', 'AK', 'YLK 710', 9770070000, 14.683682, 121.020477, 0, 'North', 8833, 'ACC OFF,Disarm,Door Close,Power cut', '2025-03-19 09:31:39', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Boomtruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 26, '', 0, '0000-00-00', '0000-00-00', 0),
(55, 'CMT - 1', 'AK', '1', 380089, 16.017475, 119.870618, 0, 'East', 2192, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 16:12:48', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(56, 'CMT - 2', 'AK', '2', 380090, 16.017407, 119.87055, 0, 'East', 1784, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-11 00:49:14', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(57, 'CMT - 3', 'AK', '3', 380091, 16.017103, 119.87036, 0, 'West', 18159.1, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 13:14:51', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(58, 'CMT - 4', 'AK', '4', 3890090, 16.017013, 119.870417, 0, 'North', 60, 'ACC ON,Disarm,Door Close,Power connected', '2024-06-20 16:41:20', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 294, '', 0, '0000-00-00', '0000-00-00', 0),
(59, 'CMT - 5', 'AK', '5', 3890090, 16.016917, 119.868235, 0, 'South-east', 324, 'ACC OFF,Disarm,Door Close,Power cut', '2024-06-20 09:50:59', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 294, '', 0, '0000-00-00', '0000-00-00', 0),
(60, 'CMT - 6', 'AK', '6', 380094, 16.017075, 119.870242, 0, 'South-east', 16947, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 11:55:48', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(61, 'CMT - 7', 'AK', '7', 0, 13.770407, 121.11618, 0, 'North-east', 361, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:48:19', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(62, 'CMT - KBE 7025', 'AK', 'KBE 7025', 0, 16.017682, 119.870143, 0, 'East', 4927, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:35:12', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(63, 'CRN - KATO 25T', 'AK', 'KATO 25T', 25, 15.324767, 120.935985, 0, 'South', 834, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 17:03:40', 'Golden Meadows, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', 'Nueva Ecija, Central Luzon', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(64, 'CRN - KATO 55T', 'AK', 'KATO 55T', 55, 14.021563, 121.60567, 0, 'South-east', 1668, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-09 07:31:55', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', 'Quezon, Calabarzon', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(65, 'CRN - PQI 476', 'AK', 'PQI 476', 0, 10.934765, 123.28409, 0, 'North', 388, 'ACC OFF,Disarm,Door Close,Power cut', '2024-09-14 14:52:29', 'Daga, Tinampa-an, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', 'Negros Occidental, Negros Island Region', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 208, '', 0, '0000-00-00', '0000-00-00', 0),
(66, 'CRN - UQA 367', 'AK', 'UQA 367', 0, 14.683878, 121.020193, 0, 'North-west', 29, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-03 09:47:59', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Crane', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 7, '', 0, '0000-00-00', '0000-00-00', 0),
(67, 'CV - UBA 845', 'AK', 'UBA 845', 0, 14.683462, 121.020367, 0, 'North', 34, 'ACC ON,Disarm,Door Close,Power connected', '2023-12-06 10:03:47', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', 'Eastern Manila District, Metro Manila', '', 'Closed Van', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 491, '', 0, '0000-00-00', '0000-00-00', 0),
(68, 'DT - AAM 5075', 'AK', 'AAM 5075', 0, 14.820247, 121.04901, 0, 'North', 2275, 'ACC ON,Disarm,Door Close,Power connected', '2023-09-12 09:01:53', 'Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', 'Bulacan, Central Luzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 576, '', 0, '0000-00-00', '0000-00-00', 0),
(69, 'DT - KAJ 3620', 'AK', 'KAJ 3620', 0, 10.038543, 123.438723, 0, 'South', 5922, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 15:04:44', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', 'Cebu, Central Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(70, 'DT - KAJ 3626', 'AK', 'KAJ 3626', 0, 10.897837, 123.416633, 0, 'South-east', 10122, 'ACC OFF,Disarm,Door Close,Power cut', '2024-09-13 13:20:16', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', 'Sagay, Negros Occidental', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 209, '', 0, '0000-00-00', '0000-00-00', 0),
(71, 'DT - KAJ 3627', 'AK', 'KAJ 3627', 0, 11.31122, 124.34823, 0, 'North', 14403, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 22:44:42', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Poblacion, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', 'Leyte, Eastern Visayas', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(72, 'DT - KAJ 3739', 'AK', 'KAJ 3739', 0, 13.77109, 121.115975, 0, 'East', 22611, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 19:54:35', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(73, 'DT - KAS 2294', 'AK', 'KAS 2294', 0, 13.770278, 121.115973, 0, 'Southwest', 10463.1, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:46:12', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(74, 'DT - KAS 2295', 'AK', 'KAS 2295', 0, 16.017425, 119.867938, 0, 'South-east', 16752.7, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 14:41:22', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(75, 'DT - KAS 2296', 'AK', 'KAS 2296', 0, 13.772153, 121.115002, 0, 'South-east', 320.241, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 19:45:46', 'Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(76, 'DT - NFQ 1690', 'AK', 'NFQ 1690', 0, 16.016987, 119.86801, 0, 'North', 36683, 'ACC ON,Disarm,Door Close,Power connected', '2024-11-15 16:01:55', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 146, '', 0, '0000-00-00', '0000-00-00', 0),
(77, 'DT - RNL 845', 'AK', 'RNL 845', 0, 14.221308, 120.931718, 0, 'North', 1930, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 11:12:59', 'Tamacan, Amadeo, Cavite, Calabarzon, 4119, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(78, 'DT - WVQ 508', 'AK', 'WVQ 508', 0, 10.919853, 124.446792, 0, 'East', 5887, 'ACC ON,Disarm,Door Close,Power cut', '2025-03-26 13:00:56', 'Merida-Ormoc Road, San Roque, Libertad, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 15, '', 0, '0000-00-00', '0000-00-00', 0),
(79, 'G - 1', 'AK', '1', 0, 9.798233, 123.357422, 0, 'North', 2343, 'ACC ON,Disarm,Door Close,Power connected', '2023-08-15 11:30:28', 'Madridejos, Cebu, Central Visayas, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 604, '', 0, '0000-00-00', '0000-00-00', 0),
(80, 'G -2', 'AK', '2', 0, 10.888178, 122.969223, 0, 'North', 16.4144, 'ACC OFF,Disarm,Door Close,Power cut', '2023-07-19 12:29:12', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 631, '', 0, '0000-00-00', '0000-00-00', 0),
(81, 'H2O - JAD 9830', 'AK', 'JAD 9830', 0, 14.683443, 121.020618, 0, 'North', 5527, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-03 13:45:40', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 38, '', 0, '0000-00-00', '0000-00-00', 0),
(82, 'H2O - MAH8320', 'AK', 'MAH8320', 0, 10.89803, 123.417147, 0, 'East', 1145, 'ACC OFF,Disarm,Door Close,Power cut', '2023-03-23 14:31:11', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 740, '', 0, '0000-00-00', '0000-00-00', 0),
(83, 'MBH - 287', 'AK', '287', 0, 10.890202, 122.96978, 0, 'Southwest', 57.0317, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-08 15:46:14', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 2, '', 0, '0000-00-00', '0000-00-00', 0),
(84, 'MBH - 333', 'AK', '333', 0, 10.037163, 123.443248, 0, 'North', 405, 'ACC ON,Disarm,Door Close,Power connected', '2023-02-22 17:42:19', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', '', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 778, '', 0, '0000-00-00', '0000-00-00', 0),
(85, 'MBH - CNKA1679', 'AK', 'CNKA1679', 0, 13.770582, 121.116353, 0, 'South', 154.075, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:26:26', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(86, 'MBH XCMG E-122', 'AK', '122', 0, 14.331513, 121.075067, 0, 'North-east', 7, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-02 11:10:10', 'Tubigan, Biñan, Laguna, Calabarzon, 4024, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(87, 'MBH XCMG E-123', 'AK', '123', 0, 16.472768, 121.111642, 0, 'North-west', 8, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:09:43', 'Water Tank, Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(88, 'MDT - AAV 6960', 'AK', 'AAV 6960', 0, 11.322898, 124.342302, 0, 'North', 12293, 'ACC ON,Disarm,Door Close,Power connected', '2024-04-12 14:44:16', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 363, '', 0, '0000-00-00', '0000-00-00', 0),
(89, 'MDT - JAE 1028', 'AK', 'JAE 1028', 0, 11.310477, 124.34916, 30.52, 'North-west', 12441, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-10 08:53:10', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Poblacion, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(90, 'MDT - KAJ 9696', 'AK', 'KAJ 9696', 0, 10.919848, 124.446655, 0, 'North', 34199, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-23 12:40:40', 'Merida-Ormoc Road, San Roque, Libertad, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 169, '', 0, '0000-00-00', '0000-00-00', 0),
(91, 'MDT - KAK 9680', 'AK', 'KAK 9680', 0, 14.021583, 121.60519, 0, 'North', 3282, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-11 00:26:04', 'Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(92, 'MDT - KAK 9681', 'AK', 'KAK 9681', 0, 10.947897, 123.337795, 0, 'North', 27957, 'ACC OFF,Disarm,Door Close,Power connected', '2024-08-15 13:37:31', 'Banquerohan, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 238, '', 0, '0000-00-00', '0000-00-00', 0),
(93, 'MDT - KAK 9682', 'AK', 'KAK 9682', 0, 13.623325, 121.07944, 0, 'North', 3561, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 17:36:56', 'Batangas-Tabangao-Lobo Road, Ilijan, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(94, 'MDT - KAK 9684', 'AK', 'KAK 9684', 0, 14.821337, 121.049252, 14.82, 'East', 14996, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 17:32:57', 'Talisay, Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(95, 'MDT - KAK 9686', 'AK', 'KAK 9686', 0, 14.311538, 120.949432, 0, 'North-west', 2597, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-11 00:26:17', 'NGCP Dasmarinas SS, Aguinaldo Highway, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(96, 'MDT - KAK 9688', 'AK', 'KAK 9688', 0, 10.16209, 124.778152, 0, 'North', 16636, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-07 14:43:18', 'Maasin – Macrohon – Sogod Road, Lundag, Tam is, Southern Leyte, Eastern Visayas, 6600, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 3, '', 0, '0000-00-00', '0000-00-00', 0),
(97, 'MDT - KAK 9694', 'AK', 'KAK 9694', 0, 9.357115, 123.27616, 0, 'West', 28208, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-07 17:26:40', 'Calingacion Street, Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 3, '', 0, '0000-00-00', '0000-00-00', 0),
(98, 'MDT - KAK 9695', 'AK', 'KAK 9695', 0, 14.331183, 121.074768, 0, 'South', 21494, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 18:20:56', 'Tubigan, Biñan, Laguna, Calabarzon, 4024, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(99, 'MDT - KAK 9697', 'AK', 'KAK 9697', 0, 16.472648, 121.112002, 0, 'East', 12508, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 17:14:50', 'Water Tank, Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(100, 'MDT - MAK 2829', 'AK', 'MAK 2829', 0, 10.35855, 123.91859, 0, 'South', 3403, 'ACC ON,Disarm,Door Close,Power connected', '2022-10-09 15:41:11', 'NPC Road, Nasipit, Cebu City, Central Visayas, 6014, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 914, '', 0, '0000-00-00', '0000-00-00', 0),
(101, 'MDT - NEC 9786', 'AK', 'NEC 9786', 0, 14.019837, 120.753585, 0, 'East', 14268.6, 'ACC OFF,Disarm,Door Close,Power cut', '2024-05-09 18:41:40', 'Bolbok, Tuy, Batangas, Calabarzon, 4214, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 336, '', 0, '0000-00-00', '0000-00-00', 0),
(102, 'MDT - WIV 503', 'AK', 'WIV 503', 0, 9.35677, 123.27607, 0, 'North', 50974, 'ACC OFF,Disarm,Door Close,Power connected', '2025-03-04 15:36:40', 'Calingacion Street, Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 37, '', 0, '0000-00-00', '0000-00-00', 0),
(103, 'MDT - WQC 530', 'AK', 'WQC 530', 0, 14.68366, 121.020358, 0, 'North', 1794, 'ACC ON,Disarm,Door Close,Power connected', '2024-09-15 09:18:37', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 207, '', 0, '0000-00-00', '0000-00-00', 0),
(104, 'MDT KBE7027', 'AK', 'N/A', 0, 10.552953, 123.4602, 0, 'South-east', 34.0956, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:09:20', 'Bacolod North Road, San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Dumptruck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(105, 'MRR - TG500', 'AK', 'TG500', 0, 10.162262, 124.778303, 0, 'North', 494, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 09:08:09', 'Maasin – Macrohon – Sogod Road, Lundag, Tam is, Southern Leyte, Eastern Visayas, 6600, Pilipinas', '', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(106, 'P - KAN 1247', 'AK', 'KAN 1247', 0, 15.326875, 120.993732, 0, 'North', 606, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-11 00:24:57', 'Gapan, Nueva Ecija, Central Luzon, 3103, Pilipinas', '', '', 'Pumpcrete', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(107, 'RR - 1 S143J', 'AK', '1 S143J', 0, 10.55313, 123.459883, 0, 'North', 1697, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-18 16:29:52', 'Bacolod North Road, San Isidro, Calatrava, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 174, '', 0, '0000-00-00', '0000-00-00', 0),
(108, 'RR - 3 XS143J', 'AK', '3 XS143J', 0, 10.888267, 122.969282, 0, 'North', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2024-11-27 19:59:52', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', '', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 134, '', 0, '0000-00-00', '0000-00-00', 0),
(109, 'RR - KV4-II', 'AK', 'KV4', 0, 10.889015, 122.96976, 0, 'North', 47, 'ACC OFF,Disarm,Door Close,Power cut', '2022-10-09 18:15:37', 'Enrique B. Magalona, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 914, '', 0, '0000-00-00', '0000-00-00', 0),
(110, 'RR - S143J', 'AK', 'S143J', 0, 13.771158, 121.115678, 0, 'South-east', 482, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-26 02:53:09', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Road Roller', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 43, '', 0, '0000-00-00', '0000-00-00', 0),
(111, 'S - AAP 1316 (P-UP)', 'AK', 'AAP 1316 (P', 0, 14.11477, 120.81457, 0, 'North', 23466, 'ACC OFF,Disarm,Door Close,Power cut', '2024-07-04 17:27:02', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Pumpcrete', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 280, '', 0, '0000-00-00', '0000-00-00', 0),
(112, 'S - AAW 8901', 'AK', 'AAW 8901', 0, 7.910752, 123.811493, 0, 'North', 19851, 'ACC OFF,Disarm,Door Close,Power cut', '2024-05-07 10:54:16', 'Lala-Salvador-Tubod Road, Narra, Salvador, Lanao del Norte, Northern Mindanao, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 338, '', 0, '0000-00-00', '0000-00-00', 0),
(113, 'S - FFK 850', 'AK', 'FFK 850', 0, 10.56975, 123.473528, 0, 'West', 5371, 'ACC OFF,Disarm,Door Close,Power cut', '2022-10-09 17:07:09', 'Bacolod North Road, Patun-an, Calatrava, Negros Occidental, Negros Island Region, 6126, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 914, '', 0, '0000-00-00', '0000-00-00', 0),
(114, 'S - GAS 4199 (INOVA)', 'AK', 'GAS 4199 (INOVA)', 0, 14.827937, 121.04103, 0, 'North', 5407.32, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 21:45:52', 'Julio Leang Avenue, Talisay, Dulong Bayan, San Jose del Monte, Bulacan, Central Luzon, 3023, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(115, 'S - GJS 937', 'AK', 'GJS 937', 0, 14.938773, 120.842242, 0, 'East', 9, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 16:26:39', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1147, '', 0, '0000-00-00', '0000-00-00', 0),
(116, 'S - LGD 853', 'AK', 'LGD 853', 0, 14.114617, 120.814042, 0, 'North', 74524, 'ACC OFF,Disarm,Door Close,Power connected', '2024-11-18 07:16:46', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 143, '', 0, '0000-00-00', '0000-00-00', 0),
(117, 'S - NAX 3041', 'AK', 'NAX 3041', 0, 7.924372, 123.771172, 0, 'West', 32258, 'ACC OFF,Disarm,Door Close,Power connected', '2023-07-10 15:25:22', 'Durian, Maranding, Lanao del Norte, Northern Mindanao, 9211, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 640, '', 0, '0000-00-00', '0000-00-00', 0),
(118, 'S - NAZ 3423 (FX)', 'AK', 'NAZ 3423 (FX)', 0, 10.935672, 123.316225, 0, 'North-east', 111804, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 22:56:45', 'Cadiz Heights 2, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(119, 'S - NBF 6971 (P-UP)', 'AK', 'NBF 6971 (P', 0, 16.050948, 119.866828, 79.64, 'North-west', 137105, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 20:41:28', 'Zambales Highway, Cabicalan, Burgos, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(120, 'S - NBO 2732 (FX)', 'AK', 'NBO 2732 (FX)', 0, 10.358008, 123.919057, 24.08, 'South', 50284, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 16:03:27', 'NPC Road, Nasipit, Cebu City, Central Visayas, 6014, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(121, 'S - NBO 4948 (P-UP)', 'AK', 'NBO 4948 (P', 0, 16.061442, 119.871198, 25.93, 'West', 155058, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 18:37:42', 'Burgos, Pangasinan, Ilocos Region, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(122, 'S - NDJ 2285 (INOVA)', 'AK', 'NDJ 2285 (INOVA)', 0, 14.764752, 121.051143, 0, 'North', 12298, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-08 18:12:53', 'Yellow Bell Street, Barangay 174, Zone 15, Camarin, District 1, Caloocan, Northern Manila District, Metro Manila, 1422, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 2, '', 0, '0000-00-00', '0000-00-00', 0),
(123, 'S - NDP 2213 (P-UP)', 'AK', 'NDP 2213 (P', 0, 9.359938, 123.27953, 0, 'North', 112695, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 20:40:22', 'Dumaguete North Road, Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '', '', 'Pumpcrete', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(124, 'S - NER 5132 (P-UP)', 'AK', 'NER 5132 (P', 0, 9.333217, 123.294325, 0, 'North-east', 671767, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-04 09:22:03', 'Shell Select, Dumaguete North Road, Agan-an, Sibulan, Negros Oriental, Negros Island Region, 6200, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 37, '', 0, '0000-00-00', '0000-00-00', 0),
(125, 'S - NER 5149', 'AK', 'NER 5149', 0, 11.307853, 124.36824, 0, 'South-east', 80691, 'ACC ON,Disarm,Door Close,Power connected', '2023-08-13 15:30:36', 'Poblacion, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 606, '', 0, '0000-00-00', '0000-00-00', 0),
(126, 'S - NER 6695 (FX)', 'AK', 'NER 6695 (FX)', 0, 14.281735, 120.946347, 0, 'North', 138648, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-11 00:17:28', 'Langkaan Road, Langkaan 1, Langkaan, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(127, 'S - NER 6743 (FX)', 'AK', 'NER 6743 (FX)', 0, 9.363952, 123.271938, 25.93, 'South-east', 121171, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 16:55:29', 'Looc, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(128, 'S - NER 6825 (FX)', 'AK', 'NER 6825 (FX)', 0, 14.309355, 120.945075, 0, 'Southwest', 105256, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 22:46:50', 'Acotina Street, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(129, 'S - NER 9197 (FX)', 'AK', 'NER 9197 (FX)', 0, 10.160253, 124.780713, 0, 'Southwest', 78447, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 18:47:11', 'Maasin – Macrohon – Sogod Road, Lundag, Tam is, Southern Leyte, Eastern Visayas, 6600, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(130, 'S - NFJ 2104 (P-UP)', 'AK', 'NFJ 2104 (P', 0, 15.819437, 119.95688, 0, 'South', 161096, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 22:15:35', 'Nangalisan, Infanta, Pangasinan, Ilocos Region, 2412, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(131, 'S - NFK 7361 (FX)', 'AK', 'NFK 7361 (FX)', 0, 13.995802, 120.704932, 14.82, 'South', 134187, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 19:02:02', 'Malibu, Tuy, Batangas, Calabarzon, 4214, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(132, 'S - NFK 9367 (FX)', 'AK', 'NFK 9367 (FX)', 0, 14.432415, 121.047115, 0, 'North', 84896, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-11 00:25:23', 'Cupang, Muntinlupa District 2, Muntinlupa, Southern Manila District, Metro Manila, 1771, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(133, 'S - NFL 2242 (FX)', 'AK', 'NFL 2242 (FX)', 0, 11.304343, 124.37576, 45.36, 'East', 89559, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 17:38:30', 'Tabango-Villaba Road, Masisi, Catmon, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0);
INSERT INTO `devices` (`id`, `target_name`, `type`, `license_plate_no`, `speed_limit`, `latitude`, `longitude`, `speed`, `direction`, `total_mileage`, `status`, `position_time`, `address`, `cut_address`, `gps_id`, `equipment_type`, `conduction_sticker`, `tag`, `specs`, `physical_status`, `assignment`, `date_transferred`, `days_contract`, `date_ended`, `days_elapsed`, `remarks`, `days_no_gps`, `last_assignment`, `last_days_contract`, `last_date_transferred`, `last_date_ended`, `last_days_elapsed`) VALUES
(134, 'S - NFL 9736', 'AK', 'NFL 9736', 0, 10.923435, 124.43644, 0, 'North', 26.5734, 'ACC OFF,Disarm,Door Close,Power connected', '2023-07-29 23:48:40', 'M. L. Quezon Street, Marvel, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 621, '', 0, '0000-00-00', '0000-00-00', 0),
(135, 'S - NGX 1474 (P-UP)', 'AK', 'NGX 1474 (P', 0, 13.634452, 121.132597, 48.15, 'West', 141850, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 22:07:25', 'Batangas-Tabangao-Lobo Road, Dela Paz Pulot Aplaya, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(136, 'S - NGX 9585 (P-UP)', 'AK', 'NGX 9585 (P', 0, 14.079237, 120.845273, 44.45, 'North-west', 120024, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-10 20:01:26', 'Amuyong-Kaytitinga Road, Amuyong, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(137, 'S - NIB 3802 (DMAX)', 'AK', 'NIB 3802 (DMAX)', 0, 10.887195, 122.970088, 0, 'North-east', 24325, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 09:58:02', 'Minisca, Enrique B. Magalona, Negros Occidental, Negros Island Region, 6118, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(138, 'S - NIE 4645 (INOVA)', 'AK', 'NIE 4645 (INOVA)', 0, 14.309375, 120.944987, 0, 'South-east', 2564, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-06 11:26:14', 'Mimosa, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(139, 'S - NIE 7803 (INOVA)', 'AK', 'NIE 7803 (INOVA)', 0, 15.30045, 120.011717, 16.67, 'South', 89, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 10:27:12', 'Zambales Highway, Purok 2, Bancal, Zambales, Central Luzon, 2201, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(140, 'S - NIE 7804 (INOVA)', 'AK', 'NIE 7804 (INOVA)', 0, 14.86564, 120.495588, 0, 'North-east', 359.404, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 08:57:21', 'Purok 1, Balsik, Hermosa, Bataan, Central Luzon, 2111, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(141, 'S - NIE 8987 (INOVA)', 'AK', 'NIE 8987 (INOVA)', 0, 14.02859, 121.590105, 0, 'Southwest', 84563, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-06 11:27:29', 'Quezon Avenue, Angustias Zone IV, Sitio White House, San Roque, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(142, 'S - NIE 8988 (INOVA)', 'AK', 'NIE 8988 (INOVA)', 0, 17.643632, 121.744147, 0, 'South', 78533, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:21:18', 'Taurus Street, Pengue, Tuguegarao, Cagayan, Cagayan Valley, 3500, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(143, 'S - NIE 8989 (INOVA)', 'AK', 'NIE 8989 (INOVA)', 0, 9.299033, 123.306512, 11.11, 'North-east', 139502, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:12:41', 'Dumaguete Business Park Road 2, Canday-ong, Calindagan, Dumaguete, Negros Oriental, Negros Island Region, 6200, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(144, 'S - NIG 9368 (LTACE)', 'AK', 'NIG 9368 (LTACE)', 0, 15.954715, 120.401628, 0, 'North-east', 38665.5, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-05 22:46:42', 'Ican, Balingueo, Pangasinan, Ilocos Region, 2421, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(145, 'S - NIH 2946 (LTACE)', 'AK', 'NIH 2946 (LTACE)', 0, 14.009267, 120.728573, 0, 'South', 77885.7, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-08 14:00:25', 'Tuy - Balayan Road, Tuyon-tuyon, Tuy, Batangas, Calabarzon, 4214, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 56, '', 0, '0000-00-00', '0000-00-00', 0),
(146, 'S - NIH 5592 (LTACE)', 'AK', 'NIH 5592 (LTACE)', 0, 14.316873, 121.063977, 0, 'Southwest', 30071.4, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:27:13', 'Fast Food Section, Market Road, Maduya, Carmona, Cavite, Calabarzon, 4116, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(147, 'S - NIH 9850 (LTACE)', 'AK', 'NIH 9850 (LTACE)', 0, 15.812575, 121.108125, 0, 'North', 70938, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:24:30', 'San Juan-Fatima Road, Fatima, Pantabangan, Nueva Ecija, Central Luzon, 3124, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(148, 'S - NII 6049 (P-UP)', 'AK', 'NII 6049 (P', 0, 10.891545, 123.41709, 0, 'South', 139937, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:26:24', 'Sagay, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(149, 'S - NII 6050 (P-UP)', 'AK', 'NII 6050 (P', 0, 15.178912, 120.050317, 16.67, 'East', 63576, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:25:29', 'Santa Rita, Zambales, Central Luzon, 2203, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(150, 'S - NII 6801 (LTACE)', 'AK', 'NII 6801 (LTACE)', 0, 13.7706, 121.115815, 0, 'North', 954, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:25:58', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 8, '', 0, '0000-00-00', '0000-00-00', 0),
(151, 'S - NIJ 3629 (INOVA)', 'AK', 'NIJ 3629 (INOVA)', 0, 14.683345, 121.020667, 0, 'South-east', 48544, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:25:02', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(152, 'S - NIJ 5997 (HIACE)', 'AK', 'NIJ 5997 (HIACE)', 0, 14.635098, 120.997078, 27.78, 'South-east', 47099.1, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-05 15:58:04', 'Apple Tree Integrated School - Therapy Department, 199, D. Tuazon Street, Maharlika, Santa Mesa Heights, 1st District, Quezon City, Eastern Manila District, Metro Manila, 1114, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(153, 'S - NIL 1776 (FX)', 'AK', 'NIL 1776 (FX)', 0, 11.220428, 124.552933, 0, 'North', 81815, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-27 00:35:12', 'Santo Domingo, Kananga, 4th District, Leyte, Eastern Visayas, 6531, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 38, '', 0, '0000-00-00', '0000-00-00', 0),
(154, 'S - NIL 1777 (FX)', 'AK', 'NIL 1777 (FX)', 0, 16.061388, 119.871305, 0, 'South', 93645, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-06 11:26:24', 'Burgos, Pangasinan, Ilocos Region, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(155, 'S - NIL 1778 (FX)', 'AK', 'NIL 1778 (FX)', 0, 16.517637, 121.18201, 0, 'East', 77879, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:27:21', 'J. P. Rizal Avenue, Poblacion North, Solano, Nueva Vizcaya, Cagayan Valley, 2709, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(156, 'S - NIM 3732 (FX)', 'AK', 'NIM 3732 (FX)', 0, 15.31914, 120.93788, 18.63, 'East', 167.077, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-29 08:19:47', 'Dr. Gloria D. Lacson Foundation Colleges Inc., Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 387, '', 0, '0000-00-00', '0000-00-00', 0),
(157, 'S - NKA 3978 (FX)', 'AK', 'NKA 3978 (FX)', 0, 14.308733, 120.944327, 0, 'North-west', 42109.1, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-06 11:26:50', 'San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(158, 'S - NKA 3980 (FX)', 'AK', 'NKA 3980 (FX)', 0, 16.474445, 121.117978, 0, 'South-east', 42117, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-06 09:13:54', 'Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(159, 'S - NKE 7796 (FX)', 'AK', 'NKE 7796 (FX)', 0, 14.683435, 121.020683, 0, 'North-west', 11404, 'ACC OFF,Disarm,Door Close,Power cut', '2024-12-30 13:55:42', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 96, '', 0, '0000-00-00', '0000-00-00', 0),
(160, 'S - NKG 5811 (P-UP)', 'AK', 'NKG 5811 (P', 0, 15.322417, 120.938185, 0, 'East', 10952, 'ACC OFF,Disarm,Door Close,Power cut', '2025-03-22 01:53:14', 'Citi Hardware, Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 15, '', 0, '0000-00-00', '0000-00-00', 0),
(161, 'S - NKG 5934 (P-UP)', 'AK', 'NKG 5934 (P', 0, 13.761635, 121.063883, 27.85, 'North', 11644.2, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:27:18', 'P. Herrera Street, Barangay 6, Poblacion, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 15, '', 0, '0000-00-00', '0000-00-00', 0),
(162, 'S - NKJ 8933 (P-UP)', 'AK', 'NKJ 8933 (P', 0, 13.770913, 121.116125, 0, 'West', 22958.1, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-06 11:24:19', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(163, 'S - NKJ 9173 (P-UP)', 'AK', 'NKJ 9173 (P', 0, 15.307327, 121.02104, 0, 'South', 28320, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-06 11:26:29', 'Mabunga, Gapan, Nueva Ecija, Central Luzon, 3103, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(164, 'S - NKJ 9478 (P-UP)', 'AK', 'NKJ 9478 (P', 0, 15.997838, 119.911563, 0, 'North', 38591, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:07:33', 'Dasol-Mabini Road, Malimpin, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(165, 'S - NKJ 9753 (P-UP)', 'AK', 'NKJ 9753 (P', 0, 16.061915, 119.87082, 0, 'South', 34405, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-02 11:10:28', 'Burgos, Pangasinan, Ilocos Region, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(166, 'S - NQX 856', 'AK', 'NQX 856', 0, 10.898118, 123.417142, 0, 'North', 16472, 'ACC OFF,Disarm,Door Close,Power connected', '2024-09-16 09:50:38', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 198, '', 0, '0000-00-00', '0000-00-00', 0),
(167, 'S - PXI 203 (INOVA)', 'AK', 'PXI 203 (INOVA)', 0, 14.28237, 120.945408, 0, 'North', 59594, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-02 10:55:14', 'Fortune Street, Langkaan 1, Langkaan, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(168, 'S - PXI 341', 'AK', 'PXI 341', 0, 10.898063, 123.417183, 0, 'North', 46519, 'ACC ON,Disarm,Door Close,Power connected', '2024-05-09 09:41:01', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 328, '', 0, '0000-00-00', '0000-00-00', 0),
(169, 'S - SBD 99', 'AK', 'SBD 99', 0, 15.574935, 120.92073, 0, 'North', 20927, 'ACC OFF,Disarm,Door Close,Power cut', '2024-05-28 11:25:50', 'Maharlika Highway, Poblacion Sur, Sampaloc, Talavera, Nueva Ecija, Central Luzon, 3133, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 308, '', 0, '0000-00-00', '0000-00-00', 0),
(170, 'S - SPC 17 (INOVA)', 'AK', 'SPC 17 (INOVA)', 0, 9.726705, 122.928438, 0, 'Southwest', 156364, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:08:17', 'Poblacion, Mabinay, Negros Oriental, Negros Island Region, 6207, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(171, 'S - URB 214', 'AK', 'URB 214', 0, 7.020392, 125.501783, 0, 'North', 15994, 'ACC ON,Disarm,Door Close,Power connected', '2023-07-27 13:11:39', 'De Guzman Street, Purok 20, Crossing Bayabas, Toril, Davao City, Davao Region, 8025, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 614, '', 0, '0000-00-00', '0000-00-00', 0),
(172, 'S - XRB 112 (L300)', 'AK', 'XRB 112 (L300)', 0, 14.019507, 120.753835, 0, 'South', 21395, 'ACC ON,Disarm,Door Close,Power connected', '2024-10-31 07:38:12', 'Bolbok, Tuy, Batangas, Calabarzon, 4214, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 153, '', 0, '0000-00-00', '0000-00-00', 0),
(173, 'SD - MBH - IHI', 'AK', 'MBH', 0, 10.934437, 123.285218, 0, 'North', 92, 'ACC ON,Disarm,Door Close,Power connected', '2023-03-03 15:41:26', 'Daga, Tinampa-an, Cadiz, Negros Occidental, Negros Island Region, 6121, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 760, '', 0, '0000-00-00', '0000-00-00', 0),
(174, 'SD - MDT - KAK 9692', 'AK', 'MDT', 9369160000, 7.910693, 123.811383, 0, 'North', 16160, 'ACC OFF,Disarm,Door Close,Power cut', '2023-03-18 13:37:22', 'Lala-Salvador-Tubod Road, Narra, Salvador, Lanao del Norte, Northern Mindanao, Pilipinas', '', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 745, '', 0, '0000-00-00', '0000-00-00', 0),
(175, 'SD - S - CHEVROLET', 'AK', 'S', 9369160000, 10.926763, 124.439553, 0, 'South', 63196, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-02 10:49:58', 'Palompon-Isabel Road, San Roque, Isabel, 4th District, Leyte, Eastern Visayas, 6539, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(176, 'SKD - BOBCAT S130', 'AK', 'BOBCAT S130', 0, 10.038773, 123.440547, 0, 'North', 1047, 'ACC OFF,Disarm,Door Close,Power cut', '2025-01-22 15:54:59', 'Dumanjug, Cebu, Central Visayas, 6035, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 69, '', 0, '0000-00-00', '0000-00-00', 0),
(177, 'SKD - BOBCAT S150', 'AK', 'BOBCAT S150', 0, 7.91164, 123.81404, 0, 'North', 878, 'ACC OFF,Disarm,Door Close,Power cut', '2022-06-22 21:04:57', 'Lala-Salvador-Tubod Road, Narra, Salvador, Lanao del Norte, Northern Mindanao, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1014, '', 0, '0000-00-00', '0000-00-00', 0),
(178, 'SLD - KAE 6026', 'AK', 'KAE 6026', 0, 14.114522, 120.814103, 0, 'North-east', 36778, 'ACC ON,Disarm,Door Close,Power cut', '2025-04-02 11:08:39', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(179, 'SLD - KAE 6027', 'AK', 'KAE 6027', 0, 14.683415, 121.020558, 0, 'North', 30435, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-31 21:05:53', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(180, 'SLD - KAE 6028', 'AK', 'KAE 6028', 0, 16.017028, 119.867995, 0, 'North', 44927, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-02 11:07:50', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(181, 'SLD - KAE 6029', 'AK', 'KAE 6029', 0, 15.324665, 120.936883, 0, 'North', 3471, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:10:20', 'Ka Edgar Kambingan Bulaluhan, Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', '', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(182, 'SLD - NCR 7275', 'AK', 'NCR 7275', 0, 15.986743, 119.87515, 0, 'South', 66933, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:09:17', 'Zambales Highway, Dasol, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(183, 'SLD - NDP 1833', 'AK', 'NDP 1833', 0, 9.391067, 123.257702, 0, 'South', 64345, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 17:04:16', 'Dumaguete North Road, Señora Ascion, San Jose, Negros Oriental, Negros Island Region, 6202, Pilipinas', '', '', 'Selfloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(184, 'S-NIM 3732 (FX)', 'AK', 'NIM 3732 (FX)', 0, 15.31914, 120.93788, 18.63, 'East', 167.077, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-29 08:19:47', 'Dr. Gloria D. Lacson Foundation Colleges Inc., Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3105, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 4, '', 0, '0000-00-00', '0000-00-00', 0),
(185, 'ST - MFG 773', 'AK', 'MFG 773', 0, 14.683843, 121.020278, 0, 'North-east', 32781, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 10:56:40', 'San Lorenzo Ruiz Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(186, 'ST - NBP 9217', 'AK', 'NBP 9217', 0, 14.112202, 120.817683, 0, 'South-east', 22902.5, 'ACC ON,Disarm,Door Close,Power connected', '2024-09-30 13:48:27', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 183, '', 0, '0000-00-00', '0000-00-00', 0),
(187, 'ST - NCA 2535', 'AK', 'NCA 2535', 0, 14.114582, 120.814133, 0, 'North', 381, 'ACC ON,Disarm,Door Close,Power connected', '2023-09-17 11:43:39', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 562, '', 0, '0000-00-00', '0000-00-00', 0),
(188, 'TH - (CHASSIS 4780)', 'AK', '(CHASSIS 4780)', 0, 15.300327, 120.011765, 0, 'South', 2268, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 11:10:23', 'Zambales Highway, Purok 2, Bancal, Zambales, Central Luzon, 2201, Pilipinas', '', '', 'Service', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(189, 'TH - CAG 6031', 'AK', 'CAG 6031', 0, 14.683503, 121.02084, 0, 'North', 54773, 'ACC ON,Disarm,Door Close,Power connected', '2025-03-21 23:06:01', 'Pugo Street, Talipapa, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1402, Pilipinas', '', '', 'Grader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 11, '', 0, '0000-00-00', '0000-00-00', 0),
(190, 'TH - KBA 5796', 'AK', 'KBA 5796', 0, 15.325708, 120.937133, 0, 'North', 5, 'ACC OFF,Disarm,Door Close,Power cut', '2025-02-05 14:22:00', 'Maharlika Highway, Castellano, San Roque, San Leonardo, Nueva Ecija, Central Luzon, 3102, Pilipinas', '', '', 'Tractor Head', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 55, '', 0, '0000-00-00', '0000-00-00', 0),
(191, 'TH - RNW 417', 'AK', 'RNW 417', 0, 14.114743, 120.814393, 0, 'East', 128057, 'ACC ON,Disarm,Door Close,Power cut', '2024-10-03 08:29:24', 'Kaytitinga-Magallanes Road, Purok 3, Kaytitinga II, Alfonso, Cavite, Calabarzon, 4123, Pilipinas', '', '', 'Tractor Head', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 181, '', 0, '0000-00-00', '0000-00-00', 0),
(192, 'WLD - 1', 'AK', '1', 0, 14.01665, 120.754478, 0, 'North', 4643, 'ACC ON,Disarm,Door Close,Power connected', '2025-02-26 10:45:25', 'Luna-Magahis Road, Luna, Mataywanac, Tuy, Batangas, Calabarzon, 4214, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 35, '', 0, '0000-00-00', '0000-00-00', 0),
(193, 'WLD - 2', 'AK', '2', 0, 13.770342, 121.115945, 0, 'North', 3948, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 09:01:16', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1, '', 0, '0000-00-00', '0000-00-00', 0),
(194, 'WLD - 3', 'AK', '3', 500, 14.683545, 121.020458, 0, 'North', 5956, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-01 12:19:17', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(195, 'WLD - ALLIANCE', 'AK', 'ALLIANCE', 0, 16.017405, 119.870245, 0, 'North', 55613, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-02 10:56:32', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(196, 'WLD - WA200', 'AK', 'WA200', 0, 14.683658, 121.020275, 0, 'North', 197, 'ACC ON,Disarm,Door Close,Power connected', '2023-06-01 08:13:57', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Wheelloader', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 671, '', 0, '0000-00-00', '0000-00-00', 0),
(197, 'AK-32046', 'AK', '32046', 0, 14.938823, 120.842017, 0, 'North', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 10:59:26', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 427, '', 0, '0000-00-00', '0000-00-00', 0),
(198, '*S - NIM 3732 (FX)', 'AK', 'NIM 3732 (FX)', 0, 14.312783, 120.947343, 0, 'Southwest', 7670.42, 'ACC OFF,Disarm,Door Close,Power cut', '2024-03-15 00:12:12', 'Aguinaldo Highway, San Agustin 2, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', 'Cavite, Calabarzon', '', 'GPS Device not Working', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 396, '', 0, '0000-00-00', '0000-00-00', 0),
(199, 'AAV 6960', 'AK', 'N/A', 0, 11.322898, 124.342302, 0, 'North', 12293, 'ACC ON,Disarm,Door Close,Power connected', '2024-04-12 14:44:16', 'Tabing – Kawayan – Santa Rosa – Lawis – Tabango Road, Tugas, Tabango, 3rd District, Leyte, Eastern Visayas, 6536, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 358, '', 0, '0000-00-00', '0000-00-00', 0),
(200, 'H2O - MAH 8320', 'AK', 'MAH 8320', 0, 10.89803, 123.417147, 0, 'East', 1145, 'ACC OFF,Disarm,Door Close,Power cut', '2023-03-23 14:31:11', 'Bacolod North Road, Sagay, Negros Occidental, Negros Island Region, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 749, '', 0, '0000-00-00', '0000-00-00', 0),
(201, 'MBH - E-122', 'AK', 'E', 0, 14.310963, 120.9541, 0, 'North-east', 17, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-10 07:58:41', 'Burgundy Street, San Agustin 1, San Agustin, Dasmariñas, Cavite, Calabarzon, 4114, Pilipinas', '', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(202, 'MBH - E-123', 'AK', 'E', 0, 16.471878, 121.111038, 0, 'West', 43, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:26:08', 'NGCP Helipad, Busilac Barangay Road, Busilac, Nueva Vizcaya, Cagayan Valley, 3700, Pilipinas', '', '', 'Mini Backhoe', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(203, 'MDT - KBE 7027', 'AK', 'KBE 7027', 0, 9.356533, 123.276295, 0, 'North', 207, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-11 00:24:59', 'Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '', '', 'Dumptruck', '', '', '', '', 'Bayombong Substation', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(204, 'AK-48500', 'AK', '48500', 0, 14.938688, 120.842118, 0, 'North', 34, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 17:19:14', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 1151, '', 0, '0000-00-00', '0000-00-00', 0),
(205, 'MANLIFT', 'AK', 'N/A', 0, 14.683462, 121.020542, 0, 'South', 11, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-11 00:26:05', 'Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas', '', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(206, 'AK-31731', 'AK', '31731', 0, 14.938875, 120.842117, 0, 'West', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 11:30:32', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'Not Specified Yet', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(207, 'CMT - 1-380089', 'AK', '1', 9454020000, 16.01718, 119.870777, 0, 'East', 2205, 'ACC OFF,Disarm,Door Close,Power cut', '2025-04-14 12:03:36', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(208, 'CMT - 2-380090', 'AK', '2', 9454280000, 16.017458, 119.87052, 0, 'East', 1798, 'ACC OFF,Disarm,Door Close,Power connected', '2025-04-15 08:30:59', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(209, 'CMT - 3-380091', 'AK', '3', 9454280000, 16.017345, 119.870162, 0, 'North', 18572, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 07:58:08', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(210, 'CMT - 4-3890092', 'AK', '4', 9454280000, 16.017013, 119.870417, 0, 'North', 60, 'ACC ON,Disarm,Door Close,Power connected', '2024-06-20 16:41:20', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(211, 'CMT - 5-3890093', 'AK', '5', 9454280000, 16.016917, 119.868235, 0, 'South-east', 324, 'ACC OFF,Disarm,Door Close,Power cut', '2024-06-20 09:50:59', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(212, 'CMT - 6-380094', 'AK', '6', 9454280000, 16.017468, 119.87028, 0, 'North', 17363, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:34:32', 'Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas', 'Pangasinan, Ilocos Region', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0),
(213, 'CMT - 7-E116', 'AK', '7', 9672140000, 13.770427, 121.116045, 0, 'North', 381, 'ACC ON,Disarm,Door Close,Power connected', '2025-04-15 08:35:33', 'Mahacot Barangay Road, Mahacot Kanluran, Batangas, Calabarzon, 4200, Pilipinas', 'Batangas, Calabarzon', '', 'Concrete Mixer Truck', '', '', '', '', '', '0000-00-00', 0, '0000-00-00', 0, '', 0, '', 0, '0000-00-00', '0000-00-00', 0);

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

--
-- Dumping data for table `geofence`
--

INSERT INTO `geofence` (`id`, `target_name`, `status`, `timestamp`) VALUES
(1, 'AK-48500', 'Outside Geofence - Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', '2025-04-10 13:19:27'),
(2, '*BT - NCB 4780', 'Within Geofence', '2025-04-10 13:19:27'),
(3, '*MDT - KAK 9680', 'Outside Geofence - Tayabas-Pagbilao Road, Mateuna, San Diego, Tayabas, Quezon, Calabarzon, 4327, Pilipinas', '2025-04-10 13:19:28'),
(4, 'MDT - KBE 7027', 'Outside Geofence - Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '2025-04-10 13:21:45'),
(6, 'AK-48dafgwegwegwed', 'Outside Geofence - Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', '2025-04-11 00:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `komtrax`
--

CREATE TABLE `komtrax` (
  `id` int(11) NOT NULL,
  `target_name` varchar(255) DEFAULT NULL,
  `equipment_type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position_time` datetime NOT NULL,
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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `target_name`, `status`, `timestamp`) VALUES
(1, 'AK-48500', 'Outside Geofence - Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', '2025-04-06 23:22:02'),
(2, '*BT - NCB 4780', 'Within Geofence', '2025-04-06 23:22:02'),
(3, '*MDT - KAK 9680', 'Within Geofence', '2025-04-06 23:22:02'),
(4, 'MDT - KBE 7027', 'Outside Geofence - Campaclan, Sibulan, Negros Oriental, Negros Island Region, 6201, Pilipinas', '2025-04-06 23:22:08');

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
(2, 'joshua', 'garcia', 'joshuagarcia', '$2y$10$7lB6g7oYbTfholOYw1mN0OXANtexjQxaKxikhOxMxh6eWM8wThete', 'Logistics'),
(3, 'Juan', 'Dela Cruz', 'Juan', '$2y$10$CRp/a72GbTK0SisQlC3jlenn1umjciCO0.6o5QN62ZJYBH2JISzki', 'Admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `geofence`
--
ALTER TABLE `geofence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `komtrax`
--
ALTER TABLE `komtrax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
