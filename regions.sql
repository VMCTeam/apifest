-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2014 a las 21:22:25
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tabaco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE IF NOT EXISTS `main_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `name`    varchar(200) NOT NULL COMMENT 'Nombre',
  `number`  varchar(200) NOT NULL COMMENT 'Numero',
  `created` datetime NOT NULL COMMENT 'Momento de creacion del registro',
  `updated` datetime NOT NULL COMMENT 'Momento de actualizacion del registro',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Regiones de Chile' AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `main_region` (`id`, `name`, `number`, `created`, `updated`) VALUES
(1,  'REGIÓN DE TARAPACÁ', 'I','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2,  'REGIÓN DE ANTOFAGASTA', 'II','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3,  'REGIÓN DE ATACAMA', 'III', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4,  'REGIÓN DE COQUIMBO', 'IV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5,  'REGIÓN DE VALPARAÍSO', 'V', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6,  'REGIÓN DEL LIBERTADOR GENERAL BERNARDO O''HIGGINS',  'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7,  'REGIÓN DEL MAULE',  'VII','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8,  'REGIÓN DEL BÍO-BÍO', 'VIII', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9,  'REGIÓN DE LA ARAUCANÍA', 'IX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'REGIÓN DE LOS LAGOS',  'X','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'REGIÓN AYSÉN DEL GENERAL CARLOS IBÁÑEZ DEL CAMPO',  'XI','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'REGIÓN DE MAGALLANES Y LA ANTÁRTICA CHILENA ', 'XII', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'REGIÓN METROPOLITANA',  'XIII','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'REGION DE LOS RÍOS',  'XIV','0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'REGIÓN DE ARICA Y PARINACOTA', 'XV', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
