-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 01:52 AM
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
(1, 'Stockyard', '9.356694, 123.276194\n', 'Magatas, Sibulan, Negros Oriental'),
(2, 'Amlan Substation', '9.457370215462012, 123.22470480970897', ''),
(3, 'DIVING BUS', '9.456756913285448, 121.22618077434294', ''),
(4, 'AD-1', '9.456398306309401, 121.2264181633201', ''),
(5, 'AD-2', '9.455114513585624, 121.22664272506542', ''),
(6, 'AD-3', '9.452179081445482, 121.22650566133397', ''),
(7, 'AD-4', '9.450287103079821, 121.22641724169536', ''),
(8, 'AD-5', '9.448596745010542, 121.22633832845315', ''),
(9, 'AD-6', '9.446279066736768, 121.22658210988436', ''),
(10, 'AD-7', '9.443488394194404, 121.2268756759535', ''),
(11, 'AD-8', '9.441760533305475, 121.22705744406302', ''),
(12, 'AD-9', '9.439204774470069, 121.2273262912881', ''),
(13, 'AD-10', '9.43687977043769, 121.22757087592652', ''),
(14, 'AD-11', '9.435395551875867, 121.22764934848873', ''),
(15, 'AD-12', '9.433544957721761, 121.22774707716327', ''),
(16, 'AD-13', '9.431763804700628, 121.22784120629457', ''),
(17, 'AD-14', '9.429152609962276, 121.22797924958998', ''),
(18, 'AD-15', '9.426806341060189, 121.22810316176896', ''),
(19, 'AD-16', '9.424091330753924, 121.22885330176257', ''),
(20, 'AD-17', '9.41887725466808, 121.23029368026256', ''),
(21, 'AD-18', '9.416166760935239, 121.2310424244834', ''),
(22, 'AD-19', '9.413268517716753, 121.23157497034808', ''),
(23, 'AD-20', '9.410207687381371, 121.23213745122786', ''),
(24, 'AD-21', '9.40790461715895, 121.23256084436636', ''),
(25, 'AD-22', '9.401847598565515, 121.23341382294626', ''),
(26, 'AD-23', '9.400030082640312, 121.23366987121156', ''),
(27, 'AD-24', '9.398147009277547, 121.23393507082243', ''),
(28, 'AD-25', '9.396192772098487, 121.23421032838225', ''),
(29, 'AD-26', '9.391504767418088, 121.2354170530611', ''),
(30, 'AD-27', '9.3890963866804, 121.23481513899739', ''),
(31, 'AD-28', '9.387481386515336, 121.23506389167383', ''),
(32, 'AD-29', '9.386005766569259, 121.23529104519166', ''),
(33, 'AD-30', '9.381749210896862, 121.23594654846087', ''),
(34, 'AD-31', '9.378667450092832, 121.23642107628537', ''),
(35, 'AD-32', '9.376631087537453, 121.23673467402185', ''),
(36, 'AD-33', '9.373302375408167, 121.23724717513113', ''),
(37, 'AD-34', '9.368983511690246, 121.23791215318018', ''),
(38, 'AD-35', '9.36623850177633, 121.23789252089428', ''),
(39, 'AD-36', '9.363104614887447, 121.23787017820423', ''),
(40, 'AD-37', '9.36266472898935, 121.23661992328157', ''),
(41, 'AD-38', '9.35676682321889, 121.23717352972547', ''),
(42, 'AD-39', '9.354552447989803, 121.23447357130006', ''),
(43, 'AD-40', '9.352152959908778, 121.23352070257327', ''),
(44, 'AD-41', '9.34946533055194, 121.2356941981346', ''),
(45, 'AD-42', '9.348287690167648, 121.2366474008729', ''),
(46, 'AD-43', '9.344828933912455, 121.23944693657195', ''),
(47, 'AD-44', '9.342998228824747, 121.24092859332944', ''),
(48, 'AD-45', '9.341251468078092, 121.24234228818712', ''),
(49, 'AD-46', '9.339866648116873, 121.24346308305303', ''),
(50, 'AD-47', '9.336912571241433, 121.24444008139893', ''),
(51, 'AD-48', '9.33367624192248, 121.2455103641289', ''),
(52, 'AD-49', '9.33055430742809, 121.2465338785979', ''),
(53, 'AD-50', '9.328662035526897, 121.2468509558449', ''),
(54, 'AD-51', '9.32813385392594, 121.24752833776085', ''),
(55, 'AD-52', '9.324039942559482, 121.24811917186304', ''),
(56, 'AD-53', '9.321892138932643, 121.24852561619085', ''),
(57, 'AD-54', '9.3202040569539, 121.24895539831654', ''),
(58, 'AD-55', '9.31786765538547, 121.25131752236919', ''),
(59, 'AD-55A', '9.316310227537269, 121.25107004373542', ''),
(60, 'AD-56', '9.31582703451089, 121.25175305215024', ''),
(61, 'AD-56A', '9.314378344211491, 121.24859889531913', ''),
(62, 'AD-57', '9.313722542581004, 121.24835031262278', ''),
(63, 'AD-58', '9.312140541825366, 121.2482172718006', ''),
(64, 'AD-58A', '9.311745342910541, 121.24759309438491', ''),
(65, 'AD-59', '9.311200693953591, 121.24612378879785', ''),
(66, 'AD-60', '9.310683159791159, 121.24583976928373', ''),
(67, 'AD-61', '9.308333706268142, 121.24335393933102', ''),
(68, 'AD-62', '9.306020400935703, 121.24377181113547', '');

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
(1, 'Stockyard', '16.017694, 119.870722\n', 'Bobonot, Dasol, Pangasinan'),
(3, 'CB-291', '119.9564292206,15.822197528', ''),
(4, 'CB-292', '119.9557099831,15.8253750094', ''),
(5, 'CB-293', '119.9549507933,15.8287291251', ''),
(6, 'CB-294', '119.9543714463,15.8312888468', ''),
(7, 'CB-315', '119.9182854268,15.8920718917', ''),
(8, 'CB-316', '119.9160132328,15.8950534054', ''),
(9, 'CB-317', '119.9141843565,15.8974530455', ''),
(10, 'CB-318', '119.9120783121,15.900216305', ''),
(11, 'CB-320', '119.9072839763,15.9065062494', ''),
(12, 'CB-321', '119.9055102788,15.9088330771', ''),
(13, 'CB-322', '119.9042077264,15.9105418856', ''),
(14, 'CB-323', '119.9018518811,15.9136322115', ''),
(15, 'CB-324', '119.8995791939,15.9166135152', ''),
(16, 'CB-325', '119.8978053169,15.9189402645', ''),
(17, 'CB-326', '119.8958050954,15.9215639207', ''),
(18, 'CB-331', '119.8896449276,15.935793065', ''),
(19, 'CB-333', '119.8885133323,15.9422059523', ''),
(20, 'CB-334', '119.8880889042,15.9446107917', ''),
(21, 'CB-335', '119.8874288019,15.9483516125', ''),
(22, 'CB-336', '119.8867293351,15.9523151296', ''),
(23, 'CB-337', '119.8860611759,15.9561005324', ''),
(24, 'CB-338', '119.8856524898,15.9584162608', ''),
(25, 'CB-339', '119.8849135909,15.9626023851', ''),
(26, 'CB-340', '119.8843162348,15.9659869538', ''),
(27, 'CB-341', '119.8837769139,15.9690422021', ''),
(28, 'CB-342', '119.8854204905,15.9723882044', ''),
(29, 'CB-343', '119.8873448021,15.9763055429', ''),
(30, 'CB-344', '119.8888281446,15.9793251355', ''),
(31, 'CB-345', '119.8903516131,15.9824263436', ''),
(32, 'CB-346', '119.8921557453,15.9860987', ''),
(33, 'CB-347', '119.8939700061,15.9897916098', ''),
(34, 'CB-348', '119.8955944035,15.9928445173', ''),
(35, 'CB-349', '119.8973470875,15.9961384256', ''),
(36, 'CB-350', '119.899741132,16.0006373838', ''),
(37, 'CB-351', '119.9015855841,16.0041033181', ''),
(38, 'CB-352', '119.9030727553,16.0062935465', ''),
(39, 'CB-353', '119.9049189714,16.0090124861', ''),
(40, 'CB-354', '119.906713895,16.0116557896', ''),
(41, 'CB-355', '119.9083037677,16.0139970505', ''),
(42, 'CB-356', '119.9102191668,16.0168181364', ''),
(43, 'CB-357', '119.9124320625,16.0191466474', ''),
(44, 'CB-358', '119.9147078971,16.0215416914', ''),
(45, 'CB-359 ', '119.9168573524,16.0238036065', ''),
(46, 'CB-360', '119.9191332925,16.0261986085', ''),
(47, 'CB-361', '119.9213461116,16.0285270393', ''),
(48, 'CB-362', '119.9238750433,16.0311880271', ''),
(49, 'CB-363', '119.926467313,16.0339156279', ''),
(50, 'CB-364', '119.9285538591,16.0361108831', ''),
(51, 'CB-365', '119.9304181886,16.0387893271', ''),
(52, 'CB-366', '119.9324272373,16.0412527976', ''),
(53, 'CB-367', '119.9346492733,16.0430355663', ''),
(54, 'CB-368', '119.9366985716,16.0446797469', ''),
(55, 'CB-369', '119.9391253133,16.0474285205', ''),
(56, 'CB-370', '119.9408241014,16.0493526659', ''),
(57, 'CB-371', '119.942765637,16.0515516881', ''),
(58, 'CB-372', '119.9461633978,16.0553999001', ''),
(59, 'CB-373', '119.9487117131,16.0582859789', ''),
(60, 'CB-374', '119.9505320987,16.0603474529', ''),
(61, 'CB-375', '119.95277714,16.0628899922', ''),
(62, 'CB-376', '119.9550594943,16.0654745248', ''),
(63, 'CB-377', '119.9590315892,16.0668612926', ''),
(64, 'CB-378', '119.9605135324,16.0701500865', ''),
(65, 'CB-379', '119.9628910609,16.0721881599', ''),
(66, 'CB-380', '119.9655873911,16.0744993754', ''),
(67, 'CB-381', '119.9681491513,16.0766952442', ''),
(68, 'CB-382', '119.9724916002,16.0777829611', ''),
(69, 'CB-383', '119.9751604182,16.0784514812', ''),
(70, 'CB-384', '119.9779687031,16.0791538935', ''),
(71, 'CB-385', '119.9816741666,16.0800827463', ''),
(72, 'CB-386', '119.9849311736,16.0808983576', ''),
(73, 'CB-387', '119.9880976713,16.0816912617', ''),
(74, 'CB-388', '119.9914815849,16.0825385533', ''),
(75, 'CB-389', '119.9948888639,16.0819689794', ''),
(76, 'CB-390', '119.9980200068,16.0814454879', ''),
(77, 'CB-391', '120.0011510416,16.08092204', ''),
(78, 'CB-392', '120.0044631223,16.080186867', ''),
(79, 'CB-393', '120.0077814133,16.0798132', ''),
(80, 'CB-394', '120.0110045375,16.0792742213', ''),
(81, 'CB-395', '120.0143196856,16.0787196264', ''),
(82, 'CB396-', '120.0177085223,16.0781527597', ''),
(83, 'CB-397', '120.0209499345,16.0776104601', ''),
(84, 'CB-398', '120.0243571678,16.0770404056', ''),
(85, 'CB-399', '120.0277246538,16.0771028184', ''),
(86, 'CB-400', '120.0310912111,16.0771651733', ''),
(87, 'CB-401', '120.0347322522,16.0762660229', ''),
(88, 'CB-402', '120.0373412187,16.0748674176', ''),
(89, 'CB-403', '120.0404721731,16.074343384', ''),
(90, 'CB-404', '120.0437871825,16.0737884144', ''),
(91, 'CB-405', '120.0465496906,16.073325889', ''),
(92, 'CB-406', '120.0498646724,16.0727708224', ''),
(93, 'CB-407 ', '120.0526258679,16.0723084377', ''),
(94, 'CB-408', '120.0570010402,16.0715756801', ''),
(95, 'CB-409', '120.0601646534,16.0710457928', ''),
(96, 'CB-410', '120.0631822676,16.0693229292', ''),
(97, 'CB-411', '120.0655963914,16.0679445191', ''),
(98, 'CB-412', '120.0689518993,16.0660285976', ''),
(99, 'CB-413', '120.0736192378,16.0633635598', ''),
(100, 'CB-414', '120.0758320451,16.0620999087', ''),
(101, 'CB-415', '120.0836110615,16.0576574097', ''),
(102, 'CB-416', '120.0863467665,16.0560949652', ''),
(103, 'CB-417', '120.089283483,16.0544180524', ''),
(104, 'CB-418', '120.092501895,16.0525793616', ''),
(105, 'CB-419', '120.0962029198,16.0504653625', ''),
(106, 'CB-420', '120.1000647226,16.0482592716', ''),
(107, 'CB-421', '120.103202447,16.0464668074', ''),
(108, 'CB-422 ', '120.1073076042,16.0441208836', ''),
(109, 'CB-423', '120.1090163592,16.0420352825', ''),
(110, 'CB-424', '120.1115494294,16.0389036128', ''),
(111, 'CB-425', '120.1140824865,16.0357720293', ''),
(112, 'CB-426', '120.1159246574,16.0334944159', ''),
(113, 'CB-427', '120.1177668002,16.0312168573', ''),
(114, 'CB-428', '120.1213933156,16.0267328066', ''),
(115, 'CB-429', '120.1249046074,16.0223909613', ''),
(116, 'CB-431', '120.1300901737,16.0159783741', ''),
(117, 'CB-432', '120.1316490494,16.0138350822', ''),
(118, 'CB-433', '120.1348976629,16.0092524149', ''),
(119, 'CB-434', '120.1373468088,16.0060007706', ''),
(120, 'CB-437', '120.1430978607,15.9980924095', ''),
(121, 'CB-438', '120.1459463303,15.9941751108', ''),
(122, 'CB-439', '120.149009705,15.9899621228', ''),
(123, 'CB-440', '120.1513743066,15.9867099544', ''),
(124, 'CB-441', '120.1544910953,15.9824229978', ''),
(125, 'CB-442', '120.1566865793,15.9794031381', ''),
(126, 'CB-443', '120.1595421605,15.9780217097', ''),
(127, 'CB-444', '120.1604378544,15.9771206906', ''),
(128, 'GANTRY-230KV', '120.1607704809,15.9766663153', ''),
(129, 'CB-220', '119.9630744783,15.5858469964', ''),
(130, 'CB-222', '119.961423854,15.5936362321', ''),
(131, 'CB-223', '119.9604858044,15.5980618805', ''),
(132, 'CB-224', '119.959923008,15.6007173023', ''),
(133, 'CB-225', '119.9593226812,15.6035497612', ''),
(134, 'CB-226', '119.9586848472,15.6065590981', ''),
(135, 'CB-227', '119.9580469127,15.6095685527', ''),
(136, 'CB-228', '119.9571463358,15.6138171498', ''),
(137, 'CB-232', '119.9562561871,15.626812036', ''),
(138, 'CB-233', '119.9562073423,15.6299745448', ''),
(139, 'CB-234', '119.9561585866,15.6331368909', ''),
(140, 'CB-235', '119.9561069474,15.6364798552', ''),
(141, 'CB-236', '119.9560553024,15.6398228192', ''),
(142, 'CB-237', '119.9560050467,15.6430754256', ''),
(143, 'CB-238', '119.9559604519,15.6459666129', ''),
(144, 'CB-239', '119.9559101864,15.649219218', ''),
(145, 'CB-240', '119.9558611325,15.6523979119', ''),
(146, 'CB-241', '119.9559335994,15.6558309233', ''),
(147, 'CB-242', '119.9560041922,15.6591735663', ''),
(148, 'CB-243', '119.956101496,15.6637809845', ''),
(149, 'CB-244', '119.9561930681,15.6681173871', ''),
(150, 'CB-245', '119.9562636573,15.6714600258', ''),
(151, 'CB-246', '119.9563513597,15.675615724', ''),
(152, 'CB-247', '119.9564543875,15.6804942125', ''),
(153, 'CB-248', '119.9565249754,15.6838368441', ''),
(154, 'CB-249', '119.9565904459,15.6869390019', ''),
(155, 'CB-251', '119.9551047982,15.691030573', ''),
(156, 'CB-252', '119.953990456,15.6940992123', ''),
(157, 'CB-253', '119.9528761661,15.6971678491', ''),
(158, 'CB-254', '119.9517617444,15.70023648', ''),
(159, 'CB-255', '119.9506473791,15.7033050139', ''),
(160, 'CB-256', '119.9495948647,15.7062032347', ''),
(161, 'CB-257', '119.9483565597,15.7096127174', ''),
(162, 'CB-258', '119.9474277576,15.7121699542', ''),
(163, 'CB-259', '119.9460964506,15.7158351322', ''),
(164, 'CB-260', '119.944827077,15.7193299107', ''),
(165, 'CB-261 ', '119.9435421722,15.7228673171', ''),
(166, 'CB-262', '119.9417927037,15.7276831945', ''),
(167, 'CB-263', '119.9403968968,15.7315254899', ''),
(168, 'CB-266', '119.9417247063,15.7414725423', ''),
(169, 'CB-267', '119.94214344,15.7446090195', ''),
(170, 'CB-268', '119.9425382038,15.7475662846', ''),
(171, 'CB-269', '119.9430984639,15.7506015245', ''),
(172, 'CB-270', '119.9445293719,15.753940734', ''),
(173, 'CB-271', '119.9448980498,15.7575810867', ''),
(174, 'CB-272', '119.9443567846,15.761187545', ''),
(175, 'CB-273', '119.944727692,15.7639655375', ''),
(176, 'CB-274', '119.9450726703,15.7665646632', ''),
(177, 'CB-275', '119.9455054136,15.7697905071', ''),
(178, 'CB-276', '119.9459960012,15.7734646088', ''),
(179, 'CB-277', '119.9464148367,15.7766010745', ''),
(180, 'CB-278', '119.9473308777,15.7797545996', ''),
(181, 'CB-279', '119.9476184808,15.7834226493', ''),
(182, 'CB-280', '119.948136419,15.7862243595', ''),
(183, 'CB-281', '119.9487050173,15.7893009197', ''),
(184, 'CB-284', '119.9505636798,15.7990152157', ''),
(185, 'CB-285', '119.9515565363,15.8021228354', ''),
(186, 'CB-286', '119.9525495133,15.8052304523', ''),
(187, 'CB-287', '119.9536251756,15.8085970784', ''),
(188, 'CB-288', '119.9547836255,15.8122226217', ''),
(189, 'CB-289', '119.9559697606,15.8159344978', ''),
(190, 'CB-290', '119.9570684889,15.819372968', ''),
(191, 'CB-295', '119.953552218,15.8349076871', ''),
(192, 'CB-296', '119.9554985024,15.8368567109', ''),
(193, 'CB-297', '119.9574447327,15.8388057163', ''),
(194, 'CB-298', '119.9593909981,15.8407547984', ''),
(195, 'CB-299', '119.9613836424,15.8427500823', ''),
(196, 'CB-300', '119.9612407178,15.8461809247', ''),
(197, 'CB-300A', '119.9609155999,15.8489351678', ''),
(198, 'CB-300B', '119.9579877313,15.8502504119', ''),
(199, 'CB-300C', '119.9552033059,15.8512972942', ''),
(200, 'CB-300D', '119.9523316766,15.8523767928', ''),
(201, 'CB-301', '119.9493430073,15.8535003188', ''),
(202, 'CB-302', '119.9472155265,15.8561340435', ''),
(203, 'CB-303', '119.9455480213,15.858198381', ''),
(204, 'CB-304', '119.943420439,15.8608320632', ''),
(205, 'CB-305', '119.9412352934,15.8635369121', ''),
(206, 'CB-306', '119.9391075953,15.866170636', ''),
(207, 'CB-307', '119.9367498008,15.8690890058', ''),
(208, 'CB-308', '119.934334429,15.8720785302', ''),
(209, 'CB-309', '119.932264066,15.8746408901', ''),
(210, 'CB-310', '119.9288707872,15.87884038', ''),
(211, 'CB-311', '119.9265127073,15.8817586005', ''),
(212, 'CB-312', '119.9243846272,15.8843920541', ''),
(213, 'CB-313', '119.9221989569,15.8870967808', ''),
(214, 'CB-314', '119.9200588301,15.889744931', ''),
(215, 'CB-327', '119.8946194685,15.9240198969', ''),
(216, 'CB-330', '119.8900535085,15.9334773143', ''),
(217, 'CB-332', '119.888969084,15.9396229993', ''),
(218, 'CB-221 ', '119.9622492533,15.5897416454', ''),
(219, 'CB-229 ', '119.9576121251,15.6173291286', ''),
(220, 'CB-230 ', '119.9581218534,15.6209127024', ''),
(221, 'CB-231 ', '119.9574237596,15.6236560139', ''),
(222, 'CB-250 ', '119.955816643,15.6890699906', ''),
(223, 'CB-264 ', '119.939509683,15.7340286581', ''),
(224, 'CB-265 ', '119.9407905266,15.7383331855', ''),
(225, 'CB-282 ', '119.9503921148,15.7923750522', ''),
(226, 'CB-283 ', '119.9504777574,15.795695134', ''),
(227, 'CB-319 ', '119.9098751501,15.9031067348', ''),
(228, 'CB-328 ', '119.8928212282,15.9277447653', ''),
(229, 'CB-329 ', '119.8908252055,15.9318789923', ''),
(230, 'CB-430 ', '120.1264204842,16.0202113985', ''),
(231, 'CB-435 ', '120.1395357379,16.0037338176', ''),
(232, 'CB-436 ', '120.1411688756,16.0011991107', '');

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
(1, 'Stockyard', '14.114472, 120.814000\n', 'Kaytitinga I, Alfonso, Cavite'),
(2, 'CD-01R', '14.311504949795825, 120.95101622073538', ''),
(3, 'CD-04R', '14.306994165084262, 120.94941622286295', ''),
(4, 'CD-05R', '14.303359135360813, 120.95083676892841', ''),
(5, 'CD-06R', '14.300633035094762, 120.95177447377776', ''),
(6, 'CD-06AR', '14.298176737507635, 120.95230613625678', ''),
(7, 'CD-12R', '14.286311858445728, 120.95468873373515', ''),
(8, 'CD-25R', '14.251200541768549, 120.94063657797768', ''),
(9, 'CD-26R', '14.248164690860087, 120.93971557713603', ''),
(10, 'CD-28R', '14.242527879161551, 120.93797745036623', ''),
(11, 'CD-29R', '14.239569454957133, 120.93682771765869', ''),
(12, 'CD-30R', '14.236338145824936, 120.93554273834312', ''),
(13, 'CD-31R', '14.233388776357673, 120.93436991860784', ''),
(14, 'CD-32R', '14.230228685396868, 120.93311333980678', ''),
(15, 'CD-33R', '14.227147241675265, 120.93188809786872', ''),
(16, 'CD-34R', '14.225113851887684, 120.93204012462729', ''),
(17, 'CD-35R', '14.221674648026127, 120.93185487552017', ''),
(18, 'CD-36R', '14.218664702120222, 120.93157811315642', ''),
(19, 'CD-37R', '14.216027568878419, 120.9285418539012', ''),
(20, 'CD-37AR', '14.215617484283014, 120.92528298123011', ''),
(21, 'CD-37BR', '14.215307013952877, 120.92281599870346', ''),
(22, 'CD-38R', '14.214955319298095, 120.92002171978157', ''),
(23, 'CD-39R', '14.212435111043673, 120.91784246251825', ''),
(24, 'CD-45R', '14.195106863586282, 120.91422225993878', ''),
(25, 'CD-46R', '14.192163142966729, 120.91426754497012', ''),
(26, 'CD-47R', '14.189255676783047, 120.9130834800734', ''),
(27, 'CD-48R', '14.18600827944696, 120.91176079926731', ''),
(28, 'CD-49R', '14.183098639137487, 120.91057581680217', ''),
(29, 'CD-55R', '14.166087606115443, 120.89973760390545', ''),
(30, 'CD-67R', '14.146208451145833, 120.87062378904803', ''),
(31, 'CD-68R', '14.142792900649162, 120.87013622713823', ''),
(32, 'CD-69R', '14.139843981175746, 120.86823828233872', ''),
(33, 'CD-70R', '14.136725951311089, 120.86623160342556', ''),
(34, 'CD-78R', '14.121045285792801, 120.85121281876424', ''),
(35, 'CD-80R', '14.118113651725109, 120.84679524273302', ''),
(36, 'CD-81R', '14.116937608792824, 120.8434882784162', ''),
(37, 'CD-82R', '14.115952679701326, 120.84071865575812', ''),
(38, 'CD-83R', '14.114812010063156, 120.83751133385088', ''),
(39, 'CD-84R', '14.11382867005253, 120.83474653152875', ''),
(40, 'CD-91R', '14.107231522104973, 120.81232968926176', ''),
(41, 'CD-95R', '14.099330534758797, 120.79883854026869', ''),
(42, 'CD-96R', '14.098169248013843, 120.7963577999573', ''),
(43, 'CD-97R', '14.097039344318185, 120.79277425977146', ''),
(44, 'CD-99R', '14.094466342264944, 120.78461381066224', ''),
(45, 'CD-102R', '14.09096207413018, 120.77371326850782', ''),
(46, 'CD-105R', '14.087138274457498, 120.76328066338418', ''),
(47, 'CD-108R', '14.081361183240071, 120.75314447087031', ''),
(48, 'CD-109R', '14.079523356313025, 120.75022686865503', ''),
(49, 'CD-113R', '14.070402788699015, 120.73487394513592', ''),
(50, 'CD-114R', '14.068763795698322, 120.7319672908536', ''),
(51, 'CD-115R', '14.066028889094497, 120.73158576981594', ''),
(52, 'CD-116R', '14.063841998823397, 120.73132804460644', ''),
(53, 'CD-117R', '14.061017576066858, 120.7309027574494', ''),
(54, 'CD-118R', '14.058413863985244, 120.73049914968816', ''),
(55, 'CD-119R', '14.054930382804661, 120.72994374427802', ''),
(56, 'CD-120R', '14.051417665442056, 120.72951938206624', ''),
(57, 'CD-122R', '14.045218487917767, 120.73422119634472', ''),
(58, 'CD-124R', '14.03788848697149, 120.73973306742374', ''),
(59, 'CD-126R', '14.03207644730369, 120.74487772219415', ''),
(60, 'CD-127R', '14.029603602331692, 120.74705403953635', '');

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
(2, 'TOWER 36', '120.9371151155438, 15.310867 ', ''),
(3, 'TOWER 1', '121.015360890612, 15.31052614896261 ', ''),
(4, 'TOWER 2', '121.0128515928565, 15.31214096862159 ', ''),
(5, 'TOWER 3', '121.0103547741049, 15.31375245630032 ', ''),
(6, 'TOWER 4', '121.0072375306344, 15.31555459446943 ', ''),
(7, 'TOWER 5', '121.0060062698085, 15.31818503935676 ', ''),
(8, 'TOWER 8', '121.0000458224547, 15.32424190027215 ', ''),
(9, 'TOWER 9', '120.9985802440343, 15.32474220508271 ', ''),
(10, 'TOWER 10', '120.9949605875733, 15.3254756300451 ', ''),
(11, 'TOWER 11', '120.9933809604322, 15.32715795248342 ', ''),
(12, 'TOWER 12', '120.9909416799564, 15.32984036249476 ', ''),
(13, 'TOWER 13', '120.9875251163696, 15.33114504640576 ', ''),
(14, 'TOWER 14', '120.9848526946508, 15.33225166003102 ', ''),
(15, 'TOWER 18', '120.9770456282267, 15.33116178338032 ', ''),
(16, 'TOWER 19', '120.9745428325316, 15.33271061584488 ', ''),
(17, 'TOWER 20', '120.9721684319875, 15.33315778126041 ', ''),
(18, 'TOWER 21', '120.9693676554423, 15.33279637743086 ', ''),
(19, 'TOWER 22', '120.9661332147834, 15.33258606309913 ', ''),
(20, 'TOWER 23', '120.9630872374111, 15.33205145921194 ', ''),
(21, 'TOWER 24', '120.9606992414015, 15.33303695975375 ', ''),
(22, 'TOWER 25', '120.9592146278526, 15.33151914906872 ', ''),
(23, 'TOWER 26', '120.9578817088006, 15.33016232788296 ', ''),
(24, 'TOWER 27', '120.9544823931534, 15.3291183636519 ', ''),
(25, 'TOWER 28', '120.9534621782273, 15.32568506281469 ', ''),
(26, 'TOWER 29', '120.9517710508403, 15.32371788989048 ', ''),
(27, 'TOWER 31', '120.9468575341583, 15.32019480571857 ', ''),
(28, 'TOWER 32', '120.9453623326847, 15.31742505372404 ', ''),
(29, 'TOWER 33', '120.9430128907307, 15.31701521388022 ', ''),
(30, 'TOWER 34', '120.9420478510308, 15.3138021817755 ', ''),
(31, 'TOWER 35', '120.9397215016073, 15.31292383876155 ', ''),
(32, 'TOWER 37', '120.9342589292651, 15.31216707353693 ', ''),
(33, 'TOWER 39', '120.9302867526696, 15.31335950100109 ', ''),
(34, 'TOWER 40', '120.9267066770594, 15.31377737033814 ', ''),
(35, 'STR-01', '121.0162430012946, 15.3110077546163 ', ''),
(36, 'STR-02', '121.0132031386908, 15.31296771559161 ', ''),
(37, 'TOWER 43', '121.0107485316145, 15.31436527534466 ', ''),
(38, 'TOWER 44', '121.0078058194164, 15.31659142705273 ', ''),
(39, 'TOWER 45', '121.0066505604147, 15.31852834432308 ', ''),
(40, 'TOWER 48', '121.0005868111665, 15.32484914955563 ', ''),
(41, 'TOWER 49', '120.9986020719254, 15.32532745042173 ', ''),
(42, 'TOWER 50', '120.9952808178291, 15.32709661562377 ', ''),
(43, 'TOWER 51', '120.9935371103999, 15.32781377397275 ', ''),
(44, 'TOWER 52', '120.9910910326083, 15.33054642999413 ', ''),
(45, 'TOWER 53', '120.9876190139626, 15.33175374224973 ', ''),
(46, 'TOWER 54', '120.9846413133576, 15.33293209182347 ', ''),
(47, 'TOWER 58', '120.9777748406654, 15.33379078326917 ', ''),
(48, 'TOWER 59', '120.9741979989738, 15.33399281068031 ', ''),
(49, 'TOWER 60', '120.9720670434837, 15.33410772863886 ', ''),
(50, 'TOWER 61', '120.9697929304736, 15.33387343628056 ', ''),
(51, 'TOWER 62', '120.9664103599193, 15.33349205315986 ', ''),
(52, 'TOWER 63', '120.9637192251263, 15.33274357526835 ', ''),
(53, 'TOWER 64', '120.960545609308, 15.33366918932268 ', ''),
(54, 'TOWER 65', '120.959096412256, 15.33223733293014 ', ''),
(55, 'TOWER 66', '120.9575716192185, 15.33065159414931 ', ''),
(56, 'TOWER 67', '120.9540265398185, 15.32954960673068 ', ''),
(57, 'TOWER 68', '120.9529726460318, 15.32618294383722 ', ''),
(58, 'TOWER 69', '120.9510011682592, 15.32371187287302 ', ''),
(59, 'TOWER 71', '120.9464174805092, 15.32073364396441 ', ''),
(60, 'TOWER 72', '120.9451912645321, 15.31830279522062 ', ''),
(61, 'TOWER 74', '120.941498327965, 15.31419377063496 ', ''),
(62, 'TOWER 73', '120.9425828952752, 15.3175485435382 ', ''),
(63, 'TOWER 75', '120.9396101712996, 15.31357123541793 ', ''),
(64, 'TOWER 76', '120.9370286524655, 15.31147258074169 ', ''),
(65, 'TOWER 77', '120.9347854564166, 15.31255961559738 ', ''),
(66, 'TOWER 79', '120.9305513081388, 15.3140370383558 ', ''),
(67, 'TOWER 6', '121.0036527001598, 15.32033393469608 ', ''),
(68, 'TOWER 46', '121.0042081709745, 15.32066179223807 ', ''),
(69, 'TOWER 30', '120.949915413472, 15.32158770507774 ', ''),
(70, 'TOWER 70', '120.9497134076606, 15.32227595502258 ', ''),
(71, 'TOWER 38', '120.9324701294268, 15.31404476629588 ', ''),
(72, 'TOWER 78', '120.9326481417728, 15.31482279563223 ', ''),
(73, 'TOWER 47', '121.0035485621426, 15.32420953714239 ', ''),
(74, 'TOWER 7', '121.0031083904622, 15.32338140127064 ', ''),
(75, 'TOWER 55', '120.9810014147773, 15.33267819463302 ', ''),
(76, 'TOWER 15', '120.9818434922369, 15.33185480048659 ', ''),
(77, 'STR-1A', '121.0185224353064, 15.30934024959174 ', ''),
(78, 'STR-1B', '121.0210652221862, 15.30828326820802 ', ''),
(79, 'STR-1C', '121.0229348583113, 15.30747750888506 ', ''),
(80, 'TOWER 1A', '121.017738565949, 15.30876664954712 ', ''),
(81, 'TOWER 1B', '121.0207547003062, 15.30770464876644 ', ''),
(82, 'TOWER 1C', '121.0220353974758, 15.30709002599307 ', ''),
(83, 'TOWER 81', '120.9795683346676, 15.33152618369008 ', ''),
(84, 'TOWER 88', '120.9233558097436, 15.31537829321563 ', ''),
(85, 'TOWER 87', '120.9238655560119, 15.31544251569389 ', ''),
(86, 'TOWER 86', '120.9244353282874, 15.31523211171968 ', ''),
(87, 'TOWER 85', '120.9269897928386, 15.3146772077058 ', ''),
(88, 'TOWER 84', '120.92313689436, 15.31507720544176 ', ''),
(89, 'TOWER 83', '120.9233345129606, 15.31470879157327 ', ''),
(90, 'TOWER 82', '120.9241783515153, 15.31467452547183 ', ''),
(91, 'Stockyard', '15.324750, 120.936222\r\n', '');

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
-- Table structure for table `coordinates`
--

CREATE TABLE `coordinates` (
  `id` int(255) NOT NULL,
  `Tower_No` varchar(255) DEFAULT NULL,
  `Coordinates` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinates`
--

INSERT INTO `coordinates` (`id`, `Tower_No`, `Coordinates`) VALUES
(1, 'CD-01R', '14.311504949795825, 120.95101622073538'),
(2, 'CD-04R', '14.306994165084262, 120.94941622286295'),
(3, 'CD-05R', '14.303359135360813, 120.95083676892841'),
(4, 'CD-06R', '14.300633035094762, 120.95177447377776'),
(5, 'CD-06AR', '14.298176737507635, 120.95230613625678'),
(6, 'CD-12R', '14.286311858445728, 120.95468873373515'),
(7, 'CD-25R', '14.251200541768549, 120.94063657797768'),
(8, 'CD-26R', '14.248164690860087, 120.93971557713603'),
(9, 'CD-28R', '14.242527879161551, 120.93797745036623'),
(10, 'CD-29R', '14.239569454957133, 120.93682771765869'),
(11, 'CD-30R', '14.236338145824936, 120.93554273834312'),
(12, 'CD-31R', '14.233388776357673, 120.93436991860784'),
(13, 'CD-32R', '14.230228685396868, 120.93311333980678'),
(14, 'CD-33R', '14.227147241675265, 120.93188809786872'),
(15, 'CD-34R', '14.225113851887684, 120.93204012462729'),
(16, 'CD-35R', '14.221674648026127, 120.93185487552017'),
(17, 'CD-36R', '14.218664702120222, 120.93157811315642'),
(18, 'CD-37R', '14.216027568878419, 120.9285418539012'),
(19, 'CD-37AR', '14.215617484283014, 120.92528298123011'),
(20, 'CD-37BR', '14.215307013952877, 120.92281599870346'),
(21, 'CD-38R', '14.214955319298095, 120.92002171978157'),
(22, 'CD-39R', '14.212435111043673, 120.91784246251825'),
(23, 'CD-45R', '14.195106863586282, 120.91422225993878'),
(24, 'CD-46R', '14.192163142966729, 120.91426754497012'),
(25, 'CD-47R', '14.189255676783047, 120.9130834800734'),
(26, 'CD-48R', '14.18600827944696, 120.91176079926731'),
(27, 'CD-49R', '14.183098639137487, 120.91057581680217'),
(28, 'CD-55R', '14.166087606115443, 120.89973760390545'),
(29, 'CD-67R', '14.146208451145833, 120.87062378904803'),
(30, 'CD-68R', '14.142792900649162, 120.87013622713823'),
(31, 'CD-69R', '14.139843981175746, 120.86823828233872'),
(32, 'CD-70R', '14.136725951311089, 120.86623160342556'),
(33, 'CD-78R', '14.121045285792801, 120.85121281876424'),
(34, 'CD-80R', '14.118113651725109, 120.84679524273302'),
(35, 'CD-81R', '14.116937608792824, 120.8434882784162'),
(36, 'CD-82R', '14.115952679701326, 120.84071865575812'),
(37, 'CD-83R', '14.114812010063156, 120.83751133385088'),
(38, 'CD-84R', '14.11382867005253, 120.83474653152875'),
(39, 'CD-91R', '14.107231522104973, 120.81232968926176'),
(40, 'CD-95R', '14.099330534758797, 120.79883854026869'),
(41, 'CD-96R', '14.098169248013843, 120.7963577999573'),
(42, 'CD-97R', '14.097039344318185, 120.79277425977146'),
(43, 'CD-99R', '14.094466342264944, 120.78461381066224'),
(44, 'CD-102R', '14.09096207413018, 120.77371326850782'),
(45, 'CD-105R', '14.087138274457498, 120.76328066338418'),
(46, 'CD-108R', '14.081361183240071, 120.75314447087031'),
(47, 'CD-109R', '14.079523356313025, 120.75022686865503'),
(48, 'CD-113R', '14.070402788699015, 120.73487394513592'),
(49, 'CD-114R', '14.068763795698322, 120.7319672908536'),
(50, 'CD-115R', '14.066028889094497, 120.73158576981594'),
(51, 'CD-116R', '14.063841998823397, 120.73132804460644'),
(52, 'CD-117R', '14.061017576066858, 120.7309027574494'),
(53, 'CD-118R', '14.058413863985244, 120.73049914968816'),
(54, 'CD-119R', '14.054930382804661, 120.72994374427802'),
(55, 'CD-120R', '14.051417665442056, 120.72951938206624'),
(56, 'CD-122R', '14.045218487917767, 120.73422119634472'),
(57, 'CD-124R', '14.03788848697149, 120.73973306742374'),
(58, 'CD-126R', '14.03207644730369, 120.74487772219415'),
(59, 'CD-127R', '14.029603602331692, 120.74705403953635');

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
(1, 'AK-48dafgwegwegwed', 'AK', '48500', 48500, 15.308283, 121.021064, 0, 'North', 34, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 17:19:14', 'Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005', '', '', 'GPS Tracker', '', '', '', 'Operational', 'assignment_amlan', '2025-04-02', 28, '2025-04-30', 130, '', 1146, '', 0, '0000-00-00', '0000-00-00', 0),
(2, 'AK-49071', 'AK', '49071', 49071, 14.938665, 120.842133, 0, 'North', 8, 'ACC OFF,Disarm,Door Close,Power cut', '2022-02-18 16:45:57', 'Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'GPS Tracker', '', '', '', 'Operational', 'assignment_bayombong', '2025-04-02', 145, '2025-08-25', 34, '', 1157, '', 0, '0000-00-00', '0000-00-00', 0),
(3, 'AK-31846', 'AK', '31846', 0, 15.32325589575353, 120.98875000242437, 0, 'West', 0, 'ACC OFF,Disarm,Door Close,Power cut', '2024-02-10 14:36:52', 'Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas', 'Bulacan, Central Luzon', '', 'Not Specified Yet', '', '', '', '', 'assignment_terrasolar', '0000-00-00', 0, '0000-00-00', 0, '', 429, '', 0, '0000-00-00', '0000-00-00', 0),
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

--
-- Dumping data for table `geofence`
--

INSERT INTO `geofence` (`id`, `target_name`, `status`, `timestamp`) VALUES
(177, 'AK-48dafgwegwegwed', 'Outside Geofence - Esguerra Street, Balatong B, Pulilan, Bulacan, Central Luzon, 3005, Site: AD-62', '2025-04-22 21:53:03'),
(178, 'AK-49071', 'Outside Geofence - Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: Bayombong Substation', '2025-04-22 21:53:03'),
(181, 'AK-31851', 'Outside Geofence - Cabicalan, Pangasinan, Ilocos Region, 2411, Pilipinas, Site: Balingueo Substation', '2025-04-22 21:53:05'),
(182, 'AK-31711', 'Outside Geofence - Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: Barotac Viejo Substation', '2025-04-22 21:53:05'),
(184, 'AK-21559', 'Outside Geofence - Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: CB-436 ', '2025-04-22 21:53:08'),
(185, 'AK-21563', 'Outside Geofence - Esguerra Street, Balatong A, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: Botolan Substation', '2025-04-22 21:53:08'),
(186, 'AK-21566', 'Outside Geofence - Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: Cadiz Substation', '2025-04-22 21:53:08'),
(187, 'AK-21582', 'Outside Geofence - Belton Drive, Kampo Dos, West Wing Villas, 6th District, Quezon City, Eastern Manila District, Metro Manila, 1116, Pilipinas, Site: Calaca Substation', '2025-04-22 21:53:08'),
(188, 'AK-21625', 'Outside Geofence - Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: CD-127R', '2025-04-22 21:53:10'),
(189, 'AK-21649', 'Outside Geofence - Esguerra Street, Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: Calatrava Substation', '2025-04-22 21:53:10'),
(239, 'PC200-10M0 #C50156', 'Outside Geofence - Bayto, Santa Cruz, Zambales, Philippines, Site: CB-436 ', '2025-04-22 21:53:16'),
(248, 'AK-31846', 'Outside Geofence - Santa Peregrina, Pulilan, Bulacan, Central Luzon, 3005, Pilipinas, Site: Stockyard', '2025-04-22 21:53:05');

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
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
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
(1, 'PC200-10M0 #C50156', 'BH', 'Bayto, Santa Cruz, Zambales, Philippines', '', '2025-04-21 09:24:40', 15.72266601, 119.9438661, '', '', '', 'assignment_bolo', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(2, 'PC200-10M0 #C50367', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-16 15:23:51', 15.32483289, 120.9369325, '', '', '', 'assignment_terrasolar', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(3, 'PC200-10M0 #C50474', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:42:41', 15.3180664, 120.92526584, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(4, 'PC200-10M0 #C50799', 'BH', 'Mahayag, Isabel, Leyte, Philippines', '', '2025-04-21 01:41:00', 10.91963324, 124.44863281, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(5, 'PC200-10M0 #C51088', 'BH', 'Tam-is, Maasin City, Southern Leyte, Philippines', '', '2025-04-21 01:30:53', 10.16273329, 124.77926649, '', '', '', 'assignment_maasin', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(6, 'PC200-10M0 #C51089', 'BH', 'Balugo, Sibulan, Negros Oriental, Philippines', '', '2025-04-21 01:29:00', 9.35219943, 123.23339952, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(7, 'PC200-10M0 #C51931', 'BH', 'Peng-peng – Baguioso Rd, Mabini, 2409 Pangasinan, Philippines', '', '2025-04-21 01:30:53', 16.04356662, 119.93639974, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(8, 'PC200-10M0 #C51937', 'BH', 'Magatas, Sibulan, Negros Oriental, Philippines', '', '2025-04-21 01:26:59', 9.35666666, 123.27623263, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(9, 'PC200-10M0 #C51996', 'BH', 'Unnamed Road, Sibulan, Negros Oriental, Philippines', '', '2025-04-21 07:46:51', 9.33356662, 123.24573242, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(10, 'PC200-10M0 #C52051', 'BH', 'Mateuna, Tayabas, 4327 Quezon, Philippines', '', '2025-04-16 11:54:58', 14.02159939, 121.60569987, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(11, 'PC200-10M0 #C52056', 'BH', 'Ilihan, Batangas, Philippines', '', '2025-04-21 09:52:20', 13.62376627, 121.08, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(12, 'PC200-10M0 #C52087', 'BH', 'Malimpin, Dasol, Pangasinan, Philippines', '', '2025-04-16 10:10:25', 16.01696614, 119.91033311, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(13, 'PC200-10M0 #C52121', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 07:58:47', 15.31366645, 120.94149956, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(14, 'PC200-10M0 #C52125', 'BH', 'Camagsingalan, Pangasinan, Philippines', '', '2025-04-16 14:36:23', 16.07863281, 120.0140332, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(15, 'PC200-10M0 #C52130', 'BH', 'Maliga, Alaminos, Pangasinan, Philippines', '', '2025-04-15 07:26:14', 16.08216579, 119.99479926, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(16, 'PC200-10M0 #C52131', 'BH', 'Linmansangan, Pangasinan, Philippines', '', '2025-04-15 07:24:41', 16.07979926, 119.98256618, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(17, 'PC200-10M0 #C52653', 'BH', 'Unnamed Road, Candelaria, Zambales, Philippines', '', '2025-04-15 01:50:51', 15.60669921, 119.95756618, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(18, 'PC200-10M0 #C52674', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-15 01:46:46', 15.31803276, 120.92526584, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(19, 'PC200-10M0 #C52675', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:58:51', 15.31799913, 120.9253993, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(20, 'PC200-10M0 #C52676', 'BH', 'Uacon, Zambales, Philippines', '', '2025-04-21 01:56:46', 15.68383246, 119.95243272, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(21, 'PC200-10M0 #C52677', 'BH', 'Doliman, Pangasinan, Philippines', '', '2025-04-21 01:34:44', 15.81896592, 119.95683268, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(22, 'PC200-10M0 #C52678', 'BH', 'Tamacan, Cavite, Philippines', '', '2025-04-21 01:10:46', 14.22146592, 120.93169921, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(23, 'PC200-10M0 #C52679', 'BH', 'Unnamed Road, Dasmariñas, Cavite, Philippines', '', '2025-04-21 08:00:28', 14.27436631, 120.95373263, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(24, 'PC200-10M0 #C52680', 'BH', 'Mahacot Kanluran, Batangas, Philippines', '', '2025-04-16 13:57:47', 13.77099934, 121.11603298, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(25, 'PC200-10M0 #C52681', 'BH', 'Mahacot Kanluran, Batangas, Philippines', '', '2025-04-21 01:34:44', 13.77053276, 121.11633246, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(26, 'PC200-10M0 #C52682', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:30:41', 15.3180664, 120.92513237, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(27, 'PC200-8M0 #C22978', 'BH', 'Busilac, Bayombong, Nueva Vizcaya, Philippines', '', '2025-04-21 09:24:40', 16.47313259, 121.11073242, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(28, 'PC200-8M0 #C23307', 'BH', 'Talipapa, Metro Manila, Philippines', '', '2025-04-16 13:52:32', 14.68363281, 121.02019965, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(29, 'PC200-8M0 #C23308', 'BH', 'Maliwanag, Maigo, Lanao del Norte, Philippines', '', '2025-04-21 09:24:40', 8.14033311, 123.95603298, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(30, 'PC200-8M0 #C23319', 'BH', 'Maningcao, Negros Oriental, Philippines', '', '2025-04-16 15:51:54', 9.37883246, 123.2363661, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(31, 'PC200-8M0 #C23320', 'BH', 'Gahit, Enrique B. Magalona, Negros Occidental, Philippines', '', '2025-04-21 07:56:44', 10.88833333, 122.97053276, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(32, 'PC200-8M0 #C23321', 'BH', 'Langkaan I, Dasmariñas, Cavite, Philippines', '', '2025-04-16 10:58:21', 14.30036566, 120.95163303, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(33, 'PC200-8M0 #C23332', 'BH', 'Unnamed Road, Dasmariñas, Cavite, Philippines', '', '2025-04-21 08:16:20', 14.31059895, 120.95419921, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(34, 'PC210-10M0 #C00020', 'BH', 'Mahacot Kanluran, Batangas, Philippines', '', '2025-04-20 10:14:38', 13.77069987, 121.11569987, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(35, 'PC210-10M0 #C00060', 'BH', 'Cogon, Dumanjug, Cebu, Philippines', '', '2025-04-21 01:54:44', 10.035, 123.44356662, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(36, 'PC210-10M0 #C00203', 'BH', '224 kalye ube street, Obispo Bridge, Tuy, Batangas, Philippines', '', '2025-04-21 01:36:25', 14.00893229, 120.72809895, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, ''),
(37, 'PC210-10M0 #C00204', 'BH', 'Castellano, Nueva Ecija, Philippines', '', '2025-04-21 01:54:44', 15.31373263, 120.9415332, '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', '', 0, '');

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
-- Indexes for table `coordinates`
--
ALTER TABLE `coordinates`
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
-- AUTO_INCREMENT for table `assignment_amlan`
--
ALTER TABLE `assignment_amlan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
-- AUTO_INCREMENT for table `coordinates`
--
ALTER TABLE `coordinates`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `geofence`
--
ALTER TABLE `geofence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

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
