-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 17 avr. 2020 à 08:47
-- Version du serveur :  5.7.29
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ex6`
--
CREATE DATABASE IF NOT EXISTS `ex6` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ex6`;

-- --------------------------------------------------------

--
-- Structure de la table `filialea`
--

CREATE TABLE `filialea` (
  `idpersonnes` int(11) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `numService` int(11) DEFAULT NULL,
  `numVoiture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filialea`
--

INSERT INTO `filialea` (`idpersonnes`, `nom`, `prenom`, `email`, `numService`, `numVoiture`) VALUES
(1, 'Pauland', 'Marc', 'p.marc@nimps.com', 1, 1),
(2, 'Taralou', 'Dimitri', 'z.tar.dim@zolka.com', 3, 1),
(3, 'Marchand', 'Aline', 'm.aline@duvent.fr', 2, 2),
(4, 'Zolak', 'Pierre', 'z.pierre@purple.com', 1, 1),
(5, 'Laporte', 'martine', 'l.martine@free.fr', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `filialeb`
--

CREATE TABLE `filialeb` (
  `idpersonnes` int(11) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `numService` int(11) DEFAULT NULL,
  `numVoiture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filialeb`
--

INSERT INTO `filialeb` (`idpersonnes`, `nom`, `prenom`, `email`, `numService`, `numVoiture`) VALUES
(1, 'Marliax', 'Jean', 'm.jean@nloips.com', 3, 1),
(2, 'Zappy', 'Claudine', 'z.c.200@vayent.fr', 1, 2),
(3, 'Taralou', 'Dimitri', 'z.tar.dim@zolka.com', 3, 1),
(4, 'Zolak', 'Pierre', 'z.pierre@purple.com', 1, 1),
(5, 'Fenestry', 'Etienne', 'Fen_eti_fr@free.fr', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `idservice` int(11) NOT NULL,
  `nom_service` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`idservice`, `nom_service`) VALUES
(1, 'compta'),
(2, 'vente'),
(3, 'support');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `idvoitures` int(11) NOT NULL,
  `marque` varchar(32) NOT NULL,
  `matricule` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`idvoitures`, `marque`, `matricule`) VALUES
(1, 'Renault', '951 KIO 45'),
(2, 'Fiat', '741 MIP 65');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `filialea`
--
ALTER TABLE `filialea`
  ADD PRIMARY KEY (`idpersonnes`),
  ADD KEY `fk_idservice` (`numService`),
  ADD KEY `fk_idvoiture` (`numVoiture`);

--
-- Index pour la table `filialeb`
--
ALTER TABLE `filialeb`
  ADD PRIMARY KEY (`idpersonnes`),
  ADD KEY `fk_idserviceb` (`numService`),
  ADD KEY `fk_idvoitureb` (`numVoiture`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`idservice`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`idvoitures`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `filialea`
--
ALTER TABLE `filialea`
  MODIFY `idpersonnes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `filialeb`
--
ALTER TABLE `filialeb`
  MODIFY `idpersonnes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `idservice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `voitures`
--
ALTER TABLE `voitures`
  MODIFY `idvoitures` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `filialea`
--
ALTER TABLE `filialea`
  ADD CONSTRAINT `fk_idservice` FOREIGN KEY (`numService`) REFERENCES `services` (`idservice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idvoiture` FOREIGN KEY (`numVoiture`) REFERENCES `voitures` (`idvoitures`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `filialeb`
--
ALTER TABLE `filialeb`
  ADD CONSTRAINT `fk_idserviceb` FOREIGN KEY (`numService`) REFERENCES `services` (`idservice`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idvoitureb` FOREIGN KEY (`numVoiture`) REFERENCES `voitures` (`idvoitures`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
