-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 04 juin 2018 à 12:19
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cip`
--

-- --------------------------------------------------------

--
-- Structure de la table `cip`
--

CREATE TABLE `cip` (
  `numero` int(11) NOT NULL,
  `collaborateurs` varchar(255) NOT NULL,
  `matricule` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `natureGain` int(11) NOT NULL,
  `valeurGain` float NOT NULL,
  `points` int(11) NOT NULL,
  `prime` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `etat` varchar(255) NOT NULL DEFAULT 'encours',
  `poste` int(11) NOT NULL,
  `controlling` int(11) NOT NULL DEFAULT '28'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cip`
--

INSERT INTO `cip` (`numero`, `collaborateurs`, `matricule`, `service`, `description`, `natureGain`, `valeurGain`, `points`, `prime`, `date`, `etat`, `poste`, `controlling`) VALUES
(1, 'farouk kacem', 27, '24', 'teeeeeeeeeeeeeest', 2, 0, 0, 0, '2018-05-18 11:20:39', 'encours', 0, 27),
(2, 'farouk kacem', 27, '24', 'hhhhh', 1, 6000000000, 0, 0, '2018-05-18 11:21:56', 'encours', 30, 27),
(3, 'farouk kacem', 27, '24', 'jhf', 0, 5, 5, 5, '2018-05-19 12:31:54', 'encours', 30, 0),
(4, 'farouk kacem', 27, '24', 'gjfh', 0, 5, 5, 5, '2018-05-19 12:33:14', 'encours', 30, 27),
(5, 'farouk kacem', 27, '24', 'bbbbbbbbb', 0, 5, 99, 5, '2018-05-19 12:34:35', 'encours', 30, 0),
(6, 'undefined undefined', 30, 'undefined', 'undefined', 0, 8, 0, 0, '2018-05-21 13:50:34', 'encours', 30, 0),
(7, 'undefined undefined', 28, 'undefined', 'undefined', 0, 2000, 0, 0, '2018-05-22 08:04:36', 'valid2', 30, 0),
(8, 'undefined undefined', 27, 'undefined', 'hhhhhh', 2, 7, 0, 0, '2018-05-22 08:13:33', 'encours', 30, 0),
(9, 'hjc', 30, '23', 'j', 1, 88, 888, 88, '2018-05-22 09:16:49', 'encours', 0, 29),
(10, 'hjf', 27, '24', 'jgk,n', 1, 88, 99, 9, '2018-05-22 09:17:41', 'encours', 9, 30),
(11, 'test', 30, '23', 'test', 1, 55, 55, 55, '2018-05-24 13:04:34', 'encours', 5, 27),
(12, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-05-28 12:26:04', 'encours', 0, 28),
(13, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-05-28 12:28:01', 'encours', 0, 28),
(14, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-05-28 12:33:06', 'encours', 0, 28),
(15, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-05-28 12:34:02', 'encours', 0, 28),
(16, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-05-28 12:46:01', 'encours', 0, 28),
(17, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-05-28 12:51:57', 'encours', 0, 28),
(18, '', 0, '', 'xxxxxxxxxxxxxxxxx', 2, 0, 0, 0, '2018-05-28 12:54:44', 'encours', 0, 28),
(19, '', 0, '', 'waaaaa', 3, 0, 0, 0, '2018-05-28 13:05:39', 'encours', 0, 28),
(20, '', 0, '', '1004', 3, 0, 0, 0, '2018-05-28 13:11:10', 'encours', 0, 28),
(21, '', 0, '', 'kkkkkkkkk', 1, 0, 0, 0, '2018-05-28 13:13:22', 'encours', 0, 28),
(22, '', 0, '', '77', 1, 0, 0, 0, '2018-05-28 13:21:32', 'encours', 0, 28),
(23, '', 0, '', 'vvvvvv', 2, 0, 0, 0, '2018-05-28 13:25:59', 'encours', 0, 28),
(24, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-06-03 13:40:51', 'encours', 0, 28),
(25, '', 0, '', 'undefined', 0, 0, 0, 0, '2018-06-04 03:11:13', 'encours', 0, 28);

-- --------------------------------------------------------

--
-- Structure de la table `cip_user`
--

CREATE TABLE `cip_user` (
  `numcip` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `contribution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cip_user`
--

INSERT INTO `cip_user` (`numcip`, `iduser`, `id`, `contribution`) VALUES
(3, 28, 2, 0),
(5, 28, 3, 0),
(78, 28, 5, 20),
(78, 28, 6, 20),
(3, 27, 7, 0),
(3, 27, 8, 0),
(0, 27, 9, 0),
(0, 28, 10, 0),
(0, 28, 11, 0),
(0, 30, 12, 0),
(0, 27, 13, 0),
(3, 27, 14, 0),
(3, 27, 15, 0),
(3, 27, 16, 0),
(3, 27, 17, 0),
(3, 27, 18, 0),
(0, 27, 19, 0),
(0, 28, 20, 0),
(0, 28, 21, 0);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `serviceName` varchar(255) NOT NULL,
  `SMRT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `serviceName`, `SMRT`) VALUES
(23, 'a', 2),
(24, 'b', 3),
(25, 'c', 4),
(26, 'd', 4);

-- --------------------------------------------------------

--
-- Structure de la table `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `natureGain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gain`
--

INSERT INTO `gain` (`id`, `natureGain`) VALUES
(1, 'invest.'),
(2, 'conso.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `matricule` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `service` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`matricule`, `nom`, `prenom`, `service`, `points`, `statut`, `email`, `password`) VALUES
(27, 'farouk', 'kacem', 24, 1004, 'user', 'c', 'c'),
(28, 'farouk', 'test', 23, 24, 'user', 'SMRT', 'SMRT'),
(30, 'ghkckh', 'hkgchg', 24, 25, 'user', 'f', 'f'),
(31, 'test', 'test', 23, 44, 'admin', 'test', 'test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cip`
--
ALTER TABLE `cip`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `natureGain` (`natureGain`),
  ADD KEY `matricule` (`matricule`),
  ADD KEY `service` (`service`);

--
-- Index pour la table `cip_user`
--
ALTER TABLE `cip_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `service` (`service`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cip`
--
ALTER TABLE `cip`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `cip_user`
--
ALTER TABLE `cip_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `matricule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `service` FOREIGN KEY (`service`) REFERENCES `departement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
