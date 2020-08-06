-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-08-2020 a las 17:43:54
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial_lp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `idautor` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `f_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`idautor`, `nombre`, `f_nacimiento`) VALUES
(1, 'Flor Cerdán', '1990-09-24'),
(2, 'Omar Peña', '1985-12-24'),
(7, 'GAAAA', '1990-09-21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `ideditorial` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`ideditorial`, `nombre`, `estado`) VALUES
(1, 'IEU', 'A'),
(5, 'Bosch', 'A'),
(6, 'GAAAA', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `idlibro` int(11) UNSIGNED NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `año` int(4) NOT NULL,
  `precio` double(8,2) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `idautor` int(11) NOT NULL,
  `ideditorial` int(11) NOT NULL,
  `idpais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`idlibro`, `titulo`, `cantidad`, `año`, `precio`, `estado`, `idautor`, `ideditorial`, `idpais`) VALUES
(1, 'Oracle 11g', 10, 2019, 50.00, 'A', 1, 1, 1),
(2, 'Sistemas Operativos', 14, 2016, 59.00, 'A', 2, 2, 1),
(3, 'Estructuras de Datos', 6, 2018, 20.00, 'A', 2, 3, 2),
(4, 'Algoritmos con Python', 8, 2017, 70.00, 'A', 1, 3, 2),
(5, 'BI', 6, 1998, 50.00, 'A', 3, 2, 1),
(6, 'Ing. de Software', 9, 2000, 56.00, 'A', 4, 3, 3),
(7, 'Organización de la PC', 9, 2016, 60.00, 'A', 1, 3, 4),
(8, 'Ensamblaje', 9, 2018, 50.00, 'A', 3, 2, 5),
(9, 'Redes', 5, 2017, 77.00, 'A', 3, 4, 6),
(10, 'Tesis', 7, 2009, 100.00, 'A', 4, 5, 7),
(11, 'Seguridad de TI', 12, 2007, 60.00, 'A', 1, 4, 8),
(12, 'Algoritmos con Java', 20, 2019, 40.00, 'A', 3, 1, 1),
(13, 'Gestión de Proyectos', 22, 2016, 50.00, 'A', 4, 4, 1),
(14, 'FEPI', 25, 2005, 80.00, 'A', 4, 2, 2),
(15, 'Estadistica', 27, 2017, 60.00, 'A', 2, 2, 3),
(16, 'Aplicaciones Móviles', 6, 2009, 50.00, 'A', 1, 2, 4),
(17, 'Calculo III', 8, 2007, 80.00, 'A', 4, 4, 5),
(18, 'Métodos Numéricos', 4, 2000, 60.00, 'A', 2, 4, 6),
(19, 'Scrum', 23, 1999, 50.00, 'A', 3, 5, 7),
(20, 'Sistemas Operativos', 66, 2000, 100.00, 'A', 2, 2, 8),
(21, 'Calculo III', 7, 2019, 50.00, 'A', 4, 2, 1),
(22, 'Seguridad de TI', 6, 2016, 80.00, 'A', 4, 2, 2),
(23, 'Algoritmos con Java', 8, 2018, 60.00, 'A', 2, 2, 3),
(24, 'Gestión de Proyectos', 4, 2017, 50.00, 'A', 1, 2, 4),
(25, 'FEPI', 9, 1998, 80.00, 'A', 4, 4, 5),
(26, 'Estadistica', 4, 2000, 60.00, 'A', 2, 5, 6),
(27, 'Aplicaciones Móviles', 5, 1998, 50.00, 'A', 3, 4, 7),
(28, 'Calculo III', 1, 2000, 100.00, 'A', 2, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `idpais` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idpais`, `nombre`, `estado`) VALUES
(1, 'Peru', 'A'),
(2, 'Argentina', 'A'),
(4, 'USA', 'A'),
(6, 'Ecuador', 'A'),
(7, 'España', 'A'),
(9, 'GAAAA', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idautor`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`ideditorial`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idpais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `idautor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `ideditorial` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `idpais` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
