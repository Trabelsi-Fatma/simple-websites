-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mardi 21 Février 2023 à 19:06
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `voiture`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `evaluation`
-- 

CREATE TABLE `evaluation` (
  `numPermis` varchar(8) NOT NULL default '',
  `idModele` int(11) NOT NULL default '0',
  `dateTest` datetime NOT NULL default '0000-00-00 00:00:00',
  `securite` int(11) NOT NULL default '0',
  `conduite` int(11) NOT NULL default '0',
  `confort` int(11) NOT NULL default '0',
  PRIMARY KEY  (`numPermis`,`idModele`),
  KEY `idModele` (`idModele`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `evaluation`
-- 

INSERT INTO `evaluation` VALUES ('12/12345', 15, '2023-02-21 18:02:25', 10, 10, 10);
INSERT INTO `evaluation` VALUES ('12/12345', 26, '2023-02-21 18:02:47', 14, 14, 10);
INSERT INTO `evaluation` VALUES ('21/12345', 15, '2022-11-19 11:00:02', 1, 1, 1);
INSERT INTO `evaluation` VALUES ('21/12345', 26, '2022-11-20 11:00:21', 5, 5, 5);
INSERT INTO `evaluation` VALUES ('21/12345', 38, '2023-02-21 18:02:18', 14, 14, 10);
INSERT INTO `evaluation` VALUES ('22/55555', 15, '2022-11-21 10:59:14', 3, 2, 4);

-- --------------------------------------------------------

-- 
-- Structure de la table `modelevoiture`
-- 

CREATE TABLE `modelevoiture` (
  `idModele` int(11) NOT NULL default '0',
  `libelle` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`idModele`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `modelevoiture`
-- 

INSERT INTO `modelevoiture` VALUES (38, 'WALLYS 216');
INSERT INTO `modelevoiture` VALUES (26, 'WALLYS 619');
INSERT INTO `modelevoiture` VALUES (15, 'WALLYS IRIS');

-- --------------------------------------------------------

-- 
-- Structure de la table `testeur`
-- 

CREATE TABLE `testeur` (
  `numPermis` varchar(8) NOT NULL default '',
  `nom` varchar(30) NOT NULL default '',
  `prenom` varchar(30) NOT NULL default '',
  `genre` char(1) NOT NULL default '',
  `idVille` int(11) NOT NULL default '0',
  PRIMARY KEY  (`numPermis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `testeur`
-- 

INSERT INTO `testeur` VALUES ('12/12345', 'fatma', 'mas', 'F', 1);
INSERT INTO `testeur` VALUES ('21/12345', 'Barhoumi', 'Ahmed', 'M', 3);
INSERT INTO `testeur` VALUES ('22/55555', 'Mouradi', 'Ines', 'F', 2);
INSERT INTO `testeur` VALUES ('23/66666', 'Ayari', 'Mounir', 'M', 3);
INSERT INTO `testeur` VALUES ('33/44444', 'Jebri', 'Mouna', 'F', 1);
INSERT INTO `testeur` VALUES ('58/98765', 'Jouini', 'Ramzi', 'M', 2);

-- --------------------------------------------------------

-- 
-- Structure de la table `ville`
-- 

CREATE TABLE `ville` (
  `idVille` int(11) NOT NULL auto_increment,
  `libVille` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`idVille`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Contenu de la table `ville`
-- 

INSERT INTO `ville` VALUES (1, 'gafsa');
INSERT INTO `ville` VALUES (2, 'kef');
INSERT INTO `ville` VALUES (3, 'sousse');
INSERT INTO `ville` VALUES (4, 'tunis');
