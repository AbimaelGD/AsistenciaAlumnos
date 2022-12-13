-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2021 a las 04:49:22
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_webucam`
--
CREATE DATABASE IF NOT EXISTS `bd_webucam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_webucam`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `alumno` int(5) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `sexo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `alumno`, `nombre`, `sexo`) VALUES
(1, 90601, 'Luis Enrique Dzul Cruz', 'F'),
(2, 60875, 'Abimael Garcia Diaz', 'M'),
(3, 62157, 'Dulce Y Cruz Gonzalez', 'F'),
(4, 60872, 'Reyna R Hernandez Olvera', 'F'),
(6, 60884, 'Sarahi J Martinez Gomez', 'F'),
(7, 54081, 'Omar E Romero Gomez', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(11) NOT NULL,
  `alumno` int(5) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`id_asistencia`, `alumno`, `fecha`) VALUES
(4, 62157, '2021-11-18'),
(6, 51988, '2021-11-18'),
(7, 60884, '2021-11-18'),
(8, 54081, '2021-11-18'),
(9, 90601, '2021-11-18'),
(10, 60875, '2021-11-18'),
(11, 62157, '2021-11-18'),
(12, 60872, '2021-11-18'),
(13, 51988, '2021-11-18'),
(14, 60884, '2021-11-18'),
(15, 54081, '2021-11-18'),
(16, 54081, '2021-11-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Usuario_Correo` varchar(30) NOT NULL,
  `Contraseña` text NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Sexo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Usuario_Correo`, `Contraseña`, `Nombre`, `Apellidos`, `Fecha_Nacimiento`, `Sexo`) VALUES
(1, 'Abi@gmail.com', '$2y$10$o3eMAWe0p7.UT7nE0uIYqumibZnonUKRQjBy1x9/0Ydx0006/Rnfe', 'Prueba1', 'Prjuecad', '1966-02-01', 'Hombre'),
(2, 'ax@gmail.com', '$2y$10$eKveC/i0vlTG/Pp.uWpT7enWxElirpm4xepq3m522HKxpr9GuqttS', 'Prueba2', 'asda', '2021-09-18', 'Mujer'),
(3, 'al06@gmail.com', '$2y$10$Ew5P26DjvydArsm6PpoGbOmzoHO3EFsgOQg8YQF0pV80T7zMQ34VS', 'Prueba3', 'adsda', '2021-10-09', 'Hombre'),
(4, 'fer@gmail.com', '$2y$10$bxQ/TZHeQdQYRns4DSLQKeJKyn/nn2MEUHk3zX/bs8gBySX36IxyG', 'Fernando', 'Castillo Sonda', '1999-06-16', 'M'),
(5, 'prueba2@gmail.com', '$2y$10$dRrF0UWUmTVObGUOSSxhsORcc0uvVSv9tLzh86pxgpam1vXFtIB/G', 'Prueba2', 'dadassad', '2021-12-01', 'M');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
