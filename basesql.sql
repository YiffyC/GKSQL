-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Jeu 08 Février 2018 à 09:38
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `basesql`
--

-- --------------------------------------------------------

--
-- Structure de la table `affect`
--

CREATE TABLE IF NOT EXISTS `affect` (
  `MLE` smallint(5) NOT NULL,
  `CODPRO` int(15) unsigned NOT NULL DEFAULT '0',
  `FONCTION` varchar(20) DEFAULT NULL,
  `DATDEB` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATFIN` datetime DEFAULT NULL,
  `PVENTE` double(15,5) DEFAULT NULL,
  PRIMARY KEY (`MLE`,`DATDEB`),
  KEY `FK_affect_codpro` (`CODPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `affect`
--

INSERT INTO `affect` (`MLE`, `CODPRO`, `FONCTION`, `DATDEB`, `DATFIN`, `PVENTE`) VALUES
(25, 22, 'ANALYSTE', '2005-11-29 00:00:00', '2006-04-15 00:00:00', 2100.00000),
(25, 6, 'ING REALISATION', '2006-04-01 00:00:00', NULL, 2000.00000),
(25, 17, 'ANALYSTE', '2018-01-01 00:00:00', NULL, 2500.00000),
(53, 990, 'ANALYSTE', '2007-02-02 00:00:00', NULL, 2500.00000),
(54, 120, 'ANALYSTE', '2007-02-02 00:00:00', NULL, 2500.00000),
(55, 120, 'ANALYSTE', '2007-02-02 00:00:00', NULL, 2500.00000),
(56, 6, 'ANALYSTE', '2007-02-02 00:00:00', NULL, 2500.00000),
(100, 17, 'ING REALISATION', '2005-10-12 00:00:00', '2006-05-03 00:00:00', 1900.00000),
(100, 12, 'ANALYSTE', '2006-04-01 00:00:00', '2007-02-01 00:00:00', 2100.00000),
(100, 17, 'ANALYSTE', '2007-02-02 00:00:00', NULL, 2500.00000),
(100, 120, 'ANALYSTE', '2007-02-03 00:00:00', NULL, 2500.00000),
(100, 1000, 'ING REALISATION', '2007-02-04 00:00:00', NULL, 1900.00000),
(103, 17, 'ING REALISATION', '2005-10-12 00:00:00', '2006-05-03 00:00:00', 1000.00000),
(218, 22, 'CHEF DE PROJET', '1994-04-01 00:00:00', NULL, 2900.00000),
(218, 2, 'PROGRAMMEUR', '1996-04-27 00:00:00', NULL, 1100.00000),
(273, 22, 'ING REALISATION', '2004-04-01 00:00:00', '2006-11-01 00:00:00', 1800.00000),
(273, 12, 'ING REALISATION', '2007-07-15 00:00:00', NULL, 2000.00000),
(273, 2, 'ING ANALYSTE', '2007-07-25 00:00:00', NULL, 2000.00000),
(286, 62, 'ING REALISATION', '2004-01-01 00:00:00', '2005-10-01 00:00:00', 1750.00000),
(303, 1, 'PROGRAMMEUR', '1994-12-11 00:00:00', '1998-11-21 00:00:00', 1100.00000),
(303, 62, 'ANALYSTE', '1996-06-01 00:00:00', '1998-01-01 00:00:00', 1100.00000),
(303, 12, 'ANALYSTE', '2001-05-11 00:00:00', '2002-01-01 00:00:00', 1200.00000),
(303, 120, 'ANALYSTE', '2005-02-01 00:00:00', NULL, 1210.00000),
(303, 2, 'ANALYSTE', '2018-01-01 00:00:00', NULL, 2210.00000),
(304, 1, 'ANALYSTE', '1996-06-01 00:00:00', NULL, 2450.00000),
(333, 2, 'ING REALISATION', '1994-06-01 00:00:00', '1994-12-31 00:00:00', 1900.00000),
(633, 2, 'ANALYSTE', '1996-06-01 00:00:00', NULL, 2450.00000),
(652, 1000, 'ANALYSTE', '1996-06-01 00:00:00', NULL, 2450.00000),
(672, 17, 'ANALYSTE', '1996-06-01 00:00:00', NULL, 2200.00000),
(672, 120, 'ING REALISATION', '1999-05-01 00:00:00', '2001-09-11 00:00:00', 1800.00000),
(672, 22, 'ING REALISATION', '2004-05-01 00:00:00', '2006-06-01 00:00:00', 1750.00000),
(690, 6, 'ING REALISATION', '1995-12-01 00:00:00', '2006-06-01 00:00:00', 1750.00000),
(690, 6, 'ING PERFECTIONNE', '1996-09-01 00:00:00', NULL, 2300.00000),
(691, 6, 'ANALYSTE', '2006-09-04 00:00:00', NULL, 2500.00000),
(692, 17, 'ANALYSTE', '1999-03-25 00:00:00', '2000-06-30 00:00:00', 2000.00000),
(692, 62, 'CHEF DE PROJET', '2006-10-06 00:00:00', NULL, 2900.00000),
(751, 120, 'ING REALISATION', '2004-06-01 00:00:00', '2006-12-15 00:00:00', 1900.00000),
(751, 62, 'ING REALISATION', '2007-09-01 00:00:00', NULL, 2100.00000),
(752, 120, 'ING REALISATION', '2007-06-01 00:00:00', NULL, 1900.00000),
(753, 120, 'ING REALISATION', '2007-06-01 00:00:00', NULL, 1900.00000),
(754, 120, 'ING REALISATION', '2007-06-01 00:00:00', NULL, 1900.00000),
(755, 120, 'ING REALISATION', '2007-06-01 00:00:00', NULL, 1900.00000),
(756, 120, 'ING REALISATION', '2007-06-01 00:00:00', NULL, 1900.00000),
(801, 899, 'INGENIEUR CONSEIL', '2006-04-01 00:00:00', NULL, 3000.00000),
(802, 990, 'ING CONSULTANT', '2006-04-01 00:00:00', NULL, 2900.00000),
(803, 899, 'ING ANALYSTE', '2006-04-01 00:00:00', NULL, 2000.00000),
(804, 1, 'ING ANALYSTE', '2007-04-01 00:00:00', NULL, 2000.00000),
(805, 1, 'ING ANALYSTE', '2007-04-01 00:00:00', NULL, 2000.00000),
(851, 1, 'ANALYSTE', '2006-01-01 00:00:00', NULL, 2100.00000),
(853, 899, 'INGENIEUR SYSTEME', '2006-01-01 00:00:00', NULL, 3100.00000),
(933, 22, 'ING REALISATION', '2004-04-01 00:00:00', NULL, 1800.00000),
(1004, 120, 'ING COMMERCIAL', '2006-12-01 00:00:00', NULL, 3000.00000),
(1211, 120, 'ING REALISATION', '2006-12-01 00:00:00', NULL, 2300.00000),
(1220, 120, 'INGENIEUR SYSTEME', '1998-01-01 00:00:00', '2000-02-20 00:00:00', 3100.00000),
(1220, 899, 'INGENIEUR SYSTEME', '2006-01-01 00:00:00', NULL, 3100.00000),
(1451, 120, 'ING REALISATION', '2006-12-01 00:00:00', NULL, 2000.00000);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `CODCLI` int(15) unsigned NOT NULL DEFAULT '0',
  `DESIGN` varchar(20) DEFAULT NULL,
  `NOTEL` varchar(14) DEFAULT NULL,
  `ADRESSE` varchar(30) DEFAULT NULL,
  `CODEPOST` char(5) DEFAULT NULL,
  `VILLE` varchar(20) DEFAULT NULL,
  `CORRESP` varchar(20) DEFAULT NULL,
  `LIBSECT` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CODCLI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`CODCLI`, `DESIGN`, `NOTEL`, `ADRESSE`, `CODEPOST`, `VILLE`, `CORRESP`, `LIBSECT`) VALUES
(1, 'RENAULT', '01 44 73 22 11', 'ZAC Billancourt', '92100', 'BOULOGNE \r\nCEDEX', 'CARLOS', 'AUTOMOBILE'),
(2, 'POINT PRESSE', '01 54 23 66 88', '1 place du marchÃ©', '92000', 'BOULOGNE', 'ROBERT', 'PRESSE'),
(3, 'VAN KLOOT', '01 57 63 21 02', '4 place Brooker', '97654', 'BRUXELLES', 'DEMESSMAEKER', 'EDITION'),
(7, 'RASPOUTINE', '01 92 54 18 25', '32 impasse Taillefer', '20000', 'AJACCIO', 'TARANTINI', 'TOURISME'),
(9, 'PRINTEMPS', '01 42 17 17 11', '35 boulevard Haussmann', '75009', 'PARIS', 'RAVIDOVICCI', 'DISTRIBUTION'),
(13, 'RFF', '01 57 21 44 33', 'zone Tolbiac', '75013', 'PARIS', 'TRANSPORT', NULL),
(77, 'BOUCHERIE SANZOT', '01 77 66 71 44', '3 rue des tournesols', '77543', 'MOULINSARD', 'DUPONT AND DUPOND', 'VIANDE EN GROS'),
(120, 'BEBERT JEUNE', '01 77 35 08 33', '10 boulevard Saint-Michel', '75005', 'PARIS', 'LAJAUNIE', 'PRESSE'),
(127, 'LECLERC', '01 29 03 45 71', '11 rue de Rivoli', '75001', 'PARIS', 'COCHONOU', 'FILATURE');

-- --------------------------------------------------------

--
-- Structure de la table `cli_pro`
--

CREATE TABLE IF NOT EXISTS `cli_pro` (
  `CODCLI` int(15) unsigned NOT NULL DEFAULT '0',
  `CODPRO` int(15) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CODCLI`,`CODPRO`),
  KEY `FK_cli_pro_codpro` (`CODPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 9216 kB';

--
-- Contenu de la table `cli_pro`
--

INSERT INTO `cli_pro` (`CODCLI`, `CODPRO`) VALUES
(7, 1),
(77, 1),
(9, 2),
(3, 6),
(3, 12),
(2, 17),
(1, 22),
(2, 62),
(1, 120),
(120, 899),
(13, 990);

-- --------------------------------------------------------

--
-- Structure de la table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `CODEPT` int(15) unsigned NOT NULL DEFAULT '0',
  `DESIGN` varchar(20) DEFAULT NULL,
  `ADRESSE` varchar(30) DEFAULT NULL,
  `CODEPOST` char(5) DEFAULT NULL,
  `VILLE` varchar(20) DEFAULT NULL,
  `NOTEL` varchar(14) DEFAULT NULL,
  `PDG` varchar(20) DEFAULT NULL,
  `DG` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CODEPT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dept`
--

INSERT INTO `dept` (`CODEPT`, `DESIGN`, `ADRESSE`, `CODEPOST`, `VILLE`, `NOTEL`, `PDG`, `DG`) VALUES
(1, 'WAGRAM', '141 avenue de Wagram', '75017', 'PARIS', '01 47 63 31 38', NULL, NULL),
(2, 'CONSEIL', '9 rue du chat qui pelote', '75008', 'PARIS', '01 47 66 03 22', 'LEDDET', 'DESCHAMPS'),
(3, 'INDUSTRIE', '9 boulevard Gouvion Saint-Cyr', '75017', 'PARIS', '01 40 68 40 00', 'PHILIPPOT', 'DERATHE'),
(4, 'BANQUE ET SERVICES', '9 boulevard Gouvion Saint-Cyr', '75017', 'PARIS', '01 47 66 52 32', 'WALLUT', 'SAURIN'),
(5, 'MULTI SYSTEMES', '9 boulevard Gouvion Saint-Cyr', '75017', 'PARIS', '01 42 85 18 92', 'PHILIPPOT', 'DERATHE'),
(6, 'ETHNOS', '9 rue Alfred de Vigny', '75008', 'PARIS', '01 47 66 03 22', 'LEDDET', 'ROQUES'),
(7, 'ACTION FORMATION', '24 rue de Londres', '75009', 'PARIS', '01 40 68 40 00', 'WALLUT', 'BALLU'),
(8, 'RESEAUX ET SYSTEMES', '24 rue de Londres', '75009', 'PARIS', '01 40 68 40 00', 'TREPS', 'HIEGEL'),
(9, 'PLURI SYSTEMES', '124 rue Danton', '92300', 'LEVALLOIS', '01 40 68 40 00', 'TREPS', 'LESGUILLIER'),
(10, 'INSTITUT ASSURANCES', '124 Rue Danton', '92300', 'LEVALLOIS', '01 40 68 40 00', 'TREPS', 'HERRMANN'),
(11, 'PRODUITS LOGICIELS', '152 boulevard Malesherbes', '75017', 'PARIS', '01 46 22 93 80', 'PAILLETTE', 'JACQUIN'),
(12, 'OUEST', '1 rue de Paris', '35510', 'CESSON-SEVIGNE', '01 99 83 45 45', 'PAILLETTE', 'DESCHAMPS'),
(13, 'SUD-EST', '26 rue de la soierie', '69628', 'LYON-VILLEURBANNE', '01 78 93 08 72', 'PAILLETTE', 'DESCHAMPS'),
(14, 'NORD', '4 rue des Flandres', '59700', 'MARCQ-EN-BAROEUL', '01 21 57 12 46', 'PAILLETTE', 'DERATHE'),
(15, 'EAL', '16 rue de l''hospice Comtesse', '59170', 'CROIX', '01 20 98 52 30', 'LEDDET', 'ROQUES'),
(16, 'COMPTABILITE', '9 boulevard Gouvion Saint-Cyr', '75017', 'PARIS', '01 40 68 40 00', NULL, NULL),
(17, 'SOGEMA', '93 rue Henri Rochefort BP 118 ', '91004', 'EVRY CEDEX', '01 60 77 82 83', 'TREPS', 'HERRMANN');

-- --------------------------------------------------------

--
-- Structure de la table `emploi`
--

CREATE TABLE IF NOT EXISTS `emploi` (
  `MLE` smallint(5) NOT NULL,
  `dateNT` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CODEPT` int(15) unsigned DEFAULT NULL,
  `DATSOR` datetime DEFAULT NULL,
  PRIMARY KEY (`MLE`,`dateNT`),
  KEY `FK_emploi_codept` (`CODEPT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 9216 kB';

--
-- Contenu de la table `emploi`
--

INSERT INTO `emploi` (`MLE`, `dateNT`, `CODEPT`, `DATSOR`) VALUES
(25, '1990-12-15 00:00:00', 10, '1995-12-31 00:00:00'),
(25, '1996-01-01 00:00:00', 7, '1999-12-31 00:00:00'),
(25, '2000-01-01 00:00:00', 4, NULL),
(53, '2005-01-03 00:00:00', 13, NULL),
(54, '2005-01-03 00:00:00', 13, NULL),
(55, '2007-01-03 00:00:00', 13, NULL),
(56, '2007-01-03 00:00:00', 13, NULL),
(100, '1990-07-31 00:00:00', 7, '1994-02-01 00:00:00'),
(100, '1994-02-02 00:00:00', 8, '2004-11-30 00:00:00'),
(100, '2004-12-01 00:00:00', 8, NULL),
(103, '2004-02-02 00:00:00', 4, NULL),
(218, '1991-01-01 00:00:00', 7, NULL),
(273, '1991-03-01 00:00:00', 3, '1993-12-01 00:00:00'),
(273, '1993-12-03 00:00:00', 4, NULL),
(286, '2000-07-01 00:00:00', 4, '2003-09-01 00:00:00'),
(286, '2003-09-02 00:00:00', 7, NULL),
(303, '1996-04-28 00:00:00', 14, NULL),
(304, '1996-04-11 00:00:00', 14, NULL),
(333, '1984-04-01 00:00:00', 4, NULL),
(633, '1996-04-03 00:00:00', 14, NULL),
(652, '1990-11-17 00:00:00', 5, '1993-10-01 00:00:00'),
(652, '1993-10-03 00:00:00', 8, NULL),
(672, '1994-07-01 00:00:00', 7, NULL),
(690, '1992-07-26 00:00:00', 5, '2006-12-31 00:00:00'),
(690, '2007-01-01 00:00:00', 4, '2018-01-01 00:00:00'),
(690, '2018-01-02 00:00:00', 7, NULL),
(691, '1993-07-20 00:00:00', 5, NULL),
(692, '1993-07-30 00:00:00', 6, NULL),
(741, '1996-05-31 00:00:00', 15, NULL),
(751, '1991-06-27 00:00:00', 4, NULL),
(752, '1996-04-01 00:00:00', 17, NULL),
(753, '1996-04-01 00:00:00', 17, NULL),
(754, '1996-04-01 00:00:00', 17, NULL),
(755, '1995-11-01 00:00:00', 16, NULL),
(801, '1995-09-01 00:00:00', 7, NULL),
(802, '1993-01-01 00:00:00', 12, '1995-08-31 00:00:00'),
(802, '1995-09-01 00:00:00', 7, NULL),
(803, '1995-09-01 00:00:00', 12, NULL),
(804, '1995-09-01 00:00:00', 12, NULL),
(805, '2018-09-01 00:00:00', 12, NULL),
(851, '2002-11-01 00:00:00', 10, NULL),
(853, '2002-12-16 00:00:00', 8, NULL),
(933, '1991-03-01 00:00:00', 3, '1993-12-01 00:00:00'),
(933, '1993-12-02 00:00:00', 7, '1996-01-01 00:00:00'),
(933, '1996-01-02 00:00:00', 3, NULL),
(1004, '1993-11-01 00:00:00', 11, NULL),
(1211, '1991-05-14 00:00:00', 10, '1993-12-01 00:00:00'),
(1211, '1993-12-02 00:00:00', 4, NULL),
(1220, '2002-12-01 00:00:00', 7, NULL),
(1451, '2005-06-01 00:00:00', 4, NULL),
(4000, '2003-11-01 00:00:00', 8, NULL),
(4251, '2000-12-02 00:00:00', 3, NULL),
(6001, '2004-12-02 00:00:00', 3, NULL),
(8900, '2005-11-01 00:00:00', 7, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ingenieur`
--

CREATE TABLE IF NOT EXISTS `ingenieur` (
  `MLE` smallint(5) NOT NULL,
  `NOM` varchar(20) DEFAULT NULL,
  `PRENOM` varchar(20) DEFAULT NULL,
  `NOSS` varchar(50) DEFAULT NULL,
  `DATNAIS` datetime DEFAULT NULL,
  `NOTEL` varchar(14) DEFAULT NULL,
  `ADRESSE` varchar(30) DEFAULT NULL,
  `CODEPOST` varchar(5) DEFAULT NULL,
  `VILLE` varchar(20) DEFAULT NULL,
  `SEXE` varchar(1) DEFAULT NULL,
  `SITUATION` varchar(1) DEFAULT NULL,
  `CPT` double(15,5) DEFAULT NULL,
  PRIMARY KEY (`MLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ingenieur`
--

INSERT INTO `ingenieur` (`MLE`, `NOM`, `PRENOM`, `NOSS`, `DATNAIS`, `NOTEL`, `ADRESSE`, `CODEPOST`, `VILLE`, `SEXE`, `SITUATION`, `CPT`) VALUES
(25, 'LORENT', 'CATHERINE', '2600500000000', '1960-05-15 00:00:00', '01 30 64 19 31', '8 rue de Samar', '78180', 'MONTIGNY', 'F', '0', 10.00000),
(53, 'BLASQUEZ', 'NICOLAS', '1500600000000', '1950-06-30 00:00:00', '01 19 04 56 78', 'AllÃ©e des Verdurins', '84300', 'CARPENTRAS', 'M', '0', 3.00000),
(54, 'HERNANDEZ', 'ANTOINE', '1510500000000', '1951-05-25 00:00:00', '01 90 84 83 79', 'La Bouteillonne', '84140', 'LE THOR', 'M', '0', 1.00000),
(55, 'MARCIER', 'JACQUES', '1470400000000', '1947-04-16 00:00:00', '01 90 26 78 90', 'AllÃ©s des rossignols', '84190', 'BEAUMES DE VENISE', 'M', '0', 3.00000),
(56, 'GALLET', 'BRUNO', '1490500000000', '1949-05-16 00:00:00', '01 42 51 86 03', '1 rue Carnot', '84200', 'ORANGE', 'M', '2', 20.00000),
(100, 'DUCHE', 'SYLVIE', '2590900000000', '1959-09-12 00:00:00', '01 78 89 75 25', '10 rue Danton', '92500', 'LEVALLOIS-PERRET', 'F', '2', 5.00000),
(103, 'SOUPINACIO', 'JESUS', '1590900000000', '1959-09-15 00:00:00', NULL, '25 rue de la tÃªte d or', '69006', 'LYON', 'M', '2', 5.00000),
(218, 'FONTAINE', 'JEAN-PIERRE', '1460600000000', '1946-06-10 00:00:00', '01 54 89 24 98', '17 rue Dupleix', '75015', 'PARIS', 'M', '1', 6.00000),
(273, 'CHICHE', 'GLADYS', '2600900000000', '1960-09-09 00:00:00', NULL, '13 rue de Budapest', '75009', 'PARIS', 'F', '1', 7.00000),
(286, 'ROUVRAY', 'PHILIPPE', '1631100000000', '1963-11-24 00:00:00', '01 42 81 15 11', '4 rue Lamartine', '75009', 'PARIS', 'M', '1', 8.00000),
(303, 'SALAMI', 'JUSTIN', '1491000000000', '1949-10-20 00:00:00', '01 27 47 56 78', '25 rue Esquermoise', '59000', 'LILLE', 'M', '0', 10.00000),
(304, 'ALPHANDERY', 'ALPHONSE', '1450400000000', '1945-04-20 00:00:00', '01 26 78 96 78', '16 rue de la Monnaie', '59000', 'LILLE', 'M', '1', 10.00000),
(333, 'PONCHEL', 'VINCENT', '1721100000000', '1972-11-10 00:00:00', '01 42 76 54 32', '145 rue de la pompe', '75016', 'PARIS', 'M', '1', 10.00000),
(633, 'BALLARD', 'GASTON', '1700700000000', '1970-07-06 00:00:00', '01 24 56 79 09', '5 rue basse', '59000', 'LILLE', 'M', '2', 9.00000),
(652, 'BIBER', 'ALBERT', '1570700000000', '1957-07-27 00:00:00', '01 45 85 47 52', '54 avenue de la grande BriÃ¨re', '75000', 'PARIS', 'M', '2', 12.00000),
(672, 'DUVAL', 'CHRISTINE', '2662000000000', '1966-10-06 00:00:00', '01 42 51 86 05', '45 rue Lamarck', '75018', 'PARIS', 'F', '0', 11.00000),
(690, 'LOPEZ', 'MARIA', '2611000000000', '1961-10-17 00:00:00', '01 98 96 54 30', '100 rue Boregon', '31000', 'TOULOUSE', 'F', '0', 1.00000),
(691, 'THREAD', 'LINDA', '2580100000000', '1958-01-27 00:00:00', '01 90 39 92 01', '10 rue du lion enragÃ©', '90000', 'BELFORT', 'F', '0', 24.00000),
(692, 'BIGOUDE', 'JOHNNY', '1750900000000', '1975-09-05 00:00:00', '01 44 56 38 39', '40 rue de Charenton', '75012', 'PARIS', 'M', '0', 10.00000),
(741, 'FAISLUIMAL', 'JOHNNY', '1730800000000', '1973-08-05 00:00:00', '01 40 60 78 05', '23 impasse Montenegro', '75020', 'PARIS', 'M', '0', 10.00000),
(751, 'CALBARDURE', 'FRANCOIS', '1740300000000', '1974-03-11 00:00:00', '01 45 84 43 64', '56 rue de la porte jaune', '75000', 'PARIS', 'M', '2', 12.00000),
(752, 'KARAMAZOV', 'ILIOUCHINE', '2780300000000', '1978-03-31 00:00:00', '01 40 50 60 70', '5 rue de la Lorraine', '57500', 'SAINT-AVOLD', 'F', '2', 12.00000),
(753, 'GAGARINE', 'JOSEPHA', '2770400000000', '1977-04-01 00:00:00', '01 68 57 84 93', '30 rue de la RÃ©publique', '91000', 'EVRY', 'F', '2', 2.00000),
(754, 'TURINCEV', 'SACHA', '1670300000000', '1967-03-08 00:00:00', '01 55 55 55 55', 'Cellule 59 QHS', '91006', 'FLEURY MEROGIS CEDEX', 'M', '0', 11.00000),
(755, 'MESRINE', 'RENE', '1601100000000', '1960-11-18 00:00:00', '01 55 55 55 56', 'Cellule 47 QHS', '91006', 'FLEURY MEROGIS CEDEX', 'M', '0', 11.00000),
(756, 'GORBACHEV', 'MICHAIL', '1760300000000', '1976-03-09 00:00:00', '01 55 55 55 57', 'Cellule 78 QHS', '91006', 'FLEURY MEROGIS CEDEX', 'M', '0', 11.00000),
(801, 'URVOY', 'FLORENCE', '2800500000000', '1980-05-15 00:00:00', '01 30 64 18 89', '39 rue Barres', '35000', 'RENNES', 'F', '0', 10.00000),
(802, 'BAZARD', 'PATRICIA', '2620400000000', '1962-04-10 00:00:00', '01 94 48 38 23', '12 rue haute', '35000', 'RENNES', 'F', '0', 12.00000),
(803, 'BROUSSAIS', 'ANNE', '2831200000000', '1983-12-25 00:00:00', '01 30 64 18 89', '9 rue de la hulotte', '57800', 'BENING LES SAINT-AVO', 'F', '0', 10.00000),
(804, 'MAHMOUNIA', 'MYRIAM', '2640800000000', '1964-08-15 00:00:00', '01 30 64 18 89', '123 avenue Montaigne', '35000', 'RENNES', 'F', '0', 10.00000),
(805, 'REBJA', 'NADIA', '2750900000000', '1975-09-15 00:00:00', '01 30 64 18 89', '100 boulevard de Bretagne', '35000', 'RENNES', 'F', '0', 10.00000),
(851, 'CESSY', 'MARYLINE', '2660300000000', '1966-03-01 00:00:00', '01 43 44 59 29', '34 avenue Diderot', '75012', 'PARIS', 'F', '1', 13.00000),
(853, 'FROMM', 'LILA', '2821100000000', '1982-11-09 00:00:00', '01 90 98 78 67', '198 avenue du lac', '20300', 'GENEVE', 'F', '1', 49.00000),
(933, 'DESWARTE', 'MAX', '2600200000000', '1960-02-28 00:00:00', '01 42 52 72 05', '23 rue de la butte', '75018', 'PARIS', 'M', '0', 1.00000),
(1004, 'CYRUS', 'ELISABETH', '2830400000000', '1983-04-20 00:00:00', '01 39 74 27 78', '24 avenue de Wagram', '75008', 'PARIS', 'F', '1', 110.00000),
(1211, 'EGLINGER', 'MARIE_DOMINIQUE', '2560400000000', '1956-04-10 00:00:00', '01 45 87 32 78', '12 rue du fer Ã  moulin', '75005', 'PARIS', 'F', '1', 14.00000),
(1220, 'MENDEZ', 'RITA', '2570500000000', '1957-05-10 00:00:00', '01 89 00 98 76', '12 rue Matabio', '31000', 'TOULOUSE', 'F', '1', 5.00000),
(1451, 'GREBOTO', 'CLAUDE', '2730500000000', '1973-05-24 00:00:00', '01 42 62 45 05', '1 rue Saint Pierre', '34000', 'MONTPELLIER', 'M', '2', 5.00000),
(4000, 'YAOBOLO', 'MYRIAM', '2690700000000', '1969-07-19 00:00:00', '01 45 67 89 08', '1 avenue de l agro', '34000', 'MONTPELLIER', 'F', '2', 17.00000),
(4251, 'ARRICAUT', 'ARCHIBALD', '1730500000000', '1973-05-05 00:00:00', '01 42 45 70 06', '7 avenue Lamarck', '75018', 'PARIS', 'M', '1', 16.00000),
(5571, 'VERSE', 'ALAIN', '1540300000000', '1954-03-12 00:00:00', '01 46 26 81 17', '8 rue Pigalle', '75009', 'PARIS', 'M', '2', 45.00000),
(6001, 'LOEPFFE', 'ARMINE', '2650500000000', '1965-05-14 00:00:00', '01 67 78 89 99', '15 rue des Lilas', '92345', 'COLOMBES', 'F', '1', 5.00000),
(7045, 'ANGELINO', 'MARCELLO', '1631200000000', '1963-12-09 00:00:00', '01 90 87 65 43', 'rue Garibaldi', '69005', 'LYON', 'M', '1', 10.00000),
(8900, 'JAGOT', 'SABINE', '2681100000000', '1968-11-09 00:00:00', '01 34 56 78 99', 'avenue de la Canebiere', '13001', 'MARSEILLE', 'F', '1', 11.00000);

-- --------------------------------------------------------

--
-- Structure de la table `ing_cpc`
--

CREATE TABLE IF NOT EXISTS `ing_cpc` (
  `MLE` smallint(5) NOT NULL,
  `COMPET` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`MLE`,`COMPET`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ing_cpc`
--

INSERT INTO `ing_cpc` (`MLE`, `COMPET`) VALUES
(25, 'COBOL'),
(25, 'JAVA'),
(25, 'MERISE'),
(25, 'PROLOG'),
(25, 'Z/OS'),
(53, 'JAVA'),
(54, 'C#'),
(54, 'QMF'),
(55, 'ORACLE PL/SQL'),
(55, 'ORACLE SQL'),
(56, 'HTML'),
(56, 'JAVASCRIPT'),
(100, 'ASM/370'),
(100, 'ASP.NET'),
(100, 'CICS'),
(100, 'COBOL'),
(100, 'Z/OS'),
(103, 'ASM/370'),
(103, 'COBOL 2'),
(103, 'JAVA'),
(103, 'Z/OS'),
(218, 'COBOL ANS'),
(218, 'MERISE'),
(218, 'ORACLE PL/SQL'),
(218, 'ORACLE SQL'),
(218, 'UML'),
(218, 'Z/OS'),
(273, 'ADABASE'),
(273, 'COBOL ANS'),
(273, 'XML'),
(286, 'COBOL ANS'),
(286, 'DPS7'),
(286, 'HTML'),
(286, 'IDS2'),
(286, 'JAVASCRIPT'),
(286, 'NOMAD 2'),
(303, 'C'),
(303, 'DM4/TP'),
(303, 'STRUTS'),
(303, 'UNIX'),
(303, 'Z/OS'),
(304, 'C'),
(304, 'C++'),
(304, 'JAVA'),
(333, 'DL/1'),
(633, 'CMMI'),
(633, 'MERISE'),
(633, 'UML'),
(652, 'ASP.NET'),
(652, 'C#'),
(652, 'ORACLE SQL'),
(652, 'OS/2'),
(652, 'Z/OS'),
(672, 'ADA'),
(672, 'ASM/370'),
(672, 'C'),
(672, 'COBOL ANS'),
(672, 'IMS/DC'),
(672, 'LINUX'),
(672, 'MERISE'),
(672, 'ORACLE REPORTS'),
(672, 'ORACLE SQL'),
(672, 'UML'),
(672, 'XML'),
(672, 'Z/OS'),
(690, 'CICS'),
(690, 'DL/1'),
(690, 'HTML'),
(690, 'JAVASCRIPT'),
(691, 'HTML'),
(691, 'JAVASCRIPT'),
(691, 'LINUX'),
(691, 'UNIX'),
(692, 'ASM/370'),
(692, 'TCP/IP'),
(692, 'WINDOWS'),
(751, 'ASM/370'),
(751, 'COBOL 2'),
(751, 'COBOL ANS'),
(751, 'IMS/DC'),
(751, 'JAVA'),
(751, 'ORACLE PL/SQL'),
(751, 'ORACLE SQL'),
(751, 'PL/1'),
(751, 'Z/OS'),
(752, 'JAVA'),
(752, 'STRUTS'),
(753, 'JAVA'),
(754, 'JAVA'),
(755, 'JAVA'),
(756, 'JAVA'),
(802, 'DIALOG MANAGER'),
(803, 'JAVA'),
(804, 'JAVA'),
(804, 'JSF'),
(804, 'SERVLET'),
(805, 'JAVA'),
(805, 'JSF'),
(805, 'SERVLET'),
(805, 'STRUTS'),
(851, 'COBOL'),
(851, 'JAVA'),
(851, 'PROLOG'),
(853, 'ADABASE'),
(853, 'JAVA'),
(933, 'ADA'),
(933, 'ADF'),
(933, 'ASM 370'),
(933, 'CMMI'),
(933, 'COBOL ANS'),
(933, 'DLI'),
(933, 'HTML'),
(933, 'IMS/DC'),
(933, 'JAVASCRIPT'),
(933, 'LINUX'),
(933, 'LISP'),
(933, 'ORACLE FORMS'),
(933, 'ORACLE SQL'),
(933, 'QMF'),
(933, 'UNIX'),
(933, 'WINDOWS'),
(933, 'XML'),
(933, 'Z/OS'),
(1004, 'JAVA'),
(1211, 'CICS'),
(1211, 'JAVA'),
(1211, 'ORACLE SQL'),
(1211, 'Z/OS'),
(1220, 'COBOL'),
(1220, 'JAVA'),
(1451, 'COBOL 2'),
(1451, 'LINUX'),
(1451, 'WINDOWS'),
(4251, 'COBOL 2'),
(4251, 'DIALOG MANAGER'),
(4251, 'JAVASCRIPT'),
(4251, 'Z/OS'),
(5571, 'COBOL 2'),
(6001, 'COBOL 2'),
(6001, 'DB2'),
(6001, 'Z/OS'),
(8900, 'ASM/370'),
(8900, 'ASM/DPS6'),
(8900, 'C'),
(8900, 'C++'),
(8900, 'CICS'),
(8900, 'COBOL 2'),
(8900, 'DB2'),
(8900, 'DPS6'),
(8900, 'DPS7'),
(8900, 'IMS/DC'),
(8900, 'JAVA'),
(8900, 'ORACLE FORMS'),
(8900, 'ORACLE REPORTS'),
(8900, 'ORACLE SQL'),
(8900, 'PROLOG'),
(8900, 'UNIX'),
(8900, 'Z/OS');

-- --------------------------------------------------------

--
-- Structure de la table `ing_pro_cpc`
--

CREATE TABLE IF NOT EXISTS `ing_pro_cpc` (
  `MLE` smallint(5) NOT NULL DEFAULT '0',
  `CODPRO` int(15) unsigned NOT NULL DEFAULT '0',
  `COMPET` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`MLE`,`CODPRO`,`COMPET`),
  KEY `FK_ing_pro_cpc_codpro` (`CODPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 9216 kB';

--
-- Contenu de la table `ing_pro_cpc`
--

INSERT INTO `ing_pro_cpc` (`MLE`, `CODPRO`, `COMPET`) VALUES
(303, 1, 'STRUTS'),
(304, 1, 'JAVA'),
(804, 1, 'JAVA'),
(804, 1, 'SERVLET'),
(805, 1, 'JAVA'),
(805, 1, 'JSF'),
(805, 1, 'SERVLET'),
(805, 1, 'STRUTS'),
(851, 1, 'JAVA'),
(218, 2, 'MERISE'),
(218, 2, 'Z/OS'),
(273, 2, 'XML'),
(303, 2, 'Z/OS'),
(333, 2, 'DL/1'),
(633, 2, 'MERISE'),
(25, 6, 'PROLOG'),
(25, 6, 'Z/OS'),
(56, 6, 'HTML'),
(56, 6, 'JAVASCRIPT'),
(690, 6, 'HTML'),
(690, 6, 'JAVASCRIPT'),
(691, 6, 'HTML'),
(691, 6, 'JAVASCRIPT'),
(100, 12, 'Z/OS'),
(273, 12, 'ADABASE'),
(303, 12, 'Z/OS'),
(25, 17, 'MERISE'),
(100, 17, 'ASM/370'),
(100, 17, 'Z/OS'),
(103, 17, 'Z/OS'),
(672, 17, 'Z/OS'),
(692, 17, 'ASM/370'),
(25, 22, 'COBOL'),
(218, 22, 'MERISE'),
(218, 22, 'Z/OS'),
(273, 22, 'ADABASE'),
(933, 22, 'LINUX'),
(286, 62, 'IDS2'),
(303, 62, 'DM4/TP'),
(54, 120, 'QMF'),
(55, 120, 'ORACLE SQL'),
(100, 120, 'CICS'),
(100, 120, 'COBOL'),
(100, 120, 'Z/OS'),
(303, 120, 'Z/OS'),
(672, 120, 'Z/OS'),
(751, 120, 'IMS/DC'),
(751, 120, 'PL/1'),
(752, 120, 'JAVA'),
(752, 120, 'STRUTS'),
(753, 120, 'JAVA'),
(754, 120, 'JAVA'),
(755, 120, 'JAVA'),
(756, 120, 'JAVA'),
(1004, 120, 'JAVA'),
(1211, 120, 'JAVA'),
(1220, 120, 'JAVA'),
(803, 899, 'JAVA'),
(853, 899, 'JAVA'),
(1220, 899, 'JAVA'),
(802, 990, 'DIALOG MANAGER'),
(100, 1000, 'ASP.NET'),
(652, 1000, 'ASP.NET'),
(652, 1000, 'C#');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `CODPRO` int(15) unsigned NOT NULL DEFAULT '0',
  `LIBPRO` varchar(30) DEFAULT NULL,
  `ADRESSE` varchar(30) DEFAULT NULL,
  `CODEPOST` char(5) DEFAULT NULL,
  `VILLE` varchar(20) DEFAULT NULL,
  `COUT` double(15,5) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`CODPRO`),
  KEY `FK_projet_type` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`CODPRO`, `LIBPRO`, `ADRESSE`, `CODEPOST`, `VILLE`, `COUT`, `TYPE`) VALUES
(1, 'GOLDENSCORE REASAU', '124 rue Sigrid Undset', '92300', 'LEVALLOIS-PERRET', 1200000.00000, '4'),
(2, 'ELF SERVICE JURIDIQUE', 'TOUR ELF', '92000', 'COURBEVOIE', 8200000.00000, '4'),
(6, 'SOFI2 ( DOUANES )', 'BULL LOUVECIENNES', '93000', 'LOUVECIENNES', 40000.00000, '4'),
(11, '03E', '116 rue Edvard Grieg', '45100', 'LES AUBRAIS', 1200000.00000, '4'),
(12, 'CARREFOUR DU DEVELOPPEMENT', '32 rue Eva Gro Farseth', '75011', 'PARIS', 750000.00000, '3'),
(17, 'AUTOMATISATION MALADIE', '20 rue Bellini', '92000', 'PUTEAUX', 300000.00000, '4'),
(22, 'STATISTIQUES TRANSPORT', '5 quai Knut Hamsun', '92100', 'COURBEVOIE', 220000.00000, '4'),
(62, 'LA MONDIALE', '87 boulevard Louis XIV', '59000', 'LILLE', 2105000.00000, '3'),
(120, 'BISCUITERIE BELGE', 'IMPASSE WAENDERMARKER', '59190', 'WALLON-CAPPEL CEDEX', 9990000.00000, '4'),
(899, 'PAIE UNIC SA', 'ZI ELANCOURT', '78349', 'TRAPPES CEDEX', 9050000.00000, '4'),
(990, 'COMPTA GROUPE MITSUKO', '30 avenue des berlingots', '84300', 'CARPENTRAS', 9050000.00000, '4'),
(1000, 'GPAO YUNDAI', '123 BROKLEEN STREET', '12340', 'CAMBRIDGE', 9800000.00000, '1'),
(1003, 'COMPTA TOKYO STYLE', '255 rue Henrik Ibsen', '69000', 'LYON', 12000000.00000, '6'),
(1234, 'GPAO MITSUBISHI', 'ZI ELANCOURT', '78456', 'TRAPPES', 1230000.00000, '5'),
(1300, 'SCHEMA DIRECTEUR SONY BANK', '234 Kayamato street', '12000', 'TOKYO', 9890000.00000, '2'),
(1500, 'FORMATION MUSEE ARCHEOLOGIQUE', 'plaza Nacional', '12344', 'MEXICO', 9800000.00000, '4');

-- --------------------------------------------------------

--
-- Structure de la table `pro_cpc`
--

CREATE TABLE IF NOT EXISTS `pro_cpc` (
  `CODPRO` int(15) unsigned NOT NULL DEFAULT '0',
  `COMPET` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`CODPRO`,`COMPET`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pro_cpc`
--

INSERT INTO `pro_cpc` (`CODPRO`, `COMPET`) VALUES
(1, 'JAVA'),
(1, 'JSF'),
(1, 'SERVLET'),
(1, 'STRUTS'),
(2, 'CICS'),
(2, 'COBOL'),
(2, 'DL/1'),
(2, 'MERISE'),
(2, 'XML'),
(2, 'Z/OS'),
(6, 'HTML'),
(6, 'JAVASCRIPT'),
(6, 'PROLOG'),
(6, 'XML'),
(6, 'Z/OS'),
(11, 'DB2'),
(11, 'QMF'),
(11, 'Z/OS'),
(12, 'ADABASE'),
(12, 'COBOL'),
(12, 'Z/OS'),
(17, 'ASM/370'),
(17, 'COBOL'),
(17, 'MERISE'),
(17, 'Z/OS'),
(22, 'ADABASE'),
(22, 'COBOL'),
(22, 'LINUX'),
(22, 'MERISE'),
(22, 'XML'),
(22, 'Z/OS'),
(62, 'COBOL'),
(62, 'DM4/TP'),
(62, 'IDS2'),
(62, 'JCL BULL'),
(120, 'ASM/370'),
(120, 'CICS'),
(120, 'COBOL'),
(120, 'IMS/DC'),
(120, 'JAVA'),
(120, 'ORACLE SQL'),
(120, 'PL/1'),
(120, 'QMF'),
(120, 'STRUTS'),
(120, 'Z/OS'),
(899, 'JAVA'),
(899, 'STRUTS'),
(990, 'DIALOG MANAGER'),
(990, 'REXX'),
(990, 'Z/OS'),
(1000, 'ASP.NET'),
(1000, 'C#'),
(1000, 'VB.NET'),
(1003, 'ORACLE PL/SQL'),
(1003, 'ORACLE REPORTS'),
(1003, 'ORACLE SQL'),
(1234, 'SQL SERVER'),
(1500, 'C'),
(1500, 'CICS'),
(1500, 'COBOL 2');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `TYPE` varchar(2) NOT NULL,
  `LIBTYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`TYPE`, `LIBTYPE`) VALUES
('1', 'CONSEIL'),
('2', 'AUDIT'),
('3', 'FORFAIT'),
('4', 'REGIE'),
('5', 'ASSISTANCE'),
('6', 'FORMATION');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `affect`
--
ALTER TABLE `affect`
  ADD CONSTRAINT `FK_affect_codpro` FOREIGN KEY (`CODPRO`) REFERENCES `projet` (`CODPRO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_affect_mle` FOREIGN KEY (`MLE`) REFERENCES `ingenieur` (`MLE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `cli_pro`
--
ALTER TABLE `cli_pro`
  ADD CONSTRAINT `FK_cli_pro_codcli` FOREIGN KEY (`CODCLI`) REFERENCES `client` (`CODCLI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cli_pro_codpro` FOREIGN KEY (`CODPRO`) REFERENCES `projet` (`CODPRO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `emploi`
--
ALTER TABLE `emploi`
  ADD CONSTRAINT `FK_emploi_codept` FOREIGN KEY (`CODEPT`) REFERENCES `dept` (`CODEPT`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_emploi_mle` FOREIGN KEY (`MLE`) REFERENCES `ingenieur` (`MLE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ing_cpc`
--
ALTER TABLE `ing_cpc`
  ADD CONSTRAINT `FK_ing_cpc_mle` FOREIGN KEY (`MLE`) REFERENCES `ingenieur` (`MLE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ing_pro_cpc`
--
ALTER TABLE `ing_pro_cpc`
  ADD CONSTRAINT `FK_ing_pro_cpc_codpro` FOREIGN KEY (`CODPRO`) REFERENCES `projet` (`CODPRO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ing_pro_cpc_mle` FOREIGN KEY (`MLE`) REFERENCES `ingenieur` (`MLE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `FK_projet_type` FOREIGN KEY (`TYPE`) REFERENCES `type` (`TYPE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `pro_cpc`
--
ALTER TABLE `pro_cpc`
  ADD CONSTRAINT `FK_pro_cpc_codpro` FOREIGN KEY (`CODPRO`) REFERENCES `projet` (`CODPRO`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
