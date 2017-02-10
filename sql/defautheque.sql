-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 10 Février 2017 à 14:09
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `defautheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `alliage`
--

CREATE TABLE `alliage` (
  `ID_ALLIAGE` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `alliage`
--

INSERT INTO `alliage` (`ID_ALLIAGE`, `Nom`) VALUES
(1, 'Alliage d\'aluminium'),
(2, 'Alliage de magnésium'),
(3, 'Acier'),
(4, 'Bronze'),
(5, 'Alliage de cuivre'),
(6, 'Alliage de titane'),
(7, 'Matériau composite'),
(8, 'Alliage de zinc');

-- --------------------------------------------------------

--
-- Structure de la table `defaut`
--

CREATE TABLE `defaut` (
  `ID_DEFAUT` int(11) NOT NULL,
  `ID_ECHANTILLON` int(11) DEFAULT NULL,
  `ID_TYPE_DEFAUT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `defaut`
--

INSERT INTO `defaut` (`ID_DEFAUT`, `ID_ECHANTILLON`, `ID_TYPE_DEFAUT`) VALUES
(3, 3, 3),
(4, 3, 10),
(7, 7, 2),
(8, 7, 1),
(9, 7, 7),
(10, 7, 10),
(19, 8, 1),
(20, 66, 1),
(21, 73, 7),
(22, 74, 7),
(23, 75, 8),
(24, 76, 9),
(25, 77, 1),
(26, 78, 2),
(27, 79, 10),
(28, 80, 1),
(29, 81, 8),
(30, 82, 10),
(31, 83, 2),
(32, 84, 1),
(33, 85, 1),
(34, 86, 2),
(35, 87, 2),
(36, 88, 2),
(37, 89, 9),
(38, 90, 9),
(39, 91, 2),
(40, 92, 2),
(41, 93, 1),
(42, 94, 5),
(43, 95, 6),
(44, 96, 2),
(45, 97, 10),
(46, 98, NULL),
(47, 99, 10),
(48, 100, 10),
(49, 101, 1),
(50, 102, 1),
(51, 103, 10),
(52, 104, 10),
(53, 105, 10),
(54, 106, NULL),
(55, 107, 1),
(56, 108, 1),
(57, 109, 1),
(58, 110, 2),
(59, 111, 5),
(60, 112, 1),
(61, 113, 1),
(62, 118, 2),
(63, 118, 10),
(64, 119, 2),
(65, 120, 10),
(66, 121, 2),
(67, 122, 2),
(68, 123, 10),
(69, 124, 11),
(70, 124, 10),
(71, 125, 12),
(72, 126, 5),
(73, 127, 5),
(74, 128, 9),
(75, 130, 10),
(76, 131, 10),
(77, 132, 10),
(78, 133, 2),
(79, 134, 10),
(80, 135, 10),
(81, 136, 10),
(82, 136, 2),
(83, 137, 10),
(84, 137, 2),
(85, 138, 10),
(86, 138, 11),
(87, 139, 13),
(88, 140, 10),
(89, 141, 5),
(90, 142, 10),
(91, 143, 11),
(92, 143, 10),
(93, 139, 5),
(95, 139, 10),
(96, 139, 11);

-- --------------------------------------------------------

--
-- Structure de la table `echantillon`
--

CREATE TABLE `echantillon` (
  `ID_ECHANTILLON` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `ID_ALLIAGE` int(11) NOT NULL,
  `ID_SECTEUR` int(11) NOT NULL,
  `ID_PROCEDE` int(11) NOT NULL,
  `Photo` varchar(255) DEFAULT 'Pièces\\',
  `Commentaires` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `echantillon`
--

INSERT INTO `echantillon` (`ID_ECHANTILLON`, `Nom`, `ID_ALLIAGE`, `ID_SECTEUR`, `ID_PROCEDE`, `Photo`, `Commentaires`) VALUES
(3, 'Echantillon 01', 1, 3, 1, 'Pièces\\E1.jpg', NULL),
(7, 'Echantillon 02', 1, 4, 3, 'Pièces\\E2.jpg', NULL),
(8, 'Echantillon 03', 7, 3, 5, 'Pièces\\E3.jpg', NULL),
(62, 'Echantillon 04&05', 1, 3, 3, 'Pièces\\E4-5.JPG', 'Pièce fournie par la Société des Fonderies d\'Ussel (Ussel-19)'),
(63, 'Echantillon 06', 1, 3, 3, 'Pièces\\E6.jpg', 'Pièce fournie par la Société des Fonderies d\'Ussel (Ussel-19)'),
(65, 'Echantillon 07', 1, 3, 3, 'Pièces\\E7.jpg', NULL),
(66, 'Echantillon 08', 1, 1, 1, 'Pièces\\E8.jpg', NULL),
(67, 'Echantillon 09', 1, 3, 2, 'Pièces\\E9.jpg', NULL),
(68, 'Echantillon 10', 3, 2, 3, 'Pièces\\E10.jpg', NULL),
(69, 'Echantillon 11', 3, 5, 3, 'Pièces\\E11.jpg', NULL),
(70, 'Echantillon 12', 1, 3, 3, 'Pièces\\E12.jpg', NULL),
(71, 'Echantillon 13', 1, 3, 3, 'Pièces\\E13.jpg', NULL),
(72, 'Echantillon 14', 1, 3, 3, 'Pièces\\E14.jpg', NULL),
(73, 'Echantillon 15', 6, 3, 4, 'Pièces\\E15.jpg', 'Pièce fournie par Taramm (Labège-31)'),
(74, 'Echantillon 16', 1, 3, 4, 'Pièces\\E16.jpg', 'Pièce fournie par Alcoa Howmet Ciral (Evron-53)'),
(75, 'Echantillon 17', 1, 3, 4, 'Pièces\\E17.jpg', 'Pièce conçue par Honeywell Aerospace SECAN (Gennevilliers, France), fabriquée par Alcoa Howmet Ciral (Evron, 53).'),
(76, 'Echantillon 18', 1, 3, 4, 'Pièces\\E18.jpg', NULL),
(77, 'Echantillon 19', 1, 3, 4, 'Pièces\\E19.jpg', NULL),
(78, 'Echantillon 20', 1, 3, 4, 'Pièces\\E20.jpg', 'Pièce fournie par Alcoa Howmet Ciral (Evron-53)'),
(79, 'Echantillon 21', 1, 3, 4, 'Pièces\\E21.jpg', 'Pièce fournie par Alcoa Howmet Ciral (Evron-53)'),
(80, 'Echantillon 22', 1, 3, 4, 'Pièces\\E22.jpg', NULL),
(81, 'Echantillon 23', 1, 3, 4, 'Pièces\\E23.jpg', NULL),
(82, 'Echantillon 24', 3, 3, 4, 'Pièces\\E24.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(83, 'Echantillon 25', 3, 3, 4, 'Pièces\\E25.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(84, 'Echantillon 26', 3, 3, 4, 'Pièces\\E26.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(85, 'Echantillon 27', 3, 3, 4, 'Pièces\\E27.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(86, 'Echantillon 28', 3, 3, 4, 'Pièces\\E28.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(87, 'Echantillon 29', 3, 3, 4, 'Pièces\\E29.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(88, 'Echantillon 30', 3, 3, 4, 'Pièces\\E30.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(89, 'Echantillon 31', 3, 3, 4, 'Pièces\\E31.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(90, 'Echantillon 32', 3, 3, 4, 'Pièces\\E32.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(91, 'Echantillon 33', 3, 3, 4, 'Pièces\\E33.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(92, 'Echantillon 34', 3, 3, 4, 'Pièces\\E34.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(93, 'Echantillon 35', 3, 3, 4, 'Pièces\\E35.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(94, 'Echantillon 36', 3, 3, 4, 'Pièces\\E36.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(95, 'Echantillon 37', 3, 3, 4, 'Pièces\\E37.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(96, 'Echantillon 38', 3, 3, 4, 'Pièces\\E38.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(97, 'Echantillon 39', 3, 3, 4, 'Pièces\\E39.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(98, 'Echantillon 40', 3, 3, 4, 'Pièces\\E40.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(99, 'Echantillon 41', 3, 3, 4, 'Pièces\\E41.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(100, 'Echantillon 42', 3, 3, 4, 'Pièces\\E42.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(101, 'Echantillon 43', 3, 3, 4, 'Pièces\\E43.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(102, 'Echantillon 44', 3, 3, 4, 'Pièces\\E44.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(103, 'Echantillon 45', 3, 3, 4, 'Pièces\\E45.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(104, 'Echantillon 46', 3, 3, 4, 'Pièces\\E46.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(105, 'Echantillon 47', 3, 3, 4, 'Pièces\\E47.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(106, 'Echantillon 48', 3, 3, 4, 'Pièces\\E48.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(107, 'Echantillon 49', 3, 3, 4, 'Pièces\\E49.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(108, 'Echantillon 50', 3, 3, 4, 'Pièces\\E50.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(109, 'Echantillon 51', 3, 3, 4, 'Pièces\\E51.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(110, 'Echantillon 52', 3, 3, 4, 'Pièces\\E52.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(111, 'Echantillon 53', 3, 3, 4, 'Pièces\\E53.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(112, 'Echantillon 54', 3, 3, 4, 'Pièces\\E54.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(113, 'Echantillon 55', 3, 3, 4, 'Pièces\\E55.jpg', 'Pièce fournie par Precicast (Thore-La-Rochette-44)'),
(118, 'Echantillon 56', 5, 2, 3, 'Pièces\\E56.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(119, 'Echantillon 57', 5, 2, 3, 'Pièces\\E57.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(120, 'Echantillon 58', 5, 2, 3, 'Pièces\\E58.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(121, 'Echantillon 59', 5, 2, 3, 'Pièces\\E59.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(122, 'Echantillon 60', 5, 2, 3, 'Pièces\\E60.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(123, 'Echantillon 61', 5, 2, 3, 'Pièces\\E61.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(124, 'Echantillon 62', 5, 6, 3, 'Pièces\\E62.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(125, 'Echantillon 63', 5, 7, 3, 'Pièces\\E63.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(126, 'Echantillon 64', 5, 2, 1, 'Pièces\\E64.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(127, 'Echantillon 65', 5, 2, 1, 'Pièces\\E65.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(128, 'Echantillon 66', 5, 2, 3, 'Pièces\\E66.jpg', 'Pièce fournie par CTIF (M.Stucky)'),
(130, 'Echantillon 67', 8, 8, 2, 'Pièces\\E67.jpg', 'Pièce fournie par D.LAVASTRE'),
(131, 'Echantillon 68', 8, 8, 2, 'Pièces\\E68.jpg', 'Pièce fournie par D.LAVASTRE'),
(132, 'Echantillon 69', 8, 8, 2, 'Pièces\\E69.jpg', 'Pièce fournie par D.LAVASTRE'),
(133, 'Echantillon 70', 1, 1, 2, 'Pièces\\E70.jpg', 'Pièce fournie par CTIF'),
(134, 'Echantillon 71', 1, 1, 3, 'Pièces\\E71.jpg', 'Pièce fournie par CTIF'),
(135, 'Echantillon 72', 1, 1, 3, 'Pièces\\E72.jpg', 'Pièce fournie par CTIF'),
(136, 'Echantillon 73', 1, 1, 3, 'Pièces\\E73.jpg', 'Pièce fournie par CTIF'),
(137, 'Echantillon 74', 1, 1, 3, 'Pièces\\E74.jpg', 'Pièce fournie par CTIF'),
(138, 'Echantillon 75', 8, 1, 2, 'Pièces\\E75.jpg', 'Pièce fournie par CTIF'),
(139, 'Echantillon 76', 1, 9, 2, 'Pièces\\E76.jpg', 'Pièce fournie par CTIF'),
(140, 'Echantillon 77', 1, 3, 2, 'Pièces\\E77.jpg', 'Pièce fournie par CTIF'),
(141, 'Echantillon 78', 2, 1, 2, 'Pièces\\E78.jpg', 'Pièce fournie par CTIF'),
(142, 'Echantillon 79', 1, 9, 3, 'Pièces\\E79.jpg', 'Pièce fournie par CTIF'),
(143, 'Echantillon 80', 1, 7, 2, 'Pièces\\E80.jpg', 'Pièce fournie par CTIF');

-- --------------------------------------------------------

--
-- Structure de la table `procede`
--

CREATE TABLE `procede` (
  `ID_PROCEDE` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `procede`
--

INSERT INTO `procede` (`ID_PROCEDE`, `Nom`) VALUES
(1, 'Fonderie par gravité'),
(2, 'Fonderie sous pression'),
(3, 'Fonderie moule en sable'),
(4, 'Fonderie par cire perdue'),
(5, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE `secteur` (
  `ID_SECTEUR` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `secteur`
--

INSERT INTO `secteur` (`ID_SECTEUR`, `Nom`) VALUES
(1, 'Automobile'),
(2, 'Robineterie'),
(3, 'Aéronautique'),
(4, 'Militaire'),
(5, 'Nucléaire'),
(6, 'Décoration'),
(7, 'Electricité'),
(8, 'Electroménager'),
(9, 'Essais de fonderie (éprouvette)');

-- --------------------------------------------------------

--
-- Structure de la table `technique`
--

CREATE TABLE `technique` (
  `ID_TECHNIQUE` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `technique`
--

INSERT INTO `technique` (`ID_TECHNIQUE`, `Nom`) VALUES
(1, 'Radiographie numérique (CR)'),
(2, 'Radioscopie'),
(3, 'Radiographie directe (DR)');

-- --------------------------------------------------------

--
-- Structure de la table `typedefaut`
--

CREATE TABLE `typedefaut` (
  `ID_TYPE_DEFAUT` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `typedefaut`
--

INSERT INTO `typedefaut` (`ID_TYPE_DEFAUT`, `Nom`) VALUES
(1, 'Retassure spongieuse'),
(2, 'Retassure cavité'),
(3, 'Micro-retassure'),
(4, 'Retassure plume'),
(5, 'Soufflures'),
(6, 'Piqûre'),
(7, 'Crique'),
(8, 'Inclusion moins dense'),
(9, 'Inclusion plus dense'),
(10, 'Porosités gazeuses rondes'),
(11, 'Porosités gazeuses allongées'),
(12, 'Pièce saine'),
(13, 'Entrainements d\'air');

-- --------------------------------------------------------

--
-- Structure de la table `vue`
--

CREATE TABLE `vue` (
  `ID_VUE` int(11) NOT NULL,
  `ID_ECHANTILLON` int(11) DEFAULT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `DatePriseDeVue` datetime DEFAULT NULL,
  `ID_TECHNIQUE` int(11) NOT NULL,
  `PriseDeVue` varchar(255) DEFAULT NULL,
  `Observations` longtext,
  `Photo` varchar(255) DEFAULT 'Radios\\',
  `Source` varchar(255) DEFAULT NULL,
  `Format` varchar(255) DEFAULT NULL,
  `Tension` double DEFAULT NULL,
  `Intensite` double DEFAULT '0',
  `TempsDePose` double DEFAULT '0',
  `Filtre` varchar(255) DEFAULT NULL,
  `Ecran` varchar(255) DEFAULT NULL,
  `TailleSpotLaser` double DEFAULT '50',
  `FlouGeometrique` double DEFAULT NULL,
  `TypeDeFilm` varchar(255) DEFAULT 'Kodak Industrex FlexHR',
  `ResolutionSpatiale` double DEFAULT NULL,
  `AngleDeTir` double DEFAULT '90',
  `IQIVisible` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vue`
--

INSERT INTO `vue` (`ID_VUE`, `ID_ECHANTILLON`, `Nom`, `DatePriseDeVue`, `ID_TECHNIQUE`, `PriseDeVue`, `Observations`, `Photo`, `Source`, `Format`, `Tension`, `Intensite`, `TempsDePose`, `Filtre`, `Ecran`, `TailleSpotLaser`, `FlouGeometrique`, `TypeDeFilm`, `ResolutionSpatiale`, `AngleDeTir`, `IQIVisible`) VALUES
(4, 3, 'Vue 1', '2003-05-05 00:00:00', 1, 'Pièce à plat', NULL, 'Radios\\R1-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 60, 8, 60, NULL, NULL, 100, 0.009999999776482582, 'Kodak Industrex Flex HR 2174 8 X 10" (203.2 X 254 mm)', NULL, 90, NULL),
(5, 3, 'Vue 2', '2003-05-05 00:00:00', 2, NULL, NULL, 'Radios\\R1-2.jpg', 'Tube RX', NULL, 40, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 7, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R2-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 7, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R2-2.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 7, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R2-3.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 8, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R3-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 8, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R3-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 62, 'Vue 1', NULL, 2, NULL, NULL, 'Radios\\R4-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 62, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R4-5.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 113, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R55-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(148, 113, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R55-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(149, 113, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R55-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(150, 112, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R54-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(151, 112, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R54-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(153, 111, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R53-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(154, 111, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R53-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(155, 110, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R52-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(156, 110, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R52-2.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(157, 109, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R51-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(158, 109, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R51-2.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(159, 108, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R50-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(160, 108, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R50-2.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(161, 107, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R49-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(162, 107, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R49-2.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(163, 107, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R49-3.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(164, 107, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R49-4.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(165, 105, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R47-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(166, 105, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R47-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(167, 105, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R47-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(168, 103, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R45-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(169, 103, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R45-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(170, 103, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R45-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(171, 104, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R46-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(172, 104, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R46-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(173, 104, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R46-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(174, 102, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R44-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(175, 102, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R44-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(176, 101, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R43-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(177, 101, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R43-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(178, 101, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R43-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(179, 101, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R43-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(180, 100, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R42-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(181, 100, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R42-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(182, 100, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R42-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(183, 100, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R42-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(184, 100, 'Vue 5', NULL, 1, NULL, NULL, 'Radios\\R42-5.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(185, 100, 'Vue 6', NULL, 1, NULL, NULL, 'Radios\\R42-6.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 200, 5, 150, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(186, 99, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R41-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(187, 99, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R41-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(188, 97, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R39-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(189, 97, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R39-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(190, 96, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R38-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(191, 96, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R38-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 180, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(192, 95, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R37-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 170, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(193, 95, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R37-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 170, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(194, 94, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R36-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 170, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(195, 94, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R36-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 170, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(196, 63, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R6-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 63, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R6-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 62, 'Vue 3', NULL, 2, NULL, NULL, 'Radios\\R5-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 65, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R7-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 65, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R7-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 66, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R8-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 66, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R8-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 67, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R9-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 67, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R9-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 68, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R10.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 69, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R11.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 70, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R12-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 70, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R12-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 71, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R13-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 71, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R13-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 72, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R14-1.jpg', 'Tube RX Yxlon Y.TU320-D03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 72, 'Vue 2', NULL, 2, NULL, NULL, 'Radios\\R14-2.jpg', 'Tube RX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 74, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R16-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 40, 4, 150, '3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(218, 74, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R16-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 40, 4, 150, '3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(219, 75, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R17-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 70, 4, 180, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(220, 75, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R17-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 70, 4, 180, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(221, 75, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R17-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 70, 4, 180, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(222, 76, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R18-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 80, 4, 120, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(224, 77, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R19-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 80, 4, 120, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(225, 77, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R19-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 80, 4, 120, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(228, 78, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R20-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 70, 4, 120, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(229, 78, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R20-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 70, 4, 120, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(230, 79, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R21-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 40, 4, 90, '3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(231, 79, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R21-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 40, 4, 90, '3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(232, 79, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R21-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 40, 4, 90, '3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(233, 80, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R22-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 70, 4, 120, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(235, 81, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R23-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10"', 60, 4, 210, '3mm Be + 3mm Al', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(237, 82, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R24-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Al + 3mm Be', '0,025mm Pb', NULL, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(238, 82, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R24-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 150, '3mm Al + 3mm Be', '0,025mm Pb', NULL, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(239, 82, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R24-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 150, '3mm Al + 3mm Be', '0,025mm Pb', NULL, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(240, 82, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R24-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 150, '3mm Al + 3mm Be', '0,025mm Pb', NULL, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(241, 82, 'Vue 5', NULL, 1, NULL, NULL, 'Radios\\R24-5.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 240, 5, 150, '3mm Al + 3mm Be', '0,025mm Pb', NULL, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(242, 82, 'Vue 6', NULL, 1, NULL, NULL, 'Radios\\R24-6.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 240, 5, 150, '3mm Al + 3mm Be', '0,025mm Pb', NULL, NULL, 'Kodak Industrex FlexHR', NULL, NULL, NULL),
(243, 83, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R25-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(244, 83, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R25-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(245, 83, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R25-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(246, 83, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R25-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(247, 84, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R26-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 100, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(248, 84, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R26-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 100, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(249, 85, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R27-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 210, 5, 120, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(250, 85, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R27-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 210, 5, 120, '3mm Be + 3mm Al + 1mm Cu', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(251, 86, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R28-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(252, 86, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R28-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(253, 86, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R28-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(254, 87, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R29-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(255, 87, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R29-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(256, 87, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R29-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(257, 88, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R30-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(258, 88, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R30-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(259, 88, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R30-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(260, 89, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R31-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 150, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(261, 89, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R31-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 150, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(263, 90, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R32-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 150, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(264, 90, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R32-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 150, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(265, 91, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R33-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(266, 91, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R33-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(267, 91, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R33-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 150, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(268, 92, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R34-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(269, 92, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R34-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(270, 92, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R34-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(271, 92, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R34-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(272, 93, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R35-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(273, 93, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R35-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(274, 93, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R35-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(275, 101, 'Vue 5', NULL, 1, NULL, NULL, 'Radios\\R43-5.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 120, '3mm Be + 3mm Al', '0,025mm Pb', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(276, 73, 'Vue 1', NULL, 1, NULL, NULL, 'Radios\\R15-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 85, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(277, 73, 'Vue 2', NULL, 1, NULL, NULL, 'Radios\\R15-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 85, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(278, 73, 'Vue 3', NULL, 1, NULL, NULL, 'Radios\\R15-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 85, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(279, 73, 'Vue 4', NULL, 1, NULL, NULL, 'Radios\\R15-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 85, 4, 150, '3mm Al + 3mm Be', NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(281, 128, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R66-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 190, 5, 90, '3mm Al + 3mm Be', 'Kodak Industrex FlexHR', 50, NULL, NULL, NULL, 90, NULL),
(282, 128, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R66-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 190, 5, 90, '3mm Al + 3mm Be', 'Kodak Industrex FlexHR', 50, NULL, NULL, NULL, 90, NULL),
(283, 128, 'Vue 3', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R66-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 190, 5, 90, '3mm Al + 3mm Be', 'Kodak Industrex FlexHR', 50, NULL, NULL, NULL, 90, NULL),
(284, 127, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R65-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(285, 127, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R65-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(286, 127, 'Vue 3', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R65-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 170, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(287, 126, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R64-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(288, 126, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R65-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(289, 125, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R63-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 90, '3mm Al + 3mm Be', NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(290, 125, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R63-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 90, '3mm Al + 3mm Be', NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(291, 124, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R62-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 70, 5, 90, '3mm Al + 3mm Be', NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(292, 124, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R62-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 70, 5, 90, '3mm Al + 3mm Be', NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(293, 123, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R61-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 130, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(294, 123, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R61-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 130, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(295, 122, 'Vue A', '2010-06-11 00:00:00', 1, 'Vue A', NULL, 'Radios\\R60-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(296, 122, 'Vue B', '2010-06-11 00:00:00', 1, 'Vue B', NULL, 'Radios\\R60A-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(297, 122, 'Vue B1', '2010-06-11 00:00:00', 1, 'Vue B (zoom)', NULL, 'Radios\\R60A-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 180, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(298, 121, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R59-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(299, 121, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R59-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 160, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(300, 120, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R58-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(301, 120, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R58-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 140, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 0, NULL),
(302, 119, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R57-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(303, 119, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R57-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 120, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(304, 118, 'Vue 1', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R56-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 100, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(305, 118, 'Vue 2', '2010-06-11 00:00:00', 1, NULL, NULL, 'Radios\\R56-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 100, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(308, 130, '1', '2010-06-14 00:00:00', 1, NULL, NULL, 'Radios\\R67-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(309, 130, '2', '2010-06-14 00:00:00', 1, NULL, NULL, 'Radios\\R67-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(310, 131, '1', '2010-06-14 00:00:00', 1, NULL, NULL, 'Radios\\R68-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 110, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(311, 131, NULL, '2010-06-14 00:00:00', 1, NULL, NULL, 'Radios\\R68-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 110, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(312, 132, '1', '2010-06-14 00:00:00', 1, NULL, NULL, 'Radios\\R69-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 100, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(313, 132, '2', '2010-06-14 00:00:00', 1, NULL, NULL, 'Radios\\R69-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 100, 5, 90, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(315, 133, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R70-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 50, 4, 240, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(316, 133, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R70-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 50, 4, 240, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(317, 134, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R71-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 240, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(318, 134, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R71-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 240, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(319, 135, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R72-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 180, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(320, 135, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R72-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 180, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(321, 136, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R73-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(322, 136, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R73-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(323, 136, 'Vue 3', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R73-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(324, 136, 'Vue 4', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R73-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(325, 137, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R74-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(326, 137, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R74-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(327, 138, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R75-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(328, 138, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R75-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(329, 138, 'Vue 3', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R75-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(330, 138, 'Vue 4', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R75-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 150, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(332, 139, 'Vue 1', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R76-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 60, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(333, 139, 'Vue 2', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R76-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 60, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(334, 139, 'Vue 3', '2010-07-15 00:00:00', 1, NULL, NULL, 'Radios\\R76-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 60, '3mm Al + 3mm Be', 'sans', 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(335, 140, 'Vue A', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R77-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 30, 4, 240, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(336, 140, 'Vue A1', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R77-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 30, 4, 240, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(337, 140, 'Vue A2', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R77-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 30, 4, 240, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(338, 140, 'Vue B', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R77-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(339, 140, 'Vue B1', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R77-5.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(340, 140, 'Vue B2', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R77-6.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(341, 141, 'Vue A', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R78-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(342, 141, 'Vue A1', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R78-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(343, 141, 'Vue A2', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R78-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 60, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(344, 141, 'Vue B', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R78-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 40, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(345, 141, 'Vue B1', '2010-07-19 00:00:00', 1, NULL, NULL, 'Radios\\R78-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 40, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(346, 142, 'Vue 1', '2010-07-20 00:00:00', 1, NULL, NULL, 'Radios\\R79-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 120, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(347, 142, 'Vue 2', '2010-07-20 00:00:00', 1, NULL, NULL, 'Radios\\R79-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 80, 4, 120, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(348, 143, 'Vue 1', '2010-07-20 00:00:00', 1, NULL, NULL, 'Radios\\R80-1.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 70, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(349, 143, 'Vue 2', '2010-07-20 00:00:00', 1, NULL, NULL, 'Radios\\R80-2.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 70, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(350, 143, 'Vue 3', '2010-07-20 00:00:00', 1, NULL, NULL, 'Radios\\R80-3.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 70, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL),
(351, 143, 'Vue 4', '2010-07-20 00:00:00', 1, NULL, NULL, 'Radios\\R80-4.jpg', 'Tube RX Yxlon Y.TU320-D03', '8X10\'\'', 70, 4, 150, NULL, NULL, 50, NULL, 'Kodak Industrex FlexHR', NULL, 90, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `alliage`
--
ALTER TABLE `alliage`
  ADD PRIMARY KEY (`ID_ALLIAGE`);

--
-- Index pour la table `defaut`
--
ALTER TABLE `defaut`
  ADD PRIMARY KEY (`ID_DEFAUT`),
  ADD KEY `ID_TYPE_DEFAUT` (`ID_TYPE_DEFAUT`),
  ADD KEY `ID_ECHANTILLON` (`ID_ECHANTILLON`);

--
-- Index pour la table `echantillon`
--
ALTER TABLE `echantillon`
  ADD PRIMARY KEY (`ID_ECHANTILLON`),
  ADD KEY `ID_ALLIAGE` (`ID_ALLIAGE`),
  ADD KEY `ID_PROCEDE` (`ID_PROCEDE`),
  ADD KEY `ID_SECTEUR` (`ID_SECTEUR`);

--
-- Index pour la table `procede`
--
ALTER TABLE `procede`
  ADD PRIMARY KEY (`ID_PROCEDE`);

--
-- Index pour la table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`ID_SECTEUR`);

--
-- Index pour la table `technique`
--
ALTER TABLE `technique`
  ADD PRIMARY KEY (`ID_TECHNIQUE`);

--
-- Index pour la table `typedefaut`
--
ALTER TABLE `typedefaut`
  ADD PRIMARY KEY (`ID_TYPE_DEFAUT`);

--
-- Index pour la table `vue`
--
ALTER TABLE `vue`
  ADD PRIMARY KEY (`ID_VUE`),
  ADD KEY `ID_ECHANTILLON` (`ID_ECHANTILLON`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `alliage`
--
ALTER TABLE `alliage`
  MODIFY `ID_ALLIAGE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `defaut`
--
ALTER TABLE `defaut`
  MODIFY `ID_DEFAUT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT pour la table `echantillon`
--
ALTER TABLE `echantillon`
  MODIFY `ID_ECHANTILLON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT pour la table `procede`
--
ALTER TABLE `procede`
  MODIFY `ID_PROCEDE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `ID_SECTEUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `technique`
--
ALTER TABLE `technique`
  MODIFY `ID_TECHNIQUE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `typedefaut`
--
ALTER TABLE `typedefaut`
  MODIFY `ID_TYPE_DEFAUT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `vue`
--
ALTER TABLE `vue`
  MODIFY `ID_VUE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
