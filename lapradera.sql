-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2015 a las 17:45:47
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lapradera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tboleta`
--

CREATE TABLE IF NOT EXISTS `tboleta` (
  `idboleta` int(11) NOT NULL,
  `idplato_bebida` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idmozo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `prec_u` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igv` double DEFAULT NULL,
  `tot_pagar` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `idflu_caj` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcategoria`
--

CREATE TABLE IF NOT EXISTS `tcategoria` (
  `idcate` int(11) NOT NULL,
  `nom_cate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tcategoria`
--

INSERT INTO `tcategoria` (`idcate`, `nom_cate`) VALUES
(1, 'plato típico'),
(2, 'plato del día'),
(3, 'bebida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcliente`
--

CREATE TABLE IF NOT EXISTS `tcliente` (
  `idcliente` int(11) NOT NULL,
  `nom_cli` varchar(50) DEFAULT NULL,
  `ape_cli` varchar(50) DEFAULT NULL,
  `dni_cli` int(11) DEFAULT NULL,
  `tel_cli` int(11) DEFAULT NULL,
  `dir_cli` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tcliente`
--

INSERT INTO `tcliente` (`idcliente`, `nom_cli`, `ape_cli`, `dni_cli`, `tel_cli`, `dir_cli`) VALUES
(1, 'Luis ', 'Calle', 19938325, 964227291, 'Psje Hipolito Unanue 160'),
(2, 'Rosario', 'Campian', 19839324, 964115599, 'jr San Martin 140 La Florida'),
(3, 'Aberto', 'Rodriguez', 12596541, 964526589, 'av. ferrocarril 256 huancayo'),
(4, 'Pedro', 'Gallese', 45152698, 965685489, 'av. las casuarinas 789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdetallepedido`
--

CREATE TABLE IF NOT EXISTS `tdetallepedido` (
  `idpedido` int(11) DEFAULT NULL,
  `idplato_bebida` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `descuento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tflujo_caja`
--

CREATE TABLE IF NOT EXISTS `tflujo_caja` (
  `idflu_caj` int(11) NOT NULL,
  `monto_ini` double DEFAULT NULL,
  `gastos` double DEFAULT NULL,
  `cierre` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idgasto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tgastos`
--

CREATE TABLE IF NOT EXISTS `tgastos` (
  `idgasto` int(11) NOT NULL,
  `nom_gasto` varchar(50) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmesa`
--

CREATE TABLE IF NOT EXISTS `tmesa` (
  `idmesa` int(11) NOT NULL,
  `num_mesa` varchar(50) DEFAULT NULL,
  `idmozo` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tmesa`
--

INSERT INTO `tmesa` (`idmesa`, `num_mesa`, `idmozo`) VALUES
(1, 'UNO', 1),
(2, 'DOS', 1),
(3, 'TRES', 1),
(4, 'CUATRO', 1),
(5, 'CINCO', 1),
(6, 'SEIS', 1),
(7, 'SIETE', 1),
(8, 'OCHO', 2),
(9, 'NUEVE', 2),
(10, 'DIEZ', 2),
(11, 'ONCE', 2),
(12, 'DOCE', 2),
(13, 'TRECE', 2),
(14, 'CATORCE', 2),
(15, 'QUINCE', 3),
(16, 'DIECISEIS', 3),
(17, 'DIECISIETE', 3),
(18, 'DIECIOCHO', 3),
(19, 'DIECINUEVE', 3),
(20, 'VEINTE', 3),
(21, 'VEINTIUNO', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmozo`
--

CREATE TABLE IF NOT EXISTS `tmozo` (
  `idmozo` int(11) NOT NULL,
  `nom_mozo` varchar(50) DEFAULT NULL,
  `ape_mozo` varchar(50) DEFAULT NULL,
  `dni_mozo` int(11) DEFAULT NULL,
  `tel_mozo` int(11) DEFAULT NULL,
  `dir_mozo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tmozo`
--

INSERT INTO `tmozo` (`idmozo`, `nom_mozo`, `ape_mozo`, `dni_mozo`, `tel_mozo`, `dir_mozo`) VALUES
(1, 'Kristiam', 'Jimenez', 45612784, 964784512, 'Av. Siempre Viva 666 - Springfield'),
(2, 'Juan', 'Perez', 48642658, 98712345, 'Av. Mariscal Castilla 222 - El Tambo'),
(3, 'Carlos', 'Valderrama', 35869874, 96325874, 'Av. Juan Cabral 321 - Chilca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpedido`
--

CREATE TABLE IF NOT EXISTS `tpedido` (
  `idpedido` int(11) NOT NULL,
  `idmesa` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tplato_bebida`
--

CREATE TABLE IF NOT EXISTS `tplato_bebida` (
  `idplato_bebida` int(11) NOT NULL,
  `nom_plato_beb` varchar(50) DEFAULT NULL,
  `prec_uni` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idcate` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tplato_bebida`
--

INSERT INTO `tplato_bebida` (`idplato_bebida`, `nom_plato_beb`, `prec_uni`, `stock`, `idcate`) VALUES
(1, 'papa a la huancaína', 8, 0, 1),
(2, 'Arroz chaufa', 8, 0, 2),
(3, 'Coca Cola 1L', 5, 20, 3),
(4, 'Inka Cola 1L', 5.5, 30, 3),
(5, 'Cerveza Cusqueña', 5, 36, 3),
(6, 'carnero al palo', 12, 0, 1),
(7, 'mondongo', 15, 0, 1),
(8, 'arroz con pato', 14, 0, 2),
(9, 'wisky red label', 60.5, NULL, 3),
(10, 'rocoto relleno', 11, 0, 1),
(11, 'pilsen ', 5, NULL, 3),
(12, 'cristal ', 5, NULL, 3),
(13, 'guaraná 2L', 8, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE IF NOT EXISTS `tusuario` (
  `idusuario` int(11) NOT NULL,
  `nom_usu` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass_usu` varchar(50) NOT NULL,
  `perfil` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tboleta`
--
ALTER TABLE `tboleta`
  ADD PRIMARY KEY (`idboleta`),
  ADD KEY `idplato_bebida` (`idplato_bebida`),
  ADD KEY `idcliente` (`idcliente`),
  ADD KEY `idmozo` (`idmozo`),
  ADD KEY `idflu_caj` (`idflu_caj`);

--
-- Indices de la tabla `tcategoria`
--
ALTER TABLE `tcategoria`
  ADD PRIMARY KEY (`idcate`);

--
-- Indices de la tabla `tcliente`
--
ALTER TABLE `tcliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `tdetallepedido`
--
ALTER TABLE `tdetallepedido`
  ADD KEY `idplato_bebida` (`idplato_bebida`),
  ADD KEY `idpedido` (`idpedido`);

--
-- Indices de la tabla `tflujo_caja`
--
ALTER TABLE `tflujo_caja`
  ADD PRIMARY KEY (`idflu_caj`),
  ADD KEY `idgasto` (`idgasto`);

--
-- Indices de la tabla `tgastos`
--
ALTER TABLE `tgastos`
  ADD PRIMARY KEY (`idgasto`);

--
-- Indices de la tabla `tmesa`
--
ALTER TABLE `tmesa`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idmozo` (`idmozo`);

--
-- Indices de la tabla `tmozo`
--
ALTER TABLE `tmozo`
  ADD PRIMARY KEY (`idmozo`);

--
-- Indices de la tabla `tpedido`
--
ALTER TABLE `tpedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `idmesa` (`idmesa`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Indices de la tabla `tplato_bebida`
--
ALTER TABLE `tplato_bebida`
  ADD PRIMARY KEY (`idplato_bebida`),
  ADD KEY `idcate` (`idcate`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tboleta`
--
ALTER TABLE `tboleta`
  MODIFY `idboleta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tcategoria`
--
ALTER TABLE `tcategoria`
  MODIFY `idcate` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tcliente`
--
ALTER TABLE `tcliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tflujo_caja`
--
ALTER TABLE `tflujo_caja`
  MODIFY `idflu_caj` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tgastos`
--
ALTER TABLE `tgastos`
  MODIFY `idgasto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tmesa`
--
ALTER TABLE `tmesa`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `tmozo`
--
ALTER TABLE `tmozo`
  MODIFY `idmozo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tpedido`
--
ALTER TABLE `tpedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tplato_bebida`
--
ALTER TABLE `tplato_bebida`
  MODIFY `idplato_bebida` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tboleta`
--
ALTER TABLE `tboleta`
  ADD CONSTRAINT `tboleta_ibfk_1` FOREIGN KEY (`idplato_bebida`) REFERENCES `tplato_bebida` (`idplato_bebida`),
  ADD CONSTRAINT `tboleta_ibfk_2` FOREIGN KEY (`idcliente`) REFERENCES `tcliente` (`idcliente`),
  ADD CONSTRAINT `tboleta_ibfk_3` FOREIGN KEY (`idmozo`) REFERENCES `tmozo` (`idmozo`),
  ADD CONSTRAINT `tboleta_ibfk_4` FOREIGN KEY (`idflu_caj`) REFERENCES `tflujo_caja` (`idflu_caj`);

--
-- Filtros para la tabla `tdetallepedido`
--
ALTER TABLE `tdetallepedido`
  ADD CONSTRAINT `tdetallepedido_ibfk_1` FOREIGN KEY (`idplato_bebida`) REFERENCES `tplato_bebida` (`idplato_bebida`),
  ADD CONSTRAINT `tdetallepedido_ibfk_2` FOREIGN KEY (`idpedido`) REFERENCES `tpedido` (`idpedido`);

--
-- Filtros para la tabla `tflujo_caja`
--
ALTER TABLE `tflujo_caja`
  ADD CONSTRAINT `tflujo_caja_ibfk_1` FOREIGN KEY (`idgasto`) REFERENCES `tgastos` (`idgasto`);

--
-- Filtros para la tabla `tmesa`
--
ALTER TABLE `tmesa`
  ADD CONSTRAINT `tmesa_ibfk_1` FOREIGN KEY (`idmozo`) REFERENCES `tmozo` (`idmozo`);

--
-- Filtros para la tabla `tpedido`
--
ALTER TABLE `tpedido`
  ADD CONSTRAINT `tpedido_ibfk_1` FOREIGN KEY (`idmesa`) REFERENCES `tmesa` (`idmesa`),
  ADD CONSTRAINT `tpedido_ibfk_2` FOREIGN KEY (`idcliente`) REFERENCES `tcliente` (`idcliente`);

--
-- Filtros para la tabla `tplato_bebida`
--
ALTER TABLE `tplato_bebida`
  ADD CONSTRAINT `tplato_bebida_ibfk_1` FOREIGN KEY (`idcate`) REFERENCES `tcategoria` (`idcate`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
