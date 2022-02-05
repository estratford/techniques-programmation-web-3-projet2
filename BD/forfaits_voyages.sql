-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 05, 2022 at 07:50 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forfaits_voyages`
--

-- --------------------------------------------------------

--
-- Table structure for table `forfaits`
--

CREATE TABLE `forfaits` (
  `id` int(11) NOT NULL,
  `destination` varchar(125) NOT NULL,
  `ville_depart` varchar(125) NOT NULL,
  `hotel_nom` varchar(125) NOT NULL,
  `hotel_coordonnees` varchar(255) NOT NULL,
  `hotel_etoile` int(11) NOT NULL,
  `hotel_chambres` int(11) NOT NULL,
  `hotel_caracteristiques` varchar(255) NOT NULL,
  `date_depart` date NOT NULL,
  `date_retour` date NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `rabais` decimal(10,0) NOT NULL,
  `vedette` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `forfaits`
--

INSERT INTO `forfaits` (`id`, `destination`, `ville_depart`, `hotel_nom`, `hotel_coordonnees`, `hotel_etoile`, `hotel_chambres`, `hotel_caracteristiques`, `date_depart`, `date_retour`, `prix`, `rabais`, `vedette`) VALUES
(1, 'La Havane Modifié', 'Montréal', 'Marazul Hotel', 'Coodonnées de l\'hotel...', 3, 120, 'Près de la plage, bars et piscines', '2022-02-05', '2022-02-12', '499', '0', 1),
(3, 'Mexique', 'Québec', 'Castillo Huatulco', 'Coordonnées de l\'hotel...', 3, 125, 'Piscines, modules pour enfants, restaurants à la carte', '2022-03-05', '2022-03-12', '990', '0', 0),
(4, 'Cuba', 'Montréal', 'Cayo Guillermo Resort', 'Coordonnées de l\'hotel.', 4, 60, 'Près d\'un casino, palapas, bars dans les piscines.', '2022-02-18', '2022-02-25', '1100', '200', 1),
(5, 'Las Végas', 'Montréal', 'Vegas Hotel', 'Coordonnées de l\'hotel..', 5, 265, 'Casino intérieur, piscine intérieur. Situé au centre de Végas.', '2022-02-12', '2022-02-26', '4500', '0', 0),
(6, 'Mexique', 'Montréal', 'Pacific Palace Beach', 'Coordonnées de l\'hotel...', 4, 200, 'Tout inclus, wifi, modules pour enfants', '2022-02-19', '2022-02-26', '855', '35', 0),
(7, 'Cayo Coco', 'Montréal', 'Pacific Playa Beach', 'Coordonnées de l\'hotel...', 4, 250, 'Tout inclus, wifi, modules pour enfants', '2022-02-13', '2022-02-19', '855', '35', 0),
(8, 'Cayo Coco', 'Montréal', 'Pacific Playa Beach', 'Coordonnées de l\'hotel...', 4, 250, 'Tout inclus, wifi, modules pour enfants', '2022-02-13', '2022-02-19', '333', '35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `destination` varchar(125) NOT NULL,
  `hotel_nom` varchar(125) NOT NULL,
  `hotel_coordonnees` varchar(155) NOT NULL,
  `date_depart` date NOT NULL,
  `date_retour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `destination`, `hotel_nom`, `hotel_coordonnees`, `date_depart`, `date_retour`) VALUES
(1, 'Mexique', 'Castillo Huatulco', 'Coordonnées de l\'hotel...', '2022-03-05', '2022-03-12'),
(2, 'Cuba', 'Cayo Guillermo Resort', 'Coordonnées de l\'hotel', '2022-02-18', '2022-02-25'),
(3, 'Cuba', 'Cayo Guillermo Resort', 'Coordonnées de l\'hotel', '2022-02-18', '2022-02-25'),
(4, 'Cayo Coco', 'Pacific Playa Beach', 'Coordonnées de l\'hotel', '2022-02-13', '2022-02-19'),
(5, 'Mexique', 'Castillo Huatulco', 'Coordonnées de l\'hotel', '2022-03-05', '2022-03-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forfaits`
--
ALTER TABLE `forfaits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forfaits`
--
ALTER TABLE `forfaits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
