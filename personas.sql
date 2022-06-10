-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2019 a las 21:23:53
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas`
--
CREATE DATABASE IF NOT EXISTS `personas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `personas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `DNI` varchar(9) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`DNI`, `nombre`, `edad`) VALUES
('01097356A', 'Elisenda', 30),
('05269620K', 'Radames', 33),
('05874304N', 'Adonai', 14),
('10685902X', 'Tara', 25),
('16158671K', 'Elcira', 45),
('25330476R', 'Rubina', 26),
('29218991K', 'Ozias', 35),
('31161328P', 'Esmeralda', 56),
('39689170W', 'Lila', 58),
('44690092B', 'Milenka', 21),
('46318745B', 'Telémaco', 41),
('48277195B', 'Mathilde', 20),
('48502014M', 'Edelmar', 32),
('53882407P', 'Valfredo', 21),
('68819033C', 'Clelia', 11),
('73013219H', 'Tomasa', 36),
('74443018E', 'Jimeno', 64),
('86802436E', 'Fiorella', 25),
('90169828F', 'Najla', 17),
('91632474Z', 'Italina', 69),
('91670904B', 'Stefan', 14),
('93776430W', 'Terpsícore', 75),
('95243360S', 'Fabia', 60),
('98743074A', 'Juanita', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
