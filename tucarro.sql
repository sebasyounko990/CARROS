-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2021 a las 04:21:36
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tucarro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `catid` int(11) NOT NULL,
  `catipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`catid`, `catipo`) VALUES
(1, 'montero'),
(2, 'bus'),
(3, 'camioneta'),
(4, 'volqueta'),
(5, 'camion'),
(6, 'moto'),
(7, 'automoviles'),
(8, 'campero'),
(9, 'deportivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `datid` int(11) NOT NULL,
  `usuid` int(11) NOT NULL,
  `datnombre` varchar(50) NOT NULL,
  `datapellido` varchar(50) NOT NULL,
  `datipoid` varchar(20) NOT NULL,
  `datnumeroid` varchar(20) NOT NULL,
  `datelefono` varchar(20) NOT NULL,
  `datcorreo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`datid`, `usuid`, `datnombre`, `datapellido`, `datipoid`, `datnumeroid`, `datelefono`, `datcorreo`) VALUES
(25, 52983998, 'daf', 'mora', 'Cedula', '1198364773', '3203625322', 'javierandresmoraocam'),
(26, 52983999, 'fuis', 'mora ', 'Cedula', '1198364773', '3203625322', 'javierandresmoraocam'),
(27, 52984000, 'daniela', 'ruiz', 'Cedula', '345227363', '3203625322', 'daniela@gmail.com'),
(30, 52984003, 'pepe', 'perez', 'Cedula', '100', '3555555', 'javierandresmoraocam');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rolid` int(11) NOT NULL,
  `roltipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rolid`, `roltipo`) VALUES
(1, 'Comprador'),
(2, 'Vendedor'),
(5, 'Ambos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuid` int(11) NOT NULL,
  `usulogin` varchar(20) NOT NULL,
  `usupassword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuid`, `usulogin`, `usupassword`) VALUES
(52983998, 'daf', '$2a$08$WKw9ZKb2Q5eZGET3290gW.UG6jOHlBQw1onDwoXHxrEgyU9Q0938u'),
(52983999, 'fui', '$2a$08$hbeqI.r9oc7NH0rRwm8K2.xQ3mqzIRZ6FkUYIhXnBCngejV8v6GJe'),
(52984000, 'daniela', '$2a$08$V12g1VlvAFr9U6APvWnkGOwiBZXC0/UVvYGBBGXKdLOWs0j1jWcwS'),
(52984003, 'pepito', '$2a$08$ZQhQaMFx8uKrj5GS9oOh0uQF8f2WJEoRE4MLvbeg3OymcUFdS5aF6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `rolid` int(11) NOT NULL,
  `usuid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`rolid`, `usuid`) VALUES
(5, 52983998),
(5, 52983999),
(5, 52984000),
(5, 52984003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `catid` int(11) NOT NULL,
  `vehplaca` varchar(10) NOT NULL,
  `datid` int(11) NOT NULL,
  `vehmodelo` int(11) NOT NULL,
  `vehmarca` varchar(50) NOT NULL,
  `vehestado` varchar(30) NOT NULL,
  `vehprecio` int(11) NOT NULL,
  `vehlinea` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`catid`, `vehplaca`, `datid`, `vehmodelo`, `vehmarca`, `vehestado`, `vehprecio`, `vehlinea`, `imagen`, `color`) VALUES
(9, 'abc-123', 30, 2022, 'BMW', 'Nuevo', 200000000, 'b5', 'acordeon1.jpg', 'PLATEADO'),
(6, 'agd-883', 25, 2020, 'BMW', 'Nuevo', 40000000, 'poo134', 'Ducati-Panigale-V4-2018-1024x683.jpg', 'NEGRO'),
(7, 'fjk-431', 25, 2018, 'AUDI', 'Nuevo', 10000000, 'f45', 'acordeon4.jpg', 'NEGRO'),
(2, 'fss-543', 25, 2018, 'BMW', 'Nuevo', 50000000, 'a45', 'fondo2.jfif', 'AZUL'),
(2, 'gdf-768', 25, 2018, 'BMW', 'Nuevo', 3800000, 'a45', 'fondo1.jfif', 'GRIS'),
(7, 'jdh-222', 27, 2018, 'FORD', 'Nuevo', 30000000, 'fg43', 'acordeon4.jpg', 'NEGRO'),
(9, 'jfh-222', 26, 2018, 'BMW', 'Nuevo', 2000000, 'a38', 'acordeon1.jpg', 'GRIS'),
(3, 'jja-566', 25, 2018, 'CHEVROLET', 'Nuevo', 2300000, 'f22', 'acordeon4.jpg', 'NEGRO'),
(8, 'mnb-900', 25, 2019, 'RENAULT', 'Nuevo', 232332300, 'tr12', 'Campero.jpg', 'NEGRO'),
(9, 'rrr-938', 25, 2020, 'FORD', 'Nuevo', 600000000, 'rt222', 'acordeon1.jpg', 'NEGRO'),
(5, 'wer-111', 25, 2020, 'FORD', 'Nuevo', 30000000, 'po111', 'acordeon2.jpg', 'NEGRO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`catid`);

--
-- Indices de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD PRIMARY KEY (`datid`),
  ADD KEY `datos_usu` (`usuid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rolid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuid`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD KEY `usuid` (`usuid`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`vehplaca`),
  ADD KEY `datos_ve` (`datid`),
  ADD KEY `cat_ve` (`catid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  MODIFY `datid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `rolid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52984004;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datospersonales`
--
ALTER TABLE `datospersonales`
  ADD CONSTRAINT `datos_usu` FOREIGN KEY (`usuid`) REFERENCES `usuario` (`usuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `usu_rol` FOREIGN KEY (`rolid`) REFERENCES `rol` (`rolid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usu_usu` FOREIGN KEY (`usuid`) REFERENCES `usuario` (`usuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `cat_ve` FOREIGN KEY (`catid`) REFERENCES `categoria` (`catid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `datos_ve` FOREIGN KEY (`datid`) REFERENCES `datospersonales` (`datid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
