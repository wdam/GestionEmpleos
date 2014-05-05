-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-05-2014 a las 04:32:39
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gestionempleos`
--
CREATE DATABASE IF NOT EXISTS `gestionempleos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gestionempleos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `CodDepart` varchar(3) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`CodDepart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`CodDepart`, `Nombre`) VALUES
('001', 'Cesar'),
('002', 'Cundinamarca'),
('003', 'Atlantico'),
('004', 'Bolivar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `Codigo` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Departamento` varchar(3) DEFAULT NULL,
  `Ciudad` varchar(4) NOT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Celular` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`Codigo`, `Nombre`, `Telefono`, `Email`, `Departamento`, `Ciudad`, `Direccion`, `Celular`) VALUES
('20140001', 'csi', '5602317', 'csi@hotmail.com', '001', '0011', 'cra 10', '134566');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
  `idMuni` varchar(4) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `CodDepart` varchar(3) NOT NULL,
  PRIMARY KEY (`idMuni`),
  KEY `departa_FK_idx` (`CodDepart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`idMuni`, `Nombre`, `CodDepart`) VALUES
('0001', 'AGUACHICA', '001'),
('0002', 'VALLEDUPAR', '001'),
('0003', 'BECERRIL', '001'),
('0004', 'TAMALAMEQUE', '001'),
('0005', 'BOSCONIA', '001'),
('0006', 'EL PASO', '001'),
('0007', 'LA GLORIA', '001'),
('0008', 'ASTREA', '001'),
('0009', 'LA PAZ', '001'),
('0010', 'EL COPEY', '001'),
('0011', 'SANTA FE DE BOGOTA', '002'),
('0012', 'CAJICA', '002'),
('0013', 'CHIA', '002'),
('0014', 'FACATATIVA', '002'),
('0015', 'GIRARDOT', '002'),
('0016', 'FUSAGASUGA', '002'),
('0017', 'MADRID', '002'),
('0018', 'SOACHA', '002'),
('0019', 'UBATE', '002'),
('0020', 'GUADUAS', '002'),
('0021', 'BARRANQUILLA', '003'),
('0022', 'SOLEDAD', '003'),
('0023', 'SABANAGRANDE', '003'),
('0024', 'SANTA LUCIA', '003'),
('0025', 'MALAMBO', '003'),
('0026', 'CAMPO DE LA CRUZ', '003'),
('0027', 'PALO NUEVO', '003'),
('0028', 'SANTO TOMAS', '003'),
('0029', 'BARANOA', '003'),
('0030', 'LURUACO', '003'),
('0031', 'CARTAGENA', '004'),
('0032', 'CORDOBA', '004'),
('0033', 'CARMEN DE BOLIVAR', '004'),
('0034', 'MOMPOX', '004'),
('0035', 'MONTE CRISTO', '004'),
('0036', 'TURBACO', '004'),
('0037', 'SANTA CATALINA', '004'),
('0038', 'MARGARITA', '004'),
('0039', 'MAHATES', '004'),
('0040', 'EL GUAMO', '004');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaempleo`
--

CREATE TABLE IF NOT EXISTS `ofertaempleo` (
  `idOferta` varchar(12) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Jornada` varchar(20) DEFAULT NULL,
  `SalarioMin` decimal(12,2) DEFAULT NULL,
  `SalarioMax` decimal(12,2) DEFAULT NULL,
  `Requisitos` varchar(240) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `codEmpresa` varchar(10) NOT NULL,
  PRIMARY KEY (`idOferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ofertaempleo`
--

INSERT INTO `ofertaempleo` (`idOferta`, `Nombre`, `Descripcion`, `Jornada`, `SalarioMin`, `SalarioMax`, `Requisitos`, `Estado`, `codEmpresa`) VALUES
('050001', 'secretaria', 'secretaria', 'Parcial', '500000.00', '857300.00', 'experiencia minima de 2 años', 'registrada', '20140001'),
('050002', 'desarrollador', 'desarrollado', 'Completa', '1000000.00', '2035800.00', 'esperiencia de 1 año', 'registrada', '20140001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `Identificacion` varchar(12) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Ciudad` varchar(4) DEFAULT NULL,
  `Jornada` varchar(20) DEFAULT NULL,
  `Titulos` varchar(200) DEFAULT NULL,
  `Habilidades` varchar(200) DEFAULT NULL,
  `Nivel` varchar(20) NOT NULL,
  `Clave` varchar(45) NOT NULL,
  PRIMARY KEY (`Identificacion`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `departa_FK` FOREIGN KEY (`CodDepart`) REFERENCES `departamentos` (`CodDepart`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
