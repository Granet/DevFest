-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Ott 23, 2015 alle 10:44
-- Versione del server: 5.1.71-community-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_asdlolasd`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `SmartHome`
--

CREATE TABLE IF NOT EXISTS `SmartHome` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Stanza` varchar(20) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Stato` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `SmartHome`
--

INSERT INTO `SmartHome` (`ID`, `Stanza`, `Nome`, `Stato`) VALUES
(0, 'esterno', 'luce', '0'),
(1, 'soggiorno', 'luce', '0'),
(2, 'soggiorno', 'serranda', '0'),
(3, 'letto1', 'luce', '0'),
(4, 'letto1', 'serranda', '0'),
(5, 'soggiorno', 'televisione', '0'),
(6, 'bagno', 'luce', '0'),
(7, 'cucina', 'luce', '0'),
(8, 'letto2', 'luce', '0'),
(9, 'tutte', 'luce', '0'),
(10, 'tutte', 'serranda', '0'),
(11, 'tutte', 'allarme', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
