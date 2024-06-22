-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2024 a las 22:17:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemadedevoluciondedinero`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cheque_257443`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `cheque_257443` (
`nro_cuenta` varchar(255)
,`monto` varchar(255)
,`fyh_creacion` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cheque_300152`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `cheque_300152` (
`nro_cuenta` varchar(255)
,`monto` varchar(255)
,`fyh_creacion` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cuenta_257443`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `cuenta_257443` (
`nro_cuenta` varchar(255)
,`monto` varchar(255)
,`fyh_creacion` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `cuenta_300152`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `cuenta_300152` (
`nro_cuenta` varchar(255)
,`monto` varchar(255)
,`fyh_creacion` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `egresos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `egresos` (
`monto` varchar(255)
,`fyh_creacion` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `pagos_realizado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `pagos_realizado` (
`numero_tramite` varchar(255)
,`anio_numerotramite` varchar(255)
,`solicitante` varchar(255)
,`apoderado` varchar(255)
,`monto_voucher` double
,`nombre_banco` varchar(255)
,`nro_cuenta_banco` varchar(255)
,`nombre_concepto` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_actividad_principal`
--

CREATE TABLE `tb_actividad_principal` (
  `id_actividad_principal` int(11) NOT NULL,
  `nombre_actividad` varchar(255) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_actividad_principal`
--

INSERT INTO `tb_actividad_principal` (`id_actividad_principal`, `nombre_actividad`, `id_cargo`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 1, 0, '2024-05-24 15:57:29', '2024-05-24 15:57:29'),
(2, 'PROCESO ADMISION ORDINARIA 2022', 2, 0, '2024-05-24 15:57:29', '2024-05-28 16:01:31'),
(3, 'PROCESO ADMISION ORDINARIA 2023', 2, 0, '2024-05-24 15:57:29', '2024-05-28 15:55:06'),
(4, 'PROCESO ADMISION ORDINARIA 2024', 2, 0, '2024-05-24 15:57:29', '2024-05-24 15:57:29'),
(8, 'PROCESO ADMISION EUPG 2022', 3, 0, '2024-05-24 17:27:20', '2024-05-24 17:27:20'),
(9, 'PROCESO ADMISION EUPG 2023', 3, 0, '2024-05-24 17:27:20', '2024-05-24 17:27:20'),
(10, 'PROCESO ADMISION EUPG 2024', 3, 0, '2024-05-24 17:27:20', '2024-05-24 17:27:20'),
(11, 'ENSEÑANZA ACADEMICA', 3, 0, '2024-05-28 15:04:13', '2024-05-28 16:01:10'),
(12, 'PROCESO ADMISION SEGUNDA ESP. 2022', 2, 0, '2024-05-28 16:02:49', '2024-06-17 10:45:33'),
(13, 'PROCESO ADMISION SEGUNDA ESP. 2023', 2, 0, '2024-05-28 16:02:59', '2024-06-17 10:45:41'),
(14, 'PROCESO ADMISION SEGUNDA ESP. 2024', 2, 0, '2024-05-28 16:03:05', '2024-06-17 10:45:49'),
(15, 'SEGUNDA ESPECIALIDAD', 4, 0, '2024-05-28 16:03:16', '0000-00-00 00:00:00'),
(16, 'SEGUNDA ESPECIALIDAD', 8, 0, '2024-05-28 16:03:34', '0000-00-00 00:00:00'),
(17, 'PROCESO ADMISION RM 2022', 5, 0, '2024-05-28 16:03:50', '0000-00-00 00:00:00'),
(18, 'PROCESO ADMISION RM 2023', 5, 0, '2024-05-28 16:03:56', '0000-00-00 00:00:00'),
(19, 'PROCESO ADMISION RM 2024', 5, 0, '2024-05-28 16:04:02', '0000-00-00 00:00:00'),
(20, 'ENSEÑANZA ACADEMICA', 5, 0, '2024-05-28 16:04:24', '0000-00-00 00:00:00'),
(21, 'CEPREVI 2022-A', 6, 0, '2024-05-28 16:04:53', '0000-00-00 00:00:00'),
(22, 'CEPREVI 2022-B', 6, 0, '2024-05-28 16:05:02', '0000-00-00 00:00:00'),
(23, 'CEPREVI 2022-C', 6, 0, '2024-05-28 16:05:08', '0000-00-00 00:00:00'),
(24, 'CEPREVI 2023-A', 6, 0, '2024-05-28 16:05:16', '0000-00-00 00:00:00'),
(25, 'CEPREVI 2023-B', 6, 0, '2024-05-28 16:05:23', '0000-00-00 00:00:00'),
(26, 'CEPREVI 2023-C', 6, 0, '2024-05-28 16:05:31', '0000-00-00 00:00:00'),
(27, 'CEPREVI 2024-A', 6, 0, '2024-05-28 16:05:39', '0000-00-00 00:00:00'),
(28, 'CEPREVI 2024-B', 6, 0, '2024-05-28 16:05:45', '0000-00-00 00:00:00'),
(29, 'CEPREVI 2024-C', 6, 0, '2024-05-28 16:05:55', '0000-00-00 00:00:00'),
(30, 'CEPREVI EXTRAORDINARIO 2022', 6, 0, '2024-05-28 16:06:06', '0000-00-00 00:00:00'),
(31, 'CEPREVI EXTRAORDINARIO 2023', 6, 0, '2024-05-28 16:06:13', '0000-00-00 00:00:00'),
(32, 'CEPREVI EXTRAORDINARIO 2024', 6, 0, '2024-05-28 16:06:19', '0000-00-00 00:00:00'),
(33, 'CURSO DE NIVELACION', 7, 1, '2024-05-28 16:06:32', '2024-06-18 11:37:00'),
(34, 'CURSO DE REGULARIZACION', 7, 1, '2024-05-28 16:06:42', '2024-06-18 11:37:12'),
(35, 'CURSO DE ACTUALIZACION', 7, 1, '2024-05-28 16:06:49', '2024-06-18 11:36:48'),
(36, 'CURSO DE NIVELACION', 21, 0, '2024-06-18 10:37:23', '0000-00-00 00:00:00'),
(37, 'CURSO DE REGULARIZACION', 21, 0, '2024-06-18 10:39:21', '0000-00-00 00:00:00'),
(38, 'CURSO DE ACTUALIZACION', 21, 0, '2024-06-18 10:39:40', '0000-00-00 00:00:00'),
(39, 'CURSO DE NIVELACION', 22, 0, '2024-06-18 10:45:14', '0000-00-00 00:00:00'),
(40, 'CURSO DE REGULARIZACION', 22, 0, '2024-06-18 10:45:34', '0000-00-00 00:00:00'),
(41, 'CURSO DE ACTUALIZACION', 22, 0, '2024-06-18 10:46:18', '0000-00-00 00:00:00'),
(42, 'CURSO DE NIVELACION', 23, 0, '2024-06-18 10:47:28', '0000-00-00 00:00:00'),
(43, 'CURSO DE REGULARIZACION', 23, 0, '2024-06-18 10:47:38', '0000-00-00 00:00:00'),
(44, 'CURSO DE ACTUALIZACION', 23, 0, '2024-06-18 10:47:46', '0000-00-00 00:00:00'),
(45, 'CURSO DE NIVELACION', 24, 0, '2024-06-18 10:49:13', '0000-00-00 00:00:00'),
(46, 'CURSO DE REGULARIZACION', 24, 0, '2024-06-18 10:49:28', '0000-00-00 00:00:00'),
(47, 'CURSO DE ACTUALIZACION', 24, 0, '2024-06-18 10:49:38', '0000-00-00 00:00:00'),
(48, 'CURSO DE NIVELACION', 25, 0, '2024-06-18 10:51:17', '0000-00-00 00:00:00'),
(49, 'CURSO DE REGULARIZACION', 25, 0, '2024-06-18 10:51:28', '0000-00-00 00:00:00'),
(50, 'CURSO DE ACTUALIZACION', 25, 0, '2024-06-18 10:51:36', '0000-00-00 00:00:00'),
(51, 'CURSO DE NIVELACION', 26, 0, '2024-06-18 10:53:19', '0000-00-00 00:00:00'),
(52, 'CURSO DE REGULARIZACION', 26, 0, '2024-06-18 10:53:28', '0000-00-00 00:00:00'),
(53, 'CURSO DE ACTUALIZACION', 26, 0, '2024-06-18 10:53:43', '0000-00-00 00:00:00'),
(54, 'CURSO DE NIVELACION', 27, 0, '2024-06-18 10:54:33', '0000-00-00 00:00:00'),
(55, 'CURSO DE REGULARIZACION', 27, 0, '2024-06-18 10:54:49', '0000-00-00 00:00:00'),
(56, 'CURSO DE ACTUALIZACION', 27, 0, '2024-06-18 10:54:55', '0000-00-00 00:00:00'),
(57, 'CURSO DE NIVELACION', 28, 0, '2024-06-18 11:03:11', '0000-00-00 00:00:00'),
(58, 'CURSO DE REGULARIZACION', 28, 0, '2024-06-18 11:03:21', '0000-00-00 00:00:00'),
(59, 'CURSO DE ACTUALIZACION', 28, 0, '2024-06-18 11:03:31', '0000-00-00 00:00:00'),
(60, 'CURSO DE NIVELACION', 29, 0, '2024-06-18 11:03:59', '0000-00-00 00:00:00'),
(61, 'CURSO DE REGULARIZACION', 29, 0, '2024-06-18 11:04:15', '0000-00-00 00:00:00'),
(62, 'CURSO DE ACTUALIZACION', 29, 0, '2024-06-18 11:04:46', '0000-00-00 00:00:00'),
(63, 'CURSO DE NIVELACION', 30, 0, '2024-06-18 11:07:31', '0000-00-00 00:00:00'),
(64, 'CURSO DE REGULARIZACION', 30, 0, '2024-06-18 11:07:39', '0000-00-00 00:00:00'),
(65, 'CURSO DE ACTUALIZACION', 30, 0, '2024-06-18 11:07:47', '0000-00-00 00:00:00'),
(66, 'CURSO DE NIVELACION', 31, 0, '2024-06-18 11:08:41', '0000-00-00 00:00:00'),
(67, 'CURSO DE REGULARIZACION', 31, 0, '2024-06-18 11:08:50', '0000-00-00 00:00:00'),
(68, 'CURSO DE ACTUALIZACION', 31, 0, '2024-06-18 11:09:00', '0000-00-00 00:00:00'),
(69, 'CURSO DE NIVELACION', 32, 0, '2024-06-18 11:10:21', '0000-00-00 00:00:00'),
(70, 'CURSO DE REGULARIZACION', 32, 0, '2024-06-18 11:10:32', '0000-00-00 00:00:00'),
(71, 'CURSO DE ACTUALIZACION', 32, 0, '2024-06-18 11:10:40', '0000-00-00 00:00:00'),
(72, 'CURSO DE NIVELACION', 33, 0, '2024-06-18 11:13:12', '0000-00-00 00:00:00'),
(73, 'CURSO DE REGULARIZACION', 33, 0, '2024-06-18 11:13:21', '0000-00-00 00:00:00'),
(74, 'CURSO DE ACTUALIZACION', 33, 0, '2024-06-18 11:13:27', '0000-00-00 00:00:00'),
(75, 'CURSO DE NIVELACION', 35, 0, '2024-06-18 11:21:49', '0000-00-00 00:00:00'),
(76, 'CURSO DE REGULARIZACION', 35, 0, '2024-06-18 11:21:56', '0000-00-00 00:00:00'),
(77, 'CURSO DE ACTUALIZACION', 35, 0, '2024-06-18 11:22:04', '0000-00-00 00:00:00'),
(78, 'CURSO DE NIVELACION', 36, 0, '2024-06-18 11:23:42', '0000-00-00 00:00:00'),
(79, 'CURSO DE REGULARIZACION', 36, 0, '2024-06-18 11:23:49', '0000-00-00 00:00:00'),
(80, 'CURSO DE ACTUALIZACION', 36, 0, '2024-06-18 11:23:56', '0000-00-00 00:00:00'),
(81, 'CURSO DE NIVELACION', 16, 0, '2024-06-18 15:34:43', '0000-00-00 00:00:00'),
(82, 'CURSO DE REGULARIZACION', 16, 0, '2024-06-18 15:34:49', '0000-00-00 00:00:00'),
(83, 'CURSO DE ACTUALIZACION', 16, 0, '2024-06-18 15:34:54', '0000-00-00 00:00:00'),
(84, 'NO', 13, 0, '2024-06-20 09:43:52', '0000-00-00 00:00:00'),
(85, 'NO', 14, 0, '2024-06-20 09:45:56', '0000-00-00 00:00:00'),
(86, 'NO', 15, 0, '2024-06-20 09:48:03', '0000-00-00 00:00:00'),
(87, 'NO', 17, 0, '2024-06-20 09:49:04', '0000-00-00 00:00:00'),
(88, 'NO', 18, 0, '2024-06-20 09:58:56', '0000-00-00 00:00:00'),
(89, 'NO', 19, 0, '2024-06-20 10:00:07', '0000-00-00 00:00:00'),
(90, 'NO', 20, 0, '2024-06-20 10:01:06', '0000-00-00 00:00:00'),
(91, 'NO', 37, 0, '2024-06-20 10:03:11', '0000-00-00 00:00:00'),
(92, 'NO', 38, 0, '2024-06-20 10:05:09', '0000-00-00 00:00:00'),
(93, 'NO', 39, 0, '2024-06-20 10:09:22', '0000-00-00 00:00:00'),
(94, 'NO', 40, 0, '2024-06-20 10:10:25', '0000-00-00 00:00:00'),
(95, 'NO', 41, 0, '2024-06-20 10:12:50', '0000-00-00 00:00:00'),
(96, 'NO', 42, 0, '2024-06-20 10:15:03', '0000-00-00 00:00:00'),
(97, 'NO', 43, 0, '2024-06-20 10:16:31', '0000-00-00 00:00:00'),
(98, 'NO', 44, 0, '2024-06-20 10:17:03', '0000-00-00 00:00:00'),
(99, 'NO', 45, 0, '2024-06-20 10:17:34', '0000-00-00 00:00:00'),
(100, 'NO', 46, 0, '2024-06-20 10:18:03', '0000-00-00 00:00:00'),
(101, 'NO', 47, 0, '2024-06-20 10:32:07', '0000-00-00 00:00:00'),
(102, 'NO', 48, 0, '2024-06-20 10:49:36', '0000-00-00 00:00:00'),
(103, 'NO', 49, 0, '2024-06-20 10:50:18', '0000-00-00 00:00:00'),
(104, 'NO', 50, 0, '2024-06-20 10:51:46', '0000-00-00 00:00:00'),
(105, 'NO', 51, 0, '2024-06-20 10:52:13', '0000-00-00 00:00:00'),
(106, 'NO', 52, 0, '2024-06-20 10:52:36', '0000-00-00 00:00:00'),
(107, 'NO', 53, 0, '2024-06-20 10:53:02', '0000-00-00 00:00:00'),
(108, 'NO', 54, 0, '2024-06-20 10:53:32', '0000-00-00 00:00:00'),
(109, 'NO', 55, 0, '2024-06-20 10:54:12', '0000-00-00 00:00:00'),
(110, 'NO', 56, 0, '2024-06-20 10:54:43', '0000-00-00 00:00:00'),
(111, 'NO', 57, 0, '2024-06-20 10:55:22', '0000-00-00 00:00:00'),
(112, 'NO', 58, 0, '2024-06-20 10:56:02', '0000-00-00 00:00:00'),
(113, 'NO', 59, 0, '2024-06-20 10:57:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_anio_concepto`
--

CREATE TABLE `tb_anio_concepto` (
  `id_anio_concepto` int(11) NOT NULL,
  `anio_concepto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_anio_concepto`
--

INSERT INTO `tb_anio_concepto` (`id_anio_concepto`, `anio_concepto`) VALUES
(1, 'SELECCIONAR'),
(39, '2000'),
(40, '2001'),
(41, '2002'),
(42, '2003'),
(43, '2004'),
(44, '2005'),
(45, '2006'),
(46, '2007'),
(47, '2008'),
(48, '2009'),
(49, '2010'),
(50, '2011'),
(51, '2012'),
(52, '2013'),
(53, '2014'),
(54, '2015'),
(55, '2016'),
(56, '2017'),
(57, '2018'),
(58, '2019'),
(59, '2020'),
(60, '2021'),
(61, '2022'),
(62, '2023'),
(63, '2024'),
(64, '2025'),
(65, '2026'),
(66, '2027'),
(67, '2028'),
(68, '2029'),
(69, '2030'),
(70, '2031'),
(71, '2032'),
(72, '2033'),
(73, '2034'),
(74, '2035'),
(75, '2036'),
(76, '2037'),
(77, '2038'),
(78, '2039'),
(79, '2040'),
(80, '2041'),
(81, '2042'),
(82, '2043'),
(83, '2044'),
(84, '2045'),
(85, '2046'),
(86, '2047'),
(87, '2048'),
(88, '2049'),
(89, '2050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_anio_envio`
--

CREATE TABLE `tb_anio_envio` (
  `id_anio_envio` int(11) NOT NULL,
  `anio_envio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_anio_envio`
--

INSERT INTO `tb_anio_envio` (`id_anio_envio`, `anio_envio`) VALUES
(1, 'SELECCIONAR'),
(39, '2000'),
(40, '2001'),
(41, '2002'),
(42, '2003'),
(43, '2004'),
(44, '2005'),
(45, '2006'),
(46, '2007'),
(47, '2008'),
(48, '2009'),
(49, '2010'),
(50, '2011'),
(51, '2012'),
(52, '2013'),
(53, '2014'),
(54, '2015'),
(55, '2016'),
(56, '2017'),
(57, '2018'),
(58, '2019'),
(59, '2020'),
(60, '2021'),
(61, '2022'),
(62, '2023'),
(63, '2024'),
(64, '2025'),
(65, '2026'),
(66, '2027'),
(67, '2028'),
(68, '2029'),
(69, '2030'),
(70, '2031'),
(71, '2032'),
(72, '2033'),
(73, '2034'),
(74, '2035'),
(75, '2036'),
(76, '2037'),
(77, '2038'),
(78, '2039'),
(79, '2040'),
(80, '2041'),
(81, '2042'),
(82, '2043'),
(83, '2044'),
(84, '2045'),
(85, '2046'),
(86, '2047'),
(87, '2048'),
(88, '2049'),
(89, '2050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_anio_nt`
--

CREATE TABLE `tb_anio_nt` (
  `id_anio_nt` int(11) NOT NULL,
  `anio_nt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_anio_nt`
--

INSERT INTO `tb_anio_nt` (`id_anio_nt`, `anio_nt`) VALUES
(1, 'SELECCIONAR'),
(39, '2000'),
(40, '2001'),
(41, '2002'),
(42, '2003'),
(43, '2004'),
(44, '2005'),
(45, '2006'),
(46, '2007'),
(47, '2008'),
(48, '2009'),
(49, '2010'),
(50, '2011'),
(51, '2012'),
(52, '2013'),
(53, '2014'),
(54, '2015'),
(55, '2016'),
(56, '2017'),
(57, '2018'),
(58, '2019'),
(59, '2020'),
(60, '2021'),
(61, '2022'),
(62, '2023'),
(63, '2024'),
(64, '2025'),
(65, '2026'),
(66, '2027'),
(67, '2028'),
(68, '2029'),
(69, '2030'),
(70, '2031'),
(71, '2032'),
(72, '2033'),
(73, '2034'),
(74, '2035'),
(75, '2036'),
(76, '2037'),
(77, '2038'),
(78, '2039'),
(79, '2040'),
(80, '2041'),
(81, '2042'),
(82, '2043'),
(83, '2044'),
(84, '2045'),
(85, '2046'),
(86, '2047'),
(87, '2048'),
(88, '2049'),
(89, '2050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_anio_periodo`
--

CREATE TABLE `tb_anio_periodo` (
  `id_anio_periodo` int(11) NOT NULL,
  `anio_periodo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_anio_periodo`
--

INSERT INTO `tb_anio_periodo` (`id_anio_periodo`, `anio_periodo`) VALUES
(1, 'SELECCIONAR'),
(39, '2000'),
(40, '2001'),
(41, '2002'),
(42, '2003'),
(43, '2004'),
(44, '2005'),
(45, '2006'),
(46, '2007'),
(47, '2008'),
(48, '2009'),
(49, '2010'),
(50, '2011'),
(51, '2012'),
(52, '2013'),
(53, '2014'),
(54, '2015'),
(55, '2016'),
(56, '2017'),
(57, '2018'),
(58, '2019'),
(59, '2020'),
(60, '2021'),
(61, '2022'),
(62, '2023'),
(63, '2024'),
(64, '2025'),
(65, '2026'),
(66, '2027'),
(67, '2028'),
(68, '2029'),
(69, '2030'),
(70, '2031'),
(71, '2032'),
(72, '2033'),
(73, '2034'),
(74, '2035'),
(75, '2036'),
(76, '2037'),
(77, '2038'),
(78, '2039'),
(79, '2040'),
(80, '2041'),
(81, '2042'),
(82, '2043'),
(83, '2044'),
(84, '2045'),
(85, '2046'),
(86, '2047'),
(87, '2048'),
(88, '2049'),
(89, '2050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_anio_siafdevolucion`
--

CREATE TABLE `tb_anio_siafdevolucion` (
  `id_anio_siafdevolucion` int(11) NOT NULL,
  `anio_siaf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_anio_siafdevolucion`
--

INSERT INTO `tb_anio_siafdevolucion` (`id_anio_siafdevolucion`, `anio_siaf`) VALUES
(1, 'SELECCIONAR'),
(39, '2000'),
(40, '2001'),
(41, '2002'),
(42, '2003'),
(43, '2004'),
(44, '2005'),
(45, '2006'),
(46, '2007'),
(47, '2008'),
(48, '2009'),
(49, '2010'),
(50, '2011'),
(51, '2012'),
(52, '2013'),
(53, '2014'),
(54, '2015'),
(55, '2016'),
(56, '2017'),
(57, '2018'),
(58, '2019'),
(59, '2020'),
(60, '2021'),
(61, '2022'),
(62, '2023'),
(63, '2024'),
(64, '2025'),
(65, '2026'),
(66, '2027'),
(67, '2028'),
(68, '2029'),
(69, '2030'),
(70, '2031'),
(71, '2032'),
(72, '2033'),
(73, '2034'),
(74, '2035'),
(75, '2036'),
(76, '2037'),
(77, '2038'),
(78, '2039'),
(79, '2040'),
(80, '2041'),
(81, '2042'),
(82, '2043'),
(83, '2044'),
(84, '2045'),
(85, '2046'),
(86, '2047'),
(87, '2048'),
(88, '2049'),
(89, '2050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_anio_siaforigen`
--

CREATE TABLE `tb_anio_siaforigen` (
  `id_anio_siaforigen` int(11) NOT NULL,
  `anio_siaf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_anio_siaforigen`
--

INSERT INTO `tb_anio_siaforigen` (`id_anio_siaforigen`, `anio_siaf`) VALUES
(1, 'SELECCIONAR'),
(39, '2000'),
(40, '2001'),
(41, '2002'),
(42, '2003'),
(43, '2004'),
(44, '2005'),
(45, '2006'),
(46, '2007'),
(47, '2008'),
(48, '2009'),
(49, '2010'),
(50, '2011'),
(51, '2012'),
(52, '2013'),
(53, '2014'),
(54, '2015'),
(55, '2016'),
(56, '2017'),
(57, '2018'),
(58, '2019'),
(59, '2020'),
(60, '2021'),
(61, '2022'),
(62, '2023'),
(63, '2024'),
(64, '2025'),
(65, '2026'),
(66, '2027'),
(67, '2028'),
(68, '2029'),
(69, '2030'),
(70, '2031'),
(71, '2032'),
(72, '2033'),
(73, '2034'),
(74, '2035'),
(75, '2036'),
(76, '2037'),
(77, '2038'),
(78, '2039'),
(79, '2040'),
(80, '2041'),
(81, '2042'),
(82, '2043'),
(83, '2044'),
(84, '2045'),
(85, '2046'),
(86, '2047'),
(87, '2048'),
(88, '2049'),
(89, '2050');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_asunto`
--

CREATE TABLE `tb_asunto` (
  `id_asunto` int(11) NOT NULL,
  `nombre_asunto` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_asunto`
--

INSERT INTO `tb_asunto` (`id_asunto`, `nombre_asunto`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-06-03 17:28:20', '2024-06-03 17:28:20'),
(2, 'PLANILLAS DE HABERES', 0, '2024-06-03 17:28:20', '2024-06-03 17:28:20'),
(3, 'PLANILLAS CESANTES', 0, '2024-06-03 17:28:47', '2024-06-03 17:28:47'),
(4, 'PLANILLAS CAS', 0, '2024-06-03 17:29:11', '2024-06-03 17:29:11'),
(5, 'PLANILLAS METAS', 0, '2024-06-03 17:29:24', '2024-06-03 17:29:24'),
(6, 'PLANILLAS PRODUCTIVIDAD', 0, '2024-06-03 17:29:24', '2024-06-03 17:29:24'),
(8, 'PLANILLAS CONTRATADOS', 0, '2024-06-03 17:29:46', '2024-06-03 17:29:46'),
(9, 'GARANTIAS', 0, '2024-06-03 17:29:46', '2024-06-03 17:29:46'),
(10, 'T-6', 0, '2024-06-03 17:29:46', '2024-06-03 17:29:46'),
(11, 'SUNAT', 0, '2024-06-03 17:30:54', '2024-06-03 17:30:54'),
(12, 'OTROS', 0, '2024-06-03 17:30:54', '2024-06-03 17:30:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_bancos`
--

CREATE TABLE `tb_bancos` (
  `id_banco` int(11) NOT NULL,
  `nombre_banco` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_bancos`
--

INSERT INTO `tb_bancos` (`id_banco`, `nombre_banco`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-05-09 21:08:30', '2024-05-09 21:08:30'),
(2, 'BANCO DE COMERCIO', 0, '2024-05-09 14:08:55', '2024-05-09 14:26:40'),
(3, 'BANCO DE CREDITO DEL PERU', 0, '2024-05-09 14:09:03', '2024-05-09 14:26:04'),
(4, 'BANCO INTERAMERICANO DE FINANZAS (BANBIF)', 0, '2024-05-09 14:27:15', '0000-00-00 00:00:00'),
(5, 'BANCO PICHINCHA', 0, '2024-05-09 14:27:23', '0000-00-00 00:00:00'),
(6, 'BANCO DE LA NACIÓN', 0, '2024-05-09 14:27:30', '2024-05-09 14:31:41'),
(7, 'CITIBANK PERÚ', 0, '2024-05-09 14:27:37', '0000-00-00 00:00:00'),
(8, 'INTERBANK', 0, '2024-05-09 14:27:43', '0000-00-00 00:00:00'),
(9, 'MIBANCO', 0, '2024-05-09 14:27:49', '0000-00-00 00:00:00'),
(10, 'SCOTIABANK PERÚ', 0, '2024-05-09 14:27:56', '0000-00-00 00:00:00'),
(11, 'BANCO GNB PERÚ', 0, '2024-05-09 14:28:02', '0000-00-00 00:00:00'),
(12, 'BANCO FALABELLA', 0, '2024-05-09 14:28:11', '0000-00-00 00:00:00'),
(13, 'BANCO RIPLEY', 0, '2024-05-09 14:28:19', '0000-00-00 00:00:00'),
(14, 'BANCO SANTANDER PERÚ', 0, '2024-05-09 14:28:27', '0000-00-00 00:00:00'),
(15, 'ALFIN BANCO', 0, '2024-05-09 14:28:33', '0000-00-00 00:00:00'),
(16, 'BANK OF CHINA', 0, '2024-05-09 14:28:39', '0000-00-00 00:00:00'),
(17, 'BCI PERÚ', 0, '2024-05-09 14:28:47', '0000-00-00 00:00:00'),
(18, 'ICBC PERU BANK', 0, '2024-05-09 14:28:54', '0000-00-00 00:00:00'),
(19, 'AGROBANCO', 0, '2024-05-09 14:29:03', '0000-00-00 00:00:00'),
(20, 'BBVA', 0, '2024-05-09 14:29:09', '2024-05-09 14:31:34'),
(21, 'COFIDE', 0, '2024-05-09 14:29:15', '0000-00-00 00:00:00'),
(22, 'FONDO MIVIVIENDA', 0, '2024-05-09 14:29:21', '0000-00-00 00:00:00'),
(23, 'CAJA AREQUIPA', 0, '2024-05-09 14:35:52', '0000-00-00 00:00:00'),
(24, 'CAJA CUSCO', 0, '2024-05-09 14:36:03', '0000-00-00 00:00:00'),
(25, 'CAJA DEL SANTA', 0, '2024-05-09 14:36:15', '0000-00-00 00:00:00'),
(26, 'CAJA TRUJILLO', 0, '2024-05-09 14:36:23', '0000-00-00 00:00:00'),
(27, 'CAJA HUANCAYO', 0, '2024-05-09 14:36:30', '0000-00-00 00:00:00'),
(28, 'CAJA ICA', 0, '2024-05-09 14:36:39', '0000-00-00 00:00:00'),
(29, 'CAJA MAYNAS', 0, '2024-05-09 14:36:45', '0000-00-00 00:00:00'),
(30, 'CAJA PAITA', 0, '2024-05-09 14:36:52', '0000-00-00 00:00:00'),
(31, 'CAJA PIURA', 0, '2024-05-09 14:36:59', '0000-00-00 00:00:00'),
(32, 'CAJA SULLANA', 0, '2024-05-09 14:37:12', '0000-00-00 00:00:00'),
(33, 'CAJA TACNA', 0, '2024-05-09 14:37:48', '0000-00-00 00:00:00'),
(34, 'CAJA METROPOLITANA DE LIMA', 0, '2024-05-09 14:38:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cargo`
--

CREATE TABLE `tb_cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_cargo`
--

INSERT INTO `tb_cargo` (`id_cargo`, `nombre_cargo`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-05-24 15:45:43', '2024-05-24 15:45:43'),
(2, 'OFICINA CENTRAL DE ADMISIÓN', 0, '2024-05-24 15:45:43', '2024-06-18 10:21:13'),
(3, 'ESCUELA UNIVERSITARIA DE POSTGRADO', 0, '2024-05-24 15:46:25', '2024-05-28 15:44:09'),
(4, 'FACULTAD DE ODONTOLOGIA', 0, '2024-05-24 15:47:07', '2024-05-24 15:47:07'),
(5, 'FACULTAD DE MEDICINA HIPOLITO UNANUE', 0, '2024-05-24 15:47:58', '2024-05-28 14:22:59'),
(6, 'CENTRO PREUNIVERSITARIO VILLARREAL', 0, '2024-05-24 15:47:58', '2024-06-18 10:13:44'),
(7, 'FACULTADES', 1, '2024-05-24 15:49:00', '2024-06-18 11:25:50'),
(8, 'FACULTAD DE TECNOLOGIA MEDICA', 0, '2024-05-24 15:49:00', '2024-05-24 15:49:00'),
(13, 'BIBLIOTECA CENTRAL', 0, '2024-06-18 10:10:51', '0000-00-00 00:00:00'),
(14, 'CENTRO DE GESTIÓN CULTURAL - FEDERICO VILLAREAL', 0, '2024-06-18 10:11:16', '0000-00-00 00:00:00'),
(15, 'CENTRO DE PRODUCCIÓN DE BIENES Y SERVICIOS', 0, '2024-06-18 10:12:23', '0000-00-00 00:00:00'),
(16, 'CENTRO UNIVERSITARIO DE IDIOMAS', 0, '2024-06-18 10:12:41', '2024-06-18 10:13:35'),
(17, 'CENTRO UNIVERSITARIO DE RESPONSABILIDAD SOCIAL', 0, '2024-06-18 10:13:54', '0000-00-00 00:00:00'),
(18, 'COMITÉ ELECTORAL', 0, '2024-06-18 10:14:08', '0000-00-00 00:00:00'),
(19, 'DIRECCIÓN GENERAL DE ADMINISTRACIÓN', 0, '2024-06-18 10:14:18', '0000-00-00 00:00:00'),
(20, 'EDITORIAL UNIVERSITARIA', 0, '2024-06-18 10:14:26', '0000-00-00 00:00:00'),
(21, 'FACULTAD DE ADMINISTRACIÓN', 0, '2024-06-18 10:14:36', '2024-06-18 10:16:16'),
(22, 'FACULTAD DE ARQUITECTURA Y URBANISMO', 0, '2024-06-18 10:16:32', '0000-00-00 00:00:00'),
(23, 'FACULTAD DE CIENCIAS ECONÓMICAS', 0, '2024-06-18 10:16:42', '0000-00-00 00:00:00'),
(24, 'FACULTAD DE CIENCIAS FINANCIERAS Y CONTABLES', 0, '2024-06-18 10:17:13', '0000-00-00 00:00:00'),
(25, 'FACULTAD DE CIENCIAS NATURALES Y MATEMATICAS', 0, '2024-06-18 10:17:48', '0000-00-00 00:00:00'),
(26, 'FACULTAD DE CIENCIAS SOCIALES', 0, '2024-06-18 10:17:55', '0000-00-00 00:00:00'),
(27, 'FACULTAD DE DERECHO Y CIENCIAS POLÍTICAS', 0, '2024-06-18 10:18:08', '0000-00-00 00:00:00'),
(28, 'FACULTAD DE EDUCACIÓN', 0, '2024-06-18 10:18:14', '0000-00-00 00:00:00'),
(29, 'FACULTAD DE HUMANIDADES', 0, '2024-06-18 10:18:20', '0000-00-00 00:00:00'),
(30, 'FACULTAD DE INGENIERIA CIVIL', 0, '2024-06-18 10:18:28', '0000-00-00 00:00:00'),
(31, 'FACULTAD DE INGENIERIA ELECTRÓNICA E INFORMÁTICA', 0, '2024-06-18 10:19:08', '0000-00-00 00:00:00'),
(32, 'FACULTAD DE INGENIERIA GEOGRÁFICA Y AMBIENTAL', 0, '2024-06-18 10:19:15', '0000-00-00 00:00:00'),
(33, 'FACULTAD DE INGENIERIA INDUSTRIAL Y SISTEMAS', 0, '2024-06-18 10:19:22', '0000-00-00 00:00:00'),
(34, 'FACULTAD DE MEDICINA', 1, '2024-06-18 10:19:29', '2024-06-18 11:20:54'),
(35, 'FACULTAD DE OCEANOGRAFIA, PESQUERIA Y CIENCIAS ALIMENTARIAS', 0, '2024-06-18 10:19:37', '0000-00-00 00:00:00'),
(36, 'FACULTAD DE PSICOLOGIA', 0, '2024-06-18 10:20:06', '0000-00-00 00:00:00'),
(37, 'INSTITUTO CENTRAL DE GESTIÓN DE LA INVESTIGACIÓN', 0, '2024-06-18 10:20:26', '0000-00-00 00:00:00'),
(38, 'INSTITUTO DE RECREACIÓN, EDUCACIÓN FÍSICA Y DEPORTE', 0, '2024-06-18 10:20:33', '0000-00-00 00:00:00'),
(39, 'OFICINA CENTRAL DE ASESORÍA JURÍDICA', 0, '2024-06-18 10:20:49', '2024-06-18 10:21:03'),
(40, 'OFICINA CENTRAL DE ASUNTOS ACADÉMICOS', 0, '2024-06-18 10:21:52', '0000-00-00 00:00:00'),
(41, 'OFICINA CENTRAL DE BIENESTAR UNIVERSITARIO', 0, '2024-06-18 10:22:21', '0000-00-00 00:00:00'),
(42, 'OFICINA CENTRAL DE CALIDAD', 0, '2024-06-18 10:22:27', '0000-00-00 00:00:00'),
(43, 'OFICINA CENTRAL DE COMUNICACIONES E IMAGEN INSTITUCIONAL', 0, '2024-06-18 10:22:42', '0000-00-00 00:00:00'),
(44, 'OFICINA CENTRAL DE GESTIÓN DE TECNOLOGÍAS DE LA INFORMACIÓN', 0, '2024-06-18 10:27:20', '0000-00-00 00:00:00'),
(45, 'OFICINA CENTRAL DE INNOVACIÓN, DESARROLLO Y EMPRENDIMIENTO', 0, '2024-06-18 10:27:31', '0000-00-00 00:00:00'),
(46, 'OFICINA CENTRAL DE PLANIFICACIÓN', 0, '2024-06-18 10:27:44', '0000-00-00 00:00:00'),
(47, 'OFICINA CENTRAL DE REGISTROS ACADÉMICOS', 0, '2024-06-18 10:27:51', '0000-00-00 00:00:00'),
(48, 'OFICINA CENTRAL DE RELACIONES NACIONALES E INTERNACIONALES', 0, '2024-06-18 10:28:07', '0000-00-00 00:00:00'),
(49, 'OFICINA DE ABASTECIMIENTO Y SERVICIOS GENERALES', 0, '2024-06-18 10:28:14', '0000-00-00 00:00:00'),
(50, 'OFICINA DE CONTABILIDAD', 0, '2024-06-18 10:28:21', '0000-00-00 00:00:00'),
(51, 'OFICINA DE INVERSIONES', 0, '2024-06-18 10:28:27', '0000-00-00 00:00:00'),
(52, 'OFICINA DE RECURSOS HUMANOS', 0, '2024-06-18 10:28:34', '0000-00-00 00:00:00'),
(53, 'OFICINA DE TESORERIA', 0, '2024-06-18 10:28:42', '0000-00-00 00:00:00'),
(54, 'ÓRGANO DE CONTROL INSTITUCIONAL', 0, '2024-06-18 10:28:56', '0000-00-00 00:00:00'),
(55, 'RECTORADO', 0, '2024-06-18 10:29:20', '0000-00-00 00:00:00'),
(56, 'SECRETARIA GENERAL', 0, '2024-06-18 10:30:29', '0000-00-00 00:00:00'),
(57, 'UNIDAD DE PATRIMONIO', 0, '2024-06-18 10:30:36', '0000-00-00 00:00:00'),
(58, 'VICE RECTORADO ACADÉMICO', 0, '2024-06-18 10:30:43', '0000-00-00 00:00:00'),
(59, 'VICE RECTORADO DE INVESTIGACIÓN', 0, '2024-06-18 10:30:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cheque`
--

CREATE TABLE `tb_cheque` (
  `id_cheque` int(11) NOT NULL,
  `nt` varchar(255) NOT NULL,
  `id_anio_nt` int(11) NOT NULL,
  `proveido_diga` varchar(255) NOT NULL,
  `fecha_diga` date NOT NULL,
  `proveido_conta` varchar(255) NOT NULL,
  `fecha_conta` date NOT NULL,
  `id_asunto` int(11) NOT NULL,
  `siaf` varchar(255) NOT NULL,
  `id_tipo_gasto` int(11) NOT NULL,
  `oficio` varchar(255) NOT NULL,
  `fecha_oficio` date NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_cheque`
--

INSERT INTO `tb_cheque` (`id_cheque`, `nt`, `id_anio_nt`, `proveido_diga`, `fecha_diga`, `proveido_conta`, `fecha_conta`, `id_asunto`, `siaf`, `id_tipo_gasto`, `oficio`, `fecha_oficio`, `observacion`, `visible`, `id_usuario`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, '112233', 63, '123', '2024-06-10', '456', '2024-06-12', 11, '5.8.9', 3, '150-2024-OT-DIGA', '2024-06-14', '', 0, 1, '2024-06-21 10:03:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ciclos`
--

CREATE TABLE `tb_ciclos` (
  `id_ciclo` int(11) NOT NULL,
  `ciclo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_ciclos`
--

INSERT INTO `tb_ciclos` (`id_ciclo`, `ciclo`) VALUES
(1, 'SELECCIONAR'),
(5, 'A'),
(6, 'B'),
(7, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_comprobantes`
--

CREATE TABLE `tb_comprobantes` (
  `id_comprobantes` int(11) NOT NULL,
  `nombre_comprobantes` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_comprobantes`
--

INSERT INTO `tb_comprobantes` (`id_comprobantes`, `nombre_comprobantes`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-05-24 16:06:48', '2024-05-24 16:06:48'),
(2, 'BOLETA', 0, '2024-05-24 16:06:48', '2024-05-24 16:06:48'),
(3, 'FACTURA', 0, '2024-05-24 16:06:48', '2024-05-24 16:06:48'),
(4, 'RECIBOS', 0, '2024-05-24 16:06:48', '2024-05-24 16:06:48'),
(5, 'RECIBO POR HONORARIO', 0, '2024-05-24 16:06:48', '2024-05-24 16:06:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_conceptos`
--

CREATE TABLE `tb_conceptos` (
  `id_concepto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_conceptos`
--

INSERT INTO `tb_conceptos` (`id_concepto`, `nombre`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(2, 'ANTICIPO DEVUELTOS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(3, 'ASOCIACION DOCENTES CESANTES DE LA UNFV OSCAR HERRERA MARQUIS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(4, 'BANCO DE COMERCIO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(5, 'BANCO DE LA NACION', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(6, 'BANCO INTERAMERICANO DE FINANZAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(7, 'BANCO INTERBANK', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(8, 'BANCO PICHINCHA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(9, 'BANCO RIPLEY PERU S.A', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(10, 'CEPREVI', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(11, 'COLEGIO DE PSICOLOGOS DEL PERU CONS. DIR. REG. LIMA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(12, 'COMITE CAFAE UNF VILLARREAL', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(13, 'COOP. DE SERV. MULT. VICTOR RAUL.HAYA DE LA TORRE', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(14, 'COOPERATIVA DE AHORRO Y CREDITO ATLANTIS LTDA.', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(15, 'COSTOS PROCESALES', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(16, 'CURSO DE REGULARIZACION', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(17, 'CURSO TALLER', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(18, 'DESCUENTO PLANILLA HABERES', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(19, 'DESCUENTOS PLANILLA CAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(20, 'DESCUENTOS PLANILLAS CESANTES', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(21, 'DESCUENTOS PLANILLAS CONTRATADOS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(22, 'DESCUENTOS PLANILLAS RDR OCASIONALES', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(23, 'DEVOLUCION DE GARANTIA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(24, 'DEVOLUCION PAGO DEMAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(25, 'DSCTO. A FAVOR DE SEGUROS RIMAC-PLLA CAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(26, 'DSCTO. A FAVOR DEL SINDICATO FRATERNIDAD-PLLA CAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(27, 'ESSALUD', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(28, 'INTERESES GANADOS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(29, 'INTERSEGURO COMPAÑIA DE SEGUROS S.A.', 0, '2024-04-09 00:00:00', '2024-05-06 11:16:07'),
(30, 'LIQUIDACION CAJA CHICA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(31, 'MATRICULA CEPREVI', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(32, 'MATRICULA EUPG', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(33, 'MATRICULA PREGRADO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(34, 'MATRICULA RESIDENTADO MEDICO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(35, 'MATRICULA SEGUNDA ESPECIALIDAD', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(36, 'NUEVO GIRO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(37, 'PAGO DE APORTES A ESSALUD HABERES CAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(38, 'PAGO SETENCIAS JUDICIALES EN CALIDAD COSA JUZGADAS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(39, 'PENSIONES CEPREVI', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(40, 'PENSIONES EUPG', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(41, 'PENSIONES PREGRADO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(42, 'PENSIONES RESIDENTADO MEDICO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(43, 'PENSIONES SEGUNDA ESPECIALIDAD', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(44, 'PROCESO ADMISION EUPG', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(45, 'PROCESO ADMISION ORDINARIA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(46, 'PROCESO ADMISION RESIDENTADO MEDICO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(47, 'PROCESO ADMISION SEGUNDA ESPECIALIDAD', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(48, 'RAMOS ROMERO MARYCIELO THEMIS ATENEA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(49, 'RESOLUCION DE EXPEDITO CON TASA NO VIGENTE', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(50, 'RETENCION 3%', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(51, 'RETENCION JUDICIAL', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(52, 'REVERSION AL TP', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(53, 'RIMAC S.A. ENTIDAD PRESTADORA DE SALUD', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(54, 'RIMAC SEGUROS Y REASEGUROS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(55, 'SCOTIABANK PERU SAA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(56, 'SETENCIA AFP INTEGRA', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(57, 'SINDICATO DE DOCENTES DE LA UNIVERSIDAD VILLARREAL', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(58, 'SINDICATO UNICO DE TRABAJ. ADM. DE LA U.N.F.V. - FRATERNIDAD', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(59, 'SOBRANTE PAGO DE AFP', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(60, 'TRABAJO ACADEMICO TITULO P. SEGUNDA ESP.', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(61, 'TRAMITE DE BACHILLER O TITULO', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(62, 'TRANSFERENCIA A LA CUT', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(63, 'OTROS', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(64, 'CONSTANCIA DE EGRESADO', 0, '2024-05-15 12:07:22', '0000-00-00 00:00:00'),
(65, 'OBTENCION DE TITULO PROFESIONAL', 0, '2024-05-15 12:15:09', '0000-00-00 00:00:00'),
(66, 'DIPLOMA POR TITULO', 0, '2024-05-15 12:15:33', '0000-00-00 00:00:00'),
(67, 'DIPLOMA POR BACHILLER', 0, '2024-05-15 12:15:52', '2024-05-15 12:16:11'),
(68, 'RESOLUCION DE EXPEDITO', 0, '2024-05-15 12:16:27', '0000-00-00 00:00:00'),
(69, 'CURSO DE NIVELACION', 0, '2024-05-15 12:16:48', '0000-00-00 00:00:00'),
(70, 'INSCRIPCION DE ADMISION', 0, '2024-05-15 12:18:22', '0000-00-00 00:00:00'),
(71, 'SUBSANACION DE ASIGNATURA', 0, '2024-05-15 12:18:45', '0000-00-00 00:00:00'),
(72, 'CURSO DE ACTUALIZACION', 0, '2024-05-15 12:20:40', '0000-00-00 00:00:00'),
(73, 'CERTIFICADO DE ESTUDIOS', 0, '2024-05-16 09:29:38', '0000-00-00 00:00:00'),
(74, 'EXAMEN DE SUSTENTACION', 0, '2024-05-16 10:16:53', '0000-00-00 00:00:00'),
(75, 'NOMBRAMIENTO DE JURADO', 0, '2024-05-16 10:22:00', '0000-00-00 00:00:00'),
(76, 'FOTOCHECK CEPREVI', 0, '2024-05-17 15:46:49', '2024-05-17 15:47:49'),
(77, 'OBTENCION DE GRADO DE BACHILLER', 0, '2024-06-12 10:23:47', '0000-00-00 00:00:00'),
(78, 'DEVOLUCION DE SEGUNDA ESPECIALIDAD', 0, '2024-06-12 10:24:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_concepto_giro`
--

CREATE TABLE `tb_concepto_giro` (
  `id_concepto_giro` int(11) NOT NULL,
  `nombre_concepto_giro` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_concepto_giro`
--

INSERT INTO `tb_concepto_giro` (`id_concepto_giro`, `nombre_concepto_giro`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-05-24 16:04:34', '2024-05-24 16:04:34'),
(2, 'ANTICIPO', 0, '2024-05-24 16:04:34', '2024-05-24 16:04:34'),
(3, 'LOCADOR', 0, '2024-05-24 16:04:34', '2024-05-24 16:04:34'),
(4, 'PROVEEDOR', 0, '2024-05-24 16:04:34', '2024-05-24 16:04:34'),
(5, 'PLANILLA', 0, '2024-06-20 16:17:46', '2024-06-20 16:17:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_condicion`
--

CREATE TABLE `tb_condicion` (
  `id_condicion` int(11) NOT NULL,
  `condicion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_condicion`
--

INSERT INTO `tb_condicion` (`id_condicion`, `condicion`) VALUES
(1, 'SELECCIONAR'),
(2, 'ENTREGADO'),
(4, 'PENDIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_condicion2`
--

CREATE TABLE `tb_condicion2` (
  `id_condicion2` int(11) NOT NULL,
  `condicion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_condicion2`
--

INSERT INTO `tb_condicion2` (`id_condicion2`, `condicion`) VALUES
(1, 'SELECCIONAR'),
(2, 'COBRADO'),
(3, 'ANULADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_dependencias`
--

CREATE TABLE `tb_dependencias` (
  `id_dependencia` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_dependencias`
--

INSERT INTO `tb_dependencias` (`id_dependencia`, `nombre`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(2, 'BIBLIOTECA CENTRAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:12'),
(3, 'CENTRO DE GESTIÓN CULTURAL - FEDERICO VILLAREAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:18:17'),
(4, 'CENTRO DE PRODUCCIÓN DE BIENES Y SERVICIOS', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:25'),
(5, 'CENTRO PREUNIVERSITARIO VILLARREAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:28'),
(6, 'CENTRO UNIVERSITARIO DE IDIOMAS ', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:30'),
(7, 'CENTRO UNIVERSITARIO DE RESPONSABILIDAD SOCIAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:32'),
(8, 'COMITÉ ELECTORAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:35'),
(9, 'DIRECCIÓN GENERAL DE ADMINISTRACIÓN', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:37'),
(10, 'EDITORIAL UNIVERSITARIA', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:39'),
(11, 'ESCUELA UNIVERSITARIA DE POSGRADO ', 0, '2024-04-09 00:00:00', '2024-05-13 15:17:42'),
(12, 'FACULTAD DE ADMINISTRACIÓN', 0, '2024-04-09 00:00:00', '2024-05-13 15:18:39'),
(13, 'FACULTAD DE ARQUITECTURA Y URBANISMO', 0, '2024-04-09 00:00:00', '2024-05-13 15:18:43'),
(14, 'FACULTAD DE CIENCIAS ECONÓMICAS', 0, '2024-04-09 00:00:00', '2024-05-13 15:18:49'),
(15, 'FACULTAD DE CIENCIAS FINANCIERAS Y CONTABLES', 0, '2024-04-09 00:00:00', '2024-05-13 15:18:53'),
(16, 'FACULTAD DE CIENCIAS NATURALES Y MATEMATICAS', 0, '2024-04-09 00:00:00', '2024-05-13 15:18:57'),
(17, 'FACULTAD DE CIENCIAS SOCIALES', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:27'),
(18, 'FACULTAD DE DERECHO Y CIENCIAS POLÍTICAS', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:00'),
(19, 'FACULTAD DE EDUCACIÓN', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:03'),
(20, 'FACULTAD DE HUMANIDADES', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:06'),
(21, 'FACULTAD DE INGENIERIA CIVIL', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:10'),
(22, 'FACULTAD DE INGENIERIA ELECTRÓNICA E INFORMÁTICA', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:48'),
(23, 'FACULTAD DE INGENIERIA GEOGRÁFICA Y AMBIENTAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:52'),
(24, 'FACULTAD DE INGENIERIA INDUSTRIAL Y SISTEMAS', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:55'),
(25, 'FACULTAD DE MEDICINA ', 0, '2024-04-09 00:00:00', '2024-05-13 15:19:58'),
(26, 'FACULTAD DE OCEANOGRAFIA, PESQUERIA Y CIENCIAS ALIMENTARIAS', 0, '2024-04-09 00:00:00', '2024-05-13 15:20:05'),
(27, 'FACULTAD DE ODONTOLOGIA', 0, '2024-04-09 00:00:00', '2024-05-13 15:20:09'),
(28, 'FACULTAD DE PSICOLOGIA', 0, '2024-04-09 00:00:00', '2024-05-13 15:20:12'),
(29, 'FACULTAD DE TECNOLOGIA MEDICA', 0, '2024-04-09 00:00:00', '2024-05-13 15:20:20'),
(30, 'INSTITUTO CENTRAL DE GESTIÓN DE LA INVESTIGACIÓN ', 0, '2024-04-09 00:00:00', '2024-05-13 15:20:24'),
(31, 'INSTITUTO DE RECREACIÓN, EDUCACIÓN FÍSICA Y DEPORTE ', 0, '2024-04-09 00:00:00', '2024-05-13 15:20:27'),
(32, 'OFICINA CENTRAL DE ADMISIÓN', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:10'),
(33, 'OFICINA CENTRAL DE ASESORÍA JURÍDICA', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:14'),
(34, 'OFICINA CENTRAL DE ASUNTOS ACADÉMICOS', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:17'),
(35, 'OFICINA CENTRAL DE BIENESTAR UNIVERSITARIO', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:20'),
(36, 'OFICINA CENTRAL DE CALIDAD ', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:23'),
(37, 'OFICINA CENTRAL DE COMUNICACIONES E IMAGEN INSTITUCIONAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:30'),
(38, 'OFICINA CENTRAL DE GESTIÓN DE TECNOLOGÍAS DE LA INFORMACIÓN', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:33'),
(39, 'OFICINA CENTRAL DE INNOVACIÓN, DESARROLLO Y EMPRENDIMIENTO ', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:36'),
(40, 'OFICINA CENTRAL DE PLANIFICACIÓN ', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:40'),
(41, 'OFICINA CENTRAL DE REGISTROS ACADÉMICOS', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:42'),
(42, 'OFICINA CENTRAL DE RELACIONES NACIONALES E INTERNACIONALES ', 0, '2024-04-09 00:00:00', '2024-05-13 15:21:59'),
(43, 'OFICINA DE ABASTECIMIENTO Y SERVICIOS GENERALES', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:02'),
(44, 'OFICINA DE CONTABILIDAD', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:05'),
(45, 'OFICINA DE INVERSIONES', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:08'),
(46, 'OFICINA DE RECURSOS HUMANOS', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:12'),
(47, 'OFICINA DE TESORERIA', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:16'),
(48, 'ÓRGANO DE CONTROL INSTITUCIONAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:23'),
(49, 'RECTORADO', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:26'),
(50, 'SECRETARIA GENERAL', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:29'),
(51, 'UNIDAD DE PATRIMONIO ', 0, '2024-04-09 00:00:00', '2024-05-13 15:22:33'),
(52, 'VICE RECTORADO ACADÉMICO', 0, '2024-04-09 00:00:00', '2024-05-13 15:23:22'),
(53, 'VICE RECTORADO DE INVESTIGACIÓN', 0, '2024-04-09 00:00:00', '2024-05-13 15:23:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_cheque`
--

CREATE TABLE `tb_detalle_cheque` (
  `id_detalle_cheque` int(11) NOT NULL,
  `id_nrocuenta` int(11) NOT NULL,
  `nro_ci` varchar(255) NOT NULL,
  `fecha_ci` date NOT NULL,
  `nro_ce` varchar(255) NOT NULL,
  `fecha_ce` date NOT NULL,
  `nro_cheque` varchar(255) NOT NULL,
  `fecha_emision_cheque` date NOT NULL,
  `monto` varchar(255) NOT NULL,
  `nro_envio` varchar(255) NOT NULL,
  `fecha_aprobado` date NOT NULL,
  `fecha_entregado` date NOT NULL,
  `fecha_pagado` date NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nt` varchar(255) NOT NULL,
  `id_anio_nt` int(11) NOT NULL,
  `fyh_creacion` date NOT NULL,
  `fyh_actualizacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_detalle_cheque`
--

INSERT INTO `tb_detalle_cheque` (`id_detalle_cheque`, `id_nrocuenta`, `nro_ci`, `fecha_ci`, `nro_ce`, `fecha_ce`, `nro_cheque`, `fecha_emision_cheque`, `monto`, `nro_envio`, `fecha_aprobado`, `fecha_entregado`, `fecha_pagado`, `observacion`, `visible`, `id_usuario`, `nt`, `id_anio_nt`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 2, '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '0.00', '', '0000-00-00', '0000-00-00', '0000-00-00', '', 0, 1, '112233', 63, '2024-06-21', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_devolucion`
--

CREATE TABLE `tb_detalle_devolucion` (
  `id_detalle_devolucion` int(11) NOT NULL,
  `id_tipo_documento` int(11) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `nombre_solicitante` varchar(255) NOT NULL,
  `dni_apoderado` varchar(255) NOT NULL,
  `nombre_apoderado` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nro_liquidacion` varchar(255) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `nro_cuenta_banco` varchar(255) NOT NULL,
  `importe_voucher` varchar(255) NOT NULL,
  `fecha_voucher` date NOT NULL,
  `id_concepto` int(11) NOT NULL,
  `id_ciclo_concepto` int(11) NOT NULL,
  `id_anio_concepto` int(11) NOT NULL,
  `clasificador` varchar(255) NOT NULL,
  `siaf_devolucion` varchar(255) NOT NULL,
  `id_anio_siaf_devolucion` int(11) NOT NULL,
  `siaf_origen` varchar(255) NOT NULL,
  `id_anio_siaf_origen` int(11) NOT NULL,
  `observacion_giro` varchar(512) NOT NULL,
  `importe_devolucion_unfv` varchar(255) NOT NULL,
  `importe_devolucion_bn` varchar(255) NOT NULL,
  `saldo` varchar(255) NOT NULL,
  `diferencia` varchar(255) NOT NULL,
  `numero_cheque` varchar(255) NOT NULL,
  `fecha_cheque` date NOT NULL,
  `numero_ope` varchar(255) NOT NULL,
  `fecha_ope` date NOT NULL,
  `numero_cci` varchar(255) NOT NULL,
  `fecha_cci` date NOT NULL,
  `numero_cartaorden` varchar(255) NOT NULL,
  `fecha_cartaorden` date NOT NULL,
  `nci` varchar(255) NOT NULL,
  `nce` varchar(255) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `id_condicion` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `id_condicion2` int(11) NOT NULL,
  `nro_envio` varchar(255) NOT NULL,
  `id_anio_envio` int(11) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `id_nrocuenta` int(11) NOT NULL,
  `nt` varchar(255) NOT NULL,
  `id_anio_nt` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_estado_giro` int(11) NOT NULL,
  `id_doc_pagos` int(11) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_detalle_devolucion`
--

INSERT INTO `tb_detalle_devolucion` (`id_detalle_devolucion`, `id_tipo_documento`, `dni`, `nombre_solicitante`, `dni_apoderado`, `nombre_apoderado`, `telefono`, `correo`, `id_empresa`, `nro_liquidacion`, `id_banco`, `nro_cuenta_banco`, `importe_voucher`, `fecha_voucher`, `id_concepto`, `id_ciclo_concepto`, `id_anio_concepto`, `clasificador`, `siaf_devolucion`, `id_anio_siaf_devolucion`, `siaf_origen`, `id_anio_siaf_origen`, `observacion_giro`, `importe_devolucion_unfv`, `importe_devolucion_bn`, `saldo`, `diferencia`, `numero_cheque`, `fecha_cheque`, `numero_ope`, `fecha_ope`, `numero_cci`, `fecha_cci`, `numero_cartaorden`, `fecha_cartaorden`, `nci`, `nce`, `fecha_entrega`, `id_condicion`, `fecha_pago`, `id_condicion2`, `nro_envio`, `id_anio_envio`, `observacion`, `id_nrocuenta`, `nt`, `id_anio_nt`, `id_usuario`, `id_estado_giro`, `id_doc_pagos`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 2, '61347611', 'RIOS ROLIN, LUZ CLARITA', '', '', '969947585', '2019006813@unfv.edu.pe', 1, '2816263641', 2, '110-01-0416304', '15.00', '2024-03-01', 64, 1, 63, '1551413', '1741-101', 63, '1247', 63, '', '15.00', '0.00', '0.00', '0', '', '0000-00-00', '24000775', '2024-05-16', '', '0000-00-00', '', '0000-00-00', '2846', '1741.24.95.2400713  ', '2024-05-16', 2, '0000-00-00', 1, '', 1, '', 2, '34690', 63, 9, 2, 3, 0, '2024-05-15 14:53:17', '2024-05-21 10:47:07'),
(2, 2, '75551813', 'DIAZ FLORES EDUARDO SEGUNDO', '', '', '-', '2018006472@unfv.edu.pe', 1, '4110112462', 2, '110-01-0416304', '39.20', '2024-04-13', 73, 1, 63, '1551413', '1751-102', 63, '1552', 63, '', '39.20', '39.20', '0.00', '0.00', '', '0000-00-00', '24000778', '2024-05-16', '', '0000-00-00', '', '0000-00-00', '2865', '1751.24.95.2400714  ', '2024-05-16', 2, '2024-05-18', 2, '', 1, '', 2, '33802', 63, 9, 2, 3, 0, '2024-05-16 09:51:44', '2024-05-21 10:55:49'),
(3, 2, '75551813', 'DIAZ FLORES EDUARDO SEGUNDO', '', '', '-', '2018006472@unfv.edu.pe', 1, '3410102434', 2, '110-01-0416304', '9.80', '2024-04-06', 73, 1, 63, '1551413', '1751-102', 63, '1552', 63, '', '9.80', '9.80', '0.00', '0.00', '', '0000-00-00', '24000778', '2024-05-16', '', '0000-00-00', '', '0000-00-00', '2865', '110112462-3410102434', '2024-05-16', 2, '2024-05-18', 2, '', 1, '', 2, '33802', 63, 9, 2, 3, 0, '2024-05-16 09:54:12', '2024-05-21 10:59:29'),
(4, 2, '09357683', 'CCALLOCUNTO RAMOS NORMA PATRICIA', '', '', '967952256', 'lluvia098@hotmail.com', 1, '6110254886', 2, '110-01-0416304', '600.00', '2023-10-28', 74, 1, 62, '1551413', '1754-103', 63, '79', 62, '', '600.00', '0.00', '0.00', '0', '', '0000-00-00', '24000781', '2024-05-16', '', '0000-00-00', '', '0000-00-00', '2866', '1754.24.95.2400715  ', '2024-05-16', 2, '0000-00-00', 1, '', 1, '', 2, '21811', 63, 9, 2, 3, 0, '2024-05-16 10:40:07', '2024-05-21 11:11:24'),
(5, 2, '09357683', 'CCALLOCUNTO RAMOS NORMA PATRICIA', '', '', '967952256', 'lluvia098@hotmail.com', 1, '6110245529', 2, '110-01-0416304', '600.00', '2023-10-28', 75, 1, 62, '1551413', '1754-103', 63, '79', 62, '', '600.00', '0.00', '0.00', '0', '', '0000-00-00', '24000781', '2024-05-16', '', '0000-00-00', '', '0000-00-00', '2866', '1754.24.95.2400715  ', '2024-05-16', 2, '0000-00-00', 1, '', 1, '', 2, '21811', 63, 9, 2, 3, 0, '2024-05-16 10:47:22', '2024-05-21 11:12:33'),
(6, 2, '09357683', 'CCALLOCUNTO RAMOS NORMA PATRICIA', '', '', '967952256', 'lluvia098@hotmail.com', 1, '6110234955', 2, '110-01-0416304', '70.00', '2023-10-28', 66, 1, 62, '1551413', '1754-103', 63, '79', 62, '', '70.00', '0.00', '0.00', '0', '', '0000-00-00', '24000781', '2024-05-16', '', '0000-00-00', '', '0000-00-00', '2866', '1754.24.95.2400715  ', '2024-05-16', 2, '0000-00-00', 1, '', 1, '', 2, '21811', 63, 9, 2, 3, 0, '2024-05-16 10:51:46', '2024-05-21 11:10:14'),
(7, 2, '06676664', 'JOSE LUIS MACEDO LLAZA', '', '', '967820503', 'joseluismacedo2@gmail.com', 1, '170626', 3, '191-9398126-0-63', '350.00', '2024-04-17', 70, 1, 63, '1551413', '1767-104', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000782', '2024-05-17', '', '0000-00-00', '', '0000-00-00', '2911', '1767.24.95.2400760 ', '2024-05-17', 2, '0000-00-00', 1, '', 1, '', 2, '35476', 63, 9, 2, 3, 0, '2024-05-17 09:41:35', '2024-05-21 11:32:50'),
(8, 2, '42153933', 'CHAVEZ PALOMINO MARIEL ADRIANA', '', 'PALOMINO CALERO MARYBEL', '984359746', 'marybel8@hotmail.com', 1, '894826', 3, '191-9398126-0-63', '500.00', '2024-04-16', 70, 1, 63, '1551413', '1768-105', 63, '1397', 63, 'DUPLICADO', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '35475', 63, 9, 4, 1, 0, '2024-05-17 10:05:42', '2024-05-21 11:25:46'),
(9, 2, '09981857', 'ESTEBES JIMENEZ DORIS ISABEL', '', '', '999085448', 'disabel_23@hotmail.com', 1, '5310252650', 2, '110-01-0416304', '600.00', '2022-08-23', 65, 1, 61, '1551413', '1775-106', 63, '79', 61, '', '600.00', '0.00', '0.00', '0', '', '0000-00-00', '24000829', '2024-05-20', '', '0000-00-00', '', '0000-00-00', '2980', '1775.24.95.2400824', '2024-05-20', 2, '0000-00-00', 1, '', 1, '', 2, '35779', 63, 7, 2, 3, 0, '2024-05-17 12:43:12', '2024-05-23 09:13:10'),
(10, 2, '09981857', 'ESTEBES JIMENEZ DORIS ISABEL', '', '', '999085448', 'disabel_23@hotmail.com', 1, '5310260025', 2, '110-01-0416304', '30.00', '2022-08-23', 66, 1, 61, '1551413', '1775-106', 63, '79', 61, '', '30.00', '0.00', '0.00', '0', '', '0000-00-00', '24000829', '2024-05-20', '', '0000-00-00', '', '0000-00-00', '2980', '1775.24.95.2400824', '2024-05-20', 2, '0000-00-00', 1, '', 1, '', 2, '35779', 63, 7, 2, 3, 0, '2024-05-17 12:47:02', '2024-05-23 09:14:07'),
(11, 2, '09981857', 'ESTEBES JIMENEZ DORIS ISABEL', '', '', '999085448', 'disabel_23@hotmail.com', 1, '5310130676', 2, '110-01-0416304', '20.00', '2022-08-23', 68, 1, 61, '1551413', '1775-106', 63, '79', 61, '', '20.00', '0.00', '0.00', '0', '', '0000-00-00', '24000829', '2024-05-20', '', '0000-00-00', '', '0000-00-00', '2980', '1775.24.95.2400824', '2024-05-20', 2, '0000-00-00', 1, '', 1, '', 2, '35779', 63, 7, 2, 3, 0, '2024-05-17 12:50:01', '2024-05-23 09:15:12'),
(12, 2, '73604485', 'MUÑOZ CARDENAS FRANK ANDERSON', '', '', '948451737', 'frankcardenas084@gmail.com', 1, '5512332546', 2, '110-01-0416304', '50', '2024-02-29', 69, 1, 63, '1551413', '1780-107', 63, '727', 63, '', '50', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '17700', 63, 10, 3, 1, 1, '2024-05-17 15:36:56', '2024-05-17 16:22:58'),
(13, 2, '40781669', 'GONZALES MUÑOZ JUAN JOSE', '', '', '991078854', 'jjgonzamu@gmail.com', 1, '541262', 3, '191-9398126-0-63', '300.00', '2023-12-06', 70, 1, 62, '1551413', '1780-108', 63, '79', 62, '', '300.00', '0.00', '0.00', '0', '', '0000-00-00', '24000832', '2024-05-21', '', '0000-00-00', '', '0000-00-00', '2981', '1780.24.95.2400839 ', '2024-05-21', 2, '0000-00-00', 1, '', 1, '', 2, '14149', 63, 1, 2, 3, 0, '2024-05-17 16:37:04', '2024-05-24 11:19:03'),
(14, 2, '40396291', 'PACHECO TAIPE NOEMI', '', '', '988780623', 'nomipmimi@gmail.com', 1, '3812080873', 2, '110-01-0418432', '900.00', '2024-01-13', 39, 7, 63, '1551413', '1785-109', 63, '231', 63, '', '900.00', '0.00', '0.00', '0', '', '0000-00-00', '24000833', '2024-05-21', '', '0000-00-00', '', '0000-00-00', '2981', '1785.24.95.2400840  ', '2024-05-21', 2, '0000-00-00', 1, '', 1, '', 2, '35716', 63, 7, 2, 3, 0, '2024-05-20 09:44:23', '2024-05-22 09:32:48'),
(15, 2, '40396291', 'PACHECO TAIPE NOEMI', '', '', '988780623', 'nomipmimi@gmail.com', 1, '3812085238', 2, '110-01-0418432', '20.00', '2024-01-13', 76, 7, 63, '1551413', '1785-109', 63, '231', 63, '', '20.00', '0.00', '0.00', '0', '', '0000-00-00', '24000833', '2024-05-21', '', '0000-00-00', '', '0000-00-00', '2981', '1785.24.95.2400840  ', '2024-05-21', 2, '0000-00-00', 1, '', 1, '', 2, '35716', 63, 7, 2, 3, 0, '2024-05-20 09:48:11', '2024-05-22 09:35:30'),
(16, 2, '74755550', 'MEJIA CORONADO ADRIANA ISABEL', '', '', '936106044', 'mejiacoronadoadriana@gmail.com', 1, '18949', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 63, '1551413', '1806-110', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000842', '2024-05-22', '', '0000-00-00', '', '0000-00-00', '3002', '1806.24.95.2400856 ', '2024-05-22', 2, '0000-00-00', 1, '', 1, '', 2, '36239', 63, 7, 2, 3, 0, '2024-05-21 12:16:21', '2024-05-23 09:19:46'),
(17, 2, '61017252', 'JONATHAN DANIEL APOLINARIO SOLIS', '', 'YESENIA AMELIA SOLIS HERRERA ', '949534030', 'yezeniajo22@hotmail.com', 1, '6054105', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 63, '1551413', '1808-111', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000843', '2024-05-22', '', '0000-00-00', '', '0000-00-00', '3003', '1808.24.95.2400857', '2024-05-22', 2, '0000-00-00', 1, '', 1, '', 2, '36240', 63, 7, 2, 3, 0, '2024-05-21 12:34:28', '2024-05-23 09:22:35'),
(18, 2, '76202397', 'MONTALVO OBREGON MIGUEL', '', '', '985531828', '2019008086@unfv.edu.pe', 1, '3115591242', 2, '110-01-0416304', '160.50', '2024-04-03', 63, 1, 63, '1551413', '1809-112', 63, '1552', 63, '', '160.50', '0.00', '0.00', '0', '', '0000-00-00', '24001098', '2024-06-14', '', '0000-00-00', '', '0000-00-00', '3577', '1809.24.95.2401414', '2024-06-14', 2, '0000-00-00', 1, '', 1, '', 2, '32199', 63, 7, 2, 3, 0, '2024-05-21 13:02:42', '2024-06-20 10:08:45'),
(19, 2, '10207501', 'PERCY PABLO AYRE CAMPOSANO', '', '', '997202955', 'kyotoshi-per@hotmail.com', 1, '573981', 3, '191-9398126-0-63', '500.00', '2024-04-01', 70, 1, 63, '1551413', '1810-113', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000844', '2024-05-22', '', '0000-00-00', '', '0000-00-00', '3004', '1810.24.95.2400858 ', '2024-05-22', 2, '0000-00-00', 1, '', 1, '', 2, '35103', 63, 7, 2, 3, 0, '2024-05-21 14:51:55', '2024-05-23 09:27:02'),
(20, 2, '10095845', 'RAMOS SANES LUIS ALBERTO', '', '', '966466487', 'lramos_lima @hotmail.sunarp.gob.pe', 1, '930799', 3, '110-01-0414438', '551.50', '2023-09-30', 32, 1, 62, '1551413', '1834-114', 63, '79', 62, '', '551.50', '0.00', '0.00', '0', '', '0000-00-00', '24000849', '2024-05-23', '', '0000-00-00', '', '0000-00-00', '3029', '1834.24.95.2400873', '2024-05-23', 2, '0000-00-00', 1, '', 1, '', 2, '13116', 63, 7, 2, 3, 0, '2024-05-22 10:50:15', '2024-05-24 09:45:39'),
(21, 2, '61347611', 'RIOS ROLIN LUZ CLARITA', '', '', '969947585', '2019006813@unfv.edu.pe', 1, '277325', 3, '191-04530292-0-51', '75.00', '2021-06-01', 33, 1, 1, '1551413', '1842-115', 63, '79', 60, '', '75.00', '0.00', '0.00', '0', '', '0000-00-00', '24000850', '2024-05-23', '', '0000-00-00', '', '0000-00-00', '3030', '1842.24.95.2400874 ', '2024-05-23', 2, '0000-00-00', 1, '', 1, '', 2, '34693', 63, 7, 2, 3, 0, '2024-05-22 12:17:37', '2024-05-24 09:55:41'),
(22, 2, '08155835', 'SARMIENTO ANDRADE JOSE LUIS', '', '', '995805669', 'jsarmiento171@gmail.com', 1, '3512261626', 2, '110-01-0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1846-116', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000858', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3057', '1846.24.95.2400901', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '33928', 63, 7, 2, 3, 0, '2024-05-22 12:43:31', '2024-05-27 09:59:29'),
(23, 2, '46838093', 'TAFUR MAUTINO YOSELIN NORMA', '', '', '943500789', 'yosi.tm04@gmail.com', 1, '3610241146', 2, '110-01-0451398', '119.00', '2024-04-08', 33, 1, 1, '1551413', '1847-117', 63, '1556', 63, '', '119.00', '0.00', '0.00', '0', '', '0000-00-00', '24000851', '2024-05-23', '', '0000-00-00', '', '0000-00-00', '3031', '1847.24.95.2400875', '2024-05-23', 2, '0000-00-00', 1, '', 1, '', 2, '34836', 63, 7, 2, 3, 0, '2024-05-22 14:28:43', '2024-05-24 09:58:46'),
(24, 2, '46838093', 'TAFUR MAUTINO YOSELIN NORMA', '', '', '943500789', 'yosi.tm04@gmail.com', 1, '3610320455', 2, '110-01-0451398', '72.80', '2024-04-08', 33, 1, 1, '1551413', '1847-117', 63, '1556', 63, '', '72.80', '0.00', '0.00', '0', '', '0000-00-00', '24000851', '2024-05-23', '', '0000-00-00', '', '0000-00-00', '3031', '1847.24.95.2400875', '2024-05-23', 2, '0000-00-00', 1, '', 1, '', 2, '34836', 63, 7, 2, 3, 0, '2024-05-22 14:33:27', '2024-05-24 10:07:43'),
(25, 2, '20072754', 'PONCE PAUCARCHUCO FABIANA', '', 'PAUCARCHUCO TOVAR JENNY LUZ', '961048299', 'fabianaponce2@gmail.com', 1, '258400235', 6, '257443', '930.00', '2024-04-30', 39, 1, 1, '1551413', '1848-118', 63, '1583', 63, '', '930.00', '0.00', '0.00', '0', '', '0000-00-00', '24000852', '2024-05-23', '', '0000-00-00', '', '0000-00-00', '3032', '1848.24.95.2400876', '2024-05-23', 2, '0000-00-00', 1, '', 1, '', 2, '36600', 63, 7, 2, 3, 0, '2024-05-22 14:51:35', '2024-05-24 10:11:24'),
(26, 2, '60984744', 'AURIS AGUILAR XIOMARA FLORISA', '23523898', 'AURIS PARIONA JAIME ANTONIO', '997802172', '-', 1, '3613431412', 2, '110-01-0444317', '500.00', '2024-04-08', 70, 1, 1, '1551413', '1864-119', 63, '1396', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000859', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3058', '1864.24.95.2400902 ', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '31999', 63, 10, 2, 3, 0, '2024-05-23 15:21:46', '2024-06-12 16:24:37'),
(27, 2, '06450991', 'BUSTAMANTE LLOSA CESAR ENRIQUE', '', '', '977434555', 'cabllpe@gmail.com', 1, '392600052', 6, '878022', '600.00', '2020-01-04', 17, 1, 1, '1551413', '1874-120', 63, '79', 59, '', '600.00', '0.00', '0.00', '0', '', '0000-00-00', '24000860', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3059', '1874.24.95.2400903 ', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '86284', 63, 7, 2, 3, 0, '2024-05-23 15:49:55', '2024-05-27 10:19:45'),
(28, 2, '06450991', 'BUSTAMANTE LLOSA CESAR ENRIQUE', '', '', '977434555', 'cebllpe@gmail.com', 1, '385482', 6, '878022', '300.00', '2020-01-03', 17, 1, 1, '1551413', '1874-120', 63, '79', 59, '', '300.00', '0.00', '0.00', '0', '', '0000-00-00', '24000860', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3059', '1874.24.95.2400903 ', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '86284', 63, 7, 2, 3, 0, '2024-05-23 15:53:41', '2024-05-27 10:20:40'),
(29, 2, '06450991', 'BUSTAMANTE LLOSA CESAR ENRIQUE', '', '', '977434555', 'cebllpe@gmail.com', 1, '311200025', 6, '878022', '100.00', '2020-01-15', 17, 1, 1, '1551413', '1874-120', 63, '79', 59, '', '100.00', '0.00', '0.00', '0', '', '0000-00-00', '24000860', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3059', '1874.24.95.2400903  ', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '86284', 63, 7, 2, 3, 0, '2024-05-23 15:56:18', '2024-05-27 10:21:47'),
(30, 2, '72024431', 'GALINDO PEREZ GLEISY YARLITH', '', 'GALINDO PEREZ YANIRA LISETH', '982519859', 'galindoperezyanira@gmail.com', 1, '870950', 3, '191-9398126-0-63', '350.00', '2024-04-19', 70, 1, 1, '1551413', '1875-121', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000862', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3061', '1875.24.95.2400904  ', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '31984', 63, 7, 2, 3, 0, '2024-05-23 16:09:44', '2024-05-27 10:32:33'),
(31, 2, '73829017', 'MENDIZABAL ESPEJO JJENIFFER XIOMARA', '', '', '903552310', 'jjeniffermendizabal@gmail.com', 1, '108847', 3, '191-9398126-0-63', '500.00', '2024-04-17', 70, 1, 1, '1551413', '1876-122', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000861', '2024-05-24', '', '0000-00-00', '', '0000-00-00', '3060', '1876.24.95.2400905 ', '2024-05-24', 2, '0000-00-00', 1, '', 1, '', 2, '31997', 63, 7, 2, 3, 0, '2024-05-23 16:22:54', '2024-05-27 10:27:52'),
(32, 2, '71162769', 'MARTINEZ TORRES AXEL ADRIANO', '', '', '904149451', 'axel1715martinez@gmail.com', 1, '450425', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1882-123', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000872', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3109', '1882.24.95.2400968', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '31586', 63, 7, 2, 3, 0, '2024-05-24 08:58:41', '2024-05-30 15:43:01'),
(33, 2, '41959070', 'GUEVARA GUITIERREZ GUSTAVO LEONARDO', '', 'GUEVARA MELLADO JAIME', '988350155', 'guevaragus69@gmail.com', 1, '1549913', 3, '191-9398126-0-63', '350.00', '2024-04-14', 70, 1, 1, '1551413', '1884-124', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000873', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3110', '1884.24.95.2400969 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '31520', 63, 7, 2, 3, 0, '2024-05-24 09:09:18', '2024-05-30 15:46:42'),
(34, 2, '43884885', 'DELGADILLO ZAVALA JANET DONATILA', '', '', '933364137', 'macor1310@gmail.com', 1, '855319', 3, '191-9398126-0-63', '500.00', '2024-04-17', 70, 1, 1, '1551413', '1885-125', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000874', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3111', '1885.24.95.2400970', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '31443', 63, 7, 2, 3, 0, '2024-05-24 09:21:38', '2024-05-30 15:49:56'),
(35, 2, '45952430', 'CASTAÑEDA VIERA JEREMY JOEL', '', 'VIERA LEVANO CARMELA ESTEFANIA', '942137534', 'vieralevano@gmail.com', 1, '3071381', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1886-126', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000875', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3112', '1886.24.95.2400971  ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32125', 63, 7, 2, 3, 0, '2024-05-24 09:35:53', '2024-05-30 15:54:28'),
(36, 2, '60760716', 'AGUILAR JIMENEZ DIEGO NICOLAS', '', '', '982115717', 'diegonicolasaguilerjimenez@gmail.com', 1, '4816311767', 2, '110-01-0444317', '500.00', '2024-03-21', 70, 1, 1, '1551413', '1887-127', 63, '1396', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000876', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3113', '1887.24.95.2400972', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32099', 63, 7, 2, 3, 0, '2024-05-24 09:47:01', '2024-05-30 15:57:08'),
(37, 2, '60429314', 'FALCON CRUCES MARIA FERNANDA', '', '', '912221715', 'chabellifalcon@gmail.com', 1, '1273661', 3, '191-9398126-0-63', '350.00', '2024-04-17', 70, 1, 1, '1551413', '1889-128', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000877', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3114', '1889.24.95.2400973  ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32079', 63, 7, 2, 3, 0, '2024-05-24 10:07:13', '2024-05-30 16:01:03'),
(38, 2, '74847315', 'RENGIFO PINEDO MARI FERNANDA', '', '', '914698722', 'maferpinedo0112@gmail.com', 1, '655086', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1890-129', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000878', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3115', '1890.24.95.2400974 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32074', 63, 7, 2, 3, 0, '2024-05-24 10:17:23', '2024-05-30 16:02:52'),
(39, 2, '75197460', 'YANCCE TUDELA DRICKSHEEL ASHLEY', '', '', '965953516', 'dricagosto90@gmail.com', 1, '969496', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1892-130', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000879', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3116', '1892.24.95.2400975 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32231', 63, 7, 2, 3, 0, '2024-05-24 11:27:03', '2024-05-30 16:07:41'),
(40, 2, '70439086', 'CAMACHO ALEGRE VICTORIA MILAGRO', '', '', '998980545', 'milimas481@hotmail.com', 1, '769776', 3, '191-9398126-0-63', '350.00', '2024-04-13', 70, 1, 1, '1551413', '1893-131', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000880', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3117', '1893.24.95.2400976', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32324', 63, 7, 2, 3, 0, '2024-05-24 11:39:46', '2024-05-30 16:10:35'),
(41, 2, '70439086', 'CAMACHO ALEGRE VICTORIA MILAGRO', '', '', '998980545', 'milimas481@hotmail.com', 1, '247339', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1893-131', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000880', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3117', '1893.24.95.2400976', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32324', 63, 7, 2, 3, 0, '2024-05-24 11:42:54', '2024-05-30 16:11:20'),
(42, 2, '71784610', 'COLQUE UNOCC ANGELI MARIA', '', '', '923900327', 'amcu0303@gmail.com', 1, '643702', 3, '191-9398126-0-63', '350.00', '2024-04-17', 70, 1, 1, '1551413', '1895-132', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000881', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3118', '1895.24.95.2400977 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37369', 63, 7, 2, 3, 0, '2024-05-24 12:04:25', '2024-05-30 16:14:05'),
(43, 2, '42146775', 'VALERIO YANKAN DANIELA LINDSAY', '', 'YANKAN ALANYA GINA MERCEDES', '981375000', 'gmqa1214@gmail.com', 1, '3148568', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1896-133', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000882', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3119', '1896.24.95.2400978', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37370', 63, 7, 2, 3, 0, '2024-05-24 12:16:52', '2024-05-30 16:16:09'),
(44, 2, '71562002', 'LOPEZ BURGOS GARY FABIAN', '', '', '926720251', 'gleonel0906@gmail.com', 1, '463283', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1897-134', 63, '1397', 63, 'DUPLICADO POR TENER DISTINTO NT. 29751 QUE SE ATENDIÓ EN ABRIL', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '37371', 63, 10, 4, 1, 0, '2024-05-24 12:27:38', '2024-05-27 16:04:11'),
(45, 2, '61968098', 'CORONADO AGUILAR FABRIZZIO JESUS', '', 'ORIHUELA MENDOZA JEAN POOL', '999860050', 'jeonorihuela93@gmail.com', 1, '38190', 3, '191-9398126-0-63', '350.00', '2024-04-15', 70, 1, 1, '1551413', '1898-135', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000883', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3120', '1898.24.95.2400979 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37372', 63, 7, 2, 3, 0, '2024-05-24 12:45:11', '2024-05-30 16:18:12'),
(46, 2, '40064323', 'ZAPATA CASTAÑEDA CLAUDIA TERESA', '', 'ZAPATA RIVAS JOHAN ROGERS', '941461370', 'johanrz_r@hotmail.com', 1, '705366', 3, '191-9398126-0-63', '500.00', '2024-04-19', 70, 1, 1, '1551413', '1906-136', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000884', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3121', '1906.24.95.2400980', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37373', 63, 7, 2, 3, 0, '2024-05-27 10:12:25', '2024-05-30 16:23:49'),
(47, 2, '60871265', 'SACARAMENTO GAMARRA MICHAEL JHOEL', '44675881', 'GAMARRA PAEZ ERMELINDA ROSA', '970362940', 'rosagamarrapaez2@gmail.com', 1, '610913', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1907-137', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000885', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3122', '1907.24.95.2400981', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37374', 63, 7, 2, 3, 0, '2024-05-27 10:26:47', '2024-05-30 16:25:55'),
(48, 2, '60073308', 'TORRES RICCI LEYLA VIVIAN', '40981834', 'RICCI GARCIA MARIANA', '991531643', 'leyla.16.ltr@gmail.com', 1, '689387', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1908-138', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001066', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3532', '1908.24.95.2401415', '2024-06-13', 2, '2024-06-15', 2, '', 1, '-', 2, '32336', 63, 7, 2, 3, 0, '2024-05-27 10:54:31', '2024-06-20 10:11:35'),
(49, 2, '20039842', 'MARCELO HUAMAN ALEXANDER PIERO', '', '', '967654725', 'jwalde11@hotmail.com', 1, '913222', 3, '191-9398126-0-63', '350.00', '2024-04-02', 70, 1, 1, '1551413', '1909-139', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000886', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3123', '1909.24.95.2400982 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37740', 63, 7, 2, 3, 0, '2024-05-27 11:15:34', '2024-05-30 16:28:17'),
(50, 2, '42188777', 'SAMAME RIVERA CRISTHIAN EDUARDO', '', '', '915372570', 'cristhiansamame.r@gmail.com', 1, '67273', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1911-140', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000887', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3124', '1911.24.95.2400983', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37742', 63, 7, 2, 3, 0, '2024-05-27 11:28:37', '2024-05-30 16:30:04'),
(51, 2, '60025383', 'LAGUNA JARAMILLO CLAUDETH GABY', '', '', '910439151', 'laguanjaramillo@gmail.com', 1, '776606', 3, '191-9398126-0-63', '350', '2024-04-08', 70, 1, 1, '1551413', '1912-141', 63, '1397', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '37743', 63, 10, 3, 1, 0, '2024-05-27 11:48:34', '0000-00-00 00:00:00'),
(52, 2, '47481610', 'MALAVER CACHAY ANGIE JULIETTE', '', '', '982040081', 'angiemalaver.rc@gmail.com', 1, '2460152', 3, '191-9398126-0-63', '350.00', '2024-04-15', 70, 1, 1, '1551413', '1913-142', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000888', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3125', '1913.24.95.2400984', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37744', 63, 7, 2, 3, 0, '2024-05-27 12:04:45', '2024-05-30 16:32:11'),
(53, 2, '74861896', 'MENDOZA CERDA JOHAN JUSTIN', '', '', '969269626', 'johan.mndz05@gmail.com', 1, '3437453', 3, '191-9398126-0-63', '350.00', '2024-04-08', 70, 1, 1, '1551413', '1914-143', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000889', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3126', '1914.24.95.2400985', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37746', 63, 7, 2, 3, 0, '2024-05-27 12:17:35', '2024-05-30 16:33:58'),
(54, 2, '60797023', 'GOMEZ RAMIREZ LESLY JIMENA', '43760831', 'GOMEZ HUAMAN WILLIAM', '940350664', 'williamgo1201@gmail.com', 1, '4617343864', 2, '110-01-0444317', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1915-144', 63, '1396', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000894', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3127', '1915.24.95.2400986 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32000', 63, 7, 2, 3, 0, '2024-05-27 14:36:30', '2024-05-30 16:35:52'),
(55, 2, '75936979', 'GUTARRA INGA ALMENDRA KAREN', '', '', '933175505', 'almendra_aeley2@hotmail.com', 1, '387898', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1916-145', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000891', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3128', '1916.24.95.2400987', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32037', 63, 7, 2, 3, 0, '2024-05-27 14:46:12', '2024-05-30 16:37:59'),
(56, 2, '75534083', 'SANTA CRUZ MORALES HERNAN ANTONIO', '', '', '985677927', 'hernanantoniosantacruz@gmail.com', 1, '704651', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1917-146', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000892', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3129', '1917.24.95.2400988', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '36967', 63, 7, 2, 3, 0, '2024-05-27 14:54:41', '2024-05-30 16:39:50'),
(57, 2, '77473698', 'VERDE TOLENTINO FHARITH LENIN', '', '', '948533217', 'alucastcas@hotmail.com', 1, '1667750', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1918-147', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000900', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3130', '1918.24.95.2400989 ', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '36968', 63, 7, 2, 3, 0, '2024-05-27 15:03:02', '2024-05-30 16:42:06'),
(58, 2, '76568582', 'RAMOS DEZA DAVID AQUILES', '', '', '972185750', 'jesusgotex@gmail.com', 1, '917532', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1921-148', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000895', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3131', '1921.24.95.2400990', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '36969', 63, 7, 2, 3, 0, '2024-05-27 15:10:51', '2024-05-31 10:14:13'),
(59, 2, '70905934', 'ATAUQUI RIOS VICTORIA ALEXANDRA', '', '', '994671840', 'alexandraatauqui@gmail.com', 1, '13408', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1922-149', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000896', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3132', '1922.24.95.2400991', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '36970', 63, 7, 2, 3, 0, '2024-05-27 15:20:20', '2024-05-31 10:16:18'),
(60, 2, '70629881', 'ARROYO CANCHARI YUNMI JOSELIN', '', '', '929325733', '-', 1, '518780', 3, '191-9398126-0-63', '350.00', '2024-04-15', 70, 1, 1, '1551413', '1925-150', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000897', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3133', '1925.24.95.2400992', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '32063', 63, 7, 2, 3, 0, '2024-05-27 15:30:17', '2024-05-31 10:23:26'),
(61, 2, '72739780', 'ESPINOZA CONCHA LUIS FREDDY', '', '', '957207310', '2015234554@unfv.edu.pe', 1, '6315185972', 2, '110-01-0416304', '1400.00', '2023-10-30', 17, 1, 1, '1551413', '1928-151', 63, '79', 62, '', '1400.00', '0.00', '0.00', '0', '', '0000-00-00', '24000898', '2024-05-28', '', '0000-00-00', '', '0000-00-00', '3134', '1928.24.95.2400993', '2024-05-28', 2, '0000-00-00', 1, '', 1, '', 2, '37597', 63, 7, 2, 3, 0, '2024-05-27 16:22:36', '2024-05-31 10:25:26'),
(62, 2, '62017349', 'GARCIA CALDERON VILLEGAS CLAUDIA YUDTH', '44631530', 'VILLEGAS MARIN MARTHA ISABEL', '999913011', 'ventaropaclau@gmail.com', 1, '963377', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1936-152', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000918', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3147', '1936.24.95.2401006', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '37745', 63, 7, 2, 3, 0, '2024-05-28 09:44:02', '2024-06-03 11:19:18'),
(63, 2, '42671336', 'CORDERO ROMERO MICHAEL ANTONIO', '', '', '981370949', 'michael-acr@hotmail.com', 1, '2658036', 3, '191-9398126-0-63', '1400.00', '2024-04-18', 70, 1, 1, '1551413', '1938-153', 63, '1397', 63, '', '1400.00', '0.00', '0.00', '0', '', '0000-00-00', '24000921', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3148', '1938.24.95.2401007', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38227', 63, 7, 2, 3, 0, '2024-05-28 12:03:54', '2024-06-03 11:46:49'),
(64, 2, '60441361', 'MARTINEZ VARGAS LEONEL ENRIQUE', '49092125', 'VARGAS MONTALVO MERY AMANDA', '991324103', 'meryamv78@gmail.com', 1, '30673', 3, '191-9398126-0-63', '350.00', '2024-04-17', 70, 1, 1, '1551413', '1939-154', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000920', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3149', '1939.24.95.2401008', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38231', 63, 7, 2, 3, 0, '2024-05-28 12:16:08', '2024-06-03 11:49:52'),
(65, 2, '75946304', 'CASTELLARES BOZA YOLER YEFERSSON', '', '', '912794132', 'yolercastellares@gmail.com', 1, '853575', 3, '191-9398126-0-63', '350.00', '2024-04-16', 70, 1, 1, '1551413', '1940-155', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000922', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3150', '1940.24.95.2401009', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38230', 63, 7, 2, 3, 0, '2024-05-28 12:26:26', '2024-06-03 11:54:45'),
(66, 2, '71426080', 'AGUILAR BARRIENTOS TAMARA NINOSHKA', '', '', '924435425', '2019012474@unfv.edu.pe', 1, '3409303561', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1943-156', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000905', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3154', '1943.24.95.2401010', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 14:41:05', '2024-06-03 12:06:59'),
(67, 2, '77564706', 'BENITES ACUÑA BARBARA BEATRIZ', '', '', '959167391', '2016003537@unfv.edu.pe', 1, '3610405309', 2, '110-01-0416304', '35.20', '2024-02-10', 64, 1, 1, '1551413', '1944-157', 63, '727', 63, '', '35.20', '0.00', '0.00', '0', '', '0000-00-00', '24000906', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3155', '1944.24.95.2401011', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 14:48:59', '2024-06-03 12:17:40'),
(68, 2, '75122092', 'CHECCORI ROJAS SUSANA ALINA', '', '', '957655591', '2019234423@unfv.edu.pe', 1, '3409311925', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1945-158', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000907', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3156', '1945.24.95.2401012', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 14:56:26', '2024-06-03 12:19:48'),
(69, 2, '75350902', 'COLLAZOS CONTRERAS ANDREA SABRINA', '', '', '924168701', 'collazossabrina00@gmail.com', 1, '3409232923', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1946-159', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000908', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3157', '1946.24.95.2401013', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:03:31', '2024-06-03 13:05:11'),
(70, 2, '73033915', 'GRANDEZ CONDE MAYTE', '', '', '932846578', 'maytegrandezcondeyj@gmail.com', 1, '3409070336', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1947-160', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000909', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3158', '1947.24.95.2401014', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:11:50', '2024-06-03 13:07:35'),
(71, 2, '75357118', 'LOPEZ QUISPE LINDA ESMERALDA', '', '', '934661902', 'linda30lopez', 1, '3409065543', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1948-161', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000910', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3159', '1948.24.95.2401015', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:19:03', '2024-06-03 13:12:26'),
(72, 2, '71717022', 'MATOS TORRES ROCIO MILAGROS', '', '', '986629120', '2019234432@unfv.edu.pe', 1, '3409285822', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1951-162', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000928', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3160', '1951.24.95.2401016', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:26:25', '2024-06-03 13:14:24'),
(73, 2, '72903115', 'POMA ALVAREZ BRIGUITTE LAWRENCE', '', '', '946595014', 'briguitte.poma.alvarez@gmail.com', 1, '3409415177', 2, '110-01-0416304', '39.20', '2024-03-07', 73, 1, 1, '1551413', '1953-163', 63, '1247', 63, '', '39.20', '0.00', '0.00', '0', '', '0000-00-00', '24000912', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3161', '1953.24.95.2401017', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:39:25', '2024-06-03 13:16:25'),
(74, 2, '72903115', 'POMA ALVAREZ BRIGUITTE LAWRENCE', '', '', '946595014', 'briguitte.poma.alvarez@gmail.com', 1, '3409181745', 2, '110-01-0416304', '9.80', '2024-03-07', 73, 1, 1, '1551413', '1953-163', 63, '1247', 63, '', '9.80', '0.00', '0.00', '0', '', '0000-00-00', '24000912', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3161', '1953.24.95.2401017', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:43:53', '2024-06-03 13:19:15'),
(75, 2, '74826372', 'RICARDI ORE DAIANNA NICOLE', '', '', '969187096', '9019012411@unfv.edu.pe', 1, '3409303107', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1955-164', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000913', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3162', '1955.24.95.2401018', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 15:53:16', '2024-06-03 13:21:21'),
(76, 2, '75327428', 'RIOS TARAZONA JANETT', '', '', '980856093', 'janettriostarazona20@gmail.com', 1, '3409223614', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1956-165', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000914', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3163', '1956.24.95.2401019', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 16:00:24', '2024-06-03 13:23:09'),
(77, 2, '74954390', 'ROMANI GONZALES YESENIA KAREN', '', '', '9649271228', '2019012483@unfv.edu.pe', 1, '3410001242', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1957-166', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000915', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3164', '1957.24.95.2401020', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 16:07:54', '2024-06-03 13:25:02'),
(78, 2, '75506768', 'SALCEDO QUISPE FRANCESCA CARMEN NICOL', '', '', '992485930', 'francescasalcedoquispe@gmail.com', 1, '3409103061', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1960-167', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000916', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3165', '1960.24.95.2401021', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 16:14:52', '2024-06-03 13:27:04'),
(79, 2, '75960794', 'VIDAL TRELLES CLAUDIA', '', '', '990846378', '2019012402@unfv.edu.pe', 1, '3409224221', 2, '110-01-0416304', '49.00', '2024-03-07', 73, 1, 1, '1551413', '1962-168', 63, '1247', 63, '', '49.00', '0.00', '0.00', '0', '', '0000-00-00', '24000917', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3166', '1962.24.95.2401022', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '18754', 63, 7, 2, 3, 0, '2024-05-28 16:21:12', '2024-06-03 13:29:34'),
(80, 2, '70526840', 'OLIVEROS GARRIDO TEODOMIRO GIORDY', '', '', '902966629', 'yordioliverosgarrido@gmail.com', 1, '3710202449', 2, '110-01-0444317', '350', '2024-04-09', 70, 1, 1, '1551413', '1967-169', 63, '1396', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '38064', 63, 10, 3, 1, 0, '2024-05-29 09:04:54', '0000-00-00 00:00:00'),
(81, 2, '42634160', 'ROJAS CASAMAYOR DAVID SALVADOR', '', '', '986285310', 'nero986285310@gmail.com', 1, '585740', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1969-170', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000924', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3151', '1969.24.95.2401023', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38063', 63, 7, 2, 3, 0, '2024-05-29 09:25:51', '2024-06-03 13:36:56'),
(82, 2, '60942514', 'CARO CASTILLO ESTRELLA ANTUANETT ', '41977635', 'CASTILLO NEGRETE LUIS LISANDRO', '989874278', 'lcastillonegrete@gmail.com', 1, '355787', 3, '191-9398126-0-63', '350.00', '2024-04-13', 70, 1, 1, '1551413', '1971-171', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '36971', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3172', '1971.24.95.2401024', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '36971', 63, 7, 2, 3, 0, '2024-05-29 09:50:48', '2024-06-03 16:05:19'),
(83, 2, '71014553', 'LEON GONZALES TANIA FLOR', '', '', '923 395 772', '2017059494@unfv.edu.pe', 1, '3110120480', 2, '110-01-0451398', '72.80', '2024-04-03', 33, 1, 1, '1551413', '1972-172', 63, '1556', 63, '', '72.80', '0.00', '0.00', '0', '', '0000-00-00', '24000925', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3152', '1972.24.95.2401025', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '37969', 63, 7, 2, 3, 0, '2024-05-29 10:02:44', '2024-06-03 13:40:21'),
(84, 2, '76868841', 'ROJAS AURIS GIANCARLO ABRAHAN', '', '', '955480297', 'giancarlo_rojas_auris80@gmail.com', 1, '473375', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '1973-173', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000926', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3153', '1973.24.95.2401026', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '32911', 63, 7, 2, 3, 0, '2024-05-29 10:11:59', '2024-06-03 13:43:06'),
(85, 2, '32968321', 'ROMAN ARANDA CONCEPCION MARIA', '', '', '940410603', 'marroman.5420@gmail.com', 1, '110499', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1975-174', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000932', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3173', '1975.24.95.2401027', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '32536', 63, 7, 2, 3, 0, '2024-05-29 10:52:37', '2024-06-03 13:46:01'),
(86, 2, '70951715', 'SEGURA PEREYRA MARICIELO PAOLA ', '09544932', 'PEREYRA ARANDA NERI LUZ', '962768820', 'sagasape59@gmail.com', 1, '696175', 3, '191-9398126-0-63', '500.00', '2024-03-25', 70, 1, 1, '1551413', '1976-175', 63, '1253', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000934', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3174', '1976.24.95.2401028', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '32489', 63, 7, 2, 3, 0, '2024-05-29 11:04:55', '2024-06-03 13:48:20'),
(87, 2, '74962210', 'MARCOS GARCIA YADHIRA MELISSA', '', '', '906340615', 'yadimel2005@gmail.com', 1, '367860', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1978-176', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000935', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3175', '1978.24.95.2401029', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '32658', 63, 7, 2, 3, 0, '2024-05-29 11:29:18', '2024-06-03 13:50:28'),
(88, 2, '60962481', 'PORTAL MENDOZA HUMBERTO JESUS', '10118923', 'MENDOZA LACMA JENNY DINA', '943492551', 'jmendozala@unfv.edu.pe', 1, '4616112776', 2, '110-01-0444317', '500.00', '2024-04-18', 70, 1, 1, '1551413', '1980-177', 63, '1396', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001014', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3176', '1980.24.95.2401298', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '32663', 63, 7, 2, 3, 0, '2024-05-29 11:39:49', '2024-06-13 11:36:31'),
(89, 2, '06095053', 'VACCARO PINEDO MARIA YSABEL', '', '', '995751551', 'vaccaro_85@hotmail.com', 1, '6501950', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1984-178', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000949', '2024-05-31', '', '0000-00-00', '', '0000-00-00', '3177', '1984.24.95.2401030', '2024-05-31', 2, '0000-00-00', 1, '', 1, '', 2, '37351', 63, 7, 2, 3, 0, '2024-05-29 15:05:15', '2024-06-03 13:56:58'),
(90, 2, '72539907', 'ALIAGA ROBLEDANO ALEXANDRA ELENA DEL CARMEN', '', '', '960553545', '2023038949@unfv.edu.pe', 1, '3515150805', 2, '110-01-0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1985-179', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000929', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3178', '1985.24.95.2401031', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 15:25:59', '2024-06-03 13:59:17'),
(91, 2, '70173723', 'CALDERON TENORIO LUIS CLIBER', '', '', '966665623', 'luisclibar@gmail.com', 1, '3609304636', 2, '110-01-0414438', '640.00', '2024-02-10', 32, 1, 1, '1551413', '1987-180', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000931', '2024-05-31', '', '0000-00-00', '', '0000-00-00', '3178', '1987.24.95.2401032', '2024-05-31', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 15:54:45', '2024-06-03 14:01:03'),
(92, 2, '45742004', 'CRUZ GARCIA ANNJURY JASMYN', '', '', '972031254', 'annjurycruz27@gmail.com', 1, '6713279', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1988-181', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000937', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3180', '1988.24.95.2401033', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:05:17', '2024-06-03 15:12:48'),
(93, 2, '71888301', 'DE LA TORRE VELASQUEZ THAIS', '', '', '923330670', 'toedelatorre@gmail.com', 1, '3510142551', 2, '110-01-0414438', '640.00', '2024-02-10', 32, 1, 1, '1551413', '1989-182', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000938', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3181', '1989.24.95.2401034', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:15:25', '2024-06-03 15:14:38'),
(94, 2, '46771492', 'DIAZ DIAZ MILAGROS PAMELA', '', '', '940069578', 'myly_dz_015@hotmail.com', 1, '4715451373', 2, '110-01-0414438', '640.00', '2024-03-20', 32, 1, 1, '1551413', '1990-183', 63, '1254', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000939', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3182', '1990.24.95.2401035', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:25:10', '2024-06-03 15:16:46'),
(95, 2, '10881529', 'LLANOS CHILCON MARIA DEL CARMEN', '', '', '924056554', 'pmorly92@hotmail.com', 1, '991151', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1991-184', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000941', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3183', '1991.24.95.2401036', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:34:42', '2024-06-03 15:18:31'),
(96, 2, '09895837', 'MALCA VICENTE JESSICA DORA', '', '', '992702976', 'psjessica@gmail.com', 1, '6699251', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1993-185', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000942', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3184', '1993.24.95.2401037', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:41:18', '2024-06-03 15:23:23'),
(97, 2, '75234605', 'RAFAILE CAZANA BEEL SHEWHART', '', '', '982133967', '2023039108@unfv.edu.pe', 1, '3515144899', 2, '110-01-0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1994-186', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000943', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3185', '1994.24.95.2401038', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:48:41', '2024-06-03 15:25:34'),
(98, 2, '74955359', 'RIVERA PIÑAS MARIO ERNESTO ', '', '', '986144260', 'mriverapimas@gmail.com', 1, '8109155', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1995-187', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000944', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3186', '1995.24.95.2401039', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 16:55:09', '2024-06-03 15:27:37'),
(99, 2, '74050212', 'VALENCIA REYES KEYKO FLORA', '', '', '923267119', 'valenciareyeskeyko@gmail.com', 1, '8149945', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1996-188', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000945', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3187', '1996.24.95.2401040', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-29 17:02:04', '2024-06-03 15:29:36'),
(100, 2, '41795022', 'YANCE CASTAÑEDA ALEX ALBERTO', '', '', '943787539', 'ayance80@hotmail.com', 1, '4110054245', 2, '110-01-0414438', '640.00', '2024-02-15', 32, 1, 1, '1551413', '1997-189', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000946', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3188', '1997.24.95.2401041', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-30 08:49:30', '2024-06-03 15:41:25'),
(101, 2, '75399707', 'ZAMORA TIRADO BELEN SANDRA', '', '', '917726423', 'belenztia@gmail.com', 1, '3610172072', 2, '110-01-0414438', '640.00', '2024-02-10', 32, 1, 1, '1551413', '1998-190', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000947', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3189', '1998.24.95.2401042', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-30 09:01:15', '2024-06-03 15:42:58'),
(102, 2, '47026942', 'ZAVALETA AJALCRINA PAOLA KYMBER', '', '', '954785553', 'pkzavaleta91@gmail.com', 1, '6874140', 3, '191-9398127-0-73', '640.00', '2024-02-09', 32, 1, 1, '1551413', '1999-191', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000948', '2024-05-30', '', '0000-00-00', '', '0000-00-00', '3190', '1999.24.95.2401043', '2024-05-30', 2, '0000-00-00', 1, '', 1, '', 2, '38346', 63, 7, 2, 3, 0, '2024-05-30 09:10:45', '2024-06-03 15:45:19');
INSERT INTO `tb_detalle_devolucion` (`id_detalle_devolucion`, `id_tipo_documento`, `dni`, `nombre_solicitante`, `dni_apoderado`, `nombre_apoderado`, `telefono`, `correo`, `id_empresa`, `nro_liquidacion`, `id_banco`, `nro_cuenta_banco`, `importe_voucher`, `fecha_voucher`, `id_concepto`, `id_ciclo_concepto`, `id_anio_concepto`, `clasificador`, `siaf_devolucion`, `id_anio_siaf_devolucion`, `siaf_origen`, `id_anio_siaf_origen`, `observacion_giro`, `importe_devolucion_unfv`, `importe_devolucion_bn`, `saldo`, `diferencia`, `numero_cheque`, `fecha_cheque`, `numero_ope`, `fecha_ope`, `numero_cci`, `fecha_cci`, `numero_cartaorden`, `fecha_cartaorden`, `nci`, `nce`, `fecha_entrega`, `id_condicion`, `fecha_pago`, `id_condicion2`, `nro_envio`, `id_anio_envio`, `observacion`, `id_nrocuenta`, `nt`, `id_anio_nt`, `id_usuario`, `id_estado_giro`, `id_doc_pagos`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(103, 2, '60750503', 'MONTES GUTIERREZ EDUARDO SEBASTIAN', '09501510', 'GUTIERREZ LOPEZ NORMA ALICIA', '985171996', 'norali_36@hotmail.com', 1, '162510', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2002-192', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000951', '2024-05-31', '', '0000-00-00', '', '0000-00-00', '3200', '2002.24.95.2401044', '2024-05-31', 2, '0000-00-00', 1, '', 1, '', 2, '38237', 63, 7, 2, 3, 0, '2024-05-30 10:07:45', '2024-06-04 10:41:26'),
(104, 2, '60751304', 'PATIÑO PAUL GUEVARA ANGHELY ARLETTE', '40416820', 'GUEVARA HUAYLLANI YENNY', '980278503', 'candyandry123@gmail.com', 1, '161319', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2003-193', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000952', '2024-05-31', '', '0000-00-00', '', '0000-00-00', '3201', '2003.24.95.2401045', '2024-05-31', 2, '0000-00-00', 1, '', 1, '', 2, '38768', 63, 7, 2, 3, 0, '2024-05-30 10:18:16', '2024-06-03 16:18:01'),
(105, 2, '77493762', 'GOMEZ ASTO FRANK ANDERSO', '', '', '926234793', 'zaratepedro5955@gmail.com', 1, '4109421761', 2, '110-01-0444317', '350.00', '2024-04-14', 70, 1, 1, '1551413', '2006-194', 63, '1396', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000953', '2024-05-31', '', '0000-00-00', '', '0000-00-00', '3202', '2006.24.95.2401046', '2024-05-31', 2, '0000-00-00', 1, '', 1, '', 2, '38769', 63, 7, 2, 3, 0, '2024-05-30 11:20:41', '2024-06-03 16:20:27'),
(106, 2, '77049774', 'FERNANDEZ CAMINO JOSEPH FELIX', '', '', '902284082', '-', 1, '2710419', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2018-195', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000965', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3260', '2018.24.95.2401116', '2024-06-04', 2, '0000-00-00', 1, '', 1, '', 2, '32666', 63, 7, 2, 3, 0, '2024-05-31 10:31:58', '2024-06-10 16:11:18'),
(107, 2, '75651732', 'PALOMINO HUARINGA SEBASTIAN CHARLIE ', '', '', '970456917', 'sebpalominoh07@gmail.com', 1, '4617424626', 2, '110-01-0444317', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2019-196', 63, '1396', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000966', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3261', '2019.24.95.2401117', '2024-06-04', 2, '0000-00-00', 1, '', 1, '', 2, '32731', 63, 7, 2, 3, 0, '2024-05-31 10:43:35', '2024-06-10 16:13:14'),
(108, 2, '71937099', 'VASQUEZ HERRERA RODRIGO ', '', '', '995470522', 'rodrivasquez337@hotmail.com', 1, '79763', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2020-197', 63, '1397', 63, '', '500.00', '500.00', '0.00', '0.00', '', '0000-00-00', '24000967', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3262', '2020.24.95.2401118', '2024-06-04', 2, '2024-06-06', 2, '', 1, '', 2, '32847', 63, 7, 2, 3, 0, '2024-05-31 10:52:58', '2024-06-10 16:20:13'),
(109, 2, '61009335', 'CIERRALTA RAMOS NICOLE ALEXANDRA', '44857796', 'RAMOS CAMPOS EMELY ALISSON', '-', '-', 1, '463471', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2021-198', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000968', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3263', '2021.24.95.2401119', '2024-06-04', 2, '0000-00-00', 1, '', 1, '', 2, '32891', 63, 7, 2, 3, 0, '2024-05-31 11:25:26', '2024-06-10 16:22:09'),
(110, 2, '16528298', 'GUEVARA OLANO ADELA DEISY', '', '', '990188728', 'deisygol@hotmail.com', 1, '3512580668', 2, '110-01-0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '2022-199', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24000969', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3264', '2022.24.95.2401120', '2024-06-04', 2, '0000-00-00', 1, '', 1, '', 2, '35701', 63, 7, 2, 3, 0, '2024-05-31 11:42:19', '2024-06-10 16:23:50'),
(111, 2, '72707862', 'RAVELO GARCIA STEFANO DAVID', '', '', '942965881', '75389941@ceetus.edu.pe', 1, '615597', 3, '191-9398126-0-63', '500.00', '2024-04-16', 70, 1, 1, '1551413', '2023-200', 63, '1397', 63, '', '500.00', '500.00', '0.00', '0.00', '', '0000-00-00', '24000970', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3265', '2023.24.95.2401121', '2024-06-04', 2, '2024-06-05', 2, '', 1, '', 2, '36676', 63, 7, 2, 3, 0, '2024-05-31 11:53:45', '2024-06-10 16:27:33'),
(112, 2, '77089071', 'APAZA LAURA LUIS MIGUEL', '', '', '977279864', 'miguelapaza015gmail.com', 1, '4012021714', 2, '110-01-0444317', '350.00', '2024-04-12', 70, 1, 1, '1551413', '2034-201', 63, '1396', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24000971', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3266', '2034.24.95.2401122', '2024-06-04', 2, '2024-06-06', 2, '', 1, '-', 2, '33121', 63, 7, 2, 3, 0, '2024-06-03 10:38:20', '2024-06-10 16:30:06'),
(113, 2, '62853529', 'RAMOS GUTIERREZ BRIGYTT KAROLAY', '', '', '919604488', 'geakay4@gmail.com', 1, '270204', 3, '191-9398126-0-63', '500.00', '2024-04-04', 70, 1, 1, '1551413', '2036-202', 63, '1397', 63, '', '500.00', '500.00', '0.00', '0.00', '', '0000-00-00', '24000972', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3267', '2036.24.95.2401123', '2024-06-04', 2, '2024-06-05', 2, '', 1, '-', 2, '33000', 63, 7, 2, 3, 0, '2024-06-03 10:52:01', '2024-06-10 16:32:42'),
(114, 2, '74899546', 'HUANCA LAYME MELANNY VANESA', '', '', '931390746', 'vnj280603@gmail.com', 1, '677036', 3, '191-9398126-0-63', '350.00', '2024-04-08', 70, 1, 1, '1551413', '2039-203', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24000973', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3268', '2039.24.95.2401124', '2024-06-04', 2, '2024-06-05', 2, '', 1, '', 2, '32926', 63, 7, 2, 3, 0, '2024-06-03 11:06:21', '2024-06-10 16:35:11'),
(115, 2, '91693439', 'ROJAS TACOMA VERONICA', '', '', '906084576', 'veronicarojastacoma@gmail.com', 1, '924499', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2041-204', 63, '1397', 63, '', '500.00', '500.00', '0.00', '0.00', '', '0000-00-00', '24000975', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3269', '2041.24.95.2401125', '2024-06-04', 2, '2024-06-06', 2, '', 1, '', 2, '32919', 63, 7, 2, 3, 0, '2024-06-03 11:21:47', '2024-06-10 16:37:25'),
(116, 2, '77292443', 'GARCILAZO GONZALES RAFAEL JUNIOR ', '', '', '960472200', 'rafaeldelpai565@gmail.com', 1, '532735', 3, '191-9398126-0-63', '560.40', '2024-04-18', 70, 1, 1, '1551413', '2046-205', 63, '1397', 63, '', '560.40', '0.00', '0.00', '0', '', '0000-00-00', '24000976', '2024-06-04', '', '0000-00-00', '', '0000-00-00', '3270', '046.24.95.2401126', '2024-06-04', 2, '0000-00-00', 1, '', 1, '', 2, '32664', 63, 7, 2, 3, 0, '2024-06-03 12:26:25', '2024-06-10 16:39:28'),
(117, 2, '75193232', 'GUTIERREZ SALAZAR ZAID AMYR', '', '', '972214529', 'gutierrezsalazarzaidamyr21032003@gmail.com', 1, '243032', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2052-206', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000999', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3316', '2052.24.95.2401180', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '33150', 63, 7, 2, 3, 0, '2024-06-04 09:06:03', '2024-06-10 16:41:20'),
(118, 2, '73305597', 'GARAY MOLINA GRACIELA EMPERATRIZ ', '', '', '922690703', 'gracielagaray161@gmail.com', 1, '1867758', 3, '191-9398126-0-63', '350.00', '2024-04-17', 70, 1, 1, '1551413', '2054-207', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000986', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3319', ' 2054.24.95.2401181', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '40030', 63, 7, 2, 3, 0, '2024-06-04 09:16:33', '2024-06-10 16:45:35'),
(119, 2, '70478580', 'MENDOZA MEDINA JOAQUIN ADRIANA', '09914133', 'MENDOZA GUTIERREZ WILMER IVAN', '941648583', 'w.i.menguti@gmail.com', 1, '581192', 3, '191-9398126-0-63', '500.00', '2024-04-15', 70, 1, 1, '1551413', '2055-208', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24000987', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3320', ' 2055.24.95.2401182', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '33175', 63, 7, 2, 3, 0, '2024-06-04 09:29:07', '2024-06-10 16:47:35'),
(120, 2, '71341026', 'QUISPE TUDELA CLEDY MARIETH', '', '', '916086879', 'cledytudela8@gmail.com', 1, '600442', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2057-209', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000988', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3323', ' 2057.24.95.2401183', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '33173', 63, 7, 2, 3, 0, '2024-06-04 09:38:02', '2024-06-10 16:49:38'),
(121, 2, '80988137', 'JIMENEZ SANCHEZ VICTOR MANUEL', '', '', '946239411', 'victorjimenezsanchezvis@gmail.com', 1, '928683', 3, '191-9398126-0-63', '350.00', '2024-04-15', 70, 1, 1, '1551413', '2058-210', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000989', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3324', ' 2058.24.95.2401184', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '33181', 63, 7, 2, 3, 0, '2024-06-04 10:31:37', '2024-06-10 16:51:26'),
(122, 2, '75588981', 'VEGA CORDOVA OLGA NATIVIDAD', '', '', '956056617', 'olgavegacordova25@gmail.com', 1, '458509', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2059-211', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24000990', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3326', '2059.24.95.2401185', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '33182', 63, 7, 2, 3, 0, '2024-06-04 10:40:42', '2024-06-10 16:52:55'),
(123, 2, '61032439', 'MAÑUICO SANCHEZ JOSE FRANCISCO', '42558617', 'SANCHEZ ANGULO ROSA FIDELA', '960463777', 'rosalinda3848@gmail.com', 1, '296100043', 6, '257443', '560.00', '2024-02-19', 31, 1, 1, '1551413', '2064-212', 63, '753', 63, '', '560.00', '0.00', '0.00', '0', '', '0000-00-00', '24000991', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3327', ' 2064.24.95.2401186', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '33794', 63, 7, 2, 3, 0, '2024-06-04 10:56:47', '2024-06-10 16:55:18'),
(124, 2, '10387350', 'BARZOLA SUMARI JUAN JOSE', '', '', '989256088', 'jbarzola@unfv.edu.pe', 1, '5514155868', 2, '110-01-0416304', '177.30', '2024-02-29', 16, 1, 1, '1551413', '2066-213', 63, '727', 63, '', '177.30', '0.00', '0.00', '0', '', '0000-00-00', '24000994', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3329', ' 2066.24.95.2401187', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '36186', 63, 7, 2, 3, 0, '2024-06-04 11:36:05', '2024-06-10 17:00:23'),
(125, 2, '41472268', 'ACUACHI CAMA OSCAR OMAR ', '', '', '941536794', '2019703021@unfv.edu.pe', 1, '991695', 3, '191-9398127-0-73', '157.10', '2023-05-08', 33, 1, 1, '1551413', '2067-214', 63, '79', 62, '', '157.10', '0.00', '0.00', '0', '', '0000-00-00', '24000995', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3328', '2067.24.95.2401188', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '36186', 63, 7, 2, 3, 0, '2024-06-04 11:43:42', '2024-06-10 16:57:06'),
(126, 2, '45027508', 'ORDOÑEZ MENDOZA ALEX CRISTHOFER', '', '', '969364217', 'alex_5715@hotmail.com', 1, '4614585703', 2, '110-01-0444317', '300.00', '2023-12-11', 70, 1, 1, '1551413', '2070-215', 63, '79', 62, '', '300.00', '0.00', '0.00', '0', '', '0000-00-00', '24000996', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3330', ' 2070.24.95.2401189', '2024-06-05', 2, '0000-00-00', 1, '', 1, '', 2, '35220', 63, 7, 2, 3, 0, '2024-06-04 12:07:02', '2024-06-10 17:03:03'),
(127, 2, '72410696', 'PANTOJA CORDOVA LEONARDO ERICK', '', '', '915127152', 'leonardopantoja471@gmail.com', 1, '1311966', 3, '191-9398127-0-73', '84.30', '2024-04-10', 33, 1, 1, '1551413', '2071-216', 63, '1564', 63, '', '84.30', '84.30', '0.00', '0.00', '', '0000-00-00', '24000997', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3331', ' 2071.24.95.2401190', '2024-06-05', 2, '2024-06-10', 2, '', 1, '-', 2, '37021', 63, 7, 2, 3, 0, '2024-06-04 12:46:12', '2024-06-13 11:38:58'),
(128, 2, '72410696', 'PANTOJA CORDOVA LEONARDO ERICK', '', '', '915127152', 'leonardopantoja471@gmail.com', 1, '7699', 3, '191-9398127-0-73', '72.80', '2024-04-10', 33, 1, 1, '1551413', '2071-216', 63, '1564', 63, '', '72.80', '72.80', '0.00', '0.00', '', '0000-00-00', '24000997', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3331', ' 2071.24.95.2401190', '2024-06-05', 2, '2024-06-10', 2, '', 1, '-', 2, '37021', 63, 7, 2, 3, 0, '2024-06-04 12:48:50', '2024-06-13 11:40:16'),
(129, 2, '72299115', 'MANCO DAVILA OSCAR FELIPE', '', '', '932805701', '2015100547@unfv.edu.pe', 1, '6014080253', 2, '110-01-0416304', '206.40', '2023-09-28', 16, 1, 1, '1551413', '2073-217', 63, '79', 62, '', '206.40', '0.00', '0.00', '0', '', '0000-00-00', '24001005', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3387', '2073.24.95.2401259', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39775', 63, 7, 2, 3, 0, '2024-06-04 15:25:06', '2024-06-13 11:47:25'),
(130, 2, '72299115', 'MANCO DAVILA OSCAR FELIPE', '', '', '932805701', '2015100547@unfv.edu.pe', 1, '6014084933', 2, '110-01-0416304', '154.80', '2023-09-28', 16, 1, 1, '1551413', '2073-217', 63, '79', 62, '', '154.80', '0.00', '0.00', '0', '', '0000-00-00', '24001005', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3387', '2073.24.95.2401259', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39775', 63, 7, 2, 3, 0, '2024-06-04 15:28:14', '2024-06-13 11:48:09'),
(131, 2, '75813378', 'GUERRA GONZALES GEORGE LUIS ', '', '', '999984965', '2019703101@unfv.edu.pe', 1, '4610092076', 2, '110-01-0416304', '125.00', '2024-03-19', 69, 1, 1, '1551413', '2081-221', 63, '1247', 63, '', '125.00', '0.00', '0.00', '0', '', '0000-00-00', '24001006', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3388', '2081.24.95.2401260', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39775', 63, 7, 2, 3, 0, '2024-06-04 15:31:39', '2024-06-13 11:43:10'),
(132, 2, '75813378', 'GUERRA GONZALES GEORGE LUIS', '', '', '999984965', '2019703101@unfv.edu.pe', 1, '4609573021', 2, '110-01-0416304', '100.00', '2024-03-19', 69, 1, 1, '1551413', '2081-221', 63, '1247', 63, '', '100.00', '0.00', '0.00', '0', '', '0000-00-00', '24001006', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3388', '2081.24.95.2401260', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39775', 63, 7, 2, 3, 0, '2024-06-04 15:34:29', '2024-06-13 11:44:06'),
(133, 2, '75813378', 'GUERRA GONZALES GEORGE LUIS ', '', '', '999984965', '2019703101@unfv.edu.pe', 1, '4610082262', 2, '110-01-0416304', '75.00', '2024-03-19', 69, 1, 1, '1551413', '2081-221', 63, '1247', 63, '', '75.00', '0.00', '0.00', '0', '', '0000-00-00', '24001006', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3388', '2081.24.95.2401260', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39775', 63, 7, 2, 3, 0, '2024-06-04 15:37:06', '2024-06-13 11:44:46'),
(134, 2, '75813378 ', 'GUERRA GONZALES GEORGE LUIS', '', '', '999984965', '2019703101@unfv.edu.pe', 1, '2918041825', 2, '110-01-0416304', '90.00', '2022-05-02', 16, 1, 1, '1551413', '2081-221', 63, '79', 61, '', '90.00', '0.00', '0.00', '0', '', '0000-00-00', '24001006', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3388', '2081.24.95.2401260', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39775', 63, 7, 2, 3, 0, '2024-06-04 15:40:37', '2024-06-13 11:46:03'),
(135, 2, '07966986', 'CORDOVA MEZARINA GIANNINA LILIANA ', '', '', '987515958', 'giannina.cordovamezarine@gmail.com', 1, '3515564170', 2, '110-01-0444317', '640.00', '2024-02-09', 32, 1, 1, '1551413', '2078-220', 63, '732', 63, '', '100.00', '100', '540.00', '0.00', '', '0000-00-00', '24000998', '2024-06-05', '', '0000-00-00', '', '0000-00-00', '3332', '2078.24.95.2401191', '2024-06-05', 2, '2024-06-06', 2, '', 1, '-', 2, '36499', 63, 7, 2, 3, 0, '2024-06-04 16:04:13', '2024-06-13 11:50:49'),
(136, 2, '08150440', 'OSCCO GUERRA GISELLA ANGEL', '', '', '997004472', 'gosccog@yahoo.es', 1, '4910541305', 2, '110-01-0414438', '50.00', '2024-02-23', 68, 1, 1, '1551413', '2082-222', 63, '735', 63, '', '50.00', '0.00', '0.00', '0', '', '0000-00-00', '24001007', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3389', ' 2082.24.95.2401261', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '36457', 63, 7, 2, 3, 0, '2024-06-05 09:50:15', '2024-06-13 11:53:53'),
(137, 2, '09558025', 'BERNUY ATACHAGUA NOEMI ', '', '', '932756201', 'noemibbb@hotmail.com', 1, '706500048', 6, '878022', '1000.00', '2020-01-04', 17, 1, 1, '1551413', '2083-223', 63, '79', 59, '', '1000.00', '0.00', '0.00', '0', '', '0000-00-00', '24001008', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3390', '2083.24.95.2401262', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '36101', 63, 7, 2, 3, 0, '2024-06-05 10:39:28', '2024-06-13 11:55:38'),
(138, 2, '71163071', 'PINTO RODRIGUEZ JENY HANNA', '40268472', 'RODRIGUEZ ALVARADO CRISTINA VIVIANA', '-', '-', 1, '372281', 3, '191-9398126-0-63', '500.00', '2024-04-16', 70, 1, 1, '1551413', '2086-224', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001010', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3391', ' 2086.24.95.2401225', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '29570', 63, 7, 2, 3, 0, '2024-06-05 11:07:09', '2024-06-13 11:57:22'),
(139, 2, '73369479', 'TOVAR AVILES JORDAN OWEN', '', '', '935139835', 'jtovaraviles19@gmail.com', 1, '5416190169', 2, '110-01-0451398', '84.30', '2024-04-26', 33, 1, 1, '1551413', '2087-225', 63, '1556', 63, '', '84.30', '0.00', '0.00', '0', '', '0000-00-00', '24001011', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3392', ' 2087.24.95.2401226', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39114', 63, 7, 2, 3, 0, '2024-06-05 11:51:44', '2024-06-13 11:59:39'),
(140, 2, '73369479', 'TOVAR AVILES JORDAN OWEN', '', '', '935139835', 'jtovaraviles19@gmail.com', 1, '5416191459', 2, '110-01-0451398', '72.80', '2024-04-26', 33, 1, 1, '1551413', '2087-225', 63, '1556', 63, '', '72.80', '0.00', '0.00', '0', '', '0000-00-00', '24001011', '2024-06-06', '', '0000-00-00', '', '0000-00-00', '3392', ' 2087.24.95.2401226', '2024-06-06', 2, '0000-00-00', 1, '', 1, '', 2, '39114', 63, 7, 2, 3, 0, '2024-06-05 11:55:58', '2024-06-13 12:00:25'),
(141, 2, '45485738', ' NIETO DAVILA JUAN MANUEL', '', '', '987736209', 'juannietod@gmail.com', 1, '6602009', 3, '191-9398127-0-73', '640.00', '2024-02-10', 32, 1, 1, '1551413', '2164-228', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24001030', '2024-06-11', '', '0000-00-00', '', '0000-00-00', '3454', '2164.24.95.2401299', '2024-06-11', 2, '0000-00-00', 1, '', 1, '', 2, '39322', 63, 7, 2, 3, 0, '2024-06-10 12:44:57', '2024-06-13 12:06:39'),
(142, 2, '10863553', ' REVILLA RAMOS VICTOR MOISES ', '', '', '969758812', 'victorrevillaramos@gmail.com', 1, '3610502846', 2, '110-01-0414438', '640.00', '2024-02-10', 32, 1, 1, '1551413', '2166-299', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24001031', '2024-06-11', '', '0000-00-00', '', '0000-00-00', '3455', '2166.24.95.2401300', '2024-06-11', 2, '0000-00-00', 1, '', 1, '', 2, '39322', 63, 7, 2, 3, 0, '2024-06-10 14:18:16', '2024-06-13 12:07:49'),
(143, 2, '48095768', ' GUTIERREZ ROMERO LYSBHET FABIOLA ', '', '', '929502621', '2023041903@unfv.edu.pe', 1, '8112783', 3, '191-9398127-0-73', '640.00', '2024-02-10', 32, 1, 1, '1551413', '2168-230', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24001029', '2024-06-11', '', '0000-00-00', '', '0000-00-00', '3453', '2168.24.95.2401301', '2024-06-11', 2, '0000-00-00', 1, '', 1, '', 2, '39322', 63, 7, 2, 3, 0, '2024-06-10 14:22:45', '2024-06-13 12:05:07'),
(144, 2, '72657548', 'RODRIGUEZ ARAGON OSKAR', '', '', '983308619', '2023045927@unfv.edu.pe', 1, '6380541', 3, '191-9398127-0-73', '640.00', '2024-02-14', 32, 1, 1, '1551413', '2169-231', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24001032', '2024-06-11', '', '0000-00-00', '', '0000-00-00', '3456', '2169.24.95.2401302', '2024-06-11', 2, '0000-00-00', 1, '', 1, '', 2, '39322', 63, 7, 2, 3, 0, '2024-06-10 14:28:06', '2024-06-13 12:12:59'),
(145, 2, '71489750', 'CRUZ PIO ANDREA FLORENCIA DE JESUS', '', '', '987732333', 'andreachpch@gmail.com', 1, '5317532313', 2, '110-01-0416304', '258.00', '2023-03-27', 16, 1, 1, '1551413', '2171-232', 63, '1247', 63, '', '258.00', '0.00', '0.00', '0', '', '0000-00-00', '24001033', '2024-06-11', '', '0000-00-00', '', '0000-00-00', '3457', '2171.24.95.2401303', '2024-06-11', 2, '0000-00-00', 1, '', 1, '', 2, '19932', 63, 7, 2, 3, 0, '2024-06-10 15:42:27', '2024-06-13 12:14:52'),
(146, 2, '75406672', 'YAPU YAPO MELANIE YESSENIA', '', '', '946328308', '2019231058@unfv.edu.pe', 1, '4014282884', 2, '110-01-0416304', '205.50', '2024-04-12', 63, 1, 1, '1551413', '2174-233', 63, '1552', 63, '', '205.50', '0.00', '0.00', '0', '', '0000-00-00', '24001037', '2024-06-11', '', '0000-00-00', '', '0000-00-00', '3465', '2174.24.95.2401304', '2024-06-11', 2, '0000-00-00', 1, '', 1, '', 2, '34670', 63, 7, 2, 3, 0, '2024-06-11 09:58:07', '2024-06-13 12:16:32'),
(147, 2, '77527897', 'SANTA MARIA ZABALETA XIOMARA CONSUELO BEATRIZ', '46683369', 'BARDALES ZABALETA MARIBEL ENEIDA', '976890817', 'siomarasantamariazabaleta11@gmail.com', 1, '3104445', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2175-234', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001046', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3506', '2175.24.95.2401345', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '30919', 63, 7, 2, 3, 0, '2024-06-11 11:25:24', '2024-06-13 12:22:06'),
(148, 2, '46760126', 'BENITES MAYANGA SAYURI YAKARINY', '', '', '-', '-', 1, '3517201116', 2, '110-01-0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '2176-235', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24001048', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3507', '2176.24.95.2401346', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 12:33:46', '2024-06-13 12:27:22'),
(149, 2, '47200121', 'CORDOVA QUISPE LESLIE KATHERIN', '', '', '993353826', 'lesliecordova.abogada@gmail.com', 1, '3910372051', 2, '110-01-0414438', '640.00', '2024-02-13', 32, 1, 1, '1551413', '2177-236', 63, '732', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '41823', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3508', '2177.24.95.2401347 ', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 12:39:09', '2024-06-13 12:33:53'),
(150, 2, '41366598', 'NAVARRO BALAREZO MERCEDES LUCIA', '', '', '947226577', 'menado23@hotmail.com', 1, '3910342136', 2, '110-01-0414438', '640.00', '2024-02-13', 32, 1, 1, '1551413', '2178-237', 63, '732', 63, '', '100.00', '100.00', '540.00', '0.00', '', '0000-00-00', '24001052', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3510', '2178.24.95.2401348 ', '2024-06-12', 2, '2024-06-14', 2, '', 1, '-', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 14:22:44', '2024-06-20 10:17:59'),
(151, 2, '43609178', 'TAICO ZEVALLOS YAZU MASHAN', '', '', '952527785', 'yazutaico@gmail.com', 1, '3513330594', 2, '0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '2179-238', 63, '732', 63, '', '100.00', '100.00', '540.00', '0.00', '', '0000-00-00', '24001055', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3513', '2179.24.95.2401349  ', '2024-06-12', 2, '2024-06-14', 2, '', 1, '-', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 14:27:03', '2024-06-20 10:19:30'),
(152, 2, '47593799', 'PARIENTE VERDE JOHANNA', '', '', '959359289', 'johannapv92@gmail.com', 1, '7624744', 3, '191-9398127-0-73', '640.00', '2024-02-11', 32, 1, 1, '1551413', '2180-239', 63, '735', 63, '', '100.00', '0.00', '540.00', '0', '', '0000-00-00', '24001053', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3511', '2180.24.95.2401350  ', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 14:31:49', '2024-06-20 10:14:25'),
(153, 2, '72383918', 'MELGAREJO CHAVEZ JOEL LEONARDO', '', '', '997430017', 'leomcj23@gmail.com', 1, '3514592374', 2, '0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '2181-240', 63, '732', 63, '', '100.00', '100.00', '540.00', '0.00', '', '0000-00-00', '24001051', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3509', '2182.24.95.2401352', '2024-06-12', 2, '2024-06-17', 2, '', 1, '-', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 14:36:23', '2024-06-20 10:16:22'),
(154, 2, '70127909', 'ROJAS APESTEGUI CATHERINE ROSARIO', '', '', '912876330', 'catherinerojas,sig@gmail.com', 1, '3514580494', 2, '0414438', '640.00', '2024-02-09', 32, 1, 1, '1551413', '2182-241', 63, '732', 63, '', '100.00', '100.00', '540.00', '0.00', '', '0000-00-00', '24001054', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3512', '2182.24.95.2401352', '2024-06-12', 2, '2024-06-17', 2, '', 1, '-', 2, '41823', 63, 7, 2, 3, 0, '2024-06-11 14:41:49', '2024-06-20 10:22:12'),
(155, 2, '74005377', 'SOTELO LEON JOYCE LORENA', '', '', '915150783', 'sotelojoyce2@gmail.com', 1, '332770', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2190-242', 63, '1397', 63, '', '500.00', '500.00', '0.00', '0.00', '', '0000-00-00', '24001056', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3514', '2190.24.95.2401353', '2024-06-12', 2, '2024-06-15', 2, '', 1, '-', 2, '30655', 63, 7, 2, 3, 0, '2024-06-11 14:58:38', '2024-06-20 10:24:30'),
(156, 2, '43011376', 'SANCHEZ AREVALO MARIBEL', '', '', '979246018', 'huancafernanda564@gmail.com', 1, '39067', 3, '191-9398126-0-63', '350', '2024-04-19', 70, 1, 1, '1551413', '2191-243', 63, '1397', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '31207', 63, 10, 3, 1, 0, '2024-06-11 15:09:57', '0000-00-00 00:00:00'),
(157, 2, '47283041', 'TIMANA PASTOR GABRIEL ENRIQUE', '', '', '939534217', 'jomalegami156@gmail.com', 1, '4212372109', 2, '110-01-0416304', '1260.00', '2024-03-15', 43, 1, 1, '1551413', '2197-244', 63, '1247', 63, '', '1260.00', '1260.00', '0.00', '0.00', '', '0000-00-00', '24001059', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3516', '2197.24.95.2401355 ', '2024-06-12', 2, '2024-06-14', 2, '', 1, '-', 2, '42122', 63, 7, 2, 3, 0, '2024-06-11 16:12:13', '2024-06-20 10:27:10'),
(158, 2, '42192553', 'LUDEÑA CASTILLO JORGE LUIS', '', '', '934844006', 'jorgeludea1@hotmail.com', 1, '3513114091', 2, '110-01-0416304', '70.00', '2022-01-12', 67, 1, 1, '1551413', '2198-245', 63, '79', 61, '', '70.00', '0.00', '0.00', '0', '', '0000-00-00', '24001060', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3517', '2198.24.95.2401356', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '5478', 63, 7, 2, 3, 0, '2024-06-11 16:27:33', '2024-06-20 10:28:59'),
(159, 2, '42192553', 'LUDEÑA CASTILLO JORGE LUIS', '', '', '934844006', 'jorgeludea1@hotmail.com', 1, '3513111583', 2, '110-01-0416304', '20.00', '2022-01-12', 68, 1, 61, '1551413', '2198-245', 63, '79', 61, '', '20.00', '0.00', '0.00', '0', '', '0000-00-00', '24001060', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3517', '2198.24.95.2401356', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '5478', 63, 7, 2, 3, 0, '2024-06-11 16:30:10', '2024-06-20 10:29:51'),
(160, 2, '42192553', 'LUDEÑA CASTILLO JORGE LUIS', '', '', '934844006', 'jorgeludea1@hotmail.com', 1, '3513120409', 2, '110-01-0416304', '15.00', '2022-01-12', 67, 1, 1, '1551413', '2198-245', 63, '79', 61, '', '15.00', '0.00', '0.00', '0', '', '0000-00-00', '24001060', '2024-06-12', '', '0000-00-00', '', '0000-00-00', '3517', '2198.24.95.2401356 ', '2024-06-12', 2, '0000-00-00', 1, '', 1, '', 2, '5478', 63, 7, 2, 3, 0, '2024-06-11 16:32:40', '2024-06-20 10:30:31'),
(161, 2, '72508670', 'PARDAVE HUACHO DAMARIS ANABEL', '', '', '927993548', 'anavelpardave17@gmial.com', 1, '2715151966', 2, '110-01-0416304', '70', '2022-04-01', 77, 1, 1, '1551413', '2200-246', 63, '79', 61, '', '70', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '10100', 63, 10, 3, 1, 0, '2024-06-12 10:44:56', '0000-00-00 00:00:00'),
(162, 2, '72508670', 'PARDAVE HUACHO DAMARIS ANABEL', '', '', '927993548', 'anavelpardave17@gmial.com', 1, '2715163690', 2, '110-01-0416304', '20', '2022-04-01', 68, 1, 1, '1551413', '2200-246', 63, '79', 61, '', '20', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '10100', 63, 10, 3, 1, 0, '2024-06-12 10:48:31', '0000-00-00 00:00:00'),
(163, 2, '72508670', 'PARDAVE HUACHO DAMARIS ANABEL', '', '', '927993548', 'anavelpardave17@gmial.com', 1, '2715160677', 2, '110-01-0416304', '15', '2022-04-01', 67, 1, 1, '1551413', '2200-246', 63, '79', 61, '', '15', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '10100', 63, 10, 3, 1, 0, '2024-06-12 10:51:51', '0000-00-00 00:00:00'),
(164, 2, '60754503', 'FARIAS ALZAMORA FATIMA ELEXANDRA', '', '', '923399456', 'fatimafarias816@gmail.com', 1, '684918', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2201-247', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001070', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3533', '2201.24.95.2401380', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '33547', 63, 7, 2, 3, 0, '2024-06-12 11:04:19', '2024-06-20 10:33:00'),
(165, 2, '70533309', 'CAMPOS LLASHAG ANA YOLANDA ', '', '', '967179984', 'moralesabigail706@gmail.com', 1, '4511034731', 2, '110-01-0444317', '350.00', '2024-04-17', 70, 1, 1, '1551413', '2203-248', 61, '1396', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001071', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3534', '2203.24.95.2401381', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '33490', 63, 7, 2, 3, 0, '2024-06-12 11:23:18', '2024-06-20 10:34:54'),
(166, 2, '20000516', 'GUTARRA SUASNABAR HUGO RAUL', '', '', '957330085', 'hgutarrasuasnabar@gmail.com', 1, '606309', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2207-249', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001072', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3535', '2207.24.95.2401382', '2024-06-13', 2, '2024-06-15', 2, '', 1, '-', 2, '33379', 63, 7, 2, 3, 0, '2024-06-12 12:09:33', '2024-06-20 10:36:47'),
(167, 2, '76285956', 'BAYLON HUAMAN MADELYN ROUSS', '', '', '966505730', 'madelynbaylon@iclaud.com', 1, '414570', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2208-250', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001073', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3536', '2208.24.95.2401383', '2024-06-13', 2, '2024-06-17', 2, '', 1, '-', 2, '33489', 63, 7, 2, 3, 0, '2024-06-12 12:18:06', '2024-06-20 10:45:47'),
(168, 2, '60943599', 'MALLCCO GARCIA MARJORIE ROUSE', '42849096', 'GARCIA CONTRERAS RUTH GISELA', '993792189', 'franruthmaru26@gmail.com', 1, '412500', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2210-251', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001074', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3537', '2210.24.95.2401384', '2024-06-13', 2, '2024-06-14', 2, '', 1, '-', 2, '33918', 63, 7, 2, 3, 0, '2024-06-12 12:27:38', '2024-06-20 10:49:53'),
(169, 2, '72695979', 'RUIZ POMA DANIELA ABIGAIL', '', '', '931426233', 'jennypomajulcanma@gmail.com', 1, '604845', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2211-252', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001077', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3538', '2211.24.95.2401385', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '33785', 63, 7, 2, 3, 0, '2024-06-12 12:36:03', '2024-06-20 10:52:49'),
(170, 2, '70695705', 'ZEGOVIA CONDORI FABIAN ANDRE', '10673910', 'CONDORI TELLO DORIS MELI ', '993319311', 'odontorisas.doris@gmail.com', 1, '287840', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2212-253', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001078', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3539', '2212.24.95.2401386', '2024-06-13', 2, '2024-06-14', 2, '', 1, '-', 2, '33761', 63, 7, 2, 3, 0, '2024-06-12 12:44:23', '2024-06-20 10:55:09'),
(171, 2, '70708690', 'AGUILAR ROSALES YAMILE XIOMARA', '45262507', 'ROSALES ABARCA DANIELA ELSA', '922582622', 'fpranando@yahoo.es', 1, '258337', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2216-254', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001079', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3540', '2216.24.95.2401387', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '33760', 63, 7, 2, 3, 0, '2024-06-12 14:29:13', '2024-06-20 10:56:57'),
(172, 2, '70619974', 'VILLANEDA LAPA ZHARICK KEIRY', '41197035', 'LAPA CALLOCONTO YULIANA GRISELDA', '913344831', 'yulifarmacia2311@gmail.com', 1, '670702', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2217-255', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001080', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3541', '2217.24.95.2401388', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '33755', 63, 7, 2, 3, 0, '2024-06-12 14:54:28', '2024-06-20 10:59:33'),
(173, 2, '72223753', 'ARANGO VALDEZ ERIKA ADRIANA', '', '', '990211004', 'zedlav_derf@hotmail.com', 1, '486063', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2218-256', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001081', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3542', '2218.24.95.2401389  ', '2024-06-13', 2, '2024-06-14', 2, '', 1, '-', 2, '33580', 63, 7, 2, 3, 0, '2024-06-12 15:29:17', '2024-06-20 11:01:16'),
(174, 2, '60914604', 'PACCSI GARIBAY BRECIA ARACELY JULIET ', '44686168', 'GARIBAY FLORES YENNY', '993725757', 'yennygaribayflores@gmail.com', 1, '663625', 3, '191-9398126-0-63', '350.00', '2024-04-08', 70, 1, 1, '1551413', '2219-257', 63, '1397', 63, '', '350.00', '350.00', '0.00', '0.00', '', '0000-00-00', '24001082', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3543', '2219.24.95.2401390', '2024-06-13', 2, '2024-06-15', 2, '', 1, '-', 2, '33740', 63, 7, 2, 3, 0, '2024-06-12 15:40:42', '2024-06-20 11:03:29'),
(175, 2, '70741988', 'FIGUEROA SANABRIA SANDRA VALENTINA', '45784556', 'MOLINA DIAZ EXINN MARIANO', '941459857', 'myd.exin.270389@gmail.com', 1, '2378602', 3, '191-9398126-0-63', '500.00', '2024-04-15', 70, 1, 1, '1551413', '2221-258', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001083', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3544', '2221.24.95.2401391', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '42780', 63, 7, 2, 3, 0, '2024-06-12 15:51:05', '2024-06-20 11:04:55'),
(176, 2, '61331545', 'UTUS ARONE FELIX ALEJANDRO ', '45784556', 'MOLINA DIAZ EXINN MARIANO', '941459857', 'myd.exin.270389@gmail.com', 1, '2582313', 3, '191-9398126-0-63', '500.00', '2024-04-15', 70, 1, 1, '1551413', '2222-259', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001084', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3545', '2222.24.95.2401416', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '42781', 63, 7, 2, 3, 0, '2024-06-12 16:00:57', '2024-06-20 11:06:47'),
(177, 2, '47681734', 'URIBE PALOMINO ALEJANDRA JIMENA ', '', '', '957351697', '2010030008@unfv.edu.pe', 1, '5511241251', 2, '110-01-0416304', '600.00', '2024-04-27', 65, 1, 1, '1551413', '2223-260', 63, '1552', 63, '', '600.00', '600.00', '0.00', '0.00', '', '0000-00-00', '24001086', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3547', '2223.24.95.2401417', '2024-06-13', 2, '2024-06-17', 2, '', 1, '', 2, '40919', 63, 7, 2, 3, 0, '2024-06-12 16:14:46', '2024-06-20 11:08:48'),
(178, 2, '47681734', 'URIBE PALOMINO ALEJANDRA JIMENA ', '', '', '957351697', '2010030008@unfv.edu.pe', 1, '5511252970', 2, '110-01-0416304', '30.00', '2024-04-27', 66, 1, 1, '1551413', '2223-260', 63, '1552', 63, '', '30.00', '30.00', '0.00', '0.00', '', '0000-00-00', '24001086', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3547', '2223.24.95.2401417', '2024-06-13', 2, '2024-06-17', 2, '', 1, '-', 2, '40919', 63, 7, 2, 3, 0, '2024-06-12 16:17:16', '2024-06-20 11:09:44'),
(179, 2, '47681734', 'URIBE PALOMINO ALEJANDRA JIMENA ', '', '', '957351697', '2010030008@unfv.edu.pe', 1, '5511250269', 2, '110-01-0416304', '20.00', '2024-04-27', 68, 1, 1, '1551413', '2223-260', 63, '1552', 63, '', '20.00', '20.00', '0.00', '0.00', '', '0000-00-00', '24001086', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '3547', '2223.24.95.2401417', '2024-06-13', 2, '2024-06-17', 2, '', 1, '-', 2, '40919', 63, 7, 2, 3, 0, '2024-06-12 16:19:14', '2024-06-20 11:10:34'),
(180, 2, '47165074', 'AYUQUE ASTO LIZETH ROXANA', '', '', '963710844', 'lizeth.ayuque13@gmail.com', 1, '4014524653', 2, '110-01-0416304', '70.00', '2023-09-08', 77, 1, 1, '1551413', '2224-261', 63, '79', 62, '', '70.00', '0.00', '0.00', '0', '', '0000-00-00', '24001087', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '2546', '2224.24.95.2401418', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '14451', 63, 7, 2, 3, 0, '2024-06-12 16:39:47', '2024-06-20 11:12:22'),
(181, 2, '47165074', 'AYUQUE ASTO LIZETH ROXANA', '', '', '963710844', 'lizeth.ayuque13@gmail.com', 1, '4014541410', 2, '110-01-0416304', '20.00', '2023-09-08', 68, 1, 1, '1551413', '2224-261', 63, '79', 62, '', '20.00', '0.00', '0.00', '0', '', '0000-00-00', '24001087', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '2546', '2224.24.95.2401418', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '14451', 63, 7, 2, 3, 0, '2024-06-12 16:42:16', '2024-06-20 11:13:13'),
(182, 2, '47165074', 'AYUQUE ASTO LIZETH ROXANA', '', '', '963710844', 'lizeth.ayuque13@gmail.com', 1, '4014531647', 2, '110-01-0416304', '15.00', '2023-09-08', 67, 1, 1, '1551413', '2224-261', 63, '79', 62, '', '15.00', '0.00', '0.00', '0', '', '0000-00-00', '24001087', '2024-06-13', '', '0000-00-00', '', '0000-00-00', '2546', '2224.24.95.2401418', '2024-06-13', 2, '0000-00-00', 1, '', 1, '', 2, '14451', 63, 7, 2, 3, 0, '2024-06-12 16:44:20', '2024-06-20 11:13:48'),
(183, 2, '73436267', 'CUYA LESCANO ASHLY ANTUANET', '', '', '904034908', '-', 1, '26696', 3, '191-9398126-0-63', '500.00', '2024-04-01', 70, 1, 1, '1551413', '2230-262', 63, '1397', 63, '', '500.00', '500.00', '0.00', '0.00', '', '0000-00-00', '24001099', '2024-06-14', '', '0000-00-00', '', '0000-00-00', '3578', '2230.24.95.2401419', '2024-06-14', 2, '2024-06-17', 2, '', 1, '-', 2, '33789', 63, 7, 2, 3, 0, '2024-06-13 15:46:30', '2024-06-20 11:19:52'),
(184, 2, '74177362', 'COPITAN ENCINAS ROMARIO ANTONIO', '', '', '973116714', 'copitanencinas@gmail.com', 1, '2766932', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2231-263', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001100', '2024-06-14', '', '0000-00-00', '', '0000-00-00', '3539', '2231.24.95.2401420', '2024-06-14', 2, '0000-00-00', 1, '', 1, '', 2, '33764', 63, 7, 2, 3, 0, '2024-06-13 15:54:35', '2024-06-20 11:21:30'),
(185, 2, '70718183', 'FLORINDEZ QUISOCALA MELANY ALEXANDRA', '', '', '907370771', 'florindezmelany839@gmail.com', 1, '435316', 3, '191-9398126-0-63', '500', '2024-04-15', 70, 1, 1, '1551413', '2232-264', 63, '1397', 63, '', '500', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '33873', 63, 10, 3, 1, 0, '2024-06-13 16:07:06', '0000-00-00 00:00:00'),
(186, 2, '72608276', 'ORE CORASMA FRANKLIN PAUL ', '', '', '929025863', 'paulfoc22@gmail.com', 1, '5910824', 3, '191-9398126-0-63', '350.00', '2024-04-11', 70, 1, 1, '1551413', '2233-265', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001103', '2024-06-14', '', '0000-00-00', '', '0000-00-00', '3581', '2233.24.95.2401422', '2024-06-14', 2, '0000-00-00', 1, '', 1, '', 2, '37741', 63, 7, 2, 3, 0, '2024-06-13 16:16:04', '2024-06-20 11:23:34'),
(187, 2, '72656537', 'RIOS GERONIMO SOMMER MATIAS', '', '', '944760840', 'danton.valentino@gmail.com', 1, '916508', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2237-266', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001102', '2024-06-14', '', '0000-00-00', '', '0000-00-00', '2580', '2237.24.95.2401421', '2024-06-14', 2, '0000-00-00', 1, '', 1, '', 2, '43332', 63, 7, 2, 3, 0, '2024-06-13 16:25:09', '2024-06-20 11:25:23'),
(188, 2, '72164919', 'HUILLCA QUISPE ANGEL SANTIAGO', '', '', '-', 'huiqui2002@gmail.com', 1, '5216524846', 2, '110-01-0451398', '84.30', '2023-05-24', 33, 1, 1, '1551413', '2335-267', 63, '79', 62, '', '84.30', '0.00', '0.00', '0', '', '0000-00-00', '24001109', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3676', '2335.24.95.2401502', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '43130', 63, 7, 2, 3, 0, '2024-06-18 09:25:33', '2024-06-20 11:27:08'),
(189, 2, '72164919', 'HUILLCA QUISPE ANGEL SANTIAGO', '', '', '-', 'huiqui2002@gmail.com', 1, '5216531736', 2, '110-01-0451398', '72.80', '2023-05-24', 33, 1, 1, '1551413', '2335-267', 63, '79', 62, '', '72.80', '0.00', '0.00', '0', '', '0000-00-00', '24001109', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3676', '2335.24.95.2401502', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '43130', 63, 7, 2, 3, 0, '2024-06-18 09:33:32', '2024-06-20 11:27:52'),
(190, 2, '72164919', 'HUILLCA QUISPE ANGEL SANTIAGO', '', '', '-', 'huiqui2002@gmail.com', 1, '3610280699', 2, '110-01-0451398', '84.30', '2024-04-08', 33, 1, 1, '1551413', '2335-267', 63, '1556', 63, '', '84.30', '0.00', '0.00', '0', '', '0000-00-00', '24001109', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3676', '2335.24.95.2401502', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '43130', 63, 7, 2, 3, 0, '2024-06-18 09:37:01', '2024-06-20 11:28:31'),
(191, 2, '72164919', 'HUILLCA QUISPE ANGEL SANTIAGO', '', '', '-', 'huiqui2002@gmail.com', 1, '3610282729', 2, '110-01-0451398', '72.80', '2024-04-08', 33, 1, 1, '1551413', '2335-267', 63, '1556', 63, '', '72.80', '0.00', '0.00', '0', '', '0000-00-00', '24001109', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3676', '2335.24.95.2401502', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '43130', 63, 7, 2, 3, 0, '2024-06-18 09:39:41', '2024-06-20 11:29:06'),
(192, 2, '72164919', 'HUILLCA QUISPE ANGEL SANTIAGO', '', '', '-', 'huiqui2002@gmail.com', 1, '3815484975', 2, '110-01-0451398', '7.00', '2023-10-05', 63, 1, 1, '1551413', '2335-267', 63, '79', 62, '', '7.00', '0.00', '0.00', '0', '', '0000-00-00', '24001109', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3676', '2335.24.95.2401502', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '43130', 63, 7, 2, 3, 0, '2024-06-18 09:43:56', '2024-06-20 11:30:00'),
(193, 2, '72164919', 'HUILLCA QUISPE ANGEL SANTIAGO', '', '', '-', 'huiqui2002@gmail.com', 1, '6016032905', 2, '110-01-0451398', '8.40', '2023-09-28', 63, 1, 1, '1551413', '2335-267', 63, '79', 62, '', '8.40', '0.00', '0.00', '0', '', '0000-00-00', '24001109', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3676', '2335.24.95.2401502', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '43130', 63, 7, 2, 3, 0, '2024-06-18 09:46:49', '2024-06-20 11:30:46'),
(194, 2, '75350555', 'VALENZUELA HEREDIA ROSA MARIA', '', '', '976807303', 'valenzuelaherediarosa@gmail.com', 1, '5615444388', 2, '110-01-0416304', '2500.00', '2023-10-23', 17, 1, 1, '1551413', '2341-268', 63, '79', 62, '', '2500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001110', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3677', '2341.24.95.2401503', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '40988', 63, 7, 2, 3, 0, '2024-06-18 10:04:59', '2024-06-20 11:32:34'),
(195, 2, '75272164', 'RODRIGUEZ ATENCIO ROLY SMITH', '', '', '916055131', 'roly.mc.lovin@gmail.com', 1, '2274039', 3, '191-9398126-0-63', '350.00', '2024-04-09', 70, 1, 1, '1551413', '2342-269', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001112', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3678', '2342.24.95.2401504', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '34238', 63, 7, 2, 3, 0, '2024-06-18 10:17:04', '2024-06-20 11:34:20'),
(196, 2, '72719425', 'SOTO CIESA ANABELLA ', '', '', '912197721', 'anabellasotocieza@gmail.com', 1, '362390', 3, '191-9398126-0-63', '500.00', '2024-04-18', 70, 1, 1, '1551413', '2343-270', 63, '1397', 63, '', '500.00', '0.00', '0.00', '0', '', '0000-00-00', '24001113', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3679', '2343.24.95.2401505', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '34228', 63, 7, 2, 3, 0, '2024-06-18 10:34:05', '2024-06-20 11:35:52'),
(197, 2, '21462626', 'HUAMANI CHAVEZ HYONY', '', '', '997593814', 'hyony@hoitmail.com', 1, '449658', 3, '191-9398126-0-63', '350.00', '2024-04-16', 70, 1, 1, '1551413', '2344-271', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001115', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3681', '2344.24.95.2401506', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '34198', 63, 7, 2, 3, 0, '2024-06-18 10:42:29', '2024-06-20 11:37:29'),
(198, 2, '70519269', 'TORO MOLINA ANNETTE SAMIRA', '41969254', 'MOLINA ACUÑA JUDITH EVELYN', '977453309', '-', 1, '2557708', 3, '191-9398126-0-63', '350.00', '2024-06-18', 70, 1, 1, '1551413', '2345-272', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001116', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3682', '2345.24.95.2401507', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '34396', 63, 7, 2, 3, 0, '2024-06-18 10:52:56', '2024-06-20 11:39:22'),
(199, 2, '76296427', 'ROSALES CHINCHON SOL ANDREA', '', '', '921676882', 'solrosaleschinchon@gmail.com', 1, '399733', 3, '191-9398126-0-63', '350.00', '2024-04-17', 70, 1, 1, '1551413', '2347-273', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001117', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3682', '2347.24.95.2401508', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '35030', 63, 7, 2, 3, 0, '2024-06-18 11:04:58', '2024-06-20 11:40:40'),
(200, 2, '44192477', 'PEREZ DE LA CRUZ YESENIA VANESA ', '', '', '935999858', 'altovalorpp@gmail.com', 1, '249796', 3, '191-9398126-0-63', '350.00', '2024-04-18', 70, 1, 1, '1551413', '2348-274', 63, '1397', 63, '', '350.00', '0.00', '0.00', '0', '', '0000-00-00', '24001118', '2024-06-19', '', '0000-00-00', '', '0000-00-00', '3683', '2348.24.95.2401509', '2024-06-19', 2, '0000-00-00', 1, '', 1, '', 2, '34958', 63, 7, 2, 3, 0, '2024-06-18 11:16:16', '2024-06-20 11:42:24'),
(201, 2, '42564174', 'HERNADEZ CHACALTANA JOSE LUIS', '', '', '964795142', 'kuranyi_m@hotmail.com', 1, '245945', 3, '193-1161080-0-80', '1000', '2022-05-18', 46, 1, 1, '1551413', '2361-277', 63, '79', 61, '', '1000', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '27678', 63, 10, 3, 1, 0, '2024-06-19 09:21:56', '0000-00-00 00:00:00'),
(202, 2, '44604755', 'AGUILAR ROMANI YOVANA', '', '', '954534211', 'yar.escorpi@gmail.com', 1, '8784806', 3, '191-9398126-0-63', '300', '2023-12-21', 70, 1, 1, '1551413', '2363-278', 63, '79', 62, '', '300', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '35189', 63, 10, 3, 1, 0, '2024-06-19 10:13:45', '0000-00-00 00:00:00'),
(203, 2, '76920378', 'ESTACIO RODRIGUEZ SILVIA ROMINA', '', '', '928971672', 'rominarodriguez2484@gmail.com', 1, '907956', 3, '191-9398126-0-63', '350', '2024-04-18', 70, 1, 1, '1551413', '2365-279', 63, '1397', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '35320', 63, 10, 3, 1, 0, '2024-06-19 10:59:15', '0000-00-00 00:00:00'),
(204, 2, '43762840', 'MONTES MEDINA NORMA NELLY ', '', '', '946465958', '-', 1, '303314', 3, '191-9398126-0-63', '350', '2024-04-17', 70, 1, 1, '1551413', '2366-280', 63, '1397', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '35340', 63, 10, 3, 1, 0, '2024-06-19 11:08:22', '0000-00-00 00:00:00'),
(205, 2, '70329605', 'CALDERON CONDORI MAXIMO MARCELO', '', '', '970583546', 'maxi13234@gmail.com', 1, '832707', 3, '191-9398126-0-63', '500', '2024-04-17', 70, 1, 1, '1551413', '2368-281', 63, '1397', 63, '', '500', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '35516', 63, 10, 3, 1, 0, '2024-06-19 11:46:57', '0000-00-00 00:00:00');
INSERT INTO `tb_detalle_devolucion` (`id_detalle_devolucion`, `id_tipo_documento`, `dni`, `nombre_solicitante`, `dni_apoderado`, `nombre_apoderado`, `telefono`, `correo`, `id_empresa`, `nro_liquidacion`, `id_banco`, `nro_cuenta_banco`, `importe_voucher`, `fecha_voucher`, `id_concepto`, `id_ciclo_concepto`, `id_anio_concepto`, `clasificador`, `siaf_devolucion`, `id_anio_siaf_devolucion`, `siaf_origen`, `id_anio_siaf_origen`, `observacion_giro`, `importe_devolucion_unfv`, `importe_devolucion_bn`, `saldo`, `diferencia`, `numero_cheque`, `fecha_cheque`, `numero_ope`, `fecha_ope`, `numero_cci`, `fecha_cci`, `numero_cartaorden`, `fecha_cartaorden`, `nci`, `nce`, `fecha_entrega`, `id_condicion`, `fecha_pago`, `id_condicion2`, `nro_envio`, `id_anio_envio`, `observacion`, `id_nrocuenta`, `nt`, `id_anio_nt`, `id_usuario`, `id_estado_giro`, `id_doc_pagos`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(206, 2, '73894311', 'NARCISO CARDENAS MARIEL INGRI', '40152273', 'CARDENAS AQUINO ELVA ROBERTINA', '992817630', 'marielingrinarcisocardenas@gmail.com', 1, '157886', 3, '191-9398126-0-63', '500', '2024-04-16', 70, 1, 1, '1551413', '2373-282', 63, '1397', 63, '', '500', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44524', 63, 10, 3, 1, 0, '2024-06-19 16:19:14', '0000-00-00 00:00:00'),
(207, 2, '72196427', 'CORTEZ LOZANO SERGIO MANUEL', '', '', '997589886', 'sergiomcl2001@gmail.com', 1, '529643', 3, '191-9398126-0-63', '300', '2024-04-08', 70, 1, 1, '1551413', '2374-283', 63, '1397', 63, '', '300', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44525', 63, 10, 3, 1, 0, '2024-06-19 16:40:14', '0000-00-00 00:00:00'),
(208, 2, '71743714', 'CESAR MOLINA ANGEL ROBERTO', '', '', '985632460', 'acesarm2021@gmail.com', 1, '648805', 3, '191-9398126-0-63', '350', '2024-04-18', 70, 1, 1, '1551413', '2375-284', 63, '1397', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44394', 63, 10, 3, 1, 0, '2024-06-19 16:49:32', '0000-00-00 00:00:00'),
(209, 2, '61030531', 'ARCE MACHA ZHARICK NICOLE', '41648674', 'ARCE MOSQUEIRA CESAR AUGUSTO', '981007620', 'hilaryjeannettearcemarch16@gmail.com', 1, '555196', 3, '191-9398126-0-63', '350', '2024-04-18', 70, 1, 1, '1551413', '2376-285', 63, '1397', 63, '', '350', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '34215', 63, 10, 3, 1, 0, '2024-06-19 17:01:06', '0000-00-00 00:00:00'),
(210, 2, '73776732', 'GARCIA LIMACHI REYNA JAZMIN ', '', '', '941997262', 'reynajazmingarcialimachi@gmail.com', 1, '5111250442', 2, '110-01-0416304', '100', '2024-01-26', 17, 1, 1, '1551413', '2377-286', 63, '233', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:25:58', '0000-00-00 00:00:00'),
(211, 2, '47877752', 'JORDAN INCA ANGELICA GUADALUPE ', '', '', '943893041', '2019233426@unfv.edu.pe', 1, '8386123', 3, '193-10853146-0-72', '100', '2024-01-22', 17, 1, 1, '1551413', '2378-287', 63, '239', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:31:52', '0000-00-00 00:00:00'),
(212, 2, '72813557', 'TIRADO BORJA JENNIFER DARELY', '', '', '953306553', '2023016205@unfv.edu.pe', 1, '8919567', 3, '193-10853146-0-72', '100', '2024-01-18', 17, 1, 1, '1551413', '2379-288', 63, '239', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:35:55', '0000-00-00 00:00:00'),
(213, 2, '71054856', 'DELGADO GALA YEODOLINDA RENE', '', '', '964390553', '2018006392@unfv.edu.pe', 1, '4617481005', 2, '110-01-0416304', '100', '2024-04-19', 17, 1, 1, '1551413', '2380-289', 63, '1552', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:39:22', '0000-00-00 00:00:00'),
(214, 2, '72357183', 'MILLONES TRUJILLO MARCELO ALEXANDER', '', '', '985037246', '2023014033@unfv.edu.pe', 1, '3617143426', 2, '110-01-0416304', '100', '2024-05-17', 17, 1, 1, '1551413', '2381-290', 63, '2121', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:42:49', '0000-00-00 00:00:00'),
(215, 2, '73048181', 'TORRES ROMERO ERIKA JOSELYN', '', '', '967716184', '2018024479@unfv.edu.pe', 1, '5117170150', 2, '110-01-0416304', '100', '2024-04-23', 17, 1, 1, '1551413', '2382-291', 63, '1552', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:46:04', '0000-00-00 00:00:00'),
(216, 2, '74215748', 'TITO MATOS ANNEL FANNY', '', '', '919566498', 'anneltitomatos2@gmail.com', 1, '977987', 3, '193-10853146-0-72', '100', '2024-05-10', 17, 1, 1, '1551413', '2383-292', 63, '2121', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:50:04', '0000-00-00 00:00:00'),
(217, 2, '72374222', 'MARILUZ GOMEZ CLAUDIA ISABEL', '', '', '962188651', 'claudiamar0801@gmail.com', 1, '880684', 3, '193-10853146-0-72', '100', '2024-04-29', 17, 1, 1, '1551413', '2384-293', 63, '1552', 63, '', '100', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:52:51', '0000-00-00 00:00:00'),
(218, 2, '25841906', 'CASTILLO ESENARRO MALINA ODELI ', '', '', '987242577', 'castilloesenarrom@gmail.com', 1, '3513072573', 2, '110-01-0416304', '180', '2024-01-10', 17, 1, 1, '1551413', '2385-294', 63, '233', 63, '', '180', '0', '0.00', '0', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', 4, '0000-00-00', 1, '', 1, '', 2, '44356', 63, 10, 3, 1, 0, '2024-06-20 11:56:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_devoluciones`
--

CREATE TABLE `tb_devoluciones` (
  `id_devolucion` int(11) NOT NULL,
  `nt` varchar(255) NOT NULL,
  `proveido` varchar(255) NOT NULL,
  `fecha_proveido` date NOT NULL,
  `oficio` varchar(255) NOT NULL,
  `fecha_oficio` date NOT NULL,
  `informe` int(11) NOT NULL,
  `fecha_informe` date NOT NULL,
  `observacion_devolucion` varchar(512) NOT NULL,
  `visible` int(11) NOT NULL,
  `id_dependencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_anio_nt` int(11) NOT NULL,
  `id_anio_periodo` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_devoluciones`
--

INSERT INTO `tb_devoluciones` (`id_devolucion`, `nt`, `proveido`, `fecha_proveido`, `oficio`, `fecha_oficio`, `informe`, `fecha_informe`, `observacion_devolucion`, `visible`, `id_dependencia`, `id_usuario`, `id_anio_nt`, `id_anio_periodo`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, '34690', '5430', '2024-05-13', '132-2024-EPCCOM-FCCSS-UNFV', '2024-05-13', 1, '2024-05-15', '', 0, 17, 9, 63, 63, '2024-05-14 14:28:11', '2024-05-21 11:15:32'),
(2, '33802', '5456', '2024-05-13', '1983-2024-OCRAC-VRAC-UNFV', '2024-05-13', 2, '2024-05-16', '', 0, 41, 9, 63, 63, '2024-05-14 14:29:51', '2024-05-21 11:15:34'),
(3, '21811', '5460', '2024-05-13', '462-2024-OGGE-FE-UNFV', '2024-04-07', 3, '2024-05-16', '', 0, 19, 9, 63, 63, '2024-05-14 14:31:28', '2024-05-21 11:15:37'),
(4, '32199', '5477', '2024-05-13', '093-2024-DEP-FAPS-UNFV ', '2024-04-29', 4, '2024-05-21', '', 0, 28, 7, 63, 63, '2024-05-14 14:36:09', '2024-06-20 10:09:02'),
(5, '35745', '5501', '2024-05-14', '525-2024-OCA-VRAC-UNFV', '2024-05-10', 5, '2024-05-15', 'ERROR AL REGISTRAR EL NT', 1, 1, 6, 63, 63, '2024-05-15 10:29:37', '2024-05-15 10:43:11'),
(6, '35475', '5501', '2024-05-14', '525-2024-OCA-VRAC-UNFV', '2024-05-10', 6, '2024-05-17', '', 0, 32, 9, 63, 63, '2024-05-15 10:34:09', '2024-05-21 11:29:49'),
(7, '35476', '5502', '2024-05-14', '524-2024-OCA-VRAC-UNFV', '2024-05-10', 7, '2024-05-17', '', 0, 32, 9, 63, 63, '2024-05-15 10:35:54', '2024-05-21 11:33:04'),
(8, '35716', '5518', '2024-05-14', '169-2024-D-CEPREVI-UNFV', '2024-05-14', 8, '2024-05-20', '', 0, 5, 7, 63, 63, '2024-05-16 09:12:55', '2024-05-22 09:40:54'),
(9, '34836', '5519', '2024-05-14', ' 071-2024-EPSO-FCCSS-UNFV', '2024-05-14', 9, '2024-05-22', '', 0, 17, 7, 63, 63, '2024-05-16 09:15:24', '2024-05-24 10:07:55'),
(10, '33928', '5531', '2024-05-14', '381-2024-AC-OA-EUPG-UNFV', '2024-05-09', 10, '2024-05-22', '', 0, 11, 7, 63, 63, '2024-05-16 09:17:01', '2024-05-27 09:59:44'),
(11, '35779', '5535', '2024-05-15', '287-2024-OGGE-FCFC-UNFV', '2024-05-13', 11, '2024-05-16', '', 0, 15, 7, 63, 63, '2024-05-16 09:18:24', '2024-05-23 09:15:45'),
(12, '34693', '5553', '2024-05-15', '133-2024-EPCCOM-FCCSS-UNFV', '2024-05-15', 12, '2024-05-22', '', 0, 17, 7, 63, 63, '2024-05-16 09:19:43', '2024-05-24 09:55:57'),
(13, '34391', '5327', '2024-05-09', '0194-2024-EPIT-FIIS-UNFV', '2024-05-08', 13, '2024-05-16', '', 0, 1, 6, 63, 63, '2024-05-16 12:02:20', '0000-00-00 00:00:00'),
(14, '13116', '5319', '2024-05-09', '367-2024-OA-AC-EUPG-UNFV', '2024-05-07', 14, '2024-05-22', '', 0, 11, 7, 63, 63, '2024-05-16 12:03:57', '2024-05-24 09:45:49'),
(15, '32724', '5366', '2024-05-10', '093-2024-DEP-FAPS-UNFV', '2024-04-29', 15, '2024-05-16', 'EL NT 32724 HA SIDO DUPLICADO CON EL NT 32199', 1, 1, 6, 63, 63, '2024-05-16 12:05:25', '2024-05-22 11:58:49'),
(16, '36199', '5626', '2024-05-16', '291-2024-OGGE-FCFC-UNFV', '2024-05-13', 16, '2024-05-17', '', 0, 1, 6, 63, 63, '2024-05-17 08:55:58', '2024-05-17 09:01:06'),
(17, '36239', '5628', '2024-05-16', '587-2024-OCA-VRAC-UNFV', '2024-05-15', 17, '2024-05-21', '', 0, 32, 7, 63, 63, '2024-05-17 09:02:39', '2024-05-23 09:19:56'),
(18, '36240', '5629', '2024-05-16', '588-2024-OCA-VRAC-UNFV', '2024-05-15', 18, '2024-05-21', '', 0, 32, 7, 63, 63, '2024-05-17 09:04:09', '2024-05-23 09:22:47'),
(19, '14149', '2127', '2024-02-23', '023-2024-CSE-FTM-UNFV', '2024-02-21', 19, '2024-05-17', '', 0, 29, 7, 63, 63, '2024-05-17 15:09:15', '2024-05-22 09:58:49'),
(20, '35103', '5693', '2024-05-17', '604-2024-OCA-VRAC-UNFV', '2024-05-17', 20, '2024-05-21', '', 0, 32, 7, 63, 63, '2024-05-21 14:35:36', '2024-05-23 09:27:17'),
(21, '36600', '5647', '2024-05-16', '171-2024-D-CEPREVI-UNFV', '2024-05-16', 21, '2024-05-22', '', 0, 5, 7, 63, 63, '2024-05-21 14:37:12', '2024-05-24 10:11:34'),
(22, '32000', '5813', '2024-05-21', '566-2024-OCA-VRAC-UNFV', '2024-05-15', 22, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:45:11', '2024-05-30 16:36:06'),
(23, '32037', '5819', '2024-05-21', '567-2024-OCA-VRAC-UNFV', '2024-05-15', 23, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:46:19', '2024-05-30 16:38:10'),
(24, '36967', '5820', '2024-05-21', '547-2024-OCA-VRAC-UNFV ', '2024-05-15', 24, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:47:30', '2024-05-30 16:40:00'),
(25, '36968', '5822', '2024-05-21', '548-2024-OCA-VRAC-UNFV', '2024-05-15', 25, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:48:32', '2024-05-30 16:42:16'),
(26, '36969', '5823', '2024-05-21', '549-2024-OCA-VRAC-UNFV', '2024-05-15', 26, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:49:30', '2024-05-31 10:14:29'),
(27, '36970', '5825', '2024-05-21', '550-2024-OCA-VRAC-UNFV', '2024-05-15', 27, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:51:08', '2024-05-31 10:16:36'),
(28, '37021', '5830', '2024-05-21', '210-2024-EPIT-FIIS-UNFV', '2024-05-16', 28, '2024-06-04', '', 0, 24, 7, 63, 63, '2024-05-23 14:52:29', '2024-06-13 11:40:21'),
(29, '32063', '5831', '2024-05-21', '609-2024-OCA-VRAC-UNFV', '2024-05-17', 29, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 14:53:24', '2024-05-31 10:23:32'),
(30, '37597', '5833', '2024-05-21', '18-2024-UPG-FCFC-UNFV', '2024-05-20', 30, '2024-05-27', '', 0, 15, 7, 63, 63, '2024-05-23 14:54:31', '2024-05-31 10:25:35'),
(31, '37745', '5852', '2024-05-22', '645-2024-OCA-VRAC-UNFV', '2024-05-17', 31, '2024-05-28', '', 0, 32, 7, 63, 63, '2024-05-23 14:56:13', '2024-06-03 11:19:36'),
(32, '72756', '433', '2024-01-11', '143-2024-EPIS-FIIS-UNFV', '2024-05-16', 32, '2024-05-23', '', 0, 1, 6, 63, 63, '2024-05-23 15:10:07', '0000-00-00 00:00:00'),
(33, '86284', '5722', '2024-05-20', '42-2024-UPG-FE-UNFV ', '2024-05-15', 33, '2024-05-23', '', 0, 19, 7, 63, 63, '2024-05-23 15:13:03', '2024-05-27 10:22:05'),
(34, '31999', '5723', '2024-05-20', '565-2024-OCA-VRAC-UNFV', '2024-05-15', 34, '2024-05-23', '', 0, 32, 10, 63, 63, '2024-05-23 15:14:04', '2024-06-12 16:26:33'),
(35, '31997', '5724', '2024-05-20', '564-2024-OCA-VRAC-UNFV', '2024-05-17', 35, '2024-05-23', '', 0, 32, 7, 63, 63, '2024-05-23 15:15:00', '2024-05-27 10:28:02'),
(36, '31984', '5725', '2024-05-20', '563-2024-OCA-VRAC-UNFV', '2024-05-15', 36, '2024-05-23', '', 0, 32, 7, 63, 63, '2024-05-23 15:15:50', '2024-05-27 10:32:47'),
(37, '31586', '5726', '2024-05-20', '562-2024-OCA-VRAC-UNFV', '2024-05-15', 37, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:16:50', '2024-05-30 15:43:35'),
(38, '31520', '5727', '2024-05-20', '561-2024-OCA-VRAC-UNFV', '2024-05-15', 38, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:18:06', '2024-05-30 15:47:08'),
(39, '31443', '5729', '2024-05-20', '552-2024-OCA-VRAC-UNFV', '2024-05-15', 39, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:18:52', '2024-05-30 15:50:11'),
(40, '32125', '5774', '2024-05-21', '613-2024-OCA-VRAC-UNFV', '2024-05-17', 40, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:19:38', '2024-05-30 15:54:39'),
(41, '32099', '5773', '2024-05-21', '612-2024-OCA-VRAC-UNFV', '2024-05-17', 41, '2024-05-24', '', 0, 32, 10, 63, 63, '2024-05-23 15:20:49', '2024-05-24 09:48:17'),
(42, '32079', '5772', '2024-05-21', '611-2024-OCA-VRAC-UNFV', '2024-05-17', 42, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:23:28', '2024-05-30 16:01:15'),
(43, '32074', '5771', '2024-05-21', '610-2024-OCA-VRAC-UNFV', '2024-05-17', 43, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:25:16', '2024-05-30 16:03:01'),
(44, '32231', '5775', '2024-05-21', '636-2024-OCA-VRAC-UNFV', '2024-05-17', 44, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:26:10', '2024-05-30 16:07:51'),
(45, '32324', '5776', '2024-05-21', '637-2024-OCA-VRAC-UNFV', '2024-05-17', 45, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:27:05', '2024-05-30 16:11:43'),
(46, '37369', '5777', '2024-05-21', '568-2024-OCA-VRAC-UNFV', '2024-05-17', 46, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:27:56', '2024-05-30 16:14:15'),
(47, '37370', '5778', '2024-05-21', '569-2024-OCA-VRAC-UNFV', '2024-05-17', 47, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:28:50', '2024-05-30 16:16:25'),
(48, '37371', '5779', '2024-05-21', '605-2024-OCA-VRAC-UNFV', '2024-05-17', 48, '2024-05-24', '', 0, 32, 10, 63, 63, '2024-05-23 15:29:44', '2024-05-27 16:04:41'),
(49, '37372', '5780', '2024-05-21', '606-2024-OCA-VRAC-UNFV', '2024-05-17', 49, '2024-05-24', '', 0, 32, 7, 63, 63, '2024-05-23 15:30:42', '2024-05-30 16:18:26'),
(50, '37373', '5781', '2024-05-21', '607-2024-OCA-VRAC-UNFV', '2024-05-17', 50, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-23 15:31:43', '2024-05-30 16:24:06'),
(51, '37374', '5782', '2024-05-21', '608-2024-OCA-VRAC-UNFV', '2024-05-17', 51, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-24 08:51:23', '2024-05-30 16:26:06'),
(52, '32336', '5846', '2024-05-22', '638-2024-OCA-VRAC-UNFV', '2024-05-17', 52, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-24 08:57:01', '2024-06-20 10:11:39'),
(53, '37740', '5847', '2024-05-22', '639-2024-OCA-VRAC-UNFV', '2024-05-17', 53, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-24 08:58:22', '2024-05-30 16:28:26'),
(54, '37742', '5849', '2024-05-22', '642-2024-OCA-VRAC-UNFV', '2024-05-17', 54, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-24 08:59:41', '2024-05-30 16:30:16'),
(55, '37743', '5850', '2024-05-22', '643-2024-OCA-VRAC-UNFV', '2024-05-17', 55, '2024-05-27', '', 0, 32, 10, 63, 63, '2024-05-24 09:00:26', '2024-05-27 11:49:23'),
(56, '37744', '5851', '2024-05-22', '644-2024-OCA-VRAC-UNFV', '2024-05-17', 56, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-24 09:01:19', '2024-05-30 16:32:21'),
(57, '37746', '5853', '2024-05-22', '640-2024-OCA-VRAC-UNFV', '2024-05-17', 57, '2024-05-27', '', 0, 32, 7, 63, 63, '2024-05-24 09:02:17', '2024-05-30 16:34:16'),
(58, '37282', '5860', '2024-05-22', '174-2024-D-CEPREVI-UNFV', '2024-05-22', 58, '2024-05-24', '', 0, 1, 6, 63, 63, '2024-05-24 09:06:09', '0000-00-00 00:00:00'),
(59, '37121', '5861', '2024-05-22', '175-2024-D-CEPREVI-UNFV', '2024-05-22', 59, '2024-05-24', '', 0, 1, 6, 63, 63, '2024-05-24 09:06:59', '0000-00-00 00:00:00'),
(60, '36971', '5730', '2024-05-20', '551-2024-OCA-VRAC-UNFV', '2024-05-15', 60, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 11:46:31', '2024-06-03 16:05:30'),
(61, '18754', '5915', '2024-05-23', '0079-2024-EPO-FMHU-UNFV-VIRTUAL', '2024-05-20', 61, '2024-05-28', '', 0, 25, 7, 63, 63, '2024-05-24 11:47:08', '2024-06-03 13:29:57'),
(62, '38227', '5926', '2024-05-23', '658-2024-OCA-VRAC-UNFV', '2024-05-21', 62, '2024-05-28', '', 0, 32, 7, 63, 63, '2024-05-24 11:47:48', '2024-06-03 11:46:58'),
(63, '38230', '5927', '2024-05-23', '659-2024-OCA-VRAC-UNFV', '2024-05-21', 63, '2024-05-28', '', 0, 32, 7, 63, 63, '2024-05-24 11:48:30', '2024-06-03 12:04:05'),
(64, '38231', '5928', '2024-05-23', '660-2024-OCA-VRAC-UNFV', '2024-05-21', 64, '2024-05-28', '', 0, 32, 7, 63, 63, '2024-05-24 11:49:19', '2024-06-03 11:50:04'),
(65, '38064', '5937', '2024-05-23', '625-2024-OCA-VRAC-UNFV', '2024-05-16', 65, '2024-05-29', '', 0, 32, 10, 63, 63, '2024-05-24 11:50:02', '2024-05-29 09:05:58'),
(66, '38063', '5938', '2024-05-23', '624-2024-OCA-VRAC-UNFV', '2024-05-16', 66, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 11:50:42', '2024-06-03 13:37:06'),
(67, '37163', '5932', '2024-05-23', '177-2024-D-CEPREVI-UNFV', '2024-05-22', 67, '2024-05-24', '', 0, 1, 6, 63, 63, '2024-05-24 11:51:20', '0000-00-00 00:00:00'),
(68, '37273', '5934', '2024-05-23', '176-2024-D-CEPREVI-UNFV', '2024-05-22', 68, '2024-05-24', '', 0, 1, 6, 63, 63, '2024-05-24 11:52:25', '0000-00-00 00:00:00'),
(69, '37969', '5930', '2024-05-23', '262-2024-EPC-FCFC-UNFV', '2024-05-22', 69, '2024-05-29', '', 0, 15, 7, 63, 63, '2024-05-24 11:53:22', '2024-06-03 13:40:31'),
(70, '32911', '5931', '2024-05-23', '656-2024-OCA-VRAC-UNFV', '2024-05-22', 70, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 11:54:04', '2024-06-03 13:43:20'),
(71, '32489', '5966', '2024-05-24', '663-2024-OCA-VRAC-UNFVV', '2024-05-21', 71, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 14:46:30', '2024-06-03 13:48:32'),
(72, '32536', '5967', '2024-05-24', '664-2024-OCA-VRAC-UNFV', '2024-05-21', 72, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 14:47:20', '2024-06-03 13:46:11'),
(73, '32658', '5968', '2024-05-24', '665-2024-OCA-VRAC-UNFV', '2024-05-21', 73, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 14:48:00', '2024-06-03 13:52:33'),
(74, '32663', '5969', '2024-05-24', '672-2024-OCA-VRAC-UNFV', '2024-05-22', 74, '2024-05-29', '', 0, 32, 7, 63, 63, '2024-05-24 14:48:48', '2024-06-13 11:36:41'),
(75, '32664', '5970', '2024-05-24', '673-2024-OCA-VRAC-UNFV', '2024-05-22', 75, '2024-06-03', '', 0, 32, 7, 63, 63, '2024-05-24 14:49:30', '2024-06-10 16:39:37'),
(76, '38271', '5971', '2024-05-24', '264-2024-EPC-FCFC-UNFV ', '2024-05-23', 76, '2024-05-24', '', 0, 1, 6, 63, 63, '2024-05-24 14:50:26', '0000-00-00 00:00:00'),
(77, '37351', '6004', '2024-05-24', '406-2024-OA-AC-EUPG-UNFV', '2024-05-22', 77, '2024-05-29', '', 0, 11, 7, 63, 63, '2024-05-28 10:47:09', '2024-06-03 13:57:20'),
(78, '38346', '6026', '2024-05-27', '408-2024-OA-AC-EUPG-UNFV', '2024-05-23', 78, '2024-05-29', '', 0, 11, 7, 63, 63, '2024-05-28 10:48:27', '2024-06-03 15:45:38'),
(79, '38237', '6027', '2024-05-27', '674-2024-OCA-VRAC-UNFV', '2024-05-22', 79, '2024-05-30', '', 0, 32, 7, 63, 63, '2024-05-28 10:49:31', '2024-06-04 10:41:39'),
(80, '38768', '6028', '2024-05-27', '661-2024-OCA-VRAC-UNFV', '2024-05-21', 80, '2024-05-30', '', 0, 32, 7, 63, 63, '2024-05-28 10:50:21', '2024-06-03 16:18:14'),
(81, '38769', '6029', '2024-05-27', '662-2024-OCA-VRAC-UNFV', '2024-05-21', 81, '2024-05-30', '', 0, 32, 7, 63, 63, '2024-05-28 10:51:03', '2024-06-03 16:20:37'),
(82, '38994', '6044', '2024-05-27', '266-2024-EPC-FCFC-UNFV', '2024-05-24', 82, '2024-05-28', '', 0, 1, 6, 63, 63, '2024-05-28 10:52:06', '0000-00-00 00:00:00'),
(83, '32666', '6086', '2024-05-28', '675-2024-OCA-VRAC-UNFV', '2024-05-24', 83, '2024-05-31', '', 0, 32, 7, 63, 63, '2024-05-29 10:27:09', '2024-06-10 16:11:23'),
(84, '32731', '6087', '2024-05-28', '676-2024-OCA-VRAC-UNFV', '2024-05-24', 84, '2024-05-31', '', 0, 32, 7, 63, 63, '2024-05-29 10:33:28', '2024-06-10 16:13:24'),
(85, '32847', '6088', '2024-05-28', '677-2024-OCA-VRAC-UNFV', '2024-05-24', 85, '2024-05-31', '', 0, 32, 7, 63, 63, '2024-05-29 10:35:51', '2024-06-10 16:20:20'),
(86, '32891', '6116', '2024-05-28', '678-2024-OCA-VRAC-UNFV', '2024-05-24', 86, '2024-05-31', '', 0, 32, 7, 63, 63, '2024-05-29 10:36:38', '2024-06-10 16:22:12'),
(87, '35701', '6117', '2024-05-28', '398-2024-OA-ACEUPG-UNFV', '2024-05-21', 87, '2024-05-31', '', 0, 11, 7, 63, 63, '2024-05-29 10:37:53', '2024-06-10 16:23:59'),
(88, '36676', '5698', '2024-05-17', '546-2024-OCA-VRAC-UNFV', '2024-05-15', 88, '2024-05-31', '', 0, 32, 7, 63, 63, '2024-05-29 10:38:43', '2024-06-10 16:27:38'),
(89, '33121', '6179', '2024-05-29', '691-2024-OCA-VRAC-UNFV', '2024-05-27', 89, '2024-06-03', '', 0, 32, 7, 63, 63, '2024-05-30 10:15:29', '2024-06-10 16:30:30'),
(90, '33000', '6180', '2024-05-29', '690-2024-OCA-VRAC-UNFV', '2024-05-27', 90, '2024-06-03', '', 0, 32, 7, 63, 63, '2024-05-30 10:16:06', '2024-06-10 16:32:49'),
(91, '32926', '6181', '2024-05-29', '689-2024-OCA-VRAC-UNFV', '2024-05-27', 91, '2024-06-03', '', 0, 32, 7, 63, 63, '2024-05-30 10:16:47', '2024-06-10 16:35:18'),
(92, '32919', '6182', '2024-05-29', '688-2024-OCA-VRAC-UNFV', '2024-05-27', 92, '2024-06-03', '', 0, 32, 7, 63, 63, '2024-05-30 10:17:23', '2024-06-10 16:37:35'),
(93, '35220', '6268', '2024-05-30', '718-2024-OCA-VRAC-UNFV', '2024-05-29', 93, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-05-31 13:58:03', '2024-06-10 17:03:10'),
(94, '40030', '6271', '2024-05-30', '0692-2024-OCA-VRAC-UNFV', '2024-05-27', 94, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-05-31 13:58:46', '2024-06-10 16:45:44'),
(95, '33150', '6272', '2024-05-30', '693-2024-OCA-VRAC-UNFV', '2024-05-27', 95, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-05-31 13:59:15', '2024-06-10 16:41:28'),
(96, '33173', '6273', '2024-05-30', '694-2024-OCA-VRAC-UNFV', '2024-05-27', 96, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-05-31 14:00:01', '2024-06-10 16:49:46'),
(97, '33175', '6274', '2024-05-30', '695-2024-OCA-VRAC-UNFV', '2024-05-27', 97, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-05-31 14:00:35', '2024-06-10 16:47:45'),
(98, '33182', '6276', '2024-05-30', '697-2024-OCA-VRAC-UNFV', '2024-05-27', 98, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-05-31 14:01:48', '2024-06-10 16:53:04'),
(99, '36186', '6304', '2024-05-30', '0171-2024-EPIS-FIIS-UNFV', '2024-05-29', 99, '2024-06-04', '', 0, 24, 7, 63, 63, '2024-05-31 14:02:25', '2024-06-10 17:00:45'),
(100, '33794', '6277', '2024-05-30', '182-2024-D-CEPREVI-UNFV', '2024-05-30', 100, '2024-06-04', '', 0, 5, 7, 63, 63, '2024-05-31 14:03:06', '2024-06-10 16:55:26'),
(101, '39775', '6305', '2024-05-30', '0172-2024-EPIS-FIIS-UNFV', '2024-05-30', 101, '2024-06-04', '', 0, 24, 7, 63, 63, '2024-05-31 14:03:44', '2024-06-13 11:48:22'),
(102, '36202', '6256', '2024-05-30', '397-2024-OA-AC-EUPG-UNFV', '2024-05-21', 102, '2024-05-31', '', 0, 1, 6, 63, 63, '2024-05-31 14:51:47', '0000-00-00 00:00:00'),
(103, '36499', '6259', '2024-05-30', '400-2024-OA-AC-EUPG-UNFV ', '2024-05-21', 103, '2024-06-04', '', 0, 11, 7, 63, 63, '2024-05-31 14:52:33', '2024-06-13 11:50:53'),
(104, '36457', '6262', '2024-05-30', '402-2024-OA-AC-EUPG-UNFV ', '2024-05-21', 104, '2024-06-05', '', 0, 11, 7, 63, 63, '2024-05-31 14:53:13', '2024-06-13 11:54:02'),
(105, '35538', '6267', '2024-05-30', '401-2024-OA-AC-EUPG-UNFV', '2024-05-21', 105, '2024-05-31', '', 0, 1, 6, 63, 63, '2024-05-31 14:53:51', '0000-00-00 00:00:00'),
(106, '35530', '6269', '2024-05-30', '399-2024-OA-AC-EUPG-UNFV', '2024-05-21', 106, '2024-05-31', '', 0, 1, 6, 63, 63, '2024-05-31 14:54:27', '0000-00-00 00:00:00'),
(107, '36101', '6280', '2024-05-30', '049-2024-UPG-FE-UNFV', '2024-05-27', 107, '2024-06-05', '', 0, 19, 7, 63, 63, '2024-05-31 14:55:09', '2024-06-13 11:55:46'),
(108, '29570', '6323', '2024-05-31', '0679-2024-OCA-VRAC-UNFV', '2024-05-24', 108, '2024-06-05', '', 0, 32, 7, 63, 63, '2024-05-31 15:37:57', '2024-06-13 11:57:26'),
(109, '39015', '6329', '2024-05-31', '0118-2024-D-FA-UNFV', '2024-05-30', 109, '2024-05-31', '', 0, 1, 6, 63, 63, '2024-05-31 15:39:16', '0000-00-00 00:00:00'),
(110, '39114', '6340', '2024-05-31', '150-2024-VIRTUAL-EPE-FCE-UNFV', '2024-05-29', 110, '2024-06-05', '', 0, 14, 7, 63, 63, '2024-05-31 15:40:24', '2024-06-13 12:00:34'),
(111, '40614', '6363', '2024-05-31', '0424-2024-OA-EUPG-UNFV', '2024-05-28', 111, '2024-06-03', '', 0, 1, 6, 63, 63, '2024-06-03 15:12:13', '0000-00-00 00:00:00'),
(112, '33181', '6275', '2024-05-30', '696-2024-OCA-VRAC-UNFV', '2024-05-27', 112, '2024-06-04', '', 0, 32, 7, 63, 63, '2024-06-04 10:22:46', '2024-06-10 16:51:33'),
(113, '14451', '6371', '2024-05-31', '487-2024-OGGE-FTM-UNFV', '2024-05-15', 113, '2024-06-12', '', 0, 29, 7, 63, 63, '2024-06-06 14:40:51', '2024-06-20 11:13:56'),
(114, '39322', '6399', '2024-06-03', '416-2024-OA-AC-EUPG-UNFV', '2024-05-28', 114, '2024-06-10', '', 0, 11, 7, 63, 63, '2024-06-06 14:52:06', '2024-06-13 12:13:13'),
(115, '40810', '6400', '2024-06-03', '054-2024-ETRM-UPG-FMHU-UNFV', '2024-05-30', 115, '2024-06-06', '', 0, 1, 6, 63, 63, '2024-06-06 14:52:53', '0000-00-00 00:00:00'),
(116, '40809', '6401', '2024-06-03', '053-2024-ETRM-UPG-FMHU-UNFV', '2024-05-30', 116, '2024-06-06', '', 0, 1, 6, 63, 63, '2024-06-06 14:54:25', '0000-00-00 00:00:00'),
(117, '19932', '6540', '2024-06-05', '084-2024-VIRTUAL-JCJH-EPCP-FDCP-UNFV', '2024-05-23', 117, '2024-06-10', '', 0, 18, 7, 63, 63, '2024-06-06 14:56:08', '2024-06-13 12:15:00'),
(118, '34670', '6541', '2024-06-05', '0178-2024-EPIS-FIIS-UNFV', '2024-06-04', 118, '2024-06-11', '', 0, 24, 7, 63, 63, '2024-06-06 15:01:20', '2024-06-13 12:16:40'),
(119, '41823', '6542', '2024-06-05', '419-2024-OA-AC-EUPG-UNFV', '2024-05-30', 119, '2024-06-11', '', 0, 11, 7, 63, 63, '2024-06-06 15:02:01', '2024-06-20 10:22:31'),
(120, '30919', '6543', '2024-06-05', '698-2024-OCA-VRAC-UNFV', '2024-05-31', 120, '2024-06-11', '', 0, 32, 7, 63, 63, '2024-06-06 15:02:46', '2024-06-13 12:22:15'),
(121, '30655', '6544', '2024-06-05', '700-2024-OCA-VRAC-UNFV', '2024-05-31', 121, '2024-06-11', '', 0, 32, 7, 63, 63, '2024-06-06 15:03:19', '2024-06-20 10:24:34'),
(122, '31207', '6545', '2024-06-05', '701-2024-OCA-VRAC-UNFV', '2024-05-31', 122, '2024-06-11', '', 0, 32, 10, 63, 63, '2024-06-06 15:03:53', '2024-06-11 15:10:52'),
(123, '42122', '6566', '2024-06-06', '095-2024-EPLAP-FTM-UNFV', '2024-05-28', 123, '2024-06-11', '', 0, 29, 7, 63, 63, '2024-06-10 12:42:00', '2024-06-20 10:27:15'),
(124, '5478', '6584', '2024-06-06', '0478-2024-OGGE-FA-UNFV', '2024-06-04', 124, '2024-06-11', '', 0, 12, 7, 63, 63, '2024-06-10 12:42:53', '2024-06-20 10:30:44'),
(125, '10100', '6585', '2024-06-06', '0479-2024-OGGE-FA-UNFV', '2024-06-04', 125, '2024-06-12', '', 0, 12, 10, 63, 63, '2024-06-10 12:43:34', '2024-06-12 10:53:47'),
(126, '33547', '6650', '2024-06-10', '705-2024-OCA-VRAC-UNFV', '2024-06-03', 126, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:44:27', '2024-06-20 10:33:09'),
(127, '33490', '6651', '2024-06-10', '704-2024-OCA-VRAC-UNFV', '2024-06-03', 127, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:45:08', '2024-06-20 10:35:04'),
(128, '33379', '6652', '2024-06-10', '703-2024-OCA-VRAC-UNFV', '2024-05-31', 128, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:45:45', '2024-06-20 10:36:53'),
(129, '33489', '6653', '2024-06-10', '702-2024-OCA-VRAC-UNFV', '2024-06-03', 129, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:46:15', '2024-06-20 10:45:50'),
(130, '33918', '6654', '2024-06-10', '717-2024-OCA-VRAC-UNFV', '2024-06-03', 130, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:46:44', '2024-06-20 10:50:00'),
(131, '33785', '6655', '2024-06-10', '716-2024-OCA-VRAC-UNFV', '2024-06-03', 131, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:47:20', '2024-06-20 10:52:58'),
(132, '33761', '6656', '2024-06-10', '715-2024-OCA-VRAC-UNFV', '2024-06-03', 132, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:47:53', '2024-06-20 10:55:15'),
(133, '33760', '6657', '2024-06-10', '714-2024-OCA-VRAC-UNFV', '2024-06-03', 133, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:48:29', '2024-06-20 10:57:06'),
(134, '33755', '6658', '2024-06-10', '713-2024-OCA-VRAC-UNFV', '2024-06-03', 134, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:49:01', '2024-06-20 10:59:45'),
(135, '33580', '6659', '2024-06-10', '711-2024-OCA-VRAC-UNFV', '2024-06-03', 135, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:49:32', '2024-06-20 11:01:23'),
(136, '33740', '6660', '2024-06-10', '712-2024-OCA-VRAC-UNFV', '2024-06-03', 136, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:50:07', '2024-06-20 11:03:33'),
(137, '42780', '6661', '2024-06-10', '709-2024-OCA-VRAC-UNFV', '2024-06-03', 137, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:50:39', '2024-06-20 11:05:04'),
(138, '42781', '6662', '2024-06-10', '710-2024-OCA-VRAC-UNFV', '2024-06-03', 138, '2024-06-12', '', 0, 32, 7, 63, 63, '2024-06-10 12:51:13', '2024-06-20 11:06:56'),
(139, '41582', '6606', '2024-06-06', '710-2024-OCA-VRAC-UNFV', '2024-06-06', 139, '2024-06-10', '', 0, 1, 6, 63, 63, '2024-06-10 12:51:50', '0000-00-00 00:00:00'),
(140, '40919', '6624', '2024-06-06', '206-VIRTUAL-2024-OGGE-FCE-UNFV', '2024-06-05', 140, '2024-06-12', '', 0, 14, 7, 63, 63, '2024-06-10 12:52:33', '2024-06-20 11:10:38'),
(141, '39160', '6671', '2024-06-10', '193-2024-D-CEPREVI-UNFV', '2024-06-10', 141, '2024-06-10', '', 0, 1, 6, 63, 63, '2024-06-10 12:53:05', '0000-00-00 00:00:00'),
(142, '38826', '6729', '2024-06-10', '194-2024-D-CEPREVI-UNFV', '2024-06-10', 142, '2024-06-12', '', 0, 1, 6, 63, 63, '2024-06-12 12:25:25', '0000-00-00 00:00:00'),
(143, '33789', '6738', '2024-06-11', '752-2024-OCA-VRAC-UNFV', '2024-06-06', 143, '2024-06-13', '', 0, 32, 7, 63, 63, '2024-06-12 12:26:13', '2024-06-20 11:19:56'),
(144, '33764', '6739', '2024-06-11', '753-2024-OCA-VRAC-UNFV', '2024-06-06', 144, '2024-06-13', '', 0, 32, 7, 63, 63, '2024-06-12 12:26:57', '2024-06-20 11:21:45'),
(145, '33873', '6740', '2024-06-11', '754-2024-OCA-VRAC-UNFV', '2024-06-06', 145, '2024-06-13', '', 0, 32, 10, 63, 63, '2024-06-12 12:27:40', '2024-06-13 16:08:02'),
(146, '37741', '6758', '2024-06-11', '0641-2024-OCA-VRAC-UNFV', '2024-05-17', 146, '2024-06-13', '', 0, 32, 7, 63, 63, '2024-06-12 12:28:18', '2024-06-20 11:23:42'),
(147, '43332', '6759', '2024-06-11', '755-2024-OCA-VRAC-UNFV', '2024-06-06', 147, '2024-06-13', '', 0, 32, 7, 63, 63, '2024-06-12 12:29:02', '2024-06-20 11:25:30'),
(148, '43130', '6837', '2024-06-12', 'RESOLUCION DIRECTORAL N°1770-2024-DIGA-UNFV', '2024-04-11', 148, '2024-06-18', '', 0, 14, 7, 63, 63, '2024-06-13 10:25:28', '2024-06-20 11:30:55'),
(149, '40988', '6823', '2024-06-12', '77-2024-OGYGE-FIIS-UNFV', '2024-05-02', 149, '2024-06-18', '', 0, 24, 7, 63, 63, '2024-06-13 10:26:13', '2024-06-20 11:32:45'),
(150, '34238', '6819', '2024-06-12', '759-2024-OCA-VRAC-UNFV', '2024-06-06', 150, '2024-06-18', '', 0, 32, 7, 63, 63, '2024-06-13 10:26:53', '2024-06-20 11:34:28'),
(151, '34228', '6820', '2024-06-12', '758-2024-OCA-VRAC-UNFV', '2024-06-06', 151, '2024-06-18', '', 0, 32, 7, 63, 63, '2024-06-13 10:28:25', '2024-06-20 11:36:01'),
(152, '34198', '6821', '2024-06-12', '756-2024-OCA-VRAC-UNFV', '2024-06-06', 152, '2024-06-18', '', 0, 32, 7, 63, 63, '2024-06-13 10:29:04', '2024-06-20 11:37:38'),
(153, '34396', '6822', '2024-06-12', '766-2024-OCA-VRAC-UNFV', '2024-06-10', 153, '2024-06-18', '', 0, 32, 7, 63, 63, '2024-06-13 10:29:43', '2024-06-20 11:39:26'),
(154, '35030', '6829', '2024-06-12', '769--2024-OCA-VRAC-UNFV', '2024-06-10', 154, '2024-06-18', '', 0, 32, 7, 63, 63, '2024-06-13 10:30:32', '2024-06-20 11:40:49'),
(155, '34958', '6830', '2024-06-12', '768--2024-OCA-VRAC-UNFV', '2024-06-10', 155, '2024-06-18', '', 0, 32, 7, 63, 63, '2024-06-13 10:31:38', '2024-06-20 11:42:39'),
(156, '27678', '6843', '2024-06-12', '362-2024-UPG-FMHU-UNFV', '2024-06-11', 156, '2024-06-19', '', 0, 25, 10, 63, 63, '2024-06-13 10:32:26', '2024-06-19 10:08:25'),
(157, '35189', '6912', '2024-06-13', '770--2024-OCA-VRAC-UNFV', '2024-06-11', 157, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:07:34', '2024-06-19 10:14:52'),
(158, '35320', '6913', '2024-06-13', '771--2024-OCA-VRAC-UNFV', '2024-06-10', 158, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:08:09', '2024-06-19 11:00:35'),
(159, '35340', '6914', '2024-06-13', '772--2024-OCA-VRAC-UNFV', '2024-06-10', 159, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:08:48', '2024-06-19 11:09:12'),
(160, '35516', '6915', '2024-06-13', '773--2024-OCA-VRAC-UNFV', '2024-06-10', 160, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:09:27', '2024-06-19 11:47:54'),
(161, '40206', '6940', '2024-06-13', '122-2024-EPA-FAU-UNFV', '2024-06-13', 161, '2024-06-17', '', 0, 1, 6, 63, 63, '2024-06-17 14:09:58', '0000-00-00 00:00:00'),
(162, '44524', '6973', '2024-06-14', '775--2024-OCA-VRAC-UNFV', '2024-06-12', 162, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:10:32', '2024-06-19 16:20:01'),
(163, '44525', '6974', '2024-06-14', '780--2024-OCA-VRAC-UNFV', '2024-06-12', 163, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:11:09', '2024-06-19 16:41:13'),
(164, '44394', '6977', '2024-06-14', '774--2024-OCA-VRAC-UNFV', '2024-06-12', 164, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:14:17', '2024-06-19 16:50:30'),
(165, '34215', '6918', '2024-06-13', '757-2024-OCA-VRAC-UNFV', '2024-06-06', 165, '2024-06-19', '', 0, 32, 10, 63, 63, '2024-06-17 14:14:48', '2024-06-19 17:01:50'),
(166, '44356', '7002', '2024-06-17', '094-2024-CGCFV-UNFV', '2024-06-13', 166, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 09:57:49', '0000-00-00 00:00:00'),
(167, '44962', '7004', '2024-06-17', '0784--2024-OCA-VRAC-UNFV', '2024-06-12', 167, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 09:58:34', '0000-00-00 00:00:00'),
(168, '44960', '7005', '2024-06-17', '782--2024-OCA-VRAC-UNFV', '2024-06-12', 168, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 09:59:05', '0000-00-00 00:00:00'),
(169, '44959', '7006', '2024-06-17', '0781--2024-OCA-VRAC-UNFV', '2024-06-12', 169, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 09:59:33', '0000-00-00 00:00:00'),
(170, '44961', '7007', '2024-06-17', '0783--2024-OCA-VRAC-UNFV', '2024-06-12', 170, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:00:08', '0000-00-00 00:00:00'),
(171, '35618', '7008', '2024-06-17', '0788--2024-OCA-VRAC-UNFV', '2024-06-12', 171, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:00:51', '0000-00-00 00:00:00'),
(172, '44958', '7009', '2024-06-17', '0787--2024-OCA-VRAC-UNFV', '2024-06-12', 172, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:01:23', '0000-00-00 00:00:00'),
(173, '18753', '7045', '2024-06-17', '0096-2024-EPO-FMHU-UNFV-VIRTUAL.', '2024-06-14', 173, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:02:07', '0000-00-00 00:00:00'),
(174, '19172', '7046', '2024-06-17', '0096-2024-EPO-FMHU-UNFV-VIRTUAL.', '2024-06-14', 174, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:02:38', '0000-00-00 00:00:00'),
(175, '44977', '7047', '2024-06-17', '065-2024-ETRM-UPG-FMHU-UNFV', '2024-06-12', 175, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:03:09', '0000-00-00 00:00:00'),
(176, '42808', '7052', '2024-06-17', '198-2024-D-CEPREVI-UNFV', '2024-06-12', 176, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 10:03:38', '0000-00-00 00:00:00'),
(177, '44141', '6991', '2024-06-14', '789--2024-OCA-VRAC-UNFV', '2024-06-12', 177, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:32:59', '0000-00-00 00:00:00'),
(178, '44616', '6992', '2024-06-14', '786--2024-OCA-VRAC-UNFV', '2024-06-12', 178, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:33:28', '0000-00-00 00:00:00'),
(179, '45368', '7076', '2024-06-18', '806--2024-OCA-VRAC-UNFV', '2024-06-14', 179, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:33:59', '0000-00-00 00:00:00'),
(180, '35669', '7077', '2024-06-18', '805--2024-OCA-VRAC-UNFV', '2024-06-14', 180, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:34:27', '0000-00-00 00:00:00'),
(181, '35671', '7078', '2024-06-18', '807--2024-OCA-VRAC-UNFV', '2024-06-14', 181, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:34:59', '0000-00-00 00:00:00'),
(182, '35766', '7079', '2024-06-18', '808--2024-OCA-VRAC-UNFV', '2024-06-14', 182, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:36:11', '0000-00-00 00:00:00'),
(183, '36179', '7080', '2024-06-18', '809--2024-OCA-VRAC-UNFV', '2024-06-14', 183, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:36:44', '0000-00-00 00:00:00'),
(184, '36948', '7081', '2024-06-18', '810--2024-OCA-VRAC-UNFV', '2024-06-14', 184, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:37:16', '0000-00-00 00:00:00'),
(185, '38002', '7082', '2024-06-18', '814--2024-OCA-VRAC-UNFV', '2024-06-17', 185, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:37:48', '0000-00-00 00:00:00'),
(186, '37266', '7083', '2024-06-18', '813--2024-OCA-VRAC-UNFV', '2024-06-14', 186, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:38:18', '0000-00-00 00:00:00'),
(187, '37264', '7084', '2024-06-18', '812--2024-OCA-VRAC-UNFV', '2024-06-14', 187, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:38:49', '0000-00-00 00:00:00'),
(188, '36950', '7085', '2024-06-18', '811--2024-OCA-VRAC-UNFV', '2024-06-14', 188, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:40:04', '0000-00-00 00:00:00'),
(189, '43936', '7093', '2024-06-18', '453-2024-OA-AC-EUPG-UNFV', '2024-06-12', 189, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:40:48', '0000-00-00 00:00:00'),
(190, '45367', '7094', '2024-06-18', '804--2024-OCA-VRAC-UNFV', '2024-06-14', 190, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:41:19', '0000-00-00 00:00:00'),
(191, '44963', '7095', '2024-06-18', '785--2024-OCA-VRAC-UNFV', '2024-06-12', 191, '2024-06-18', '', 0, 1, 6, 63, 63, '2024-06-18 14:41:53', '0000-00-00 00:00:00'),
(192, '39832', '7157', '2024-06-19', '823--2024-OCA-VRAC-UNFV', '2024-06-17', 192, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:09:48', '0000-00-00 00:00:00'),
(193, '39811', '7158', '2024-06-19', '822--2024-OCA-VRAC-UNFV', '2024-06-17', 193, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:10:25', '0000-00-00 00:00:00'),
(194, '39771', '7160', '2024-06-19', '821--2024-OCA-VRAC-UNFV', '2024-06-17', 194, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:11:25', '0000-00-00 00:00:00'),
(195, '39745', '7161', '2024-06-19', '820--2024-OCA-VRAC-UNFV', '2024-06-17', 195, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:12:04', '0000-00-00 00:00:00'),
(196, '38804', '7162', '2024-06-19', '819--2024-OCA-VRAC-UNFV', '2024-06-17', 196, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:12:47', '0000-00-00 00:00:00'),
(197, '38524', '7163', '2024-06-19', '818--2024-OCA-VRAC-UNFV', '2024-06-17', 197, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:13:43', '0000-00-00 00:00:00'),
(198, '38100', '7164', '2024-06-19', '817--2024-OCA-VRAC-UNFV', '2024-06-17', 198, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:14:23', '0000-00-00 00:00:00'),
(199, '38098', '7165', '2024-06-19', '816--2024-OCA-VRAC-UNFV', '2024-06-17', 199, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:15:18', '0000-00-00 00:00:00'),
(200, '38080', '7166', '2024-06-19', '815--2024-OCA-VRAC-UNFV', '2024-06-17', 200, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:15:57', '0000-00-00 00:00:00'),
(201, '39136', '7218', '2024-06-19', '0833-2024-OCA-VRAC-UNFV', '2024-06-18', 201, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:24:35', '0000-00-00 00:00:00'),
(202, '46016', '7221', '2024-06-19', 'OFICIO N°123-2024-DEP-FAPS-UNFV', '2024-05-29', 202, '2024-06-20', '', 0, 1, 6, 63, 63, '2024-06-20 10:25:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_doc_pagos`
--

CREATE TABLE `tb_doc_pagos` (
  `id_doc_pagos` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_doc_pagos`
--

INSERT INTO `tb_doc_pagos` (`id_doc_pagos`, `nombre`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', '2024-04-18 17:30:11', '2024-04-18 17:30:11'),
(2, 'CHEQUE', '2024-04-18 17:30:11', '2024-04-18 17:30:11'),
(3, 'OPE', '2024-04-18 17:30:11', '2024-04-18 17:30:11'),
(4, 'CCI', '2024-04-18 17:30:11', '2024-04-18 17:30:11'),
(5, 'CARTA DE ORDEN', '2024-04-18 17:30:11', '2024-04-18 17:30:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_egresos`
--

CREATE TABLE `tb_egresos` (
  `id_egresos` int(11) NOT NULL,
  `proveido_conta` varchar(255) NOT NULL,
  `fecha_conta` date NOT NULL,
  `asunto_conta` varchar(255) NOT NULL,
  `siaf` varchar(255) NOT NULL,
  `id_tipo_gasto` int(11) NOT NULL,
  `nt_diga` varchar(255) NOT NULL,
  `id_anio_nt_diga` int(11) NOT NULL,
  `proveido_diga` varchar(255) NOT NULL,
  `fecha_diga` date NOT NULL,
  `oficio_dependencia` varchar(255) NOT NULL,
  `fecha_dependencia` date NOT NULL,
  `id_cargo_dependencia` int(11) NOT NULL,
  `id_actividad_dependencia` int(11) NOT NULL,
  `id_subactividad` int(11) NOT NULL,
  `monto` varchar(255) NOT NULL,
  `id_concepto_giro` int(11) NOT NULL,
  `id_modalidad_pago` int(11) NOT NULL,
  `proveedor` varchar(255) NOT NULL,
  `ruc` varchar(255) NOT NULL,
  `nro_orden_compra` varchar(255) NOT NULL,
  `nro_orden_servicio` varchar(255) NOT NULL,
  `id_comprobantes` int(11) NOT NULL,
  `numero_comprobante` varchar(255) NOT NULL,
  `nro_cp_interno` varchar(255) NOT NULL,
  `nota_pago` varchar(255) NOT NULL,
  `fecha_giro` date NOT NULL,
  `fecha_pago` date NOT NULL,
  `observacion_egreso` varchar(255) NOT NULL,
  `informe` int(11) NOT NULL,
  `fecha_informe` date NOT NULL,
  `resolucion_directoral` varchar(255) NOT NULL,
  `fecha_resolucion` date NOT NULL,
  `total_egresos` varchar(255) NOT NULL,
  `total_acumulado` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_egresos`
--

INSERT INTO `tb_egresos` (`id_egresos`, `proveido_conta`, `fecha_conta`, `asunto_conta`, `siaf`, `id_tipo_gasto`, `nt_diga`, `id_anio_nt_diga`, `proveido_diga`, `fecha_diga`, `oficio_dependencia`, `fecha_dependencia`, `id_cargo_dependencia`, `id_actividad_dependencia`, `id_subactividad`, `monto`, `id_concepto_giro`, `id_modalidad_pago`, `proveedor`, `ruc`, `nro_orden_compra`, `nro_orden_servicio`, `id_comprobantes`, `numero_comprobante`, `nro_cp_interno`, `nota_pago`, `fecha_giro`, `fecha_pago`, `observacion_egreso`, `informe`, `fecha_informe`, `resolucion_directoral`, `fecha_resolucion`, `total_egresos`, `total_acumulado`, `visible`, `id_usuario`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, '', '0000-00-00', '', '', 1, '123456', 63, '', '0000-00-00', '', '0000-00-00', 4, 15, 14, '0.00', 1, 1, '', '', '', '', 1, '', '', '', '0000-00-00', '0000-00-00', '', 1, '0000-00-00', '', '0000-00-00', '0.00', '0.00', 0, 1, '2024-06-21 12:28:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_empresas`
--

CREATE TABLE `tb_empresas` (
  `id_empresa` int(11) NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `ruc` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_empresas`
--

INSERT INTO `tb_empresas` (`id_empresa`, `razon_social`, `ruc`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 'SELECCIONAR', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(2, 'BANCO DE COMERCIO', '20509507199', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(3, 'BANCO DE LA NACION', '20100030595', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(4, 'BANCO INTERAMERICANO DE FINANZAS', '20101036813', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(5, 'BANCO INTERBANK', '20100053455', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(6, 'BANCO PICHINCHA', '20100105862', 0, '2024-04-09 00:00:00', '2024-04-09 12:35:16'),
(7, 'BANCO RIPLEY PERU S.A.', '20259702411', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(8, 'COLEGIO DE PSICOLOGOS DEL PERU CONS.DIR.REG. LIMA', '20137283647', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(9, 'COMITE CAFAE UNFV VILLAREAL', '20507018247', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(10, 'COOP. DE SERV. MULT. VICTOR RAUL HAYA DE LA TORRE', '20109803643', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(11, 'INTERSEGURO COMPAÑIA DE SEGUROS S.A.', '20382748566', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(12, 'RIMAC S.A. ENTIDAD PRESTADORA DE SALUD', '20414955020', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(13, 'RIMAC SEGUROS Y REASEGUROS', '20100041953', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(14, 'SCOTIABANK PERU SAA', '20100043140', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(15, 'SINDICATO DE DOCENTES DE LA UNIVERSIDAD NACIONAL FEDERICO VILLAREAL', '20600289706', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(16, 'SINDICATO UNICO DE TRABAJ. ADM. DE LA U.N.F.V. - FRATERNIDAD', '20511682089', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(17, 'SUNAT', '20131312955', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(18, 'ESSALUD', '20131257750', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(19, 'AFP INTEGRA S.A', '20157036794', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(20, 'AFP PROFUTURO', '20142829551', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(21, 'AFP PRIMA S.A.', '20510398158', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(22, 'AFP HABITAT S.A.', '20551464971', 0, '2024-04-09 00:00:00', '0000-00-00 00:00:00'),
(23, 'AEI INGENIERIA Y CONSTRUCCION S.A.C.', '20603066431', 0, '2024-03-23 00:00:00', '2024-04-09 12:35:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estado`
--

CREATE TABLE `tb_estado` (
  `id_estado` int(11) NOT NULL,
  `nombre_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_estado`
--

INSERT INTO `tb_estado` (`id_estado`, `nombre_estado`) VALUES
(2, 'HABILITADO'),
(3, 'DESHABILITADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estado_giro`
--

CREATE TABLE `tb_estado_giro` (
  `id_estado_giro` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_estado_giro`
--

INSERT INTO `tb_estado_giro` (`id_estado_giro`, `estado`) VALUES
(1, 'SELECCIONAR'),
(2, 'APROBADO'),
(3, 'PENDIENTE'),
(4, 'ANULADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_manual`
--

CREATE TABLE `tb_manual` (
  `id_manual` int(11) NOT NULL,
  `nombre_manual` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_manual`
--

INSERT INTO `tb_manual` (`id_manual`, `nombre_manual`, `archivo`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'MANUAL DE USUARIO DE APLICATIVO DE DEVOLUCIÓN DE DINERO', 'MANUAL DE USUARIO - APLICATIVO DE DEVOLUCION DE DINERO.pdf', 0, '2024-04-14 14:48:48', '2024-05-21 09:13:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_modalidad_pago`
--

CREATE TABLE `tb_modalidad_pago` (
  `id_modalidad_pago` int(11) NOT NULL,
  `nombre_modalidad_pago` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_modalidad_pago`
--

INSERT INTO `tb_modalidad_pago` (`id_modalidad_pago`, `nombre_modalidad_pago`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 0, '2024-05-24 16:05:23', '2024-05-24 16:05:23'),
(2, 'PLANILLAS', 0, '2024-05-24 16:05:23', '2024-05-24 16:05:23'),
(3, 'COMPRAS', 0, '2024-05-24 16:05:23', '2024-05-24 16:05:23'),
(4, 'SERVICIOS', 0, '2024-05-24 16:05:23', '2024-05-24 16:05:23'),
(5, 'DIRECTO', 0, '2024-05-24 16:05:23', '2024-05-24 16:05:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_nrocuenta`
--

CREATE TABLE `tb_nrocuenta` (
  `id_nrocuenta` int(11) NOT NULL,
  `nro_cuenta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_nrocuenta`
--

INSERT INTO `tb_nrocuenta` (`id_nrocuenta`, `nro_cuenta`) VALUES
(1, 'SELECCIONAR'),
(2, '300152'),
(3, '257443');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_roles`
--

INSERT INTO `tb_roles` (`id_rol`, `rol`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'ADMINISTRADOR', 0, '2024-04-09 09:23:51', '2024-04-13 12:33:40'),
(2, 'INGRESOS', 0, '2024-04-09 09:23:58', '0000-00-00 00:00:00'),
(3, 'SECRETARIA', 0, '2024-04-09 09:24:08', '2024-04-18 08:35:55'),
(5, 'JEFATURA', 0, '2024-04-09 09:24:32', '2024-04-09 10:42:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_subactividad`
--

CREATE TABLE `tb_subactividad` (
  `id_subactividad` int(11) NOT NULL,
  `nombre_subactividad` varchar(255) NOT NULL,
  `id_actividad_principal` int(11) NOT NULL,
  `visible` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_subactividad`
--

INSERT INTO `tb_subactividad` (`id_subactividad`, `nombre_subactividad`, `id_actividad_principal`, `visible`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', 1, 0, '2024-05-24 16:02:17', '2024-05-24 16:02:17'),
(2, 'NO', 2, 0, '2024-05-24 16:02:17', '2024-05-24 16:02:17'),
(3, 'NO', 3, 0, '2024-05-24 16:03:07', '2024-05-24 16:03:07'),
(4, 'NO', 4, 0, '2024-05-24 16:03:07', '2024-05-24 16:03:07'),
(5, 'NO', 8, 0, '2024-05-29 09:54:33', '0000-00-00 00:00:00'),
(6, 'NO', 9, 0, '2024-05-29 09:55:07', '2024-05-29 11:29:55'),
(7, 'NO', 10, 0, '2024-05-29 09:55:15', '0000-00-00 00:00:00'),
(8, 'NO', 11, 0, '2024-05-29 09:55:39', '2024-05-29 11:29:17'),
(9, 'NO', 12, 0, '2024-05-29 11:32:05', '0000-00-00 00:00:00'),
(10, 'NO', 13, 0, '2024-05-29 11:32:43', '0000-00-00 00:00:00'),
(11, 'NO', 14, 0, '2024-05-29 11:32:55', '0000-00-00 00:00:00'),
(12, 'ODONTOPEDIATRIA', 15, 0, '2024-05-29 11:35:20', '0000-00-00 00:00:00'),
(13, 'REHABILITACION ORAL', 15, 0, '2024-05-29 11:35:46', '0000-00-00 00:00:00'),
(14, 'ORTODONCIA ORTOPEDIA MAXILAR', 15, 0, '2024-05-29 11:36:26', '0000-00-00 00:00:00'),
(15, 'FISIOTERAPIA  CARDIORRESPIRATORIA', 16, 0, '2024-05-29 11:37:31', '0000-00-00 00:00:00'),
(16, 'HEMOTERAPIA Y BANCO DE SANGRE', 16, 0, '2024-05-29 11:38:10', '2024-05-29 11:38:40'),
(17, 'TOMOGRAFIA COMPUTADA', 16, 0, '2024-05-29 11:39:24', '0000-00-00 00:00:00'),
(18, 'RESOGNANCIA MAGNETICA', 16, 0, '2024-05-29 11:39:45', '0000-00-00 00:00:00'),
(19, 'HISTOTECNOLOGÍA', 16, 0, '2024-05-29 11:39:59', '0000-00-00 00:00:00'),
(20, 'TERAPIA MANUAL ORTOPEDICA', 16, 0, '2024-05-29 11:40:09', '0000-00-00 00:00:00'),
(21, 'BIOQUÍMICA CLÍNICA', 16, 0, '2024-05-29 11:40:22', '0000-00-00 00:00:00'),
(22, 'NO', 17, 0, '2024-05-29 11:40:51', '0000-00-00 00:00:00'),
(23, 'NO', 18, 0, '2024-05-29 11:40:57', '0000-00-00 00:00:00'),
(24, 'NO', 19, 0, '2024-05-29 11:41:12', '0000-00-00 00:00:00'),
(25, 'NO', 20, 0, '2024-05-29 11:44:15', '0000-00-00 00:00:00'),
(26, 'NO', 21, 0, '2024-05-29 11:44:52', '0000-00-00 00:00:00'),
(27, 'NO', 22, 0, '2024-05-29 11:45:11', '0000-00-00 00:00:00'),
(28, 'NO', 23, 0, '2024-05-29 11:45:19', '0000-00-00 00:00:00'),
(29, 'NO', 24, 0, '2024-05-29 11:46:10', '0000-00-00 00:00:00'),
(30, 'NO', 25, 0, '2024-05-29 11:46:30', '0000-00-00 00:00:00'),
(31, 'NO', 26, 0, '2024-05-29 11:46:45', '0000-00-00 00:00:00'),
(32, 'NO', 27, 0, '2024-05-29 11:47:36', '0000-00-00 00:00:00'),
(33, 'NO', 28, 0, '2024-05-29 11:47:42', '0000-00-00 00:00:00'),
(34, 'NO', 29, 0, '2024-05-29 11:47:48', '0000-00-00 00:00:00'),
(35, 'NO', 30, 0, '2024-05-29 11:48:21', '0000-00-00 00:00:00'),
(36, 'NO', 31, 0, '2024-05-29 11:48:26', '0000-00-00 00:00:00'),
(37, 'NO', 32, 0, '2024-05-29 11:48:32', '0000-00-00 00:00:00'),
(38, 'NO', 35, 1, '2024-05-29 11:51:34', '2024-06-18 11:47:47'),
(39, 'NO', 33, 1, '2024-05-29 11:51:41', '2024-06-18 11:47:59'),
(40, 'NO', 34, 1, '2024-05-29 11:51:48', '2024-06-18 11:48:05'),
(41, 'NO', 38, 0, '2024-06-18 11:43:08', '0000-00-00 00:00:00'),
(42, 'NO', 41, 0, '2024-06-18 11:43:44', '0000-00-00 00:00:00'),
(43, 'NO', 44, 0, '2024-06-18 11:44:16', '0000-00-00 00:00:00'),
(44, 'NO', 47, 0, '2024-06-18 11:49:05', '0000-00-00 00:00:00'),
(45, 'NO', 50, 0, '2024-06-18 11:49:14', '0000-00-00 00:00:00'),
(46, 'NO', 53, 0, '2024-06-18 11:49:52', '0000-00-00 00:00:00'),
(47, 'NO', 56, 0, '2024-06-18 11:50:08', '0000-00-00 00:00:00'),
(48, 'NO', 59, 0, '2024-06-18 11:50:24', '0000-00-00 00:00:00'),
(49, 'NO', 62, 0, '2024-06-18 11:50:41', '0000-00-00 00:00:00'),
(50, 'NO', 65, 0, '2024-06-18 11:51:03', '0000-00-00 00:00:00'),
(51, 'NO', 68, 0, '2024-06-18 11:51:21', '0000-00-00 00:00:00'),
(52, 'NO', 71, 0, '2024-06-18 11:51:45', '0000-00-00 00:00:00'),
(53, 'NO', 74, 0, '2024-06-18 11:52:16', '0000-00-00 00:00:00'),
(54, 'NO', 77, 0, '2024-06-18 11:54:42', '0000-00-00 00:00:00'),
(55, 'NO', 80, 0, '2024-06-18 11:58:14', '0000-00-00 00:00:00'),
(56, 'NO', 36, 0, '2024-06-18 11:58:26', '0000-00-00 00:00:00'),
(57, 'NO', 39, 0, '2024-06-18 12:00:28', '0000-00-00 00:00:00'),
(58, 'NO', 42, 0, '2024-06-18 12:00:40', '0000-00-00 00:00:00'),
(59, 'NO', 45, 0, '2024-06-18 12:01:02', '0000-00-00 00:00:00'),
(60, 'NO', 48, 0, '2024-06-18 12:01:09', '0000-00-00 00:00:00'),
(61, 'NO', 51, 0, '2024-06-18 12:01:28', '0000-00-00 00:00:00'),
(62, 'NO', 54, 0, '2024-06-18 12:01:37', '0000-00-00 00:00:00'),
(63, 'NO', 57, 0, '2024-06-18 12:02:11', '0000-00-00 00:00:00'),
(64, 'NO', 60, 0, '2024-06-18 12:02:19', '0000-00-00 00:00:00'),
(65, 'NO', 63, 0, '2024-06-18 12:02:27', '0000-00-00 00:00:00'),
(66, 'NO', 66, 0, '2024-06-18 12:02:36', '0000-00-00 00:00:00'),
(67, 'NO', 69, 0, '2024-06-18 12:03:11', '0000-00-00 00:00:00'),
(68, 'NO', 72, 0, '2024-06-18 12:03:19', '0000-00-00 00:00:00'),
(69, 'NO', 75, 0, '2024-06-18 12:03:41', '0000-00-00 00:00:00'),
(70, 'NO', 78, 0, '2024-06-18 12:06:00', '0000-00-00 00:00:00'),
(71, 'NO', 37, 0, '2024-06-18 12:07:16', '0000-00-00 00:00:00'),
(72, 'NO', 40, 0, '2024-06-18 12:07:22', '0000-00-00 00:00:00'),
(73, 'NO', 43, 0, '2024-06-18 12:07:31', '0000-00-00 00:00:00'),
(74, 'NO', 46, 0, '2024-06-18 12:07:44', '0000-00-00 00:00:00'),
(75, 'NO', 49, 0, '2024-06-18 12:07:50', '0000-00-00 00:00:00'),
(76, 'NO', 52, 0, '2024-06-18 12:08:08', '0000-00-00 00:00:00'),
(77, 'NO', 55, 0, '2024-06-18 12:08:19', '0000-00-00 00:00:00'),
(78, 'NO', 58, 0, '2024-06-18 12:08:28', '0000-00-00 00:00:00'),
(79, 'NO', 61, 0, '2024-06-18 12:08:51', '0000-00-00 00:00:00'),
(80, 'NO', 64, 0, '2024-06-18 12:09:02', '0000-00-00 00:00:00'),
(81, 'NO', 67, 0, '2024-06-18 12:09:17', '0000-00-00 00:00:00'),
(82, 'NO', 70, 0, '2024-06-18 12:09:43', '0000-00-00 00:00:00'),
(83, 'NO', 73, 0, '2024-06-18 12:09:51', '0000-00-00 00:00:00'),
(84, 'NO', 76, 0, '2024-06-18 12:10:11', '0000-00-00 00:00:00'),
(85, 'NO', 79, 0, '2024-06-18 12:10:26', '0000-00-00 00:00:00'),
(86, 'NO', 83, 0, '2024-06-18 15:35:58', '0000-00-00 00:00:00'),
(87, 'NO', 81, 0, '2024-06-18 15:36:04', '0000-00-00 00:00:00'),
(88, 'NO', 82, 0, '2024-06-18 15:36:10', '0000-00-00 00:00:00'),
(89, 'NO', 84, 0, '2024-06-20 09:45:12', '0000-00-00 00:00:00'),
(90, 'NO', 85, 0, '2024-06-20 09:46:22', '0000-00-00 00:00:00'),
(91, 'NO', 86, 0, '2024-06-20 09:48:16', '0000-00-00 00:00:00'),
(92, 'NO', 87, 0, '2024-06-20 09:49:12', '0000-00-00 00:00:00'),
(93, 'NO', 88, 0, '2024-06-20 09:59:06', '0000-00-00 00:00:00'),
(94, 'NO', 89, 0, '2024-06-20 10:00:15', '0000-00-00 00:00:00'),
(95, 'NO', 90, 0, '2024-06-20 10:01:22', '0000-00-00 00:00:00'),
(96, 'NO', 91, 0, '2024-06-20 10:03:21', '0000-00-00 00:00:00'),
(97, 'NO', 92, 0, '2024-06-20 10:05:18', '0000-00-00 00:00:00'),
(98, 'NO', 93, 0, '2024-06-20 10:09:36', '0000-00-00 00:00:00'),
(99, 'NO', 94, 0, '2024-06-20 10:12:23', '0000-00-00 00:00:00'),
(100, 'NO', 95, 0, '2024-06-20 10:12:59', '0000-00-00 00:00:00'),
(101, 'NO', 96, 0, '2024-06-20 10:15:12', '0000-00-00 00:00:00'),
(102, 'NO', 97, 0, '2024-06-20 10:16:38', '0000-00-00 00:00:00'),
(103, 'NO', 98, 0, '2024-06-20 10:17:15', '0000-00-00 00:00:00'),
(104, 'NO', 99, 0, '2024-06-20 10:17:42', '0000-00-00 00:00:00'),
(105, 'NO', 100, 0, '2024-06-20 10:18:11', '0000-00-00 00:00:00'),
(106, 'NO', 101, 0, '2024-06-20 10:37:58', '0000-00-00 00:00:00'),
(107, 'NO', 102, 0, '2024-06-20 10:49:45', '0000-00-00 00:00:00'),
(108, 'NO', 103, 0, '2024-06-20 10:50:31', '0000-00-00 00:00:00'),
(109, 'NO', 104, 0, '2024-06-20 10:51:54', '0000-00-00 00:00:00'),
(110, 'NO', 105, 0, '2024-06-20 10:52:20', '0000-00-00 00:00:00'),
(111, 'NO', 106, 0, '2024-06-20 10:52:44', '0000-00-00 00:00:00'),
(112, 'NO', 107, 0, '2024-06-20 10:53:10', '0000-00-00 00:00:00'),
(113, 'NO', 108, 0, '2024-06-20 10:53:46', '0000-00-00 00:00:00'),
(114, 'NO', 109, 0, '2024-06-20 10:54:22', '0000-00-00 00:00:00'),
(115, 'NO', 110, 0, '2024-06-20 10:54:52', '0000-00-00 00:00:00'),
(116, 'NO', 111, 0, '2024-06-20 10:55:32', '0000-00-00 00:00:00'),
(117, 'NO', 112, 0, '2024-06-20 10:56:10', '0000-00-00 00:00:00'),
(118, 'NO', 113, 0, '2024-06-20 10:57:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_documento`
--

CREATE TABLE `tb_tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL,
  `nombre_documento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_tipo_documento`
--

INSERT INTO `tb_tipo_documento` (`id_tipo_documento`, `nombre_documento`) VALUES
(1, 'SELECCIONAR'),
(2, 'DNI'),
(3, 'EMPRESA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipo_gasto`
--

CREATE TABLE `tb_tipo_gasto` (
  `id_tipo_gasto` int(11) NOT NULL,
  `nombre_tipo_gasto` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_tipo_gasto`
--

INSERT INTO `tb_tipo_gasto` (`id_tipo_gasto`, `nombre_tipo_gasto`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'SELECCIONAR', '2024-05-24 15:44:09', '2024-05-24 15:44:09'),
(2, 'GEA', '2024-05-24 15:44:09', '2024-05-24 15:44:09'),
(3, 'REGULAR', '2024-05-24 15:44:09', '2024-05-24 15:44:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apaterno` varchar(255) NOT NULL,
  `amaterno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password_user` text NOT NULL,
  `token` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `operador` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nombres`, `apaterno`, `amaterno`, `email`, `usuario`, `password_user`, `token`, `visible`, `id_rol`, `id_estado`, `operador`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'JORGE LUIS', 'CRUZ', 'CUSIHUAMAN', 'jcruzc@unfv.edu.pe', 'jcruz', '$2y$10$QUDz5Nf8YpFOfc/3fy5Yd.FvUoA7rgeLujh.SKM1j7GpXG2VbRvay', '', 0, 1, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-03-08 16:26:35', '2024-06-17 15:00:22'),
(5, 'JOHN EDINSON', 'VILLANUEVA', 'GERONIMO', 'jvillanueva@unfv.edu.pe', 'jvillanueva', '$2y$10$h4EwR6.RS8h2RfaRAHT.W..9PrVIb2uKErB2CRrBxQpQzwodNoVwe', '', 0, 2, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-04-09 09:36:13', '2024-05-14 09:47:16'),
(6, 'MARIA YSABEL', 'AQUINO', 'ROMERO', 'maquino@unfv.edu.pe', 'maquino', '$2y$10$7MEbgUQdf8/hDxFRuGb00eE0gm2MV2CJjYHEIb9xa6EvfAwOg/cvW', '', 0, 3, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-04-09 10:28:18', '2024-05-14 14:43:48'),
(7, 'JUANA VALERIA', 'MEDINA', 'PANDURO', 'jmedinap@unfv.edu.pe', 'jmedina', '$2y$10$LJr94RcgYuhP9/nM/Hw/leQ4BhbLFNtADN/6bHU.HgcFO3xIjIIu6', '', 0, 5, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-04-09 10:30:51', '2024-05-14 11:06:16'),
(9, 'PATHERSON ALEXANDER', 'CABANILLAS', 'CIEZA', 'pcabanillas@unfv.edu.pe', 'pcabanillas', '$2y$10$2dvQkvZ9HwNht6zgdAtfjuSEqaYLqTtJF7rvbNecpWOV0yUcqBHl6', '', 0, 1, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-04-09 10:33:22', '2024-06-04 12:03:39'),
(10, 'WILLIAM', 'DE LA CRUZ', 'CARRILLO', 'wcruz@unfv.edu.pe', 'wcruz', '$2y$10$H.6ewXl1sB47p6yPTp5wMufRHpNSPUwb0IjQJYMzEuNxISmSOXkTO', '', 0, 2, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-05-08 08:23:12', '0000-00-00 00:00:00'),
(11, 'JOEL', 'MORENO', 'LANDA', 'jmoreno@unfv.edu.pe', 'jmoreno', '$2y$10$J9cojhbsNiR6C.5cMEAo4.tAyzIJYKKdWWEQWdO7Svoa2hbI91wZu', '', 0, 1, 2, 'JORGE LUIS CRUZ CUSIHUAMAN', '2024-05-14 09:51:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura para la vista `cheque_257443`
--
DROP TABLE IF EXISTS `cheque_257443`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cheque_257443`  AS SELECT `nrocuenta`.`nro_cuenta` AS `nro_cuenta`, `cheque`.`monto` AS `monto`, `cheque`.`fyh_creacion` AS `fyh_creacion` FROM (`tb_detalle_cheque` `cheque` join `tb_nrocuenta` `nrocuenta` on(`nrocuenta`.`id_nrocuenta` = `cheque`.`id_nrocuenta`)) WHERE `cheque`.`visible` <> 1 AND `nrocuenta`.`nro_cuenta` = 257443 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `cheque_300152`
--
DROP TABLE IF EXISTS `cheque_300152`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cheque_300152`  AS SELECT `nrocuenta`.`nro_cuenta` AS `nro_cuenta`, `cheque`.`monto` AS `monto`, `cheque`.`fyh_creacion` AS `fyh_creacion` FROM (`tb_detalle_cheque` `cheque` join `tb_nrocuenta` `nrocuenta` on(`nrocuenta`.`id_nrocuenta` = `cheque`.`id_nrocuenta`)) WHERE `cheque`.`visible` <> 1 AND `nrocuenta`.`nro_cuenta` = 300152 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `cuenta_257443`
--
DROP TABLE IF EXISTS `cuenta_257443`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cuenta_257443`  AS SELECT `nrocuenta`.`nro_cuenta` AS `nro_cuenta`, `t_detalle`.`importe_devolucion_unfv` AS `monto`, `t_detalle`.`fyh_creacion` AS `fyh_creacion` FROM (`tb_detalle_devolucion` `t_detalle` join `tb_nrocuenta` `nrocuenta` on(`nrocuenta`.`id_nrocuenta` = `t_detalle`.`id_nrocuenta`)) WHERE `t_detalle`.`visible` <> 1 AND `nrocuenta`.`nro_cuenta` = 257443 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `cuenta_300152`
--
DROP TABLE IF EXISTS `cuenta_300152`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cuenta_300152`  AS SELECT `nrocuenta`.`nro_cuenta` AS `nro_cuenta`, `t_detalle`.`importe_devolucion_unfv` AS `monto`, `t_detalle`.`fyh_creacion` AS `fyh_creacion` FROM (`tb_detalle_devolucion` `t_detalle` join `tb_nrocuenta` `nrocuenta` on(`nrocuenta`.`id_nrocuenta` = `t_detalle`.`id_nrocuenta`)) WHERE `t_detalle`.`visible` <> 1 AND `nrocuenta`.`nro_cuenta` = 300152 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `egresos`
--
DROP TABLE IF EXISTS `egresos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `egresos`  AS SELECT `egresos`.`monto` AS `monto`, `egresos`.`fyh_creacion` AS `fyh_creacion` FROM `tb_egresos` AS `egresos` WHERE `egresos`.`visible` <> 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `pagos_realizado`
--
DROP TABLE IF EXISTS `pagos_realizado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pagos_realizado`  AS SELECT `t_detalle`.`nt` AS `numero_tramite`, `anio_nt`.`anio_nt` AS `anio_numerotramite`, `t_detalle`.`nombre_solicitante` AS `solicitante`, `t_detalle`.`nombre_apoderado` AS `apoderado`, sum(`t_detalle`.`importe_devolucion_unfv`) AS `monto_voucher`, `banco`.`nombre_banco` AS `nombre_banco`, `t_detalle`.`nro_cuenta_banco` AS `nro_cuenta_banco`, `concepto`.`nombre` AS `nombre_concepto` FROM (((((((((((`tb_detalle_devolucion` `t_detalle` join `tb_tipo_documento` `tip_documento` on(`tip_documento`.`id_tipo_documento` = `t_detalle`.`id_tipo_documento`)) join `tb_empresas` `empresa` on(`empresa`.`id_empresa` = `t_detalle`.`id_empresa`)) join `tb_bancos` `banco` on(`banco`.`id_banco` = `t_detalle`.`id_banco`)) join `tb_conceptos` `concepto` on(`concepto`.`id_concepto` = `t_detalle`.`id_concepto`)) join `tb_ciclos` `ciclo` on(`ciclo`.`id_ciclo` = `t_detalle`.`id_ciclo_concepto`)) join `tb_anio_concepto` `anio_concepto` on(`anio_concepto`.`id_anio_concepto` = `t_detalle`.`id_anio_concepto`)) join `tb_anio_siafdevolucion` `anio_siafdevolucion` on(`anio_siafdevolucion`.`id_anio_siafdevolucion` = `t_detalle`.`id_anio_siaf_devolucion`)) join `tb_anio_siaforigen` `anio_siaforigen` on(`anio_siaforigen`.`id_anio_siaforigen` = `t_detalle`.`id_anio_siaf_origen`)) join `tb_nrocuenta` `nrocuenta` on(`nrocuenta`.`id_nrocuenta` = `t_detalle`.`id_nrocuenta`)) join `tb_usuarios` `usuario` on(`usuario`.`id_usuario` = `t_detalle`.`id_usuario`)) join `tb_anio_nt` `anio_nt` on(`anio_nt`.`id_anio_nt` = `t_detalle`.`id_anio_nt`)) WHERE `t_detalle`.`visible` <> 1 GROUP BY `t_detalle`.`nombre_solicitante` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_actividad_principal`
--
ALTER TABLE `tb_actividad_principal`
  ADD PRIMARY KEY (`id_actividad_principal`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `tb_anio_concepto`
--
ALTER TABLE `tb_anio_concepto`
  ADD PRIMARY KEY (`id_anio_concepto`);

--
-- Indices de la tabla `tb_anio_envio`
--
ALTER TABLE `tb_anio_envio`
  ADD PRIMARY KEY (`id_anio_envio`);

--
-- Indices de la tabla `tb_anio_nt`
--
ALTER TABLE `tb_anio_nt`
  ADD PRIMARY KEY (`id_anio_nt`);

--
-- Indices de la tabla `tb_anio_periodo`
--
ALTER TABLE `tb_anio_periodo`
  ADD PRIMARY KEY (`id_anio_periodo`);

--
-- Indices de la tabla `tb_anio_siafdevolucion`
--
ALTER TABLE `tb_anio_siafdevolucion`
  ADD PRIMARY KEY (`id_anio_siafdevolucion`);

--
-- Indices de la tabla `tb_anio_siaforigen`
--
ALTER TABLE `tb_anio_siaforigen`
  ADD PRIMARY KEY (`id_anio_siaforigen`);

--
-- Indices de la tabla `tb_asunto`
--
ALTER TABLE `tb_asunto`
  ADD PRIMARY KEY (`id_asunto`);

--
-- Indices de la tabla `tb_bancos`
--
ALTER TABLE `tb_bancos`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `tb_cargo`
--
ALTER TABLE `tb_cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `tb_cheque`
--
ALTER TABLE `tb_cheque`
  ADD PRIMARY KEY (`id_cheque`),
  ADD KEY `id_anio_nt` (`id_anio_nt`),
  ADD KEY `id_asunto` (`id_asunto`),
  ADD KEY `id_tipo_gasto` (`id_tipo_gasto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tb_ciclos`
--
ALTER TABLE `tb_ciclos`
  ADD PRIMARY KEY (`id_ciclo`);

--
-- Indices de la tabla `tb_comprobantes`
--
ALTER TABLE `tb_comprobantes`
  ADD PRIMARY KEY (`id_comprobantes`);

--
-- Indices de la tabla `tb_conceptos`
--
ALTER TABLE `tb_conceptos`
  ADD PRIMARY KEY (`id_concepto`);

--
-- Indices de la tabla `tb_concepto_giro`
--
ALTER TABLE `tb_concepto_giro`
  ADD PRIMARY KEY (`id_concepto_giro`);

--
-- Indices de la tabla `tb_condicion`
--
ALTER TABLE `tb_condicion`
  ADD PRIMARY KEY (`id_condicion`);

--
-- Indices de la tabla `tb_condicion2`
--
ALTER TABLE `tb_condicion2`
  ADD PRIMARY KEY (`id_condicion2`);

--
-- Indices de la tabla `tb_dependencias`
--
ALTER TABLE `tb_dependencias`
  ADD PRIMARY KEY (`id_dependencia`);

--
-- Indices de la tabla `tb_detalle_cheque`
--
ALTER TABLE `tb_detalle_cheque`
  ADD PRIMARY KEY (`id_detalle_cheque`),
  ADD KEY `id_nrocuenta` (`id_nrocuenta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_anio_nt` (`id_anio_nt`);

--
-- Indices de la tabla `tb_detalle_devolucion`
--
ALTER TABLE `tb_detalle_devolucion`
  ADD PRIMARY KEY (`id_detalle_devolucion`),
  ADD KEY `id_tipo_documento` (`id_tipo_documento`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_banco` (`id_banco`),
  ADD KEY `id_concepto` (`id_concepto`),
  ADD KEY `id_ciclo_concepto` (`id_ciclo_concepto`),
  ADD KEY `id_anio_concepto` (`id_anio_concepto`),
  ADD KEY `id_anio_siaf_devolucion` (`id_anio_siaf_devolucion`),
  ADD KEY `id_anio_siaf_origen` (`id_anio_siaf_origen`),
  ADD KEY `id_nrocuenta` (`id_nrocuenta`),
  ADD KEY `id_anio_nt` (`id_anio_nt`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_estado_giro` (`id_estado_giro`);

--
-- Indices de la tabla `tb_devoluciones`
--
ALTER TABLE `tb_devoluciones`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_facdepn` (`id_dependencia`),
  ADD KEY `id_anio_nt` (`id_anio_nt`),
  ADD KEY `id_anio_periodo` (`id_anio_periodo`);

--
-- Indices de la tabla `tb_doc_pagos`
--
ALTER TABLE `tb_doc_pagos`
  ADD PRIMARY KEY (`id_doc_pagos`);

--
-- Indices de la tabla `tb_egresos`
--
ALTER TABLE `tb_egresos`
  ADD PRIMARY KEY (`id_egresos`),
  ADD KEY `id_cargo_dependencia` (`id_cargo_dependencia`),
  ADD KEY `id_actividad_dependencia` (`id_actividad_dependencia`),
  ADD KEY `id_subactividad` (`id_subactividad`),
  ADD KEY `id_modalidad_pago` (`id_modalidad_pago`),
  ADD KEY `id_concepto_giro` (`id_concepto_giro`),
  ADD KEY `id_comprobantes` (`id_comprobantes`),
  ADD KEY `id_tipo_gasto` (`id_tipo_gasto`),
  ADD KEY `id_anio_nt_diga` (`id_anio_nt_diga`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tb_empresas`
--
ALTER TABLE `tb_empresas`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `tb_estado`
--
ALTER TABLE `tb_estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `tb_estado_giro`
--
ALTER TABLE `tb_estado_giro`
  ADD PRIMARY KEY (`id_estado_giro`);

--
-- Indices de la tabla `tb_manual`
--
ALTER TABLE `tb_manual`
  ADD PRIMARY KEY (`id_manual`);

--
-- Indices de la tabla `tb_modalidad_pago`
--
ALTER TABLE `tb_modalidad_pago`
  ADD PRIMARY KEY (`id_modalidad_pago`);

--
-- Indices de la tabla `tb_nrocuenta`
--
ALTER TABLE `tb_nrocuenta`
  ADD PRIMARY KEY (`id_nrocuenta`);

--
-- Indices de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tb_subactividad`
--
ALTER TABLE `tb_subactividad`
  ADD PRIMARY KEY (`id_subactividad`),
  ADD KEY `id_actividad_principal` (`id_actividad_principal`);

--
-- Indices de la tabla `tb_tipo_documento`
--
ALTER TABLE `tb_tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `tb_tipo_gasto`
--
ALTER TABLE `tb_tipo_gasto`
  ADD PRIMARY KEY (`id_tipo_gasto`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_estado` (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_actividad_principal`
--
ALTER TABLE `tb_actividad_principal`
  MODIFY `id_actividad_principal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `tb_anio_concepto`
--
ALTER TABLE `tb_anio_concepto`
  MODIFY `id_anio_concepto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tb_anio_envio`
--
ALTER TABLE `tb_anio_envio`
  MODIFY `id_anio_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tb_anio_nt`
--
ALTER TABLE `tb_anio_nt`
  MODIFY `id_anio_nt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tb_anio_periodo`
--
ALTER TABLE `tb_anio_periodo`
  MODIFY `id_anio_periodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tb_anio_siafdevolucion`
--
ALTER TABLE `tb_anio_siafdevolucion`
  MODIFY `id_anio_siafdevolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tb_anio_siaforigen`
--
ALTER TABLE `tb_anio_siaforigen`
  MODIFY `id_anio_siaforigen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `tb_asunto`
--
ALTER TABLE `tb_asunto`
  MODIFY `id_asunto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tb_bancos`
--
ALTER TABLE `tb_bancos`
  MODIFY `id_banco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `tb_cargo`
--
ALTER TABLE `tb_cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `tb_cheque`
--
ALTER TABLE `tb_cheque`
  MODIFY `id_cheque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_ciclos`
--
ALTER TABLE `tb_ciclos`
  MODIFY `id_ciclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_comprobantes`
--
ALTER TABLE `tb_comprobantes`
  MODIFY `id_comprobantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_conceptos`
--
ALTER TABLE `tb_conceptos`
  MODIFY `id_concepto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `tb_concepto_giro`
--
ALTER TABLE `tb_concepto_giro`
  MODIFY `id_concepto_giro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_condicion`
--
ALTER TABLE `tb_condicion`
  MODIFY `id_condicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_condicion2`
--
ALTER TABLE `tb_condicion2`
  MODIFY `id_condicion2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_dependencias`
--
ALTER TABLE `tb_dependencias`
  MODIFY `id_dependencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_cheque`
--
ALTER TABLE `tb_detalle_cheque`
  MODIFY `id_detalle_cheque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_devolucion`
--
ALTER TABLE `tb_detalle_devolucion`
  MODIFY `id_detalle_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT de la tabla `tb_devoluciones`
--
ALTER TABLE `tb_devoluciones`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de la tabla `tb_doc_pagos`
--
ALTER TABLE `tb_doc_pagos`
  MODIFY `id_doc_pagos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_egresos`
--
ALTER TABLE `tb_egresos`
  MODIFY `id_egresos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_empresas`
--
ALTER TABLE `tb_empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tb_estado`
--
ALTER TABLE `tb_estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_estado_giro`
--
ALTER TABLE `tb_estado_giro`
  MODIFY `id_estado_giro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_manual`
--
ALTER TABLE `tb_manual`
  MODIFY `id_manual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_modalidad_pago`
--
ALTER TABLE `tb_modalidad_pago`
  MODIFY `id_modalidad_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_nrocuenta`
--
ALTER TABLE `tb_nrocuenta`
  MODIFY `id_nrocuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tb_subactividad`
--
ALTER TABLE `tb_subactividad`
  MODIFY `id_subactividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `tb_tipo_documento`
--
ALTER TABLE `tb_tipo_documento`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_tipo_gasto`
--
ALTER TABLE `tb_tipo_gasto`
  MODIFY `id_tipo_gasto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_devoluciones`
--
ALTER TABLE `tb_devoluciones`
  ADD CONSTRAINT `tb_devoluciones_ibfk_1` FOREIGN KEY (`id_dependencia`) REFERENCES `tb_dependencias` (`id_dependencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_devoluciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_devoluciones_ibfk_6` FOREIGN KEY (`id_anio_nt`) REFERENCES `tb_anio_nt` (`id_anio_nt`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_devoluciones_ibfk_8` FOREIGN KEY (`id_anio_periodo`) REFERENCES `tb_anio_periodo` (`id_anio_periodo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
