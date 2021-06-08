-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 07:10 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `football_league`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `COACHID` int(11) NOT NULL,
  `FNAME` varchar(20) NOT NULL,
  `LNAME` varchar(20) NOT NULL,
  `PHONENO` bigint(40) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `COACHES` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`COACHID`, `FNAME`, `LNAME`, `PHONENO`, `TYPE`, `COACHES`) VALUES
(3, 'Pep', 'Guardialo', 96555655, 'CAM', 'Barcelona');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `GOALID` int(11) NOT NULL,
  `TIME` varchar(20) NOT NULL,
  `PLAYERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`GOALID`, `TIME`, `PLAYERID`) VALUES
(1, '90', 1);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `MATCHID` int(11) NOT NULL,
  `RESULT` varchar(20) NOT NULL,
  `HOMETEAM` varchar(40) NOT NULL,
  `AWAYTEAM` varchar(40) NOT NULL,
  `HOSTEDBY` varchar(40) NOT NULL,
  `TEMP_DEG` int(11) NOT NULL,
  `PRECIP_PERCENT` int(11) NOT NULL,
  `HUMID_PERCENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`MATCHID`, `RESULT`, `HOMETEAM`, `AWAYTEAM`, `HOSTEDBY`, `TEMP_DEG`, `PRECIP_PERCENT`, `HUMID_PERCENT`) VALUES
(1, 'win', 'athletico madrid', 'barcelona', 'mes que un club ', 6, 57, 96);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `PLAYERID` int(11) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `POSITION` varchar(20) NOT NULL,
  `WEIGHT` int(11) NOT NULL,
  `HEIGHT` int(2) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `KITINTEGER` int(11) NOT NULL,
  `TEAMNAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`PLAYERID`, `FNAME`, `LNAME`, `POSITION`, `WEIGHT`, `HEIGHT`, `NATIONALITY`, `KITINTEGER`, `TEAMNAME`) VALUES
(1, 'Lionel', 'Messi', 'RW', 72, 170, 'Argentine', 10, 'Barcelona'),
(2, 'Neymar', 'Jr', 'CF', 70, 170, 'Brazilian', 10, 'PSG'),
(3, 'Sergio', 'Ramos', 'CB', 82, 183, 'Espanol', 4, 'Real Madrid'),
(4, 'Robert', 'Lewandowski', 'ST', 80, 184, 'Poland', 9, 'Bayern Munich'),
(5, 'Allison', 'Becker', 'GK', 86, 180, 'Brazil', 1, 'Liverpool'),
(6, 'Cristiano', 'Ronaldo', 'LW', 82, 183, 'Portuguese', 7, 'Juventus'),
(7, 'Andrea', 'Pirlo', 'CM', 70, 178, 'Italian', 23, 'AC Milan'),
(8, 'Bruno', 'Fernandes', 'CAM', 72, 178, 'Portuguese', 18, 'Mun');

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `CITY` varchar(40) NOT NULL,
  `STDNAME` varchar(40) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `POSTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`CITY`, `STDNAME`, `CAPACITY`, `POSTAL`) VALUES
('madrid', 'bernabeu', 750000, 156225),
('barcelona', 'mes que un club ', 5000000, 5600210);

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `PLAYERID` int(11) NOT NULL,
  `REDCARDS` int(11) NOT NULL,
  `YELLOWCARDS` int(11) NOT NULL,
  `GOALS` int(11) NOT NULL,
  `ASSISTS` int(11) NOT NULL,
  `CLEANSHEETS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`PLAYERID`, `REDCARDS`, `YELLOWCARDS`, `GOALS`, `ASSISTS`, `CLEANSHEETS`) VALUES
(1, 0, 6, 1000, 2000, 0),
(3, 50, 63, 15, 11, 0),
(6, 7, 50, 1000, 500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TEAMNAME` varchar(40) NOT NULL,
  `ABB` varchar(6) NOT NULL,
  `WEBSITE` varchar(60) NOT NULL,
  `CITY` varchar(40) NOT NULL,
  `POINTS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TEAMNAME`, `ABB`, `WEBSITE`, `CITY`, `POINTS`) VALUES
('athletico madrid', 'atm', 'atletico.com', 'madrid', 13),
('barcelona', 'barca', 'barca.com', 'barcelona', 10),
('real madrid', 'madrid', 'madrid.com', 'madrid', 10),
('real socided', 'socide', 'real.com', 'socided', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`COACHID`),
  ADD KEY `A3` (`COACHES`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`GOALID`),
  ADD KEY `PLAYERID` (`PLAYERID`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`MATCHID`),
  ADD UNIQUE KEY `HOMETEAM` (`HOMETEAM`),
  ADD UNIQUE KEY `AWAYTEAM` (`AWAYTEAM`),
  ADD KEY `A2` (`HOSTEDBY`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PLAYERID`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`STDNAME`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`PLAYERID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TEAMNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `COACHID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `GOALID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `MATCHID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `PLAYERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `A3` FOREIGN KEY (`COACHES`) REFERENCES `team` (`TEAMNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_ibfk_1` FOREIGN KEY (`PLAYERID`) REFERENCES `player` (`PLAYERID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `A2` FOREIGN KEY (`HOSTEDBY`) REFERENCES `stadium` (`STDNAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`AWAYTEAM`) REFERENCES `team` (`TEAMNAME`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`HOMETEAM`) REFERENCES `team` (`TEAMNAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`PLAYERID`) REFERENCES `player` (`PLAYERID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
