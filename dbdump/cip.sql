-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 06 juin 2018 à 15:16
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

DELIMITER $$
--
-- Fonctions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `setSMRT` () RETURNS INT(11) NO SQL
    DETERMINISTIC
RETURN @vSMRT$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `cip`
--

CREATE TABLE `cip` (
  `numero` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `natureGain` int(11) NOT NULL,
  `valeurGain` float NOT NULL,
  `points` int(11) NOT NULL,
  `prime` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `etat` varchar(255) NOT NULL DEFAULT 'encours',
  `controlling` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cip`
--

INSERT INTO `cip` (`numero`, `description`, `natureGain`, `valeurGain`, `points`, `prime`, `date`, `etat`, `controlling`) VALUES
(1, 'this is the description of cip numero 1', 3, 0, 0, 0, '2018-06-06 01:20:46', 'encours', 2),
(2, 'this is the description of cip numero 2', 8, 0, 0, 0, '2018-06-06 01:22:17', 'encours', 9),
(3, 'this is the description of cip numero 3', 1, 0, 0, 0, '2018-06-06 01:22:29', 'encours', 11),
(4, 'this is the description of cip numero 4', 2, 0, 0, 0, '2018-06-06 01:22:53', 'encours', 2),
(5, 'this is the description of cip numero 5', 4, 0, 0, 0, '2018-06-06 01:23:11', 'encours', 2),
(6, 'this is the description of cip numero 6', 1, 0, 0, 0, '2018-06-06 01:23:31', 'encours', 11),
(7, 'this is the description of cip numero 7', 3, 0, 0, 0, '2018-06-06 01:23:50', 'encours', 2),
(8, 'this is the description of cip numero 8', 8, 0, 0, 0, '2018-06-06 01:24:04', 'encours', 9);

-- --------------------------------------------------------

--
-- Structure de la table `cip_user`
--

CREATE TABLE `cip_user` (
  `id` int(11) NOT NULL,
  `numcip` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `date_affectation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cip_user`
--

INSERT INTO `cip_user` (`id`, `numcip`, `iduser`, `date_affectation`) VALUES
(1, 1, 3, '2018-06-06 09:20:38'),
(2, 1, 4, '2018-06-06 09:21:00'),
(3, 1, 5, '2018-06-06 09:21:09'),
(4, 2, 3, '2018-06-06 09:21:14'),
(5, 3, 4, '2018-06-06 09:21:20'),
(6, 3, 5, '2018-06-06 09:21:22'),
(7, 4, 3, '2018-06-06 09:21:31'),
(8, 4, 5, '2018-06-06 09:21:35'),
(9, 5, 2, '2018-06-06 09:21:43'),
(10, 6, 3, '2018-06-06 09:22:14'),
(11, 6, 5, '2018-06-06 09:22:19'),
(12, 7, 3, '2018-06-06 09:22:24'),
(13, 8, 7, '2018-06-06 09:22:31'),
(14, 8, 4, '2018-06-06 09:22:35');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `serviceName` varchar(255) NOT NULL,
  `SMRT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`id`, `serviceName`, `SMRT`) VALUES
(1, 'HR', '13'),
(2, 'PPE-CC', '14'),
(3, 'Direction Quality', '15'),
(4, 'Supply Chain', '16'),
(6, 'Audi', '17'),
(7, 'IM', '18'),
(8, 'LPS plus', '8'),
(9, 'MMC', ''),
(10, 'Managing Director', ''),
(11, 'VW', ''),
(12, 'AC(Asian Customer)', ''),
(13, 'Sys App LTN1', ''),
(14, 'Commercial Managing Direction', ''),
(15, 'Shared Service Hub', ''),
(16, 'General Administration', ''),
(17, 'KSK Project MEB', ''),
(18, 'Autarks MEB', '');

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
(1, 'MOD'),
(2, 'Matière'),
(3, 'Invest.'),
(4, 'Conso.'),
(5, 'Transp.'),
(6, 'Qualité'),
(7, 'Déchet'),
(8, 'Autres');

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
(1, 'KACEM', 'farouk', 1, 0, 'admin', 'farouk.kcm95@gmail.com', 'toto'),
(2, 'BEDOUI', 'rami', 7, 0, 'controlling', 'rami_bedoui@gmail.com', 'toto'),
(3, 'JMAL', 'ammar', 8, 0, 'user', 'ammarjmel06@gmail.com', 'toto'),
(4, 'BOUZID', 'noureddine', 7, 0, 'user', 'nouredine07@gmail.com', 'toto'),
(5, 'ATTIA', 'aycha', 4, 0, 'user', 'attia92@gmail.com', 'toto'),
(8, 'FEHRI', 'sami', 8, 0, 'SMRT', 'sami_fehri@gmail.com', 'toto'),
(9, 'WERTANI', 'nawfel', 3, 0, 'controlling', 'wertani99@gmail.com', 'toto'),
(10, 'MSAKNI', 'youssef', 12, 0, 'headOfControlling', 'youssef95@gmail.com', 'toto'),
(11, 'SLITI', 'naim', 11, 0, 'controlling', 'sliti01@gmail.com', 'toto'),
(12, 'BALBOULI', 'aymen', 15, 0, 'DF', 'balbouli_ess@gmail.com', 'toto'),
(13, 'BEN CHRIFIA', 'MOAZ', 1, 0, 'SMRT', 'moaz@gmail.com', 'toto'),
(14, 'LKAABI', 'Smir', 2, 0, 'SMRT', 'Samir@gmai.com', 'toto'),
(15, 'WERTANI', 'Nawfel', 3, 0, 'SMRT', 'nawfel@gmail.com', 'toto'),
(16, 'KHAZRI', 'Wahbi', 4, 0, 'SMRT', 'wahbi@hotmail.fr', 'toto'),
(17, 'VILLA', 'david', 6, 0, 'SMRT', 'david@gmail.com', 'toto'),
(18, 'LIONEL', 'Messi', 7, 0, 'SMRT', 'lionel@gmail.com', 'tuto');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `user_by_smrt`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `user_by_smrt` (
`matricule` int(11)
,`nom` varchar(255)
,`prenom` varchar(255)
,`service` int(11)
,`points` int(11)
,`statut` varchar(255)
,`email` varchar(255)
,`password` varchar(255)
,`id` int(11)
,`serviceName` varchar(255)
,`SMRT` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la vue `user_by_smrt`
--
DROP TABLE IF EXISTS `user_by_smrt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_by_smrt`  AS  select `user`.`matricule` AS `matricule`,`user`.`nom` AS `nom`,`user`.`prenom` AS `prenom`,`user`.`service` AS `service`,`user`.`points` AS `points`,`user`.`statut` AS `statut`,`user`.`email` AS `email`,`user`.`password` AS `password`,`departement`.`id` AS `id`,`departement`.`serviceName` AS `serviceName`,`departement`.`SMRT` AS `SMRT` from (`user` join `departement` on((`user`.`service` = `departement`.`id`))) where (`user`.`service` = (select `departement`.`id` from `departement` where (`departement`.`SMRT` = `setSMRT`()))) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cip`
--
ALTER TABLE `cip`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `natureGain` (`natureGain`);

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
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cip_user`
--
ALTER TABLE `cip_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `matricule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
