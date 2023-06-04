-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2023 a las 23:23:33
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
-- Base de datos: `farmaciaentorns`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `mail` varchar(50) NOT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `last_log` date DEFAULT NULL,
  `session` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`mail`, `pass`, `name`, `last_log`, `session`) VALUES
('doctor1@example.com', 'bc547750b92797f955b36112cc9bdd5cddf7d0862151d03a167ada8995aa24a9ad24610b36a68bc02da24141ee51670aea13ed6469099a4453f335cb239db5da', 'Dr. John Smith', '2023-06-03', 'CA5FF7E322'),
('doctor2@example.com', '92a891f888e79d1c2e8b82663c0f37cc6d61466c508ec62b8132588afe354712b20bb75429aa20aa3ab7cfcc58836c734306b43efd368080a2250831bf7f363f', 'Dr. Emily Johnson', '2023-05-31', 'DE404FCA55'),
('doctor3@example.com', '2a64d6563d9729493f91bf5b143365c0a7bec4025e1fb0ae67e307a0c3bed1c28cfb259fc6be768ab0a962b1e2c9527c5f21a1090a9b9b2d956487eb97ad4209', 'Dr. David Lee', '2023-05-31', '67C0E2F0CE'),
('doctor4@example.com', '11961811bd4e11f23648afbd2d5c251d2784827147f1731be010adaf0ab38ae18e5567c6fd1bee50a4cd35fb544b3c594e7d677efa7ca01c2a2cb47f8fb12b17', 'Dr. Sarah Davis', '2023-05-30', '8D6A86579E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicine`
--

CREATE TABLE `medicine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tmax` double DEFAULT NULL,
  `tmin` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `tmax`, `tmin`) VALUES
(1, 'Medicine A', 30, 25),
(2, 'Medicine B', 18, 13),
(3, 'Medicine C', 22, 16),
(4, 'Medicine D', 25, 17),
(5, 'Medicine E', 27, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patient`
--

CREATE TABLE `patient` (
  `mail` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `patient`
--

INSERT INTO `patient` (`mail`, `name`) VALUES
('alex@example.com', 'Alex Thompson'),
('jane@example.com', 'Jane Smith'),
('john@example.com', 'John Doe'),
('mike@example.com', 'Mike Johnson'),
('sarah@example.com', 'Sarah Williams');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `xip`
--

CREATE TABLE `xip` (
  `id` int(10) NOT NULL,
  `doctor_mail` varchar(255) DEFAULT NULL,
  `id_medicine` int(10) DEFAULT NULL,
  `id_patient` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `xip`
--

INSERT INTO `xip` (`id`, `doctor_mail`, `id_medicine`, `id_patient`, `date`) VALUES
(2, 'doctor1@example.com', 3, 'john@example.com', '2023-06-11'),
(321, 'doctor1@example.com', 5, 'sarah@example.com', '2023-07-28'),
(7652, 'doctor1@example.com', 3, 'sarah@example.com', '2023-06-03'),
(38763, 'doctor1@example.com', 2, 'jane@example.com', '2023-07-21'),
(53467, 'doctor1@example.com', 3, 'alex@example.com', '2023-06-10'),
(91254, 'doctor2@example.com', 1, 'alex@example.com', '2023-05-06'),
(568769, 'doctor1@example.com', 2, 'sarah@example.com', '2023-05-06'),
(642342, 'doctor3@example.com', 1, 'alex@example.com', '2023-06-09'),
(746190, 'doctor1@example.com', 2, 'john@example.com', '2023-09-10'),
(749231, 'doctor1@example.com', 2, 'mike@example.com', '2023-05-04'),
(956328, 'doctor1@example.com', 4, 'alex@example.com', '2023-07-09'),
(965312, 'doctor1@example.com', 3, 'jane@example.com', '2023-07-09'),
(6678419, 'doctor1@example.com', 3, 'alex@example.com', '2023-01-12'),
(75813532, 'doctor1@example.com', 5, 'sarah@example.com', '2023-08-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`mail`);

--
-- Indices de la tabla `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`mail`);

--
-- Indices de la tabla `xip`
--
ALTER TABLE `xip`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
