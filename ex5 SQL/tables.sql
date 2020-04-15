#
# TABLE STRUCTURE FOR: Clients
#
create database ex5;
use ex5;

DROP TABLE IF EXISTS `Clients`;

CREATE TABLE `Clients` (
  `numC` int(9) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  PRIMARY KEY (`numC`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (1, 'Rowe', 'Smith');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (2, 'Streich', 'Bergstrom');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (3, 'Lubowitz', 'Bergnaum');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (4, 'Ward', 'Schamberger');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (5, 'Russel', 'Stamm');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (6, 'Medhurst', 'Mayert');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (7, 'Bernhard', 'Cole');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (8, 'Wehner', 'Roob');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (9, 'Heaney', 'Hayes');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (10, 'Schneider', 'Streich');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (11, 'Reichert', 'Baumbach');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (12, 'Raynor', 'Hansen');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (13, 'Gibson', 'Zboncak');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (14, 'Lind', 'Skiles');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (15, 'Price', 'Swaniawski');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (16, 'Wolff', 'Schinner');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (17, 'Halvorson', 'Hahn');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (18, 'Champlin', 'Douglas');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (19, 'Hyatt', 'Mertz');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (20, 'Wuckert', 'Green');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (21, 'Grant', 'Miller');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (22, 'Streich', 'Bednar');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (23, 'Ward', 'Morar');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (24, 'Okuneva', 'Zieme');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (25, 'Schaefer', 'Gleason');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (26, 'Barrows', 'Hand');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (27, 'Heller', 'Runolfsdottir');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (28, 'Pagac', 'Adams');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (29, 'Lebsack', 'Nikolaus');
INSERT INTO `Clients` (`numC`, `nom`, `prenom`) VALUES (30, 'Davis', 'Hodkiewicz');


#
# TABLE STRUCTURE FOR: Location
#

DROP TABLE IF EXISTS `Location`;

CREATE TABLE `Location` (
  `numC` int(9) unsigned NOT NULL,
  `numV` int(9) unsigned NOT NULL,
  `dateLocation` date NOT NULL,
  `prixReel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (1, 1, '2012-09-05', 43426);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (2, 2, '2002-07-10', 2242);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (3, 3, '1987-09-27', 37442);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (4, 4, '1979-07-26', 49055);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (5, 5, '1997-08-28', 66830);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (6, 6, '2011-04-25', 24724);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (7, 7, '2003-02-17', 63114);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (8, 8, '1980-11-03', 41043);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (9, 9, '1994-01-19', 73588);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (10, 10, '1982-12-11', 45311);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (11, 11, '1986-07-15', 76410);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (12, 12, '1998-08-16', 60614);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (13, 13, '1987-06-13', 86096);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (14, 14, '1971-05-03', 93692);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (15, 15, '1987-10-20', 56155);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (16, 16, '2007-12-27', 92312);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (17, 17, '1988-08-04', 88826);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (18, 18, '1989-02-03', 44246);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (19, 19, '2013-09-23', 57019);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (20, 20, '2000-05-08', 77296);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (21, 21, '2009-09-08', 17643);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (22, 22, '1984-10-20', 82508);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (23, 23, '2011-09-23', 43314);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (24, 24, '1985-04-21', 77893);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (25, 25, '2013-10-21', 11134);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (26, 26, '2004-08-03', 58299);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (27, 27, '1992-01-04', 71705);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (28, 28, '1976-09-13', 37364);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (29, 29, '1982-05-26', 89343);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (30, 30, '2009-11-01', 3683);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (1, 31, '2009-12-11', 67969);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (2, 32, '2010-08-02', 89310);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (3, 33, '1971-09-09', 93163);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (4, 34, '1973-10-04', 12250);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (5, 35, '2001-03-19', 43703);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (6, 36, '2012-01-26', 53423);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (7, 37, '1975-02-28', 89931);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (8, 38, '2008-10-09', 79260);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (9, 39, '2008-02-08', 74105);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (10, 40, '1982-05-12', 96944);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (11, 41, '1989-03-14', 23207);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (12, 42, '1984-03-27', 58765);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (13, 43, '2011-07-27', 16848);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (14, 44, '2000-09-01', 99527);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (15, 45, '2020-01-07', 99749);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (16, 46, '1999-06-05', 10469);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (17, 47, '1977-05-30', 16019);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (18, 48, '2017-10-17', 76274);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (19, 49, '1983-12-01', 62294);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (20, 50, '2010-06-03', 40734);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (21, 1, '1981-12-08', 51988);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (22, 2, '1976-10-15', 39574);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (23, 3, '2015-07-17', 39764);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (24, 4, '2005-07-03', 93260);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (25, 5, '1979-04-10', 31991);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (26, 6, '1997-04-06', 14666);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (27, 7, '2001-03-18', 76416);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (28, 8, '2012-12-05', 88283);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (29, 9, '2018-03-20', 21500);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (30, 10, '1978-02-12', 18157);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (1, 11, '2005-12-01', 8393);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (2, 12, '2016-11-02', 34324);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (3, 13, '2000-04-15', 21625);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (4, 14, '1985-07-23', 39906);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (5, 15, '1979-04-08', 55501);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (6, 16, '2017-04-13', 31498);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (7, 17, '2004-05-08', 73572);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (8, 18, '1989-02-22', 88082);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (9, 19, '1989-02-02', 7027);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (10, 20, '1988-09-19', 86056);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (11, 21, '1987-08-31', 35136);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (12, 22, '2006-03-08', 47855);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (13, 23, '1999-04-15', 15910);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (14, 24, '1999-12-09', 29659);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (15, 25, '1999-01-06', 61582);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (16, 26, '1980-12-24', 90952);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (17, 27, '1972-02-15', 11355);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (18, 28, '1974-11-22', 33110);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (19, 29, '2000-04-19', 30182);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (20, 30, '1988-01-24', 30028);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (21, 31, '1977-06-15', 3696);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (22, 32, '2006-04-13', 63290);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (23, 33, '1971-01-02', 1384);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (24, 34, '1978-09-16', 9420);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (25, 35, '2011-05-01', 88366);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (26, 36, '1985-11-02', 62199);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (27, 37, '2001-08-02', 47492);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (28, 38, '2019-12-08', 84435);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (29, 39, '2012-07-15', 87852);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (30, 40, '2016-03-30', 73323);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (1, 41, '1972-04-21', 18510);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (2, 42, '1981-01-19', 64824);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (3, 43, '1987-08-13', 61062);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (4, 44, '1985-01-14', 82263);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (5, 45, '2020-01-07', 89875);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (6, 46, '2001-05-30', 83147);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (7, 47, '1986-03-18', 90159);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (8, 48, '1971-02-08', 35980);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (9, 49, '1993-02-24', 13127);
INSERT INTO `Location` (`numC`, `numV`, `dateLocation`, `prixReel`) VALUES (10, 50, '2018-04-16', 15317);


#
# TABLE STRUCTURE FOR: Voitures
#

DROP TABLE IF EXISTS `Voitures`;

CREATE TABLE `Voitures` (
  `numV` int(11) NOT NULL AUTO_INCREMENT,
  `classe` tinyint(4) NOT NULL,
  `matricule` varchar(20) NOT NULL,
  `prixLocation` int(11) NOT NULL,
  PRIMARY KEY (`numV`),
  KEY `classe` (`classe`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (1, 5, 'voluptatem', 17831);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (2, 6, 'hic', 96647);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (3, 3, 'et', 45598);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (4, 1, 'ratione', 136818);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (5, 2, 'sit', 45819);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (6, 5, 'excepturi', 55728);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (7, 5, 'odio', 18044);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (8, 5, 'eos', 119527);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (9, 3, 'natus', 139478);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (10, 3, 'suscipit', 75994);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (11, 1, 'quos', 28848);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (12, 5, 'aut', 64408);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (13, 5, 'dolorum', 83761);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (14, 3, 'tempora', 51905);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (15, 6, 'dolor', 50274);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (16, 2, 'vel', 114030);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (17, 2, 'ut', 30873);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (18, 1, 'sed', 112653);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (19, 5, 'voluptatem', 118647);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (20, 4, 'quo', 131438);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (21, 1, 'adipisci', 63989);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (22, 4, 'adipisci', 4203);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (23, 5, 'nihil', 59945);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (24, 3, 'et', 27960);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (25, 6, 'sed', 72924);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (26, 3, 'occaecati', 138435);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (27, 4, 'nihil', 74148);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (28, 1, 'est', 98380);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (29, 4, 'doloribus', 17123);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (30, 6, 'recusandae', 65094);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (31, 6, 'et', 45398);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (32, 6, 'asperiores', 89281);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (33, 3, 'magni', 146070);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (34, 1, 'ad', 125416);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (35, 5, 'id', 23560);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (36, 2, 'repellendus', 112180);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (37, 5, 'repellat', 63831);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (38, 6, 'nemo', 32569);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (39, 2, 'consequatur', 76517);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (40, 4, 'placeat', 102068);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (41, 4, 'aut', 65677);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (42, 6, 'earum', 95212);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (43, 6, 'temporibus', 24587);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (44, 1, 'velit', 92648);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (45, 6, 'veritatis', 91180);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (46, 6, 'dolor', 35055);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (47, 1, 'quia', 81510);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (48, 1, 'aspernatur', 46057);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (49, 3, 'est', 146357);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (50, 2, 'delectus', 58386);
INSERT INTO `Voitures` (`numV`, `classe`, `matricule`, `prixLocation`) VALUES (51, 4, 'kjgvcpimkb', 5248);


