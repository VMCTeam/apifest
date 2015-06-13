-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2014 a las 21:20:19
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
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `addresses_provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `name` varchar(200) NOT NULL COMMENT 'Nombre de provincia',
  `region_id` int(11) NOT NULL COMMENT 'Id de region',
  `created` datetime NOT NULL COMMENT 'Momento de creacion de registro',
  `updated` datetime NOT NULL COMMENT 'Momento de actualizacion de registro',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Provincias de chile' AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `addresses_provincia` (`id`, `name`, `region_id`, `created`, `updated`) VALUES
(1, 'ARICA', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'PARINACOTA', 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'IQUIQUE', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'TOCOPILLA', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'EL LOA', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'ANTOFAGASTA', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'CHAÑARAL', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'COPIAPÓ', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'HUASCO', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'ELQUI', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'LIMARÍ', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CHOAPA', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'VALPARAÍSO', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'PETORCA', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'LOS ANDES', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'SAN FELIPE DE ACONCAGUA', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'QUILLOTA', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'SAN ANTONIO', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'ISLA DE PASCUA', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'CACHAPOAL', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'COLCHAHUA', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'CARDENAL CARO', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'CURICÓ', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'TALCA', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'LINARES', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'CAUQUENES', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'ÑUBLE', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'BIO BIO', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CONCEPCIÓN', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'ARAUCO', 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'MALLECO', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'CAUTÍN', 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'OSORNO', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'LLANQUIHUE', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CHILOÉ', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'PALENA', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'CAPITÁN PRATT', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'AYSÉN', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'COIHAIQUE', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'GENERAL CARRERA', 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'ÚLTIMA ESPERANZA', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'MAGALLANES', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'TIERRA DEL FUEGO', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'ANTÁRTICA CHILENA', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'SANTIAGO', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'CORDILLERA', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'MELIPILLA', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'TALAGANTE', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'MAIPO', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'CHACABUCO', 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'VALDIVIA', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'RANCO', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `addresses_provincia`
  ADD CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `addresses_region` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
