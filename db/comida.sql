-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2023 a las 19:12:45
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comida`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `idcomida` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`idcomida`, `nombre`, `valor`) VALUES
(1, 'Hamburguesa', 8000),
(2, 'Hamburguesa', 8000),
(3, 'Hamburguesa', 8000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `idorden` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcomida` int(11) NOT NULL,
  `usuorden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`idorden`, `idusuario`, `idcomida`, `usuorden`) VALUES
(5, 5, 2, 0),
(6, 6, 2, 0),
(7, 7, 2, 0),
(8, 8, 2, 0),
(9, 9, 2, 0),
(33, 36, 1, 1),
(34, 37, 2, 2),
(35, 37, 3, 2),
(36, 38, 2, 2),
(37, 38, 3, 2),
(38, 39, 2, 2),
(39, 40, 2, 2),
(40, 40, 3, 2),
(41, 41, 2, 2),
(42, 41, 3, 2),
(43, 42, 2, 2),
(44, 42, 3, 2),
(45, 43, 2, 2),
(46, 43, 3, 2),
(47, 44, 2, 2),
(48, 44, 3, 2),
(49, 45, 2, 2),
(50, 45, 3, 2),
(51, 46, 2, 2),
(52, 46, 3, 2),
(53, 47, 2, 2),
(54, 47, 3, 2),
(55, 48, 2, 2),
(56, 48, 3, 2),
(57, 49, 2, 2),
(58, 49, 3, 2),
(59, 50, 2, 2),
(60, 50, 3, 2),
(61, 51, 2, 2),
(62, 51, 3, 2),
(63, 52, 2, 2),
(64, 52, 3, 2),
(65, 53, 2, 2),
(66, 53, 3, 2),
(67, 54, 2, 2),
(68, 54, 3, 2),
(69, 55, 2, 2),
(70, 55, 3, 2),
(71, 56, 2, 2),
(72, 56, 3, 2),
(73, 57, 2, 2),
(74, 57, 3, 2),
(75, 58, 2, 3),
(76, 58, 3, 3),
(77, 59, 2, 3),
(78, 59, 3, 3),
(79, 60, 2, 3),
(80, 60, 3, 3),
(81, 61, 2, 4),
(82, 61, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `idorden` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `estado`, `fecha`, `idorden`, `valor`) VALUES
(1, 'ENTREGADO', '2023-03-29 12:06:09', 3, 48000),
(2, 'ENTREGADO', '2023-03-29 12:11:33', 4, 16000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `ciudad`, `direccion`, `telefono`) VALUES
(1, 'hola', '434', '3232', 123),
(2, 'hola', '434', '3232', 123),
(3, 'hola', '434', '3232', 123),
(4, 'hola', '434', '3232', 123),
(5, 'hola', '434', '3232', 123),
(6, 'hola', '434', '3232', 123),
(7, 'hola', '434', '3232', 123),
(8, 'hola', '434', '3232', 123),
(9, 'hola', '434', '3232', 123),
(10, 'hola', '434', '3232', 123),
(11, 'hola', '434', '3232', 123),
(12, 'hola', '434', '3232', 123),
(13, 'hola', '434', '3232', 123),
(14, 'hola', '434', '3232', 123),
(15, 'hola', '434', '3232', 123),
(16, 'hola', '434', '3232', 123),
(17, 'hola', '434', '3232', 123),
(18, 'hola', '434', '3232', 123),
(19, 'hola', '434', '3232', 123),
(20, 'hola', '434', '3232', 123),
(21, 'hola', '434', '3232', 123),
(22, 'hola', '434', '3232', 123),
(23, 'hola', '434', '3232', 123),
(24, 'hola', '434', '3232', 123),
(25, 'hola', '434', '3232', 123),
(26, 'hola', '434', '3232', 123),
(27, 'hola', '434', '3232', 123),
(28, 'hola', '434', '3232', 123),
(29, 'hola', '434', '3232', 123),
(30, 'hola', '434', '3232', 123),
(31, 'hola', '434', '3232', 123),
(32, 'hola', '434', '3232', 123),
(33, 'hola', '434', '3232', 123),
(34, 'hola', '434', '3232', 123),
(35, 'hola', '434', '3232', 123),
(36, 'hola', '434', '3232', 123),
(37, 'hola', '434', '3232', 123),
(38, 'hola', '434', '3232', 123),
(39, 'hola', '434', '3232', 123),
(40, 'hola', '434', '3232', 123),
(41, 'hola', '434', '3232', 123),
(42, 'hola', '434', '3232', 123),
(43, 'hola', '434', '3232', 123),
(44, 'hola', '434', '3232', 123),
(45, 'hola', '434', '3232', 123),
(46, 'hola', '434', '3232', 123),
(47, 'hola', '434', '3232', 123),
(48, 'hola', '434', '3232', 123),
(49, 'hola', '434', '3232', 123),
(50, 'hola', '434', '3232', 123),
(51, 'hola', '434', '3232', 123),
(52, 'hola', '434', '3232', 123),
(53, 'hola', '434', '3232', 123),
(54, 'hola', '434', '3232', 123),
(55, 'hola', '434', '3232', 123),
(56, 'hola', '434', '3232', 123),
(57, 'hola', '434', '3232', 123),
(58, 'hola', '434', '3232', 123),
(59, 'hola', '434', '3232', 123),
(60, 'hola', '434', '3232', 123),
(61, 'hola', '434', '3232', 123);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`idcomida`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`idorden`),
  ADD KEY `fk_orden_comida` (`idcomida`),
  ADD KEY `fk_orden_usuario` (`idusuario`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD UNIQUE KEY `idorden` (`idorden`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comida`
--
ALTER TABLE `comida`
  MODIFY `idcomida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `idorden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_orden_comida` FOREIGN KEY (`idcomida`) REFERENCES `comida` (`idcomida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
