-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 12 яну 2023 в 19:45
-- Версия на сървъра: 10.4.27-MariaDB
-- Версия на PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `users`
--

-- --------------------------------------------------------

--
-- Структура на таблица `clients`
--

CREATE TABLE `clients` (
  `id` int(6) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `phonenumber` int(64) NOT NULL,
  `email` text NOT NULL,
  `adult` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `phonenumber`, `email`, `adult`) VALUES
(1, 'Joe', 'Biden', 88853942, 'thewhitehouse@gmail.com', 1),
(2, 'John', 'Pablo', 8547835, 'snegorin58@gmail.com', 0);

-- --------------------------------------------------------

--
-- Структура на таблица `destinations`
--

CREATE TABLE `destinations` (
  `id` int(8) NOT NULL,
  `capacity` int(128) NOT NULL,
  `destination` text NOT NULL,
  `transport` text NOT NULL,
  `stars` int(10) NOT NULL,
  `Room type` text NOT NULL,
  `vacancy` tinyint(1) NOT NULL,
  `price of adult bed` int(128) NOT NULL,
  `price of child bed` int(128) NOT NULL,
  `number` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `destinations`
--

INSERT INTO `destinations` (`id`, `capacity`, `destination`, `transport`, `stars`, `Room type`, `vacancy`, `price of adult bed`, `price of child bed`, `number`) VALUES
(1, 79, 'Venice Italy', 'Avtobus', 4, 'Double bedroom', 1, 60, 40, 50),
(2, 60, 'Paris France', 'Plane', 6, 'Apartments', 1, 120, 80, 49);

-- --------------------------------------------------------

--
-- Структура на таблица `reservations`
--

CREATE TABLE `reservations` (
  `id` int(8) NOT NULL,
  `name of reservation` text NOT NULL,
  `type of transport` text NOT NULL,
  `user` text NOT NULL,
  `number of clients going there` int(128) NOT NULL,
  `date of departure` date NOT NULL,
  `date of arrival` date NOT NULL,
  `included breakfast` tinyint(1) NOT NULL,
  `all inclusive` tinyint(1) NOT NULL,
  `payday` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `reservations`
--

INSERT INTO `reservations` (`id`, `name of reservation`, `type of transport`, `user`, `number of clients going there`, `date of departure`, `date of arrival`, `included breakfast`, `all inclusive`, `payday`) VALUES
(1, 'Venice Italy', 'Avtobus', 'Obama-max', 2, '2023-01-04', '2023-01-08', 1, 1, 120000);

-- --------------------------------------------------------

--
-- Структура на таблица `workers`
--

CREATE TABLE `workers` (
  `id` int(8) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `middlename` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `IDN` int(64) NOT NULL,
  `phonenumber` int(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `date of assigment` date NOT NULL,
  `activity` tinyint(1) NOT NULL,
  `date of removal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `workers`
--

INSERT INTO `workers` (`id`, `username`, `password`, `firstname`, `middlename`, `surname`, `IDN`, `phonenumber`, `email`, `date of assigment`, `activity`, `date of removal`) VALUES
(1, 'Obama-max', 'obichammama85', 'Darcho', 'Marcho', 'Garcho', 457839, 8839457, 'sladuribg@abv.bg', '2023-01-12', 1, '0000-00-00'),
(2, 'larryPP2', 'qksum12', 'Kiko', 'Miko', 'Isteriko', 67893405, 35924378, 'minecraftpro@gmail.com', '2023-01-01', 1, '0000-00-00'),
(3, 'kriskogaming79', '1234567p', 'Krisko', 'Gaming', 'Maestro', 43543543, 88434329, 'ebacha123@yahoo.mail', '2023-01-02', 0, '2023-01-04');

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
