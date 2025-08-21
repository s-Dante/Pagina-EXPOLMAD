-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-08-2025 a las 11:50:54
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siste133_sistema_expo2023`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afi_assistances`
--

CREATE TABLE `afi_assistances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conferencia_id` bigint(20) UNSIGNED NOT NULL,
  `asistio` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameCompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_people`
--

CREATE TABLE `company_people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attended` tinyint(1) NOT NULL,
  `company` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eventName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int(11) NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `typeEvent` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `eventName`, `limit`, `date`, `startTime`, `endTime`, `typeEvent`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Automation testing usando selenium', 100, '2025-06-07', '17:00:00', '18:00:00', 'Conferencia', '1747435120_Flyer Carolina Escobedo Rubio.jpg', '2025-05-17 04:38:40', '2025-05-17 04:38:40', NULL),
(2, 'Doblaje en videojuegos y animaciones', 100, '2025-06-07', '18:00:00', '19:00:00', 'Conferencia', '1747435175_Flyer Humberto Velez.jpg', '2025-05-17 04:39:35', '2025-05-17 04:39:35', NULL),
(3, 'Storytelling en el modelado 3D', 100, '2025-06-07', '16:00:00', '17:00:00', 'Conferencia', '1747435221_Flyer Erick Vasquez.jpg', '2025-05-17 04:40:21', '2025-05-17 04:40:21', NULL),
(4, 'De la consola a tu cartera', 100, '2025-06-07', '13:00:00', '14:00:00', 'Conferencia', '1747435259_Flyer Antonio Montemayor.jpg', '2025-05-17 04:40:59', '2025-05-17 04:40:59', NULL),
(5, 'Animación 2D y sus principios', 100, '2025-06-07', '11:00:00', '12:00:00', 'Conferencia', '1747435303_Flyer Edgar Soda.jpg', '2025-05-17 04:41:43', '2025-05-17 04:41:43', NULL),
(6, 'IA en aplicaciones web', 100, '2025-06-07', '12:00:00', '13:00:00', 'Conferencia', '1747435340_Flyer Luz de Léon.jpg', '2025-05-17 04:42:20', '2025-05-17 04:42:20', NULL),
(7, 'GCWEB: Oportunidades y demandas de la industria', 100, '2025-06-07', '15:00:00', '16:00:00', 'Conferencia', '1747435390_Flyer Eliud Juarez.jpg', '2025-05-17 04:43:10', '2025-05-17 04:43:10', NULL),
(8, 'Introducción a la producción de animación japonesa', 100, '2025-06-07', '14:00:00', '15:00:00', 'Conferencia', '1747435431_Flyer Lina Rangel Zamora.jpg', '2025-05-17 04:43:51', '2025-05-17 04:43:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_guests`
--

CREATE TABLE `event_guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guest` bigint(20) UNSIGNED NOT NULL,
  `event` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_guests`
--

INSERT INTO `event_guests` (`id`, `guest`, `event`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2025-05-17 04:38:40', '2025-05-17 04:38:40', NULL),
(2, 2, 2, '2025-05-17 04:39:35', '2025-05-17 04:39:35', NULL),
(3, 3, 3, '2025-05-17 04:40:21', '2025-05-17 04:40:21', NULL),
(4, 4, 4, '2025-05-17 04:40:59', '2025-05-17 04:40:59', NULL),
(5, 5, 5, '2025-05-17 04:41:43', '2025-05-17 04:41:43', NULL),
(6, 6, 6, '2025-05-17 04:42:20', '2025-05-17 04:42:20', NULL),
(7, 7, 7, '2025-05-17 04:43:10', '2025-05-17 04:43:10', NULL),
(8, 8, 8, '2025-05-17 04:43:51', '2025-05-17 04:43:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_register_people`
--

CREATE TABLE `event_register_people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` bigint(20) UNSIGNED NOT NULL,
  `dependency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enrollment` bigint(20) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attended` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_register_people`
--

INSERT INTO `event_register_people` (`id`, `event`, `dependency`, `career`, `registerName`, `enrollment`, `email`, `attended`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Carlos Daniel Pinkus Martinez', 2086095, 'carlos.pinkusm@uanl.edu.mx', 1, '2025-06-07 07:49:12', '2025-06-07 07:53:09', NULL),
(4, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-07 23:06:49', '2025-06-07 23:06:49', NULL),
(5, 5, 'Facultad de Artes Visuales', NULL, 'Jesley García Eguía', 2046273, 'jesley.garciae@uanl.edu.mx', 0, '2025-06-07 23:06:57', '2025-06-07 23:06:57', NULL),
(6, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Yair Vera Chávez', 2225471, 'yair.verac@uanl.edu.mx', 0, '2025-06-07 23:07:03', '2025-06-07 23:07:03', NULL),
(7, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Daniel Abisai Montelongo Vazquez', 2038118, 'daniel.montelongov@uanl.edu.mx', 0, '2025-06-07 23:07:17', '2025-06-07 23:07:17', NULL),
(8, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Stacy Chapa', 2048283, 'stacy.chapag@uanl.edu.mx', 0, '2025-06-07 23:07:28', '2025-06-07 23:07:28', NULL),
(9, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Enrique Leal Gutiérrez', 1957848, 'juan.lealgtrz@uanl.edu.mx', 0, '2025-06-07 23:08:19', '2025-06-07 23:08:19', NULL),
(10, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Dulce María Bautista Viveros', 2069455, 'dulce.bautistav@uanl.edu.mx', 0, '2025-06-07 23:08:22', '2025-06-07 23:08:22', NULL),
(11, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gael Enrique Lugo Leang', 1978260, 'Enrique.lugolng@uanl.edu.mx', 1, '2025-06-07 23:08:45', '2025-06-08 06:04:09', NULL),
(12, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Stacy Chapa', 2048283, 'stacy.chapag@uanl.edu.mx', 0, '2025-06-07 23:08:46', '2025-06-07 23:08:46', NULL),
(13, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Raymond Alejandro García Gudiño', 1855903, 'raymond.garciagdn@uanl.edu.mx', 0, '2025-06-07 23:08:59', '2025-06-07 23:08:59', NULL),
(14, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-07 23:09:04', '2025-06-07 23:59:39', NULL),
(15, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Monserrath Diaz Trejo', 2177515, 'Monserrath.diazt@uanl.edu.mx', 1, '2025-06-07 23:09:19', '2025-06-07 23:59:27', NULL),
(16, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alejandro Bazaldua Gomez', 1729604, 'alejandro.bazalduago@uanl.edu.mx', 0, '2025-06-07 23:09:53', '2025-06-07 23:09:53', NULL),
(17, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'David Emmanuel Alemán Serna', 2105496, 'david.alemans@uanl.edu.mx', 1, '2025-06-07 23:09:54', '2025-06-08 00:15:10', NULL),
(18, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Humberto Mauricio Bernal Ruiz', 2049557, 'humberto.bernalr@uanl.edu.mx', 0, '2025-06-07 23:10:20', '2025-06-07 23:10:20', NULL),
(19, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Andrea Nohemí Echegaray Jasso', 2163365, 'andrea.echegarayj@uanl.edu.mx', 0, '2025-06-07 23:10:26', '2025-06-07 23:10:26', NULL),
(20, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paulina Sanchez Salazar', 2169332, 'paulina.sanchezsl@uanl.edu.mx', 0, '2025-06-07 23:12:19', '2025-06-07 23:12:19', NULL),
(21, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Gonzalez', 1971613, 'oscar.gonzalezescalera@uanl.edu.mx', 1, '2025-06-07 23:15:14', '2025-06-07 23:59:21', NULL),
(22, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Francisco Alejandro Contreras Villavicencio', 2086060, 'francisco.contrerasv@uanl.edu.mx', 1, '2025-06-07 23:16:08', '2025-06-08 00:52:20', NULL),
(23, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Danna Cecilia Carranza Betancourt', 2026585, 'danna.carranzabtn@uanl.edu.mx', 1, '2025-06-07 23:19:27', '2025-06-08 01:40:02', NULL),
(24, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Aldo Gabriel Gómez Canizales', 1923886, 'aldo.gomezcn@uanl.edu.mx', 1, '2025-06-07 23:19:45', '2025-06-08 06:06:20', NULL),
(25, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valentina Molina', 2097236, 'Valeria.molinae@uanl.edu.mx', 0, '2025-06-07 23:23:22', '2025-06-07 23:23:22', NULL),
(26, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Bruno Alejandro Chávez Domínguez', 1997930, 'bruno.chavezd@uanl.edu.mx', 0, '2025-06-07 23:24:01', '2025-06-07 23:24:01', NULL),
(27, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Dante Omar Fernández Mancilla', 1961238, 'omar.fernandezmnc@uanl.edu.mx', 0, '2025-06-07 23:26:57', '2025-06-07 23:26:57', NULL),
(28, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'dulce maría ríos flores', 2058918, 'dulce.riosf@uanl.edu.mx', 0, '2025-06-07 23:27:17', '2025-06-07 23:27:17', NULL),
(29, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Dulce María Ríos Flores', 2058917, 'dulce.riosf@uanl.edu.mx', 0, '2025-06-07 23:31:51', '2025-06-07 23:31:51', NULL),
(30, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Emiliano Montoya Flores', 2070464, 'emiliano.montoyaf@uanl.edu.mx', 0, '2025-06-07 23:41:37', '2025-06-07 23:41:37', NULL),
(31, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Rubi Melissa Cruz Hernández', 2012972, 'rubi.cruzhrn@uanl.edu.mx', 1, '2025-06-07 23:53:09', '2025-06-08 00:56:36', NULL),
(32, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Ana Sofia Hernandez Salazar', 2008229, 'sofia.hernandezslz@uanl.edu.mx', 1, '2025-06-07 23:54:29', '2025-06-08 00:56:56', NULL),
(33, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mauricio Mejía Aguilar', 1955614, 'mauricio.mejiaglr@uanl.edu.mx', 1, '2025-06-07 23:59:15', '2025-06-08 00:56:39', NULL),
(34, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Francisco Salazar Moreno', 1950434, 'francisco.salazarmrn@uanl.edu.mx', 1, '2025-06-08 00:00:14', '2025-06-08 00:57:48', NULL),
(35, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Francisco Salazar Moreno', 1950434, 'francisco.salazarmrn@uanl.edu.mx', 0, '2025-06-08 00:02:09', '2025-06-08 00:02:09', NULL),
(36, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Hermilo Palomeque Gómez', 2086161, 'Hermilo.palomequeg@uanl.edu.mx', 1, '2025-06-08 00:02:20', '2025-06-08 00:58:17', NULL),
(37, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Santiago Antonio Troconis Alvarez', 2086039, 'santiago.troconisa@uanl.edu.mx', 1, '2025-06-08 00:03:00', '2025-06-08 00:57:28', NULL),
(38, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Enrique Venegas Villarreal', 1819013, 'enrique.venegasvllrr@uanl.edu.mx', 0, '2025-06-08 00:03:22', '2025-06-08 00:03:22', NULL),
(39, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Victor Hugo Molina Ruiz', 1973475, 'hugo.molinaui@uanl.edu.mx', 1, '2025-06-08 00:03:42', '2025-06-08 00:57:05', NULL),
(40, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Samanta Yoseline Sanchez Gaytan', 2082960, 'samanta.sanchezg@uanl.edu.mx', 1, '2025-06-08 00:04:33', '2025-06-08 00:56:41', NULL),
(41, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Humberto González Morin', 1912792, 'humberto.gonzalezmrn@uanl.edu.mx', 1, '2025-06-08 00:04:59', '2025-06-08 00:56:35', NULL),
(42, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Emiliano Montoya Flores', 2070464, 'emiliano.montoyaf@uanl.edu.mx', 1, '2025-06-08 00:05:53', '2025-06-08 00:56:59', NULL),
(43, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-08 00:06:17', '2025-06-08 00:06:17', NULL),
(44, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Luis Mario Malpica Garcia', 2136652, 'luis.malpicag@uanl.edu.mx', 0, '2025-06-08 00:08:02', '2025-06-08 00:08:02', NULL),
(45, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Gerardo Gael Hernandez Alejandro', 2025436, 'gerardo.hernandezalj@uanl.edu.mx', 1, '2025-06-08 00:08:18', '2025-06-08 01:06:58', NULL),
(46, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Enrique Martínez Díaz', 2052355, 'Luis.martinezd@uanl.edu.mx', 1, '2025-06-08 00:08:19', '2025-06-08 00:56:42', NULL),
(47, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Constanza Montiel', 2086142, 'constanza.montielm@uanl.edu.mx', 1, '2025-06-08 00:08:21', '2025-06-08 00:57:00', NULL),
(48, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Fernando Adolfo Cancino Cuenca', 2132913, 'fernando.cancinoc@uanl.edu.mx', 1, '2025-06-08 00:08:31', '2025-06-08 00:56:46', NULL),
(49, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 00:08:40', '2025-06-08 00:56:54', NULL),
(50, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alexa Marroquín', 1963265, 'alexa.marroquinic@uanl.edu.mx', 0, '2025-06-08 00:09:38', '2025-06-08 00:09:38', NULL),
(51, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alexa Marroquín', 1963265, 'alexa.marroquinic@uanl.edu.mx', 1, '2025-06-08 00:10:03', '2025-06-08 01:03:01', NULL),
(52, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Karyme Gisel Gonzalez Aguillon', 1915302, 'karyme.gonzalezaln@uanl.edu.mx', 0, '2025-06-08 00:11:04', '2025-06-08 00:11:04', NULL),
(53, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Alfredo Bañuelos Ruiz', 2064509, 'jorge.banuelosr@uanl.edu.mx', 1, '2025-06-08 00:11:35', '2025-06-08 01:02:47', NULL),
(54, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Cristian Mauricio gaytan macias', 1869720, 'cristian.gaytanms@uanl.edu.mx', 1, '2025-06-08 00:12:12', '2025-06-08 01:02:40', NULL),
(55, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jose Emiliano Frias Felix', 1962531, 'Emiliano.friasflx@uanl.edu.mx', 1, '2025-06-08 00:13:46', '2025-06-08 00:56:48', NULL),
(56, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Yair Emiliano Betancourt Samaniego', 1995031, 'yair.betancourtsmn@uanl.edu.mx', 1, '2025-06-08 00:15:33', '2025-06-08 00:56:14', NULL),
(57, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Victor Yahaziel Santillan Carrizales', 1951113, 'victor.santillancrzl@uanl.edu.mx', 1, '2025-06-08 00:23:57', '2025-06-08 00:56:42', NULL),
(58, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Oscar Osvaldo Quezada Vázquez', 1966181, 'oscar.quezadqvzqz@uanl.edu.mx', 1, '2025-06-08 00:24:19', '2025-06-08 00:57:05', NULL),
(59, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Carlos de Jesús Hurtado Torres', 1963732, 'carlos.hurtadotrs@uanl.edu.mx', 1, '2025-06-08 00:25:28', '2025-06-08 00:56:41', NULL),
(60, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Hernandez Romo Cristian Efrain', 1953991, 'efrain.hernandezom@uanl.edu.mx', 1, '2025-06-08 00:28:12', '2025-06-08 00:57:30', NULL),
(61, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'MAYELA JUDITH BRIONES NUÑEZ', 1903431, 'mayela.brionesnz@uanl.edu.mx', 0, '2025-06-08 00:39:04', '2025-06-08 00:39:04', NULL),
(62, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mayela Judith Briones Nuñez', 1903431, 'Mayela.brionesnz@uanl.edu.mx', 0, '2025-06-08 00:39:50', '2025-06-08 00:39:50', NULL),
(63, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alons', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 00:49:44', '2025-06-08 00:57:26', NULL),
(64, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 00:52:13', '2025-06-08 00:54:16', NULL),
(65, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jesús Valentín Galindo González', 2086320, 'jesus.galindog@uanl.edu.mx', 1, '2025-06-08 00:57:35', '2025-06-08 01:40:01', NULL),
(66, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Carlos de Jesús Hurtado Torres', 1963732, 'carlos.hurtadotrs@uanl.edu.mx', 1, '2025-06-08 00:58:50', '2025-06-08 01:40:06', NULL),
(67, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jesús Ramiro Moreno Flores', 1799441, 'Ramiro.morenoflrs@uanl.edu.mx', 1, '2025-06-08 00:59:26', '2025-06-08 05:18:40', NULL),
(68, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jock Rey Reyes Aguirre', 2046701, 'jock.reyesa@uanl.edu.mx', 1, '2025-06-08 00:59:38', '2025-06-08 01:44:51', NULL),
(69, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roberto Arturo Ruiz ochoa', 1458554, 'roberto.ruizoc@uanl.edu.mx', 1, '2025-06-08 00:59:38', '2025-06-08 01:40:20', NULL),
(70, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Rubi Melissa Cruz Hernández', 2012972, 'rubi.cruzhrn@uanl.edu.mx', 1, '2025-06-08 00:59:47', '2025-06-08 01:40:01', NULL),
(71, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Francisco Salazar Moreno', 1950434, 'francisco.salazarmrn@uanl.edu.mx', 1, '2025-06-08 01:00:22', '2025-06-08 01:40:55', NULL),
(72, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'David Emmanuel Alemán Serna', 2105496, 'david.alemans@uanl.edu.mx', 1, '2025-06-08 01:02:07', '2025-06-08 01:40:50', NULL),
(73, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alexa Marroquín', 1963265, 'alexa.marroquinic@uanl.edu.mx', 1, '2025-06-08 01:02:37', '2025-06-08 01:40:06', NULL),
(74, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Sofia Guzman', 2071910, 'sofia.guzmand@uanl.edu.mx', 0, '2025-06-08 01:03:01', '2025-06-08 01:03:01', NULL),
(75, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jesús Ramiro Moreno Flores', 1799441, 'Ramiro.morenoflrs@uanl.edu.mx', 1, '2025-06-08 01:03:32', '2025-06-08 01:03:48', NULL),
(76, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cruz Arturo Solis Saldivar', 1811522, 'cruz.solissldvr@uanl.edu.mx', 1, '2025-06-08 01:03:52', '2025-06-08 01:41:08', NULL),
(77, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Sofia Narvaez Morales', 2225450, 'sofia.narvaezm@uanl.edu.mx', 1, '2025-06-08 01:04:35', '2025-06-08 06:03:43', NULL),
(78, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Maria Fernanda Gómez Diaz', 1941472, 'Fernanda.gomezia@uanl.edu.mx', 1, '2025-06-08 01:04:39', '2025-06-08 01:41:11', NULL),
(79, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jesús Alfonso Hernández Topetes', 1808373, 'alfonso.hernandeztpts@uanl.edu.mx', 0, '2025-06-08 01:05:26', '2025-06-08 01:05:26', NULL),
(80, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Cerda Perez', 2117704, 'diego.cerdap@uanl.edu.mx', 1, '2025-06-08 01:05:51', '2025-06-08 01:39:52', NULL),
(81, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Maximiliano de Mendieta Cavazos', 1967599, 'maximiliano.demendietacvz@uanl.edu.mx', 1, '2025-06-08 01:06:46', '2025-06-08 02:51:43', NULL),
(82, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 1, '2025-06-08 01:07:10', '2025-06-08 02:52:09', NULL),
(83, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roxanna Abigail Mendoza González', 2132916, 'roxanna.mendozag@uanl.edu.mx', 0, '2025-06-08 01:07:12', '2025-06-08 01:07:12', NULL),
(84, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 01:07:52', '2025-06-08 01:39:58', NULL),
(85, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roberto Ponce Pérez', 2003723, 'roberto.ponceprz@uanl.edu.mx', 1, '2025-06-08 01:08:25', '2025-06-08 01:39:45', NULL),
(86, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'JUAN EDUARDO SILVA DE LEÓN', 1960338, 'eduardo.silvadln@uanl.edu.mx', 1, '2025-06-08 01:09:25', '2025-06-08 01:39:58', NULL),
(87, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Constanza Helena Montiel Mundo', 2086142, 'constanza.montielm@uanl.edu.mx', 1, '2025-06-08 01:09:41', '2025-06-08 01:39:56', NULL),
(88, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Ricardo Marcos Martínez Gómez', 2138951, 'marcos.martinezg@uanl.edu.mx', 0, '2025-06-08 01:11:14', '2025-06-08 01:11:14', NULL),
(89, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Maximiliano Contreras Aguilar', 2138642, 'maximiliano.contrerasa@uanl.edu.mx', 0, '2025-06-08 01:12:04', '2025-06-08 01:12:04', NULL),
(90, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 01:12:29', '2025-06-08 03:08:59', NULL),
(91, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 01:12:55', '2025-06-08 01:41:21', NULL),
(92, 4, 'Facultad de Ciencias de la Tierra', NULL, 'José Luis Núñez Garibay', 1356251, 'José.nuñezgr@uanl.edu.mx', 0, '2025-06-08 01:13:22', '2025-06-08 01:13:22', NULL),
(93, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'OZIEL REBOLLEDO PÉREZ', 1871974, 'oziel.rebolledopz@uanl.edu.mx', 1, '2025-06-08 01:13:44', '2025-06-08 01:44:26', NULL),
(94, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alonso', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 01:13:52', '2025-06-08 01:40:43', NULL),
(95, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jacob Misael Rodríguez Morales', 1907926, 'jacob.rodriguezmr@uanl.edu.mx', 1, '2025-06-08 01:14:00', '2025-06-08 01:43:26', NULL),
(96, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Dante Gael Ramírez Ortiz', 2143109, 'Dante.ramirezo@uanl.edu.mx', 1, '2025-06-08 01:14:07', '2025-06-08 01:39:59', NULL),
(97, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 01:14:56', '2025-06-08 01:50:56', NULL),
(98, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Eric Zahid López Parra', 2002637, 'eric.lopezp@uanl.edu.mx', 0, '2025-06-08 01:15:13', '2025-06-08 01:15:13', NULL),
(99, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Alberto Varela Amaro', 1950339, 'alberto.varelama@uanl.edu.mx', 1, '2025-06-08 01:15:18', '2025-06-08 01:39:55', NULL),
(100, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Oscar Osvaldo Quezada Vázquez', 1966171, 'oscar.quezadavzqz@uanl.edu.mx', 0, '2025-06-08 01:15:51', '2025-06-08 01:15:51', NULL),
(101, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Teresa Yasmin Uribe López', 1633769, 'José.nuñezgr@uanl.edu.mx', 0, '2025-06-08 01:15:54', '2025-06-08 01:15:54', NULL),
(102, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Derek Alejandro Luna Hernández', 1969757, 'derek.lunahrnd@uanl.edu.mx', 0, '2025-06-08 01:16:53', '2025-06-08 01:16:53', NULL),
(103, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Carlos García Vázquez', 1919676, 'carlos.garciavzq@uanl.edu.mx', 0, '2025-06-08 01:17:29', '2025-06-08 01:17:29', NULL),
(104, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Irie Manuel Acosta Castillo', 2177661, 'irie.acostac@uanl.edu.mx', 0, '2025-06-08 01:18:17', '2025-06-08 01:18:17', NULL),
(105, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Ponce de León Herrera', 1941445, 'ricardo.poncedeleonhr@uanl.edu.mx', 1, '2025-06-08 01:20:21', '2025-06-08 01:40:16', NULL),
(106, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jesus Alejandro Meza Solis', 1722653, 'Jesus.mezaso@uanl.edu.mx', 0, '2025-06-08 01:23:26', '2025-06-08 01:23:26', NULL),
(107, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Patricia Rubi Hernández Cepeda', 1853692, 'patricia.hernandezca@uanl.edu.mx', 1, '2025-06-08 01:23:51', '2025-06-08 01:40:54', NULL),
(108, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jesus Alejandro Meza Solis', 1722653, 'Jesus.mezaso@uanl.edu.mx', 1, '2025-06-08 01:23:59', '2025-06-08 01:40:12', NULL),
(109, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Hernandez Romo Cristian Efrain', 1953991, 'efrain.hernandezom@uanl.edu.mx', 1, '2025-06-08 01:32:10', '2025-06-08 01:40:35', NULL),
(110, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Ángel Manuel Sustaita Navarro', 2104791, 'angel.sustaita@uanl.edu.mx', 0, '2025-06-08 01:38:40', '2025-06-08 01:38:40', NULL),
(111, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Erick Franco mendez Estrada', 1979636, 'erick.mendezestr@uanl.edu.mx', 1, '2025-06-08 01:40:15', '2025-06-08 01:40:26', NULL),
(112, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Brandon Yahir Flores García', 2037084, 'b.floresgi@uanl.edu.mx', 0, '2025-06-08 01:47:55', '2025-06-08 01:47:55', NULL),
(113, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jose Carlos Coronado Rosas', 1875161, 'jose.coronadors@uanl.edu.mx', 1, '2025-06-08 01:48:17', '2025-06-08 01:48:45', NULL),
(114, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Andrés Hernández Macías', 1909151, 'gerardo.hernandezmc@uanl.edu.mx', 1, '2025-06-08 01:49:10', '2025-06-08 07:54:26', NULL),
(115, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Andrés Hernández Macías', 1909151, 'gerardo.hernandezmc@uanl.edu.mx', 1, '2025-06-08 01:49:42', '2025-06-08 07:54:19', NULL),
(116, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Gabriel Escamilla Flores', 1656316, 'angel.escamillafl@uanl.edu.mx', 1, '2025-06-08 01:50:47', '2025-06-08 02:52:36', NULL),
(117, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jose Carlos Coronado Rosas', 1875161, 'jose.coronadors@uanl.edu.mx', 1, '2025-06-08 01:51:03', '2025-06-08 02:52:33', NULL),
(118, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Abraham Israel Ramirez Flores', 1902183, 'ABRAHAM.RAMIREZFL@uanl.edu.mx', 1, '2025-06-08 01:51:21', '2025-06-08 02:52:34', NULL),
(119, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Adan Horacio Mendez Hernandez', 1843574, 'adan.mendezhz@uanl.edu.mx', 1, '2025-06-08 01:52:12', '2025-06-08 02:52:59', NULL),
(120, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Maria Fernanda Gómez Diaz', 1941472, 'fernanda.gomezia@uanl.edu.mx', 1, '2025-06-08 01:52:50', '2025-06-08 02:52:18', NULL),
(121, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paola Guadalupe Martell Garza', 2025981, 'paola.martellg@uanl.edu.mx', 1, '2025-06-08 01:52:58', '2025-06-08 02:52:22', NULL),
(122, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 01:53:32', '2025-06-08 02:11:38', NULL),
(123, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paola Judith Carvajal Guevara', 2001265, 'paola.carvajalgvr@uanl.edu.mx', 1, '2025-06-08 01:54:14', '2025-06-08 02:51:46', NULL),
(124, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniel Abisai Montelongo Vazquez', 2038118, 'daniel.montelongov@uanl.edu.mx', 0, '2025-06-08 01:54:39', '2025-06-08 01:54:39', NULL),
(125, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Raymond Alejandro García Gudiño', 1855903, 'raymond.garciagdn@uanl.edu.mx', 0, '2025-06-08 01:55:46', '2025-06-08 01:55:46', NULL),
(126, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'JUAN EDUARDO SILVA DE LEÓN', 1960338, 'eduardo.silvadln@uanl.edu.mx', 1, '2025-06-08 01:55:53', '2025-06-08 02:52:29', NULL),
(127, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Ponce de León Herrera', 1941445, 'ricardo.poncedeleonhr@uanl.edu.mx', 1, '2025-06-08 01:57:01', '2025-06-08 02:51:45', NULL),
(128, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Cerda Perez', 2117704, 'diego.cerdap@uanl.edu.mx', 1, '2025-06-08 01:57:09', '2025-06-08 02:52:21', NULL),
(129, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alexa Marroquín', 1963265, 'alexa.marroquinic@uanl.edu.mx', 1, '2025-06-08 01:57:35', '2025-06-08 02:51:53', NULL),
(130, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Sofia Narvaez amorales', 2225450, 'sofia.narvaezm@uanl.edu.mx', 0, '2025-06-08 01:58:02', '2025-06-08 01:58:02', NULL),
(131, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Santiago Antonio Troconis Alvarez', 2086039, 'santiago.troconisa@uanl.edu.mx', 1, '2025-06-08 01:58:03', '2025-06-08 02:51:40', NULL),
(132, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Oscar Osvaldo Quezada Vázquez', 1966171, 'oscar.quezadavzqz@uanl.edu.mx', 1, '2025-06-08 01:59:55', '2025-06-08 02:51:40', NULL),
(133, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Miguel Alberto Mata Lara', 2092749, 'miguel.matal@uanl.edu.mx', 0, '2025-06-08 02:00:12', '2025-06-08 02:00:12', NULL),
(134, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Miguel Alberto Mata Lara', 2092749, 'miguel.matal@uanl.edu.mx', 0, '2025-06-08 02:00:40', '2025-06-08 02:00:40', NULL),
(135, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jonathan Vite Palacios', 1813848, 'Jonathan.vitepcs@uanl.edu.mx', 0, '2025-06-08 02:01:14', '2025-06-08 02:01:14', NULL),
(136, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alejandro Bazaldua Gomez', 1729604, 'alejandro.bazalduago@uanl.edu.mx', 0, '2025-06-08 02:01:20', '2025-06-08 02:01:20', NULL),
(137, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Física', 'Jesús Valentín Galindo González', 2086320, 'jesus.galindog@uanl.edu.mx', 1, '2025-06-08 02:02:49', '2025-06-08 02:51:54', NULL),
(138, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 02:02:55', '2025-06-08 02:52:06', NULL),
(139, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 02:03:38', '2025-06-08 02:52:28', NULL),
(140, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Silvia Aimeé Briones Chávez', 1961800, 'silvia.brioneschvz@uanl.edu.mx', 1, '2025-06-08 02:04:00', '2025-06-08 02:52:12', NULL),
(141, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:04:30', '2025-06-08 02:04:30', NULL),
(142, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Gerardo Andrés Hernández Macías', 1909151, 'gerardo.hernandezmc@uanl.edu.mx', 0, '2025-06-08 02:04:48', '2025-06-08 02:04:48', NULL),
(143, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-08 02:04:55', '2025-06-08 02:04:55', NULL),
(144, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:05:15', '2025-06-08 02:05:15', NULL),
(145, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Constanza Helena Montiel Mundo', 2086142, 'constanza.montielm@uanl.edu.mx', 1, '2025-06-08 02:05:35', '2025-06-08 02:51:49', NULL),
(146, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mauricio Mejía Aguilar', 1955614, 'mauricio.mejiaglr@uanl.edu.mx', 1, '2025-06-08 02:05:42', '2025-06-08 02:52:22', NULL),
(147, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Trevño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:05:56', '2025-06-08 02:05:56', NULL),
(148, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'José Armando Campos Rivas', 1814685, 'armando.camposrvs@uanl.edu.mx', 0, '2025-06-08 02:06:01', '2025-06-08 02:06:01', NULL),
(149, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Romina Hernández Segura', 2149940, 'romina.hernandezs@uanl.edu.mx', 0, '2025-06-08 02:06:05', '2025-06-08 02:06:05', NULL),
(150, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:06:26', '2025-06-08 02:06:26', NULL),
(151, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Celeste Aguilar Lara', 2086181, 'celeste.aguilarl@uanl.edu.mx', 0, '2025-06-08 02:06:32', '2025-06-08 02:06:32', NULL),
(152, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Matemáticas', 'Gadiel Pérez Dávila', 2116419, 'gadiel.perezd@uanl.edu.mx', 0, '2025-06-08 02:06:52', '2025-06-08 02:06:52', NULL),
(153, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:06:59', '2025-06-08 02:06:59', NULL),
(154, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Atzel Olvera Romero', 2086072, 'atzel.olverar@uanl.edu.mx', 0, '2025-06-08 02:07:33', '2025-06-08 02:07:33', NULL),
(155, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:07:33', '2025-06-08 02:07:33', NULL),
(156, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:08:05', '2025-06-08 02:08:05', NULL),
(157, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Jose Angel Mendiola Treviño', 1948771, 'jose.mendiolatrvn@uanl.edu.mx', 0, '2025-06-08 02:08:34', '2025-06-08 02:08:34', NULL),
(158, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Ángel Garza Garcia', 2089114, 'angel.garzagr@uanl.edu.mx', 0, '2025-06-08 02:08:38', '2025-06-08 02:08:38', NULL),
(159, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Carlos de Jesús Hurtado Torres', 1963732, 'carlos.hurtadotrs@uanl.edu.mx', 1, '2025-06-08 02:08:39', '2025-06-08 02:51:45', NULL),
(160, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Física', 'Camila Fernanda Marín Briones', 2188077, 'camila.marinb@uanl.edu.mx', 0, '2025-06-08 02:08:43', '2025-06-08 02:08:43', NULL),
(161, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roxanna Abigail Mendoza González', 2132916, 'roxanna.mendozag@uanl.edu.mx', 0, '2025-06-08 02:08:45', '2025-06-08 02:08:45', NULL),
(162, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Sofia Guzman', 2071910, 'sofia.guzmand@uanl.edu.mx', 0, '2025-06-08 02:08:49', '2025-06-08 02:08:49', NULL),
(163, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Francisco Javier Zapata Alemán', 1941498, 'javier.zapatalmn@uanl.edu.mx', 0, '2025-06-08 02:08:50', '2025-06-08 02:08:50', NULL),
(164, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cruz Arturo Solis Saldivar', 1811522, 'cruz.solissldvr@uanl.edu.mx', 1, '2025-06-08 02:08:53', '2025-06-08 02:52:07', NULL),
(165, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Christian Eduardo Salazar Fuentes', 2064445, 'christian.salazarf@uanl.edu.mx', 0, '2025-06-08 02:09:19', '2025-06-08 02:09:19', NULL),
(166, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Alfredo Rojas Rico', 2095151, 'mario.rojasr@uanl.edu.mx', 0, '2025-06-08 02:09:27', '2025-06-08 02:09:27', NULL),
(167, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Diego Leal Martinez', 1958427, 'diego.lealmrtn@uanl.edu.mx', 0, '2025-06-08 02:09:34', '2025-06-08 02:09:34', NULL),
(168, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Christian Eduardo Salazar Fuentes', 2064445, 'christian.salazarf@uanl.edu.mx', 0, '2025-06-08 02:09:43', '2025-06-08 02:09:43', NULL),
(169, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ramsés Uriel Mota Chávez', 2222350, 'ramses.motac@uanl.edu.mx', 1, '2025-06-08 02:10:02', '2025-06-08 02:52:24', NULL),
(170, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Cesar Yahir Cepeda Ovalle', 2111242, 'cesar.cepedao@uanl.edu.mx', 1, '2025-06-08 02:10:08', '2025-06-08 02:52:43', NULL),
(171, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alondra Guadalupe Gutiérrez Mares', 2116063, 'alondra.gutierrezm@uanl.edu.mx', 1, '2025-06-08 02:10:14', '2025-06-08 02:57:27', NULL),
(172, 1, 'Facultad de Contaduría Pública y Administrativa', NULL, 'Sofía Guadalupe Briones saucedo', 1752190, 'sofiabriones.cd@uanl.edu.mx', 0, '2025-06-08 02:10:23', '2025-06-08 02:10:23', NULL),
(173, 8, 'Facultad de Ingeniería Mecánica y Eléctrica', NULL, 'Carlos Iván Fajardo Lopez', 1914997, 'Carlos.fajardolpz@uanl.edu.mx', 0, '2025-06-08 02:10:23', '2025-06-08 02:10:23', NULL),
(174, 8, 'Facultad de Ingeniería Mecánica y Eléctrica', NULL, 'Ricardo Marcos Martínez Gómez', 2138951, 'marcos.martinezg@uanl.edu.mx', 0, '2025-06-08 02:10:24', '2025-06-08 02:10:24', NULL),
(175, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Maximiliano Contreras Aguilar', 2138642, 'maximiliano.contrerasa@uanl.edu.mx', 1, '2025-06-08 02:10:30', '2025-06-08 02:52:03', NULL),
(176, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Angel Jonathan Garza Orozco', 1993947, 'angel.garzaorz@uanl.edu.mx', 0, '2025-06-08 02:10:32', '2025-06-08 02:10:32', NULL),
(177, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Enrique Leal Gutiérrez', 1957848, 'juan.lealgtrz@uanl.edu.mx', 1, '2025-06-08 02:10:47', '2025-06-08 02:52:47', NULL),
(178, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Natalie Yadira Acosta Argueta', 2047358, 'natalie.acostaa@uanl.edu.mx', 1, '2025-06-08 02:10:52', '2025-06-08 05:02:13', NULL),
(179, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Gonzalez', 1971613, 'oscar.gonzalezescalera@uanl.edu.mx', 1, '2025-06-08 02:10:55', '2025-06-08 02:52:04', NULL),
(180, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Luna Lizett Garcia Najera', 2039060, 'Luna.garcian@uanl.edu.mx', 1, '2025-06-08 02:11:04', '2025-06-08 02:53:05', NULL),
(181, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Fernando Adolfo Cancino Cuenca', 2132914, 'fernando.cancinoc@uanl.edu.mx', 1, '2025-06-08 02:11:38', '2025-06-08 02:51:48', NULL),
(182, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Perla Palomera', 2048224, 'perla.palomeral@uanl.edu.mx', 0, '2025-06-08 02:11:49', '2025-06-08 02:11:49', NULL),
(183, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Aimee Sarahí Tobias Muñiz', 2086222, 'aimee.tobiasm@uanl.edu.mx', 1, '2025-06-08 02:11:55', '2025-06-08 02:53:09', NULL),
(184, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Diego Uriel Pastrana Galindo', 2060595, 'diego.pastranag@uanl.edu.mx', 1, '2025-06-08 02:11:57', '2025-06-08 02:54:10', NULL),
(185, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Iglesias Rodríguez', 1968562, 'diego.iglesiasrdrg@uanl.edu.mx', 1, '2025-06-08 02:12:19', '2025-06-08 02:52:19', NULL),
(186, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'David Ignacio Vázquez Mendoza', 2095081, 'ignacio.vazquezm@uanl.edu.mx', 0, '2025-06-08 02:12:35', '2025-06-08 02:12:35', NULL),
(187, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jesus Ramiro Moreno Flores', 1799441, 'Ramiro.morenoflrs@uanl.edu.mx', 1, '2025-06-08 02:13:14', '2025-06-08 02:13:24', NULL),
(188, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Alberto Varela Amaro', 1950339, 'alberto.varelama@uanl.edu.mx', 1, '2025-06-08 02:17:28', '2025-06-08 02:51:51', NULL),
(189, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alfredo Emiliano Delgado Esquivel', 2132984, 'alfredo.delgadoe@uanl.edu.mx', 1, '2025-06-08 02:18:22', '2025-06-08 02:51:52', NULL),
(190, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Hernandez Romo Cristian Efrain', 1953991, 'efrain.hernandezom@uanl.edu.mx', 1, '2025-06-08 02:18:39', '2025-06-08 02:52:10', NULL),
(191, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Victor Yahaziel Santillan Carrizales', 1951113, 'victor.santillancrzl@uanl.edu.mx', 1, '2025-06-08 02:19:35', '2025-06-08 02:51:34', NULL),
(192, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Alberto Carrizales Morales', 1948419, 'luis.carrizalesmrls@uanl.edu.mx', 0, '2025-06-08 02:20:00', '2025-06-08 02:20:00', NULL),
(193, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alons', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 02:22:58', '2025-06-08 02:51:44', NULL),
(194, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Lizbeth Salas Maldonado', 1664132, 'Lizbeth.salasm@uanl.edu.mx', 1, '2025-06-08 02:24:50', '2025-06-08 02:52:52', NULL),
(195, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Danna Yamileth Hernández Soto', 2003526, 'danna.hernandezot@uanl.edu.mx', 0, '2025-06-08 02:28:37', '2025-06-08 02:28:37', NULL),
(196, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Mario Perez jimenez', 2086041, 'mario.perezj@uanl.edu.mx', 1, '2025-06-08 02:29:17', '2025-06-08 02:51:59', NULL),
(197, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Francisco Alejandro Contreras Villavicencio', 2086060, 'francisco.contrerasv@uanl.edu.mx', 1, '2025-06-08 02:30:55', '2025-06-08 03:09:36', NULL),
(198, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Carlos Alexander Rojas Rangel', 2143965, 'carlos.rojasr@uanl.edu.mx', 0, '2025-06-08 02:31:30', '2025-06-08 02:31:30', NULL),
(199, 8, 'Facultad de Artes Visuales', NULL, 'Jesley García Eguía', 2046273, 'jesley.garciae@uanl.edu.mx', 0, '2025-06-08 02:42:34', '2025-06-08 02:42:34', NULL),
(200, 1, 'Facultad de Contaduría Pública y Administrativa', NULL, 'José Luis Palomo De La Rosa', 2132895, 'jose.palomod@uanl.edu.mx', 0, '2025-06-08 02:43:54', '2025-06-08 02:43:54', NULL),
(201, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Oscar Osvaldo Quezada Vázquez', 1966171, 'oscar.quezadavzqz@uanl.edu.mx', 1, '2025-06-08 02:54:10', '2025-06-08 03:36:12', NULL),
(202, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Ponce de León Herrera', 1941445, 'ricardo.poncedeleonhr@uanl.edu.mx', 1, '2025-06-08 02:55:26', '2025-06-08 03:35:40', NULL),
(203, 1, 'Prepa 9', NULL, 'Armando Alejandro Solis Zamora', 2148255, 'armando.solisz@uanl.edu.mx', 0, '2025-06-08 02:55:41', '2025-06-08 02:55:41', NULL),
(204, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Isabella Martínez Cornejo', 2062746, 'isabella.martinezc@uanl.edu.mx', 1, '2025-06-08 02:55:45', '2025-06-08 03:35:44', NULL),
(205, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Natalie Yadira Acosta Argueta', 2047358, 'natalie.acostaa@uanl.edu.mx', 1, '2025-06-08 02:56:26', '2025-06-08 05:01:53', NULL),
(206, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007597, 'anna.perezhrt@uanl.edu.mx', 0, '2025-06-08 02:56:54', '2025-06-08 02:56:54', NULL),
(207, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alexa Marroquín Rico', 1963265, 'alexa.marroquinic@uanl.edu.mx', 1, '2025-06-08 02:57:55', '2025-06-08 03:35:41', NULL),
(208, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Ricardo Adhiel Jacobo Sanjuán', 1915471, 'ricardo.jacobosjn@uanl.edu.mx', 1, '2025-06-08 02:59:02', '2025-06-08 03:36:19', NULL),
(209, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 03:01:56', '2025-06-08 03:02:08', NULL),
(210, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Eric Zahid López Parra', 2002637, 'eric.lopezp@uanl.edu.mx', 1, '2025-06-08 03:02:07', '2025-06-08 03:02:24', NULL),
(211, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 03:03:27', '2025-06-08 03:03:32', NULL),
(212, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Sofia Narvaez Morales', 2225450, 'sofia.narvaezm@uanl.edu.mx', 1, '2025-06-08 03:03:42', '2025-06-08 03:03:56', NULL),
(213, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 03:04:04', '2025-06-08 03:04:09', NULL),
(214, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Enrique Venegas Villarreal', 1819013, 'enrique.venegasvllrr@uanl.edu.mx', 1, '2025-06-08 03:04:32', '2025-06-08 03:35:43', NULL),
(215, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Israel Alberto Gaytán Chavez', 1633655, 'israel.gaytancvz@uanl.edu.mx', 0, '2025-06-08 03:05:11', '2025-06-08 03:05:11', NULL),
(216, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luna Lizett Garcia Najera', 2039060, 'Luna.garcian@uanl.edu.mx', 1, '2025-06-08 03:06:19', '2025-06-08 03:35:42', NULL),
(217, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Israel Alberto Gaytán Chavez', 1633655, 'israel.gaytancvz@uanl.edu.mx', 0, '2025-06-08 03:06:27', '2025-06-08 03:06:27', NULL),
(218, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 03:06:49', '2025-06-08 03:35:51', NULL),
(219, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Israel Alberto Gaytan Chavez', 1633655, 'israel.gaytancvz@uanl.edu.mx', 0, '2025-06-08 03:08:00', '2025-06-08 03:08:00', NULL),
(220, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Ruy Lopez', 1863861, 'ruy.lopezvo@uanl.edu.mx', 0, '2025-06-08 03:10:27', '2025-06-08 03:10:27', NULL),
(221, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Constanza Helena Montiel Mundo', 2086142, 'constanza.montielm@uanl.edu.mx', 1, '2025-06-08 03:10:41', '2025-06-08 03:35:57', NULL),
(222, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Mauricio Guzmán', 1869136, 'mauricio.guzmangz@uanl.edu.mx', 0, '2025-06-08 03:10:49', '2025-06-08 03:10:49', NULL),
(223, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-08 03:11:44', '2025-06-08 03:11:44', NULL),
(224, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 03:12:19', '2025-06-08 03:36:04', NULL),
(225, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Irie Manuel Acosta Castillo', 2177661, 'irie.acostac@uanl.edu.mx', 0, '2025-06-08 03:13:57', '2025-06-08 03:13:57', NULL),
(226, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Física', 'Jean Paul Rosales Cásares', 2115182, 'jean.rosalesc@uanl.edu.mx', 0, '2025-06-08 03:15:03', '2025-06-08 03:15:03', NULL),
(227, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alonso', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 03:16:18', '2025-06-08 03:35:40', NULL),
(228, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Jesús Ramiro Moreno Flores', 1799441, 'Ramiro.morenoflrs@uanl.edu.mx', 1, '2025-06-08 03:16:19', '2025-06-08 03:17:57', NULL),
(229, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'José Manuel Bustos Guzman', 1947674, 'jose.bustosgzmn@uanl.edu.mx', 0, '2025-06-08 03:18:17', '2025-06-08 03:18:17', NULL);
INSERT INTO `event_register_people` (`id`, `event`, `dependency`, `career`, `registerName`, `enrollment`, `email`, `attended`, `created_at`, `updated_at`, `deleted_at`) VALUES
(230, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alexis Jaded Gallegos Morales', 2086283, 'alexis.gallegosm@uanl.edu.mx', 1, '2025-06-08 03:18:51', '2025-06-08 03:35:34', NULL),
(231, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Samantha Miroslava Garza Coronado', 1974038, 'samantha.garzacrnd@uanl.edu.mx', 1, '2025-06-08 03:19:03', '2025-06-08 03:35:28', NULL),
(232, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'José Manuel Bustos Guzman', 1947674, 'jose.bustosgzmn@uanl.edu.mx', 0, '2025-06-08 03:19:45', '2025-06-08 03:19:45', NULL),
(233, 5, 'Preparatoria 19', NULL, 'Juan Emanuel Aguilar Salazar', 2157379, 'emanuel.aguilars@uanl.edu.mx', 0, '2025-06-08 03:24:21', '2025-06-08 03:24:21', NULL),
(234, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Física', 'Jean Paul Rosales Cazares', 2115182, 'jean.rosalesc@uanl.edu.mx', 0, '2025-06-08 03:24:53', '2025-06-08 03:24:53', NULL),
(235, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Hernandez Romo Cristian Efrain', 1953991, 'efrain.hernandezom@uanl.edu.mx', 1, '2025-06-08 03:25:14', '2025-06-08 03:31:44', NULL),
(236, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Victor Yahaziel Santillan Carrizales', 1951113, 'victor.santillancrzl@uanl.edu.mx', 1, '2025-06-08 03:25:18', '2025-06-08 03:32:44', NULL),
(237, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Alberto Carrizales Morales', 1948419, 'luis.carrizalesmrls@uanl.edu.mx', 0, '2025-06-08 03:25:42', '2025-06-08 03:25:42', NULL),
(238, 2, 'Facultad de Ingeniería Mecánica y Eléctrica', NULL, 'Anhya Guadalupe Herrera Chi', 2142874, 'anhya.herrerac@uanl.edu.mx', 1, '2025-06-08 03:27:27', '2025-06-08 03:28:27', NULL),
(239, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Adriana Salazar Gómez', 2062772, 'adriana.salazarg@uanl.edu.mx', 1, '2025-06-08 03:27:50', '2025-06-08 03:36:56', NULL),
(240, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Raúl Tadeo Dávila Castro', 1947215, 'raul.davilacstr@uanl.edu.mx', 1, '2025-06-08 03:29:29', '2025-06-08 03:35:26', NULL),
(241, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cristian Guadalupe Lopez Sauceda', 1923095, 'cristian.lopezsc@uanl.edu.mx', 1, '2025-06-08 03:29:41', '2025-06-08 03:35:52', NULL),
(242, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Ponce de León Herrera', 1941445, 'ricardo.poncedeleonhr@uanl.edu.mx', 1, '2025-06-08 03:38:17', '2025-06-08 04:59:16', NULL),
(243, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Miguel Alberto Mata Lara', 2092749, 'miguel.matal@uanl.edu.mx', 0, '2025-06-08 03:39:49', '2025-06-08 03:39:49', NULL),
(244, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Carlos Alexander Rojas Rangel', 2143965, 'carlos.rojasr@uanl.edu.mx', 0, '2025-06-08 03:40:26', '2025-06-08 03:40:26', NULL),
(245, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Hannia Lizeth Delgado Gonzalez', 1947757, 'hannia.delgadognzl@uanl.edu.mx', 0, '2025-06-08 03:46:58', '2025-06-08 03:46:58', NULL),
(246, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Hernandez Romo Cristian Efrain', 1953991, 'efrain.hernandezom@uanl.edu.mx', 1, '2025-06-08 03:49:06', '2025-06-08 04:57:12', NULL),
(247, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Sofia Narvaez Morales', 2225450, 'sofia.narvaezm@uanl.edu.mx', 0, '2025-06-08 03:52:02', '2025-06-08 03:52:02', NULL),
(248, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Armando serrano caballero', 1964304, 'Jorge.serranocblr@uanl.edu.mx', 1, '2025-06-08 03:52:11', '2025-06-08 07:51:10', NULL),
(249, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis David Treviño Olvera', 1990122, 'luis.trevinolvr@uanl.edu.mx', 1, '2025-06-08 03:52:14', '2025-06-08 04:59:00', NULL),
(250, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roxanna Abigail Mendoza González', 2132916, 'roxanna.mendozag@uanl.edu.mx', 1, '2025-06-08 03:53:26', '2025-06-08 04:59:46', NULL),
(251, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paola Guadalupe Martell Garza', 2025981, 'paola.martellg@uanl.edu.mx', 1, '2025-06-08 03:53:39', '2025-06-08 04:59:08', NULL),
(252, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jonathan Antonio García Salazar', 1998672, 'jonathan.garciaslz@uanl.edu.mx', 0, '2025-06-08 03:54:13', '2025-06-08 03:54:13', NULL),
(253, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Maximiliano de Mendieta Cavazos', 1968599, 'maximiliano.demendietacvz@uanl.edu.mx', 1, '2025-06-08 03:54:15', '2025-06-08 04:59:04', NULL),
(254, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Armando serrano caballero', 1964304, 'Jorge.serranocblr@uanl.edu.mx', 1, '2025-06-08 03:54:21', '2025-06-08 04:59:34', NULL),
(255, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paola Judith Carvajal Guevara', 2001265, 'paola.carvajalgvr@uanl.edu.mx', 1, '2025-06-08 03:54:24', '2025-06-08 04:59:11', NULL),
(256, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Victor Yahaziel Santillan Carrizales', 1951113, 'victor.santillancrzl@uanl.edu.mx', 1, '2025-06-08 03:55:31', '2025-06-08 04:58:51', NULL),
(257, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 03:56:13', '2025-06-08 04:58:56', NULL),
(258, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jafeth Esau Plascencia Contreras', 1997554, 'Jafeth.plascenciacnt@uanl.edu.mx', 1, '2025-06-08 03:56:28', '2025-06-08 04:59:23', NULL),
(259, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Joaquin Andres Garcia Salas', 1905066, 'Joaquin.garciasl@uanl.edu.mx', 1, '2025-06-08 03:56:32', '2025-06-08 04:59:05', NULL),
(260, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Gabriel Escamilla Flores', 1656316, 'angel.escamillafl@uanl.edu.mx', 1, '2025-06-08 03:56:45', '2025-06-08 05:01:58', NULL),
(261, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Garza Meléndez', 2007283, 'diego.garzamln@uanl.edu.mx', 1, '2025-06-08 03:57:13', '2025-06-08 05:02:14', NULL),
(262, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 03:57:24', '2025-06-08 04:58:52', NULL),
(263, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 03:58:10', '2025-06-08 05:02:59', NULL),
(264, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Ricardo Marcos Martínez Gómez', 2138951, 'marcos.martinezg@uanl.edu.mx', 0, '2025-06-08 03:58:10', '2025-06-08 03:58:10', NULL),
(265, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Constanza Helena Montiel Mundo', 2086142, 'constanza.montielm@uanl.edu.mx', 1, '2025-06-08 03:58:14', '2025-06-08 04:59:06', NULL),
(266, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'José Armando Campos Rivas', 1814685, 'armando.campos.rvs@uanl.edu.mx', 1, '2025-06-08 03:58:18', '2025-06-08 04:59:34', NULL),
(267, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Enrique Leal Gutiérrez', 1957848, 'juan.lealgtrz@uanl.edu.mx', 1, '2025-06-08 03:59:28', '2025-06-08 04:59:53', NULL),
(268, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Aimee Sarahí Tobías Muñiz', 2086222, 'aimee.tobiasm@uanl.edu.mx', 1, '2025-06-08 03:59:38', '2025-06-08 04:59:05', NULL),
(269, 3, 'Facultad de Ingeniería Mecánica y Eléctrica', NULL, 'Carlos Iván Fajardo Lopez', 1914997, 'Carlos.fajardolpz@uanl.edu.mx', 0, '2025-06-08 04:00:23', '2025-06-08 04:00:23', NULL),
(270, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Juanita Guadalupe Martinez Hernández', 1895926, 'juanita.martinezhr@uanl.edu.mx', 0, '2025-06-08 04:01:05', '2025-06-08 04:01:05', NULL),
(271, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Nicolás Belo Gallegos Cepeda', 2037751, 'Nicolas.gallegosc@uanl.edu.mx', 0, '2025-06-08 04:01:44', '2025-06-08 04:01:44', NULL),
(272, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis Enrique Venegas Villarreal', 1819013, 'enrique.venegasvllrr@uanl.edu.mx', 1, '2025-06-08 04:01:52', '2025-06-08 04:58:55', NULL),
(273, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Karen Cecilia Sanchez Salazar', 1989983, 'karen.sanchezslz@uanl.edu.mx', 0, '2025-06-08 04:02:33', '2025-06-08 04:02:33', NULL),
(274, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Raúl Tadeo Dávila Castro', 1947215, 'raul.davilacstr@uanl.edu.mx', 1, '2025-06-08 04:02:39', '2025-06-08 04:58:58', NULL),
(275, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Iglesias Rodríguez', 1968562, 'diego.iglesiasrdrg@uanl.edu.mx', 1, '2025-06-08 04:02:48', '2025-06-08 05:00:00', NULL),
(276, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cristian Guadalupe Lopez Sauceda', 1923095, 'cristian.lopezsc@uanl.edu.mx', 1, '2025-06-08 04:02:53', '2025-06-08 04:59:18', NULL),
(277, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ximena Rosales Velazquez', 2086234, 'Ximena.rosalesv@uanl.edu.mx', 0, '2025-06-08 04:02:54', '2025-06-08 04:02:54', NULL),
(278, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Niurka Madeline Montelongo Tamez', 2076364, 'Niurka.montelongot@uanl.edu.mx', 1, '2025-06-08 04:02:55', '2025-06-08 04:58:48', NULL),
(279, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Matemáticas', 'Gadiel Pérez Dávila', 2116419, 'gadiel.perezd@uanl.edu.mx', 0, '2025-06-08 04:03:20', '2025-06-08 04:03:20', NULL),
(280, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Daniel Lopez', 1519547, 'daniel.lopezcst@uanl.edu.mx', 0, '2025-06-08 04:03:20', '2025-06-08 04:03:20', NULL),
(281, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Karina Vásquez', 1754446, 'Karina.vasquezqrg@uanl.edu.mx', 0, '2025-06-08 04:03:21', '2025-06-08 04:03:21', NULL),
(282, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alonso', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 04:03:25', '2025-06-08 04:58:44', NULL),
(283, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Briseida Huerta Concha', 1518864, 'bris.huerta@uanl.edu.mx', 0, '2025-06-08 04:03:29', '2025-06-08 04:03:29', NULL),
(284, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 04:03:40', '2025-06-08 05:05:24', NULL),
(285, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-08 04:04:18', '2025-06-08 04:04:18', NULL),
(286, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Ismael Espinosa Ramos', 1814954, 'ismael.espinosarms@uanl.edu.mx', 1, '2025-06-08 04:04:52', '2025-06-08 05:01:01', NULL),
(287, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Adrián Luna Pacheco', 2132950, 'jorge.lunap@uanl.edu.mx', 0, '2025-06-08 04:06:30', '2025-06-08 04:06:30', NULL),
(288, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'María del Carmen Quiroga Juarez', 1234567, 'ernesto.servinmz@uanl.edu.mx', 0, '2025-06-08 04:06:43', '2025-06-08 04:06:43', NULL),
(289, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Pablo Flores Blanco', 1923061, 'jorge.floresbl@uanl.edu.mx', 0, '2025-06-08 04:06:51', '2025-06-08 04:06:51', NULL),
(290, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roberto Ponce Pérez', 2003723, 'roberto.ponceprz@uanl.edu.mx', 0, '2025-06-08 04:07:12', '2025-06-08 04:07:12', NULL),
(291, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gamael Pérez Dávila', 2254006, 'gamael.perezd@uanl.edu.mx', 0, '2025-06-08 04:07:20', '2025-06-08 04:07:20', NULL),
(292, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'María Fernanda López Torres', 1907668, 'maria.lopezt@uanl.edu.mx', 0, '2025-06-08 04:08:18', '2025-06-08 04:08:18', NULL),
(293, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Oscar Ronaldo Román Regalado', 2099302, 'oscar.romanr@uanl.edu.mx', 0, '2025-06-08 04:09:54', '2025-06-08 04:09:54', NULL),
(294, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Jared Ruiz González', 2092220, 'gerardo.ruizg@uanl.edu.mx', 0, '2025-06-08 04:11:21', '2025-06-08 04:11:21', NULL),
(295, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Abraham Israel Ramirez Flores', 1902183, 'Abraham.ramirezfl@uanl.edu.mx', 1, '2025-06-08 04:11:22', '2025-06-08 04:59:07', NULL),
(296, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Francisco Alejandro Contreras Villavicencio', 2086060, 'francisco.contrerasv@uanl.edu.mx', 1, '2025-06-08 04:11:38', '2025-06-08 05:01:30', NULL),
(297, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Melissa Fernanda Garzon Gonzalez', 1998926, 'melissa.garzongnz@uanl.edu.mx', 1, '2025-06-08 04:11:39', '2025-06-08 09:59:52', NULL),
(298, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alma Daniela Garza Palomino', 2001476, 'alma.garzaplm@uanl.edu.mx', 0, '2025-06-08 04:11:57', '2025-06-08 04:11:57', NULL),
(299, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alma Daniela Garza Palomino', 2001476, 'alma.garzaplm@uanl.edu.mx', 1, '2025-06-08 04:12:28', '2025-06-08 04:59:23', NULL),
(300, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Isabella Martínez Cornejo', 2062746, 'isabella.martinezc@uanl.edu.mx', 1, '2025-06-08 04:12:36', '2025-06-08 04:58:59', NULL),
(301, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Irie Manuel Acosta Castillo', 2177661, 'irie.acostac@uanl.edu.mx', 1, '2025-06-08 04:13:14', '2025-06-08 04:59:30', NULL),
(302, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Natalie Yadira Acosta Argueta', 2047358, 'natalie.acostaa@uanl.edu.mx', 0, '2025-06-08 04:13:39', '2025-06-08 04:13:39', NULL),
(303, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ángel Manuel Sustaita Navarro', 2104791, 'angel.sustaita@uanl.edu.mx', 0, '2025-06-08 04:13:50', '2025-06-08 04:13:50', NULL),
(304, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Adriana Salazar Gómez', 2062772, 'adriana.salazarg@uanl.edu.mx', 1, '2025-06-08 04:14:13', '2025-06-08 04:59:37', NULL),
(305, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Josue Adrian Castro Piña', 1850768, 'Josue.castropn@uanl.edu.mx', 1, '2025-06-08 04:18:48', '2025-06-08 04:59:11', NULL),
(306, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Adan Horacio Mendez Hernandez', 1843574, 'adan.mendezhz@uanl.edu.mx', 1, '2025-06-08 04:19:01', '2025-06-08 04:59:48', NULL),
(307, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 04:19:37', '2025-06-08 04:19:47', NULL),
(308, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'ANNA CATHERINE PÉREZ HUERTA', 2007598, 'anna.perezhrt@uanl.edu.mx', 1, '2025-06-08 04:20:07', '2025-06-08 04:20:12', NULL),
(309, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alan Alejandro Vargas González', 2086183, 'alejandro.vargasg@uanl.edu.mx', 1, '2025-06-08 04:25:37', '2025-06-08 06:04:26', NULL),
(310, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Alan Alejandro Vargas González', 2086183, 'alejandro.vargasg@uanl.edu.mx', 1, '2025-06-08 04:26:55', '2025-06-08 05:09:07', NULL),
(311, 2, 'Prepa 9 UANL', NULL, 'Armando Alejandro Solis Zamora', 2148255, 'armando.solisz@uanl.edu.mx', 0, '2025-06-08 04:28:19', '2025-06-08 04:28:19', NULL),
(312, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Israel cobos', 2225458, 'israel.cobosg@uanl.edu.mx', 0, '2025-06-08 04:30:03', '2025-06-08 04:30:03', NULL),
(313, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Erick Franco Mendez Estrada', 1970636, 'erick.mendezestr@uanl.edu.mx', 1, '2025-06-08 04:34:52', '2025-06-08 04:59:22', NULL),
(314, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Fernando Escobar Espinosa', 2022108, 'fernando.escobaresp@uanl.edu.mx', 0, '2025-06-08 04:36:51', '2025-06-08 04:36:51', NULL),
(315, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Reyna Ximena Rodriguez Avila', 1957662, 'ximena.rodriguezavl@uanl.edu.mx', 0, '2025-06-08 04:40:19', '2025-06-08 04:40:19', NULL),
(316, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Reyna Ximena Rodriguez Avila', 1957662, 'ximena.rodriguezavl@uanl.edu.mx', 0, '2025-06-08 04:40:53', '2025-06-08 04:40:53', NULL),
(317, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Humberto Emmanuel Candelaria Vazquez', 2162235, 'humberto.candelariav@uanl.edu.mx', 0, '2025-06-08 04:43:56', '2025-06-08 04:43:56', NULL),
(318, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Reyna Ximena Rodriguez Avila', 1957662, 'ximena.rodriguezavl@uanl.edu.mx', 0, '2025-06-08 04:46:11', '2025-06-08 04:46:11', NULL),
(319, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mariana Danaé Sánchez Martínez', 2097283, 'mariana.sanchezm@uanl.edu.mx', 0, '2025-06-08 04:54:38', '2025-06-08 04:54:38', NULL),
(320, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Ponce de León Herrera', 1941445, 'ricardo.poncedeleonhr@uanl.edu.mx', 1, '2025-06-08 04:59:53', '2025-06-08 06:01:08', NULL),
(321, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Cesar Alexandro Guerra González', 1917267, 'cesar.guerraglz@uanl.edu.mx', 1, '2025-06-08 05:01:47', '2025-06-08 06:03:52', NULL),
(322, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Deyra Victoria Cardona Pérez', 1895889, 'deyra.cardonaprz@uanl.edu.mx', 1, '2025-06-08 05:04:23', '2025-06-08 05:06:23', NULL),
(323, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Israel cobos', 2225458, 'israel.cobosg@uanl.edu.mx', 0, '2025-06-08 05:04:36', '2025-06-08 05:04:36', NULL),
(324, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Gabriel Escamilla Flores', 1656316, 'angel.escamillafl@uanl.edu.mx', 1, '2025-06-08 05:05:26', '2025-06-08 06:06:38', NULL),
(325, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Garza Meléndez', 2007283, 'diego.garzamln@uanl.edu.mx', 1, '2025-06-08 05:05:29', '2025-06-08 06:08:01', NULL),
(326, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 05:05:39', '2025-06-08 06:03:50', NULL),
(327, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Deyra Victoria Cardona Pérez', 1895889, 'deyra.cardonaprz@uanl.edu.mx', 1, '2025-06-08 05:06:11', '2025-06-08 05:06:18', NULL),
(328, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jafeth Esau Plascencia Contreras', 1997554, 'Jafeth.plascenciacnt@uanl.edu.mx', 1, '2025-06-08 05:06:17', '2025-06-08 07:47:53', NULL),
(329, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Marco Antonio Aguirre González', 1992040, 'marco.aguirregnz@uanl.edu.mx', 0, '2025-06-08 05:07:18', '2025-06-08 05:07:18', NULL),
(330, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Constanza Helena Montiel Mundo', 2086142, 'constanza.montielm@uanl.edu.mx', 1, '2025-06-08 05:08:05', '2025-06-08 06:23:36', NULL),
(331, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Omar Eduardo García Martínez', 1738395, 'omar.garciamrt@uanl.edu.mx', 0, '2025-06-08 05:10:22', '2025-06-08 05:10:22', NULL),
(332, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 05:10:39', '2025-06-08 06:05:28', NULL),
(333, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-08 05:10:43', '2025-06-08 05:10:43', NULL),
(334, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 05:11:27', '2025-06-08 05:15:54', NULL),
(335, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Fernanda Elizabeth Guerrero Canizalez', 2048726, 'fernanda.guerreroc@uanl.edu.mx', 0, '2025-06-08 05:12:22', '2025-06-08 05:12:22', NULL),
(336, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Marco Antonio Aguirre González', 1992040, 'marco.aguirregnz@uanl.edu.mx', 0, '2025-06-08 05:12:29', '2025-06-08 05:12:29', NULL),
(337, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Cristopher Eduardo Aguilar Martínez', 2038909, 'cristopher.aguilarm@uanl.edu.mx', 0, '2025-06-08 05:12:52', '2025-06-08 05:12:52', NULL),
(338, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Ricardo Antonio Reyna Guerrero', 2162599, 'ricardo.reynag@uanl.edu.mx', 0, '2025-06-08 05:13:02', '2025-06-08 05:13:02', NULL),
(339, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cristian Guadalupe Lopez Sauceda', 1923095, 'cristian.lopezsc@uanl.edu.mx', 1, '2025-06-08 05:15:51', '2025-06-08 06:03:48', NULL),
(340, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Andrea Carrera Zamora', 2026779, 'andrea.carrerazmr@uanl.edu.mx', 1, '2025-06-08 05:16:57', '2025-06-08 06:04:09', NULL),
(341, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jorge Pablo Flores Blanco', 1923061, 'jorge.floresbl@uanl.edu.mx', 0, '2025-06-08 05:17:03', '2025-06-08 05:17:03', NULL),
(342, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Iglesias Rodríguez', 1968562, 'diego.iglesiasrdrg@uanl.edu.mx', 1, '2025-06-08 05:17:25', '2025-06-08 06:05:26', NULL),
(343, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 05:17:34', '2025-06-08 05:19:06', NULL),
(344, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jafeth Esau Plascencia Contreras', 1997554, 'Jafeth.plascenciacnt@uanl.edu.mx', 1, '2025-06-08 05:17:49', '2025-06-08 07:48:02', NULL),
(345, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alonso', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 05:17:58', '2025-06-08 06:03:56', NULL),
(346, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jose Emiliano Frias Felix', 1962531, 'Emiliano.friasflx@uanl.edu.mx', 0, '2025-06-08 05:18:06', '2025-06-08 05:18:06', NULL),
(347, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Jonathan Antonio García Salazar', 1998672, 'jonathan.garciaslz@uanl.edu.mx', 0, '2025-06-08 05:18:35', '2025-06-08 05:18:35', NULL),
(348, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Deyra Victoria Cardona Perez', 1895889, 'deyra.cardonaprz@uanl.edu.mx', 0, '2025-06-08 05:18:37', '2025-06-08 05:18:37', NULL),
(349, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Raúl Tadeo Dávila Castro', 1947215, 'raul.davilacstr@uanl.edu.mx', 1, '2025-06-08 05:18:39', '2025-06-08 06:03:59', NULL),
(350, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alondra Guajardo Uribe', 2048846, 'alondra.guajardou@uanl.edu.mx', 1, '2025-06-08 05:18:51', '2025-06-08 06:03:41', NULL),
(351, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Gonzalez', 1971613, 'oscar.gonzalezescalera@uanl.edu.mx', 0, '2025-06-08 05:19:13', '2025-06-08 05:19:13', NULL),
(352, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mauricio Alexander', 1967789, 'mauricio.martinezardn@uanl.edu.mx', 0, '2025-06-08 05:19:47', '2025-06-08 05:19:47', NULL),
(353, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Axel Garcia Valdez', 2017042, 'axel.garciavldz@uanl.edu.mx', 1, '2025-06-08 05:20:13', '2025-06-08 06:03:57', NULL),
(354, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Aldo Tovar Lazalde', 2086207, 'aldo.tovarl@uanl.edu.mx', 0, '2025-06-08 05:20:54', '2025-06-08 05:20:54', NULL),
(355, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Fernando Emiliano Romo Ramirez', 2003266, 'fernando.romormr@uanl.edu.mx', 0, '2025-06-08 05:21:42', '2025-06-08 05:21:42', NULL),
(356, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mauricio Eleuterio Ortiz Rodríguez', 2001170, 'mauricio.ortizrdr@uanl.edu.mx', 0, '2025-06-08 05:21:52', '2025-06-08 05:21:52', NULL),
(357, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Adrian Martinez Treviño', 1958524, 'adrian.martineztrvn@uanl.edu.mx', 1, '2025-06-08 05:24:39', '2025-06-08 06:04:09', NULL),
(358, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 05:26:24', '2025-06-08 06:04:16', NULL),
(359, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 05:31:10', '2025-06-08 05:33:36', NULL),
(360, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 05:34:28', '2025-06-08 05:36:32', NULL),
(361, 8, 'Facultad de Artes Visuales', NULL, 'Bitia Mendez Sánchez', 1998200, 'bitia.mendezsnc@uanl.edu.mx', 1, '2025-06-08 05:35:49', '2025-06-08 05:36:17', NULL),
(362, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Alfredo Rojas Rico', 2095151, 'mario.rojasr@uanl.edu.mx', 0, '2025-06-08 05:43:09', '2025-06-08 05:43:09', NULL),
(363, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Alondra Castillo Gonzalez', 2112777, 'alondra.castillognz@uanl.edu.mx', 1, '2025-06-08 05:43:12', '2025-06-08 07:48:00', NULL),
(364, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cesar Yahir Cepeda Ovalle', 2111242, 'cesar.cepedao@uanl.edu.mx', 1, '2025-06-08 05:43:46', '2025-06-08 08:29:32', NULL),
(365, 2, 'Facultad de Ciencias de la Comunicación', NULL, 'María Fernanda Amador Puente', 2022832, 'maria.amadorpnt@uanl.edu.mx', 1, '2025-06-08 05:44:55', '2025-06-08 07:49:26', NULL),
(366, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Juan Enrique Leal Gutiérrez', 1957848, 'juan.lealgtrz@uanl.edu.mx', 1, '2025-06-08 05:45:04', '2025-06-08 07:52:25', NULL),
(367, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Luis David Treviño Olvera', 1990122, 'luis.trevinolvr@uanl.edu.mx', 1, '2025-06-08 05:50:13', '2025-06-08 07:48:03', NULL),
(368, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'José Armando Campos Rivas', 1814685, 'armando.camposrvs@uanl.edu.mx', 1, '2025-06-08 05:50:38', '2025-06-08 07:47:46', NULL),
(369, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Yair Vera Chávez', 2225471, 'yair.verac@uanl.edu.mx', 0, '2025-06-08 05:51:54', '2025-06-08 05:51:54', NULL),
(370, 5, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:54:01', '2025-06-08 05:54:01', NULL),
(371, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:54:31', '2025-06-08 05:54:31', NULL),
(372, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:55:06', '2025-06-08 05:55:06', NULL),
(373, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:55:32', '2025-06-08 05:55:32', NULL),
(374, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Adan Horacio Mendez Hernandez', 1843574, 'adan.mendezhz@uanl.edu.mx', 0, '2025-06-08 05:55:45', '2025-06-08 05:55:45', NULL),
(375, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:55:48', '2025-06-08 05:55:48', NULL),
(376, 7, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:56:18', '2025-06-08 05:56:18', NULL),
(377, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Daniel Alfredo Segura Palacios', 2086108, 'daniel.segurap@uanl.edu.mx', 0, '2025-06-08 05:56:33', '2025-06-08 05:56:33', NULL),
(378, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Mayela Judith Briones Nuñez', 1903441, 'Mayela.brionesnz@uanl.edu.mx', 0, '2025-06-08 05:57:07', '2025-06-08 05:57:07', NULL),
(379, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Roberto Ponce Pérez', 2003723, 'roberto.ponceprz@uanl.edu.mx', 1, '2025-06-08 05:58:50', '2025-06-08 07:38:03', NULL),
(380, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Edmundo Cuéllar Luna', 2139991, 'Edmundo.cuellarl@uanl.edu.mx', 0, '2025-06-08 05:59:36', '2025-06-08 05:59:36', NULL),
(381, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Diego López Moreno', 2142590, 'diego.lopezmrn@uanl.edu.mx', 0, '2025-06-08 05:59:55', '2025-06-08 05:59:55', NULL),
(382, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Ponce de León Herrera', 1941445, 'ricardo.poncedeleonhr@uanl.edu.mx', 1, '2025-06-08 06:01:33', '2025-06-08 07:47:40', NULL),
(383, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Perla Palomera', 2048224, 'perla.palomeral@uanl.edu.mx', 0, '2025-06-08 06:01:54', '2025-06-08 06:01:54', NULL),
(384, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paola Guadalupe Martell Garza', 2025981, 'paola.martellg@uanl.edu.mx', 1, '2025-06-08 06:02:37', '2025-06-08 07:47:51', NULL),
(385, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mauricio Eleuterio Ortiz Rodríguez', 2001170, 'mauricio.ortizrdr@uanl.edu.mx', 1, '2025-06-08 06:05:35', '2025-06-08 07:52:10', NULL),
(386, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Iglesias Rodríguez', 1968562, 'diego.iglesiasrdrg@uanl.edu.mx', 1, '2025-06-08 06:06:17', '2025-06-08 07:49:04', NULL),
(387, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alma Daniela Garza Palomino', 2001476, 'alma.garzaplm@uanl.edu.mx', 1, '2025-06-08 06:07:49', '2025-06-08 07:48:43', NULL),
(388, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cristian Guadalupe Lopez Sauceda', 1923095, 'cristian.lopezsc@uanl.edu.mx', 1, '2025-06-08 06:07:54', '2025-06-08 07:49:42', NULL),
(389, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Andrea Carrera Zamora', 2026779, 'andrea.carrerazmr@uanl.edu.mx', 1, '2025-06-08 06:08:03', '2025-06-08 07:49:38', NULL),
(390, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Francisco José Carriedo Hernández', 1837504, 'francisco.carriedohr@uanl.edu.mx', 0, '2025-06-08 06:09:01', '2025-06-08 06:09:01', NULL),
(391, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Angel Gabriel Escamilla Flores', 1656316, 'angel.escamillafl@uanl.edu.mx', 1, '2025-06-08 06:09:42', '2025-06-08 07:50:36', NULL),
(392, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Irie Manuel Acosta Castillo', 2177661, 'irie.acostac@uanl.edu.mx', 1, '2025-06-08 06:10:03', '2025-06-08 11:38:53', NULL),
(393, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Román González Armendáriz', 1979420, 'roman.gonzaleza@uanl.edu.mx', 1, '2025-06-08 06:12:51', '2025-06-08 07:54:10', NULL),
(394, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Josue Adrian Castro Piña', 1850768, 'Josue.castropn@uanl.edu.mx', 1, '2025-06-08 06:13:41', '2025-06-08 07:47:47', NULL),
(395, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Paola Judith Carvajal Guevara', 2001265, 'paola.carvajalgvr@uanl.edu.mx', 1, '2025-06-08 06:13:46', '2025-06-08 07:48:08', NULL),
(396, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Irie Manuel Acosta Castillo', 2177661, 'irie.acostac@uanl.edu.mx', 1, '2025-06-08 06:14:19', '2025-06-08 06:14:28', NULL),
(397, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Julián Alberto Loredo Pachicano', 1825565, 'alberto.loredopchcn@uanl.edu.mx', 1, '2025-06-08 06:14:43', '2025-06-08 07:49:33', NULL),
(398, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Adrián Emanuel Cortez Gutiérrez', 2057096, 'adrian.cortezg@uanl.edu.mx', 1, '2025-06-08 06:15:03', '2025-06-08 07:48:08', NULL),
(399, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Cruz Arturo Solis Saldivar', 1811522, 'cruz.solissldvr@uanl.edu.mx', 1, '2025-06-08 06:15:03', '2025-06-08 07:48:05', NULL),
(400, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Lizbeth Salas Maldonado', 1664132, 'Lizbeth.salasm@uanl.edu.mx', 0, '2025-06-08 06:15:04', '2025-06-08 06:15:04', NULL),
(401, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alondra Sánchez Garza', 2136524, 'alondra.sanchezgrz@uanl.edu.mx', 0, '2025-06-08 06:15:30', '2025-06-08 06:15:30', NULL),
(402, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'María Fernanda López Torres', 1907668, 'maria.lopeztrs@uanl.edu.mx', 0, '2025-06-08 06:15:33', '2025-06-08 06:15:33', NULL),
(403, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Andrés Tadeo López Fabela', 1949080, 'tadeo.lopezfbl@uanl.edu.mx', 0, '2025-06-08 06:15:37', '2025-06-08 06:15:37', NULL),
(404, 3, 'Facultad de Economía', NULL, 'Rolando de Jesus Cervantes Garza', 2010234, 'rolando.cervantezgrz@uanl.edu.mx', 0, '2025-06-08 06:15:44', '2025-06-08 06:15:44', NULL),
(405, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Melissa Fernanda Garzon Gonzalez', 1998926, 'melissa.garzongnz@uanl.edu.mx', 1, '2025-06-08 06:15:46', '2025-06-08 08:03:41', NULL),
(406, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ricardo Govea Godínez', 1904850, 'ricardo.goveagnz@uanl.edu.mx', 0, '2025-06-08 06:15:54', '2025-06-08 06:15:54', NULL),
(407, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Evelyn Alejandra Villanueva Herrera', 2173456, 'evelyn.villanuevah@uanl.edu.mx', 0, '2025-06-08 06:15:57', '2025-06-08 06:15:57', NULL),
(408, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Joaquin Andres Garcia Salas', 1905066, 'joaquin.garciasl@uanl.edu.mx', 1, '2025-06-08 06:16:02', '2025-06-08 07:50:18', NULL),
(409, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Gael Enrique Lugo Leang', 1978260, 'Enrique.lugolng@uanl.edu.mx', 0, '2025-06-08 06:16:05', '2025-06-08 06:16:05', NULL),
(410, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Perez jimenez', 2086041, 'mario.perezj@uanl.edu.mx', 1, '2025-06-08 06:16:14', '2025-06-08 07:47:47', NULL),
(411, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Mario Gonzalez', 1971613, 'oscar.gonzalezescalera@uanl.edu.mx', 1, '2025-06-08 06:16:27', '2025-06-08 07:47:55', NULL),
(412, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Keyla Citlalli Ocura Díaz', 2125979, 'keyla.ocurad@uanl.edu.mx', 1, '2025-06-08 06:16:54', '2025-06-08 07:47:49', NULL),
(413, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Daniela Rodríguez Nocedo', 1985203, 'daniela.rodriguezncd@uanl.edu.mx', 1, '2025-06-08 06:17:04', '2025-06-08 07:48:30', NULL),
(414, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alan Librado Carrizales Manzanares', 1897486, 'alan.carrizalesmrs@uanl.edu.mx', 0, '2025-06-08 06:18:06', '2025-06-08 06:18:06', NULL),
(415, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Yair Vera Chávez', 2225471, 'yair.verac@uanl.edu.mx', 0, '2025-06-08 06:18:17', '2025-06-08 06:18:17', NULL),
(416, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Valeria Guadalupe Vallejo Ramírez', 1852002, 'valeria.vallejorz@uanl.edu.mx', 1, '2025-06-08 06:18:44', '2025-06-08 08:02:33', NULL),
(417, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Emmanuel Angel Gomez Gonzalez', 2055533, 'emmanuel.gomezg@uanl.edu.mx', 1, '2025-06-08 06:18:58', '2025-06-08 08:07:11', NULL),
(418, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Gerardo Mendoza Alonso', 1817496, 'gerardo.mendozaalns@uanl.edu.mx', 1, '2025-06-08 06:19:32', '2025-06-08 07:51:32', NULL),
(419, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Mayela Judith Briones Nuñez', 1903432, 'Mayela.brionesnz@uanl.edu.mx', 0, '2025-06-08 06:20:06', '2025-06-08 06:20:06', NULL),
(420, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Alexis Eduardo Trejo Santos', 1904034, 'alexis.trejosts@uanl.edu.mx', 0, '2025-06-08 06:24:22', '2025-06-08 06:24:22', NULL),
(421, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Garza Meléndez', 2007283, 'diego.garzamln@uanl.edu.mx', 1, '2025-06-08 06:26:15', '2025-06-08 06:26:44', NULL),
(422, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Hernandez Romo Cristian Efrain', 1953991, 'efrain.hernandezom@uanl.edu.mx', 1, '2025-06-08 06:44:34', '2025-06-08 07:51:19', NULL),
(423, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Alexis Aguilar Muñiz', 2076278, 'alexis.aguilarm@uanl.edu.mx', 0, '2025-06-08 06:48:23', '2025-06-08 06:48:23', NULL),
(424, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Actuaría', 'Maximiliano Martínez Valadez', 1932852, 'maximiliano.martinezvdz@uanl.edu.mx', 0, '2025-06-08 07:01:50', '2025-06-08 07:01:50', NULL),
(425, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Ciencias Computacionales', 'Maximiliano Martínez Valadez', 1932852, 'maximiliano.martinezvdz@uanl.edu.mx', 0, '2025-06-08 07:03:06', '2025-06-08 07:03:06', NULL),
(426, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Victor Yahaziel Santillan Carrizales', 1951113, 'victor.santillancrzl@uanl.edu.mx', 1, '2025-06-08 07:09:18', '2025-06-08 07:48:04', NULL),
(427, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ángel Manuel Sustaita Navarro', 2104791, 'angel.sustaita@uanl.edu.mx', 1, '2025-06-08 07:49:13', '2025-06-08 10:02:40', NULL),
(428, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Rafael Eduardo Gallegos Rives', 1990706, 'Rafael.gallegosrvs@uanl.edu.mx', 1, '2025-06-08 07:49:20', '2025-06-08 07:49:26', NULL),
(429, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Maria Adriana Fuentes Aguilar', 1662417, 'maria.fuentesag@uanl.edu.mx', 0, '2025-06-08 07:52:54', '2025-06-08 07:52:54', NULL),
(430, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Eric Zahid López Parra', 2002637, 'eric.lopezp@uanl.edu.mx', 1, '2025-06-08 07:53:27', '2025-06-08 07:53:43', NULL),
(431, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Eric Zahid López Parra', 2002637, 'eric.lopezp@uanl.edu.mx', 1, '2025-06-08 07:54:10', '2025-06-08 07:54:26', NULL),
(432, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'David Emanuel Rodriguez Rodriguez', 1972905, 'david.rodriguezrdrg@uanl.edu.mx', 1, '2025-06-08 07:56:52', '2025-06-08 07:57:02', NULL),
(433, 1, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Seguridad de Tecnologías de Información', 'Iran Alexandra Venegas Rodriguez', 2086177, 'Iran.venegasr@uanl.edu.mx', 1, '2025-06-08 08:22:28', '2025-06-08 08:25:13', NULL),
(434, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'sofia narvaez morales', 2225450, 'sofia.narvaezm@uanl.edu.mx', 1, '2025-06-08 08:42:04', '2025-06-08 08:42:11', NULL),
(435, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Atzel Olvera Romero', 2086072, 'atzel.olverar@uanl.edu.mx', 0, '2025-06-08 09:18:50', '2025-06-08 09:18:50', NULL),
(436, 2, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Sofia Fabiola Álvarez Treviño', 2086243, 'sofia.alvarezt@uanl.edu.mx', 1, '2025-06-08 09:34:00', '2025-06-08 09:34:26', NULL),
(437, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Sherlyn Pérez Espinosa', 2225416, 'sherlyn.pereze@uanl.edu.mx', 0, '2025-06-08 10:42:12', '2025-06-08 10:42:12', NULL),
(438, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Oscar Alonso Cerda Rivera', 2022279, 'oscar.cerdar@uanl.edu.mx', 0, '2025-06-08 11:53:24', '2025-06-08 11:53:24', NULL),
(439, 8, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ileana Paola Salas Meza', 1990033, 'ileana.salasez@uanl.edu.mx', 0, '2025-06-08 14:39:45', '2025-06-08 14:39:45', NULL),
(440, 6, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Ileana Paola Salas Meza', 1990033, 'ileana.salasez@uanl.edu.mx', 0, '2025-06-08 14:40:47', '2025-06-08 14:40:47', NULL),
(441, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Diego Sebastián González Castillo', 1845018, 'diego.gonzalezco@uanl.edu.mx', 1, '2025-06-10 02:15:08', '2025-06-10 02:15:38', NULL),
(442, 3, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Multimedia y Animación Digital', 'Aldo Segoviano', 2140780, 'aldo.segovianoh@uanl.edu.mx', 0, '2025-06-11 06:11:48', '2025-06-11 06:11:48', NULL),
(443, 2, 'Facultad de Ciencias de la Comunicación', NULL, 'Itzel Damara Gil de León', 2002370, 'itzel.gildln@uanl.edu.mx', 0, '2025-06-14 01:23:51', '2025-06-14 01:23:51', NULL),
(444, 4, 'Facultad de Ciencias Físico Matemáticas', 'Licenciatura en Física', 'Carlos Daniel Pinkus Martinez', 2086095, 'carlos.pinkusm@uanl.edu.mx', 0, '2025-08-08 00:38:53', '2025-08-08 00:38:53', NULL),
(445, 6, 'Facultad de Artes Visuales', 'Licenciatura en Actuaría', 'alexa cardenas', 1234567, 'alexandra.cardenast@uanl.edu.mx', 0, '2025-08-19 23:27:04', '2025-08-19 23:27:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_students`
--

CREATE TABLE `event_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` bigint(20) UNSIGNED NOT NULL,
  `student` bigint(20) UNSIGNED NOT NULL,
  `attended` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `external_people`
--

CREATE TABLE `external_people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` enum('female','male','they') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `external_people_events`
--

CREATE TABLE `external_people_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `externalPeople` bigint(20) UNSIGNED NOT NULL,
  `event` bigint(20) UNSIGNED NOT NULL,
  `attended` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `guests`
--

INSERT INTO `guests` (`id`, `fullName`, `company`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Carolina Escobedo Rubio', NULL, '2025-05-17 04:34:14', '2025-05-17 04:34:14', NULL),
(2, 'Humberto Vélez', NULL, '2025-05-17 04:34:28', '2025-05-17 04:34:28', NULL),
(3, 'Erick Vásquez', NULL, '2025-05-17 04:34:41', '2025-05-17 04:34:41', NULL),
(4, 'Antonio Montemayor', NULL, '2025-05-17 04:34:50', '2025-05-17 04:34:50', NULL),
(5, 'Edgar Soda', NULL, '2025-05-17 04:35:01', '2025-05-17 04:35:01', NULL),
(6, 'Luz de León', NULL, '2025-05-17 04:35:09', '2025-05-17 04:35:09', NULL),
(7, 'Eliud Juárez', NULL, '2025-05-17 04:35:19', '2025-05-17 04:35:19', NULL),
(8, 'Lina Rangel Zamora', NULL, '2025-05-17 04:35:29', '2025-05-17 04:35:29', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '001_2014_10_12_000000_create_users_table', 1),
(2, '003_2022_12_13_170231_create_external_people_table', 1),
(3, '004_2022_12_13_170452_create_companies_table', 1),
(4, '005_2022_12_13_170423_create_guests_table', 1),
(5, '006_2022_12_13_171001_create_projects_table', 1),
(6, '007_2022_12_15_175415_create_students_table', 1),
(7, '008_2022_12_13_174106_create_project_students_table', 1),
(8, '009_2023_01_12_185245_create_teachers_table', 1),
(9, '010_2023_01_20_163223_create_company_people_table', 1),
(10, '011_2023_02_14_211125_create_events_table', 1),
(11, '012_2023_02_14_185822_create_event_guests_table', 1),
(12, '013_2023_02_14_212239_create_event_students_table', 1),
(13, '014_2023_02_14_213706_create_external_people_events_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameProject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `semester`, `subject`, `nameProject`, `status`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Fundamentos del dibujo artístico', 'DISEÑO DE PERSONAJES FUTURISTAS', 1, NULL, '2025-05-28 01:01:57', '2025-06-07 06:04:30', NULL),
(2, 3, 'Producción multimedia', 'Sospechoso', 1, NULL, '2025-05-28 01:06:22', '2025-06-07 06:04:34', NULL),
(3, 3, 'Modelado arquitectónico', 'Recreación de un Hogar', 1, NULL, '2025-05-28 01:08:22', '2025-06-07 06:04:38', NULL),
(4, 5, 'Fotografía digital', 'Fotografia Digital', 1, NULL, '2025-05-28 01:10:02', '2025-06-07 06:04:44', NULL),
(5, 5, 'Modelos de administración de datos', 'R&M Nóminas', 1, NULL, '2025-05-28 01:11:46', '2025-06-07 06:04:52', NULL),
(6, 5, 'Animación básica', 'Los Principios de la Animación', 1, NULL, '2025-05-29 00:09:23', '2025-06-07 06:05:19', NULL),
(7, 6, 'Escenarios de videojuegos', 'Deon Red Dead', 1, NULL, '2025-05-29 00:13:12', '2025-06-07 06:05:25', NULL),
(8, 6, 'Gráficas computacionales II', 'El Sendero del Aprendiz', 1, NULL, '2025-05-29 00:15:25', '2025-06-07 06:05:30', NULL),
(9, 6, 'Ilustración digital', 'D0q1', 1, NULL, '2025-05-29 00:17:26', '2025-06-07 06:05:36', NULL),
(10, 7, 'Base de datos multimedia', 'BrainBit', 1, NULL, '2025-05-29 00:19:54', '2025-06-07 06:05:40', NULL),
(11, 7, 'Optimización de videojuegos', 'Proyecto_579087', 0, NULL, '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(12, 7, 'Actuación y dirección para animación', 'La primera Carnita Asada', 1, NULL, '2025-05-29 00:23:31', '2025-06-07 06:05:44', NULL),
(13, 7, 'Animación tradicional de humanos y de animales', 'Proyecto_394186', 0, NULL, '2025-05-29 00:26:19', '2025-05-29 00:26:19', NULL),
(14, 7, 'Efectos visuales II', 'Proyecto_382366', 0, NULL, '2025-05-29 00:27:17', '2025-05-29 00:27:17', NULL),
(15, 8, 'Diseño de videojuegos en linea', 'Proyecto_579845', 0, NULL, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(16, 8, 'Realidad virtual', 'Proyecto_538005', 0, NULL, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(17, 8, 'Esqueletos de personajes', 'Ganondorf Rigg', 1, NULL, '2025-05-29 01:16:47', '2025-06-07 06:05:48', NULL),
(18, 8, 'Animación tradicional de escenarios', 'Adapt or Die - Splashart', 1, NULL, '2025-05-29 01:18:19', '2025-06-07 06:05:53', NULL),
(19, 3, 'Fundamentos del dibujo artístico', 'Diseños de personaje: Apocalipsis', 1, NULL, '2025-05-29 03:34:37', '2025-06-07 06:05:59', NULL),
(20, 3, 'Producción multimedia', 'PURPLE WOLF', 1, NULL, '2025-05-29 03:39:51', '2025-06-07 06:06:38', NULL),
(21, 3, 'Modelado arquitectónico', 'Casa Avis', 1, NULL, '2025-05-29 03:42:31', '2025-06-07 06:06:50', NULL),
(22, 5, 'Fotografía digital', 'Proyecto_887296', 0, NULL, '2025-05-29 03:44:42', '2025-05-29 03:44:42', NULL),
(23, 5, 'Gráficas computacionales I', 'Gráficas Computacionesles I - Missing', 1, NULL, '2025-05-29 03:46:18', '2025-06-07 06:06:57', NULL),
(24, 5, 'Modelos de administración de datos', 'Gestión de Nóminas (MAD)', 1, NULL, '2025-05-29 03:48:55', '2025-06-07 06:07:02', NULL),
(25, 5, 'Administración de alto volumen de datos', 'Force X', 1, NULL, '2025-05-29 03:53:13', '2025-06-07 06:07:06', NULL),
(26, 5, 'Animación básica', 'Animación Basica en 3D - Anatomia humana', 1, NULL, '2025-05-29 04:03:17', '2025-06-07 06:07:11', NULL),
(27, 6, 'Escenarios de videojuegos', 'Sufragio: Norte', 1, NULL, '2025-05-29 04:08:16', '2025-06-07 06:07:15', NULL),
(28, 6, 'Gráficas computacionales II', 'Garden Quest', 1, NULL, '2025-05-29 04:11:19', '2025-06-07 06:07:20', NULL),
(29, 6, 'Ilustración digital', 'El Peón', 1, NULL, '2025-05-29 04:13:28', '2025-06-07 06:07:23', NULL),
(30, 7, 'Base de datos multimedia', 'My Tomillo', 1, NULL, '2025-05-29 04:16:12', '2025-06-07 06:07:28', NULL),
(31, 7, 'Actuación y dirección para animación', 'Proyecto_432483', 0, NULL, '2025-05-29 04:18:51', '2025-05-29 04:18:51', NULL),
(32, 7, 'Animación tradicional de humanos y de animales', 'Las 3 De La Mañana', 1, NULL, '2025-05-29 04:22:13', '2025-06-07 06:07:32', NULL),
(33, 7, 'Efectos visuales II', 'Esto No Es Un Cortometraje | Cortometraje', 1, NULL, '2025-05-29 04:23:41', '2025-06-07 06:07:38', NULL),
(34, 8, 'Diseño de videojuegos en linea', 'Beliquines', 1, NULL, '2025-05-29 04:28:49', '2025-06-07 06:07:42', NULL),
(35, 8, 'Esqueletos de personajes', 'Proto Alpha Rig', 1, NULL, '2025-05-29 04:30:26', '2025-06-07 06:08:31', NULL),
(36, 8, 'Animación tradicional de escenarios', 'El Ultimo Suspiro', 1, NULL, '2025-05-29 04:33:35', '2025-06-07 06:08:36', NULL),
(37, 8, 'Iluminación y audio', 'Proyecto_180300', 0, NULL, '2025-05-29 04:35:04', '2025-05-29 04:35:04', NULL),
(38, 7, 'Programación de sistemas móviles', 'Almaneque', 1, NULL, '2025-05-29 23:41:52', '2025-06-07 05:59:37', NULL),
(39, 9, 'Postproducción', 'Spectracular', 1, NULL, '2025-05-29 23:47:56', '2025-06-07 06:08:46', NULL),
(40, 7, 'Programación de sistemas móviles', 'Proyecto_579113', 0, NULL, '2025-05-30 02:40:11', '2025-05-30 02:40:11', NULL),
(41, 7, 'Programación de sistemas móviles', 'Proyecto_719720', 0, NULL, '2025-05-30 02:42:29', '2025-05-30 02:42:29', NULL),
(42, 3, 'Modelado arquitectónico', 'Modelado de una casa en 3D_WCC', 1, NULL, '2025-05-31 00:38:54', '2025-06-07 06:08:50', NULL),
(43, 4, 'Modelado orgánico', 'Renders semirealistas de objetos 3D', 1, NULL, '2025-05-31 01:09:38', '2025-06-07 06:08:54', NULL),
(44, 4, 'Modelado orgánico', 'Cuerpo y objetos 3D', 1, NULL, '2025-05-31 01:16:00', '2025-06-07 06:08:59', NULL),
(45, 5, 'Fotografía digital', 'Pureza en calma', 1, NULL, '2025-05-31 01:33:40', '2025-06-07 06:09:03', NULL),
(46, 5, 'Diseño de hápticos', 'The Haunted Forest', 1, NULL, '2025-05-31 01:47:59', '2025-06-07 06:09:11', NULL),
(47, 4, 'Tecnologías multimedia', '《 Al ritmo de tu base 》', 1, NULL, '2025-05-31 01:49:32', '2025-06-07 06:09:17', NULL),
(48, 5, 'Animación básica', 'Animación básica', 1, NULL, '2025-05-31 01:53:39', '2025-06-07 06:09:23', NULL),
(49, 6, 'Escenarios de videojuegos', 'Sacrificio', 1, NULL, '2025-05-31 01:58:52', '2025-06-07 06:09:28', NULL),
(50, 6, 'Modelado en alto poligonaje', 'MODELADO EN ALTO POLIGONAJE LMAD EXPO', 1, NULL, '2025-05-31 03:55:52', '2025-06-07 06:09:34', NULL),
(51, 6, 'Modelado en alto poligonaje', 'Johnny Silverhand (Keanu Reeves)', 1, NULL, '2025-05-31 03:57:31', '2025-06-07 06:09:39', NULL),
(52, 6, 'Ilustración digital', 'Dawns Veil', 1, NULL, '2025-05-31 03:59:57', '2025-06-07 06:09:44', NULL),
(53, 7, 'Optimización de videojuegos', 'Death Side', 1, NULL, '2025-05-31 04:09:07', '2025-06-07 06:09:51', NULL),
(54, 7, 'Actuación y dirección para animación', 'Los increíbles - Me siento infeliz Bob', 1, NULL, '2025-05-31 04:12:56', '2025-06-07 06:09:58', NULL),
(55, 7, 'Animación tradicional de humanos y de animales', 'Unifera', 1, NULL, '2025-05-31 04:17:44', '2025-06-07 06:10:05', NULL),
(56, 8, 'Diseño de videojuegos en linea', 'Timelock Royale', 1, NULL, '2025-05-31 04:22:06', '2025-06-07 06:10:10', NULL),
(57, 8, 'Diseño de videojuegos en linea', 'Holy Sheep', 1, NULL, '2025-05-31 04:27:42', '2025-06-07 06:10:15', NULL),
(58, 8, 'Esqueletos de personajes', 'Pose to power- Spider Gwen Rig', 1, NULL, '2025-05-31 04:29:03', '2025-06-07 06:10:23', NULL),
(59, 8, 'Animación tradicional de escenarios', 'DA - ARU ! !', 1, NULL, '2025-05-31 04:30:30', '2025-06-07 06:10:28', NULL),
(60, 9, 'Postproducción', 'Bachicha Chamba', 1, NULL, '2025-05-31 04:38:04', '2025-06-07 06:10:34', NULL),
(61, 7, 'Optimización de videojuegos', 'SUFRAGIO', 1, NULL, '2025-06-02 23:12:34', '2025-06-07 06:10:39', NULL),
(62, 3, 'Modelado arquitectónico', 'Casa en la calle Bonampak', 1, NULL, '2025-06-02 23:18:49', '2025-06-07 06:10:45', NULL),
(63, 4, 'Modelado orgánico', 'Modelado orgánico: Formas curvas y la figura humana', 1, NULL, '2025-06-02 23:27:52', '2025-06-07 06:10:50', NULL),
(64, 4, 'Modelado orgánico', 'Renders de modelos básicos', 1, NULL, '2025-06-02 23:29:48', '2025-06-07 06:10:55', NULL),
(65, 5, 'Fotografía digital', 'Prisión Mental', 1, NULL, '2025-06-02 23:32:08', '2025-06-07 06:11:01', NULL),
(66, 5, 'Diseño de hápticos', 'ECHOES OF THE MOON', 1, NULL, '2025-06-03 00:36:40', '2025-06-07 06:11:07', NULL),
(67, 5, 'Animación básica', 'Proyecto_989555', 0, NULL, '2025-06-03 00:38:25', '2025-06-03 00:38:25', NULL),
(68, 6, 'Escenarios de videojuegos', 'ETHAN Y EL GUARDIAN DEL BOSQUE', 1, NULL, '2025-06-03 00:41:41', '2025-06-07 06:11:14', NULL),
(69, 6, 'Modelado en alto poligonaje', 'Nova Orlov (OC)', 1, NULL, '2025-06-03 00:49:43', '2025-06-07 06:11:19', NULL),
(70, 6, 'Ilustración digital', 'Al Fin Me Darás Un Reno.', 1, NULL, '2025-06-03 00:51:44', '2025-06-07 06:11:25', NULL),
(71, 7, 'Optimización de videojuegos', 'Cannibal Coffee', 1, NULL, '2025-06-03 00:54:32', '2025-06-07 06:11:30', NULL),
(72, 7, 'Actuación y dirección para animación', 'Gráficas Computacionales I - Missing', 2, 'Modificar el contenido del proyecto por el correspondiente a la asignatura.', '2025-06-03 00:56:13', '2025-06-07 04:26:24', NULL),
(73, 7, 'Animación tradicional de humanos y de animales', 'Loser - Piloto', 1, NULL, '2025-06-03 00:59:10', '2025-06-07 06:12:12', NULL),
(74, 8, 'Diseño de videojuegos en linea', 'ValorAnt', 1, NULL, '2025-06-03 01:06:46', '2025-06-07 06:12:19', NULL),
(75, 8, 'Esqueletos de personajes', 'Steve Dynamo', 1, NULL, '2025-06-03 01:17:44', '2025-06-07 06:12:25', NULL),
(76, 8, 'Animación tradicional de escenarios', 'Noche nevada en la estacion', 1, NULL, '2025-06-03 01:19:49', '2025-06-07 06:12:32', NULL),
(77, 9, 'Postproducción', 'Caso 051', 1, NULL, '2025-06-03 01:28:23', '2025-06-07 06:12:38', NULL),
(78, 8, 'Iluminación y audio', 'Henki', 1, NULL, '2025-06-04 23:15:10', '2025-06-07 06:12:46', NULL),
(79, 7, 'Base de datos multimedia', 'Proyecto_803941', 0, NULL, '2025-06-04 23:42:42', '2025-06-04 23:42:42', NULL),
(80, 7, 'Efectos visuales II', 'Prueba de Superfuerza', 1, NULL, '2025-06-05 03:32:09', '2025-06-07 06:12:51', NULL),
(81, 7, 'Base de datos multimedia', 'Cibernautas', 1, NULL, '2025-06-05 03:36:23', '2025-06-07 06:12:57', NULL),
(82, 5, 'Modelos de administración de datos', 'Gato Hotelero', 1, NULL, '2025-06-05 23:39:22', '2025-06-07 06:13:02', NULL),
(83, 5, 'Modelos de administración de datos', 'Sistema de Gestion de hoteles', 1, NULL, '2025-06-05 23:43:13', '2025-06-07 06:13:15', NULL),
(84, 7, 'Base de datos multimedia', 'Motion Red social', 1, NULL, '2025-06-05 23:49:48', '2025-06-07 06:13:21', NULL),
(85, 7, 'Base de datos multimedia', 'BisonChef\'s', 1, NULL, '2025-06-06 00:00:39', '2025-06-07 06:13:26', NULL),
(86, 7, 'Base de datos multimedia', 'ClipBD', 1, NULL, '2025-06-06 00:02:18', '2025-06-07 06:13:32', NULL),
(87, 3, 'Fundamentos del dibujo artístico', 'Heroes mitologicos_WCC', 1, NULL, '2025-06-06 01:50:54', '2025-06-07 06:13:37', NULL),
(88, 5, 'Cinematografía', 'RelationShip', 1, NULL, '2025-06-06 02:06:55', '2025-06-07 06:13:43', NULL),
(89, 5, 'Cinematografía', 'The Last Line', 1, NULL, '2025-06-06 02:13:19', '2025-06-07 06:13:48', NULL),
(90, 5, 'Modelos de administración de datos', 'Proyecto_535532', 0, NULL, '2025-06-06 02:20:02', '2025-06-06 02:20:02', NULL),
(91, 5, 'Modelos de administración de datos', 'Lux Stay', 1, NULL, '2025-06-06 02:32:41', '2025-06-07 06:13:53', NULL),
(92, 5, 'Administración de alto volumen de datos', 'Hotel Stay', 1, NULL, '2025-06-06 02:40:36', '2025-06-07 06:13:58', NULL),
(93, 5, 'Administración de alto volumen de datos', 'Zafiro H&S: Best place to travel', 1, NULL, '2025-06-06 02:43:46', '2025-06-07 06:14:02', NULL),
(94, 5, 'Administración de alto volumen de datos', 'Hoteles Tigre Azul', 1, NULL, '2025-06-06 02:51:52', '2025-06-07 06:14:10', NULL),
(95, 6, 'Gráficas computacionales II', 'UUPS...', 1, NULL, '2025-06-06 03:32:21', '2025-06-07 06:14:15', NULL),
(96, 6, 'Gráficas computacionales II', 'Potion Frenzy', 1, NULL, '2025-06-06 03:34:57', '2025-06-07 06:14:21', NULL),
(97, 6, 'Efectos visuales I', 'Sombras del poder', 1, NULL, '2025-06-06 03:37:02', '2025-06-07 06:14:26', NULL),
(98, 6, 'Programación web I', 'ToDo', 1, NULL, '2025-06-06 03:39:44', '2025-06-07 06:14:32', NULL),
(99, 7, 'Base de datos multimedia', 'VideoClub!', 1, NULL, '2025-06-06 03:43:41', '2025-06-07 06:14:37', NULL),
(100, 8, 'Realidad virtual', 'Aeolus VR', 1, NULL, '2025-06-06 03:52:26', '2025-06-07 06:14:42', NULL),
(101, 8, 'Realidad virtual', 'VR Drive Mark 1', 1, NULL, '2025-06-06 03:59:28', '2025-06-07 06:14:47', NULL),
(102, 5, 'Gráficas computacionales I', 'City Ruined Simulator', 1, NULL, '2025-06-06 04:03:12', '2025-06-07 06:14:53', NULL),
(103, 8, 'Iluminación y audio', 'Proyecto_473618', 0, NULL, '2025-06-06 04:06:20', '2025-06-06 04:06:20', NULL),
(104, 8, 'Iluminación y audio', 'Aquelarre', 1, NULL, '2025-06-06 04:07:46', '2025-06-07 06:14:58', NULL),
(105, 9, 'Postproducción', 'El último dulce', 1, NULL, '2025-06-06 04:12:32', '2025-06-07 06:15:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_datas`
--

CREATE TABLE `projects_datas` (
  `id` int(11) NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `video_url` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `drive_url` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen_url` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_proyect` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `projects_datas`
--

INSERT INTO `projects_datas` (`id`, `description`, `video_url`, `drive_url`, `imagen_url`, `email`, `id_proyect`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'R&M Nóminas es un proyecto enfocado a la gestión de información mediante el uso de SQL como base de datos. Se usó C# para el apartado visual y el manejo de la conexión con la base.', 'https://www.youtube.com/watch?v=6rTKtPSeeZ8', 'https://www.youtube.com/watch?v=6rTKtPSeeZ8', 'R&M Nóminas_5_R (2).png', 'itzel.perezmrl@uanl.edu.mx', 5, '2025-06-03 18:51:55', '2025-06-04 00:51:55', NULL),
(2, 'Este es un modelo del personaje Ganondorf de The Legend Of Zelda hecho por mí (inspirado en su versión de Tears of The Kingdom) al cual se le agregó un esqueleto y controladores para poder ser manipulado y animado.', 'https://www.youtube.com/watch?v=5JkYvtCrdas', 'No me es posible agregar link de drive', 'Ganondorf Rigg_17_Render.png', 'jose.abregomnz@uanl.edu.mx', 17, '2025-06-06 20:51:00', '2025-06-07 02:51:00', NULL),
(3, 'Ilustración animada (splash art). Trata de un último enfrentamiento entre la máquina del Homo sapiens contra el máximo depredador en su furia.\r\nCreado para la materia de Animación Tradicional de Escenarios por Dionisio Merlo/Nachx.', 'https://www.youtube.com/watch?v=fbRDw9_YMQU', 'https://nachx9.artstation.com/projects/x3N5o4', 'Adapt or Die - Splashart_18_Thumbnail.jpg', 'dionisio.merlolzn@uanl.edu.mx', 18, '2025-06-06 20:51:31', '2025-06-07 02:51:31', NULL),
(4, 'Todos recordamos la primera vez que prendimos el carbón, y todo salió bien... ¿Verdad?', 'https://m.youtube.com/watch?v=JRYYzmUuhDI', 'https://m.youtube.com/watch?v=JRYYzmUuhDI', 'La primera Carnita Asada_12_Miniatura.png', 'heber.perezj@uanl.edu.mx', 12, '2025-06-06 20:50:33', '2025-06-07 02:50:33', NULL),
(5, 'Recopilación de animaciones básicas representando los principios de la animación. En las que igualmente se muestran movimientos de cámara y encuadres distintos según la animación.', 'https://www.youtube.com/watch?v=cnTvMjRWRWA', 'https://www.youtube.com/watch?v=cnTvMjRWRWA', 'Los Principios de la Animación_6_Imagen_EXPO_AlexiaNuñez.png', 'alexia.nunezc@uanl.edu.mx', 6, '2025-06-04 05:14:10', '2025-06-04 11:14:10', NULL),
(6, 'Almaneque es un proyecto realizado para la Plataforma Android, es una red social con enfoque botánico, en ella puedes realizar post sobre tus plantas y dejar que la comunidad vea todo tu jardín además puedes crear tus propias notas en donde sin necesidad de internet puedes acceder a ellas.', 'https://www.youtube.com/watch?v=Q0lg4FlssWY', 'https://github.com/rynehh/Almaneque', 'Almaneque_38_Almaneque.png', 'enrique.gonzalezmrt@uanl.edu.mx', 38, '2025-06-06 21:09:34', '2025-06-07 03:09:34', NULL),
(7, 'Personaje Johnny Silverhand del videojuego Cyberpunk 2077 interpretado por Keanu Reeves. modelado en Zbrush, texturizado en Substance Painter, retopología y render hechos en maya en Maya.', 'https://www.youtube.com/watch?v=arewGgUCYuQ', 'https://drive.google.com/file/d/1jBCqrh5RipEVtKMi_ag5Z_IXv7Wn0GpY/view?usp=drive_link', 'Johnny Silverhand (Keanu Reeves)_51_CloseUpColor.png', 'francisco.contrerasv@uanl.edu.mx', 51, '2025-06-06 21:23:46', '2025-06-07 03:23:46', NULL),
(8, 'Escenario ambientado en un asentamiento en el Desierto de México.', 'https://www.youtube.com/watch?v=aNGYdK87tvU', 'https://www.youtube.com/watch?v=aNGYdK87tvU', 'Sufragio: Norte_27_jhskdfjh.png', 'francisco.contrerasv@uanl.edu.mx', 27, '2025-06-06 20:58:56', '2025-06-07 02:58:56', NULL),
(9, 'Cortometraje animado en 3D para la materia de Postproducción (ENE-JUN 2025)\r\n\r\nHabla del día a día de un perro salchicha que va a su trabajo, pero que en sus sueños desearía estar relajado en un campo, ser libre, salir de su rutina.', 'https://www.youtube.com/watch?v=H_DdTGYCszM', 'https://www.youtube.com/watch?v=H_DdTGYCszM', 'Bachicha Chamba_60_BachichaChamba.png', 'jesus.cerdasl@uanl.edu.mx', 60, '2025-06-06 21:36:31', '2025-06-07 03:36:31', NULL),
(10, 'Videojuego multijugador en línea con dos modos de juego, Battle Royale y Arena1v1.\r\nEstilo: 2D-3D, hibrido con cámara isométrica.\r\n¡Con más de 10 personajes jugables!', 'https://www.youtube.com/watch?v=DyPGgopNQSc', 'https://www.youtube.com/watch?v=DyPGgopNQSc', 'Timelock Royale_56_EXPO.png', 'daniel.reyesrgz@uanl.edu.mx', 56, '2025-06-06 21:32:10', '2025-06-07 03:32:10', NULL),
(11, 'Una fotografía que busca transmitir la conexión que existe entre el cuidado personal y la naturaleza, mientras se hace énfasis, a la frescura y funcionamiento de los ingredientes naturales.', 'https://www.youtube.com/watch?v=IDmGuAmvejA', 'https://acortar.link/8fzT6o', 'Pureza en calma_45_imagenexpo.png', 'fernanda.gonzalezrs@uanl.edu.mx', 45, '2025-06-06 21:15:17', '2025-06-07 03:15:17', NULL),
(12, 'En el ajedrez todas las piezas, menos el rey, son prescindibles. Los alfiles y las torres resguardan desde la distancia, los caballos acechan, pero los peones son los primeros en ser sacrificados. Anónimos y olvidados, trabajan juntos porque solos no son nada. Uno detrás de otro, cobran venganza de su predecesor. Es poco decir un milagro que entre ellos al menos uno logre cruzar el tablero y convertirse en la pieza más poderosa del juego: la reina. Esa es la historia de Misandra, la venganza.', 'https://www.youtube.com/watch?v=jhcQHTcG0-s', 'https://www.instagram.com/p/DCyCQXERP6K/', 'El Peón_29_LOGO.png', 'maria.thomasr@uanl.edu.mx', 29, '2025-06-01 12:33:53', '2025-06-01 12:33:53', NULL),
(13, '“¡Bienvenidos a Riverside!” Es el fin del mundo. En donde sea hay muertos vivientes. Hacía mucho tomaste un vehículo y huiste por la carretera, sin rumbo. Luego de ser perseguido por una horda, te adentraste en un túnel sin saber a dónde llevaba. ¡Estás atrapado en este pueblo! Tu auto también ha dejado de funcionar, tendrás que abrirte paso a través de los montones de muertos y edificios en busca de piezas para repararlo y escapar. Tienes un día antes de que la horda te alcance.', 'https://www.youtube.com/watch?v=tq0bGpfozso', 'https://drive.google.com/file/d/1M8_LrfLrH9OSFvqL1xzMluu40YBVyKe9/', 'Death Side_53_DEATHSIDE MARCA.png', 'maria.thomasr@uanl.edu.mx', 53, '2025-06-02 00:44:26', '2025-06-02 00:44:26', NULL),
(14, 'Su mundo se acabó... los que estuvieron comprometidos alguna vez ahora lucharan por el ultimo recurso de la humanidad... ¿LAS OVEJAS?\r\nHoly Sheep es un juego multijugador desarrollado por Quetzal Games, en donde tienes que pelear por recolectar las ovejas y usar las ovejas especiales para ganar...', 'https://www.youtube.com/watch?v=5OaEuDcQpus', 'https://www.youtube.com/watch?v=5OaEuDcQpus', 'Holy Sheep_57_Miniatura 3.png', 'heber.perezj@uanl.edu.mx', 57, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(15, 'Este proyecto desarrollado en Unreal Engine 5 es un juego de miedo, donde el jugador es secuestrado por un culto y debe encontrar una forma de escapar antes de ser sacrificado en un ritual.', 'https://www.youtube.com/watch?v=HNufr3yATOg', 'https://www.youtube.com/watch?v=HNufr3yATOg', 'Sacrificio_49_Sin título-1.png', 'sofia.alanisa@uanl.edu.mx', 49, '2025-06-03 19:02:16', '2025-06-04 01:02:16', NULL),
(16, 'The Haunted Forest es un juego de suspenso en Unity donde escapas de un bosque usando una linterna háptica, ¿puedes sentir el miedo en tus manos?', 'https://www.youtube.com/watch?v=_SvRaJmjrSs', 'https://www.youtube.com/watch?v=_SvRaJmjrSs', 'The Haunted Forest_46_Frame 5.jpg', 'alan.salasrmrz@uanl.edu.mx', 46, '2025-06-06 22:31:59', '2025-06-07 03:16:11', NULL),
(17, 'Exploración/Trivia. Las plantas de tu huerto pondrán a prueba tus conocimientos de jardinería, pues deberás contestar diversos quizzes para que puedan crecer.', 'https://www.youtube.com/watch?v=6Gk8YX1ScBI', 'https://www.youtube.com/watch?v=6Gk8YX1ScBI', 'Garden Quest_28_gq.png', 'ana.diazmn@uanl.edu.mx', 28, '2025-06-06 22:31:12', '2025-06-07 02:59:28', NULL),
(18, 'Shooter en 1.ª y 3.ª persona donde un Ternurín lucha por dominar una plaza, mezclando ternura estilo “Sylvanian Families” con acción y armas de alto calibre.', 'https://www.youtube.com/watch?v=aOZ0gp1pJsE', 'https://www.youtube.com/watch?v=aOZ0gp1pJsE', 'Beliquines_34_beliquines 2.jpg', 'gema.leosesqv@uanl.edu.mx', 34, '2025-06-06 21:02:35', '2025-06-07 03:02:35', NULL),
(19, 'Ejercicios prácticos de los fundamentos de la animación 3D.', 'https://www.youtube.com/watch?v=5X32xWFILvg', 'https://www.youtube.com/watch?v=5X32xWFILvg', 'Animación básica_48_renderpia.png', 'kevin.villarrealhrch@uanl.edu.mx', 48, '2025-06-06 21:20:36', '2025-06-07 03:20:36', NULL),
(20, 'Proyecto de gestión de nóminas realizado en Windows Forms con Guna UI 2 y SQL Server para la materia de Modelos de Administración de Datos, por Rebeca Evangelista y David Aguilar.', 'https://m.youtube.com/watch?v=kYV9N5iaZtE', 'https://shorturl.at/kz1xG', 'Gestión de Nóminas (MAD)_24_icon.png', 'rebeca.evangelistaj@uanl.edu.mx', 24, '2025-06-06 20:56:25', '2025-06-07 02:56:25', NULL),
(21, 'Force X es una aplicación desarrollada en Visual C# con base de datos Cassandra, diseñada para la gestión de nóminas en gimnasios. Administra personal, calcula sueldos y emite reportes.', 'https://www.youtube.com/watch?v=EdOlsKeMEHU', 'https://www.youtube.com/watch?v=EdOlsKeMEHU', 'Force X_25_ForceX.png', 'paola.garciard@uanl.edu.mx', 25, '2025-06-03 20:51:03', '2025-06-04 02:51:03', NULL),
(22, 'Recorrido virtual del proyecto final de Gráficas Computacionales I con diseño y elementos acorde a un videojuego de suspenso.', 'https://www.youtube.com/watch?v=bGBjbyMh4JM', 'https://www.youtube.com/watch?v=bGBjbyMh4JM', 'Gráficas Computacionales I - Missing_72_proyectothumbnail.png', 'danna.hernandezr@uanl.edu.mx', 72, '2025-06-03 08:58:46', '2025-06-03 08:58:46', NULL),
(23, 'Renders de modelos detallados de bajo, medio y alto poligonaje, constando de cristalería semirealista y un modelo humano simple, imitando la estética de videojuegos de ps3.', 'https://www.youtube.com/watch?v=AtuBFj7pH34', 'https://drive.google.com/drive/folders/1YnT93VgI4SazoAR_JMN-h5XHxG54BPMr?usp=sharing', 'Sospechoso_43_mini.png', 'paulina.garciacn@uanl.edu.mx', 43, '2025-06-06 20:00:05', '2025-06-07 02:00:05', NULL),
(24, 'Este pequeño corto nos muestra la historia de Plasticosio y Maderasio, dos muñequitos de diferentes materiales que buscan la forma de bailar juntos. Tendrán que aprender a adaptarse y aceptar sus diferencias sin tratar de cambiarse en el camino, para así poder bailar al ritmo de la base del otro.', 'https://www.youtube.com/watch?v=XEJswQHFjvg', 'https://www.youtube.com/watch?v=XEJswQHFjvg', '《 Al ritmo de tu base 》_47_bbbbb.jpg', 'erika.barrazat@uanl.edu.mx', 47, '2025-06-06 21:18:41', '2025-06-07 03:18:41', NULL),
(25, 'Personaje original para el Proyecto Final de Esqueletos de Personajes. Desarrollado en Autodesk Maya.', 'https://www.youtube.com/watch?v=tOZIqO_VNrE', 'https://www.youtube.com/watch?v=tOZIqO_VNrE', 'Steve Dynamo - Esqueletos de Personajes_75_render2.jpg', 'aldo.gonzalezap@uanl.edu.mx', 75, '2025-06-03 09:30:42', '2025-06-03 09:30:42', NULL),
(26, 'La vida de un hombre se ha convertido en una serie de desvelos a las 3 de la mañana, cortesía de un fantasma en pleno servicio social. Este espectro, lejos de ser aterrador, es un novato que intenta cumplir con sus horas de “asustar gente”. El problema es que el hombre ya se sabe todos sus trucos y no duda en reclamarle su falta de originalidad, resultando en una discusión que atraviesa la barrera entre lo muerto y lo vivo.', 'https://www.youtube.com/watch?v=vMekzKPpBtg', 'https://drive.google.com/file/d/12zlVqBGvt-3TRldAG-_uzy9pui29BkAI/view?usp=sharing', 'Las 3 De La Mañana_32_Poster.png', 'roberto.dominguezesp@uanl.edu.mx', 32, '2025-06-06 21:01:20', '2025-06-07 03:01:20', NULL),
(27, 'Piloto animado del proyecto \"Loser\".', 'https://www.youtube.com/watch?v=voKXXaGLKhc', 'https://drive.google.com/file/d/1bF66NrdNtCOwiHF61kHjopAAre0DWQXu/view?classId=6200d2de-e115-4f8e-beb1-e71b1d097808&assignmentId=21e6b967-4447-4a4a-ba27-a7fd847830ef&submissionId=cd2361df-4dd2-0048-5f2a-76e41f937336', 'Loser - Piloto_73_Parte 25.png', 'cesar.penamnd@uanl.edu.mx', 73, '2025-06-06 21:47:47', '2025-06-07 03:47:47', NULL),
(28, '“Echoes of the moon” es un videojuego creado por estudiantes de la UANL, este juego está basado en una temática espacial la cual se basa en la captura de una bandera, con la finalidad de cumplir la misión lunar, solo que habrá un pequeño detalle deberás acabar con los alienígenas que se interpongan en tu camino.', 'https://www.youtube.com/watch?v=e_wYUdvDMNM', 'https://www.youtube.com/watch?v=e_wYUdvDMNM', 'ECHOES OF THE MOON_66_ECHOES OF THE MOON.png', 'sofia.villegasb@uanl.edu.mx', 66, '2025-06-06 21:43:30', '2025-06-07 03:43:30', NULL),
(29, 'En la sección 27 de Unifera hay 5 amigos que hacen sus actividades diarias de la compañía hasta que les llega un nuevo encargo por atender.', 'https://www.youtube.com/watch?v=8UHudWPAqNw', 'https://drive.google.com/file/d/1-KDiuMZsVJ02URtLviqDqY9ISeJhf2Lx/view?usp=drive_link', 'Unifera_55_expoimg (1).jpg', 'gisel.nuneztrs@uanl.edu.mx', 55, '2025-06-06 21:30:17', '2025-06-07 03:30:17', NULL),
(30, 'BrainBit es una página de cursos dedicada a la programación, contamos con categorías como diseños, base de datos, figma, hosting, etc. ¡Sigamos aprendiendo con BrainBit!', 'https://www.youtube.com/watch?v=2sWWY6NaFyk', 'https://www.youtube.com/watch?v=2sWWY6NaFyk', 'BrainBit_10_BrainBit.jpg', 'Ximena.rosalesv@uanl.edu.mx', 10, '2025-06-06 22:29:10', '2025-06-07 02:50:11', NULL),
(31, 'El proyecto \"Casa Avis\" se trata del modelo tridimensional de un fraccionamiento ficticio, mostrándose en renders pensados para reflejar los mejores ángulos de este, poniendo foco principalmente en la casa principal.', 'https://www.youtube.com/watch?v=90CvrjRuh4o', 'https://drive.google.com/file/d/1LK1AZYgwZ8RxJgBkjg8JSGfGXFxtc5-Z/view?usp=sharing', 'Casa Avis_21_MA-ExpoLMAD-AMSN_frontpage.png', 'angel.sustaitan@uanl.edu.mx', 21, '2025-06-06 20:52:48', '2025-06-07 02:52:48', NULL),
(32, '“Caso 051” es un cortometraje de terror en formato de “metraje encontrado”, compuesto por grabaciones de cámaras de seguridad de una vivienda. La historia sigue a un hombre que es atacado por una criatura desconocida.\r\nEl material es presentado como parte de una investigación policial archivada sin resolver.', 'https://www.youtube.com/watch?v=N58pKFNzDJI', 'https://drive.google.com/file/d/11JcfJu04MJEiW81BBigWJBAUVGVLXxlb/view?usp=sharing', 'Caso 051_77_CASO 051.png', 'jorge.salashrn@uanl.edu.mx', 77, '2025-06-06 21:52:27', '2025-06-07 03:52:27', NULL),
(33, 'El cortometraje narra la historia de una joven que atraviesa el peor momento de su vida tras la pérdida de su mascota y vemos cómo encuentra la fuerza para seguir adelante, pero siempre con el recuerdo de su perrita presente como motivación. Fue escrito, dirigido, animado y editado por mí, en memoria de mi perrita Maya, fue la mayor inspiración y quien siempre vivirá en mi corazón con profundo cariño, esta historia nace del dolor de su partida, pero también del amor que permanece.', 'https://www.youtube.com/watch?v=aJTRL8ts6mQ', 'https://www.youtube.com/watch?v=aJTRL8ts6mQ', 'PURPLE WOLF_20_foto3.png', 'melissa.garzongnz@uanl.edu.mx', 20, '2025-06-06 20:52:17', '2025-06-07 02:52:17', NULL),
(34, '¡Sumérgete en este mágico mundo medieval donde tendrás que recolectar todos los objetos y resolver los acertijos para triunfar en tu aventura!', 'https://www.youtube.com/watch?v=9nlLGLWJueE', 'https://www.youtube.com/watch?v=9nlLGLWJueE', 'El Sendero del Aprendiz_8_Mesa de trabajo 1.png', 'jorge.floresbl@uanl.edu.mx', 8, '2025-06-03 15:19:02', '2025-06-03 15:19:02', NULL),
(35, 'My Tomillo es una plataforma de aprendizaje mediante cursos. Cualquier persona puede publicar cursos y los estudiantes pueden adquirirlos mediante pagos en línea.', 'https://www.youtube.com/watch?v=isXWqg0ZZJg', 'https://www.youtube.com/watch?v=isXWqg0ZZJg', 'My Tomillo_30_Miniatura.png', 'heber.perezj@uanl.edu.mx', 30, '2025-06-06 21:00:43', '2025-06-07 03:00:43', NULL),
(36, 'Desarrollé este rig como prueba de concepto, creando todo desde cero: diseño, modelado, texturas, skinning y blendshapes correctivos. “Alpha” es mi avatar original producto de mi capacidad para llevar a cabo un proyecto 3D completo con enfoque técnico y artístico.\r\nContacto: OokamiDigitalArt@gmail.com\r\n@Alpha_Ookami en X / Instagram.', 'https://www.youtube.com/watch?v=_5KPxF8Ueqs', 'https://www.youtube.com/watch?v=_5KPxF8Ueqs', 'Proto Alpha Rig_35_ExpoImage.png', 'max.terrazasmrn@uanl.edu.mx', 35, '2025-06-06 21:07:12', '2025-06-07 03:07:12', NULL),
(37, 'Proyecto animado en Blender, inspirado en un fragmento de la película “Los Increíbles”.', 'https://www.youtube.com/watch?v=GpVOykyWFKY', 'https://www.youtube.com/watch?v=GpVOykyWFKY', 'Los increíbles - Me siento infeliz Bob_54_chapa_ss.png', 'daniel.chapagjr@uanl.edu.mx', 54, '2025-06-06 21:26:39', '2025-06-07 03:26:39', NULL),
(38, 'Render detallado de fraccionamiento residencial, mostrando áreas comunes y vivienda tipo con jardín, sala y recámara, variando iluminación.', 'https://www.youtube.com/watch?v=GE-zc-gw7ow', 'https://drive.google.com/drive/folders/1tiM3-yi5cBjJaR5pn_K_xM-21Xr4MPzC?usp=drive_link', 'Casa en la calle Bonampak_62_PORTADA ARQUITECTONICO.jpg', 'arantza.deg@uanl.edu.mx', 62, '2025-06-05 19:11:09', '2025-06-06 01:11:09', NULL),
(39, 'En un México alterno, se escuchan gritos desde las sombras exigiendo una sola cosa… SUFRAGIO.\r\nProyecto en desarrollo por alumnos de la UANL - FCFM de la carrera de LMAD para las materias de Videojuegos, desarrollándose en Unreal Engine 5. Han sido arduos estos últimos meses, pero hemos estado trabajando y dando lo mejor de nosotros para concretar esta difícil tarea… Somos Quetzal Games.', 'https://www.youtube.com/watch?v=4JIGHhFcNfg', 'https://www.youtube.com/watch?v=4JIGHhFcNfg', 'SUFRAGIO_61_test2.png', 'heber.perezj@uanl.edu.mx', 61, '2025-06-06 21:38:49', '2025-06-07 03:38:49', NULL),
(40, 'Proyecto Final-Fotografía Digital. Concepto Artístico.', 'https://www.youtube.com/watch?v=cbVCK09aKqE', 'https://drive.google.com/drive/folders/1BSiSbErN5bqDPRn_Fv3iADs5lu4GbLxV?usp=sharing', 'Prisión Mental_65_fotodig pia expolmad.png', 'daniel.montelongov@uanl.edu.mx', 65, '2025-06-06 21:42:29', '2025-06-07 03:42:29', NULL),
(41, '¡El café no puede esperar! Cannibal Coffee es un juego shooter desarrollado en Unreal Engine 5 donde tendrás que vencer a las peculiares criaturas que atemorizan a nuestros estimados clientes en esta ciudad postapocalíptica. ¡Buena suerte, y recuerda que no pagamos horas extras!', 'https://www.youtube.com/watch?v=PkcXtfUCyPA', 'https://www.youtube.com/watch?v=PkcXtfUCyPA', 'Cannibal Coffee_71_LogoCC.png', 'jorge.floresbl@uanl.edu.mx', 71, '2025-06-04 14:27:40', '2025-06-04 14:27:40', NULL),
(42, 'Flambi es un robot femenino creado para atender una panadería y acatar las órdenes de su desquiciado creador, al menos hasta que descubre su deseo de experimentar emociones humanas. El encontrar un corazón humano puede que sea su siguiente paso para comenzar a sentir por sí misma.', 'https://www.youtube.com/watch?v=p7j7yNeWrtk', 'https://www.youtube.com/watch?v=p7j7yNeWrtk', 'Al Fin Me Darás Un Reno._70_portada-proyecto.png', 'dulce.riosf@uanl.edu.mx', 70, '2025-06-06 21:46:03', '2025-06-07 03:46:03', NULL),
(43, 'Un cortometraje realizado en AGO-DIC 2024. Trata de una niña fantasma alegre que vive en un rincón tranquilo del cementerio, esperando con ilusión su cumpleaños, decorando el lugar, preparando las luces, ansiando tener una gran fiesta en la medianoche.', 'https://www.youtube.com/watch?v=fySUtJ8Oris', 'https://drive.google.com/drive/folders/1j_g7XFx815e1WOHH4HpZ-Vqm3gQPb_DN', 'Spectracular_39_Tip.png', 'carlos.cedillochrl@uanl.edu.mx', 39, '2025-06-06 21:10:35', '2025-06-07 03:10:35', NULL),
(44, 'Renders 3D enfocados en el cuerpo humano masculino (bajo, medio y alto poligonaje) y objetos de cristalería y cerámica, incluyendo copas de vino, vasos tipo whiskey, tazas con platos y botellas. Modelos realistas y uso de materiales para cada uno de ellos.', 'https://www.youtube.com/watch?v=ncmPDwTM_gM', 'https://drive.google.com/drive/folders/1E0jXSCHXXh5C12NOKvpZw6k9t0nVPrWA?usp=drive_link', 'Cuerpo y objetos 3D_44_PORTADA ORGANICO.jpg', 'arantza.deg@uanl.edu.mx', 44, '2025-06-06 21:14:51', '2025-06-07 03:14:51', NULL),
(45, 'Proyecto final para la materia de Ilustracion Digital.', 'https://www.youtube.com/watch?v=iENoGr-g_xA', 'https://narayyzz.wixsite.com/narayyzz-2', 'Dawns Veil_52_Untitled_Artwork.png', 'narayani.cabrerac@uanl.edu.mx', 52, '2025-06-06 21:24:18', '2025-06-07 03:24:18', NULL),
(46, 'Ethan y el guardián del bosque es un videojuego de acción con tintes de fantasía moderna sobre un niño que tiene la habilidad de conectarse espiritualmente con el bosque para escuchar a sus habitantes y salvar el árbol legendario que está a punto de ser cortado por Elon Musk.', 'https://www.youtube.com/watch?v=r3CdGLZxej0', 'https://www.youtube.com/watch?v=r3CdGLZxej0', 'ETHAN Y EL GUARDIAN DEL BOSQUE_68_EthanLogoPNG.png', 'josue.carreong@uanl.edu.mx', 68, '2025-06-06 21:44:25', '2025-06-07 03:44:25', NULL),
(47, 'En un carnaval de máscaras, niños juegan entre risas y luces. En medio del festín, un rey solitario se lamenta, envuelto en una sombra que parece extenderse más allá. Un joven lo observa desde lejos, el único que lo percibe, pero solo a través del reflejo en un viejo espejo. Allí, el rey aparece atrapado en penumbra, esperando algo o a alguien. Entre la algarabía, da su último suspiro: nadie ve el rostro real del dolor.', 'https://www.youtube.com/watch?v=TkdfHJ3tI9U', 'https://www.youtube.com/watch?v=TkdfHJ3tI9U', 'El Ultimo Suspiro_36_JISI2_redimensionada_1024x1024.png', 'celia.blancooa@uanl.edu.mx', 36, '2025-06-06 21:09:01', '2025-06-07 03:09:01', NULL),
(48, 'Personaje original realizado en Zbrush con temática espacial-futurista, Nova Ivanovna Orlov.', 'https://www.youtube.com/watch?v=o6hylO4wrjY', 'https://drive.google.com/file/d/1JegrEXL-eptZ6R_ymg07YR28OhcCgYfh/view', 'Nova Orlov (OC)_69_Portada.jpg', 'daniela.lopezl@uanl.edu.mx', 69, '2025-06-05 05:52:56', '2025-06-05 05:52:56', NULL),
(49, 'El proyecto fue hecho con Blender (renderizado y fondo), Clip Studio Paint (personaje y animación de cuervo), y Alight Motion para la animación del personaje. En el drive hay parte del proceso grabado podrá ver el proceso del proyecto hasta este punto de su realización.', 'https://www.youtube.com/watch?v=XcjPFs72jcI', 'https://drive.google.com/drive/folders/1zf1y2GBrV4Epc8qUrzo4Uu7PzvYpF6fi?usp=sharing', 'Noche nevada en la estacion_76_portada-proyecto.jpg', 'juan.santillanv@uanl.edu.mx', 76, '2025-06-06 22:34:27', '2025-06-07 03:51:23', NULL),
(50, 'Una pequeña demostración de superfuerza destruyendo el pavimento. Efecto trabajado con: Blender, After Effects, Premiere y Nuke.', 'https://www.youtube.com/watch?v=E08lMomKtko', 'https://www.youtube.com/watch?v=E08lMomKtko', 'Prueba de Superfuerza_80_portadaEVII.png', 'jorge.floresbl@uanl.edu.mx', 80, '2025-06-05 06:53:28', '2025-06-05 06:53:28', NULL),
(51, 'Creación de personajes con temática futurista vistos de frente, 3/4s, perfil y de espaldas. Además, expresiones faciales, accesorios y poses dinámicas.', 'https://www.youtube.com/watch?v=jI1SGh7uaGk', 'https://drive.google.com/drive/folders/19quUXoLxlrQ5ry4GGL_3YTW26zTNHKbW?usp=sharing', 'DISEÑO DE PERSONAJES FUTURISTAS_1_Foto de proyecto lmad.jpg', 'david.alemans@uanl.edu.mx', 1, '2025-06-05 20:51:08', '2025-06-06 02:51:08', NULL),
(52, 'Videojuego tipo shooter en tercera persona, desarrollado en Unreal Engine 5 para la materia de Diseño de Videojuegos en Línea.\r\nEn esta aventura interpretas el papel de una hormiga que debe atacar hormigueros enemigos sin permitir que el suyo sea destruido. A lo largo del juego podrás conseguir armas y power ups, mientras sobrevives a enemigos y jefes que harán todo lo posible por acabar contigo.', 'https://www.youtube.com/watch?v=rae7Vz5aj3Q', 'https://www.youtube.com/watch?v=rae7Vz5aj3Q', 'ValorAnt_74_valorAnt.png', 'isis.floresm@uanl.edu.mx', 74, '2025-06-06 21:49:55', '2025-06-07 03:49:55', NULL),
(53, 'Te presentamos un pequeño vistazo al universo de DA - ARU ! !, una historia llena de energía, rebelión y destino. Aru Agami, un joven oni con más actitud que paciencia, está destinado a cambiarlo todo… aunque aún no lo sepa.\r\n\r\nEste avance fue creado como parte del proyecto académico para la carrera LMAD (Licenciatura en Multimedia y Animación Digital), en la Facultad de Ciencias Físico-Matemáticas, dentro de la materia: Animación de Escenarios.', 'https://www.youtube.com/watch?v=DefVpxCYgb0', 'https://drive.google.com/file/d/19RJO46_v40AeqtPS0SeKuThfkyacGJ41/view?usp=sharing', 'DA - ARU ! !_59_ARU LMAD.jpg', 'miguel.maruriml@uanl.edu.mx', 59, '2025-06-06 21:35:15', '2025-06-07 03:35:15', NULL),
(54, 'Recorrido virtual del proyecto final de Gráficas Computacionales I con diseño y elementos acorde a un videojuego de suspenso.', 'https://www.youtube.com/watch?v=bGBjbyMh4JM', 'https://www.youtube.com/watch?v=bGBjbyMh4JM', 'Gráficas Computacionesles I - Missing_23_proyectothumbnail.png', 'danna.hernandezr@uanl.edu.mx', 23, '2025-06-05 11:17:22', '2025-06-05 11:17:22', NULL),
(55, 'Modelo 100% a escala de una casa, junto con iluminación realista y amueblado incluido.', 'https://www.youtube.com/watch?v=0lgALL5aH20', 'https://www.youtube.com/watch?v=0lgALL5aH20', 'Recreación de un Hogar_3_Foto del proyecto.png', 'danna.quihuih@uanl.edu.mx', 3, '2025-06-06 20:14:14', '2025-06-07 02:14:14', NULL),
(56, 'Renders de modelos: vaso, copa de vino, botella de vino, taza, plato y cuerpo humano.\r\nProceso de creación de los mismos.', 'https://www.youtube.com/watch?v=MX86lIJLy2o', 'https://www.youtube.com/watch?v=MX86lIJLy2o', 'Renders de modelos básicos_64_portadaexpo.png', 'abril.penas@uanl.edu.mx', 64, '2025-06-06 00:59:05', '2025-06-06 00:59:05', NULL),
(57, 'Proyecto que explora formas orgánicas a través de renders realistas. Incluye:\r\n\r\nObjetos cotidianos: Copas, botellas, tazas y vasos representados con énfasis en sus volúmenes, reflejos y transparencias.\r\n\r\nFigura humana masculina: Modelo anatómico en poses neutras, destacando líneas naturales y musculatura.', 'https://www.youtube.com/watch?v=jOb7CHcKnFY', 'https://www.youtube.com/watch?v=jOb7CHcKnFY', 'Modelado orgánico: Formas curvas y la figura humana_63_Render10.png', 'laura.cuevass@uanl.edu.mx', 63, '2025-06-06 21:41:45', '2025-06-07 03:41:45', NULL),
(58, 'Se realizó el modelo de una casa en 3D en Blender con fraccionamiento, el edificio está amueblado y cuenta con el uso de un HDRI, así como texturas, iluminado, etc, mostrando renders del interior y exterior del lugar.', 'https://www.youtube.com/watch?v=pD1HYyJ7jBY', 'https://drive.google.com/file/d/1G4JO8JsNsZLLaOOmNk_rVVMjnGZgKmzf/view?usp=drive_link', 'Modelado de una casa en 3D_WCC_42_minuatura casa.png', 'winston.cantucrn@uanl.edu.mx', 42, '2025-06-06 21:12:41', '2025-06-07 03:12:41', NULL),
(59, '¿Qué pasaría si un recuerdo de la infancia olvidado volviera?\r\nHenki no olvida… ¿Y tú?', 'https://www.youtube.com/watch?v=zlk1PbPek4c', 'https://www.youtube.com/watch?v=zlk1PbPek4c', 'Henki_78_Henki.png', 'valeria.garzasnchz@uanl.edu.mx', 78, '2025-06-06 21:53:02', '2025-06-07 03:53:02', NULL),
(60, 'Observando el mundo tratando de buscar un propósito, un robot trata de encontrar la razón de su existencia.', 'https://www.youtube.com/watch?v=yuA139Ju9pA', 'https://drive.google.com/drive/folders/1zlTdsPQ9NhPtm4jFa-ule5S0HcXoNKsK', 'D0q1_9_IngridDavila.png', 'vanessa.davilamrn@uanl.edu.mx', 9, '2025-06-06 02:03:27', '2025-06-06 02:03:27', NULL),
(61, 'Escenario de videojuego 3D hecho en Unreal Engine, ambientado en una ciudad estilo steampunk con luces neón y zombies.', 'https://www.youtube.com/watch?v=Z15dusEoBL0', 'https://www.youtube.com/watch?v=Z15dusEoBL0', 'Deon Red Dead_7_logo_zomeye_new.png', 'daniel.chapagjr@uanl.edu.mx', 7, '2025-06-06 20:49:07', '2025-06-07 02:49:07', NULL),
(62, 'Diseñé 3 personajes originales (masculino, femenino e infante) con un tema especial (superhéroes y mitología), aplicando diseño de turn around, expresiones faciales, pose dinámica y armas.', 'https://www.youtube.com/watch?v=Rga1hXJusHY', 'https://drive.google.com/file/d/1G4JO8JsNsZLLaOOmNk_rVVMjnGZgKmzf/view?usp=drive_link', 'Heroes mitologicos_WCC_87_Mesa de trabajo 2.png', 'winston.cantucrn@uanl.edu.mx', 87, '2025-06-06 22:02:01', '2025-06-07 04:02:01', NULL),
(63, 'Era un día común y corriente, cuando Charli recibe una carta que parece adivinar su futuro próximo, si Charlie decide confiar podría llevarlo a grandes consecuencias.', 'https://www.youtube.com/watch?v=H3-SFt2wTzs', 'https://www.youtube.com/watch?v=H3-SFt2wTzs', 'The Last Line_89_TheLastLine.jpeg', 'fernanda.gonzalezrs@uanl.edu.mx', 89, '2025-06-06 22:03:32', '2025-06-07 04:03:32', NULL),
(64, '“Hacer pociones no es tan fácil como la receta”. Proyecto relacionado a las Gráficas Computacionales II y desarrollado con DirectX. “Potion Frenzy” es un videojuego sencillo cuya mecánica principal es recolectar ingredientes para realizar una poción mágica, pero ten cuidado, no todos los ingredientes son buenos.', 'https://www.youtube.com/watch?v=Xet3NI9OBvo', 'https://www.youtube.com/watch?v=Xet3NI9OBvo', 'Potion Frenzy_96_PotionFrenzy.png', 'andres.gonzalez@uanl.edu.mx', 96, '2025-06-06 22:07:45', '2025-06-07 04:07:45', NULL),
(65, 'Modelo de artista Travis Scott en High Poly y texturizado con sus respectivas UV\'s.', 'https://www.youtube.com/watch?v=kZfBCFsuZD8', 'https://www.youtube.com/watch?v=kZfBCFsuZD8', 'MODELADO EN ALTO POLIGONAJE LMAD EXPO_50_Travis Scott (1).jpg', 'axel.garciavldz@uanl.edu.mx', 50, '2025-06-06 22:33:47', '2025-06-07 03:22:08', NULL),
(66, 'El deseo de fama y poder puede consumir hasta el alma más pura. En un pequeño pueblo, Citlali, cegada por la ambición, se adentra en un camino oscuro para conseguirlo. Pero hay pactos que, una vez hechos, no se pueden romper sin pagar el precio. \r\nInspirado en el expresionismo alemán, este cortometraje nos sumerge en una atmósfera inquietante donde el deseo se convierte en una condena.', 'https://www.youtube.com/watch?v=ZTpyEwd4aiY', 'https://drive.google.com/file/d/1vexj2C7nYZ22y8IFRLXJK1zbZyoxlz_X/view?usp=sharing', 'Aquelarre_104_POrtada.jpg', 'magdala.quirozgn@uanl.edu.mx', 104, '2025-06-06 22:35:06', '2025-06-07 04:14:48', NULL),
(67, 'El VR Drive Mark 1 es un simulador de manejo de un vehículo estándar desarrollado en Unreal Engine 5, su misión es brindar un espacio seguro al usuario para que desarrolle de forma intuitiva sus habilidades de manejo en un circuito cerrado y una carretera. Se desarrolló el armazón a la medida de nuestras necesidades, así mismo como toda la electrónica y programación durante nuestro semestre, todo esto para dar una mejor experiencia a nuestros usuarios.', 'https://www.youtube.com/watch?v=Wvc_XPXX47A', 'https://www.youtube.com/watch?v=Wvc_XPXX47A', 'VR Drive Mark 1_101_MiniaturaMK1.png', 'heber.perezj@uanl.edu.mx', 101, '2025-06-06 22:13:30', '2025-06-07 04:13:30', NULL),
(68, 'Una página web que permite al usuario ingresar eventos y registrarse a otros eventos con la finalidad de encontrar actividades de aprendizaje y recreación.', 'https://www.youtube.com/watch?v=o_dq9ooOvxs', 'https://www.youtube.com/watch?v=o_dq9ooOvxs', 'ToDo_98_ToDo Logo (2).png', 'omar.fernandezmnc@uanl.edu.mx', 98, '2025-06-06 22:11:27', '2025-06-07 04:11:27', NULL),
(69, 'Una joven, perdida y sola, encuentra unas rocas brillantes en un paisaje desolado. Al tocarlas, obtiene poderes, pero también despierta una versión oscura de sí misma. Ahora debe enfrentarse a su propio reflejo distorsionado en una lucha interna por sobrevivir', 'https://www.youtube.com/watch?v=lAbU6cudNio', 'https://www.youtube.com/watch?v=lAbU6cudNio', 'Sombras del poder_97_SOMBRAS DEL PODER.png', 'kennya.almaguera@uanl.edu.mx', 97, '2025-06-06 06:36:50', '2025-06-06 06:36:50', NULL),
(70, 'Eres un soldado de la milicia y tienes que recorrer un sector arruinado del mundo explorando todos los puntos de Interés en busca de supervivientes.', 'https://www.youtube.com/watch?v=y-QRe2GvsMw', 'https://www.youtube.com/watch?v=y-QRe2GvsMw', 'City Ruined Simulator_102_TITULO.jpg', 'yair.betancourtsmn@uanl.edu.mx', 102, '2025-06-06 22:14:06', '2025-06-07 04:14:06', NULL),
(71, 'Proyecto de animación básica 3D en donde manejo los 12 principios de la animación.\r\nEl proyecto lo llevé a cabo en el software Blender para crear todas las animaciones, renders y para temas de edición Adobe Premiere Pro y Photoshop.\r\nTrabaje solamente con modelos humanos, lo que llevo a replicar movimientos, gestos y expresiones anatómicamente humanas en cada práctica y para cada render se acompañó de movimientos, ángulos y planos de cámara, escenario y luces ambientales.', 'https://www.youtube.com/watch?v=QKJ3K_GjH-g', 'https://drive.google.com/drive/folders/1UHLpZFH1YA6tLK2mvJ1lFRAQl7cYZnTX', 'Animación Basica en 3D - Anatomia humana_26_Miniatura.jpg', 'joshua.torresg@uanl.edu.mx', 26, '2025-06-06 20:58:33', '2025-06-07 02:58:33', NULL),
(72, 'Gato Hotelero es un sistema de registro y gestión de hoteles en una cadena hotelera donde existen 2 tipos de usuarios: Operador y Administrador.\r\nLos softwares usados para su creación fueron Visual Studio y SQL Server.', 'https://www.youtube.com/watch?v=rZh7dfl9zGw', 'https://www.youtube.com/watch?v=rZh7dfl9zGw', 'Gato Hotelero_82_Gato Hotelero Logo.jpg', 'keren.naval@uanl.edu.mx', 82, '2025-06-06 21:54:28', '2025-06-07 03:54:28', NULL),
(74, 'Software de gestión de hoteles, utilizando una base de datos No-SQL llamada Apache Cassandra para eficientizar el manejo de alto volumen de datos.', 'https://www.youtube.com/watch?v=2PWmnpSNxWE', 'https://drive.google.com/file/d/1A433e9QcXi5rqNej4ejWLSr_C3f2po9f/view', 'Zafiro H&S: Best place to travel_93_thumbnail_image.png', 'adrian.martineztrvn@uanl.edu.mx', 93, '2025-06-06 22:05:46', '2025-06-07 04:05:46', NULL),
(75, 'El propósito del proyecto busca mostrar el uso de las tecnologías como las bases de datos en MySQL, para manejo de información multimedia, como videos, audios e imágenes, con tecnologías del lado del servidor como PHP y tecnologías del lado del front como React', 'https://www.youtube.com/watch?v=LhQvZTxmfOg', 'https://www.youtube.com/watch?v=LhQvZTxmfOg', 'ClipBD_86_BDMPortadaOFICIAL copia.jpg', 'sofia.delafuentea@uanl.edu.mx', 86, '2025-06-06 21:59:40', '2025-06-07 03:59:40', NULL),
(76, 'Página de gestión de hoteles y reservas, utilizando una base de datos SQL para almacenar y administrar la información de manera eficiente.', 'https://www.youtube.com/watch?v=UC4XEWAWvew', 'https://drive.google.com/file/d/1X35mRJDA_e0gOPa86poh-sxBPsgKkDkG/view?usp=drive_link', 'Lux Stay_91_MAD_LuxStay.png', 'jonathan.garciaslz@uanl.edu.mx', 91, '2025-06-06 22:04:24', '2025-06-07 04:04:24', NULL),
(77, 'Página de gestión de hoteles y reservas, utilizando una base de datos CQL para almacenar y administrar la información de manera eficiente.', 'https://www.youtube.com/watch?v=P4NLcNyE2n0', 'https://drive.google.com/file/d/1SREU_4AFch_ZHFNBzrZrxdyOw5ehWFmN/view?usp=drive_link', 'Hotel Stay_92_AAVD_HotelStay.png', 'jonathan.garciaslz@uanl.edu.mx', 92, '2025-06-06 22:05:18', '2025-06-07 04:05:18', NULL),
(78, 'Simulador inmersivo que recrea la experiencia de volar en ala delta.', 'https://www.youtube.com/watch?v=79V3rPO4cng', 'https://www.youtube.com/watch?v=79V3rPO4cng', 'Aeolus VR_100_Multimedia.jpg', 'jose.noriegamrn@uanl.edu.mx', 100, '2025-06-06 22:12:59', '2025-06-07 04:12:59', NULL),
(79, 'Cibernautas es una comunidad para amantes de los videojuegos donde puedes hablar sobre tus videojuegos favoritos, votar publicaciones, chatear con otros usuarios, conectar tu perfil de Discord y mucho más. ¡Únete y descubre un espacio hecho para gamers como tú!', 'https://www.youtube.com/watch?v=ak2GHcPMor0', 'https://www.youtube.com/watch?v=ak2GHcPMor0', 'Cibernautas_81_LOGOCibernautas.png', 'jorge.floresbl@uanl.edu.mx', 81, '2025-06-07 00:58:42', '2025-06-07 00:58:42', NULL),
(80, 'Fotografía Artística: Representa la tristeza del desamor a través de la enfermedad ficticia Hanahaki, donde las emociones reprimidas se manifiestan en forma de flores que emergen del cuerpo.\r\nFotografía de producto: ❝Bosque de invierno❞ Inspirada en la naturaleza, con una composición que evoca la frescura, calma y textura del bosque.', 'https://www.youtube.com/watch?v=m1yrHVxcvzY', 'https://drive.google.com/file/d/1-4zAf_xCpEyxfbsEIBntMxit56A74vg6/view?usp=sharing', 'Fotografia Digital_4_foto_1024x1024.jpg', 'angela.santillanv@uanl.edu.mx', 4, '2025-06-06 20:46:48', '2025-06-07 02:46:48', NULL),
(81, 'Inspirado en la agilidad y estilo de Spider Gwen, este proyecto da vida al modelo 3D mediante un rig completo con joints, controles personalizados, skinning y blend shapes faciales. El sistema ofrece control preciso y deformaciones naturales para animación y posado. El proceso se documenta en un video demostrativo y una serie de renders que muestran a Gwen en acción, destacando su expresividad y fluidez de movimiento.', 'https://www.youtube.com/watch?v=-PZe39t2hhA', 'https://www.youtube.com/watch?v=-PZe39t2hhA', 'Pose to power- Spider Gwen Rig_58_Diseño sin título.png.jpeg', 'pamela.cordovacrz@uanl.edu.mx', 58, '2025-06-07 02:33:13', '2025-06-07 02:33:13', NULL),
(82, 'Cortometraje en animación 2D para la materia de Producción Multimedia Sinopsis: Detective localiza a un sospechoso.', 'https://www.youtube.com/watch?v=q8fJaBjogB0', 'https://www.youtube.com/watch?v=q8fJaBjogB0', 'Sospechoso_2_mini.png', 'paulina.garciacn@uanl.edu.mx', 2, '2025-06-07 02:37:42', '2025-06-07 02:37:42', NULL),
(83, 'Diseños de personajes originales, bajo la temática de apocalipsis, para la materia de Fundamentos de Dibujo Artístico', 'https://www.youtube.com/watch?v=ovktvhtAEhQ', 'https://www.youtube.com/watch?v=ovktvhtAEhQ', 'Diseños de personaje: Apocalipsis_19_mini (1).png', 'paulina.garciacn@uanl.edu.mx', 19, '2025-06-07 02:40:10', '2025-06-07 02:40:10', NULL),
(84, 'Este proyecto audiovisual retrata la evolución de una relación de pareja, desde la complicidad y el amor genuino hasta el distanciamiento y la despedida.', 'https://www.youtube.com/watch?v=62ARvfwkIso', 'https://drive.google.com/drive/folders/1zzThC1Abb1d_sBaXlD40qlKbvYwW-tPk', 'RelationShip_88_1000054823.png', 'yahir.acostab@uanl.edu.mx', 88, '2025-06-06 22:02:38', '2025-06-07 04:02:38', NULL),
(85, 'Motion es una red social enfocada a los deportes, únete a la comunidad de deportistas alrededor del mundo y comparte tus mejores experiencias en tu deporte favorito. Comparte tus fotos y videos, crea tu perfil, sigue a tus amigos y guarda tus publicaciones favoritas.', 'https://www.youtube.com/watch?v=XqCR-l53B04', 'https://github.com/VocalEm/Motion', 'Motion Red social_84_motion (1).png', 'emiliano.friasflx@uanl.edu.mx', 84, '2025-06-06 21:56:51', '2025-06-07 03:56:51', NULL),
(86, 'Un grupo de amigos cineastas se reúnen para discutir sobre cuál de sus guiones será el que llevaran a un prestigioso festival de cine, sin embargo, su ego como cinéfilos no les permite ver más allá de sus propias obras', 'https://www.youtube.com/watch?v=eW_T71eahuI', 'https://drive.google.com/file/d/1DV6qeO2RwBSuW_bPL_FvdE7C20q5vvyP/view?usp=sharing', 'Esto No Es Un Cortometraje | Cortometraje_33_cortometraje.png', 'alan.saucedasrt@uanl.edu.mx', 33, '2025-06-06 21:01:51', '2025-06-07 03:01:51', NULL),
(87, 'En un sinfín de vecindarios, ciudades y vecindades, nuestro servicio de paquetería UUPS irá a entregarte tu pedido: Siempre y cuando nuestro repartidor, o sea tú, no pierda las cajas y tenga que tomar “prestados” objetos de los vecinos.\r\n\r\nUUPS es un juego de exploración y comedia donde deberás, como repartidor, encontrar el paquete idóneo para tu cliente, basándote en descripciones vagas y lo que encuentres en el escenario.', 'https://www.youtube.com/watch?v=4lXqyoEhkzE', 'https://www.youtube.com/watch?v=4lXqyoEhkzE', 'UUPS..._95_UPPS Portada2.jpg', 'alfredo.delgadoe@uanl.edu.mx', 95, '2025-06-06 22:06:55', '2025-06-07 04:06:55', NULL),
(88, '¿Eres una persona apasionada por los videojuegos, la música, el cine, las series o los libros?\r\n¡Únete a VideoClub! Un espacio donde podrás compartir tu pasión, descubrir nuevas recomendaciones y conectar con otros que comparten tus mismos intereses.', 'https://www.youtube.com/watch?v=zFkcUL1ZuJk', 'https://www.youtube.com/watch?v=zFkcUL1ZuJk', 'VideoClub!_99_expo2025.png', 'andrea.carrerazmr@uanl.edu.mx', 99, '2025-06-07 03:15:20', '2025-06-07 03:15:20', NULL),
(89, 'Un niño se adentra a un cementerio en Halloween sin estar consciente sobre los posibles peligros…', 'https://www.youtube.com/watch?v=3ZyRf71-Xa0', 'https://drive.google.com/file/d/1sieUj3m-6afLS0Or9oWuZaMzGnN7vXWT/view?usp=drive_link', 'El último dulce_105_El_último_dulce.png', 'aylin.galindoa@uanl.edu.mx', 105, '2025-06-06 22:15:06', '2025-06-07 04:15:06', NULL),
(90, 'Como el nombre indica, el proyecto se encarga de gestionar diferentes hoteles de una cadena, contemplando clientes, usuarios, reservaciones, etc.', 'https://www.youtube.com/watch?v=exY8LvClygk', 'https://www.youtube.com/watch?v=exY8LvClygk', 'Sistema de Gestion de hoteles_83_Portada.jpg', 'isacc.canizalescs@uanl.edu.mx', 83, '2025-06-06 21:55:46', '2025-06-07 03:55:46', NULL),
(91, 'Bisonchef\'s: una plataforma para compartir tus recetas favoritas de cocina, descubrir nuevas ideas y conectar con otros amantes de la gastronomía.', 'https://www.youtube.com/watch?v=Y3T7hOweF-0', 'https://www.youtube.com/watch?v=Y3T7hOweF-0', 'BisonChef\'s_85_BisonChef.png', 'diego.iglesiasrdrg@uanl.edu.mx', 85, '2025-06-07 03:54:43', '2025-06-07 03:54:43', NULL),
(92, 'Hoteles Tigre Azul es una aplicación integral diseñada para optimizar y automatizar las operaciones clave de uno o varios hoteles. El sistema permite gestionar eficazmente reservas, clientes, habitaciones, servicios, empleados y reportes, ofreciendo una interfaz amigable tanto para administradores como para empleados del hotel.', 'https://www.youtube.com/watch?v=l_dXEW7tCF8', 'https://github.com/VarelaG25/EXPO_LMAD-Hotel_Manager', 'Hoteles Tigre Azul_94_TigreAzul.png', 'mario.varelagrc@uanl.edu.mx', 94, '2025-06-07 03:58:17', '2025-06-07 03:58:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_students`
--

CREATE TABLE `project_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project` bigint(20) UNSIGNED NOT NULL,
  `student` bigint(20) UNSIGNED NOT NULL,
  `attended` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `project_students`
--

INSERT INTO `project_students` (`id`, `project`, `student`, `attended`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2105496, 0, '2025-05-28 01:01:57', '2025-05-28 01:01:57', NULL),
(2, 2, 2177543, 1, '2025-05-28 01:06:22', '2025-06-07 20:47:02', NULL),
(3, 3, 2043891, 1, '2025-05-28 01:08:22', '2025-06-07 20:46:02', NULL),
(4, 4, 2048073, 1, '2025-05-28 01:10:02', '2025-06-07 20:42:53', NULL),
(5, 5, 2001877, 1, '2025-05-28 01:11:46', '2025-06-07 20:53:06', NULL),
(6, 5, 2072653, 1, '2025-05-28 01:11:46', '2025-06-07 20:52:46', NULL),
(7, 6, 2049159, 1, '2025-05-29 00:09:23', '2025-06-07 20:47:34', NULL),
(8, 7, 1967789, 1, '2025-05-29 00:13:12', '2025-06-07 20:41:14', NULL),
(9, 7, 2003074, 1, '2025-05-29 00:13:12', '2025-06-07 20:59:48', NULL),
(10, 7, 2003266, 1, '2025-05-29 00:13:12', '2025-05-29 00:13:12', NULL),
(11, 7, 1971613, 1, '2025-05-29 00:13:12', '2025-06-07 20:41:08', NULL),
(12, 8, 1923061, 1, '2025-05-29 00:15:25', '2025-06-07 20:36:59', NULL),
(13, 8, 2026779, 1, '2025-05-29 00:15:25', '2025-06-07 20:37:45', NULL),
(14, 8, 1968562, 1, '2025-05-29 00:15:25', '2025-06-07 20:36:42', NULL),
(15, 9, 1968956, 1, '2025-05-29 00:17:26', '2025-06-07 20:43:59', NULL),
(16, 10, 1996327, 1, '2025-05-29 00:19:54', '2025-06-07 20:31:06', NULL),
(17, 10, 2086234, 1, '2025-05-29 00:19:54', '2025-06-07 20:31:14', NULL),
(18, 11, 2002065, 0, '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(19, 11, 1994727, 0, '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(20, 11, 2001476, 0, '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(21, 11, 1949080, 0, '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(22, 12, 2077342, 1, '2025-05-29 00:23:31', '2025-06-07 20:26:46', NULL),
(23, 13, 2086152, 0, '2025-05-29 00:26:19', '2025-05-29 00:26:19', NULL),
(24, 14, 1877303, 0, '2025-05-29 00:27:17', '2025-05-29 00:27:17', NULL),
(25, 15, 1863450, 0, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(26, 15, 2031914, 0, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(27, 15, 1862972, 0, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(28, 15, 1793853, 0, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(29, 15, 1872833, 0, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(30, 15, 1960078, 0, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(31, 16, 2076438, 0, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(32, 16, 1688397, 1, '2025-05-29 01:15:21', '2025-06-07 21:01:22', NULL),
(33, 16, 2076290, 0, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(34, 16, 1862396, 0, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(35, 16, 2076203, 0, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(36, 16, 1918884, 0, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(37, 16, 1949003, 0, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(38, 17, 1909019, 1, '2025-05-29 01:16:47', '2025-06-07 20:45:31', NULL),
(39, 18, 1964989, 1, '2025-05-29 01:18:19', '2025-06-07 20:57:46', NULL),
(40, 19, 2177543, 1, '2025-05-29 03:34:37', '2025-06-07 20:47:02', NULL),
(41, 20, 1998926, 0, '2025-05-29 03:39:51', '2025-05-29 03:39:51', NULL),
(42, 21, 2104791, 0, '2025-05-29 03:42:31', '2025-05-29 03:42:31', NULL),
(43, 22, 2003398, 0, '2025-05-29 03:44:42', '2025-05-29 03:44:42', NULL),
(44, 23, 2076454, 0, '2025-05-29 03:46:18', '2025-05-29 03:46:18', NULL),
(45, 24, 1972507, 0, '2025-05-29 03:48:55', '2025-05-29 03:48:55', NULL),
(46, 24, 1961794, 0, '2025-05-29 03:48:55', '2025-05-29 03:48:55', NULL),
(47, 25, 2050328, 1, '2025-05-29 03:53:13', '2025-06-07 20:40:44', NULL),
(48, 25, 2050205, 1, '2025-05-29 03:53:13', '2025-06-07 20:40:51', NULL),
(49, 26, 2048689, 0, '2025-05-29 04:03:17', '2025-05-29 04:03:17', NULL),
(50, 27, 2086060, 1, '2025-05-29 04:08:16', '2025-06-07 20:47:25', NULL),
(51, 27, 1962531, 1, '2025-05-29 04:08:16', '2025-06-07 20:42:56', NULL),
(52, 27, 2127289, 1, '2025-05-29 04:08:16', '2025-06-07 20:48:12', NULL),
(53, 27, 2086041, 0, '2025-05-29 04:08:16', '2025-05-29 04:08:16', NULL),
(54, 28, 1904022, 0, '2025-05-29 04:11:19', '2025-05-29 04:11:19', NULL),
(55, 28, 1845639, 0, '2025-05-29 04:11:19', '2025-05-29 04:11:19', NULL),
(56, 28, 2086142, 0, '2025-05-29 04:11:19', '2025-05-29 04:11:19', NULL),
(57, 29, 2127289, 1, '2025-05-29 04:13:28', '2025-06-07 20:48:12', NULL),
(58, 30, 1994104, 1, '2025-05-29 04:16:12', '2025-06-07 20:45:02', NULL),
(59, 30, 2086070, 1, '2025-05-29 04:16:12', '2025-06-07 20:28:37', NULL),
(60, 30, 2077342, 1, '2025-05-29 04:16:12', '2025-06-07 20:26:46', NULL),
(61, 31, 1994917, 1, '2025-05-29 04:18:51', '2025-06-07 21:49:17', NULL),
(62, 32, 1994006, 0, '2025-05-29 04:22:13', '2025-05-29 04:22:13', NULL),
(63, 33, 2001325, 0, '2025-05-29 04:23:41', '2025-05-29 04:23:41', NULL),
(64, 34, 1688397, 1, '2025-05-29 04:28:49', '2025-06-07 21:01:22', NULL),
(65, 34, 1865823, 1, '2025-05-29 04:28:49', '2025-06-07 20:55:32', NULL),
(66, 34, 1895924, 0, '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(67, 34, 1972202, 1, '2025-05-29 04:28:49', '2025-06-07 20:39:22', NULL),
(68, 34, 1907668, 0, '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(69, 34, 1855789, 0, '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(70, 35, 2031917, 0, '2025-05-29 04:30:26', '2025-05-29 04:30:26', NULL),
(71, 36, 1852341, 0, '2025-05-29 04:33:35', '2025-05-29 04:33:35', NULL),
(72, 37, 2076229, 0, '2025-05-29 04:35:04', '2025-05-29 04:35:04', NULL),
(73, 38, 1946401, 1, '2025-05-29 23:41:52', '2025-05-29 23:41:52', NULL),
(74, 38, 2086095, 1, '2025-05-29 23:41:52', '2025-06-07 06:31:04', NULL),
(75, 39, 2076253, 1, '2025-05-29 23:47:56', '2025-06-07 21:40:12', NULL),
(76, 39, 1912459, 1, '2025-05-29 23:47:56', '2025-06-07 20:42:27', NULL),
(77, 39, 1950524, 1, '2025-05-29 23:47:56', '2025-06-07 20:49:59', NULL),
(78, 39, 1960426, 1, '2025-05-29 23:47:56', '2025-06-07 20:46:05', NULL),
(79, 39, 1922270, 1, '2025-05-29 23:47:56', '2025-06-07 20:47:42', NULL),
(80, 40, 2086142, 0, '2025-05-30 02:40:11', '2025-05-30 02:40:11', NULL),
(81, 41, 2086142, 0, '2025-05-30 02:42:29', '2025-05-30 02:42:29', NULL),
(82, 41, 1744524, 0, '2025-05-30 02:42:29', '2025-05-30 02:42:29', NULL),
(83, 42, 2002681, 1, '2025-05-31 00:38:54', '2025-06-07 20:47:03', NULL),
(84, 43, 2177543, 1, '2025-05-31 01:09:38', '2025-06-07 20:47:02', NULL),
(85, 44, 2177548, 1, '2025-05-31 01:16:00', '2025-06-07 20:45:20', NULL),
(86, 45, 2048720, 1, '2025-05-31 01:33:40', '2025-06-07 20:43:06', NULL),
(87, 46, 1895122, 0, '2025-05-31 01:47:59', '2025-05-31 01:47:59', NULL),
(88, 46, 2128704, 1, '2025-05-31 01:47:59', '2025-06-07 20:40:27', NULL),
(89, 46, 1953499, 1, '2025-05-31 01:47:59', '2025-06-07 20:38:02', NULL),
(90, 46, 1814685, 1, '2025-05-31 01:47:59', '2025-06-07 20:39:47', NULL),
(91, 47, 2115176, 1, '2025-05-31 01:49:32', '2025-06-07 20:30:34', NULL),
(92, 47, 2067624, 1, '2025-05-31 01:49:32', '2025-06-07 20:31:02', NULL),
(93, 48, 1954794, 1, '2025-05-31 01:53:39', '2025-06-07 20:47:25', NULL),
(94, 49, 2050328, 1, '2025-05-31 01:58:52', '2025-06-07 20:40:44', NULL),
(95, 49, 2072653, 1, '2025-05-31 01:58:52', '2025-06-07 20:52:46', NULL),
(96, 49, 2050205, 1, '2025-05-31 01:58:52', '2025-06-07 20:40:51', NULL),
(97, 49, 2001877, 1, '2025-05-31 01:58:52', '2025-06-07 20:53:06', NULL),
(98, 50, 2017042, 1, '2025-05-31 03:55:52', '2025-06-07 20:33:58', NULL),
(99, 51, 2086060, 1, '2025-05-31 03:57:31', '2025-06-07 20:47:25', NULL),
(100, 52, 2006498, 1, '2025-05-31 03:59:57', '2025-06-07 20:43:33', NULL),
(101, 53, 1962531, 1, '2025-05-31 04:09:07', '2025-06-07 20:42:56', NULL),
(102, 53, 2086278, 1, '2025-05-31 04:09:07', '2025-06-07 20:43:02', NULL),
(103, 53, 2127289, 1, '2025-05-31 04:09:07', '2025-06-07 20:48:12', NULL),
(104, 54, 2003074, 1, '2025-05-31 04:12:56', '2025-06-07 20:59:48', NULL),
(105, 55, 1945422, 1, '2025-05-31 04:17:44', '2025-06-07 20:46:53', NULL),
(106, 56, 1986188, 1, '2025-05-31 04:22:06', '2025-06-07 20:49:18', NULL),
(107, 56, 1904959, 1, '2025-05-31 04:22:06', '2025-06-07 20:43:20', NULL),
(108, 56, 1928013, 1, '2025-05-31 04:22:06', '2025-06-07 20:49:39', NULL),
(109, 57, 2077342, 1, '2025-05-31 04:27:42', '2025-06-07 20:26:46', NULL),
(110, 57, 2086070, 1, '2025-05-31 04:27:42', '2025-06-07 20:28:37', NULL),
(111, 57, 1994104, 1, '2025-05-31 04:27:42', '2025-06-07 20:45:02', NULL),
(112, 57, 2008229, 1, '2025-05-31 04:27:42', '2025-06-07 20:49:19', NULL),
(113, 57, 2003723, 1, '2025-05-31 04:27:42', '2025-06-07 20:43:36', NULL),
(114, 57, 1998739, 0, '2025-05-31 04:27:42', '2025-05-31 04:27:42', NULL),
(115, 58, 1944697, 1, '2025-05-31 04:29:03', '2025-06-07 21:00:36', NULL),
(116, 59, 1895640, 1, '2025-05-31 04:30:30', '2025-06-07 20:46:12', NULL),
(117, 60, 1865823, 1, '2025-05-31 04:38:04', '2025-06-07 20:55:32', NULL),
(118, 60, 1920878, 1, '2025-05-31 04:38:04', '2025-06-07 21:01:32', NULL),
(119, 60, 1688397, 1, '2025-05-31 04:38:04', '2025-06-07 21:01:22', NULL),
(120, 60, 1895924, 0, '2025-05-31 04:38:04', '2025-05-31 04:38:04', NULL),
(121, 60, 1972202, 1, '2025-05-31 04:38:04', '2025-06-07 20:39:22', NULL),
(122, 60, 1986188, 1, '2025-05-31 04:38:04', '2025-06-07 20:49:18', NULL),
(123, 61, 2086223, 0, '2025-06-02 23:12:34', '2025-06-02 23:12:34', NULL),
(124, 61, 1952154, 0, '2025-06-02 23:12:34', '2025-06-02 23:12:34', NULL),
(125, 61, 2077342, 1, '2025-06-02 23:12:34', '2025-06-07 20:26:46', NULL),
(126, 62, 2177548, 1, '2025-06-02 23:18:49', '2025-06-07 20:45:20', NULL),
(127, 63, 2177644, 0, '2025-06-02 23:27:52', '2025-06-02 23:27:52', NULL),
(128, 64, 2047764, 0, '2025-06-02 23:29:48', '2025-06-02 23:29:48', NULL),
(129, 65, 2038118, 0, '2025-06-02 23:32:08', '2025-06-02 23:32:08', NULL),
(130, 66, 2050506, 1, '2025-06-03 00:36:40', '2025-06-07 20:38:41', NULL),
(131, 66, 1997554, 1, '2025-06-03 00:36:40', '2025-06-07 21:38:10', NULL),
(132, 66, 1954794, 1, '2025-06-03 00:36:40', '2025-06-07 20:47:25', NULL),
(133, 66, 2048846, 0, '2025-06-03 00:36:40', '2025-06-03 00:36:40', NULL),
(134, 67, 2003063, 0, '2025-06-03 00:38:25', '2025-06-03 00:38:25', NULL),
(135, 68, 2044966, 0, '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(136, 68, 2052355, 0, '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(137, 68, 1910702, 0, '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(138, 68, 1686343, 0, '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(139, 69, 2063686, 0, '2025-06-03 00:49:43', '2025-06-03 00:49:43', NULL),
(140, 70, 2058917, 0, '2025-06-03 00:51:44', '2025-06-03 00:51:44', NULL),
(141, 71, 1923061, 1, '2025-06-03 00:54:32', '2025-06-07 20:36:59', NULL),
(142, 71, 1968562, 1, '2025-06-03 00:54:32', '2025-06-07 20:36:42', NULL),
(143, 71, 2002086, 0, '2025-06-03 00:54:32', '2025-06-03 00:54:32', NULL),
(144, 72, 2076454, 0, '2025-06-03 00:56:13', '2025-06-03 00:56:13', NULL),
(145, 73, 1996239, 0, '2025-06-03 00:59:10', '2025-06-03 00:59:10', NULL),
(146, 74, 2001215, 0, '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(147, 74, 2086045, 0, '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(148, 74, 1941498, 0, '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(149, 74, 1736859, 0, '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(150, 74, 1843574, 1, '2025-06-03 01:06:46', '2025-06-07 20:53:50', NULL),
(151, 74, 2086085, 0, '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(152, 75, 1998739, 0, '2025-06-03 01:17:44', '2025-06-03 01:17:44', NULL),
(153, 76, 1986217, 0, '2025-06-03 01:19:49', '2025-06-03 01:19:49', NULL),
(154, 77, 1909650, 0, '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(155, 77, 1939699, 0, '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(156, 77, 1903753, 0, '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(157, 77, 1814955, 0, '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(158, 77, 1878198, 0, '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(159, 78, 1800003, 1, '2025-06-04 23:15:10', '2025-06-07 20:32:38', NULL),
(160, 79, 1917319, 0, '2025-06-04 23:42:42', '2025-06-04 23:42:42', NULL),
(161, 80, 1923061, 1, '2025-06-05 03:32:09', '2025-06-07 20:36:59', NULL),
(162, 81, 1843574, 1, '2025-06-05 03:36:23', '2025-06-07 20:53:50', NULL),
(163, 81, 1923061, 1, '2025-06-05 03:36:23', '2025-06-07 20:36:59', NULL),
(164, 82, 2049814, 0, '2025-06-05 23:39:22', '2025-06-05 23:39:22', NULL),
(165, 82, 2058917, 0, '2025-06-05 23:39:22', '2025-06-05 23:39:22', NULL),
(166, 83, 1864881, 0, '2025-06-05 23:43:13', '2025-06-05 23:43:13', NULL),
(167, 83, 1998377, 0, '2025-06-05 23:43:13', '2025-06-05 23:43:13', NULL),
(168, 84, 2127311, 0, '2025-06-05 23:49:48', '2025-06-05 23:49:48', NULL),
(169, 84, 1962531, 1, '2025-06-05 23:49:48', '2025-06-07 20:42:56', NULL),
(170, 85, 1868323, 0, '2025-06-06 00:00:39', '2025-06-06 00:00:39', NULL),
(171, 85, 1968562, 1, '2025-06-06 00:00:39', '2025-06-07 20:36:42', NULL),
(172, 86, 2086144, 0, '2025-06-06 00:02:18', '2025-06-06 00:02:18', NULL),
(173, 86, 2086142, 0, '2025-06-06 00:02:18', '2025-06-06 00:02:18', NULL),
(174, 87, 2002681, 1, '2025-06-06 01:50:54', '2025-06-07 20:47:03', NULL),
(175, 88, 2128704, 1, '2025-06-06 02:06:55', '2025-06-07 20:40:27', NULL),
(176, 88, 2056800, 0, '2025-06-06 02:06:55', '2025-06-06 02:06:55', NULL),
(177, 88, 2007587, 0, '2025-06-06 02:06:55', '2025-06-06 02:06:55', NULL),
(178, 88, 1978260, 1, '2025-06-06 02:06:55', '2025-06-07 20:38:45', NULL),
(179, 88, 2048779, 1, '2025-06-06 02:06:55', '2025-06-07 20:33:21', NULL),
(180, 89, 2048720, 1, '2025-06-06 02:13:19', '2025-06-07 20:43:06', NULL),
(181, 89, 2048846, 0, '2025-06-06 02:13:19', '2025-06-06 02:13:19', NULL),
(182, 89, 1953499, 1, '2025-06-06 02:13:19', '2025-06-07 20:38:02', NULL),
(183, 89, 2086207, 1, '2025-06-06 02:13:19', '2025-06-07 20:42:13', NULL),
(184, 90, 2048283, 0, '2025-06-06 02:20:02', '2025-06-06 02:20:02', NULL),
(185, 90, 2048968, 0, '2025-06-06 02:20:02', '2025-06-06 02:20:02', NULL),
(186, 91, 1998672, 1, '2025-06-06 02:32:41', '2025-06-07 20:35:56', NULL),
(187, 92, 1998672, 1, '2025-06-06 02:40:36', '2025-06-07 20:35:56', NULL),
(188, 92, 2001170, 1, '2025-06-06 02:40:36', '2025-06-07 20:34:05', NULL),
(189, 93, 1958524, 1, '2025-06-06 02:43:46', '2025-06-07 20:34:28', NULL),
(190, 93, 2048779, 1, '2025-06-06 02:43:46', '2025-06-07 20:33:21', NULL),
(191, 94, 2048968, 0, '2025-06-06 02:51:52', '2025-06-06 02:51:52', NULL),
(192, 94, 1949282, 0, '2025-06-06 02:51:52', '2025-06-06 02:51:52', NULL),
(193, 95, 2132984, 1, '2025-06-06 03:32:21', '2025-06-07 21:00:15', NULL),
(194, 95, 2132986, 0, '2025-06-06 03:32:21', '2025-06-06 03:32:21', NULL),
(195, 96, 2020197, 0, '2025-06-06 03:34:57', '2025-06-06 03:34:57', NULL),
(196, 96, 2062721, 0, '2025-06-06 03:34:57', '2025-06-06 03:34:57', NULL),
(197, 96, 1961244, 0, '2025-06-06 03:34:57', '2025-06-06 03:34:57', NULL),
(198, 97, 2132903, 1, '2025-06-06 03:37:02', '2025-06-07 20:55:09', NULL),
(199, 98, 1961238, 1, '2025-06-06 03:39:44', '2025-06-07 20:19:49', NULL),
(200, 98, 2048720, 1, '2025-06-06 03:39:44', '2025-06-07 20:43:06', NULL),
(201, 99, 1917319, 0, '2025-06-06 03:43:41', '2025-06-06 03:43:41', NULL),
(202, 99, 2026779, 1, '2025-06-06 03:43:41', '2025-06-07 20:37:45', NULL),
(203, 100, 2008229, 1, '2025-06-06 03:52:26', '2025-06-07 20:49:19', NULL),
(204, 100, 2007277, 1, '2025-06-06 03:52:26', '2025-06-07 20:49:00', NULL),
(205, 100, 1970636, 1, '2025-06-06 03:52:26', '2025-06-07 22:27:09', NULL),
(206, 100, 1972905, 1, '2025-06-06 03:52:26', '2025-06-07 20:48:52', NULL),
(207, 100, 1995923, 1, '2025-06-06 03:52:26', '2025-06-07 21:49:22', NULL),
(208, 100, 1994917, 1, '2025-06-06 03:52:26', '2025-06-07 21:49:17', NULL),
(209, 101, 2077342, 1, '2025-06-06 03:59:28', '2025-06-07 20:26:46', NULL),
(210, 101, 1944697, 1, '2025-06-06 03:59:28', '2025-06-07 21:00:36', NULL),
(211, 101, 1910634, 1, '2025-06-06 03:59:28', '2025-06-07 21:00:54', NULL),
(212, 101, 2086070, 1, '2025-06-06 03:59:28', '2025-06-07 20:28:37', NULL),
(213, 101, 1994727, 0, '2025-06-06 03:59:28', '2025-06-06 03:59:28', NULL),
(214, 101, 1994104, 1, '2025-06-06 03:59:28', '2025-06-07 20:45:02', NULL),
(215, 102, 1995031, 1, '2025-06-06 04:03:12', '2025-06-07 20:59:16', NULL),
(216, 103, 2007809, 0, '2025-06-06 04:06:21', '2025-06-06 04:06:21', NULL),
(217, 104, 1900171, 0, '2025-06-06 04:07:46', '2025-06-06 04:07:46', NULL),
(218, 105, 2076219, 0, '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(219, 105, 1867475, 0, '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(220, 105, 1526807, 0, '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(221, 105, 1919676, 0, '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(222, 105, 2034230, 0, '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `enrollment` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`enrollment`, `fullName`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1526807, 'JAIME ALBERTO RODRIGUEZ NUÑEZ', '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(1686343, 'KEVIN JESUS PEÑA MORENO', '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(1688397, 'JUAN FERNANDO CARRIZALES LOPEZ', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(1736859, 'ALDO MAXIMIO IBARRA MELENDEZ', '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(1744524, 'MIGUEL MORENO NA', '2025-05-30 02:42:29', '2025-05-30 02:42:29', NULL),
(1793853, 'EDUARDO ANTONIO CASTILLO RAMIREZ', '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(1800003, 'ISSA VALERIA GARZA SANCHEZ', '2025-06-04 23:15:10', '2025-06-04 23:15:10', NULL),
(1814685, 'JOSÉ ARMANDO CAMPOS RIVAS', '2025-05-31 01:47:59', '2025-05-31 01:47:59', NULL),
(1814955, 'DIEGO ISMAEL ESPINOSA RAMOS', '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(1843574, 'ADAN HORACIO MENDEZ HERNANDEZ', '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(1845639, 'ANA SARED GARCIA VERA', '2025-05-29 04:11:19', '2025-05-29 04:11:19', NULL),
(1852341, 'CELIA ABIGAIL BLANCO OJEDA', '2025-05-29 04:33:35', '2025-05-29 04:33:35', NULL),
(1855789, 'ABRAHAM EULOGIO ZUÑIGA LOZANO', '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(1862396, 'FATIMA EMILIA NUÑEZ RAMIREZ', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(1862972, 'MIGUEL ANGEL FERNANDEZ DEL BOSQUE', '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(1863450, 'GABRIEL ALONSO SANABRIA CERVANTES', '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(1864881, 'ISACC ALEJANDRO CANIZALES CUEVAS', '2025-06-05 23:43:13', '2025-06-05 23:43:13', NULL),
(1865823, 'JESÚS JULIÁN CERDA SANDOVAL', '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(1867475, 'NOE ELIAN BOCANEGRA PADILLA', '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(1868323, 'EDGAR CEPEDA RODRIGUEZ', '2025-06-06 00:00:39', '2025-06-06 00:00:39', NULL),
(1872833, 'KEVIN VAZQUEZ GALLEGOS', '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(1877303, 'ERICK EDUARDO SEGURA MORENO', '2025-05-29 00:27:17', '2025-05-29 00:27:17', NULL),
(1878198, 'OSCAR DANIEL MUÑOZ VALENZUELA', '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(1895122, 'LEONARDO GABRIEL GARCÍA NUÑEZ', '2025-05-31 01:47:59', '2025-05-31 01:47:59', NULL),
(1895640, 'MIGUEL MARURI MALDONADO', '2025-05-31 04:30:30', '2025-05-31 04:30:30', NULL),
(1895924, 'POLETT GARZA GARZA', '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(1900171, 'MAGDALA SHANIA QUIROZ GONZÁLEZ', '2025-06-06 04:07:46', '2025-06-06 04:07:46', NULL),
(1903753, 'GERARDO LEIJA GAUNA', '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(1904022, 'ANA PAOLA DIAZ MONTEMAYOR', '2025-05-29 04:11:19', '2025-05-29 04:11:19', NULL),
(1904959, 'DAFNE SARAHI CARVAJAL CULEBRO', '2025-05-31 04:22:06', '2025-05-31 04:22:06', NULL),
(1907668, 'MARIA FERNANDA LOPEZ TORRES', '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(1909019, 'JOSÉ ÁNGEL ABREGO MARTINEZ', '2025-05-29 01:16:47', '2025-05-29 01:16:47', NULL),
(1909650, 'PEDRO HERNÁNDEZ AGUILA', '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(1910634, 'MARÍA ALEXSSANDRA DE LEÓN AGUILERA', '2025-06-06 03:59:28', '2025-06-06 03:59:28', NULL),
(1910702, 'CORA OLYLIA NARVAEZ SALAZAR', '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(1912459, 'JOSE ANGEL ALMARAZ IBARRA', '2025-05-29 23:47:56', '2025-05-29 23:47:56', NULL),
(1917319, 'NAYDELIN VANESSA TORRES GALVÁN', '2025-06-04 23:42:42', '2025-06-04 23:42:42', NULL),
(1918884, 'GERARDO GONZALEZ DE LA ROSA', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(1919676, 'JUAN CARLOS GARCIA VAZQUEZ', '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(1920878, 'SAMANTHA MONSERRAT HERNÁNDEZ TREVIÑO', '2025-05-31 04:38:04', '2025-05-31 04:38:04', NULL),
(1922270, 'LUIS JAIME MIER RODRIGUEZ', '2025-05-29 23:47:56', '2025-05-29 23:47:56', NULL),
(1923061, 'JORGE PABLO FLORES BLANCO', '2025-05-29 00:15:25', '2025-05-29 00:15:25', NULL),
(1928013, 'DANIEL REYES RODRIGUEZ', '2025-05-31 04:22:06', '2025-05-31 04:22:06', NULL),
(1939699, 'JORGE ENRIQUE SALAS HERNÁNDEZ', '2025-06-03 01:28:23', '2025-06-03 01:28:23', NULL),
(1941498, 'FRANCISCO JAVIER ZAPATA ALEMÁN', '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(1944697, 'PAMELA CORDOVA CRUZ', '2025-05-31 04:29:03', '2025-05-31 04:29:03', NULL),
(1945422, 'PERLA GISEL NUÑEZ TORRES', '2025-05-31 04:17:44', '2025-05-31 04:17:44', NULL),
(1946401, 'JESÚS ENRIQUE GONZALEZ MARTINEZ', '2025-05-29 23:41:52', '2025-05-29 23:41:52', NULL),
(1949003, 'NELLSON MIGUEL SANDOVAL OLVERA', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(1949080, 'ANDRES TADEO LOPEZ FABELA', '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(1949282, 'JOSE MARIO VARELA GARCIA', '2025-06-06 02:51:52', '2025-06-06 02:51:52', NULL),
(1950524, 'MIGUEL CUELLAR QUINTERO', '2025-05-29 23:47:56', '2025-05-29 23:47:56', NULL),
(1952154, 'SAUL DANIEL MOLINA RUIZ', '2025-06-02 23:12:34', '2025-06-02 23:12:34', NULL),
(1953499, 'ALAN GABRIEL SALAS RAMÍREZ', '2025-05-31 01:47:59', '2025-05-31 01:47:59', NULL),
(1954794, 'KEVIN YAHIR VILLARREAL HIRACHETA', '2025-05-31 01:53:39', '2025-05-31 01:53:39', NULL),
(1958524, 'ADRIAN MARTINEZ TREVIÑO', '2025-06-06 02:43:46', '2025-06-06 02:43:46', NULL),
(1960078, 'ELOISA SARAI CORDOBA HERNANDEZ', '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(1960426, 'CARLOS CEDILLO CHARLES', '2025-05-29 23:47:56', '2025-05-29 23:47:56', NULL),
(1961238, 'DANTE OMAR FERNANDEZ MANCILLA', '2025-06-06 03:39:44', '2025-06-06 03:39:44', NULL),
(1961244, 'HANNIA EDITH MARTINEZ ADAME', '2025-06-06 03:34:57', '2025-06-06 03:34:57', NULL),
(1961794, 'DAVID AGUILAR ACOSTA', '2025-05-29 03:48:55', '2025-05-29 03:48:55', NULL),
(1962531, 'JOSE EMILIANO FRIAS FELIX', '2025-05-29 04:08:16', '2025-05-29 04:08:16', NULL),
(1964989, 'JESÚS DIONISIO MERLO LOZANO', '2025-05-29 01:18:19', '2025-05-29 01:18:19', NULL),
(1967789, 'MAURICIO ALEXANDER MARTINEZ ARREDONDO', '2025-05-29 00:13:12', '2025-05-29 00:13:12', NULL),
(1968562, 'DIEGO IGLESIAS RODRIGUEZ', '2025-05-29 00:15:25', '2025-05-29 00:15:25', NULL),
(1968956, 'INGRID VANESSA DÁVILA MORENO', '2025-05-29 00:17:26', '2025-05-29 00:17:26', NULL),
(1970636, 'ERICK FRANCO MÉNDEZ ESTRADA', '2025-06-06 03:52:26', '2025-06-06 03:52:26', NULL),
(1971613, 'OSCAR MARIO GONZALEZ ESCALERA', '2025-05-29 00:13:12', '2025-05-29 00:13:12', NULL),
(1972202, 'GEMA YAMILETH LEOS ESQUIVEL', '2025-05-29 04:28:49', '2025-05-29 04:28:49', NULL),
(1972507, 'REBECA EVANGELISTA JASSO', '2025-05-29 03:48:55', '2025-05-29 03:48:55', NULL),
(1972905, 'DAVID EMMANUEL RODRÍGUEZ RODRÍGUEZ', '2025-06-06 03:52:26', '2025-06-06 03:52:26', NULL),
(1978260, 'GAEL ENRIQUE LUGO LEANG', '2025-06-06 02:06:55', '2025-06-06 02:06:55', NULL),
(1986188, 'ERICK AGUILAR MIRAMONTES', '2025-05-31 04:22:06', '2025-05-31 04:22:06', NULL),
(1986217, 'JUAN LUIS SANTILLÁN VILLA', '2025-06-03 01:19:49', '2025-06-03 01:19:49', NULL),
(1994006, 'ROBERTO CARLOS DOMÍNGUEZ ESPINOSA', '2025-05-29 04:22:13', '2025-05-29 04:22:13', NULL),
(1994104, 'MARLA JUDITH ESTRADA VALDEZ', '2025-05-29 04:16:12', '2025-05-29 04:16:12', NULL),
(1994727, 'GUSTAVO ISAÍ GÓMEZ ALVAREZ', '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(1994917, 'LEONARDO MORENO GONZÁLEZ', '2025-05-29 04:18:51', '2025-05-29 04:18:51', NULL),
(1995031, 'YAIR EMILIANO BETANCOURT SAMANIEGO', '2025-06-06 04:03:12', '2025-06-06 04:03:12', NULL),
(1995923, 'JOSÉ MARÍA NORIEGA MORENO', '2025-06-06 03:52:26', '2025-06-06 03:52:26', NULL),
(1996239, 'CESAR ISAAC PEÑA MENDOZA', '2025-06-03 00:59:10', '2025-06-03 00:59:10', NULL),
(1996327, 'ANA LIZBETH IBARRA ESPINOZA', '2025-05-29 00:19:54', '2025-05-29 00:19:54', NULL),
(1997554, 'JAFETH ESAU PLASCENCIA CONTRERAS', '2025-06-03 00:36:40', '2025-06-03 00:36:40', NULL),
(1998377, 'ANGEL ANTONIO MATA ZAMORA', '2025-06-05 23:43:13', '2025-06-05 23:43:13', NULL),
(1998672, 'JONATHAN ANTONIO GARCIA SALAZAR', '2025-06-06 02:32:41', '2025-06-06 02:32:41', NULL),
(1998739, 'ALDO ROGELIO GONZALEZ ZAPATA', '2025-05-31 04:27:42', '2025-05-31 04:27:42', NULL),
(1998926, 'MELISSA FERNANDA GARZON GONZALEZ', '2025-05-29 03:39:51', '2025-05-29 03:39:51', NULL),
(2001170, 'MAURICIO ELEUTERIO ORTIZ RODRIGUEZ', '2025-06-06 02:40:36', '2025-06-06 02:40:36', NULL),
(2001215, 'MATEO ZAMORA GRAJEDA', '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(2001325, 'ALAN ISAAC SAUCEDA SERRATO', '2025-05-29 04:23:41', '2025-05-29 04:23:41', NULL),
(2001476, 'ALMA DANIELA GARZA PALOMINO', '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(2001877, 'ITZEL ANAHÍ PÉREZ MORALES', '2025-05-28 01:11:46', '2025-05-28 01:11:46', NULL),
(2002065, 'AARON ABDAEL GARZA DE LA FUENTE', '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(2002086, 'MARIA FERNANDA ORTIZ CARRILLO', '2025-06-03 00:54:32', '2025-06-03 00:54:32', NULL),
(2002681, 'WINSTON CANTÚ CORONADO', '2025-05-31 00:38:54', '2025-05-31 00:38:54', NULL),
(2003063, 'GUILLERMO RENÉ DAVILA ROQUE', '2025-06-03 00:38:25', '2025-06-03 00:38:25', NULL),
(2003074, 'DANIEL CHAPA GUAJARDO', '2025-05-29 00:13:12', '2025-05-29 00:13:12', NULL),
(2003266, 'FERNAND0 EMILIANO ROMO RAMIREZ', '2025-05-29 00:13:12', '2025-05-29 00:13:12', NULL),
(2003398, 'OCIEL MARTINEZ MERCADO', '2025-05-29 03:44:42', '2025-05-29 03:44:42', NULL),
(2003723, 'ROBERTO PONCE PEREZ', '2025-05-31 04:27:42', '2025-05-31 04:27:42', NULL),
(2006498, 'NARAYANI CABRERA CARRERA', '2025-05-31 03:59:57', '2025-05-31 03:59:57', NULL),
(2007277, 'STIBALY JARETZI RÍOS SIFUENTES', '2025-06-06 03:52:26', '2025-06-06 03:52:26', NULL),
(2007587, 'ALAN YAHIR CORREA GUTIERREZ', '2025-06-06 02:06:55', '2025-06-06 02:06:55', NULL),
(2007809, 'TANIA BERENICE RODRÍGUEZ GUERRERO', '2025-06-06 04:06:21', '2025-06-06 04:06:21', NULL),
(2008229, 'ANA SOFIA HERNANDEZ SALAZAR', '2025-05-31 04:27:42', '2025-05-31 04:27:42', NULL),
(2017042, 'AXEL GARCIA VALDEZ', '2025-05-31 03:55:52', '2025-05-31 03:55:52', NULL),
(2020197, 'ANDRÉS RAFAEL GONZÁLEZ SIERRA', '2025-06-06 03:34:57', '2025-06-06 03:34:57', NULL),
(2026779, 'ANDREA CARRERA ZAMORA', '2025-05-29 00:15:25', '2025-05-29 00:15:25', NULL),
(2031914, 'ANGEL JIMENEZ ALVARADO', '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(2031917, 'MAX ADALBERTO TERRAZAS MORAN', '2025-05-29 04:30:26', '2025-05-29 04:30:26', NULL),
(2034230, 'KARLA DANIELA FERNANDEZ RAMÍREZ', '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(2038118, 'DANIEL ABISAI MONTELONGO VÁZQUEZ', '2025-06-02 23:32:08', '2025-06-02 23:32:08', NULL),
(2043891, 'DANNA PAULINA QUIHUI HERNANDEZ', '2025-05-28 01:08:22', '2025-05-28 01:08:22', NULL),
(2044966, 'JOSUE ROLANDO CARREON GUADIAN', '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(2047764, 'ABRIL ABIGAIL PEÑA SOLIS', '2025-06-02 23:29:48', '2025-06-02 23:29:48', NULL),
(2048073, 'ANGELA ALONDRA SANTILLÁN VALDÉS', '2025-05-28 01:10:02', '2025-05-28 01:10:02', NULL),
(2048283, 'STACY YAMILLI CHAPA GARZA', '2025-06-06 02:20:02', '2025-06-06 02:20:02', NULL),
(2048689, 'JOSHUA SALVADOR TORRES GONZALEZ', '2025-05-29 04:03:17', '2025-05-29 04:03:17', NULL),
(2048720, 'MARÍA FERNANDA GONZÁLEZ RASCÓN', '2025-05-31 01:33:40', '2025-05-31 01:33:40', NULL),
(2048779, 'FÁTIMA SALAZAR LOYOLA', '2025-06-06 02:06:55', '2025-06-06 02:06:55', NULL),
(2048846, 'ALONDRA GUAJARDO URIBE', '2025-06-03 00:36:40', '2025-06-03 00:36:40', NULL),
(2048968, 'PRISILA BERENICE LUNA DELGADO', '2025-06-06 02:20:02', '2025-06-06 02:20:02', NULL),
(2049159, 'ALEXIA NUÑEZ CANTU', '2025-05-29 00:09:23', '2025-05-29 00:09:23', NULL),
(2049814, 'KEREN SUZETTE NAVA LUCIO', '2025-06-05 23:39:22', '2025-06-05 23:39:22', NULL),
(2050205, 'LUZ PAOLA GARCIA RODRIGUEZ', '2025-05-29 03:53:13', '2025-05-29 03:53:13', NULL),
(2050328, 'SOFIA ALEJANDRA ALANIS AYALA', '2025-05-29 03:53:13', '2025-05-29 03:53:13', NULL),
(2050506, 'SOFIA MONTSERRAT VILLEGAS BLANCO', '2025-06-03 00:36:40', '2025-06-03 00:36:40', NULL),
(2052355, 'LUIS ENRIQUE MARTINEZ DIAZ', '2025-06-03 00:41:41', '2025-06-03 00:41:41', NULL),
(2056800, 'DORIA MONTSERRAT CASTAÑEDA GUTIERREZ', '2025-06-06 02:06:55', '2025-06-06 02:06:55', NULL),
(2058917, 'DULCE MARÍA RIOS FLORES', '2025-06-03 00:51:44', '2025-06-03 00:51:44', NULL),
(2062721, 'ELIUD ASAEL SÁNCHEZ ÁVILA', '2025-06-06 03:34:57', '2025-06-06 03:34:57', NULL),
(2063686, 'DANIELA ALEJANDRA LÓPEZ LUNA', '2025-06-03 00:49:43', '2025-06-03 00:49:43', NULL),
(2067624, 'YARELI URIBE LÓPEZ', '2025-05-31 01:49:32', '2025-05-31 01:49:32', NULL),
(2072653, 'AYLIN CELESTE RODRIGUEZ CAVAZOS', '2025-05-28 01:11:46', '2025-05-28 01:11:46', NULL),
(2076203, 'MONTSERRAT ORTEGA GARCIA', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(2076219, 'AYLIN GALINDO ACOSTA', '2025-06-06 04:12:32', '2025-06-06 04:12:32', NULL),
(2076229, 'PAMELA CECILLE TAPIA ARREDONDO', '2025-05-29 04:35:04', '2025-05-29 04:35:04', NULL),
(2076253, 'NELLY RANGEL JIMENEZ', '2025-05-29 23:47:56', '2025-05-29 23:47:56', NULL),
(2076290, 'DENILSON DE JESUS MATA COLORADO', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(2076438, 'MARISA CANO GÓMEZ', '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(2076454, 'DANNA PAOLA HERNANDEZ RODRIGUEZ', '2025-05-29 03:46:18', '2025-05-29 03:46:18', NULL),
(2077342, 'HEBER ABIEL PÉREZ JIMENEZ', '2025-05-29 00:23:31', '2025-05-29 00:23:31', NULL),
(2086041, 'MARIO DANIEL PEREZ JIMENEZ', '2025-05-29 04:08:16', '2025-05-29 04:08:16', NULL),
(2086045, 'ISIS ESMERALDA FLORES MONTES', '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(2086060, 'FRANCISCO ALEJANDRO CONTRERAS VILLAVICENCIO', '2025-05-29 04:08:16', '2025-05-29 04:08:16', NULL),
(2086070, 'CLAUDIA ITZEL HERNÁNDEZ VARGAS', '2025-05-29 04:16:12', '2025-05-29 04:16:12', NULL),
(2086085, 'ANGEL DE JESUS HERNANDEZ CHAVEZ', '2025-06-03 01:06:46', '2025-06-03 01:06:46', NULL),
(2086095, 'CARLOS DANIEL PINKUS MARTÍNEZ', '2025-05-29 23:41:52', '2025-05-29 23:41:52', NULL),
(2086142, 'CONSTANZA HELENA MONTIEL MUNDO', '2025-05-29 04:11:19', '2025-05-29 04:11:19', NULL),
(2086144, 'SOFIA DE LA FUENTE AVILA', '2025-06-06 00:02:18', '2025-06-06 00:02:18', NULL),
(2086152, 'CARLOS GÓMEZ LÓPEZ', '2025-05-29 00:26:19', '2025-05-29 00:26:19', NULL),
(2086207, 'ALDO TOVAR LAZALDE', '2025-06-06 02:13:19', '2025-06-06 02:13:19', NULL),
(2086223, 'EVELYN GRISELDA FLORES RAMIREZ', '2025-06-02 23:12:34', '2025-06-02 23:12:34', NULL),
(2086234, 'XIMENA GUADALUPE ROSALES VELAZQUEZ', '2025-05-29 00:19:54', '2025-05-29 00:19:54', NULL),
(2086278, 'JORDI ALEXIS SALDAÑA ORTIZ', '2025-05-31 04:09:07', '2025-05-31 04:09:07', NULL),
(2104791, 'ANGEL MANUEL SUSTAITA NAVARRO', '2025-05-29 03:42:31', '2025-05-29 03:42:31', NULL),
(2105496, 'DAVID EMMANUEL ALEMÁN SERNA', '2025-05-28 01:01:57', '2025-05-28 01:01:57', NULL),
(2115176, 'ERIKA GUADALUPE BARRAZA TAMEZ', '2025-05-31 01:49:32', '2025-05-31 01:49:32', NULL),
(2127289, 'MARIA MERCEDES THOMAS RIVADULLA', '2025-05-29 04:08:16', '2025-05-29 04:08:16', NULL),
(2127311, 'ANGELES MONSERRAT CARRANZA CHIMAL', '2025-06-05 23:49:48', '2025-06-05 23:49:48', NULL),
(2128704, 'YAHIR ALEJANDRO ACOSTA BELTRÁN', '2025-05-31 01:47:59', '2025-05-31 01:47:59', NULL),
(2132903, 'KENNYA BRISEIDA ALMAGUER ACUÑA', '2025-06-06 03:37:02', '2025-06-06 03:37:02', NULL),
(2132984, 'ALFREDO EMILIANO DELGADO ESQUIVEL', '2025-06-06 03:32:21', '2025-06-06 03:32:21', NULL),
(2132986, 'JUAN MANUEL MARTÍNEZ GUEVARA', '2025-06-06 03:32:21', '2025-06-06 03:32:21', NULL),
(2177543, 'PAULINA ASTRID GARCIA CANO', '2025-05-28 01:06:22', '2025-05-28 01:06:22', NULL),
(2177548, 'ARANTZA KAREL DE LA VEGA GONZÁLEZ', '2025-05-31 01:16:00', '2025-05-31 01:16:00', NULL),
(2177644, 'LAURA CAROLINA CUEVAS SANDOVAL', '2025-06-02 23:27:52', '2025-06-02 23:27:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `nombre_materia` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL,
  `plan` varchar(50) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`id`, `nombre_materia`, `semestre`, `plan`, `deleted_at`) VALUES
(1, 'Fundamentos del dibujo artístico', 3, '440', NULL),
(2, 'Producción multimedia', 3, '420', NULL),
(3, 'Modelado arquitectónico', 3, '420', NULL),
(4, 'Producción multimedia', 3, '440', NULL),
(5, 'Modelado arquitectónico', 3, '440', NULL),
(6, 'Modelado orgánico', 4, '420', NULL),
(7, 'Cinematografía', 5, '420', NULL),
(8, 'Fotografía digital', 5, '420', NULL),
(9, 'Gráficas computacionales I', 5, '420', NULL),
(10, 'Diseño de hápticos', 5, '420', NULL),
(11, 'Modelos de administración de datos', 5, '420', NULL),
(12, 'Administración de alto volumen de datos', 5, '420', NULL),
(13, 'Animación básica', 5, '420', NULL),
(14, 'Preproducción de video', 5, '420', NULL),
(15, 'Escenarios de videojuegos', 6, '420', NULL),
(16, 'Gráficas computacionales II', 6, '420', NULL),
(17, 'Modelado en alto poligonaje', 6, '420', NULL),
(18, 'Ilustración digital', 6, '420', NULL),
(19, 'Efectos visuales I', 6, '420', NULL),
(20, 'Base de datos multimedia', 7, '420', NULL),
(21, 'Optimización de videojuegos', 7, '420', NULL),
(22, 'Programación de sistemas móviles', 7, '420', NULL),
(23, 'Actuación y dirección para animación', 7, '420', NULL),
(24, 'Animación tradicional de humanos y de animales', 7, '420', NULL),
(25, 'Efectos visuales II', 7, '420', NULL),
(26, 'Diseño de videojuegos en linea', 8, '420', NULL),
(27, 'Realidad virtual', 8, '420', NULL),
(28, 'Esqueletos de personajes', 8, '420', NULL),
(29, 'Animación tradicional de escenarios', 8, '420', NULL),
(30, 'Iluminación y audio', 8, '420', NULL),
(31, 'Postproducción', 9, '420', NULL),
(32, 'Tecnologías multimedia', 4, '420', NULL),
(33, 'Programación web I', 6, '420', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `fullName`, `email`, `user`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'carlos pinkus prueba', 'carlos.pinkusm@uanl.edu.mx', 3, '2025-05-24 01:14:11', '2025-05-27 03:20:19', '2025-05-27 03:20:19'),
(2, 'carlos pinkus prueba2', 'carlos.pinkusm@uanl.edu.mx', 4, '2025-05-24 01:17:40', '2025-05-27 03:20:25', '2025-05-27 03:20:25'),
(3, 'carlos pinkus prueba3', 'carlos.pinkusm@uanl.edu.mx', 5, '2025-05-24 01:18:04', '2025-05-27 03:20:27', '2025-05-27 03:20:27'),
(4, 'carlos pinkus prueba4', 'carlos.pinkusm@uanl.edu.mx', 6, '2025-05-24 01:18:21', '2025-05-27 03:20:29', '2025-05-27 03:20:29'),
(5, 'carlos pinkus prueba5', 'carlos.pinkusm@uanl.edu.mx', 7, '2025-05-24 01:19:09', '2025-05-27 03:20:33', '2025-05-27 03:20:33'),
(6, 'carlos pinkus prueba7', 'carlos.pinkusm@uanl.edu.mx', 8, '2025-05-24 01:28:25', '2025-05-27 03:20:38', '2025-05-27 03:20:38'),
(7, 'carlos pinkus prueba6', 'carlos.pinkusm@uanl.edu.mx', 9, '2025-05-24 01:31:57', '2025-05-27 03:20:35', '2025-05-27 03:20:35'),
(8, 'carlos pinkus prueba a', 'carlos.pinkusm@uanl.edu.mx', 10, '2025-05-24 01:40:47', '2025-05-27 03:20:22', '2025-05-27 03:20:22'),
(9, 'gurt', 'carlos.pinkusm@uanl.edu.mx', 11, '2025-05-27 03:11:49', '2025-05-27 03:20:40', '2025-05-27 03:20:40'),
(10, 'yo gurt', 'carlos.pinkusm@uanl.edu.mx', 12, '2025-05-27 03:12:54', '2025-05-27 03:20:45', '2025-05-27 03:20:45'),
(11, 'Maestro carlos daniel', 'carlos.pinkusm@uanl.edu.mx', 13, '2025-05-27 03:19:27', '2025-05-27 03:20:43', '2025-05-27 03:20:43'),
(12, 'Carlos Daniel Pinkus Martinez', 'carlos.pinkusm@uanl.edu.mx', 14, '2025-05-27 03:23:34', '2025-05-27 03:23:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` enum('admin','staff','expositor','teacher','master') COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `key`, `password`, `rol`, `permanent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 546220, '$2y$10$KvM7XZuq20h0BQL9ZhbIQOpCu.rjSN0D72dMpjeAoFCQuOAe4m0aW', 'admin', 1, '2023-05-31 03:57:23', '2023-07-18 03:39:54', NULL),
(2, 1234567, '$2y$10$KvM7XZuq20h0BQL9ZhbIQOpCu.rjSN0D72dMpjeAoFCQuOAe4m0aW', 'master', 1, '2023-05-30 21:57:23', '2023-07-17 21:39:54', NULL),
(3, 1990169, '$2y$10$ybMo68bQAaN486FUZPTq0.h/kWA9AaGmta6aBKIY.CvoR5qFozvKC', 'teacher', 1, '2025-05-24 01:14:11', '2025-05-27 03:20:19', '2025-05-27 03:20:19'),
(4, 7676386, '$2y$10$Ung3Aqur0eE9wCCt/q9RjO.ffCNb3ov40Brt7iFxHWe0vMwZIsUp2', 'teacher', 1, '2025-05-24 01:17:40', '2025-05-27 03:20:25', '2025-05-27 03:20:25'),
(5, 5919332, '$2y$10$gnxEXDdQX0VF1WfTQfkIdu//Y3Gi4po11xQjwPGKKtCeqTTlZxyHm', 'teacher', 1, '2025-05-24 01:18:04', '2025-05-27 03:20:27', '2025-05-27 03:20:27'),
(6, 6433517, '$2y$10$FTaO/veL1SMooLOsoP1uX.hmuAUWLr7uYBGHX6ThOLEESRqIQUvDW', 'teacher', 1, '2025-05-24 01:18:21', '2025-05-27 03:20:29', '2025-05-27 03:20:29'),
(7, 2158148, '$2y$10$qg6rpCTiLODjzEK6m/lfGuvpdtLgsiNe5Y7SRI2PlnptZ9Mq1JbVq', 'teacher', 1, '2025-05-24 01:19:09', '2025-05-27 03:20:33', '2025-05-27 03:20:33'),
(8, 5747570, '$2y$10$Lh5x3ByDsJcJFSRhFMRcgOR8ibI75n12PnjOnEDE72byqW8mBg./.', 'teacher', 1, '2025-05-24 01:28:25', '2025-05-27 03:20:38', '2025-05-27 03:20:38'),
(9, 7575008, '$2y$10$HYBwJPJ6cIN9EoNMBRTKjOi6bIbKv2ZhJhCciJjekxkygZ1DmoZtW', 'teacher', 1, '2025-05-24 01:31:57', '2025-05-27 03:20:35', '2025-05-27 03:20:35'),
(10, 1746506, '$2y$10$D/dQnzGdYb6gWLlDGHAX0eHzHljmBfIBHZJT6wr1GWkzgiT5xluru', 'teacher', 1, '2025-05-24 01:40:47', '2025-05-27 03:20:22', '2025-05-27 03:20:22'),
(11, 8016659, '$2y$10$Ol9fHG3j00OUThQLDUkA6.UBMcpqQjlgd887T4.4XLxPbs346crQG', 'teacher', 1, '2025-05-27 03:11:49', '2025-05-27 03:20:40', '2025-05-27 03:20:40'),
(12, 3586575, '$2y$10$fkW8AmBKUczn6yeI.pkPS.IdbyNFrYovLBajWTwIftfgxqy496KCi', 'teacher', 1, '2025-05-27 03:12:54', '2025-05-27 03:20:45', '2025-05-27 03:20:45'),
(13, 4307200, '$2y$10$N7A3TcDTF..K777Jkx.Rf.v/DSjIJG71lU2cKydYFiXlz4uw57hSm', 'teacher', 1, '2025-05-27 03:19:27', '2025-05-27 03:20:43', '2025-05-27 03:20:43'),
(14, 8347864, '$2y$10$KvM7XZuq20h0BQL9ZhbIQOpCu.rjSN0D72dMpjeAoFCQuOAe4m0aW', 'teacher', 1, '2025-05-27 03:23:34', '2025-05-27 03:23:34', NULL),
(15, 2001877, '$2y$10$Ae6jtrYlCNUQC5IHNCQR/.EaFtlDUOPxp6K30xhoy7tNnrDtf3ZNC', 'expositor', 0, '2025-05-29 05:51:19', '2025-05-29 05:51:19', NULL),
(16, 2072653, '$2y$10$gc8qZw1cTFq.Mp586QKzv.T3C0TqxnaREvx24.96XNyJ9FHi8Er1O', 'expositor', 0, '2025-05-29 05:51:19', '2025-05-29 05:51:19', NULL),
(17, 1909019, '$2y$10$yK1MecHQgCkofSkTicTSPOSrHXGpdXsMsuft8Ax5VicOyf0q8dyJS', 'expositor', 0, '2025-05-30 03:44:25', '2025-05-30 03:44:25', NULL),
(18, 1909019, '$2y$10$sa8TrA5shWi18y5wX82RyeXiMAlnCad8lkswI7ENjU08VutzI/Q8G', 'expositor', 0, '2025-05-30 03:45:24', '2025-05-30 03:45:24', NULL),
(19, 1909019, '$2y$10$gY3gqTUE2hiXkFQdDiVgAOTohnGXgr9SVxwyhQqZhuT.jaOOyHHJC', 'expositor', 0, '2025-05-30 03:46:12', '2025-05-30 03:46:12', NULL),
(20, 1909019, '$2y$10$O8Jg90z.PVBSkqk4b4xrNOpe29tCMfKqcV0qRiKTANE9g1ceViErC', 'expositor', 0, '2025-05-30 03:47:01', '2025-05-30 03:47:01', NULL),
(21, 1964989, '$2y$10$Ea4FHJDNFHidaZs/PY1DxeH22KIJ5J1OfmRmTzL.f/5pj2OT6ucpy', 'expositor', 0, '2025-05-30 08:19:07', '2025-05-30 08:19:07', NULL),
(22, 2077342, '$2y$10$hR9KIHlFQmg7AF699Yi4k.MFxniLKqSa9AUsNAGfNF/aGnxggdTIC', 'expositor', 0, '2025-05-30 14:47:26', '2025-05-30 14:47:26', NULL),
(23, 2049159, '$2y$10$tN.2pQi60BnP5e/EDdTkfOcjkjDknfzN/50Ufbe7AKsQouV3rgrXi', 'expositor', 0, '2025-05-31 06:44:40', '2025-05-31 06:44:40', NULL),
(24, 1946401, '$2y$10$tH7k7lNfaDvbENHpZlKrOO/fso.bvcALPxlY/qHeYJ9vSUs5hV19i', 'expositor', 0, '2025-05-31 17:13:05', '2025-05-31 17:13:05', NULL),
(25, 2086095, '$2y$10$I6vtS33l0lHDJzmoLZS.o.IJXhZinA.Y4xAYAUZQZg1b4hH8fXbfq', 'expositor', 0, '2025-05-31 17:13:05', '2025-05-31 17:13:05', NULL),
(26, 2086060, '$2y$10$387t/4qxMY3lT5h9hbLMPukUq7WaBcObOlUhP5nNrdUutJCv/pMOy', 'expositor', 0, '2025-06-01 02:18:53', '2025-06-01 02:18:53', NULL),
(27, 2086060, '$2y$10$TuE2enIQeeX103PsflxvrOKxHs1J378Ej4shdgQb051nGkEtvwTJi', 'expositor', 0, '2025-06-01 02:19:48', '2025-06-01 02:19:48', NULL),
(28, 2086060, '$2y$10$xjb3wm4rcjqV/X0bM.aiGuCctDM67hQ71QQOrg7BNJqVpLMLL6KU6', 'expositor', 0, '2025-06-01 02:20:19', '2025-06-01 02:20:19', NULL),
(29, 2086060, '$2y$10$d8Za0OU3PToKc5muNFmiZegzCydtosfINrh3k0ry77zPE1rNpRcXi', 'expositor', 0, '2025-06-01 02:23:36', '2025-06-01 02:23:36', NULL),
(30, 2086060, '$2y$10$Hh77zsSc58a57u2v2iQk5OJEAKeTxqlbgdw08UxEWzfrpXXCOP3fa', 'expositor', 0, '2025-06-01 02:26:37', '2025-06-01 02:26:37', NULL),
(31, 2086060, '$2y$10$QUK6V802TeWbzEKJAX2AyO5KJmasxrtOS.SKNuqz/XkbDaeOG.L26', 'expositor', 0, '2025-06-01 02:29:50', '2025-06-01 02:29:50', NULL),
(32, 2086060, '$2y$10$NaiF/zPqbLVzZRBzuOLGsuzsEVh5xPBAFxgJqcJYYvLSki8tVDoYi', 'expositor', 0, '2025-06-01 02:31:51', '2025-06-01 02:31:51', NULL),
(33, 2086060, '$2y$10$mciT11rC3SDo7zUg8/LKGe3EI/RpUcHFip6K/9S7CeAP3LfzE6Fd2', 'expositor', 0, '2025-06-01 02:41:35', '2025-06-01 02:41:35', NULL),
(34, 2086060, '$2y$10$s.AZjLLQ/tM5/zlAdyc7i.AzoeabkHM.tN.RaoooCMvAl3r/eqm5y', 'expositor', 0, '2025-06-01 04:49:23', '2025-06-01 04:49:23', NULL),
(35, 1962531, '$2y$10$5dFvZOTljiThnQlAgtnzAOfHIooqfLLh2ZaWmQgmWQ1wQuUuRrBUC', 'expositor', 0, '2025-06-01 04:49:23', '2025-06-01 04:49:23', NULL),
(36, 2127289, '$2y$10$LlaySfR0Si6lzFnKqysOCe5nDuPCR/c4slCsfCLSFvYTZv92dFoe.', 'expositor', 0, '2025-06-01 04:49:23', '2025-06-01 04:49:23', NULL),
(37, 2086041, '$2y$10$xC4pjRht05Bf87GvZ0N/p..s7Q1ZgstoPfvqUSt9EoUeuDCpUzyZu', 'expositor', 0, '2025-06-01 04:49:23', '2025-06-01 04:49:23', NULL),
(38, 1865823, '$2y$10$P5j/e2K7cV3vFEi6Run7eOB56MToDIsFpKihFrntCTXPrnkmmKRoy', 'expositor', 0, '2025-06-01 07:53:28', '2025-06-01 07:53:28', NULL),
(39, 1920878, '$2y$10$fZZLvX0Y3BE0TIFDayeExeZ9zERVDX4PrM3aJiPrvgTdmXHFtdf.6', 'expositor', 0, '2025-06-01 07:53:28', '2025-06-01 07:53:28', NULL),
(40, 1688397, '$2y$10$nHZI7ANI5L6El8Yt.MVUquBxBDMkFtbMlMeVnHhKZpirQvSlq3G.C', 'expositor', 0, '2025-06-01 07:53:28', '2025-06-01 07:53:28', NULL),
(41, 1895924, '$2y$10$BKFOWI.F0fGr4HnE5gPRC.hPYYgJBi9ozlPEXPB4lp7S8Nrz3DUDK', 'expositor', 0, '2025-06-01 07:53:28', '2025-06-01 07:53:28', NULL),
(42, 1972202, '$2y$10$kVu7HPTWoma/KjDlwskKDuA9BFD7GFvErVk4/3iSJZGiEFss70SvC', 'expositor', 0, '2025-06-01 07:53:28', '2025-06-01 07:53:28', NULL),
(43, 1986188, '$2y$10$jDtiHNhjeecOXPmTjjh5fO9No/.nay9MI5o3hQFj2jrzKt/bCaXgu', 'expositor', 0, '2025-06-01 07:53:28', '2025-06-01 07:53:28', NULL),
(44, 1986188, '$2y$10$s8UtVFhwFvhkOSftd0VQreCh4643Uk5caWkvsE59GKd7L35wcOHFO', 'expositor', 0, '2025-06-01 09:21:12', '2025-06-01 09:21:12', NULL),
(45, 1904959, '$2y$10$EHnVs7tt4n/JzvqEmOH2pebvVa.8LyT0MzH0eDcbsMGJ2YPTubdU2', 'expositor', 0, '2025-06-01 09:21:12', '2025-06-01 09:21:12', NULL),
(46, 1928013, '$2y$10$0rvva4veBhMCHm4kishayel0B1KxAUlRJ.rOJ9P4I5ma24Z9QGZWq', 'expositor', 0, '2025-06-01 09:21:12', '2025-06-01 09:21:12', NULL),
(47, 2048720, '$2y$10$BuYhN8H0oEmHnY2CSwUXq.3L2puEMKv8nBxkNyM87NXnBAFZJZRqi', 'expositor', 0, '2025-06-01 12:08:15', '2025-06-01 12:08:15', NULL),
(48, 2048720, '$2y$10$loAovdok4EKKTqbq.W.dZu3xlp4bNzSDHvxOH5onlULhaizKtWyou', 'expositor', 0, '2025-06-01 12:12:53', '2025-06-01 12:12:53', NULL),
(49, 2127289, '$2y$10$OK9uvvWZOF3nWM6kAB4xRukT8JPfnHLEOn1Lf8kXsbHAruKtkF73i', 'expositor', 0, '2025-06-01 12:32:08', '2025-06-01 12:32:08', NULL),
(50, 2127289, '$2y$10$mOOREoC2ijsojxsu84PyZuk6dDoO0Ngn7heb1Z4Re4htDyUDs9pdy', 'expositor', 0, '2025-06-01 12:33:53', '2025-06-01 12:33:53', NULL),
(51, 1962531, '$2y$10$l06F.BeQ0xn36yRF/QXlcOaDjRNNILP5TRkTL4vgOt7c8SlgWs9TW', 'expositor', 0, '2025-06-02 00:44:25', '2025-06-02 00:44:25', NULL),
(52, 2086278, '$2y$10$nEOmeH/L.pFjvcNqJnf/xO08p9yvF1gisBOzTof4aEq2Ga23y870G', 'expositor', 0, '2025-06-02 00:44:25', '2025-06-02 00:44:25', NULL),
(53, 2127289, '$2y$10$Qc60AWr9wBK7nezxqBbHeOKylukqkTiIV6ZdPWCPs6qvsuVq/o.We', 'expositor', 0, '2025-06-02 00:44:26', '2025-06-02 00:44:26', NULL),
(54, 2077342, '$2y$10$9kCzxRctrssWynkC1q8Rt.aat6q2/PASS3ioKeAb8enM3a.v2PdQi', 'expositor', 0, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(55, 2086070, '$2y$10$3zMm3/XfcK.teyUdrZOEJ.cHCgu4G5n3N9aWyCvunxwmpveSG94va', 'expositor', 0, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(56, 1994104, '$2y$10$VXk60noQ/qxHXu8b/wTI1OaqoDYJpVrajP/Bxt5cxpk.Zg9tvsfdO', 'expositor', 0, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(57, 2008229, '$2y$10$XBdRMY0Iey/sWhwZtJPeI.p0bDnW5BWJJDJgDkNTxXRBaqWnW1yIK', 'expositor', 0, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(58, 2003723, '$2y$10$sCSdTdyZoAkiUGE0jD2TLu3zj6r4ogK6KLJ0jvthoa3soEs7jQZQa', 'expositor', 0, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(59, 1998739, '$2y$10$abxioSbjNaH5RlIyj6u39efkoMpXK.RFLUA96T2zIVODAZz9h6UfW', 'expositor', 0, '2025-06-02 03:09:26', '2025-06-02 03:09:26', NULL),
(60, 2050328, '$2y$10$aDnI2IEmB4LNC9eAuF6tF.4iKruZy9oHL2kmaRRtNATuI0c9oVrZi', 'expositor', 0, '2025-06-02 03:16:28', '2025-06-02 03:16:28', NULL),
(61, 2072653, '$2y$10$3.6UU3AsYCT1SxQ4z7ujA.2AQKsC.5rkyZ08.NqVKayZnmuFE2oFC', 'expositor', 0, '2025-06-02 03:16:28', '2025-06-02 03:16:28', NULL),
(62, 2050205, '$2y$10$KNYd1qWq4rREcG8VKLhoCucuQeCs8UqfrHMAQpA0T0XB7HAiQ/QkK', 'expositor', 0, '2025-06-02 03:16:28', '2025-06-02 03:16:28', NULL),
(63, 2001877, '$2y$10$sReos9pXq8CjbgRrGw9IDOQ0CAWX4CVgpO9JmpQBSwjLUAPZXpAwW', 'expositor', 0, '2025-06-02 03:16:28', '2025-06-02 03:16:28', NULL),
(64, 2050328, '$2y$10$/ECkT5exKRuUvg3R/t8imuEKeGYHq55hBfvIKEiqwE.qLNRsLzJfG', 'expositor', 0, '2025-06-02 03:16:56', '2025-06-02 03:16:56', NULL),
(65, 2072653, '$2y$10$Cv2aGvl8MwTWzxEc.Xe4l.7viafURyMvGOwZ8Nvvc07HbgYWjslri', 'expositor', 0, '2025-06-02 03:16:56', '2025-06-02 03:16:56', NULL),
(66, 2050205, '$2y$10$64ZM3P3Mn07TP.VWwnPfq.4JQk1iXZ8nF8.dYLQbveG60/ZuSULJO', 'expositor', 0, '2025-06-02 03:16:56', '2025-06-02 03:16:56', NULL),
(67, 2001877, '$2y$10$I3G2MaAU9ZwBL4Wj6hLcKO/7W2uvlGk/GK43xHMa6muPLfDcscE9K', 'expositor', 0, '2025-06-02 03:16:56', '2025-06-02 03:16:56', NULL),
(68, 1895122, '$2y$10$oTedTSPFpstruPs3p9eysu4UG.QpC70gLjJJThWjm6eiyoGeOTXqi', 'expositor', 0, '2025-06-02 04:13:47', '2025-06-02 04:13:47', NULL),
(69, 2128704, '$2y$10$enez1DtcKqeikNxgcn22Fu0k70uNNt.78zfDBe2TyVHTKd9Py4Z5C', 'expositor', 0, '2025-06-02 04:13:47', '2025-06-02 04:13:47', NULL),
(70, 1953499, '$2y$10$qMq5mUSlIo3FyBvnCFigOOAtuFrUZ6GF1A8yF5Sd7vXA5fWdRC3tu', 'expositor', 0, '2025-06-02 04:13:47', '2025-06-02 04:13:47', NULL),
(71, 1814685, '$2y$10$4O1Dx2Bs6LVJV/XDpfQia.ZtIaD3IxZo1JfWKHkVjZ4Qbl4L6SQjy', 'expositor', 0, '2025-06-02 04:13:47', '2025-06-02 04:13:47', NULL),
(72, 1904022, '$2y$10$u6Q.UL9hGpd9eXzfxi78Y.s0F4BDbZ1BeV7wO7mDARb4Tyq3LPM9.', 'expositor', 0, '2025-06-02 05:50:19', '2025-06-02 05:50:19', NULL),
(73, 1845639, '$2y$10$yoFaNARPH8nWbb2ofAaYVOv3tvS5RlhRn6lF1U4hc/06HP9FVMLmC', 'expositor', 0, '2025-06-02 05:50:19', '2025-06-02 05:50:19', NULL),
(74, 2086142, '$2y$10$W4vQPkS4zBwckdfb7cF4F.GPy8ic/KRTrfFJTbBWRjOQenPZ63wi6', 'expositor', 0, '2025-06-02 05:50:19', '2025-06-02 05:50:19', NULL),
(75, 1688397, '$2y$10$ucquD8.JCyS8QvrlhYA65uQygLNeaKf5gkOCetf8UiqUzSINa1YWK', 'expositor', 0, '2025-06-02 06:04:44', '2025-06-02 06:04:44', NULL),
(76, 1865823, '$2y$10$nAw1.JiJRN6dYq2Gxb6ksOVP5lEpF.fMO7RFRKc5Hg2mDYwFTmdsm', 'expositor', 0, '2025-06-02 06:04:44', '2025-06-02 06:04:44', NULL),
(77, 1895924, '$2y$10$04FEAfRxV7bKs9e52bPq1.ZwxsvdrH7QL9hR5QzSljCr/LugqFrXG', 'expositor', 0, '2025-06-02 06:04:44', '2025-06-02 06:04:44', NULL),
(78, 1972202, '$2y$10$xTeGnzUf6fx0DbGIEh9b4eINWbadsOuod4qLV..VKBQ.pmRRenaye', 'expositor', 0, '2025-06-02 06:04:44', '2025-06-02 06:04:44', NULL),
(79, 1907668, '$2y$10$U/NRZ4yJwAmnYTaI1JAEouesH8vgoxQ8ZLA2eYn60GdntphyYhLLK', 'expositor', 0, '2025-06-02 06:04:45', '2025-06-02 06:04:45', NULL),
(80, 1855789, '$2y$10$sQLOtdY3JbI4aNr1o9UD7eNDW1IiUFSOA3pQooeQ5WuorFo62AZQ2', 'expositor', 0, '2025-06-02 06:04:45', '2025-06-02 06:04:45', NULL),
(81, 1954794, '$2y$10$PPYNyBgsKB30Mf.KUMtmGOeY/XuROsDw32cTiWj58Mo3ebkEGO7t.', 'expositor', 0, '2025-06-02 09:42:18', '2025-06-02 09:42:18', NULL),
(82, 1972507, '$2y$10$aIROKDC1lfrA3Uu.ZaGNI.Icwyh6v1MeFUeAGY6VIStDpTnCTcEp6', 'expositor', 0, '2025-06-02 10:14:49', '2025-06-02 10:14:49', NULL),
(83, 1961794, '$2y$10$VpEeMWHt.ZIPfO/MAVrV0.Dcut33VAMYi2kHTMiU/JMed2hgD9N6O', 'expositor', 0, '2025-06-02 10:14:49', '2025-06-02 10:14:49', NULL),
(84, 1972507, '$2y$10$dfLPxUFsSadr11Sd59xHS.R1sZBgkLrPKyIwNR/uaAaSw8YSLNd7u', 'expositor', 0, '2025-06-02 10:17:58', '2025-06-02 10:17:58', NULL),
(85, 1961794, '$2y$10$DZnaTi4YmmO2R2IhjGeLbeoFPt4s.5u0oczm3DXlY0NySSDjiLaeu', 'expositor', 0, '2025-06-02 10:17:58', '2025-06-02 10:17:58', NULL),
(86, 2050328, '$2y$10$HIugPTc/pa8ULXaHDFGdMOEXNFpHKBYbJxMqMEaftfUY3w7c3E/PW', 'expositor', 0, '2025-06-03 02:08:33', '2025-06-03 02:08:33', NULL),
(87, 2050205, '$2y$10$x.l68NSZbSemN5awWzRzkOOpLbX/5uNfLu3FjbD998EoKkTu288fi', 'expositor', 0, '2025-06-03 02:08:33', '2025-06-03 02:08:33', NULL),
(88, 2076454, '$2y$10$p1A6MC6IeCC3wEK98eD/k.IZztHxEyPCdk5x2Z.5O5.znd6VshUCe', 'expositor', 0, '2025-06-03 08:58:45', '2025-06-03 08:58:45', NULL),
(89, 2177543, '$2y$10$p9UXlTWEU44dHf2iqywb5OXvARwwBpy1xuvncPx1ADidmQAwn179.', 'expositor', 0, '2025-06-03 09:20:05', '2025-06-03 09:20:05', NULL),
(90, 2115176, '$2y$10$qp96RauRIA435KmHyCXHS.uUR7nkG62dhILXgBxEmXVw/EA429/8C', 'expositor', 0, '2025-06-03 09:25:22', '2025-06-03 09:25:22', NULL),
(91, 2067624, '$2y$10$9pLi7NC5S3Oe/wC4N3I26uvCVMJGSPmpgEfjsj8qEq/VVvT4S7mhC', 'expositor', 0, '2025-06-03 09:25:22', '2025-06-03 09:25:22', NULL),
(92, 1998739, '$2y$10$UAaiAMJnjHwv6VXfJBXkgeSyS9RnF.rXFVj7Ufoky7DRJ.YdhoO7K', 'expositor', 0, '2025-06-03 09:30:42', '2025-06-03 09:30:42', NULL),
(93, 1994006, '$2y$10$EP99tPCa3nxANPTFOG1tROvo9hQTpFoy/c8dOUx8skLuUc6j6SPru', 'expositor', 0, '2025-06-03 10:26:14', '2025-06-03 10:26:14', NULL),
(94, 1996239, '$2y$10$XUDfxzPgl2XTFL.DxoNepeDtiPOvMyu4kAqAi1X.mTXOnB9ptRnWC', 'expositor', 0, '2025-06-03 11:06:45', '2025-06-03 11:06:45', NULL),
(95, 2050506, '$2y$10$JGxICYUdJNmO8IXqCS9gvuCbV7Socb2xG0Wsq9SikVMfnk3rGMEmy', 'expositor', 0, '2025-06-03 11:11:06', '2025-06-03 11:11:06', NULL),
(96, 1997554, '$2y$10$sCgJD9CjJCE3HvZsR/fco.YW2Uf0BJaPdbWMs3cwZhvhIi81RVJL6', 'expositor', 0, '2025-06-03 11:11:06', '2025-06-03 11:11:06', NULL),
(97, 1954794, '$2y$10$p9l9Z2Fyfd0JY95a8dtZFe4zHIBXajBk6RS2He49vQImKKI5ApRMm', 'expositor', 0, '2025-06-03 11:11:06', '2025-06-03 11:11:06', NULL),
(98, 2048846, '$2y$10$ys5ARzA9ln.ddloGG/EyVOKYJjgJKEHEXRyYdEF4eN14w..fZTGz2', 'expositor', 0, '2025-06-03 11:11:06', '2025-06-03 11:11:06', NULL),
(99, 1945422, '$2y$10$eqGJoZhSJlncbnHWMbl2FuAjqM33B.hwO4sijoFcY/om6Xzo6rTFq', 'expositor', 0, '2025-06-03 11:11:35', '2025-06-03 11:11:35', NULL),
(100, 1996327, '$2y$10$hLJSSE1azbBQrci/VAylZujKF1I3nBxFIA314sWXuJcA0ut2pv3J2', 'expositor', 0, '2025-06-03 11:34:59', '2025-06-03 11:34:59', NULL),
(101, 2086234, '$2y$10$p/tAGyMbcZ/JekSpB7IfV.B6cjvuDpLXmM3qAnKqCSmEu4OYvvU.6', 'expositor', 0, '2025-06-03 11:35:00', '2025-06-03 11:35:00', NULL),
(102, 2104791, '$2y$10$F/S11yS7ve/w992In5na7OD4OiwQFLSe3fKGYp14s27wFvtAREh8C', 'expositor', 0, '2025-06-03 12:18:10', '2025-06-03 12:18:10', NULL),
(103, 1909650, '$2y$10$J26n09hiHZYrVF5UAOQp3uWD0is0Y05NL8jYBva1437prGzCMJOn2', 'expositor', 0, '2025-06-03 12:26:06', '2025-06-03 12:26:06', NULL),
(104, 1939699, '$2y$10$qvgmiA.s.H6M9ohQlUk2g.4PYk0q/91hbLWMFs42mcRzFWH/JmE4i', 'expositor', 0, '2025-06-03 12:26:06', '2025-06-03 12:26:06', NULL),
(105, 1903753, '$2y$10$B4zCulkyV8Sf6BmPfgnDcOpQ9AzpvNcq57QR2WhTaifbf7ngpVhi.', 'expositor', 0, '2025-06-03 12:26:06', '2025-06-03 12:26:06', NULL),
(106, 1814955, '$2y$10$piYM9P2qqxvvbLiQsrFSiuTZS9sCpT8yCJG3cVanXxoVj5Daw9ngy', 'expositor', 0, '2025-06-03 12:26:06', '2025-06-03 12:26:06', NULL),
(107, 1878198, '$2y$10$s4QAu7VIZLFwfogwSP9KcuOZg2IhyW0J0s4LzXDZsttk2tNHU0BYu', 'expositor', 0, '2025-06-03 12:26:06', '2025-06-03 12:26:06', NULL),
(108, 1998926, '$2y$10$97d3Z2suTU5HLgGQXCY12u452I2I/RrK.bwuRpdIddIsdMesgVsgK', 'expositor', 0, '2025-06-03 13:16:54', '2025-06-03 13:16:54', NULL),
(109, 1923061, '$2y$10$g6OzXbGT2.8rTv7SyzJ4euDjkzEFPfASoPinhNyZdHKHOyI8bsRhm', 'expositor', 0, '2025-06-03 15:19:02', '2025-06-03 15:19:02', NULL),
(110, 2026779, '$2y$10$fdBY2qpILGmCRMniL8S6V.lJDh8A.CxhKWGRzSsOry5YgYlSWteKS', 'expositor', 0, '2025-06-03 15:19:02', '2025-06-03 15:19:02', NULL),
(111, 1968562, '$2y$10$CdK7JaY4aSRcWyEJjrl4qOwdYtPFJiBTLDY7Aov/2cDxl0KtPyIgO', 'expositor', 0, '2025-06-03 15:19:02', '2025-06-03 15:19:02', NULL),
(112, 1994104, '$2y$10$65QqG2qs6u/BMbCU4eQj6.lnIz83j9p7JZMTKF4KO2cCoYKYvNGfm', 'expositor', 0, '2025-06-03 23:09:27', '2025-06-03 23:09:27', NULL),
(113, 2086070, '$2y$10$UNV73waGsLk1YZh3YiMNTuiodbsElBCe.zSu/Xp/Bm.2qYVVitVxq', 'expositor', 0, '2025-06-03 23:09:27', '2025-06-03 23:09:27', NULL),
(114, 2077342, '$2y$10$CqjTo6loiaDZhOz7FMS25em9yjHM3GTqqC2Yl.7J4Cj09kF8PqdSu', 'expositor', 0, '2025-06-03 23:09:27', '2025-06-03 23:09:27', NULL),
(115, 2031917, '$2y$10$5STwqXUrzBGy.d1KZbfmwe89kluRGpYeD0JFPly/R0kXG1QmRh.DC', 'expositor', 0, '2025-06-04 02:36:39', '2025-06-04 02:36:39', NULL),
(116, 2003074, '$2y$10$7WhNTXmZLbJKpwGuGNTfnejbgRSsSM4iBxrhoRE4YcXWSvocbEcwO', 'expositor', 0, '2025-06-04 03:24:23', '2025-06-04 03:24:23', NULL),
(117, 2177548, '$2y$10$htS.HlA.K1u/GZbmMxomfOX2jOfGq3IXLPKotyfBJWp.O/T9rPhX2', 'expositor', 0, '2025-06-04 05:18:33', '2025-06-04 05:18:33', NULL),
(118, 2177548, '$2y$10$Tl2G7ae0pKKA6ZjjEQIFgeC6mkCOJNZcGR5BzxacFAkTkXlomTpa.', 'expositor', 0, '2025-06-04 07:05:57', '2025-06-04 07:05:57', NULL),
(119, 2086223, '$2y$10$He4j0LEFE0y4CUuWIsdvmubkIo2wQg18pugX4i8NoyqOHqHE5vrVm', 'expositor', 0, '2025-06-04 08:12:16', '2025-06-04 08:12:16', NULL),
(120, 1952154, '$2y$10$hKRXruvgoIGtAEFh4xK4EeSmlGafsW3S7eLwApnASXhiBaWmMRkiu', 'expositor', 0, '2025-06-04 08:12:16', '2025-06-04 08:12:16', NULL),
(121, 2077342, '$2y$10$74z6JcHj2nBe138cZcpFcuG6TxFvMIPNX1HM7cvQw14xCfIo.pjOu', 'expositor', 0, '2025-06-04 08:12:16', '2025-06-04 08:12:16', NULL),
(122, 2038118, '$2y$10$iKYeAH1K4YzPpvBGOr5j..PaKDXGslF.RYGQmhzvs1tbeNmp1t.0u', 'expositor', 0, '2025-06-04 11:39:23', '2025-06-04 11:39:23', NULL),
(123, 1923061, '$2y$10$ogAEWDH2CNxPRnC4xWEacuB5osPlBLuZfy2w3XuXX8gtZVuiHoVkK', 'expositor', 0, '2025-06-04 14:27:39', '2025-06-04 14:27:39', NULL),
(124, 1968562, '$2y$10$VuuTUUiRp3YrKtGXamnjq.thZOloNOqUnHwbj9u.mb2Jl.GbyF8pi', 'expositor', 0, '2025-06-04 14:27:40', '2025-06-04 14:27:40', NULL),
(125, 2002086, '$2y$10$L.vNKjfw2MsE7Cmr2uFUQeXxSmxSELEF8Vf3ir0ELN01XjI6v8DN6', 'expositor', 0, '2025-06-04 14:27:40', '2025-06-04 14:27:40', NULL),
(126, 2058917, '$2y$10$nOHXZjNMPeccyNZ0bJLpVetmyUQSuJN.ehvyCOOtIySrrBbSkDfCi', 'expositor', 0, '2025-06-04 19:28:32', '2025-06-04 19:28:32', NULL),
(127, 2076253, '$2y$10$EdElUFYNPd7Vi8hi/ZfdteNZ.MQjtHidf/xpmwCLskTaKIFz.mCLe', 'expositor', 0, '2025-06-04 20:41:44', '2025-06-04 20:41:44', NULL),
(128, 1912459, '$2y$10$mxlyXb4KjjhQMUcySAEtZexi39hInFXABo/e6sMEQIbI27BvLBFCS', 'expositor', 0, '2025-06-04 20:41:44', '2025-06-04 20:41:44', NULL),
(129, 1950524, '$2y$10$ODWJ4tLlEm0oizw1m9efDOSI.Vqd2KoA2K9jJRY0zGSdJDYtWUhGG', 'expositor', 0, '2025-06-04 20:41:45', '2025-06-04 20:41:45', NULL),
(130, 1960426, '$2y$10$GzNeW4kfCA6nMedbGyhoUu7iITl3Lrar8/5l6qC4vV6mce632Oo/.', 'expositor', 0, '2025-06-04 20:41:45', '2025-06-04 20:41:45', NULL),
(131, 1922270, '$2y$10$59dCB6NaCzuEw4/kCfb2yeck6lLlTMcKVEiYGdcF3rmqJaU1kU9he', 'expositor', 0, '2025-06-04 20:41:45', '2025-06-04 20:41:45', NULL),
(132, 2177548, '$2y$10$chO20x4oPE6272ZD1lm6ZO610uAPfEWP5xa22ibmGMcWH05rMgPf2', 'expositor', 0, '2025-06-05 00:06:41', '2025-06-05 00:06:41', NULL),
(133, 2006498, '$2y$10$EAuqklwombkN/8Ayp2e3SO3dlorFpBm9dKPxz10odX6oazlLldIMq', 'expositor', 0, '2025-06-05 00:31:59', '2025-06-05 00:31:59', NULL),
(134, 2044966, '$2y$10$mtz8ZgW03dfoUD8mjEcxm.8rW34OOAHMs8d1CF5y.6NkVNB8ou78G', 'expositor', 0, '2025-06-05 00:59:30', '2025-06-05 00:59:30', NULL),
(135, 2052355, '$2y$10$cI3suW1rPoF9kiUj2BzpEeXYvAgrroElCNR10x7NE3fvPv0QcySZu', 'expositor', 0, '2025-06-05 00:59:30', '2025-06-05 00:59:30', NULL),
(136, 1910702, '$2y$10$PV5t1xHrslqO8lEDbfeR0.qSzmZ7HCM2eQWbjp2nDo6VFm8qX1YVm', 'expositor', 0, '2025-06-05 00:59:30', '2025-06-05 00:59:30', NULL),
(137, 1686343, '$2y$10$UtaJ4HovwV2nIqe8li9bMuZFzzZ5uqV6.00SSUyUdPGaWMhB/5aOy', 'expositor', 0, '2025-06-05 00:59:30', '2025-06-05 00:59:30', NULL),
(138, 2177644, '$2y$10$SGgDetNr1TAnEzQmwQl.keP1Ftm0Cmdh0XyVzWDxYYHMLIqnho3h.', 'expositor', 0, '2025-06-05 05:36:22', '2025-06-05 05:36:22', NULL),
(139, 1852341, '$2y$10$9XZokHOf.rjEhaPQOrQCLeoURIxHqJVNWIJRpf2HbJeR/yltiC6Ie', 'expositor', 0, '2025-06-05 05:46:35', '2025-06-05 05:46:35', NULL),
(140, 2063686, '$2y$10$TyJqWvM9Xd5h5dklfwmDDO.4CT40tr699jRYrjeciwPm5lPkmm6qa', 'expositor', 0, '2025-06-05 05:52:56', '2025-06-05 05:52:56', NULL),
(141, 1986217, '$2y$10$jPVUSRRgBgi6ZD6ci2tmQOLTiwJNwdEFAiTzeuqMDeOPncQs/T9RO', 'expositor', 0, '2025-06-05 06:25:52', '2025-06-05 06:25:52', NULL),
(142, 1923061, '$2y$10$QJtjyE2MqEXiPKQWMgZaBO6RVjfjh4l0fyca.CSov.aRhUS2dUQV.', 'expositor', 0, '2025-06-05 06:53:28', '2025-06-05 06:53:28', NULL),
(143, 2105496, '$2y$10$pgjIiK9KsA115fluVPNNc.gDgruJ9bHJ2kJiWO0r0JvOLm210SeYG', 'expositor', 0, '2025-06-05 08:02:09', '2025-06-05 08:02:09', NULL),
(144, 2001215, '$2y$10$MDq/DHxUAdKdtzO5D5YWH.FRrucJuQxjj2PhIpMrrmprfjfR3JYg.', 'expositor', 0, '2025-06-05 08:24:44', '2025-06-05 08:24:44', NULL),
(145, 2086045, '$2y$10$92/4OTJpTHdgf1BqcUQree3kcbu5rx//54Eu.yerqij7xEiLgDUfe', 'expositor', 0, '2025-06-05 08:24:44', '2025-06-05 08:24:44', NULL),
(146, 1941498, '$2y$10$RnEu4eLcbS.LmHy2ldITaOx4rXXzEM.0YcPxJB.DBJuehhGwLeIM2', 'expositor', 0, '2025-06-05 08:24:44', '2025-06-05 08:24:44', NULL),
(147, 1736859, '$2y$10$XGa3OZ4JGh.49soQzPAd9OfYGXduXi440Sp1uKG2.t3EQesuY2YDy', 'expositor', 0, '2025-06-05 08:24:44', '2025-06-05 08:24:44', NULL),
(148, 1843574, '$2y$10$RStCxiXeaq647iNqMkTi8ezP5sFeWeL77r7kAXfA3wpnGBFk94w2q', 'expositor', 0, '2025-06-05 08:24:44', '2025-06-05 08:24:44', NULL),
(149, 2086085, '$2y$10$8ytMyJkf1jHSiXXR9tvokOeeuc0lNTwYEEUjnU6cmNT6dWSbCF8Wq', 'expositor', 0, '2025-06-05 08:24:44', '2025-06-05 08:24:44', NULL),
(150, 1895640, '$2y$10$LyBBaIgB0pMeSKbeN7drNOqvYHefOSLCu5gNXM6QcyvPxqfkdx57S', 'expositor', 0, '2025-06-05 10:02:50', '2025-06-05 10:02:50', NULL),
(151, 2076454, '$2y$10$tXJ8NjBh/Y29hhNzuvyUsuy7GLDhN8d6GNqmDPo6O2TOCpo26hrle', 'expositor', 0, '2025-06-05 11:17:22', '2025-06-05 11:17:22', NULL),
(152, 2043891, '$2y$10$0dCjBHLEb4UyJOKzu2F70OVdltOCfK3Zh0zvYu61TFjXT5nO0DGU.', 'expositor', 0, '2025-06-05 16:07:10', '2025-06-05 16:07:10', NULL),
(153, 2043891, '$2y$10$o/Vl4nqIdpoEgS4vT3NiSeuqVrl1saQClrAkdUkXFtpdoHcKB9LuS', 'expositor', 0, '2025-06-05 16:09:23', '2025-06-05 16:09:23', NULL),
(154, 2001325, '$2y$10$eOf9HR8vmrC7az7UCnYmIOSnZxZPuhvzBWD5.US6daa8Na4ljKaaq', 'expositor', 0, '2025-06-05 16:42:00', '2025-06-05 16:42:00', NULL),
(155, 2001325, '$2y$10$fTNNj4nUa5gcV.jFonTQ4ODOEfngEeLrJjgb9n0sjKKAnWDWQvHrS', 'expositor', 0, '2025-06-05 16:44:09', '2025-06-05 16:44:09', NULL),
(156, 2001325, '$2y$10$8CgC.S.u6PwggO8c4nmfxe7JhaLckqpy31gLTWSSX0z08Fxl/Pm8q', 'expositor', 0, '2025-06-05 16:44:56', '2025-06-05 16:44:56', NULL),
(157, 2001325, '$2y$10$SvZXn8KOUXA.9UmsxWTR8u54p4zVejnGAwPNFizvLTFH9iww7DiuW', 'expositor', 0, '2025-06-05 16:45:37', '2025-06-05 16:45:37', NULL),
(158, 2001325, '$2y$10$s9Kak3fizPCKfyp41AI/TeJlLt5eeyvhdg4ExCxfq.4JpEM6pRcyq', 'expositor', 0, '2025-06-05 23:24:46', '2025-06-05 23:24:46', NULL),
(159, 2047764, '$2y$10$A9wv4YFKdTYblas5/hx1zuAOutboJ8dpx3a6OuHcqczxCw3mKGZj6', 'expositor', 0, '2025-06-06 00:59:05', '2025-06-06 00:59:05', NULL),
(160, 2177644, '$2y$10$HeSZU.dk9L9CIrpwjKUKQOPLQbRIWJ9bizhsHx91JK7GrXibEWqcW', 'expositor', 0, '2025-06-06 01:22:52', '2025-06-06 01:22:52', NULL),
(161, 2002681, '$2y$10$2X1eY5R8i3pzEuSqVyWQ9u4tzOanmbW6Gy1CxfNqj/GdQoGrctRka', 'expositor', 0, '2025-06-06 01:51:19', '2025-06-06 01:51:19', NULL),
(162, 1800003, '$2y$10$gQm9qqxWioFjcW7q33apAOoCguvVXNWgGYqsWbqpmYVn8oD0gPtF.', 'expositor', 0, '2025-06-06 02:01:49', '2025-06-06 02:01:49', NULL),
(163, 1968956, '$2y$10$lrBSwJ.rZHgu.lriByknZ.FIIhOmtOF4DWuer.pPp3br5KTbxC8aO', 'expositor', 0, '2025-06-06 02:03:27', '2025-06-06 02:03:27', NULL),
(164, 1967789, '$2y$10$GhVzAYsik/gUWGs45kOeQ.CMjETKy0gFtlpivykCBkmKj5gHPbRAa', 'expositor', 0, '2025-06-06 02:15:58', '2025-06-06 02:15:58', NULL),
(165, 2003074, '$2y$10$fyQLEGdYwSHeaZpwivdLsuHEBVgIJ/dm23rsl1eOfn/QmOPL/Z6y.', 'expositor', 0, '2025-06-06 02:15:58', '2025-06-06 02:15:58', NULL),
(166, 2003266, '$2y$10$f3j42ihsaOq/yxTBQbWHWeYJxtHzBYIXkFv22C/yQDj8n/5NmW9dS', 'expositor', 0, '2025-06-06 02:15:58', '2025-06-06 02:15:58', NULL),
(167, 1971613, '$2y$10$nRuloJlXhL6Ho8ShFwPIZuCvfdy88A2O9R8MR2nWWAKTf6MxxegTi', 'expositor', 0, '2025-06-06 02:15:58', '2025-06-06 02:15:58', NULL),
(168, 2002681, '$2y$10$syAzNJYjnfoUPtdSjq2mO.XOFoT.4th0A3tFCD.ntwSb3o8ybbUwm', 'expositor', 0, '2025-06-06 03:06:00', '2025-06-06 03:06:00', NULL),
(169, 2048720, '$2y$10$GrBKwqtqQsET0LWeJRctE.2Ttah.JsrU7oK.jvahsDVEabw8ZzjDq', 'expositor', 0, '2025-06-06 03:34:18', '2025-06-06 03:34:18', NULL),
(170, 2048846, '$2y$10$kIyyIdZwMdVDYhsUz4NAwO6OumWQo3DTeUapMILccuLgjL965yts2', 'expositor', 0, '2025-06-06 03:34:19', '2025-06-06 03:34:19', NULL),
(171, 1953499, '$2y$10$MS7fIh/74gU7EjnZfSsA3O.5O/uEviVkH.Ch2qKXJEDCMd/cCHCwS', 'expositor', 0, '2025-06-06 03:34:19', '2025-06-06 03:34:19', NULL),
(172, 2086207, '$2y$10$WsD48XiUqSuWxeG.3ISROuJg6cwDb/Xw8nRXGU6RCjfBZUGi8797S', 'expositor', 0, '2025-06-06 03:34:19', '2025-06-06 03:34:19', NULL),
(173, 2020197, '$2y$10$l8VzeJIXyVHlNwXUVhO0B.vlRelSvwbVh.vanUkLwqLZR9zdSL59W', 'expositor', 0, '2025-06-06 04:21:52', '2025-06-06 04:21:52', NULL),
(174, 2062721, '$2y$10$cWtOfusfHR61HFsXs1XT..g6XtlW6hXpkyW9OOPDRXMzg1d0Ut/ou', 'expositor', 0, '2025-06-06 04:21:52', '2025-06-06 04:21:52', NULL),
(175, 1961244, '$2y$10$rgT4g.lF3HxGviXUXWcf8u5x9/8SZwUrENZrRIPuuhdPt5OPa3AHa', 'expositor', 0, '2025-06-06 04:21:52', '2025-06-06 04:21:52', NULL),
(176, 2017042, '$2y$10$2ctI7v1cjc./E0kgXu8pMOADv0rvXhraqrgKWyF6/ITLqIhgz5ZhG', 'expositor', 0, '2025-06-06 05:06:41', '2025-06-06 05:06:41', NULL),
(177, 1900171, '$2y$10$aJGP03BguuPYPOyqQS46beoBjYpbP2VDyw7G8PEVQyfE.df2ONvEy', 'expositor', 0, '2025-06-06 05:47:10', '2025-06-06 05:47:10', NULL),
(178, 2077342, '$2y$10$VfKTSYSQcZ9E.t6RuRkCUO8H1LkCkNg.HcZ7if.gsBOvKbKyhfX/G', 'expositor', 0, '2025-06-06 06:03:35', '2025-06-06 06:03:35', NULL),
(179, 1944697, '$2y$10$Kf4xWOnfIZlImAm1uVrjwO1L/8Pts3CEcJwX3wwo8rrkLnn9AshBG', 'expositor', 0, '2025-06-06 06:03:35', '2025-06-06 06:03:35', NULL),
(180, 1910634, '$2y$10$vrgfV9.2mSHKJIwNnyo40eQutFu5eWAO8iui8O.By4ZFFppDuZVCC', 'expositor', 0, '2025-06-06 06:03:35', '2025-06-06 06:03:35', NULL),
(181, 2086070, '$2y$10$/TZdlNAzzMPXtfWdG9Ikf.cvSnjsKSbzWrCYYXOrWzraOyUNO22MG', 'expositor', 0, '2025-06-06 06:03:35', '2025-06-06 06:03:35', NULL),
(182, 1994727, '$2y$10$XegeOUr2PfxX0K29LKE4yeNzlqQ1JqTX.geQ6dFIhAdmpQSYbQxR2', 'expositor', 0, '2025-06-06 06:03:35', '2025-06-06 06:03:35', NULL),
(183, 1994104, '$2y$10$KLlU6H.6KYanBx/EK5EiaOwsUWbkiCBC.bK8hr.wTRqFkSTTEAw8q', 'expositor', 0, '2025-06-06 06:03:35', '2025-06-06 06:03:35', NULL),
(184, 1961238, '$2y$10$ob4Cq7XfoatQtH2a2ERO2eoEXVI8Zl/SacWGwclBgVEtmaewATEuK', 'expositor', 0, '2025-06-06 06:22:36', '2025-06-06 06:22:36', NULL),
(185, 2048720, '$2y$10$5GmwWZKIkaSFH6hLJRDqS.GUd3NeFAo1yqCVWYFAijxcWI1Cc9Z0e', 'expositor', 0, '2025-06-06 06:22:36', '2025-06-06 06:22:36', NULL),
(186, 2132903, '$2y$10$bEF6g3rBGORsckXt2V97IuTUdDEGAaL1mNXkHJTn2pitB8w2uZO8a', 'expositor', 0, '2025-06-06 06:36:50', '2025-06-06 06:36:50', NULL),
(187, 1995031, '$2y$10$gYfzEZqQxyXf7jHOFf37duvxGcJxssx0rrNal6/l8TUpRKjbAnwJ.', 'expositor', 0, '2025-06-06 06:38:49', '2025-06-06 06:38:49', NULL),
(188, 2048689, '$2y$10$Nte9Ialr.eQSlvNorbqt9.h8ptQLTT/4CTdLy6vB8H51lkIa1Ee/a', 'expositor', 0, '2025-06-06 06:42:46', '2025-06-06 06:42:46', NULL),
(189, 2049814, '$2y$10$emKv6A9H//hstiDKIjb.LOg4vokiVAG1O4.ryG3RdYq5HH1zMAOGe', 'expositor', 0, '2025-06-06 07:30:09', '2025-06-06 07:30:09', NULL),
(190, 2049814, '$2y$10$Uro06460saeI3uxEwfDMAO4QBAwfVHnpQdhFy1XvS2WKsC7EI9Cni', 'expositor', 0, '2025-06-06 07:30:09', '2025-06-06 07:30:09', NULL),
(191, 2058917, '$2y$10$hyEW5thbCFfMdsHH3vSCLO2UpEoaA6IFvhpAmsfSwqi5ii/4ztLOC', 'expositor', 0, '2025-06-06 07:30:09', '2025-06-06 07:30:09', NULL),
(192, 2058917, '$2y$10$RJoiVQ.A5eFNDKdSdRqXs.JIgm9Tp5YfknWMmhHbkajGth66jRdX6', 'expositor', 0, '2025-06-06 07:30:09', '2025-06-06 07:30:09', NULL),
(193, 1958524, '$2y$10$I3QsxYNEI8ljRL4sW97O6OYq1r7lDNQEWUys/RLg5TQxtLVNdEZ1i', 'expositor', 0, '2025-06-07 00:27:40', '2025-06-07 00:27:40', NULL),
(194, 2048779, '$2y$10$2dEYHtw0FEOtd60v9WLiEuZ/SWmh4yATHrq/hFsR1SybpcrEhYFj2', 'expositor', 0, '2025-06-07 00:27:40', '2025-06-07 00:27:40', NULL),
(195, 2086144, '$2y$10$9x.HwDBUN1bchCSYMXBVVOL2Auc65zbAe8mu50VNfGsv/Tn.7Z/z6', 'expositor', 0, '2025-06-07 00:43:59', '2025-06-07 00:43:59', NULL),
(196, 2086142, '$2y$10$uw8MIgP.ruPpWEcAgu.mOu.jxLZKnEKx9byMlbp4RnRG9R1ki9VMC', 'expositor', 0, '2025-06-07 00:43:59', '2025-06-07 00:43:59', NULL),
(197, 1998672, '$2y$10$CIlCWGZEr5LZdTpnEQ5UOufEt7C9x8CNrIiXI8glPoJDedtJ2CCAK', 'expositor', 0, '2025-06-07 00:48:44', '2025-06-07 00:48:44', NULL),
(198, 1998672, '$2y$10$I2xGYJENKVAzimeIaYte1OxSv3prI2QRbEDd/QZRirWLdn9Km//sm', 'expositor', 0, '2025-06-07 00:50:30', '2025-06-07 00:50:30', NULL),
(199, 2001170, '$2y$10$J84lPQjySt1vzR2g3Zpss.QXw2uqoHbQw9ZIzY14aWxRhcuAxjX5S', 'expositor', 0, '2025-06-07 00:50:30', '2025-06-07 00:50:30', NULL),
(200, 2008229, '$2y$10$.P5X0Wzk.ZqLiK8TpSh91.CI3wirpqTDn7Ugw.K3CdnFAuFOdFGtu', 'expositor', 0, '2025-06-07 00:56:02', '2025-06-07 00:56:02', NULL),
(201, 2007277, '$2y$10$qbiysMfIQmLll2qUQQAeu.Fot4qHEFUlH8gFO19HYItFGqGn5HgHK', 'expositor', 0, '2025-06-07 00:56:02', '2025-06-07 00:56:02', NULL),
(202, 1970636, '$2y$10$FjpK3EE5Ao/ZdwzzxQOyR.FuyhIXTvGeTbY5ouaN5Q8QDQ2EFxnIu', 'expositor', 0, '2025-06-07 00:56:02', '2025-06-07 00:56:02', NULL),
(203, 1972905, '$2y$10$CrxurdFZbCaHl2dmY34Hj.oFd7vr5l79qDmk5COMloo7YgMnEqw1e', 'expositor', 0, '2025-06-07 00:56:02', '2025-06-07 00:56:02', NULL),
(204, 1995923, '$2y$10$C8Lt3F3z2iV2AxtREkIgDuaHl3cmUPDUyT8JjX/tkiCL2Pb8wpAXe', 'expositor', 0, '2025-06-07 00:56:02', '2025-06-07 00:56:02', NULL),
(205, 1994917, '$2y$10$APuRRnWXnG7KHYExeUlRkun8lc5UNcvuqei5.bQ5JRgGCLl5WfP6C', 'expositor', 0, '2025-06-07 00:56:02', '2025-06-07 00:56:02', NULL),
(206, 1843574, '$2y$10$/ZsHMWN53DuM2IsxclK5Z.wEzXmvbUSaqyXj4AE8gj1iDDq.Y1612', 'expositor', 0, '2025-06-07 00:58:42', '2025-06-07 00:58:42', NULL),
(207, 1923061, '$2y$10$GPOJNF57kUcl1TbNy0FSs.2AnRKJlYdovfBqvQ9boJft9Qw6sH/K.', 'expositor', 0, '2025-06-07 00:58:42', '2025-06-07 00:58:42', NULL),
(208, 2048073, '$2y$10$YVTYMXP3nYG3RwMYX56UsOYqr9OGdm2dkUa23sw8RtTuHpv0/EF6C', 'expositor', 0, '2025-06-07 01:01:24', '2025-06-07 01:01:24', NULL),
(209, 1944697, '$2y$10$7ilnkmHBEY9n87RFvdIH2edXLz3xhWzE.VVkOgQ2pUAD09BunO..y', 'expositor', 0, '2025-06-07 02:33:13', '2025-06-07 02:33:13', NULL),
(210, 2177543, '$2y$10$sCe0Q.sqZweO8erW02FEu.isp6g4rEqU5p8EPnFPzYhcTrSLKBv0.', 'expositor', 0, '2025-06-07 02:37:42', '2025-06-07 02:37:42', NULL),
(211, 2177543, '$2y$10$rYacADolNLsl/qNlKWQoheSQAczXjjcSIJRj89zIPfO88mE8n4FaW', 'expositor', 0, '2025-06-07 02:40:10', '2025-06-07 02:40:10', NULL),
(212, 2128704, '$2y$10$B7gkmw7sUyx7tDXweCEthuj4ZAaztKtw1Tqt.wFJh0ftyxI7XMxfi', 'expositor', 0, '2025-06-07 02:50:01', '2025-06-07 02:50:01', NULL),
(213, 2056800, '$2y$10$Hdzxi6ioIxM.bTrRnDMXLut.s6CHbLjXno7MP4f3uo29mWlBn3tA2', 'expositor', 0, '2025-06-07 02:50:01', '2025-06-07 02:50:01', NULL),
(214, 2007587, '$2y$10$nkDZkQ6HDr04y2bcHcqClOxFWyh8Z.Jlp8nsGzEl2XVY5NZBm6HzK', 'expositor', 0, '2025-06-07 02:50:01', '2025-06-07 02:50:01', NULL),
(215, 1978260, '$2y$10$LBrWha8iOjC9w3ia9sp8WOfZE.8OAfZ.CD/ORCcBaW3T2BVYHoYri', 'expositor', 0, '2025-06-07 02:50:02', '2025-06-07 02:50:02', NULL),
(216, 2048779, '$2y$10$EMrws9rJtAEBGTIIpevBjeb9GbRc4vWdnsQH2BvbuXacJDEtASOqq', 'expositor', 0, '2025-06-07 02:50:02', '2025-06-07 02:50:02', NULL),
(217, 2001325, '$2y$10$Li7pfR5xWd78VTR.dqqWm.vy7Urr4GFCvyFdEqYpqavfDEOBh1PVi', 'expositor', 0, '2025-06-07 02:54:41', '2025-06-07 02:54:41', NULL),
(218, 2127311, '$2y$10$AvJhUjrEDPIE7zGuGicIH.vwCDCyJroeqb2e7E7DdLT0VJSqrtZkS', 'expositor', 0, '2025-06-07 02:55:21', '2025-06-07 02:55:21', NULL),
(219, 1962531, '$2y$10$LHupYe.tQhbhllYzV8U2/.PQdVbDAbQsWR9TKJCLU3zs..KNx7jni', 'expositor', 0, '2025-06-07 02:55:21', '2025-06-07 02:55:21', NULL),
(220, 2001325, '$2y$10$bCewRPLHvJnVLJ7cFicZ2uhG//O962cSj/ULGiw4TuifFyK.H0b8e', 'expositor', 0, '2025-06-07 02:55:33', '2025-06-07 02:55:33', NULL),
(221, 2001325, '$2y$10$b76CC2c/7Y9l3e/O1OclFen0iepoomQuqQtBD.jbhsXstwjCLK6Xe', 'expositor', 0, '2025-06-07 02:56:07', '2025-06-07 02:56:07', NULL),
(222, 2132984, '$2y$10$9i8rfCeTPWxTURZC6zrhJuFIC4gZALXcmrhHI5vkqypxPg6G64ycW', 'expositor', 0, '2025-06-07 03:14:13', '2025-06-07 03:14:13', NULL),
(223, 2132986, '$2y$10$2M5Ee.AnEICi/6Lf2Mh2Xe5xDGLotO9Me7RXbsC6IQFYISgMkxI1y', 'expositor', 0, '2025-06-07 03:14:13', '2025-06-07 03:14:13', NULL),
(224, 1917319, '$2y$10$6axPgn8vtlqsbHSMvN0IyeabeiOhT5.7Cnrf8XqG/KAVafkXyw7ha', 'expositor', 0, '2025-06-07 03:15:20', '2025-06-07 03:15:20', NULL),
(225, 2026779, '$2y$10$fzbQCG56Uvks/pvKQCsENeiONPjbvwibr3u8gPMrA.hm32lLLHx2K', 'expositor', 0, '2025-06-07 03:15:20', '2025-06-07 03:15:20', NULL),
(226, 2076219, '$2y$10$9C2kLBip9iYzO1mopvgLs.23gu3dum0vo/6V2t7G0Y2v7zd.SzUcu', 'expositor', 0, '2025-06-07 03:21:40', '2025-06-07 03:21:40', NULL),
(227, 1867475, '$2y$10$fG9BXJERiQNWkQXc/YYTMe5MCBKsOVGP7ruCTVdIuS.wRXEYMuDuO', 'expositor', 0, '2025-06-07 03:21:40', '2025-06-07 03:21:40', NULL),
(228, 1526807, '$2y$10$n76vewnsJvpPOozTSQg6f.FfMrm740M6Eb19B5Y.83WAy4h.LGtu6', 'expositor', 0, '2025-06-07 03:21:40', '2025-06-07 03:21:40', NULL),
(229, 1919676, '$2y$10$tE1tb2rZLS54.krYvsgig..SKykoAlRBk5LgUg53gIYJISRGYwbqK', 'expositor', 0, '2025-06-07 03:21:40', '2025-06-07 03:21:40', NULL),
(230, 2034230, '$2y$10$ia9tgiUw9V304kbnQZzQpe.nqktsXMc7M5P1q7qC3tuliFGbHmQn.', 'expositor', 0, '2025-06-07 03:21:40', '2025-06-07 03:21:40', NULL),
(231, 1864881, '$2y$10$vHBE6pkb53ONJEfQuO4O3e3QAGYf6bqFOE0FtaQDuLRuAhm5o1RfS', 'expositor', 0, '2025-06-07 03:39:38', '2025-06-07 03:39:38', NULL),
(232, 1998377, '$2y$10$i3wk2ZTcetxkI0PZwmXlteRwOpmLFHYgvXwQsNd3LoRfyZxUCZygC', 'expositor', 0, '2025-06-07 03:39:38', '2025-06-07 03:39:38', NULL),
(233, 1868323, '$2y$10$lKU76umRor4v7y5o9yQkxu7uv8klq3H4kuYMxDJdEW/k9fR0D80fu', 'expositor', 0, '2025-06-07 03:54:43', '2025-06-07 03:54:43', NULL),
(234, 1968562, '$2y$10$PttT4D3bWRnGhBbE9WFqwu7Zsdbgl42Av.LoBS5ZEVW.cSNb/uAMa', 'expositor', 0, '2025-06-07 03:54:43', '2025-06-07 03:54:43', NULL),
(235, 2048968, '$2y$10$kxGFU5m0OuygIIZKnI5N.OW8WxM11p/OE9iFRq.slc56soe0g9YJ6', 'expositor', 0, '2025-06-07 03:58:17', '2025-06-07 03:58:17', NULL),
(236, 1949282, '$2y$10$6Aq5b7K7vc9mhH6IwxPWuO6FZB/o94vdr4Pzjb9q4GyBQXw6F4OCO', 'expositor', 0, '2025-06-07 03:58:17', '2025-06-07 03:58:17', NULL),
(237, 5122983, '$2y$10$gdFjp//pP3ADqUYAel5Fd.oEHxJBszpkzo50K7h.xUDtyij9mypxS', 'staff', 1, '2025-06-07 05:25:16', '2025-06-07 05:25:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validation_tokens`
--

CREATE TABLE `validation_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `subject` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `plan` int(11) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `proyect_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `validation_tokens`
--

INSERT INTO `validation_tokens` (`id`, `token`, `subject`, `plan`, `used`, `teacher_id`, `proyect_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '-5642768360c254d7e3--87980062', 'Fundamentos del dibujo artístico', 420, 1, 12, 1, '2025-06-05 02:02:09', '2025-06-05 08:02:09', NULL),
(2, '-2815--83-0d2e274-a8-22398589', 'Producción multimedia', 420, 1, 12, 2, '2025-06-06 20:37:42', '2025-06-07 02:37:42', NULL),
(3, '55-49868360da6d058a7--5903911', 'Modelado arquitectónico', 420, 1, 12, 3, '2025-06-05 10:09:23', '2025-06-05 16:09:23', NULL),
(4, '60760868360e0a6ade38-42284-25', 'Fotografía digital', 420, 1, 12, 4, '2025-06-06 19:01:24', '2025-06-07 01:01:24', NULL),
(5, '3-85676836-e72367f42-483823-1', 'Modelos de administración de datos', 420, 1, 12, 5, '2025-05-28 23:51:19', '2025-05-29 05:51:19', NULL),
(6, '60882768375153-0a862-62-7720-', 'Animación básica', 420, 1, 12, 6, '2025-05-31 00:44:40', '2025-05-31 06:44:40', NULL),
(7, '28104168375238a50500-48620287', 'Escenarios de videojuegos', 420, 1, 12, 7, '2025-06-05 20:15:58', '2025-06-06 02:15:58', NULL),
(8, '6621-668-752bd6f7ef7-6842-080', 'Gráficas computacionales II', 420, 1, 12, 8, '2025-06-03 09:19:02', '2025-06-03 15:19:02', NULL),
(9, '698814683-53365cb6f0-08434801', 'Ilustración digital', 420, 1, 12, 9, '2025-06-05 20:03:27', '2025-06-06 02:03:27', NULL),
(10, '47-071-83753cab12e37-9-921894', 'Base de datos multimedia', 420, 1, 12, 10, '2025-06-03 05:35:00', '2025-06-03 11:35:00', NULL),
(11, '34-9496837544eb3b-08--110-355', 'Optimización de videojuegos', 420, 0, 12, 11, '2025-05-29 00:22:06', '2025-05-29 00:22:06', NULL),
(12, '2-784668-754a-12ef72-82800927', 'Actuación y dirección para animación', 420, 1, 12, 12, '2025-05-30 08:47:26', '2025-05-30 14:47:26', NULL),
(13, '12-0-96-37554b6c-352-1-437156', 'Animación tradicional de humanos y de animales', 420, 0, 12, 13, '2025-05-29 00:26:19', '2025-05-29 00:26:19', NULL),
(14, '-7900768375585d43053-4-479-17', 'Efectos visuales II', 420, 0, 12, 14, '2025-05-29 00:27:17', '2025-05-29 00:27:17', NULL),
(15, '5613906-375bb4deccf0-19740263', 'Diseño de videojuegos en linea', 420, 0, 12, 15, '2025-05-29 00:53:40', '2025-05-29 00:53:40', NULL),
(16, '028642683-60c9ddf4-5-69911883', 'Realidad virtual', 420, 0, 12, 16, '2025-05-29 01:15:21', '2025-05-29 01:15:21', NULL),
(17, '0-962268-7611fe65975-10628125', 'Esqueletos de personajes', 420, 1, 12, 17, '2025-05-29 21:47:01', '2025-05-30 03:47:01', NULL),
(18, '7320556837617ba1bea0-06380685', 'Animación tradicional de escenarios', 420, 1, 12, 18, '2025-05-30 02:19:07', '2025-05-30 08:19:07', NULL),
(19, '-337656-37-16d54-ab6-30562244', 'Fundamentos del dibujo artístico', 420, 1, 12, 19, '2025-06-06 20:40:10', '2025-06-07 02:40:10', NULL),
(20, '350695683782a7ab2738-63-51035', 'Producción multimedia', 420, 1, 12, 20, '2025-06-03 07:16:54', '2025-06-03 13:16:54', NULL),
(21, '43626968378347bc2748-8212-8-7', 'Modelado arquitectónico', 420, 1, 12, 21, '2025-06-03 06:18:10', '2025-06-03 12:18:10', NULL),
(22, '930199683783ca7-2d0--10999953', 'Fotografía digital', 420, 0, 12, 22, '2025-05-29 03:44:42', '2025-05-29 03:44:42', NULL),
(23, '977735-837842abfac30-0939-995', 'Gráficas computacionales I', 420, 1, 12, 23, '2025-06-05 05:17:22', '2025-06-05 11:17:22', NULL),
(24, '540618683784c7-c114--9909-316', 'Modelos de administración de datos', 420, 1, 12, 24, '2025-06-02 04:17:58', '2025-06-02 10:17:58', NULL),
(25, '868324683785c98a-6-5-42906060', 'Administración de alto volumen de datos', 420, 1, 12, 25, '2025-06-02 20:08:33', '2025-06-03 02:08:33', NULL),
(26, '498339683788250d4933-42679287', 'Animación básica', 420, 1, 12, 26, '2025-06-06 00:42:46', '2025-06-06 06:42:46', NULL),
(27, '7-5732-83789507242d5-3820-347', 'Escenarios de videojuegos', 420, 1, 12, 27, '2025-05-31 22:49:23', '2025-06-01 04:49:23', NULL),
(28, '4355596-37-a07c37776--6047543', 'Gráficas computacionales II', 420, 1, 12, 28, '2025-06-01 23:50:19', '2025-06-02 05:50:19', NULL),
(29, '7533-668378a88-688f6--6385223', 'Ilustración digital', 420, 1, 12, 29, '2025-06-01 06:33:53', '2025-06-01 12:33:53', NULL),
(30, '61512-6-37-b2c1153c2--5-54025', 'Base de datos multimedia', 420, 1, 12, 30, '2025-06-03 17:09:27', '2025-06-03 23:09:27', NULL),
(31, '6794-768378bcb3-c7d1-01743-17', 'Actuación y dirección para animación', 420, 0, 12, 31, '2025-05-29 04:18:51', '2025-05-29 04:18:51', NULL),
(32, '139-6168378c9---dcd2-92110246', 'Animación tradicional de humanos y de animales', 420, 1, 12, 32, '2025-06-03 04:26:14', '2025-06-03 10:26:14', NULL),
(33, '-474-168378cedadbc24-70924283', 'Efectos visuales II', 420, 1, 12, 33, '2025-06-06 20:56:07', '2025-06-07 02:56:07', NULL),
(34, '86885968378e213c3138-3-656943', 'Diseño de videojuegos en linea', 420, 1, 12, 34, '2025-06-02 00:04:45', '2025-06-02 06:04:45', NULL),
(35, '0409-068378e8-051684-10168760', 'Esqueletos de personajes', 420, 1, 12, 35, '2025-06-03 20:36:39', '2025-06-04 02:36:39', NULL),
(36, '94079868378f3f492d6--9-39--6-', 'Animación tradicional de escenarios', 420, 1, 12, 36, '2025-06-04 23:46:35', '2025-06-05 05:46:35', NULL),
(37, '300928-8378f98befeb--95512479', 'Iluminación y audio', 420, 0, 12, 37, '2025-05-29 04:35:04', '2025-05-29 04:35:04', NULL),
(38, '0884646838-c60b-72f5-16010507', 'Programación de sistemas móviles', 420, 1, 12, 38, '2025-05-31 11:13:05', '2025-05-31 17:13:05', NULL),
(39, '-9736668389dcc34f592-93009094', 'Postproducción', 420, 1, 12, 39, '2025-06-04 14:41:45', '2025-06-04 20:41:45', NULL),
(40, '6044--6838c6b5089402--32631-2', 'Programación de sistemas móviles', 420, 0, 12, 41, '2025-05-30 02:42:29', '2025-05-30 02:42:29', NULL),
(41, '5168716839fb3e3f81e--65839-23', 'Modelado arquitectónico', 420, 1, 12, 42, '2025-06-05 19:51:19', '2025-06-06 01:51:19', NULL),
(42, '485-12683a0272-e0e88-58166441', 'Modelado orgánico', 420, 1, 12, 43, '2025-06-03 03:20:05', '2025-06-03 09:20:05', NULL),
(43, '-03650683a03f0b84693-06077-77', 'Modelado orgánico', 420, 1, 12, 44, '2025-06-04 18:06:41', '2025-06-05 00:06:41', NULL),
(44, '6-3-44683a0814d383f6--7123-19', 'Fotografía digital', 420, 1, 12, 45, '2025-06-01 06:12:53', '2025-06-01 12:12:53', NULL),
(45, '4-5569683a0b6f735535-76262647', 'Diseño de hápticos', 420, 1, 12, 46, '2025-06-01 22:13:48', '2025-06-02 04:13:48', NULL),
(46, '2840--683a0bccce01f--38835912', 'Tecnologías multimedia', 420, 1, 12, 47, '2025-06-03 03:25:22', '2025-06-03 09:25:22', NULL),
(47, '-2248--83a0cc3dd9155-580---55', 'Animación básica', 420, 1, 12, 48, '2025-06-02 03:42:18', '2025-06-02 09:42:18', NULL),
(48, '747613683a-dfc64d823-17944436', 'Escenarios de videojuegos', 420, 1, 12, 49, '2025-06-01 21:16:56', '2025-06-02 03:16:56', NULL),
(49, '-165036-3a296--a97d---157174-', 'Modelado en alto poligonaje', 420, 1, 12, 50, '2025-06-05 23:06:41', '2025-06-06 05:06:41', NULL),
(50, '7667396-3a29cbbefce7-130531-9', 'Modelado en alto poligonaje', 420, 1, 12, 51, '2025-05-31 20:41:35', '2025-06-01 02:41:35', NULL),
(51, '2-878-683a2a5d4-9d35-65453628', 'Ilustración digital', 420, 1, 12, 52, '2025-06-04 18:31:59', '2025-06-05 00:31:59', NULL),
(52, '7144036-3a2c-3509-c2-0-542577', 'Optimización de videojuegos', 420, 1, 12, 53, '2025-06-01 18:44:26', '2025-06-02 00:44:26', NULL),
(53, '-6--596-3a2d6-433cb4-62571294', 'Actuación y dirección para animación', 420, 1, 12, 54, '2025-06-03 21:24:23', '2025-06-04 03:24:23', NULL),
(54, '-3-766683a2e88f20874-978-7477', 'Animación tradicional de humanos y de animales', 420, 1, 12, 55, '2025-06-03 05:11:35', '2025-06-03 11:11:35', NULL),
(55, '0-9-936-3a2f-e9f5b37-169-529-', 'Diseño de videojuegos en linea', 420, 1, 12, 56, '2025-06-01 03:21:12', '2025-06-01 09:21:12', NULL),
(56, '385203683a30de81af25-05048677', 'Diseño de videojuegos en linea', 420, 1, 12, 57, '2025-06-01 21:09:26', '2025-06-02 03:09:26', NULL),
(57, '414200683a312f4211a1--260-806', 'Esqueletos de personajes', 420, 1, 12, 58, '2025-06-06 20:33:13', '2025-06-07 02:33:13', NULL),
(58, '657314683a3186e0cd48-647054-7', 'Animación tradicional de escenarios', 420, 1, 12, 59, '2025-06-05 04:02:50', '2025-06-05 10:02:50', NULL),
(59, '758430683a334cb3faf8-41431875', 'Postproducción', 420, 1, 12, 60, '2025-06-01 01:53:28', '2025-06-01 07:53:28', NULL),
(60, '8-0886683ddb826b2be4-5334-81-', 'Optimización de videojuegos', 420, 1, 12, 61, '2025-06-04 02:12:16', '2025-06-04 08:12:16', NULL),
(61, '79562668-ddcf98808b1-28882880', 'Modelado arquitectónico', 420, 1, 12, 62, '2025-06-03 23:18:33', '2025-06-04 05:18:33', NULL),
(62, '-940096-3ddf1-da3fb6--350634-', 'Modelado orgánico', 420, 1, 12, 63, '2025-06-05 19:22:52', '2025-06-06 01:22:52', NULL),
(63, '528286683ddf8c18a-99-92122-6-', 'Modelado orgánico', 420, 1, 12, 64, '2025-06-05 18:59:05', '2025-06-06 00:59:05', NULL),
(64, '95387-683de-188429e8-47418269', 'Fotografía digital', 420, 1, 12, 65, '2025-06-04 05:39:23', '2025-06-04 11:39:23', NULL),
(65, '897474683def3842add--79631-45', 'Diseño de hápticos', 420, 1, 12, 66, '2025-06-03 05:11:06', '2025-06-03 11:11:06', NULL),
(66, '8-06-0683defa17-a061-0135666-', 'Animación básica', 420, 0, 12, 67, '2025-06-03 00:38:25', '2025-06-03 00:38:25', NULL),
(67, '598904683df065a1b8a0-59914-03', 'Escenarios de videojuegos', 420, 1, 12, 68, '2025-06-04 18:59:30', '2025-06-05 00:59:30', NULL),
(68, '546205683df24-19bcc--26393349', 'Modelado en alto poligonaje', 420, 1, 12, 69, '2025-06-04 23:52:56', '2025-06-05 05:52:56', NULL),
(69, '052571683df2c00d-4d3-00085-6-', 'Ilustración digital', 420, 1, 12, 70, '2025-06-04 13:28:32', '2025-06-04 19:28:32', NULL),
(70, '-5-95-683df368aae7c5-8737-791', 'Optimización de videojuegos', 420, 1, 12, 71, '2025-06-04 08:27:40', '2025-06-04 14:27:40', NULL),
(71, '08755-683df3cda3ecc6-68493597', 'Actuación y dirección para animación', 420, 1, 12, 72, '2025-06-03 02:58:46', '2025-06-03 08:58:46', NULL),
(72, '7767--683df-7e10-bc3-8010970-', 'Animación tradicional de humanos y de animales', 420, 1, 12, 73, '2025-06-03 05:06:45', '2025-06-03 11:06:45', NULL),
(73, '016048683df646-ef5f7-55-47183', 'Diseño de videojuegos en linea', 420, 1, 12, 74, '2025-06-05 02:24:44', '2025-06-05 08:24:44', NULL),
(74, '279831683df8d863d9-0-29897936', 'Esqueletos de personajes', 420, 1, 12, 75, '2025-06-03 03:30:42', '2025-06-03 09:30:42', NULL),
(75, '35-302683df955aa5665-993--6-3', 'Animación tradicional de escenarios', 420, 1, 12, 76, '2025-06-05 00:25:52', '2025-06-05 06:25:52', NULL),
(76, '54292068-dfb57b18a07-71294240', 'Postproducción', 420, 1, 12, 77, '2025-06-03 06:26:06', '2025-06-03 12:26:06', NULL),
(77, '53797868407f1eb07f87-03594794', 'Iluminación y audio', 420, 1, 12, 78, '2025-06-05 20:01:49', '2025-06-06 02:01:49', NULL),
(78, '-6559-684-85925bd2f3-458-3681', 'Base de datos multimedia', 420, 0, 12, 79, '2025-06-04 23:42:42', '2025-06-04 23:42:42', NULL),
(79, '9836166840bb-9af476--74134677', 'Efectos visuales II', 420, 1, 12, 80, '2025-06-05 00:53:28', '2025-06-05 06:53:28', NULL),
(80, '-9911368-0bc57a32e29-0825-270', 'Base de datos multimedia', 420, 1, 12, 81, '2025-06-06 18:58:42', '2025-06-07 00:58:42', NULL),
(81, '-355376-41d64a-f1194-39022246', 'Modelos de administración de datos', 420, 1, 12, 82, '2025-06-06 01:30:09', '2025-06-06 07:30:09', NULL),
(82, '2226066841d-31380ea1-6909-882', 'Modelos de administración de datos', 420, 1, 12, 83, '2025-06-06 21:39:39', '2025-06-07 03:39:39', NULL),
(83, '4827576841d8bc129583-296677-8', 'Base de datos multimedia', 420, 1, 12, 84, '2025-06-06 20:55:21', '2025-06-07 02:55:21', NULL),
(84, '1370-06841db47033765-39176--6', 'Base de datos multimedia', 420, 1, 12, 85, '2025-06-06 21:54:43', '2025-06-07 03:54:43', NULL),
(85, '1896146841dbaa-00542-0290-77-', 'Base de datos multimedia', 420, 1, 12, 86, '2025-06-06 18:43:59', '2025-06-07 00:43:59', NULL),
(86, '815-196841f51ead5705-8716--10', 'Fundamentos del dibujo artístico', 420, 1, 12, 87, '2025-06-05 21:06:00', '2025-06-06 03:06:00', NULL),
(87, '3599776-41f-df-c72e7-75566701', 'Cinematografía', 420, 1, 12, 88, '2025-06-06 20:50:02', '2025-06-07 02:50:02', NULL),
(88, '207-606841fa-fe8bc3--37086149', 'Cinematografía', 420, 1, 12, 89, '2025-06-05 21:34:19', '2025-06-06 03:34:19', NULL),
(89, '8318806841fbf2c4c292-0-920243', 'Modelos de administración de datos', 420, 0, 12, 90, '2025-06-06 02:20:02', '2025-06-06 02:20:02', NULL),
(90, '-695896841fee913b3f3-60106-8-', 'Modelos de administración de datos', 420, 1, 12, 91, '2025-06-06 18:48:44', '2025-06-07 00:48:44', NULL),
(91, '999463684200c4e4af3--29943-87', 'Administración de alto volumen de datos', 420, 1, 12, 92, '2025-06-06 18:50:30', '2025-06-07 00:50:30', NULL),
(92, '--459968420-8250-0d5-875-89-8', 'Administración de alto volumen de datos', 420, 1, 12, 93, '2025-06-06 18:27:40', '2025-06-07 00:27:40', NULL),
(93, '9679346842-368da7b68-29162471', 'Administración de alto volumen de datos', 420, 1, 12, 94, '2025-06-06 21:58:17', '2025-06-07 03:58:17', NULL),
(94, '56768568420ce5adf-e--6841245-', 'Gráficas computacionales II', 420, 1, 12, 95, '2025-06-06 21:14:13', '2025-06-07 03:14:13', NULL),
(95, '37227268420d8121-1d6-00131-48', 'Gráficas computacionales II', 420, 1, 12, 96, '2025-06-05 22:21:52', '2025-06-06 04:21:52', NULL),
(96, '80388468420dfe1b-b82-8352820-', 'Efectos visuales I', 420, 1, 12, 97, '2025-06-06 00:36:50', '2025-06-06 06:36:50', NULL),
(97, '677-7768420ea00c26d0-33820471', 'Programación web I', 420, 1, 12, 98, '2025-06-06 00:22:36', '2025-06-06 06:22:36', NULL),
(98, '8483-168420f8da836d6-13031363', 'Base de datos multimedia', 420, 1, 12, 99, '2025-06-06 21:15:20', '2025-06-07 03:15:20', NULL),
(99, '0509216842119a265140-11000569', 'Realidad virtual', 420, 1, 12, 100, '2025-06-06 18:56:02', '2025-06-07 00:56:02', NULL),
(100, '-545666842-34042c697-55978782', 'Realidad virtual', 420, 1, 12, 101, '2025-06-06 00:03:35', '2025-06-06 06:03:35', NULL),
(101, '58-52268421420-c0956-06419410', 'Gráficas computacionales I', 420, 1, 12, 102, '2025-06-06 00:38:49', '2025-06-06 06:38:49', NULL),
(102, '6898-768-21-dcf3db98-98897911', 'Iluminación y audio', 420, 0, 12, 103, '2025-06-06 04:06:21', '2025-06-06 04:06:21', NULL),
(103, '0--39568-21532739bc--92089532', 'Iluminación y audio', 420, 1, 12, 104, '2025-06-05 23:47:10', '2025-06-06 05:47:10', NULL),
(104, '021626684216-0474-c--284129--', 'Postproducción', 420, 1, 12, 105, '2025-06-06 21:21:40', '2025-06-07 03:21:40', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `nombre_completo` text COLLATE utf8_unicode_ci NOT NULL,
  `matricula` text COLLATE utf8_unicode_ci,
  `genero` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `visitors`
--

INSERT INTO `visitors` (`id`, `nombre_completo`, `matricula`, `genero`, `created_at`, `updated_at`) VALUES
(2, 'IRMA DEL ROSARIO PEREZ CRUZ', NULL, 'Female', '2025-06-07 22:21:09', '2025-06-07 22:21:09'),
(3, 'PATRICIA PEREZ REYES', NULL, 'Female', '2025-06-07 22:21:19', '2025-06-07 22:21:19'),
(4, 'CARLOS ANDRE CANTU MEDERO', NULL, 'Male', '2025-06-07 22:33:04', '2025-06-07 22:33:04'),
(5, 'FRANCISCO JOSE CARRIEDO HERNÁNDEZ', NULL, 'Male', '2025-06-07 22:34:32', '2025-06-07 22:34:32'),
(6, 'DANIEL ABISAI MONTELO VAZQUEZ', '2038118', NULL, '2025-06-07 22:35:03', '2025-06-07 22:35:03'),
(7, 'OMAR ISAI FERRETIZ SANCHEZ', '2133017', NULL, '2025-06-07 22:35:29', '2025-06-07 22:35:29'),
(8, 'ISAAC IMANOL OVALLE GONZALEZ', '2120970', NULL, '2025-06-07 22:37:40', '2025-06-07 22:37:40'),
(9, 'JUAN MAXIMILIANO CONTRERAS AGUILAR', '2138642', NULL, '2025-06-07 22:38:52', '2025-06-07 22:38:52'),
(10, 'PAULINA SANCHEZ SALAZAR', '2169332', NULL, '2025-06-07 22:41:15', '2025-06-07 22:41:15'),
(11, 'ALEX BZENGA', NULL, 'Male', '2025-06-07 22:42:28', '2025-06-07 22:42:28'),
(12, 'NESTOR ALEJANDRO SAMCHEZ BARTIALES', NULL, 'Male', '2025-06-07 22:43:54', '2025-06-07 22:43:54'),
(13, 'BRANDON LEONEL SOSA SANCHEZ', '2013953', NULL, '2025-06-07 22:44:16', '2025-06-07 22:44:16'),
(14, 'MARIA PAULA NERI SALAZAR', NULL, 'Female', '2025-06-07 22:45:08', '2025-06-07 22:45:08'),
(15, 'EDGAR GERARDO RODRIGEZ MARTINEZ', NULL, 'Male', '2025-06-07 22:45:12', '2025-06-07 22:45:12'),
(16, 'JESUS RARAMIRO MORENO FLORES', NULL, 'Male', '2025-06-07 22:47:03', '2025-06-07 22:47:03'),
(17, 'JESUS RARAMIRO MORENO FLORES', NULL, 'Male', '2025-06-07 22:47:03', '2025-06-07 22:47:03'),
(18, 'DANIELA RODRIGUEZ NOCEDA', '1985203', NULL, '2025-06-07 22:47:36', '2025-06-07 22:47:36'),
(19, 'MONICA ESPINOSA', NULL, 'Female', '2025-06-07 22:48:42', '2025-06-07 22:48:42'),
(20, 'MAURO ERICK SAENZ ESPINOZA', '2120985', NULL, '2025-06-07 22:48:52', '2025-06-07 22:48:52'),
(21, 'ERICK SAEZ', NULL, 'Male', '2025-06-07 22:48:52', '2025-06-07 22:48:52'),
(22, 'JUAN ENRIQUE LEAL GUTIERREZ', '1957848', NULL, '2025-06-07 22:52:14', '2025-06-07 22:52:14'),
(23, 'MONSERRAT DIAZ TREJO', '217750015', NULL, '2025-06-07 22:56:18', '2025-06-07 22:56:18'),
(24, 'JORGE ALFREDO BAÑUELOS RUIZ', '2064509', NULL, '2025-06-07 22:56:27', '2025-06-07 22:56:27'),
(25, 'DAVID EMMANUEL ALEMAN SERNA', '21054096', NULL, '2025-06-07 22:56:52', '2025-06-07 22:56:52'),
(26, 'RAYMOND ALEJANDRO GUDIÑO', NULL, 'Male', '2025-06-07 22:58:29', '2025-06-07 22:58:29'),
(27, 'BRUNO ALEJANDRO CHAVEZ DOMINGUEZ', NULL, 'Female', '2025-06-07 23:00:52', '2025-06-07 23:00:52'),
(28, 'DAVID IGNACIO VÁZQUEZ MENDOZA', '2095081', NULL, '2025-06-07 23:02:07', '2025-06-07 23:02:07'),
(29, 'MARIO ALFREDO ROJAS RICO', '2095151', NULL, '2025-06-07 23:02:07', '2025-06-07 23:02:07'),
(30, 'RAMSES URIEL MOTA CHAVEZ', '2222350', NULL, '2025-06-07 23:02:24', '2025-06-07 23:02:24'),
(31, 'MARIANA REGALADO ARIALLA', '2049197', NULL, '2025-06-07 23:03:01', '2025-06-07 23:03:01'),
(32, 'ANDREA NOHEMI ECHEGARAY JASSO', '2163365', NULL, '2025-06-07 23:04:39', '2025-06-07 23:04:39'),
(33, 'DAMIAN GARCIA', NULL, 'Male', '2025-06-07 23:06:29', '2025-06-07 23:06:29'),
(34, 'MARIA DE LOS ANGELES SANTIS SALAS', NULL, 'Female', '2025-06-07 23:09:17', '2025-06-07 23:09:17'),
(35, 'ALEJANDRO NUÑEZ CAVAZOS', NULL, 'Male', '2025-06-07 23:09:20', '2025-06-07 23:09:20'),
(36, 'ALEJANDRO NUÑEZ CAVAZOS', NULL, 'Male', '2025-06-07 23:09:21', '2025-06-07 23:09:21'),
(37, 'DANNA CECILIA CARRANZA BETANCOURT', '2026585', NULL, '2025-06-07 23:10:43', '2025-06-07 23:10:43'),
(38, 'ALDO GABRIEL GOMEZ CANIZALES', '1923886', NULL, '2025-06-07 23:11:02', '2025-06-07 23:11:02'),
(39, 'ALONDRA GUADALUPE GUTIERREZ MARES', '2116063', NULL, '2025-06-07 23:12:04', '2025-06-07 23:12:04'),
(40, 'AMISADDAI MONTELONGO DE LA VEGA', NULL, 'Male', '2025-06-07 23:13:36', '2025-06-07 23:13:36'),
(41, 'YADIRA GONZALEZ FLORES', NULL, 'Female', '2025-06-07 23:13:38', '2025-06-07 23:13:38'),
(42, 'JUANA FLORES PEREZ', NULL, 'Female', '2025-06-07 23:13:48', '2025-06-07 23:13:48'),
(43, 'RAUL AMISADAI DE LA VEGA GONZALEZ', NULL, 'Male', '2025-06-07 23:14:07', '2025-06-07 23:14:07'),
(44, 'RAUL AMISADAI DE LA VEGA GONZALEZ', NULL, 'Male', '2025-06-07 23:14:07', '2025-06-07 23:14:07'),
(45, 'LIA CONSTANZ DE LA VEGA GONZALEZA', NULL, 'Female', '2025-06-07 23:14:19', '2025-06-07 23:14:19'),
(46, 'VALERIA VALENTINA MOLINA ESCALANTE', '2097236', NULL, '2025-06-07 23:16:14', '2025-06-07 23:16:14'),
(47, 'RICARDO MARCOS MARTÍNEZ GOMEZ', NULL, 'Male', '2025-06-07 23:18:07', '2025-06-07 23:18:07'),
(48, 'DANIELA CATALINA SALAS TINOCO', '1945306', NULL, '2025-06-07 23:21:17', '2025-06-07 23:21:17'),
(49, 'DANIELA ALEJANDRA LOPEZ LUNA', '2063686', NULL, '2025-06-07 23:21:22', '2025-06-07 23:21:22'),
(50, 'ELIAN ADRID LOPEZ CRUZ', NULL, 'Male', '2025-06-07 23:21:36', '2025-06-07 23:21:36'),
(51, 'ARRURO LUGO VALDEZ', NULL, 'Male', '2025-06-07 23:22:44', '2025-06-07 23:22:44'),
(52, 'ARELI YAÑEZ MORALES', NULL, 'Female', '2025-06-07 23:22:46', '2025-06-07 23:22:46'),
(53, 'XIOMARA ISABEL VIDALES RODRIGUEZ', '2132167', NULL, '2025-06-07 23:23:22', '2025-06-07 23:23:22'),
(54, 'XIOMARA ISABEL VIDALES RODRIGUEZ', '2132167', NULL, '2025-06-07 23:23:22', '2025-06-07 23:23:22'),
(55, 'GERARDO ANDRES HERNANDEZ MASIAS', '1909151', NULL, '2025-06-07 23:23:48', '2025-06-07 23:23:48'),
(56, 'KARLA GABRIELA PALOMERO LAVARIEGA', '2048224', NULL, '2025-06-07 23:25:21', '2025-06-07 23:25:21'),
(57, 'VICTOR HUGO MOLINA RUIZ', '1973475', NULL, '2025-06-07 23:25:47', '2025-06-07 23:25:47'),
(58, 'ELIZALDE HERNÁNDEZ RICARDO ARTURO', NULL, 'Male', '2025-06-07 23:29:58', '2025-06-07 23:29:58'),
(59, 'LUZ DE LEON SAUCEDO', NULL, 'Female', '2025-06-07 23:30:01', '2025-06-07 23:30:01'),
(60, 'RAUL MARTÍNEZ LOPEZ', NULL, 'Male', '2025-06-07 23:30:19', '2025-06-07 23:30:19'),
(61, 'EMILIO CASRILLO DE LA ROSA', NULL, 'Male', '2025-06-07 23:31:56', '2025-06-07 23:31:56'),
(62, 'PAOLA ALONSO RODRIGUEZ', NULL, 'Female', '2025-06-07 23:32:29', '2025-06-07 23:32:29'),
(63, 'MAURICIO MEJÍA AGUILAR', '1955614', NULL, '2025-06-07 23:33:04', '2025-06-07 23:33:04'),
(64, 'HERMILO PALOMEQUE GOMEZ', '2086161', NULL, '2025-06-07 23:33:26', '2025-06-07 23:33:26'),
(65, 'EMILIANO MONTOYA FLORES', '2070454', NULL, '2025-06-07 23:34:10', '2025-06-07 23:34:10'),
(66, 'JESUS ALEXANDRO HERNANDEZ RIVERA', '1844441', NULL, '2025-06-07 23:36:13', '2025-06-07 23:36:13'),
(67, 'JORGE HUMBERTO GONZALEZ MORENO', '1912792', NULL, '2025-06-07 23:36:53', '2025-06-07 23:36:53'),
(68, 'SAMANTHA JOSELYNE SANCHEZ GAYTAIN', '2082960', NULL, '2025-06-07 23:37:11', '2025-06-07 23:37:11'),
(69, 'DANIEL ISRAEL VILLEGAS R RODRIGUEZ', NULL, 'Male', '2025-06-07 23:37:40', '2025-06-07 23:37:40'),
(70, 'NELLY RANGEL JIMÉNEZ', '2076253', NULL, '2025-06-07 23:37:56', '2025-06-07 23:37:56'),
(71, 'FERNANDO ADOLFO CANCINO CUENCA', '2132913', NULL, '2025-06-07 23:38:36', '2025-06-07 23:38:36'),
(72, 'YAHIR VERA CHAVEZ', '2225471', NULL, '2025-06-07 23:40:46', '2025-06-07 23:40:46'),
(73, 'YAIZA NICTE SUAREZ MENDEZ', '2225431', NULL, '2025-06-07 23:40:51', '2025-06-07 23:40:51'),
(74, 'GADIEL PEREZ DAVILA', '2116419', NULL, '2025-06-07 23:42:24', '2025-06-07 23:42:24'),
(75, 'SIOMARA YAMILETH GONZÁLEZ DÁVILA', NULL, 'Female', '2025-06-07 23:42:24', '2025-06-07 23:42:24'),
(76, 'GAMAEL PÉREZ DAVID', NULL, 'Male', '2025-06-07 23:42:40', '2025-06-07 23:42:40'),
(77, 'ANGEL FRANCISCO SALAZAR MORENO', '1950434', NULL, '2025-06-07 23:43:00', '2025-06-07 23:43:00'),
(78, 'PAOLA GUADALUPE MARTELL GARZA', '2025981', NULL, '2025-06-07 23:43:37', '2025-06-07 23:43:37'),
(79, 'AIME SARAI TOBIAS NUÑEZ', '2086222', NULL, '2025-06-07 23:44:26', '2025-06-07 23:44:26'),
(80, 'CARLOS IVAN GUAJARDO LOPEZ', NULL, 'Male', '2025-06-07 23:44:42', '2025-06-07 23:44:42'),
(81, 'JUAN VALDEZ', NULL, 'Male', '2025-06-07 23:45:08', '2025-06-07 23:45:08'),
(82, 'XIMENA VALDEZ RODRIGUEZ', NULL, 'Female', '2025-06-07 23:45:26', '2025-06-07 23:45:26'),
(83, 'RUBI MELISSA CRUZ HERNANDEZ', '2012972', NULL, '2025-06-07 23:47:56', '2025-06-07 23:47:56'),
(84, 'JUDITH JANETH VALDEZ MEDRANO', NULL, 'Female', '2025-06-07 23:48:44', '2025-06-07 23:48:44'),
(85, 'LUIS ALBERTO CARRIZALES MORALES', '1948419', NULL, '2025-06-07 23:49:45', '2025-06-07 23:49:45'),
(86, 'LESLIE MELISSA FIGUEROA CEDILLO', NULL, 'Female', '2025-06-07 23:55:10', '2025-06-07 23:55:10'),
(87, 'ALEXA MARROQUIN', NULL, 'Female', '2025-06-07 23:56:51', '2025-06-07 23:56:51'),
(88, 'SOFIA DE LA FUENTE AVILA', '2086144', NULL, '2025-06-07 23:57:14', '2025-06-07 23:57:14'),
(89, 'ANDREA LÓPEZ', NULL, 'Female', '2025-06-07 23:57:55', '2025-06-07 23:57:55'),
(90, 'ALESSANDRA LÓPEZ', NULL, 'Female', '2025-06-07 23:58:07', '2025-06-07 23:58:07'),
(91, 'LUIS ENRIQUE MARTÍNEZ DÍAZ', '2052355', NULL, '2025-06-07 23:59:29', '2025-06-07 23:59:29'),
(92, 'CONSTANZA MONTIEL', '2086142', NULL, '2025-06-08 00:00:36', '2025-06-08 00:00:36'),
(93, 'DANTE GAEL RAMÍREZ ORTIZ', '2143109', NULL, '2025-06-08 00:01:35', '2025-06-08 00:01:35'),
(94, 'WENDY ORTIZ RIVERA', NULL, 'Female', '2025-06-08 00:01:47', '2025-06-08 00:01:47'),
(95, 'DAMASO RAMIREZ ORTIZ', NULL, 'Male', '2025-06-08 00:02:17', '2025-06-08 00:02:17'),
(96, 'JESÚS DAVID LEAL GONZÁLEZ', NULL, 'Male', '2025-06-08 00:02:54', '2025-06-08 00:02:54'),
(97, 'PAOLA BETZABE HERNÁNDEZ ROBLEDO', '1949846', NULL, '2025-06-08 00:06:38', '2025-06-08 00:06:38'),
(98, 'JESÚS VALENTÍN GALINDO GONZÁLEZ', '2086320', NULL, '2025-06-08 00:08:01', '2025-06-08 00:08:01'),
(99, 'CHRISTIAN MAURICIO GAYTAN MASIAS', '1869720', NULL, '2025-06-08 00:08:27', '2025-06-08 00:08:27'),
(100, 'SOFIA TANAHIRI GUZMÁN DE LEÓN', '2071910', NULL, '2025-06-08 00:10:54', '2025-06-08 00:10:54'),
(101, 'ROXANA ABIGAIL MENSOZA GONZALEZ', '2132916', NULL, '2025-06-08 00:10:56', '2025-06-08 00:10:56'),
(102, 'CAROLINA URDIALES CARBAJAL', '1995271', NULL, '2025-06-08 00:11:29', '2025-06-08 00:11:29'),
(103, 'MARIA FERNANDA LOPEZ TORRES', '1907668', NULL, '2025-06-08 00:12:04', '2025-06-08 00:12:04'),
(104, 'MARIA ZAMORA GUZMAN', NULL, 'Female', '2025-06-08 00:13:38', '2025-06-08 00:13:38'),
(105, 'GILBERTO CARRERA MÉNDEZ', NULL, 'Male', '2025-06-08 00:13:39', '2025-06-08 00:13:39'),
(106, 'GILBERTO CARRERA ZAMORA', NULL, 'Male', '2025-06-08 00:13:53', '2025-06-08 00:13:53'),
(107, 'FANY CRUZ', NULL, 'Female', '2025-06-08 00:14:45', '2025-06-08 00:14:45'),
(108, 'ESTEFANY HERNÁNDEZ CRUZ', '1855839', NULL, '2025-06-08 00:14:59', '2025-06-08 00:14:59'),
(109, 'KAREN CRUZ', NULL, 'Female', '2025-06-08 00:15:08', '2025-06-08 00:15:08'),
(110, 'PAOLA CARVAJAL', '201265', NULL, '2025-06-08 00:15:20', '2025-06-08 00:15:20'),
(111, 'IGNACIO MARTINEZ GALVAN', NULL, 'Male', '2025-06-08 00:18:00', '2025-06-08 00:18:00'),
(112, 'ELIZABET RAMIREZ HERNABDEZ', NULL, 'Female', '2025-06-08 00:18:25', '2025-06-08 00:18:25'),
(113, 'VICTOR YAHAZIEL SANTILLAN CARRIZALES', '1951113', NULL, '2025-06-08 00:18:32', '2025-06-08 00:18:32'),
(114, 'IVAN MARTINEZ RAMIREZ', NULL, 'Male', '2025-06-08 00:18:41', '2025-06-08 00:18:41'),
(115, 'ABRIL MARTÍNEZ RAMÍREZ', NULL, 'Female', '2025-06-08 00:18:57', '2025-06-08 00:18:57'),
(116, 'SOFIA NARVAEZ MORALES', '2225450', NULL, '2025-06-08 00:19:18', '2025-06-08 00:19:18'),
(117, 'VALERIA NARVAEZ MORALES', '21107768', NULL, '2025-06-08 00:19:27', '2025-06-08 00:19:27'),
(118, 'ERICK ALEJANDRO REYES GARCIA', '2055804', NULL, '2025-06-08 00:19:35', '2025-06-08 00:19:35'),
(119, 'ALAN DE JESUS SALAZAR FLORES', NULL, 'Male', '2025-06-08 00:19:59', '2025-06-08 00:19:59'),
(120, 'CÉSAR YAIHR ZEPEDA OVALLE', '2111242', NULL, '2025-06-08 00:20:07', '2025-06-08 00:20:07'),
(121, 'ÓSCAR OSVALDO QUEZADA VÁZQUEZ', '1966171', NULL, '2025-06-08 00:20:37', '2025-06-08 00:20:37'),
(122, 'CARLOS DE JESÚS HIRTADA TORRES', '1963732', NULL, '2025-06-08 00:21:47', '2025-06-08 00:21:47'),
(123, 'MAXIMILIANO DEMENDIETA CABAZOS', '1967599', NULL, '2025-06-08 00:24:55', '2025-06-08 00:24:55'),
(124, 'MARIO DANIEL PÉREZ JIMÉNEZ', '2086041', NULL, '2025-06-08 00:25:37', '2025-06-08 00:25:37'),
(125, 'ELIA HERNÁNDEZ GARCÍA', NULL, 'Female', '2025-06-08 00:28:45', '2025-06-08 00:28:45'),
(126, 'CARLOS MAXIMILIA ROMO RAMIREZ', NULL, 'Male', '2025-06-08 00:29:15', '2025-06-08 00:29:15'),
(127, 'CARLOS ROMO PEÑA', NULL, 'Male', '2025-06-08 00:29:34', '2025-06-08 00:29:34'),
(128, 'CESARMARTINEZESPINOZA', NULL, 'Male', '2025-06-08 00:32:40', '2025-06-08 00:32:40'),
(129, 'YAHIR ASAEL LOZANO FRAIRE', NULL, 'Male', '2025-06-08 00:32:45', '2025-06-08 00:32:45'),
(130, 'ALEJANDROLARAELIZONDO', NULL, 'Male', '2025-06-08 00:32:57', '2025-06-08 00:32:57'),
(131, 'ROBERTO ARTURO RUIZ OCHOA', NULL, 'Male', '2025-06-08 00:32:59', '2025-06-08 00:32:59'),
(132, 'RAUL ELIAZAR HERNÁNDEZ CAMPOS', NULL, 'Male', '2025-06-08 00:33:11', '2025-06-08 00:33:11'),
(133, 'TERESA YASMIN URIBE LOPEZ', NULL, 'Female', '2025-06-08 00:33:40', '2025-06-08 00:33:40'),
(134, 'JOAE KUIS NUNEZ GARIBAI', NULL, 'Male', '2025-06-08 00:33:56', '2025-06-08 00:33:56'),
(135, 'YAMIL ENRIQUE YANIZ MORALES', NULL, 'Male', '2025-06-08 00:34:09', '2025-06-08 00:34:09'),
(136, 'JACOB MISAEL RODRIGEZ MORALES', '1907926', NULL, '2025-06-08 00:39:06', '2025-06-08 00:39:06'),
(137, 'DAVID ARIAS DE LA VEGA', '2009810', NULL, '2025-06-08 00:40:52', '2025-06-08 00:40:52'),
(138, 'DULCE CONTRERAS', NULL, 'Female', '2025-06-08 00:41:59', '2025-06-08 00:41:59'),
(139, 'LETICIA LEAL', NULL, 'Female', '2025-06-08 00:42:16', '2025-06-08 00:42:16'),
(140, 'GERARDO MENDOZA ALONSO', NULL, 'Female', '2025-06-08 00:42:45', '2025-06-08 00:42:45'),
(141, 'HECTOR JAIME GARZA ARRIAGA', NULL, 'Male', '2025-06-08 00:43:25', '2025-06-08 00:43:25'),
(142, 'PAOLA ALESSANDRA BARRAZA TAMEZ', '2051603', NULL, '2025-06-08 00:44:53', '2025-06-08 00:44:53'),
(143, 'MAYRA TAMEZ', NULL, 'Female', '2025-06-08 00:45:01', '2025-06-08 00:45:01'),
(144, 'WINSTON CANTU CARDOSO', NULL, 'Female', '2025-06-08 00:45:40', '2025-06-08 00:45:40'),
(145, 'REYNA CORONADO REYEZ', NULL, 'Female', '2025-06-08 00:45:58', '2025-06-08 00:45:58'),
(146, 'SCARLET VANESA CANTI CORONADO', NULL, 'Female', '2025-06-08 00:46:11', '2025-06-08 00:46:11'),
(147, 'JOCK REY REYES AGUIRRE', '2046701', NULL, '2025-06-08 00:48:19', '2025-06-08 00:48:19'),
(148, 'GERARDO JARED RUIZ GONZALEZ', '2092220', NULL, '2025-06-08 00:51:56', '2025-06-08 00:51:56'),
(149, 'JUAN EDUARDO SILVA DE LEON', '1960338', NULL, '2025-06-08 00:52:22', '2025-06-08 00:52:22'),
(150, 'MIREYA FLORES HERNANDEZ', NULL, 'Female', '2025-06-08 00:53:32', '2025-06-08 00:53:32'),
(151, 'MARIA GUADALUPE TORRES', NULL, 'Female', '2025-06-08 00:54:26', '2025-06-08 00:54:26'),
(152, 'YULIANA GUADALUPE NUÑEZ TIRREZ', NULL, 'Female', '2025-06-08 00:54:29', '2025-06-08 00:54:29'),
(153, 'HELGA LINA RANGEL ZAMORA', NULL, 'Female', '2025-06-08 00:55:02', '2025-06-08 00:55:02'),
(154, 'DIEGO CERDA PEREZ', '2117704', NULL, '2025-06-08 00:57:30', '2025-06-08 00:57:30'),
(155, 'BRYAN ALEJANDRO TORRES SANTOS', '2082941', NULL, '2025-06-08 01:01:46', '2025-06-08 01:01:46'),
(156, 'JOSE CARLOS CORONADO ROSAS', '1875161', NULL, '2025-06-08 01:04:12', '2025-06-08 01:04:12'),
(157, 'BRANDON YAHIR FLORES GARCIA', '2037084', NULL, '2025-06-08 01:05:23', '2025-06-08 01:05:23'),
(158, 'OZIEL REBOLLEDO PEREZ', '1871974', NULL, '2025-06-08 01:06:44', '2025-06-08 01:06:44'),
(159, 'ERIC ZAHID LOPEZ PARRA', '2002637', NULL, '2025-06-08 01:07:56', '2025-06-08 01:07:56'),
(160, 'CRISITIAN EFAIN HERNANDEZ ROMO', '1953991', NULL, '2025-06-08 01:08:58', '2025-06-08 01:08:58'),
(161, 'JUAN ALBERTO VARELA AMARO', '1950339', NULL, '2025-06-08 01:12:08', '2025-06-08 01:12:08'),
(162, 'PATRICIA PEREZ', NULL, 'Female', '2025-06-08 01:14:00', '2025-06-08 01:14:00'),
(163, 'ANDRE PONZE PEREZ', NULL, 'Female', '2025-06-08 01:14:09', '2025-06-08 01:14:09'),
(164, 'EMILIANO OCHOA', NULL, 'Male', '2025-06-08 01:14:25', '2025-06-08 01:14:25'),
(165, 'NICOLAS GALLEGOS', '2037751', NULL, '2025-06-08 01:15:46', '2025-06-08 01:15:46'),
(166, 'RICARDO PONCE DE LEON HERRERA', '1941446', NULL, '2025-06-08 01:16:28', '2025-06-08 01:16:28'),
(167, 'VANESS DANIELA VERDE SOSA', NULL, 'Female', '2025-06-08 01:18:01', '2025-06-08 01:18:01'),
(168, 'JUAN PABLO ASENSIO BUSTOS', '2133002', NULL, '2025-06-08 01:18:03', '2025-06-08 01:18:03'),
(169, 'JULIAN ALEJANDRO OBREGON DELGADO', '2050861', NULL, '2025-06-08 01:18:20', '2025-06-08 01:18:20'),
(170, 'MIGUEL ANGEL FERDANDEZ DEL BOSQUE', '1862972', NULL, '2025-06-08 01:18:25', '2025-06-08 01:18:25'),
(171, 'ANIBAL BARRAZA RENTERIA', NULL, 'Male', '2025-06-08 01:19:45', '2025-06-08 01:19:45'),
(172, 'JESUS ALEJANDRO MEZA SOLIS', '1722653', NULL, '2025-06-08 01:20:50', '2025-06-08 01:20:50'),
(173, 'PATRICIA RUBI HERNANDEZ CEPEDA', '1853692', NULL, '2025-06-08 01:20:54', '2025-06-08 01:20:54'),
(174, 'DAVID AYALA ACOSTA', '1961794', NULL, '2025-06-08 01:23:25', '2025-06-08 01:23:25'),
(175, 'REBECA EVANGELISTA JASSO', '1972507', NULL, '2025-06-08 01:23:38', '2025-06-08 01:23:38'),
(176, 'ANGEL MANUEL SUSTAITA NAVARRO', '2104791', NULL, '2025-06-08 01:27:16', '2025-06-08 01:27:16'),
(177, 'VERONICA VAZQUEZ GARCIA', NULL, 'Female', '2025-06-08 01:30:51', '2025-06-08 01:30:51'),
(178, 'CARLOS ALBERTO PECINA AGUIRRE', '2025018', NULL, '2025-06-08 01:33:27', '2025-06-08 01:33:27'),
(179, 'EDMUNDO GOMEZ GONZALEZ', NULL, 'Male', '2025-06-08 01:34:03', '2025-06-08 01:34:03'),
(180, 'JOSUE ROLANDO CARREON GUADIAN', '2044966', NULL, '2025-06-08 01:38:26', '2025-06-08 01:38:26'),
(181, 'JESUS ALFONSO AGUIRRE TIRADO', '1990019', NULL, '2025-06-08 01:39:02', '2025-06-08 01:39:02'),
(182, 'MIRZA VALERIA RODRIGUEZ GUIL', '1936721', NULL, '2025-06-08 01:39:08', '2025-06-08 01:39:08'),
(183, 'DIEGO GONZALES', '1904487', NULL, '2025-06-08 01:40:03', '2025-06-08 01:40:03'),
(184, 'SEAN AXL GARCIA PEÑA', '1887909', NULL, '2025-06-08 01:40:25', '2025-06-08 01:40:25'),
(185, 'ANGEL GABREIL ESCAMILLA FLORES', '1656316', NULL, '2025-06-08 01:41:18', '2025-06-08 01:41:18'),
(186, 'SAMUEL MARTINEZ TORRES', '2026718', NULL, '2025-06-08 01:43:05', '2025-06-08 01:43:05'),
(187, 'SILVIA AIMEE BRIONES CHAVEZ', NULL, 'Female', '2025-06-08 01:43:58', '2025-06-08 01:43:58'),
(188, 'JUAN MANUEL ARANDA ROJA L', '2044804', NULL, '2025-06-08 01:44:11', '2025-06-08 01:44:11'),
(189, 'JONATHAN ALEJANDRO GAEZA BANDA', NULL, 'Male', '2025-06-08 01:49:17', '2025-06-08 01:49:17'),
(190, 'DANIA MARIA CAMPOS MORALES', NULL, 'Female', '2025-06-08 01:49:27', '2025-06-08 01:49:27'),
(191, 'OSCAR RONALDO ROMAN REGALADO', '2099302', NULL, '2025-06-08 01:51:59', '2025-06-08 01:51:59'),
(192, 'JULIAN EMMANUEL KIROGA RODRIGUEZ', '2049171', NULL, '2025-06-08 01:53:24', '2025-06-08 01:53:24'),
(193, 'LUNA LIZETT GARCIA NAJEREA', '2039060', NULL, '2025-06-08 01:54:00', '2025-06-08 01:54:00'),
(194, 'MARIANA ORTIZ MARTÍNEZ', NULL, 'Female', '2025-06-08 01:54:04', '2025-06-08 01:54:04'),
(195, 'MIGUEL ALBERTO MATA LARA', '2092749', NULL, '2025-06-08 01:54:42', '2025-06-08 01:54:42'),
(196, 'MELISSA FERNANDA GARZÓN GONZÁLEZ', '1998926', NULL, '2025-06-08 02:05:40', '2025-06-08 02:05:40'),
(197, 'ALAN EDUARDO ARMENDÁRIZ MONTIVEROS', '1822871', NULL, '2025-06-08 02:06:19', '2025-06-08 02:06:19'),
(198, 'RAUL IBARRA', NULL, 'Male', '2025-06-08 02:07:06', '2025-06-08 02:07:06'),
(199, 'ANA MARIA ESPINOZA', NULL, 'Female', '2025-06-08 02:07:15', '2025-06-08 02:07:15'),
(200, 'MATIAS IBARRA', NULL, 'Male', '2025-06-08 02:07:24', '2025-06-08 02:07:24'),
(201, 'SARA MARIA IBARRA', NULL, 'Female', '2025-06-08 02:07:33', '2025-06-08 02:07:33'),
(202, 'HEIDI ABIGAIL AGUILAR HORTIAGUEZ', '2047850', NULL, '2025-06-08 02:09:06', '2025-06-08 02:09:06'),
(203, 'ALEXIA MARIA RODRIGUEZ DEGOLLADO', '2063723', NULL, '2025-06-08 02:09:23', '2025-06-08 02:09:23'),
(204, 'MAURICIO ALEJANDRO GUZMAN GONZALEZ', NULL, 'Male', '2025-06-08 02:09:37', '2025-06-08 02:09:37'),
(205, 'JESUS GARZON', NULL, 'Male', '2025-06-08 02:11:12', '2025-06-08 02:11:12'),
(206, 'JESUS GARZON', NULL, 'Female', '2025-06-08 02:11:18', '2025-06-08 02:11:18'),
(207, 'CECILIA GONZÁLEZ', NULL, 'Female', '2025-06-08 02:11:27', '2025-06-08 02:11:27'),
(208, 'JONATHAN JACOB', NULL, 'Male', '2025-06-08 02:14:50', '2025-06-08 02:14:50'),
(209, 'ISIDORO FELIX RIOS RESA', NULL, 'Male', '2025-06-08 02:17:52', '2025-06-08 02:17:52'),
(210, 'ANA VERÓNICA SIFUENTES ARÁMBULA', NULL, 'Female', '2025-06-08 02:18:04', '2025-06-08 02:18:04'),
(211, 'HUMBERTO ROJAS', NULL, 'Male', '2025-06-08 02:19:06', '2025-06-08 02:19:06'),
(212, 'BLANCA RANGEL', NULL, 'Female', '2025-06-08 02:19:14', '2025-06-08 02:19:14'),
(213, 'CARLOS ALEZANDER ROJAS RANGEL', '2143965', NULL, '2025-06-08 02:19:25', '2025-06-08 02:19:25'),
(214, 'BITIA MENDEZ SANCHEZ', NULL, 'Female', '2025-06-08 02:19:34', '2025-06-08 02:19:34'),
(215, 'LIZBETH SALAS MALDONADO', '1664132', NULL, '2025-06-08 02:22:33', '2025-06-08 02:22:33'),
(216, 'VANESSA VALDIVIA GARCIA', NULL, 'Male', '2025-06-08 02:27:49', '2025-06-08 02:27:49'),
(217, 'YASSIEL DE LEON BARRIONUEVO', NULL, 'Male', '2025-06-08 02:27:55', '2025-06-08 02:27:55'),
(218, 'VERONICA ELIZABETH GONZALEZ', NULL, 'Female', '2025-06-08 02:28:02', '2025-06-08 02:28:02'),
(219, 'ROSSBELT FERNANDO TAPIA DE LEON', NULL, 'Male', '2025-06-08 02:28:16', '2025-06-08 02:28:16'),
(220, 'RAUL TADEO DAVILA CASTRO', '1947215', NULL, '2025-06-08 02:28:28', '2025-06-08 02:28:28'),
(221, 'YARELI YAMILETH RAMIREZ GALVAN', NULL, 'Female', '2025-06-08 02:29:05', '2025-06-08 02:29:05'),
(222, 'LUIS TOVAR AGUILAR', NULL, 'Male', '2025-06-08 02:29:09', '2025-06-08 02:29:09'),
(223, 'VICTOR OVALLE', NULL, 'Male', '2025-06-08 02:30:50', '2025-06-08 02:30:50'),
(224, 'CSRLOS ISACC CUELLAR DE LA ROSA', NULL, 'Male', '2025-06-08 02:35:12', '2025-06-08 02:35:12'),
(225, 'RICARDO FAZ VILLARREAL', NULL, 'Male', '2025-06-08 02:37:52', '2025-06-08 02:37:52'),
(226, 'ALDO PARTIDA DAVILA', NULL, 'Male', '2025-06-08 02:39:54', '2025-06-08 02:39:54'),
(227, 'ANDREA GUTIERREZ FERNSNDEZ', '2225482', NULL, '2025-06-08 02:42:00', '2025-06-08 02:42:00'),
(228, 'SILVIA PAULINA HERNANDEZ LUEVANO', NULL, 'Female', '2025-06-08 02:42:15', '2025-06-08 02:42:15'),
(229, 'MARCELA GUTIERREZ HERNANDEZ', NULL, 'Female', '2025-06-08 02:42:24', '2025-06-08 02:42:24'),
(230, 'ELIUD JUSREZ ORTEGS', NULL, 'Female', '2025-06-08 02:43:41', '2025-06-08 02:43:41'),
(231, 'IVONNE HERNANDEZ', NULL, 'Female', '2025-06-08 02:45:09', '2025-06-08 02:45:09'),
(232, 'PABLO QUIHUI', NULL, 'Male', '2025-06-08 02:45:32', '2025-06-08 02:45:32'),
(233, 'DANTE OMAR FERNANDEZ CAVAZOS', NULL, 'Male', '2025-06-08 02:46:08', '2025-06-08 02:46:08'),
(234, 'CLAUDIA MANCILLA', NULL, 'Female', '2025-06-08 02:46:14', '2025-06-08 02:46:14'),
(235, 'MIGUELL HORACIO FERNANDEZ MANCILLA', '2115867', NULL, '2025-06-08 02:46:44', '2025-06-08 02:46:44'),
(236, 'CARLOS RIOS', '1898744', NULL, '2025-06-08 02:47:14', '2025-06-08 02:47:14'),
(237, 'MARIA FERNANDA AMADOR PUENTE', '2022832', NULL, '2025-06-08 02:47:17', '2025-06-08 02:47:17'),
(238, 'FERNANDA ELIZABETH HERRERO CARIZALEZ', '2048726', NULL, '2025-06-08 02:48:23', '2025-06-08 02:48:23'),
(239, 'JAZIEL ALAN BALDERAS ESCOBEDO', '1915016', NULL, '2025-06-08 02:48:23', '2025-06-08 02:48:23'),
(240, 'JAIRO MORALES', '2047839', NULL, '2025-06-08 02:48:41', '2025-06-08 02:48:41'),
(241, 'ISABELA MARTINEZ CORNEJO', '2062746', NULL, '2025-06-08 02:48:48', '2025-06-08 02:48:48'),
(242, 'GANDHI EMMANUEL WILLARS RODRIGUEZ', '2086663', NULL, '2025-06-08 02:51:13', '2025-06-08 02:51:13'),
(243, 'JOSE ARTURO RODRIGIEZ CAVAZOS', NULL, 'Male', '2025-06-08 02:53:01', '2025-06-08 02:53:01'),
(244, 'ARTURO RODRIGUEZ', NULL, 'Male', '2025-06-08 02:53:03', '2025-06-08 02:53:03'),
(245, 'LAURA CAVAZOS', NULL, 'Female', '2025-06-08 02:53:16', '2025-06-08 02:53:16'),
(246, 'ESTEFANI HERNANDEZ CRUZ', '1855838', NULL, '2025-06-08 02:54:22', '2025-06-08 02:54:22'),
(247, 'RICARDO ADIEL JACOBO SAN JUAN', '1915471', NULL, '2025-06-08 02:54:36', '2025-06-08 02:54:36'),
(248, 'VALERIA GUADALUPE VALLEJO RAMIREZ', '1852002', NULL, '2025-06-08 02:56:20', '2025-06-08 02:56:20'),
(249, 'JOSEFINA RAMIREZ ZANDOVAL', NULL, 'Female', '2025-06-08 02:56:30', '2025-06-08 02:56:30'),
(250, 'RAUL GERARDO', '2009303', NULL, '2025-06-08 02:56:47', '2025-06-08 02:56:47'),
(251, 'JUAN CARLOS BETANCURT', NULL, 'Male', '2025-06-08 02:57:10', '2025-06-08 02:57:10'),
(252, 'CARLOS ADRIAN  BETAN COUR', NULL, 'Male', '2025-06-08 02:57:22', '2025-06-08 02:57:22'),
(253, 'ADRIANA SAMANIEGO GOMEZ', NULL, 'Female', '2025-06-08 02:57:27', '2025-06-08 02:57:27'),
(254, 'ABIGAIL BETAN COHLT', NULL, 'Female', '2025-06-08 02:57:36', '2025-06-08 02:57:36'),
(255, 'RUY LOPEZ', NULL, 'Male', '2025-06-08 02:57:41', '2025-06-08 02:57:41'),
(256, 'GILBERTO GUTIERREZ', NULL, 'Male', '2025-06-08 02:58:52', '2025-06-08 02:58:52'),
(257, 'PAOLA MICHELLE GUTIERREZ ALVAREZ', '2188765', NULL, '2025-06-08 02:59:42', '2025-06-08 02:59:42'),
(258, 'KAROL COBOS GUERRERO', NULL, 'Female', '2025-06-08 03:00:01', '2025-06-08 03:00:01'),
(259, 'ISRAEL COBOS GUERRERO', '2225458', NULL, '2025-06-08 03:00:08', '2025-06-08 03:00:08'),
(260, 'ELVIA JAZMÍN ARRIAGA MEDRANO', NULL, 'Female', '2025-06-08 03:06:08', '2025-06-08 03:06:08'),
(261, 'LUIS ÁNGEL ARIZPE AGUIRRE', NULL, 'Male', '2025-06-08 03:06:28', '2025-06-08 03:06:28'),
(262, 'CARLOS SEDILLO CUEVAS', NULL, 'Male', '2025-06-08 03:07:08', '2025-06-08 03:07:08'),
(263, 'ULICES ALANIS CASTILLO', NULL, 'Male', '2025-06-08 03:07:21', '2025-06-08 03:07:21'),
(264, 'NIURKA MADELINE MONTELONGO DAMEZ', '2076364', NULL, '2025-06-08 03:07:22', '2025-06-08 03:07:22'),
(265, 'DANIEL CEDILLO CHÁVEZ', NULL, 'Male', '2025-06-08 03:07:54', '2025-06-08 03:07:54'),
(266, 'MARÍA DE LA LUZ CHARLES LIZAMA', NULL, 'Female', '2025-06-08 03:08:09', '2025-06-08 03:08:09'),
(267, 'DIEGO SANCHEZ ARRIAGA', '1910417', NULL, '2025-06-08 03:12:49', '2025-06-08 03:12:49'),
(268, 'JOSE MANUEL BUSTOS', '1947674', NULL, '2025-06-08 03:12:52', '2025-06-08 03:12:52'),
(269, 'SAMANTHA GARZA CORONADO', '1974038', NULL, '2025-06-08 03:13:08', '2025-06-08 03:13:08'),
(270, 'ALEXIS HADED GALLEGOS MORALEZ', '2076283', NULL, '2025-06-08 03:13:09', '2025-06-08 03:13:09'),
(271, 'JOSE GUADALUPE VALLEJO', NULL, 'Male', '2025-06-08 03:14:20', '2025-06-08 03:14:20'),
(272, 'DANIEL ALEJANDRO VALLEJO RAMIREZ', NULL, 'Male', '2025-06-08 03:14:21', '2025-06-08 03:14:21'),
(273, 'JOSE ALEJANDRO BASQUEZ HERNANDEZ', NULL, 'Male', '2025-06-08 03:22:32', '2025-06-08 03:22:32'),
(274, 'EMMANUEL CONTRERAS', NULL, 'Male', '2025-06-08 03:23:18', '2025-06-08 03:23:18'),
(275, 'ADRIANA SALAZAR GOMEZ', '2062772', NULL, '2025-06-08 03:23:50', '2025-06-08 03:23:50'),
(276, 'ANGEL ANTONIO GONZALEZ TORRES', '2054036', NULL, '2025-06-08 03:24:57', '2025-06-08 03:24:57'),
(277, 'ALDO SEGOVIANO HERNÁNDEZ', '2140780', NULL, '2025-06-08 03:25:44', '2025-06-08 03:25:44'),
(278, 'GAEL HERMANDO MARTINEZ MALDONADO', NULL, 'Male', '2025-06-08 03:26:08', '2025-06-08 03:26:08'),
(279, 'MISFELIPE  CASTAÑEDA LOMAS', NULL, 'Male', '2025-06-08 03:27:53', '2025-06-08 03:27:53'),
(280, 'LUIS ANTONIO DE LEON PALOMARES', NULL, 'Male', '2025-06-08 03:28:01', '2025-06-08 03:28:01'),
(281, 'BRENDA LIZETH HERNANDEZ RODRIGUEZ', NULL, 'Female', '2025-06-08 03:28:14', '2025-06-08 03:28:14'),
(282, 'RICARDO GARZA VASQUES', NULL, 'Male', '2025-06-08 03:30:06', '2025-06-08 03:30:06'),
(283, 'KARINA VAZQUEZ', NULL, 'Female', '2025-06-08 03:30:07', '2025-06-08 03:30:07'),
(284, 'ERNESTO ANGEL SERVIL MARTINEZ', NULL, 'Male', '2025-06-08 03:30:21', '2025-06-08 03:30:21'),
(285, 'JESUS EDUARDO AMECA RESENDEZ', NULL, 'Male', '2025-06-08 03:31:10', '2025-06-08 03:31:10'),
(286, 'LUIS DAVID TREVIÑO OLVERA', '1990122', NULL, '2025-06-08 03:33:42', '2025-06-08 03:33:42'),
(287, 'DIEGO ISMAEL ESPINOSA RAMOS', '1814955', NULL, '2025-06-08 03:35:24', '2025-06-08 03:35:24'),
(288, 'DIEGO GARZA MELENDEZ', '2007283', NULL, '2025-06-08 03:36:56', '2025-06-08 03:36:56'),
(289, 'ATZEL SAIR CHARCAS ESCALERA', '1902229', NULL, '2025-06-08 03:38:51', '2025-06-08 03:38:51'),
(290, 'MILDRERH DENISSE BAEZ ALVIZO', NULL, 'Female', '2025-06-08 03:38:57', '2025-06-08 03:38:57'),
(291, 'JUAN MANUEL VALENZUELA ABREGON', NULL, 'Male', '2025-06-08 03:39:07', '2025-06-08 03:39:07'),
(292, 'LUIS ANGEL MARTINEZ CUETO', NULL, 'Male', '2025-06-08 03:39:25', '2025-06-08 03:39:25'),
(293, 'ABIGAIL GARCIA AGUIRRE', NULL, 'Female', '2025-06-08 03:39:25', '2025-06-08 03:39:25'),
(294, 'ERICK GARCIA DOMINGUEZ', '2271363', NULL, '2025-06-08 03:39:53', '2025-06-08 03:39:53'),
(295, 'JUAN DANILE JIMENEZ NUÑEZ', NULL, 'Male', '2025-06-08 03:40:04', '2025-06-08 03:40:04'),
(296, 'JOAQUIN GARCIA', '1905066', NULL, '2025-06-08 03:40:45', '2025-06-08 03:40:45'),
(297, 'JORGE ARMANDO', '1964304', NULL, '2025-06-08 03:40:58', '2025-06-08 03:40:58'),
(298, 'NAHOMI ESTEFANIA SOTO MENDOZA', NULL, 'Female', '2025-06-08 03:43:37', '2025-06-08 03:43:37'),
(299, 'RODRIGO MENDEZ', NULL, 'Male', '2025-06-08 03:45:24', '2025-06-08 03:45:24'),
(300, 'PEDRO ENRIQUE MORENO LOPES', '2086131', NULL, '2025-06-08 03:48:51', '2025-06-08 03:48:51'),
(301, 'DANIEL ALEJANDRO LOPEZ CASTRI', NULL, 'Male', '2025-06-08 03:52:18', '2025-06-08 03:52:18'),
(302, 'KAREN CECILIA SANCHEZ SALAZAR', NULL, 'Female', '2025-06-08 03:53:50', '2025-06-08 03:53:50'),
(303, 'MAURICIO GARCIA DEL BOSQUE', NULL, 'Male', '2025-06-08 03:54:02', '2025-06-08 03:54:02'),
(304, 'JOSE ROBERTO VARGAS SOSA', NULL, 'Male', '2025-06-08 04:00:15', '2025-06-08 04:00:15'),
(305, 'JUAN YAHIR PEREZ DEL ROSAL', NULL, 'Male', '2025-06-08 04:00:35', '2025-06-08 04:00:35'),
(306, 'XIMENA RODRIGUEZ PUENTE', '2050044', NULL, '2025-06-08 04:05:59', '2025-06-08 04:05:59'),
(307, 'KARINA ELIZABETH SALAS LUCIO', '2026057', NULL, '2025-06-08 04:06:18', '2025-06-08 04:06:18'),
(308, 'ALMA DANIELA GARZA PALOMINO', '2001476', NULL, '2025-06-08 04:07:11', '2025-06-08 04:07:11'),
(309, 'JOSUE ADRIAN CASTRO PEÑA', '1850768', NULL, '2025-06-08 04:14:33', '2025-06-08 04:14:33'),
(310, 'SCARLETT GRACIANO MEDINA', NULL, 'Female', '2025-06-08 04:16:11', '2025-06-08 04:16:11'),
(311, 'JOSUE EMILIANO ESPINOZA GUTIERREZ', NULL, 'Male', '2025-06-08 04:17:16', '2025-06-08 04:17:16'),
(312, 'JOANA LIZBETH SAAVEDRA GAVANA', '2008435', NULL, '2025-06-08 04:19:00', '2025-06-08 04:19:00'),
(313, 'DANIEL ALFONSO BARBADO GUTIERREZ', NULL, 'Male', '2025-06-08 04:19:18', '2025-06-08 04:19:18'),
(314, 'GUILLERMO LUNA HERNÁNDEZ', NULL, 'Male', '2025-06-08 04:23:16', '2025-06-08 04:23:16'),
(315, 'JUAN PABLO MUÑOS GARZA', NULL, 'Male', '2025-06-08 04:23:16', '2025-06-08 04:23:16'),
(316, 'JMLUIS RODOLFO MATEO ANTONIO', NULL, 'Male', '2025-06-08 04:23:30', '2025-06-08 04:23:30'),
(317, 'PAOLA GUAYO', NULL, 'Female', '2025-06-08 04:23:33', '2025-06-08 04:23:33'),
(318, 'ROSA ESQUIVEL DELGADO', NULL, 'Female', '2025-06-08 04:23:46', '2025-06-08 04:23:46'),
(319, 'MAIRA FUSDALUPE MARTINEZ CABELL', NULL, 'Female', '2025-06-08 04:24:48', '2025-06-08 04:24:48'),
(320, 'SOL ALEJANDRO ABREGO MARTÍNEZ', NULL, 'Male', '2025-06-08 04:24:53', '2025-06-08 04:24:53'),
(321, 'SOL ABREGO GARZA', NULL, 'Male', '2025-06-08 04:24:59', '2025-06-08 04:24:59'),
(322, 'DERYA VICTORIA CARDONA PEREZ', '1895889', NULL, '2025-06-08 04:26:23', '2025-06-08 04:26:23'),
(323, 'ROMINA ELIZABET GERRERO RUIZ', NULL, 'Female', '2025-06-08 04:28:18', '2025-06-08 04:28:18'),
(324, 'JESUS ROBEN RUIZ ORTIZ', '1604226', NULL, '2025-06-08 04:28:21', '2025-06-08 04:28:21'),
(325, 'EUGENIA RAMIREZ', NULL, 'Female', '2025-06-08 04:29:24', '2025-06-08 04:29:24'),
(326, 'GABRIEL SALAS', NULL, 'Male', '2025-06-08 04:29:32', '2025-06-08 04:29:32'),
(327, 'KARLA PAOLA MARTÍNEZ SEGURA', NULL, 'Female', '2025-06-08 04:30:40', '2025-06-08 04:30:40'),
(328, 'KARIA ALEJANDRA MARTINEZ SEGURA', NULL, 'Female', '2025-06-08 04:30:55', '2025-06-08 04:30:55'),
(329, 'EDGAR ALEJANDO CRUZ SALAZAR', NULL, 'Male', '2025-06-08 04:35:09', '2025-06-08 04:35:09'),
(330, 'HAZIEL RAMÓN SALINAS ARISTA', '2271390', NULL, '2025-06-08 04:35:24', '2025-06-08 04:35:24'),
(331, 'REYNA XIMENA RODRÍGUEZ ÁVILA', '1957662', NULL, '2025-06-08 04:36:34', '2025-06-08 04:36:34'),
(332, 'ANDREA GRAMILLO', NULL, 'Female', '2025-06-08 04:39:37', '2025-06-08 04:39:37'),
(333, 'EDGAR IBARRA', NULL, 'Male', '2025-06-08 04:39:50', '2025-06-08 04:39:50'),
(334, 'FRANCISCO CORRAL', NULL, 'Male', '2025-06-08 04:40:04', '2025-06-08 04:40:04'),
(335, 'VÍCTOR ZAPATA', NULL, 'Male', '2025-06-08 04:40:22', '2025-06-08 04:40:22'),
(336, 'HUGO CABALLERO', NULL, 'Male', '2025-06-08 04:40:38', '2025-06-08 04:40:38'),
(337, 'STACY CHAPA', '2048283', NULL, '2025-06-08 04:43:11', '2025-06-08 04:43:11'),
(338, 'PRISCILA BERENICE LUNA DELGADO', '2048968', NULL, '2025-06-08 04:43:29', '2025-06-08 04:43:29'),
(339, 'CESAR ALEXANDO GUERRA GONZÁLEZ', '1917267', NULL, '2025-06-08 04:47:42', '2025-06-08 04:47:42'),
(340, 'CAROLINA ESCOBEDO RUBIO', NULL, 'Female', '2025-06-08 04:50:20', '2025-06-08 04:50:20'),
(341, 'JENNIFER RIOS', NULL, 'Female', '2025-06-08 04:53:46', '2025-06-08 04:53:46'),
(342, 'RAUL GÓMEZ', NULL, 'Male', '2025-06-08 04:53:55', '2025-06-08 04:53:55'),
(343, 'CHRISTOPHER RIOS', NULL, 'Male', '2025-06-08 04:54:07', '2025-06-08 04:54:07'),
(344, 'JONATHAN RIOS', NULL, 'Male', '2025-06-08 04:54:14', '2025-06-08 04:54:14'),
(345, 'KAREN SALAS', NULL, 'Female', '2025-06-08 04:58:28', '2025-06-08 04:58:28'),
(346, 'OMAR EDUARDO GARCÍA MARTÍNEZ', '1738395', NULL, '2025-06-08 04:59:01', '2025-06-08 04:59:01'),
(347, 'ISAAC ESPINOZA MORALES', NULL, 'Male', '2025-06-08 05:01:27', '2025-06-08 05:01:27'),
(348, 'MYRNA EDITH TREVIÑO FLORES', NULL, 'Female', '2025-06-08 05:06:38', '2025-06-08 05:06:38'),
(349, 'GARIEL HERNANDEZ', NULL, 'Male', '2025-06-08 05:06:50', '2025-06-08 05:06:50'),
(350, 'SANTIAGO DANIEL HERNANDEZ TREVIÑO', NULL, 'Male', '2025-06-08 05:07:14', '2025-06-08 05:07:14'),
(351, 'JESUS POUDA DEHEZA', NULL, 'Male', '2025-06-08 05:15:13', '2025-06-08 05:15:13'),
(352, 'DIEGO GUILLERMO REYNA RAMIREZ', NULL, 'Male', '2025-06-08 05:19:32', '2025-06-08 05:19:32'),
(353, 'JOSE ARMANDO CORREA', NULL, 'Male', '2025-06-08 05:20:28', '2025-06-08 05:20:28'),
(354, 'CARLOS YAHIR ARTEAGA', NULL, 'Male', '2025-06-08 05:20:41', '2025-06-08 05:20:41'),
(355, 'ALAN JAVIER RODRIGUEZ SANCHEZ', NULL, 'Male', '2025-06-08 05:21:01', '2025-06-08 05:21:01'),
(356, 'LUNA BARRERA', NULL, 'Female', '2025-06-08 05:24:10', '2025-06-08 05:24:10'),
(357, 'BEATRIZ JIMENEZ', NULL, 'Female', '2025-06-08 05:24:34', '2025-06-08 05:24:34'),
(358, 'ADRIAN EMANUEL CORTEZ', '2057096', NULL, '2025-06-08 05:30:12', '2025-06-08 05:30:12'),
(359, 'GABRIELA MONSERRAT VAZQUES', NULL, 'Female', '2025-06-08 05:31:35', '2025-06-08 05:31:35'),
(360, 'JOSE HERNANDEZ', '2006377', NULL, '2025-06-08 05:31:55', '2025-06-08 05:31:55'),
(361, 'HERNESTO ADRIAN', NULL, 'Male', '2025-06-08 05:32:23', '2025-06-08 05:32:23'),
(362, 'CAROLINA RUBI ARMASS GARCIA SANCHEZ', NULL, 'Female', '2025-06-08 05:32:44', '2025-06-08 05:32:44'),
(363, 'MAYELA JUDITH BRIONES NUÑEZ', '1903431', NULL, '2025-06-08 05:34:15', '2025-06-08 05:34:15'),
(364, 'JOSHUA TORRES', '2048689', NULL, '2025-06-08 05:35:21', '2025-06-08 05:35:21'),
(365, 'EDMUNDO CULLEO ARGON', '2139991', NULL, '2025-06-08 05:38:05', '2025-06-08 05:38:05'),
(366, 'CLAUDIA LUNA', NULL, 'Female', '2025-06-08 05:38:15', '2025-06-08 05:38:15'),
(367, 'ISAAC DIEGO LUNA', NULL, 'Male', '2025-06-08 05:38:28', '2025-06-08 05:38:28'),
(368, 'SERGIO TORRES', NULL, 'Male', '2025-06-08 05:38:50', '2025-06-08 05:38:50'),
(369, 'HECTRO TORRES', NULL, 'Male', '2025-06-08 05:38:59', '2025-06-08 05:38:59'),
(370, 'CARMEN GONZALES', NULL, 'Female', '2025-06-08 05:39:08', '2025-06-08 05:39:08'),
(371, 'HANNA TORRES', NULL, 'Female', '2025-06-08 05:39:18', '2025-06-08 05:39:18'),
(372, 'KEYLA OCCURA', '2125979', NULL, '2025-06-08 05:40:32', '2025-06-08 05:40:32'),
(373, 'CARLOS RANGEL', NULL, 'Male', '2025-06-08 05:41:04', '2025-06-08 05:41:04'),
(374, 'EVELYN VILLANUEVA', '2173456', NULL, '2025-06-08 05:41:37', '2025-06-08 05:41:37'),
(375, 'ERICKA LILIANA', NULL, 'Female', '2025-06-08 05:42:13', '2025-06-08 05:42:13'),
(376, 'FERNANDO GONZALEZ', NULL, 'Male', '2025-06-08 05:42:26', '2025-06-08 05:42:26'),
(377, 'CAROL HERNANDEZ', '1816779', NULL, '2025-06-08 05:43:57', '2025-06-08 05:43:57'),
(378, 'DAVID HERNANDEZ', NULL, 'Male', '2025-06-08 05:44:10', '2025-06-08 05:44:10'),
(379, 'ALAN CARRIZALES', '1897486', NULL, '2025-06-08 05:46:45', '2025-06-08 05:46:45'),
(380, 'MARIA TERESA GARCÍA', NULL, 'Female', '2025-06-08 05:47:05', '2025-06-08 05:47:05'),
(381, 'ISMAEL EDEZMA', NULL, 'Male', '2025-06-08 05:47:16', '2025-06-08 05:47:16'),
(382, 'JUAN MACIAS', NULL, 'Male', '2025-06-08 05:47:33', '2025-06-08 05:47:33'),
(383, 'MARI CARMEN CABRERA GOMEZ', '2082946', NULL, '2025-06-08 05:49:17', '2025-06-08 05:49:17'),
(384, 'RICARDO GOBEAL GODIEZ', '1904850', NULL, '2025-06-08 05:49:35', '2025-06-08 05:49:35'),
(385, 'ANDRES LOPEZ', '194908', NULL, '2025-06-08 05:49:58', '2025-06-08 05:49:58'),
(386, 'GERMAN GONZALEZ', NULL, 'Male', '2025-06-08 05:50:08', '2025-06-08 05:50:08'),
(387, 'LETICIA MORENO', NULL, 'Female', '2025-06-08 05:52:18', '2025-06-08 05:52:18'),
(388, 'LUIS VILLAVICENCIO', NULL, 'Male', '2025-06-08 05:57:06', '2025-06-08 05:57:06'),
(389, 'EMILIO CARLMONE', '2132822', NULL, '2025-06-08 05:58:37', '2025-06-08 05:58:37'),
(390, 'ROLANDO CERVABTRS', '2010234', NULL, '2025-06-08 05:59:04', '2025-06-08 05:59:04'),
(391, 'BRISEIRI DE LA ROSA', '2007166', NULL, '2025-06-08 05:59:25', '2025-06-08 05:59:25'),
(392, 'SOFIA ALVAREZ', NULL, 'Female', '2025-06-08 06:00:37', '2025-06-08 06:00:37'),
(393, 'ROCIO ALVAREZ', NULL, 'Female', '2025-06-08 06:00:48', '2025-06-08 06:00:48'),
(394, 'PRUEBA POST EXPO', '8888888', NULL, '2025-08-11 23:57:42', '2025-08-11 23:57:42'),
(395, 'PRUEBA POSTEXPO 2', NULL, 'They', '2025-08-11 23:57:56', '2025-08-11 23:57:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afi_assistances`
--
ALTER TABLE `afi_assistances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_conferencia_event` (`conferencia_id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `company_people`
--
ALTER TABLE `company_people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_people_company_foreign` (`company`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_guests`
--
ALTER TABLE `event_guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_guests_guest_foreign` (`guest`),
  ADD KEY `event_guests_event_foreign` (`event`);

--
-- Indices de la tabla `event_register_people`
--
ALTER TABLE `event_register_people`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_register_people_event_foreign` (`event`);

--
-- Indices de la tabla `event_students`
--
ALTER TABLE `event_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_students_event_foreign` (`event`),
  ADD KEY `event_students_student_foreign` (`student`);

--
-- Indices de la tabla `external_people`
--
ALTER TABLE `external_people`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `external_people_events`
--
ALTER TABLE `external_people_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `external_people_events_externalpeople_foreign` (`externalPeople`),
  ADD KEY `external_people_events_event_foreign` (`event`);

--
-- Indices de la tabla `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guests_company_foreign` (`company`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects_datas`
--
ALTER TABLE `projects_datas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proyect` (`id_proyect`);

--
-- Indices de la tabla `project_students`
--
ALTER TABLE `project_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_students_project_foreign` (`project`),
  ADD KEY `project_students_student_foreign` (`student`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`enrollment`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_foreign` (`user`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `validation_tokens`
--
ALTER TABLE `validation_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `proyect_id` (`proyect_id`);

--
-- Indices de la tabla `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afi_assistances`
--
ALTER TABLE `afi_assistances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `company_people`
--
ALTER TABLE `company_people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `event_guests`
--
ALTER TABLE `event_guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `event_register_people`
--
ALTER TABLE `event_register_people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT de la tabla `event_students`
--
ALTER TABLE `event_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `external_people`
--
ALTER TABLE `external_people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `external_people_events`
--
ALTER TABLE `external_people_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de la tabla `projects_datas`
--
ALTER TABLE `projects_datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `project_students`
--
ALTER TABLE `project_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `validation_tokens`
--
ALTER TABLE `validation_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `afi_assistances`
--
ALTER TABLE `afi_assistances`
  ADD CONSTRAINT `fk_conferencia_event` FOREIGN KEY (`conferencia_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `company_people`
--
ALTER TABLE `company_people`
  ADD CONSTRAINT `company_people_company_foreign` FOREIGN KEY (`company`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `event_guests`
--
ALTER TABLE `event_guests`
  ADD CONSTRAINT `event_guests_event_foreign` FOREIGN KEY (`event`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_guests_guest_foreign` FOREIGN KEY (`guest`) REFERENCES `guests` (`id`);

--
-- Filtros para la tabla `event_register_people`
--
ALTER TABLE `event_register_people`
  ADD CONSTRAINT `event_register_people_event_foreign` FOREIGN KEY (`event`) REFERENCES `events` (`id`);

--
-- Filtros para la tabla `event_students`
--
ALTER TABLE `event_students`
  ADD CONSTRAINT `event_students_event_foreign` FOREIGN KEY (`event`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_students_student_foreign` FOREIGN KEY (`student`) REFERENCES `students` (`enrollment`);

--
-- Filtros para la tabla `external_people_events`
--
ALTER TABLE `external_people_events`
  ADD CONSTRAINT `external_people_events_event_foreign` FOREIGN KEY (`event`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `external_people_events_externalpeople_foreign` FOREIGN KEY (`externalPeople`) REFERENCES `external_people` (`id`);

--
-- Filtros para la tabla `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `guests_company_foreign` FOREIGN KEY (`company`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `projects_datas`
--
ALTER TABLE `projects_datas`
  ADD CONSTRAINT `projects_datas_ibfk_1` FOREIGN KEY (`id_proyect`) REFERENCES `projects` (`id`);

--
-- Filtros para la tabla `project_students`
--
ALTER TABLE `project_students`
  ADD CONSTRAINT `project_students_project_foreign` FOREIGN KEY (`project`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `project_students_student_foreign` FOREIGN KEY (`student`) REFERENCES `students` (`enrollment`);

--
-- Filtros para la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_foreign` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `validation_tokens`
--
ALTER TABLE `validation_tokens`
  ADD CONSTRAINT `validation_tokens_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `validation_tokens_ibfk_2` FOREIGN KEY (`proyect_id`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
