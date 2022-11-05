-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2022 a las 05:15:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `urbe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(10) NOT NULL,
  `ciudad` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `ciudad`) VALUES
(1, 'Almirante Padilla'),
(2, 'Baralt'),
(3, 'Cabimas'),
(4, 'Catatumbo'),
(5, 'Colon'),
(6, 'Francisco Javier Pulgar'),
(7, 'Guajira'),
(8, 'Jesus Enrique Lossada'),
(9, 'Jesus Maria Semprun'),
(10, 'La Cañada de Urdaneta'),
(11, 'Lagunillas'),
(12, 'Machiques de Perija'),
(13, 'Mara'),
(14, 'Maracaibo'),
(15, 'Miranda'),
(16, 'Rosario de Perija'),
(17, 'San Francisco'),
(18, 'Santa Rita'),
(19, 'Simon Bolivar'),
(20, 'Sucre'),
(21, 'Valmore Rodriguez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_programatico`
--

CREATE TABLE `contenido_programatico` (
  `id_contenido` int(10) NOT NULL,
  `id_tipo_estudio` int(11) NOT NULL,
  `codigo_materia` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `contenido_programatico` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad_uc` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total_horas_sem` int(11) NOT NULL,
  `total_horas_cont` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contenido_programatico`
--

INSERT INTO `contenido_programatico` (`id_contenido`, `id_tipo_estudio`, `codigo_materia`, `contenido_programatico`, `cantidad_uc`, `id_usuario`, `total_horas_sem`, `total_horas_cont`) VALUES
(1, 1, 'N0000001', 'GEOMETRIA', 4, 1, 5, 70),
(2, 1, 'N0000002', 'CALCULO I', 5, 1, 6, 84),
(3, 1, 'N0000003', 'ALGEBRA LINEAL', 4, 1, 5, 70),
(4, 1, 'N0000004', 'ORIENTACION', 2, 1, 2, 28),
(5, 1, 'N0000005', 'METODOLOGIA DE LA INVESTIGACION', 3, 1, 3, 42),
(6, 1, 'N0000006', 'LENGUAJE Y HABILIDADES COGNITIVAS', 3, 1, 3, 42),
(7, 1, 'N0000007', 'CALCULO II', 5, 1, 6, 84),
(8, 1, 'N0000008', 'FISICA I', 5, 1, 7, 98),
(9, 1, 'N0000009', 'INTRODUCCION A LA PROGRAMACION', 4, 1, 5, 70),
(10, 1, 'N0000010', 'DIBUJO COMPUTARIZADO', 4, 1, 3, 42),
(11, 1, 'N0000011', 'LOGICA', 3, 1, 3, 42),
(12, 1, 'N0000012', 'CALCULO III', 5, 1, 6, 84),
(13, 1, 'N0000013', 'FISICA II', 5, 1, 6, 84),
(14, 1, 'N0000014', 'QUIMICA', 5, 1, 6, 84),
(15, 1, 'N0000015', 'ACTIVIDAD FISICA Y SALUD', 3, 1, 3, 42),
(16, 1, 'N0000016', 'INGLES I', 3, 1, 3, 42),
(17, 1, 'N0000017', 'CALCULO IV', 5, 1, 6, 84),
(18, 1, 'N0000018', 'PROGRAMACION I', 5, 1, 6, 84),
(19, 1, 'N0000019', 'INGLES II', 3, 1, 3, 42),
(20, 1, 'N0000020', 'MATEMATICA DISCRETA', 4, 1, 6, 84),
(21, 1, 'N0000021', 'ACTIVIDADES RECREACIONALES', 4, 1, 3, 42),
(22, 1, 'N0000022', 'PROGRAMACION II', 5, 1, 6, 84),
(23, 1, 'N0000023', 'HARDWARE DE COMPUTADORA', 4, 1, 4, 56),
(24, 1, 'N0000024', 'SISTEMAS OPERATIVOS', 3, 1, 3, 42),
(25, 1, 'N0000025', 'DESARROLLO SUSTENTABLE', 3, 1, 3, 42),
(26, 1, 'N0000026', 'ESTADISTICA', 3, 1, 3, 42),
(27, 1, 'N0000027', 'INGLES III', 3, 1, 3, 42),
(28, 1, 'N0000028', 'PROGRAMACION III', 5, 1, 6, 84),
(29, 1, 'N0000029', 'BASE DE DATOS I', 5, 1, 6, 84),
(30, 1, 'N0000030', 'GESTION DE PROYECTO INFORMATICOS', 5, 1, 6, 84),
(31, 1, 'N0000031', 'CALIDAD Y PRODUCTIVIDAD', 3, 1, 3, 42),
(32, 1, 'N0000032', 'INGLES IV', 3, 1, 3, 42),
(33, 1, 'N0000033', 'TEORIA GENERAL DE SISTEMAS', 4, 1, 5, 70),
(34, 1, 'N0000034', 'BASE DE DATOS II', 5, 1, 6, 84),
(35, 1, 'N0000035', 'INGLES V', 3, 1, 3, 42),
(36, 1, 'N0000036', 'COMPILADORES', 5, 1, 6, 84),
(37, 1, 'N0000037', 'INGENIERIA ECONOMICA', 4, 1, 4, 56),
(38, 1, 'N0000037', 'SERVICIO COMUNITARIO', 0, 1, 5, 70),
(39, 1, 'N0000038', 'INGENIERIA DE SOFTWARE I', 5, 1, 6, 84),
(40, 1, 'N0000039', 'REDES I', 5, 1, 6, 84),
(41, 1, 'N0000040', 'SEGURIDAD INFORMATICA', 3, 1, 3, 42),
(42, 1, 'N0000041', 'COMPUTACION GRAFICA', 5, 1, 6, 84),
(43, 1, 'N0000042', 'AUTOESTIMA Y DESARROLLO HUMANO', 3, 1, 3, 42),
(44, 1, 'N0000043', 'INGENIERIA DE SOFTWARE II', 5, 1, 6, 84),
(45, 1, 'N0000044', 'REDES II', 5, 1, 6, 84),
(46, 1, 'N0000045', 'MULTIMEDIA Y DISENO WEB', 5, 1, 6, 84),
(47, 1, 'N0000046', 'PROYECTOS WEB COMERCIALES', 3, 1, 3, 42),
(48, 1, 'N0000047', 'INGEL ESTRATEGICO OCUPACIONAL', 3, 1, 3, 42),
(49, 1, 'N0000048', 'DESARROLLO DE APLICACIONES EN JAVA PARA DISPOSITIVOS MOVILES', 3, 1, 3, 42),
(50, 1, 'N0000049', 'PROGRAMACION WEB', 5, 1, 6, 84),
(51, 1, 'N0000050', 'AUDITORIA Y EVALUACION DE SISTEMAS', 4, 1, 4, 56),
(52, 1, 'N0000051', 'SEMINARIO DE INVESTIGACION I', 5, 1, 5, 70),
(53, 1, 'N0000052', 'INTELIGENCIA ARTIFICIAL', 4, 1, 6, 84),
(54, 1, 'N0000053', 'RESPONSABILIDAD SOCIAL Y CORPORATIVA', 3, 1, 3, 42),
(55, 1, 'N0000054', 'INGLES ESCRITURA Y REDACCION', 3, 1, 3, 42),
(56, 1, 'N0000049', 'TECNOLOGIAS WEB', 5, 1, 3, 42),
(57, 1, 'N0000050', 'SIMULACION DE SISTEMAS', 4, 1, 6, 84),
(58, 1, 'N0000051', 'SEMINARIO DE INVESTIGACION II', 5, 1, 5, 70),
(59, 1, 'N0000052', 'ETICA Y DEONTOLOGIA', 3, 1, 4, 56),
(60, 1, 'N0000053', 'ADMINISTRACION DE CENTROS DE INFORMATICA', 4, 1, 4, 56),
(61, 1, 'N0000049', 'PASANTIAS ACADEMICAS', 10, 1, 0, 0),
(62, 1, 'N0000050', 'SEMINARIO DE INVESTIGACION III', 9, 1, 5, 70),
(63, 1, 'S00001', 'INTRODUCCION A LA COMUNICACION SOCIAL', 3, 1, 4, 56),
(64, 1, 'S00002', 'ACTIVIDAD FISICA Y SALUD', 3, 1, 3, 42),
(65, 1, 'S00003', 'CIENCIA, HOMBRE Y CULTURA', 3, 1, 3, 42),
(66, 1, 'S00004', 'LENGUAJE Y HABILIDADES COGNITIVAS', 3, 1, 3, 42),
(67, 1, 'S00005', 'METODOLOGIA DE LA INVESTIGACION', 3, 1, 3, 42),
(68, 1, 'S00006', 'ORIENTACION', 3, 1, 3, 42),
(69, 1, 'S00007', 'INFORMATICA I', 3, 1, 5, 70),
(70, 1, 'S00008', 'INFORMATICA II', 3, 1, 4, 56),
(71, 1, 'S00009', 'PERIODISMO Y LITERATURA', 3, 1, 4, 56),
(72, 1, 'S00010', 'LENGUAJE Y COMUNICACION', 3, 1, 4, 56),
(73, 1, 'S00011', 'TEORIA DE LA COMUNICACION', 3, 1, 4, 56),
(74, 1, 'S00012', 'ACTIVIDADES RECREACIONALES', 3, 1, 3, 42),
(75, 1, 'S00013', 'LOGICA', 3, 1, 3, 42),
(76, 1, 'S00014', 'INGLES I', 3, 1, 3, 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `id_escuela` int(11) NOT NULL,
  `escuela` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `id_facultad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`id_escuela`, `escuela`, `id_facultad`) VALUES
(1, 'Informatica', 1),
(2, 'Industrial', 1),
(3, 'Computacion', 1),
(4, 'Electronica: Telecomunicaciones', 1),
(5, 'Electronica: Automatizacion y Control', 1),
(6, 'Comunicacion Social: Periodismo', 2),
(7, 'Comunicacion Social: Audiovisual', 2),
(8, 'Comunicacion Social: Publicidad y Relaciones Publicas', 2),
(9, 'Contaduria Publica', 3),
(10, 'Administracion de Empresas', 3),
(11, 'Administracion: Mercadeo', 3),
(12, 'Administracion: Banca y Seguros', 3),
(13, 'Relaciones Industriales', 3),
(14, 'Derecho', 4),
(15, 'Diseño Grafico', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id_facultad` int(11) NOT NULL,
  `facultad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id_facultad`, `facultad`) VALUES
(1, 'Ingenieria'),
(2, 'Humanidades y Educacion'),
(3, 'Ciencias Administrativas'),
(4, 'Ciencias Juridicas y Politicas'),
(5, 'Ciencias de la Informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id_inscripcion` int(10) UNSIGNED NOT NULL,
  `id_tipo_estudio` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  `id_escuela` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `fecha_insc_estudio` datetime DEFAULT NULL,
  `promedio_academico` int(11) DEFAULT NULL,
  `promedio_aritmetico` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id_inscripcion`, `id_tipo_estudio`, `id_facultad`, `id_escuela`, `id_persona`, `id_periodo`, `fecha_insc_estudio`, `promedio_academico`, `promedio_aritmetico`, `id_usuario`) VALUES
(1, 1, 1, 1, 1, 4, NULL, NULL, NULL, 1),
(2, 1, 1, 2, 18, 4, NULL, NULL, NULL, 1),
(3, 1, 5, 15, 13, 4, NULL, NULL, NULL, 1),
(4, 1, 4, 14, 10, 4, NULL, NULL, NULL, 1),
(5, 1, 2, 7, 19, 4, NULL, NULL, NULL, 1),
(6, 1, 1, 1, 5, 4, NULL, NULL, NULL, 1),
(7, 1, 1, 1, 1, 5, NULL, NULL, NULL, 1),
(8, 1, 1, 1, 4, 5, NULL, NULL, NULL, 1),
(9, 1, 1, 1, 1, 6, NULL, NULL, NULL, 1),
(10, 1, 1, 1, 1, 7, NULL, NULL, NULL, 1),
(11, 1, 1, 1, 1, 8, NULL, NULL, NULL, 1),
(12, 1, 1, 1, 1, 9, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_seccion`
--

CREATE TABLE `inscripcion_seccion` (
  `id_insc_secc` int(10) UNSIGNED NOT NULL,
  `id_contenido` int(11) NOT NULL,
  `id_planilla` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `seccion` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `inscripcion_seccion`
--

INSERT INTO `inscripcion_seccion` (`id_insc_secc`, `id_contenido`, `id_planilla`, `id_seccion`, `seccion`, `id_usuario`) VALUES
(1, 1, 1, 1, 'N111', 4),
(2, 2, 1, 2, 'N111', 4),
(3, 3, 1, 3, 'N111', 4),
(4, 4, 1, 4, 'N111', 4),
(5, 5, 1, 5, 'N111', 4),
(6, 6, 1, 6, 'N111', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modo_estudio`
--

CREATE TABLE `modo_estudio` (
  `id_modo` int(10) NOT NULL,
  `modo_estudio` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `modo_estudio`
--

INSERT INTO `modo_estudio` (`id_modo`, `modo_estudio`) VALUES
(1, 'PRESENCIAL'),
(2, 'SEMIPRESENCIAL'),
(3, 'DISTANCIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id_periodo` int(10) NOT NULL,
  `periodo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_tipo_estudio` int(11) NOT NULL,
  `abreviatura_periodo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_periodo` char(1) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id_periodo`, `periodo`, `fecha_inicio`, `fecha_fin`, `id_usuario`, `id_tipo_estudio`, `abreviatura_periodo`, `estado_periodo`) VALUES
(1, 'ENERO 2015 ABRIL 2015', '2015-01-07 00:00:00', '2015-04-11 00:00:00', 4, 1, 'ENE-ABR 2015', 'A'),
(2, 'ABRIL 2015 AGO 2015', '2015-04-21 00:00:00', '2015-08-08 00:00:00', 4, 1, 'ABR-AGO 2015', 'A'),
(3, 'SEPTIEMBRE 2015 DICIEMBRE 2015', '2015-08-31 00:00:00', '2015-12-04 00:00:00', 4, 1, 'SEP-DIC 2015', 'A'),
(4, 'ENERO 2016 ABRIL 2016', '2016-01-05 00:00:00', '2016-04-08 00:00:00', 4, 1, 'ENE-ABR 2016', 'A'),
(5, 'ABRIL 2016 AGO 2016', '2016-04-18 00:00:00', '2016-08-05 00:00:00', 4, 1, 'ABR-AGO 2016', 'A'),
(6, 'SEPTIEMBRE 2016 DICIEMBRE 2016', '2016-08-29 00:00:00', '2016-12-02 00:00:00', 4, 1, 'SEP-DIC 2016', 'A'),
(7, 'ENERO 2017 ABRIL 2017', '2017-01-09 00:00:00', '2017-04-21 00:00:00', 4, 1, 'ENE-ABR 2017', 'A'),
(8, 'MAYO 2017 AGO 2017', '2017-05-02 00:00:00', '2017-08-11 00:00:00', 4, 1, 'MAY-AGO 2017', 'A'),
(9, 'SEPTIEMBRE 2017 DICIEMBRE 2017', '2017-09-04 00:00:00', '2017-12-08 00:00:00', 4, 1, 'SEP-DIC 2017', 'A'),
(10, 'ENERO 2018 ABRIL 2018', '2018-01-08 00:00:00', '2018-04-20 00:00:00', 4, 1, 'ENE-ABR 2018', 'A'),
(11, 'MAYO 2018 AGO 2018', '2018-04-30 00:00:00', '2018-08-03 00:00:00', 4, 1, 'MAY-AGO 2018', 'A'),
(12, 'SEPTIEMBRE 2018 DICIEMBRE 2018', '2018-09-03 00:00:00', '2018-12-07 00:00:00', 4, 1, 'SEP-DIC 2018', 'A'),
(13, 'ENERO 2019 ABRIL 2019', '2019-01-07 00:00:00', '2019-04-19 00:00:00', 4, 1, 'ENE-ABR 2019', 'A'),
(14, 'MAYO 2019 AGO 2019', '2019-04-29 00:00:00', '2019-08-09 00:00:00', 4, 1, 'MAY-AGO 2019', 'A'),
(15, 'SEPTIEMBRE 2019 DICIEMBRE 2019', '2019-09-02 00:00:00', '2019-12-06 00:00:00', 4, 1, 'SEP-DIC 2019', 'A'),
(16, 'ENERO 2020 ABRIL 2020', '2020-01-07 00:00:00', '2020-04-17 00:00:00', 4, 1, 'ENE-ABR 2020', 'A'),
(17, 'MAYO 2020 AGO 2020', '2020-04-27 00:00:00', '2020-08-07 00:00:00', 4, 1, 'MAY-AGO 2020', 'A'),
(18, 'SEPTIEMBRE 2020 DICIEMBRE 2020', '2020-08-31 00:00:00', '2020-12-11 00:00:00', 4, 1, 'SEP-DIC 2020', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `dashboard` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `ver_usuarios` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `editar_usuarios` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `eliminar_usuarios` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `ver_reportes` char(1) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(10) NOT NULL,
  `primerNombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `segundoNombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `primerApellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `segundoApellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `tipo_identificacion` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `identificacion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono_habitacion` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono_movil` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `estado_civil` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `correo_primario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `correo_secundario` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `edad` int(11) NOT NULL,
  `peso` decimal(6,2) DEFAULT NULL,
  `estatura` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `id_ciudad`, `tipo_identificacion`, `identificacion`, `telefono_habitacion`, `telefono_movil`, `fecha_nacimiento`, `estado_civil`, `sexo`, `correo_primario`, `correo_secundario`, `direccion`, `fecha_registro`, `edad`, `peso`, `estatura`) VALUES
(1, 'LUIS', 'JOSE', 'COLMENAREZ', 'CARUCI', 14, 'V', '26471344', '02617978922', '04146936221', '2022-11-03 00:00:00', 'S', 'M', 'luiscolmenarez76@gmail.com', NULL, 'Av. 8b entre 64 y 66', '2015-12-01 00:00:00', 23, '71.50', '1.67'),
(2, 'JUAN', 'CARLOS', 'MEDINA', 'FLORES', 14, 'V', '12750341', '02617926833', '01425936824', '1976-07-22 00:00:00', 'C', 'M', 'jmedinafl@gmail.com', 'juan.medina@urbe.edu', 'Av. 5 de julio calle 77', '2012-01-05 00:00:00', 46, '75.80', '1.76'),
(3, 'YOHESKY', 'JOSE', 'PIMENTEL', 'PORTILLO', 17, 'V', '26123896', '02617894235', '04146936578', '1998-05-27 00:00:00', 'S', 'M', 'yjpp@gmail.com', NULL, 'Urb. el Soler', '2015-11-30 00:00:00', 23, '84.30', '1.93'),
(4, 'JOSE', 'ALBERTO', 'FLORES', 'MEDINA', 14, 'V', '18567244', '02617661414', '04145936221', '1994-02-18 00:00:00', 'C', 'M', 'fjosealb@gmail.com', NULL, 'Haticos por arriba', '2010-08-23 00:00:00', 27, '82.00', '1.70'),
(5, 'JOSE', 'LUIS', 'OROPEZA', 'SANCHEZ', 14, 'V', '10468369', '02617973265', '04149832645', '2022-09-07 06:14:51', 'S', 'M', 'josoro2000@hotmail.com', 'jose.oropeza@urbe.edu', 'Av. 5 Julio, Sector Paraiso, calle 77', '2022-09-07 06:14:51', 42, '72.00', '1.56'),
(6, 'LUIS', 'GUILLERMO', 'FERNANDEZ', 'TORRES', 3, 'V', '12475987', '02617638421', '04146219874', '2022-09-07 06:14:51', 'C', 'M', 'luisgfernandez73@gmail.com', 'luis.fernandez@urbe.edu', 'Av. Rotaria', '2022-09-07 06:14:51', 44, '76.00', '1.72'),
(9, 'RICARDO', 'AUGUSTO', 'VERA', '', 3, 'V', '27345128', NULL, '04122387946', '2022-09-07 06:23:37', 'S', 'M', 'ravera1998@gmail.com', NULL, NULL, '2022-09-07 06:23:37', 21, '68.30', '1.60'),
(10, 'EFRAH', 'MILAGROS', 'SOTO', 'ABOUGHAIDA', 17, 'V', '26987155', NULL, NULL, '2022-09-07 06:23:37', 'S', 'F', 'efrahmil@gmail.com', NULL, NULL, '2022-09-07 06:23:37', 24, '65.00', '1.61'),
(11, 'JORGE', 'LUIS', 'HERNANDEZ', 'MEDINA', 14, 'V', '25936718', NULL, NULL, '2022-09-07 06:27:20', 'S', 'M', 'jorgeh@outlook.es', NULL, NULL, '2022-09-07 06:27:20', 25, '68.00', '1.69'),
(12, 'MARIA', 'FABIOLA', 'SOSA', '', 14, 'V', '27135647', NULL, NULL, '2022-09-07 06:27:20', 'S', 'F', 'mariafsosa@gmail.com', NULL, NULL, '2022-09-07 06:27:20', 22, '64.00', '1.65'),
(13, 'KARLA', 'CAROLINA', 'URDANETA', 'VILLALOBOS', 14, 'V', '27258641', NULL, NULL, '2022-09-07 06:30:25', 'S', 'F', 'karlacarolina@gmail.com', NULL, NULL, '2022-09-07 06:30:25', 22, NULL, NULL),
(14, 'ANDRES', 'EDUARDO', 'GOVEA', 'RINCON', 14, 'V', '23179648', NULL, NULL, '2022-09-07 06:30:25', 'S', 'M', 'andrese_govea@gmail.com', NULL, NULL, '2022-09-07 06:30:25', 27, NULL, NULL),
(16, 'YULIMAR', 'ANDREINA', 'RUBIO', 'BALZAN', 17, 'V', '25916333', NULL, NULL, '2022-09-07 06:34:12', 'S', 'F', 'yulimarrub@gmail.com', NULL, NULL, '2022-09-07 06:34:12', 24, '61.00', '1.64'),
(17, 'CARLOS', 'IGNACIO', 'PEROZO', '', 14, 'V', '26212946', NULL, NULL, '2022-09-07 06:34:12', 'S', 'M', '', NULL, NULL, '2022-09-07 06:34:12', 25, '82.00', '1.73'),
(18, 'ANDREA', 'PAOLA', 'AMUTIO', 'MATUTE', 14, 'V', '24619782', NULL, NULL, '2022-09-07 06:34:12', 'C', 'F', 'andreapaola@gmail.com', NULL, NULL, '2022-09-07 06:34:12', 26, '65.50', '1.67'),
(19, 'JUAN', 'MANUEL', 'GONZALEZ', 'GARCIA', 14, 'V', '26356669', NULL, NULL, '2022-09-07 06:41:43', 'S', 'M', 'juanma@outlook.es', NULL, NULL, '2022-09-07 06:41:43', 24, NULL, NULL),
(20, 'ZHI', 'WEI', 'ZHAO', 'LIN', 14, 'V', '25696432', NULL, NULL, '1997-11-05 04:26:16', 'S', 'M', 'albertozhao@gmail.com', NULL, NULL, '2022-11-05 04:26:16', 25, NULL, NULL),
(21, 'JOXEMI', 'CRISTINA', 'LEON', 'URDANETA', 13, 'V', '23462784', NULL, NULL, '1995-11-05 04:28:35', 'S', 'F', 'joxemi.cris@hotmail.com', NULL, NULL, '2022-11-05 04:28:35', 27, NULL, NULL),
(22, 'SARA', 'SOFIA', 'VILLEGAS', 'VILLALOBOS', 2, 'V', '26945812', NULL, NULL, '2000-12-05 04:28:35', 'S', 'F', 'sara_sofia123@gmail.com', NULL, NULL, '1996-07-05 04:28:35', 26, NULL, NULL),
(23, 'SOFIA', 'ANDREINA', 'VIELMA', 'CARRASCO', 3, 'V', '24693562', NULL, NULL, '1994-03-12 04:28:35', 'C', 'F', 'sofiviel@gmail.com', NULL, NULL, '2022-11-05 04:28:35', 28, NULL, NULL),
(24, 'LUIS', 'FERNANDO', 'RODRIGUEZ', 'RODRIGUEZ', 3, 'V', '25414753', NULL, NULL, '1998-10-26 04:28:35', 'S', 'M', 'luisfer99@gmail.com', NULL, NULL, '2022-11-05 04:28:35', 25, NULL, NULL),
(25, 'CARLOS', 'JOSE', 'GUILLEN', 'GALLEGOS', 10, 'V', '23265741', NULL, NULL, '1996-12-30 04:28:35', 'S', 'M', 'cjguillen@gmail.com', NULL, NULL, '2022-11-05 04:28:35', 26, NULL, NULL),
(26, 'MARIA', 'VALERIA', 'GALLEGOS', 'GALLEGOS', 14, 'V', '29468123', NULL, NULL, '2003-04-14 04:28:35', 'S', 'F', 'mavaleria145@gmail.com', NULL, NULL, '2022-11-05 04:28:35', 19, NULL, NULL),
(27, 'JOSE', 'JAVIER', 'SEMPRUM', 'HENRIQUEZ', 8, 'V', '27853643', NULL, NULL, '2000-10-09 04:28:35', 'S', 'M', 'josejsemp@outloook.es', NULL, NULL, '2022-11-05 04:28:35', 22, NULL, NULL),
(28, 'AMANDA', 'MARIA', 'FERNANDEZ', 'CARRILLO', 1, 'V', '26111345', NULL, NULL, '2000-11-05 04:28:35', '', '', 'amaria@gmail.com', NULL, NULL, '2022-11-05 04:28:35', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla_inscripcion`
--

CREATE TABLE `planilla_inscripcion` (
  `id_planilla` int(10) NOT NULL,
  `id_tipo_estudio` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  `id_escuela` int(11) NOT NULL,
  `fecha_planilla` datetime NOT NULL,
  `estado_planilla` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `total_uc` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_beca` int(11) DEFAULT NULL,
  `turno` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero_semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `planilla_inscripcion`
--

INSERT INTO `planilla_inscripcion` (`id_planilla`, `id_tipo_estudio`, `id_periodo`, `id_persona`, `id_facultad`, `id_escuela`, `fecha_planilla`, `estado_planilla`, `total_uc`, `id_usuario`, `id_beca`, `turno`, `id_factura`, `numero_semestre`) VALUES
(1, 1, 18, 1, 0, 1, '2022-10-03 00:11:13', 'A', 19, 1, NULL, 'M', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_academico`
--

CREATE TABLE `registro_academico` (
  `id_registro` int(11) UNSIGNED NOT NULL,
  `id_inscripcion` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `id_contenido` int(11) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `estado_registro` char(1) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(10) NOT NULL,
  `rol` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Super Usuario'),
(3, 'Normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id_seccion` int(10) NOT NULL,
  `id_periodo` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_contenido` int(11) NOT NULL,
  `id_tipo_estudio` int(11) NOT NULL,
  `id_modo` int(11) NOT NULL,
  `seccion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `capacidad` int(11) NOT NULL,
  `inscritos` int(11) NOT NULL,
  `porcentaje_nota` decimal(5,0) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `turno` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_seccion` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `capacidad_maxima` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id_seccion`, `id_periodo`, `id_persona`, `id_contenido`, `id_tipo_estudio`, `id_modo`, `seccion`, `capacidad`, `inscritos`, `porcentaje_nota`, `fecha_inicio`, `fecha_fin`, `turno`, `estado_seccion`, `id_usuario`, `capacidad_maxima`) VALUES
(1, 18, 5, 1, 1, 1, 'N111', 65, 23, '100', '2022-09-26 04:20:22', '2022-09-26 04:20:22', 'M', 'A', 1, 80),
(2, 18, 6, 2, 1, 1, 'N111', 65, 60, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(3, 18, 5, 3, 1, 1, 'N111', 65, 60, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(4, 18, 6, 4, 1, 1, 'N111', 65, 43, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(5, 18, 5, 5, 1, 1, 'N111', 65, 44, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(6, 18, 6, 6, 1, 1, 'N111', 65, 39, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(7, 18, 6, 7, 1, 1, 'N211', 65, 26, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(8, 18, 5, 8, 1, 1, 'N211', 65, 11, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(9, 18, 5, 9, 1, 1, 'N211', 25, 56, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 30),
(10, 18, 6, 10, 1, 1, 'N211', 25, 55, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 30),
(11, 18, 11, 6, 1, 1, 'N211', 65, 45, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(12, 18, 6, 12, 1, 1, 'N311', 65, 43, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(13, 18, 5, 13, 1, 1, 'N311', 65, 40, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(14, 18, 5, 14, 1, 1, 'N311', 65, 29, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 80),
(15, 18, 5, 15, 1, 1, 'N311', 50, 44, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 50),
(16, 18, 6, 16, 1, 1, 'N311', 65, 53, '100', '2022-09-26 04:34:03', '2022-09-26 04:34:03', 'M', 'A', 1, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_estudio`
--

CREATE TABLE `tipo_estudio` (
  `id_tipo_estudio` int(10) NOT NULL,
  `tipo_estudio` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_estudio`
--

INSERT INTO `tipo_estudio` (`id_tipo_estudio`, `tipo_estudio`) VALUES
(1, 'PREGRADO'),
(2, 'EXTENSION'),
(3, 'POSTGRADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `id_persona` int(11) NOT NULL,
  `estado_usuario` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `ultima_fecha_inact` datetime DEFAULT NULL,
  `ultimo_acceso` datetime DEFAULT NULL,
  `correo_electronico` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_rol` int(11) NOT NULL,
  `contrasena` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usuario`, `id_persona`, `estado_usuario`, `ultima_fecha_inact`, `ultimo_acceso`, `correo_electronico`, `id_rol`, `contrasena`) VALUES
(4, 'luiscolmenarez', 4, 'A', NULL, NULL, 'luiscolmenarez76@gmail.com', 1, 'luis1234'),
(5, 'yjpp', 3, 'A', NULL, NULL, 'yjpp@gmail.com', 3, 'yjpp12345'),
(6, 'jmedina', 2, 'I', NULL, NULL, 'juan.medina@urbe.edu', 1, 'urbe2021'),
(10, 'esoto', 10, 'A', NULL, NULL, NULL, 3, 'asd'),
(12, 'yrub', 16, 'A', NULL, NULL, NULL, 3, 'yrub564');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `contenido_programatico`
--
ALTER TABLE `contenido_programatico`
  ADD PRIMARY KEY (`id_contenido`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`id_escuela`),
  ADD KEY `FK_facultad` (`id_facultad`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id_facultad`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_tipo_estudio` (`id_tipo_estudio`),
  ADD KEY `id_periodo` (`id_periodo`),
  ADD KEY `inscripcion_ibfk_4` (`id_facultad`),
  ADD KEY `inscripcion_ibfk_5` (`id_escuela`);

--
-- Indices de la tabla `inscripcion_seccion`
--
ALTER TABLE `inscripcion_seccion`
  ADD PRIMARY KEY (`id_insc_secc`),
  ADD KEY `FK_CONTENIDO` (`id_contenido`),
  ADD KEY `FK_PLANILLA` (`id_planilla`),
  ADD KEY `FK_SECCION` (`id_seccion`),
  ADD KEY `FK_USUARIO` (`id_usuario`);

--
-- Indices de la tabla `modo_estudio`
--
ALTER TABLE `modo_estudio`
  ADD PRIMARY KEY (`id_modo`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id_periodo`),
  ADD KEY `id_tipo_estudio` (`id_tipo_estudio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permiso`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `planilla_inscripcion`
--
ALTER TABLE `planilla_inscripcion`
  ADD PRIMARY KEY (`id_planilla`);

--
-- Indices de la tabla `registro_academico`
--
ALTER TABLE `registro_academico`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `tipo_estudio`
--
ALTER TABLE `tipo_estudio`
  ADD PRIMARY KEY (`id_tipo_estudio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `contenido_programatico`
--
ALTER TABLE `contenido_programatico`
  MODIFY `id_contenido` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `escuela`
--
ALTER TABLE `escuela`
  MODIFY `id_escuela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id_facultad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id_inscripcion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `inscripcion_seccion`
--
ALTER TABLE `inscripcion_seccion`
  MODIFY `id_insc_secc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `modo_estudio`
--
ALTER TABLE `modo_estudio`
  MODIFY `id_modo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id_periodo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `planilla_inscripcion`
--
ALTER TABLE `planilla_inscripcion`
  MODIFY `id_planilla` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro_academico`
--
ALTER TABLE `registro_academico`
  MODIFY `id_registro` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id_seccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tipo_estudio`
--
ALTER TABLE `tipo_estudio`
  MODIFY `id_tipo_estudio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD CONSTRAINT `FK_facultad` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id_facultad`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`id_tipo_estudio`) REFERENCES `tipo_estudio` (`id_tipo_estudio`),
  ADD CONSTRAINT `inscripcion_ibfk_3` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`),
  ADD CONSTRAINT `inscripcion_ibfk_4` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id_facultad`),
  ADD CONSTRAINT `inscripcion_ibfk_5` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id_escuela`);

--
-- Filtros para la tabla `inscripcion_seccion`
--
ALTER TABLE `inscripcion_seccion`
  ADD CONSTRAINT `FK_CONTENIDO` FOREIGN KEY (`id_contenido`) REFERENCES `contenido_programatico` (`id_contenido`),
  ADD CONSTRAINT `FK_PLANILLA` FOREIGN KEY (`id_planilla`) REFERENCES `planilla_inscripcion` (`id_planilla`),
  ADD CONSTRAINT `FK_SECCION` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id_seccion`),
  ADD CONSTRAINT `FK_USUARIO` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD CONSTRAINT `periodo_ibfk_1` FOREIGN KEY (`id_tipo_estudio`) REFERENCES `tipo_estudio` (`id_tipo_estudio`),
  ADD CONSTRAINT `periodo_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
