-- Question 1

create database syssolaire_geoffrey;

use syssolaire_geoffrey;


-- Question 2

-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 20 avr. 2020 à 13:17
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
-- Base de données : `syssolaire_geoffrey`
--

-- --------------------------------------------------------

--
-- Structure de la table `planetes_geoffrey`
--

CREATE TABLE `planetes_geoffrey` (
  `id` int(11) NOT NULL,
  `nom` varchar(16) NOT NULL,
  `distance_soleil` int(11) NOT NULL,
  `rotation` float NOT NULL,
  `revolution` float NOT NULL,
  `satellites` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `planetes_geoffrey`
--

INSERT INTO `planetes_geoffrey` (`id`, `nom`, `distance_soleil`, `rotation`, `revolution`, `satellites`) VALUES
(1, 'Mercure', 58, 1406.4, 88, 0),
(2, 'Venus', 108, 5832, 225, 0),
(3, 'Terre', 150, 24, 365.25, 1),
(4, 'Mars', 228, 24.6, 687.25, 2),
(5, 'Jupiter', 778, 9.92, 3232.75, 63),
(6, 'Saturne', 1420, 10.7, 10747.2, 60),
(7, 'Uranus', 2870, 17.2, 30836, 27),
(8, 'Neptune', 4500, 16.1, 60225, 13);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `planetes_geoffrey`
--
ALTER TABLE `planetes_geoffrey`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `planetes_geoffrey`
--
ALTER TABLE `planetes_geoffrey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Question 3

select * from planetes_geoffrey;


-- Question 4

select count(nom) as nb_planetes from planetes_geoffrey;


-- Question 5

select nom from planetes_geoffrey order by satellites desc limit 1;


-- Question 6

select nom from planetes_geoffrey order by distance_soleil desc limit 1;


-- Question 7

select nom from planetes_geoffrey where nom like 'm%';


-- Question 8

select nom from planetes_geoffrey where nom like '%s%';


-- Question 9

select nom from planetes_geoffrey where nom not like '%t%';


-- Question 10

select nom from planetes_geoffrey limit 5;


-- Question 11

select nom from planetes_geoffrey where satellites > 0;


-- Question 12

select sum(satellites)/count(*) as moyenne_satellites from planetes_geoffrey;


-- Question 13

select sum(satellites)/count(*) as moyenne_satellites from planetes_geoffrey where satellites > 10;


-- Question 14

select nom from planetes_geoffrey order by nom desc;


-- Question 15

select nom from planetes_geoffrey 
  where (satellites > (select satellites from planetes_geoffrey where nom = 'terre') and satellites < (select satellites from planetes_geoffrey where nom = 'saturne'));


-- Question 16

select nom from planetes_geoffrey 
  where (distance_soleil > (select distance_soleil from planetes_geoffrey where nom = 'jupiter') and satellites < 20);


-- Question 17

select concat(substring(lower(nom),1,3), '(', satellites, ')') from planetes_geoffrey;


-- Question 18

select nom from planetes_geoffrey where satellites = 60;


-- Question 19

select nom from planetes_geoffrey where (revolution > 500 and revolution < 5000);


-- Question 20

update planetes_geoffrey set satellites = satellites + 16 where nom = 'jupiter';


-- Question 21

update planetes_geoffrey set satellites = satellites + 1 where nom = 'neptune';


-- Question 22

alter table planetes_geoffrey add habitat char(1) default 'N';


-- Question 23

update planetes_geoffrey set habitat = 'O' where nom = 'terre';


-- Question 24

select adddate(curdate(), -1) as HIER;


-- Question 25

select datediff('2021-02-14', now()) as jours_avant_la_fin_du_monde;


-- Question 26

select adddate(curdate(), 100) as RDV;


-- Question 27

select datediff('2019-11-06', '2019-06-08');


-- Question 28
set lc_time_names = 'fr_FR';
select dayname('2021-12-24') as Le_24_decembre_2021_sera_un;


-- Question 29

select dayofyear('2019-09-10');


-- Question 30

select last_day(curdate());
select adddate(adddate(curdate(), interval -day(curdate()) day), interval 1 month) as Dernier_jour_du_mois;
