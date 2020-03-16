-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-03-2020 a las 03:46:56
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taller_cesde`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_licencia` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_vehiculo` varchar(6) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_tipo_conductor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`id_conductor`, `nombre`, `tipo_licencia`, `id_vehiculo`, `id_tipo_conductor`) VALUES
(1, 'Yohan Puerta', 'C2', 'BBB123', 1),
(2, 'Jennifer Villada', 'C5', 'BBB123', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  `id_vehiculo` varchar(6) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`id_contrato`, `id_conductor`, `id_vehiculo`) VALUES
(1, 1, 'CCC123'),
(2, 2, 'DDD123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(11) NOT NULL,
  `estacion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `id_vehiculo` varchar(6) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `estacion`, `id_vehiculo`) VALUES
(1, 'Casa Britanica', 'AAA123'),
(2, 'Metropolis', 'CCC123'),
(3, 'Gard', 'DDD123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_conductor`
--

CREATE TABLE `tipo_conductor` (
  `id_tc` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_conductor`
--

INSERT INTO `tipo_conductor` (`id_tc`, `nombre`) VALUES
(1, 'Pasivo'),
(2, 'Violento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_vehiculo`
--

CREATE TABLE `tipo_vehiculo` (
  `id_tv` int(11) NOT NULL,
  `nombre_tv` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_vehiculo`
--

INSERT INTO `tipo_vehiculo` (`id_tv`, `nombre_tv`) VALUES
(1, 'Automovil'),
(2, 'Camión'),
(3, 'Camioneta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `placa` varchar(6) COLLATE utf8_spanish2_ci NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `matricula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ano` int(11) NOT NULL,
  `id_tv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`placa`, `marca`, `modelo`, `matricula`, `ano`, `id_tv`) VALUES
('AAA123', 'Mazda', 'Sedan', '1235472', 2007, 1),
('BBB123', 'Kia', 'Rio', 'iuyw72651g', 2015, 1),
('CCC123', 'Chevrolet', 'Spark GT', '7892huihsiu', 2018, 1),
('DDD123', 'Chevrolet', 'Tracker', '7892huihsiuIOLKJI', 2020, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_tipo_conductor` (`id_tipo_conductor`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_conductor` (`id_conductor`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `tipo_conductor`
--
ALTER TABLE `tipo_conductor`
  ADD PRIMARY KEY (`id_tc`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  ADD PRIMARY KEY (`id_tv`),
  ADD UNIQUE KEY `nombre_tv` (`nombre_tv`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `id_tv` (`id_tv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductor`
--
ALTER TABLE `conductor`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_conductor`
--
ALTER TABLE `tipo_conductor`
  MODIFY `id_tc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_vehiculo`
--
ALTER TABLE `tipo_vehiculo`
  MODIFY `id_tv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`placa`),
  ADD CONSTRAINT `conductor_ibfk_2` FOREIGN KEY (`id_tipo_conductor`) REFERENCES `tipo_conductor` (`id_tc`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`placa`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`);

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`placa`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_tv`) REFERENCES `tipo_vehiculo` (`id_tv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
