-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-02-2026 a las 13:23:45
-- Versión del servidor: 8.0.45-0ubuntu0.22.04.1
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Clasificados_America`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 1, NULL, NULL, '{\"attributes\": {\"name\": \"Dervis\", \"email\": \"dmartinez@radioamerica.com.ve\", \"document\": \"30601247\", \"last_name\": \"Martinez\", \"phone_number\": null}}', NULL, '2026-01-11 01:15:38', '2026-01-11 01:15:38'),
(2, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 3, NULL, NULL, '{\"attributes\": {\"name\": \"Dervis\", \"email\": \"dmartinez@radioamerica.com.ve\", \"document\": \"30601247\", \"last_name\": \"Martinez\", \"phone_number\": null}}', NULL, '2026-01-11 01:17:25', '2026-01-11 01:17:25'),
(3, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 4, NULL, NULL, '{\"attributes\": {\"name\": \"Zain\", \"email\": \"zajrj3@gmail.com\", \"document\": \"30601248\", \"last_name\": \"Rondon\", \"phone_number\": null}}', NULL, '2026-01-11 01:17:25', '2026-01-11 01:17:25'),
(4, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 5, NULL, NULL, '{\"attributes\": {\"name\": \"Edwin\", \"email\": \"edfer_code@proton.me\", \"document\": \"30532641\", \"last_name\": \"Machado\", \"phone_number\": null}}', NULL, '2026-01-11 01:17:25', '2026-01-11 01:17:25'),
(5, 'Clientes', 'El cliente fue creado por Sistema.', 'App\\Models\\Customer', 'created', 30601248, 'App\\Models\\AdministrationUser', 4, '{\"attributes\": {\"data\": null, \"name\": \"Zain \", \"email\": \"zajrj3@gmail.com\", \"last_name\": \"Rondon\", \"customer_id\": \"30601248\", \"phone_number\": \"0424-4289888\", \"document_type\": \"V\"}}', NULL, '2026-01-11 01:40:59', '2026-01-11 01:40:59'),
(6, 'Contratos', 'El contrato 2026-30601248-00001 fue creado por Zain Rondon.', 'App\\Models\\Contract', 'created', 1, 'App\\Models\\AdministrationUser', 4, '{\"attributes\": {\"data\": {\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}, \"amount\": 120, \"status\": \"pending\", \"product\": \"Testing\", \"end_date\": null, \"seller_id\": 4, \"start_date\": null, \"contract_id\": \"2026-30601248-00001\", \"customer_id\": \"30601248\", \"contract_duration\": 2}}', NULL, '2026-01-11 01:41:25', '2026-01-11 01:41:25'),
(7, 'Usuarios de Administración', 'El usuario de administración fue updated por Sistema', 'App\\Models\\AdministrationUser', 'updated', 4, 'App\\Models\\AdministrationUser', 4, '{\"old\": {\"email\": \"zajrj3@gmail.com\"}, \"attributes\": {\"email\": \"zajrj@outlook.com\"}}', NULL, '2026-01-11 01:54:51', '2026-01-11 01:54:51'),
(8, 'Contratos', 'El contrato 2026-30601248-00002 fue creado por Zain Rondon.', 'App\\Models\\Contract', 'created', 2, 'App\\Models\\AdministrationUser', 4, '{\"attributes\": {\"data\": {\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}, \"amount\": 120, \"status\": \"pending\", \"product\": \"Testing\", \"end_date\": null, \"seller_id\": 4, \"start_date\": null, \"contract_id\": \"2026-30601248-00002\", \"customer_id\": \"30601248\", \"contract_duration\": 83}}', NULL, '2026-01-11 01:56:38', '2026-01-11 01:56:38'),
(9, 'Contratos', 'El contrato 2026-30601248-00003 fue creado por Zain Rondon.', 'App\\Models\\Contract', 'created', 3, 'App\\Models\\AdministrationUser', 4, '{\"attributes\": {\"data\": {\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}, \"amount\": 120, \"status\": \"pending\", \"product\": \"test\", \"end_date\": \"2026-03-09T04:00:00.000000Z\", \"seller_id\": 4, \"start_date\": \"2026-01-10T04:00:00.000000Z\", \"contract_id\": \"2026-30601248-00003\", \"customer_id\": \"30601248\", \"contract_duration\": 2}}', NULL, '2026-01-11 02:14:36', '2026-01-11 02:14:36'),
(10, 'Clientes', 'El cliente fue eliminado por Sistema.', 'App\\Models\\Customer', 'deleted', 30601248, 'App\\Models\\AdministrationUser', 4, '{\"old\": {\"data\": null, \"name\": \"Zain \", \"email\": \"zajrj3@gmail.com\", \"last_name\": \"Rondon\", \"customer_id\": \"30601248\", \"phone_number\": \"0424-4289888\", \"document_type\": \"V\"}}', NULL, '2026-01-11 03:31:32', '2026-01-11 03:31:32'),
(11, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 6, 'App\\Models\\AdministrationUser', 4, '{\"attributes\": {\"name\": \"Ismerys\", \"email\": \"Ilara@radioamerica.com.ve\", \"document\": \"17283493\", \"last_name\": \"Lara\", \"phone_number\": \"04124446754\"}}', NULL, '2026-01-12 18:19:30', '2026-01-12 18:19:30'),
(12, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 7, 'App\\Models\\AdministrationUser', 4, '{\"attributes\": {\"name\": \"José \", \"email\": \"jpinto@radiomerica.com.ve\", \"document\": \"17282377\", \"last_name\": \"Pinto\", \"phone_number\": \"04244302348\"}}', NULL, '2026-01-12 18:20:40', '2026-01-12 18:20:40'),
(13, 'Usuarios de Administración', 'El usuario de administración fue updated por Sistema', 'App\\Models\\AdministrationUser', 'updated', 4, 'App\\Models\\AdministrationUser', 4, '{\"old\": [], \"attributes\": []}', NULL, '2026-01-12 18:32:16', '2026-01-12 18:32:16'),
(14, 'Usuarios de Administración', 'El usuario de administración fue updated por Sistema', 'App\\Models\\AdministrationUser', 'updated', 4, 'App\\Models\\AdministrationUser', 4, '{\"old\": {\"email\": \"zajrj@outlook.com\"}, \"attributes\": {\"email\": \"zajrj3@gmail.com\"}}', NULL, '2026-01-12 19:41:49', '2026-01-12 19:41:49'),
(15, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 8, 'App\\Models\\AdministrationUser', 3, '{\"attributes\": {\"name\": \"Marcos \", \"email\": \"mpin@radioamerica.com.ve\", \"document\": \"0000000\", \"last_name\": \"Pinto\", \"phone_number\": \"0414-0439131\"}}', NULL, '2026-01-12 19:59:22', '2026-01-12 19:59:22'),
(16, 'Usuarios de Administración', 'El usuario de administración fue updated por Sistema', 'App\\Models\\AdministrationUser', 'updated', 8, 'App\\Models\\AdministrationUser', 3, '{\"old\": {\"email\": \"mpin@radioamerica.com.ve\"}, \"attributes\": {\"email\": \"mpinto@radioamerica.com.ve\"}}', NULL, '2026-01-12 20:00:50', '2026-01-12 20:00:50'),
(17, 'Clientes', 'El cliente fue creado por Sistema.', 'App\\Models\\Customer', 'created', 78, 'App\\Models\\AdministrationUser', 5, '{\"attributes\": {\"data\": null, \"name\": \"Elijah Morton\", \"email\": \"kilyt@mailinator.com\", \"last_name\": \"Underwood\", \"customer_id\": \"78\", \"phone_number\": \"0415-2639659\", \"document_type\": \"V\"}}', NULL, '2026-01-13 19:11:28', '2026-01-13 19:11:28'),
(18, 'Contratos', 'El contrato 2026-78-00001 fue creado por Edwin Machado.', 'App\\Models\\Contract', 'created', 4, 'App\\Models\\AdministrationUser', 5, '{\"attributes\": {\"data\": {\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}, \"amount\": 30, \"status\": \"pending\", \"product\": \"Quaerat nulla culpa\", \"end_date\": \"2026-06-12T04:00:00.000000Z\", \"seller_id\": 5, \"start_date\": \"2026-01-13T04:00:00.000000Z\", \"contract_id\": \"2026-78-00001\", \"customer_id\": \"78\", \"contract_duration\": 5}}', NULL, '2026-01-13 19:12:06', '2026-01-13 19:12:06'),
(19, 'Contratos', 'El contrato 2026-78-00002 fue creado por Edwin Machado.', 'App\\Models\\Contract', 'created', 5, 'App\\Models\\AdministrationUser', 5, '{\"attributes\": {\"data\": {\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}, \"amount\": 31, \"status\": \"pending\", \"product\": \"Laboriosam nulla eu\", \"end_date\": \"2026-09-12T04:00:00.000000Z\", \"seller_id\": 5, \"start_date\": \"2026-01-13T04:00:00.000000Z\", \"contract_id\": \"2026-78-00002\", \"customer_id\": \"78\", \"contract_duration\": 8}}', NULL, '2026-01-13 20:44:05', '2026-01-13 20:44:05'),
(20, 'Clientes', 'El cliente fue creado por Sistema.', 'App\\Models\\Customer', 'created', 30532641, 'App\\Models\\AdministrationUser', 5, '{\"attributes\": {\"data\": null, \"name\": \"Edwin\", \"email\": \"edfer_code@proton.me\", \"last_name\": \"Machado\", \"customer_id\": \"30532641\", \"phone_number\": \"0424-4553000\", \"document_type\": \"V\"}}', NULL, '2026-01-14 02:31:25', '2026-01-14 02:31:25'),
(21, 'Contratos', 'El contrato 2026-30532641-00001 fue creado por Edwin Machado.', 'App\\Models\\Contract', 'created', 6, 'App\\Models\\AdministrationUser', 5, '{\"attributes\": {\"data\": {\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}, \"amount\": 60, \"status\": \"pending\", \"product\": \"Publicidad\", \"end_date\": \"2026-03-12T04:00:00.000000Z\", \"seller_id\": 5, \"start_date\": \"2026-01-13T04:00:00.000000Z\", \"contract_id\": \"2026-30532641-00001\", \"customer_id\": \"30532641\", \"contract_duration\": 2}}', NULL, '2026-01-14 02:32:26', '2026-01-14 02:32:26'),
(22, 'Usuarios de Administración', 'El usuario de administración fue created por Sistema', 'App\\Models\\AdministrationUser', 'created', 9, 'App\\Models\\AdministrationUser', 3, '{\"attributes\": {\"name\": \"Antonio\", \"email\": \"adelvalle@empresasdelvalle.com.ve\", \"document\": \"00000000\", \"last_name\": \"Del valle \", \"phone_number\": \"+58 414-4160804\"}}', NULL, '2026-01-30 20:15:19', '2026-01-30 20:15:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administration_users`
--

CREATE TABLE `administration_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administration_users`
--

INSERT INTO `administration_users` (`id`, `name`, `last_name`, `document`, `email`, `phone_number`, `password`, `signature_token`, `created_at`, `updated_at`) VALUES
(3, 'Dervis', 'Martinez', '30601247', 'dmartinez@radioamerica.com.ve', NULL, '$2y$12$x2hL4X8aRTa1AaRqRifS1usAFW1wKbiqiFvAOdjcjrjbk/jS5dZDG', NULL, '2026-01-11 01:17:24', '2026-01-11 01:17:24'),
(4, 'Zain', 'Rondon', '30601248', 'zajrj3@gmail.com', NULL, '$2y$12$1R0xpNesD38BLeKqvqWbEeAuHBdRaXi0atc4tk4HFD6A2mmb3Oc9W', NULL, '2026-01-11 01:17:25', '2026-01-12 19:41:49'),
(5, 'Edwin', 'Machado', '30532641', 'edfer_code@proton.me', NULL, '$2y$12$ppk0Hjv6Fbt52aFbHHm8fuf0hYLAnCC8Ggbqysu7gtxuzCA0WiJdu', NULL, '2026-01-11 01:17:25', '2026-01-11 01:17:25'),
(6, 'Ismerys', 'Lara', '17283493', 'Ilara@radioamerica.com.ve', '04124446754', '$2y$12$Q.DPCJunfGwDoDy7/47IpOFfNEF6e5HzToFKF5GNioxNgu8EcKkxe', NULL, '2026-01-12 18:19:30', '2026-01-12 18:19:30'),
(7, 'José ', 'Pinto', '17282377', 'jpinto@radiomerica.com.ve', '04244302348', '$2y$12$yG26.MTNGFqkAjKxKVFCiuxKTOSXt3.7XkdnP2t0Enbr8/oHal0wG', NULL, '2026-01-12 18:20:40', '2026-01-12 18:20:40'),
(8, 'Marcos ', 'Pinto', '0000000', 'mpinto@radioamerica.com.ve', '0414-0439131', '$2y$12$IJF96dbTPrRrq3/r.3skXuMB7nRaI9Kbboo3.qjPF5OcQRIzeJN2G', NULL, '2026-01-12 19:59:22', '2026-01-12 20:00:50'),
(9, 'Antonio', 'Del valle ', '00000000', 'adelvalle@empresasdelvalle.com.ve', '+58 414-4160804', '$2y$12$LSAouc/7ULFxOqVIVYktvea15HEqlw52Jg.9cjKefOU.IqVTKdCtC', NULL, '2026-01-30 20:15:19', '2026-01-30 20:15:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'operator',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `last_name`, `email`, `password`, `document`, `role`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dervis', 'Martinez', 'dmartinez@radioamerica.com.ve', '$2y$12$pL.QYfrhsF.4uOKvB30fFewIxvBka4j7e8cYfdg.jXKK6/7j6KYo2', '31456326', 'admin', NULL, 'rue1LwArIEL5BsENtemY2WAJsR92jLhdPv1utI7HGchMEjn388zSzBww2BeN', '2025-11-02 05:04:33', '2025-11-20 22:54:22'),
(2, 'Zain', 'Rondon', 'zajrj3@gmail.com', '$2y$12$NWlspKusNdn6yIWCzsBk6unG3i7hKJkhfsO1ogaki1x7Jl8Uhc6w.', '30601248', 'admin', NULL, NULL, '2025-11-02 05:04:33', '2025-11-02 05:04:33'),
(3, 'Edwin', 'Machado', 'edfer_code@proton.me', '$2y$12$nVqX2kowLtCsacqlFVLwIOXlo7u0hwtYnsvueFqNNZUt62quzk39y', '30532641', 'admin', NULL, NULL, '2025-11-02 05:04:33', '2025-11-02 05:04:33'),
(4, 'Ilenys', 'Martinez', 'imartinez@radioamerica.com.ve', '$2y$12$tWEpR6oNJ8HUIYKfx5CM5OowH7jrOex6U0HSovvZyp0z5HradiYxO', '12107664', 'admin', NULL, 'YIBU9RiMYFewxnnhMFyo4JY5eTFUjq7T22zKbYvfBoQzlnnXye8oirzX86RR', '2025-11-03 19:51:59', '2025-11-11 21:59:45'),
(5, 'info', 'america', 'info@radioamerica.com.ve', '$2y$12$ZQ2wsBQeFXo4fGJtPUxm0O51K9kcqSNTMQ9J9b5OgujIdTLZDlyrK', '000000', 'admin', NULL, 'GTUjPfLo43BSX476wuuVp47KK34mY0DAstAuYXvLoCabHT9IfM77gj9OOG3Y', '2025-11-17 19:11:21', '2025-11-17 19:11:21'),
(7, 'Jorge Isaac ', 'Jimenez Flores', 'jjimenez@radioamerica.com.ve', '$2y$12$wXeTEY4XTmiU4LB/rAbfMukASivDH6ILNhcMnmM38Iu2uOos.kOyS', '13666548', 'admin', NULL, 'TA6gmnPiVtMXuPvO9ygCDYzppAdvBt3fseTEcZ2zZiMHe5IR5QArNM3oh9lm', '2025-12-12 04:59:02', '2026-02-04 18:56:56'),
(8, 'DocumentosExtraviados', 'PrensaRA', 'noticiero@radioamerica.com.ve', '$2y$12$dK2Ol4o1g0rFpr2rHpCWBeEFbgL27/pesnGM9o7rdklR3z11JT2Wy', '000000000', 'operator', NULL, 'FLTG7F1u2kUU3bZZYdr6CMXlG9YmnAt8wGH8EKsNnKpxeZV0izmWs3j7nP2i', '2026-02-04 19:02:11', '2026-02-04 19:02:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents`
--

CREATE TABLE `agents` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` enum('V','E') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appeals`
--

CREATE TABLE `appeals` (
  `id` bigint UNSIGNED NOT NULL,
  `clasificado_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_links` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banned_users`
--

CREATE TABLE `banned_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned_until` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('radioamerica-cache-6da7f7e5813c98eb79771d87a71ecdfbec1243b5', 'i:1;', 1768339023),
('radioamerica-cache-6da7f7e5813c98eb79771d87a71ecdfbec1243b5:timer', 'i:1768339023;', 1768339023),
('radioamerica-cache-blancam.cornejoamunoz@gmail.com|10.18.18.3', 'i:3;', 1769259508),
('radioamerica-cache-blancam.cornejoamunoz@gmail.com|10.18.18.3:timer', 'i:1769259507;', 1769259507),
('radioamerica-cache-illuminate:queue:restart', 'i:1768327662;', 2083687662),
('radioamerica-cache-jgrp68@gmail.com|10.18.18.3', 'i:2;', 1769606637),
('radioamerica-cache-jgrp68@gmail.com|10.18.18.3:timer', 'i:1769606637;', 1769606637),
('radioamerica-cache-k.rcreaciones2025@gmail.com|10.18.18.3', 'i:3;', 1770310930),
('radioamerica-cache-k.rcreaciones2025@gmail.com|10.18.18.3:timer', 'i:1770310930;', 1770310930),
('radioamerica-cache-livewire-rate-limiter:57abc6406b943bfc3fe45fad9bb5aa31edc87ae7', 'i:1;', 1770231081),
('radioamerica-cache-livewire-rate-limiter:57abc6406b943bfc3fe45fad9bb5aa31edc87ae7:timer', 'i:1770231081;', 1770231081),
('radioamerica-cache-livewire-rate-limiter:5f8689cbf8b843648c82b44a1113059041479a28', 'i:1;', 1768248351),
('radioamerica-cache-livewire-rate-limiter:5f8689cbf8b843648c82b44a1113059041479a28:timer', 'i:1768248351;', 1768248351),
('radioamerica-cache-livewire-rate-limiter:8b07ae4d89a4fe11370ef869a1c94ab424a9aa99', 'i:3;', 1770585449),
('radioamerica-cache-livewire-rate-limiter:8b07ae4d89a4fe11370ef869a1c94ab424a9aa99:timer', 'i:1770585449;', 1770585449),
('radioamerica-cache-livewire-rate-limiter:c47e74f6c92dbaef7967c65b715ac8e391d1a278', 'i:1;', 1769804052),
('radioamerica-cache-livewire-rate-limiter:c47e74f6c92dbaef7967c65b715ac8e391d1a278:timer', 'i:1769804052;', 1769804052),
('radioamerica-cache-mayorcalopezjose@gmail.com|10.18.18.3', 'i:1;', 1769523884),
('radioamerica-cache-mayorcalopezjose@gmail.com|10.18.18.3:timer', 'i:1769523884;', 1769523884),
('radioamerica-cache-nelsonlaya@gmail.com|10.18.18.3', 'i:1;', 1768245793),
('radioamerica-cache-nelsonlaya@gmail.com|10.18.18.3:timer', 'i:1768245793;', 1768245793),
('radioamerica-cache-noriegaelias2012@gmail.com|10.18.18.3', 'i:3;', 1769379077),
('radioamerica-cache-noriegaelias2012@gmail.com|10.18.18.3:timer', 'i:1769379077;', 1769379077),
('radioamerica-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1770671790),
('radioamerica-cache-yelitzajolavarrieta@gmail.com|10.18.18.3', 'i:1;', 1770477318),
('radioamerica-cache-yelitzajolavarrieta@gmail.com|10.18.18.3:timer', 'i:1770477318;', 1770477318);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `is_system`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Comunidad', 'comunidad', 1, NULL, NULL, NULL),
(2, 'Inmuebles', 'inmuebles', 1, NULL, NULL, NULL),
(3, 'Vehículos', 'vehiculos', 1, NULL, NULL, NULL),
(4, 'Empleo', 'empleo', 1, NULL, NULL, NULL),
(5, 'Deportes', 'deportes', 1, NULL, NULL, NULL),
(6, 'Servicios ', 'servicios', 0, NULL, '2025-11-20 15:07:50', '2025-11-20 15:07:50'),
(7, 'Otros', 'otros', 0, NULL, '2025-11-20 15:08:25', '2025-11-20 15:08:25'),
(8, 'Ventas', 'ventas', 0, NULL, '2025-11-25 07:49:52', '2025-11-25 07:49:52'),
(9, 'Mascotas', 'mascotas', 0, 1, '2025-11-26 06:46:47', '2025-11-26 06:46:47'),
(10, 'Tecnologia', 'tecnologia', 0, NULL, '2025-11-26 06:47:24', '2025-11-26 06:47:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_clasificado`
--

CREATE TABLE `category_clasificado` (
  `id` bigint UNSIGNED NOT NULL,
  `clasificado_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_clasificado`
--

INSERT INTO `category_clasificado` (`id`, `clasificado_id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 5, 6, NULL, NULL),
(6, 6, 7, NULL, NULL),
(7, 7, 7, NULL, NULL),
(8, 8, 6, NULL, NULL),
(9, 9, 7, NULL, NULL),
(10, 10, 7, NULL, NULL),
(11, 11, 7, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 6, NULL, NULL),
(14, 14, 7, NULL, NULL),
(15, 15, 4, NULL, NULL),
(16, 16, 10, NULL, NULL),
(17, 17, 6, NULL, NULL),
(18, 18, 6, NULL, NULL),
(19, 19, 2, NULL, NULL),
(20, 20, 3, NULL, NULL),
(21, 21, 6, NULL, NULL),
(22, 22, 6, NULL, NULL),
(23, 23, 6, NULL, NULL),
(24, 24, 6, NULL, NULL),
(25, 25, 6, NULL, NULL),
(26, 26, 6, NULL, NULL),
(27, 27, 6, NULL, NULL),
(28, 28, 10, NULL, NULL),
(29, 29, 2, NULL, NULL),
(30, 30, 6, NULL, NULL),
(31, 31, 8, NULL, NULL),
(32, 32, 6, NULL, NULL),
(33, 33, 7, NULL, NULL),
(34, 34, 6, NULL, NULL),
(35, 35, 7, NULL, NULL),
(36, 36, 8, NULL, NULL),
(37, 37, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celebrations`
--

CREATE TABLE `celebrations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'birthday',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificados`
--

CREATE TABLE `clasificados` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int NOT NULL,
  `ubication` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `state` enum('pending','approved','rejected','canceled','expired','waiting','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `waiting_for_payment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clasificados`
--

INSERT INTO `clasificados` (`id`, `user_id`, `title`, `description`, `duration`, `ubication`, `plan_id`, `slug`, `phone`, `social_links`, `date_start`, `date_end`, `state`, `waiting_for_payment`, `created_at`, `updated_at`) VALUES
(5, 11, 'Servicio de refrigeración| Instalación, mantenimiento preventivo y correctivo', '¿Necesitas instalación, mantenimiento o reparación de sistemas de refrigeración?\r\n\r\nOfrecemos soluciones integrales para mantener tus equipos operando al máximo rendimiento.\r\n\r\nNuestros servicios incluyen:\r\n\r\nInstalación profesional de equipos nuevos.\r\n\r\nMantenimiento preventivo para optimizar la eficiencia y prolongar la vida útil.\r\n\r\nMantenimiento correctivo rápido y efectivo para cualquier avería.\r\n\r\n¡Asegura el frío y la confiabilidad de tu negocio o hogar! Contáctanos hoy mismo para una cotización.', 120, 'Municipio Naguanagua, Estado Carabobo, Venezuela', 1, 'servicio-de-refrigeracion-instalacion-mantenimiento-preventivo-y-correctivo-5', '+584148736044', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-11-20', '2026-03-20', 'approved', 0, '2025-11-20 15:20:39', '2025-11-20 22:37:59'),
(6, 14, 'Venta en Promocion Libros Educativos 3x1', 'Libros en perfectas condiciones. Nunca usados. Son: \r\nAnatomía Humana; \r\nAtlas de Anatomía; y \r\nCurso de Ingles interactivo. \r\nPrecio individual 25$ . Promoción los 3 por 50$. \r\n\r\nNo te lo pierdas.. Aprovecha', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'venta-en-promocion-libros-educativos-3x1-6', '+584143467947', '{\"tiktok\": null, \"facebook\": null, \"instagram\": \"https://istagram.com/escalonaeliza\"}', '2025-11-24', '2026-03-24', 'approved', 0, '2025-11-23 22:32:33', '2025-11-24 19:03:25'),
(7, 14, 'Mini Venta de Garage', 'ARTICULOS EN VENTA POR NO USAR. \r\nVasos pequeños para Whisky con Bandeja (6 unidades). Ref# 10$\r\nLampara colgante de 3 luces. Ref# 30$\r\nImpresora de cartucho Hp. No incluye cartucho. Ref# 60$', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'mini-venta-de-garage-7', '+584143467947', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-11-24', '2026-03-24', 'approved', 0, '2025-11-23 22:55:12', '2025-11-24 19:03:50'),
(8, 16, 'Avaluos para bienes muebles e inmuebles-Perito Certificado', 'Profesional certificado SUDEBAN atiende tus requerimientos para Avalúos de Bienes Muebles ( máquinas, vehículos, equipos, herramientas) e Inmuebles ( terrenos, casas, aptos, locales, oficinas, edificios, fincas, agroindustria), para justo valor por venta, aumento de capital, garantía hipotecaria, declaración sucesoral Seniat, particiones o cualquier índole financiero, legal, fiscal y contable. Precio mínimo 90$. \r\nSe realizan mediciones de inmuebles y levantamiento de inventario de activos empresariales. \r\nAtención en Carabobo, Aragua, Falcón, Cojedes y Portuguesa.', 120, 'Naguanagua, Parroquia Naguanagua, Municipio Naguanagua, Estado Carabobo, 2005, Venezuela', 1, 'avaluos-para-bienes-muebles-e-inmuebles-perito-certificado-8', '+584244656544', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-11-24', '2026-03-24', 'approved', 0, '2025-11-24 21:13:54', '2025-11-25 03:28:26'),
(9, 17, 'Potes de cocina RENA WARE', 'Potes de cocina RENA WARE.', 120, 'Municipio Bejuma, Estado Carabobo, 2040, Venezuela', 1, 'potes-de-cocina-rena-ware-9', '+584144836390', '[]', '2025-11-24', '2026-03-24', 'approved', 0, '2025-11-25 00:32:11', '2025-11-25 03:27:58'),
(10, 17, 'Olla de Presión Rena Ware', 'Olla de Presión RENA WARE, capacidad de 9lts, trae accesorios,como cesta freidora, escaldadora.', 120, 'Bejuma, Parroquia Bejuma, Municipio Bejuma, Estado Carabobo, 2040, Venezuela', 1, 'olla-de-presion-rena-ware-10', '+584144836390', '[]', '2025-11-24', '2026-03-24', 'approved', 0, '2025-11-25 00:39:21', '2025-11-25 03:27:38'),
(11, 17, 'Ollas RENA WARE', 'Ollas RENA WARE.\r\nOlla de 5lts con tapa\r\nOlla de 3lts con tapa\r\nOlla de 1.5lts con tapa\r\nBandeja ralladora/vaporera', 120, 'Bejuma, Parroquia Bejuma, Municipio Bejuma, Estado Carabobo, 2040, Venezuela', 1, 'ollas-rena-ware-11', '+584144836390', '[]', '2025-11-24', '2026-03-24', 'approved', 0, '2025-11-25 00:44:55', '2025-11-25 03:27:09'),
(12, 19, 'Servicio técnico en refrigeración y aire acondicionado', 'Servicio técnico en aires acondicionados y refrigeración a domicilio.\r\nMantenimiento, instalaciónes y reparaciónes', 120, 'Naguanagua, Parroquia Naguanagua, Municipio Naguanagua, Estado Carabobo, 2005, Venezuela', 1, 'servicio-tecnico-en-refrigeracion-y-aire-acondicionado-12', '+584124075622', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-11-25', '2026-03-25', 'approved', 0, '2025-11-25 05:36:50', '2025-11-25 07:50:29'),
(13, 19, 'Servicio Técnico de Aires acondicionados y Refrigeración', 'Brindo servicio técnico en sistemas de Aire acondicionado y refrigeración a domicilio en Valencia, Naguanagua y todo el estado Carabobo.\r\nReparaciones e instalaciones, mantenimiento.', 120, 'Municipio Naguanagua, Estado Carabobo, Venezuela', 1, 'servicio-tecnico-de-aires-acondicionados-y-refrigeracion-13', '+584124075622', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-11-25', '2026-03-25', 'approved', 0, '2025-11-25 08:14:38', '2025-11-26 01:18:06'),
(14, 20, 'Módulo Alta frecuencia MILLER 220V', 'Módulo Alta frecuencia marca Miller 220v', 120, 'Municipio Libertador, Distrito Metropolitano de Caracas, Distrito Capital, Venezuela', 1, 'modulo-alta-frecuencia-miller-220v-14', '+584125791337', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-11-25', '2026-03-25', 'approved', 0, '2025-11-25 22:15:56', '2025-11-26 01:17:48'),
(15, 23, 'se solicita contador', 'en busqueda de contador colegiado ,experiencia en impustos ctas por pagar y cobrar, parafiscales , edo de cuentas, conciliacion bancarias , nomina  e inventarios', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'se-solicita-contador-15', '+584244212519', '{\"tiktok\": null, \"instagram\": null}', '2025-12-02', '2026-04-01', 'approved', 0, '2025-12-02 16:14:34', '2025-12-02 18:31:17'),
(16, 25, 'SERVICIO TÉCNICO PC LAPTOPS REDES ELECTRÓNICA Y CÁMARAS DE SEGURIDAD', 'Servicio técnico especializado en el área de reparación mantenimiento de computadoras laptop, instalación de Redes cableadas y wifi. Instalación de Camaras de seguridad para comercios, oficinas y hogares. Trabajamos a domicilio y en taller. 24 horas \r\nValencia Naguanagua \r\nTeléfono 04141888615 y 04123099456 \r\nEl rincón Casa No 37. Subiendo por Mundo Total Mañongo.', 120, 'Palma Real, El Rincón, Mañongo, Valencia, Parroquia Naguanagua, Municipio Naguanagua, Estado Carabobo, 2005, Venezuela', 1, 'servicio-tecnico-pc-laptops-redes-electronica-y-camaras-de-seguridad-16', '+584141888615', '{\"tiktok\": \"https://www.tiktok.com/@jorgefuentes8026?_r=1&_t=ZM-91tTKwzPGe0\", \"facebook\": \"https://www.facebook.com/profile.php?id=100054248474530\", \"instagram\": null}', '2025-12-03', '2026-04-02', 'approved', 0, '2025-12-02 23:34:44', '2025-12-03 18:59:43'),
(17, 25, 'Servicio técnico PC Redes y CCTV camaras', 'Servicio técnico PC laptops redes y cámaras de seguridad. \r\nReparación de tv. Tarjetas madres\r\nSoftware Windows y Linux.\r\nCámara de seguridad para hogares oficinas y Empresas \r\nTrabajos a Domicilio \r\nY taller local. \r\n04141888615. 04123099456\r\nMañongo Valencia \r\nSubiendo por Mundo Total Mañongo.', 120, 'Palma Real, El Rincón, Mañongo, Valencia, Parroquia Naguanagua, Municipio Naguanagua, Estado Carabobo, 2005, Venezuela', 1, 'servicio-tecnico-pc-redes-y-cctv-camaras-17', '+584141888615', '{\"tiktok\": \"https://www.tiktok.com/@jorgefuentes8026?_r=1&_t=ZM-91tTKwzPGe0\", \"facebook\": \"https://www.facebook.com/profile.php?id=100054248474530\", \"instagram\": null}', '2025-12-03', '2026-04-02', 'approved', 0, '2025-12-03 00:15:21', '2025-12-03 18:59:58'),
(18, 27, 'Curso: Gestión y Manejo de Sustancias Peligrosas', '🔥 Lo que vas a dominar:\r\n•	Referencia Normativa (COVENIN, Decreto 2635) para que tu operación sea 100% legal.\r\n•	El secreto para la Identificación y Clasificación de cualquier Sustancia Peligrosa.\r\n•	Lectura e interpretación del Rombo NFPA 704 y el SGA (Sistema Globalmente Armonizado).\r\n\r\nInstructor de Lujo: Ing. Harold Guanipa - M.S.I.E. & M.B.A | Experto en Riesgos Laborales, Calidad, Seguridad y Ambiente (QHSE).\r\n\r\nFECHA: Sábado, 13 de Diciembre.\r\nDURACIÓN: 8 horas académicas.\r\nLUGAR: Urbanización El Recreo, Diagonal Av. Bolivar, Valencia - Edo Carabobo (Modalidad 100% Presencial).', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'curso-gestion-y-manejo-de-sustancias-peligrosas-18', '+584144961409', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-12-07', '2026-04-06', 'approved', 0, '2025-12-05 15:04:52', '2025-12-07 06:02:48'),
(19, 33, 'Vendo casa', 'SE VENDE CASA EN MONTALBAN EDO. CARABOBO 8 HAB 5 BAÑOS SALA COMEDOR COJRREDOR AMPLIO TECHO DE PLATABANDA TANQUE SUB TERRANEO DE 12 MIL LITROS GARAJE PARA 4 CARROS TERRENO PROPIO', 120, 'Avenida Carabobo, Montalbán, Parroquia Montalbán, Municipio Montalbán, Estado Carabobo, 2042, Venezuela', 1, 'vendo-casa-19', '+582497985427', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2025-12-12', '2026-04-11', 'approved', 0, '2025-12-12 02:32:40', '2025-12-12 19:39:27'),
(20, 38, 'Se pintab carros pequeños en 400 $', 'Se pintan carros pequeños a partir de 400$ 1 año de garantia . 04244249196 envie foto de su vehiculo para darle presupuesto ubicados detras del c.c rebeca', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'se-pintab-carros-pequenos-en-400-20', '+584244249196', '{\"tiktok\": \"https://www.tiktok.com/@latoneria.valencia?_r=1&_t=ZM-92H8WpYQ5kG\", \"facebook\": null, \"instagram\": null}', '2025-12-16', '2026-04-15', 'approved', 0, '2025-12-16 21:40:43', '2025-12-17 00:06:45'),
(21, 45, 'Albañileria y construcción en general', 'Ofrecemos servicio de albañilería y construcción en general.\r\nRemodelaciones \r\nPintura \r\nInstalación de cerámica y porcelanato \r\nTodo tipo de revestimiento \r\nHerrería y más.\r\nPara presupuestos puede comunicarse al WhatsApp \r\n04128888732', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'albanileria-y-construccion-en-general-21', '+584128888732', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-09', '2026-05-09', 'approved', 0, '2026-01-09 05:51:41', '2026-01-09 17:29:14'),
(22, 45, 'Jardinería, jardinero', 'Realizamos, diseño, fabricación y mantenimiento de todo tipo de jardines.\r\nPoda de árboles \r\nSiembra de todo tipo de grama.\r\nPara mayor información y presupuestos puede comunicarse al WhatsApp \r\n04128888732', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'jardineria-jardinero-22', '+584128888732', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-09', '2026-05-09', 'approved', 0, '2026-01-09 06:01:46', '2026-01-09 17:29:00'),
(23, 45, 'Instalación de cerámica, porcelanato', 'Somos instaladores de cerámica, porcelanato, piedra, mármol, caico y todo tipo de revestimiento para piso y paredes. \r\nPara mayor información o presupuestos puede comunicarse al WhatsApp \r\n04128888732', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'instalacion-de-ceramica-porcelanato-23', '+584128888732', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-09', '2026-05-09', 'approved', 0, '2026-01-09 06:09:55', '2026-01-09 17:28:47'),
(24, 49, 'Puesta a Tierra de sus equipos electricos', 'La puesta a tierra es una conexión física y fundamental entre una instalación eléctrica y la Tierra, que desvía corrientes de fuga, sobrecargas o descargas atmosféricas (como rayos) hacia el suelo, protegiendo personas, equipos y estructuras de peligros como choques eléctricos e incendios, y estabilizando el voltaje del sistema. No arriesgue su inversión, ni su salud. Profesionales a su servicio. En valencia, estado Carabobo, o a nivel nacional, Contáctenos. 04142365301 Frank Vera', 120, 'La Quizanda, Zona Industrial Michelena, Valencia, Parroquia Rafael Urdaneta, Municipio Valencia, Estado Carabobo, 2003, Venezuela', 1, 'puesta-a-tierra-de-sus-equipos-electricos-24', '+584142365301', '{\"tiktok\": null, \"facebook\": \"https://www.facebook.com/frank.vera.moreno/\", \"instagram\": \"https://www.instagram.com/frank_vera69\"}', '2026-01-15', '2026-05-15', 'approved', 0, '2026-01-14 15:03:30', '2026-01-15 14:43:37'),
(25, 16, 'VALORACIÓN DE BIENES MUEBLES E INMUEBLES (AVALÚOS)-MEDICIONES DE INMUEBLES', 'Perito-Tasadora certificada con experiencia y profesionalismo de más de 20 años de experiencia en la valoración de activos para distintos fines y requerimientos. \r\n\r\nAVALÚOS PARA CASAS, APTOS., LOCALES COMERCIALES, OBRAS INCONCLUSAS, TERRENOS, EDIFICIOS, MAQUINAS Y EQUIPOS, PLANTAS DE PRODUCCIÓN , EMPRESAS EN MARCHA, FUNDOS, FINCAS Y MAS.\r\n\r\nAtención a nivel nacional especialmente zona central y occidental. Aragua, Carabobo, Falcón, Cojedes, Portuguesa, Barquisimeto.', 120, 'Naguanagua, Parroquia Naguanagua, Municipio Naguanagua, Estado Carabobo, 2005, Venezuela', 1, 'valoracion-de-bienes-muebles-e-inmuebles-avaluos-mediciones-de-inmuebles-25', '+584244656544', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-15', '2026-05-15', 'approved', 0, '2026-01-14 16:38:55', '2026-01-15 14:43:09'),
(26, 51, 'Jardines Industriales Jireh', 'Jardines Industriales Jireh proporciona servicios de corte de césped, destape de cañería y fumigación en el Edo. Carabobo Teléf.: 0412-4584549.', 120, 'Flor Amarillo, Parroquia Rafael Urdaneta, Municipio Valencia, Estado Carabobo, 2003, Venezuela', 1, 'jardines-industriales-jireh-26', '+584124584549', '{\"facebook\": \"https://www.facebook.com/profile.php?id=61550701761528&locale=es_LA\"}', '2026-01-15', '2026-05-15', 'approved', 0, '2026-01-15 10:39:23', '2026-01-15 14:42:42'),
(27, 52, 'Servicio de moto taxi deliverys y encomienda', 'Servicio de mototaxi Honesto responsable práctico y seguro', 120, 'Tocuyito, Parroquia Tocuyito, Municipio Libertador, Estado Carabobo, 2035, Venezuela', 1, 'servicio-de-moto-taxi-deliverys-y-encomienda-27', '+584244167582', '[]', '2026-01-19', '2026-05-19', 'approved', 0, '2026-01-16 14:45:29', '2026-01-19 21:05:13'),
(28, 54, 'Todo en redes wifi', 'Ventas de mini routers repetidor y restauración de redes locales con transformación de cableados. WhatsApp 0414-4425352', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'todo-en-redes-wifi-28', '+584144425352', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-19', '2026-05-19', 'approved', 0, '2026-01-18 11:16:59', '2026-01-19 21:03:16'),
(29, 55, 'AL LADO', 'En AL LADO, José Alfredo Salinas, asesor inmobiliario independiente, te acompaña en cada paso para comprar, vender o alquilar tu inmueble. Creemos en las relaciones claras, el trato humano y la asesoría honesta. \r\nEscuchamos tus necesidades, te orientamos con responsabilidad y trabajamos para que tomes decisiones seguras y acertadas. Más que cerrar negocios, construimos confianza y tranquilidad. Si buscas un aliado inmobiliario cercano, profesional y comprometido, estamos AL LADO de tus sueños y proyectos.\r\n\"Camino a tu lado hacia una buena decisión\"', 120, 'Urbanización, La Milagrosa, Parroquia Milla, Municipio Libertador, Estado Mérida, Venezuela', 1, 'al-lado-29', '+584145839354', '{\"tiktok\": \"https://tiktok.com/@joseasalinas.al_lado\", \"facebook\": \"https://facebook.com/josealfredosalinas.inmuebles\", \"instagram\": \"https://instagram.com/@joseasalinas.al_lado\"}', '2026-01-22', '2026-05-22', 'approved', 0, '2026-01-22 16:03:43', '2026-01-22 19:27:41'),
(30, 57, 'Impresoras de toner', 'Mantenimiento preventivo de impresoras de toner, recargar y regeneración de cartuchos de tóner', 120, 'Guacara, Parroquia Guacara, Municipio Guacara, Estado Carabobo, 2015, Venezuela', 1, 'impresoras-de-toner-30', '+584243128066', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-22', '2026-05-22', 'approved', 0, '2026-01-22 17:07:01', '2026-01-22 19:27:23'),
(31, 16, 'BOTONES PARA CONFECCION Y MANUALIDADES FIGURAS ANIMALITOS-POR DOCENA', 'Se venden botones en plástico para manualidades y confección en figuras de animalitos.', 120, 'Naguanagua, Parroquia Naguanagua, Municipio Naguanagua, Estado Carabobo, 2005, Venezuela', 1, 'botones-para-confeccion-y-manualidades-figuras-animalitos-por-docena-31', '+584244656544', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-25', '2026-05-25', 'approved', 0, '2026-01-22 20:41:34', '2026-01-26 00:11:04'),
(32, 53, 'Blindaje Corporativo', 'Si tus contratos no han sido actualizados en los últimos meses podrías estar en riesgo El TSJ dictó nuevos criterios Sentencia y que obligan a las empresas a ser mucho más específicas en sus pactos de moneda extranjera Evita que te paguen en bolívares cuando necesitas divisas Con mi Plan de Blindaje Corporativo ajustamos tu estructura legal para que tu negocio sea sólido y resistente a las contingencias actuales. \r\n\r\n¿Qué incluye? 1️⃣ Revisión de contratos. 2️⃣ Cláusulas de blindaje ante el TSJ. 3️⃣ Guía para tu equipo administrativo.\r\n\r\nNo dejes el futuro de tu empresa al azar. ¡Actúa hoy! Conversemos.', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'blindaje-corporativo-32', '+584124748478', '{\"tiktok\": \"https://www.tiktok.com/@malv443?_r=1&_t=ZM-93B2FQFEuHE\", \"facebook\": \"https://www.facebook.com/share/1C8ovVwXWW\", \"instagram\": \"https://www.instagram.com/malv44\"}', '2026-01-25', '2026-05-25', 'approved', 0, '2026-01-22 21:41:17', '2026-01-26 00:10:49'),
(33, 14, 'TRAJE PARA CABALLERO POCO USO', 'TRAJE PARA CABALLERO COLOR NEGRO TALLA PANTALON 34 SACO TALLA L, USADO UNA SOLA VEZ. Precio 30$', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'traje-para-caballero-poco-uso-33', '+584143467947', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-01-29', '2026-05-29', 'approved', 0, '2026-01-27 12:44:20', '2026-01-29 12:03:25'),
(34, 65, 'Servicio de mano de obra, remodelación, mantenimiento y afines', 'Se ofrece servicio de mano de obra para construcción en general, mantenimiento,  remodelaciones y acabados', 120, 'Cementerio Municipal de Valencia, Valencia, Parroquia Miguel Peña, Municipio Valencia, Estado Carabobo, 2001, Venezuela', 1, 'servicio-de-mano-de-obra-remodelacion-mantenimiento-y-afines-34', '+584122378417', '{\"tiktok\": null, \"facebook\": \"https://www.facebook.com/share/18PMEV7peW/\", \"instagram\": null}', '2026-02-06', '2026-06-06', 'approved', 0, '2026-02-01 01:02:55', '2026-02-06 19:52:05'),
(35, 49, 'Combo de 2 lentes de seguridad en 9 dolares', 'En venta, Combos de 2 lentes de seguridad en 9 dolares, cada uno, tenemos mas de 50 combos en existencia', 120, 'Valencia, Parroquia Santa Rosa, Municipio Valencia, Estado Carabobo, Venezuela', 1, 'combo-de-2-lentes-de-seguridad-en-9-dolares-35', '+584142365301', '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '2026-02-06', '2026-06-06', 'approved', 0, '2026-02-02 12:51:25', '2026-02-06 19:51:50'),
(36, 42, 'La tienda donde se visten las reinas', 'Tu pasarela diaria empieza aquí en Queen Voga Boutique, dónde se visten las reinas bellas de la casa', 120, 'Guacara, Parroquia Guacara, Municipio Guacara, Estado Carabobo, 2015, Venezuela', 1, 'la-tienda-donde-se-visten-las-reinas-36', '+584140445725', '{\"tiktok\": null, \"facebook\": null, \"instagram\": \"https://instagram/@queenvigaboutique\"}', NULL, NULL, 'pending', 0, '2026-02-07 16:22:00', '2026-02-07 16:22:00'),
(37, 68, 'Cursos de Modisteria', 'Curso de Modisteria, formación , aprende desde cero , manejo de máquina, patronaje básicos, corte y confección', 120, 'Parque Valencia, La Isabelica, Valencia, Parroquia Rafael Urdaneta, Municipio Valencia, Estado Carabobo, 2003, Venezuela', 1, 'cursos-de-modisteria-37', '+584124498461', '[]', NULL, NULL, 'pending', 0, '2026-02-08 12:41:53', '2026-02-08 12:41:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificado_photos`
--

CREATE TABLE `clasificado_photos` (
  `id` bigint UNSIGNED NOT NULL,
  `clasificado_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clasificado_photos`
--

INSERT INTO `clasificado_photos` (`id`, `clasificado_id`, `path`, `is_main`, `created_at`, `updated_at`) VALUES
(3, 5, 'clasificados/60Nt3JQctDQSdaW8PVZwIdFgfyijWYV6NnWrxkJv.jpg', 0, '2025-11-20 15:20:41', '2025-11-20 15:20:41'),
(4, 5, 'clasificados/rl0WwSeRrQg1V2XAqaI6XsnvGZmEgZir77FvITZi.jpg', 0, '2025-11-20 15:20:41', '2025-11-20 15:20:41'),
(5, 6, 'clasificados/clwxTXmgNdojFca4qWWPfKPgqBon4MhjlKAtEzLt.jpg', 0, '2025-11-23 22:32:34', '2025-11-23 22:32:34'),
(6, 8, 'clasificados/7y93JKmtw5b2wTcOLtyWTrXYDFLsz1E0RGeVEODf.jpg', 0, '2025-11-24 21:13:55', '2025-11-24 21:13:55'),
(7, 9, 'clasificados/0WSoJ0ZvrPEXLUjTL053RImJGBZSIIFMe27tSIvx.jpg', 0, '2025-11-25 00:32:12', '2025-11-25 00:32:12'),
(8, 10, 'clasificados/Wokk1tGQGNUKbJllXGNOevEdReApE0WjVCKsNp8R.jpg', 0, '2025-11-25 00:39:21', '2025-11-25 00:39:21'),
(9, 11, 'clasificados/CiCaxZy0RUJ7FP0BPzTrfjQSeYY81DhgT0Zahwb1.jpg', 0, '2025-11-25 00:44:55', '2025-11-25 00:44:55'),
(10, 12, 'clasificados/ShoznBKbpCuYAlc1bgZQ3PgoqAAdqUmYw0iZMVgJ.webp', 0, '2025-11-25 05:36:50', '2025-11-25 05:36:50'),
(11, 13, 'clasificados/eMtRh0lshQxMiqBSOvXFtFOFjSBWZoSz9wNCwnQd.jpg', 0, '2025-11-25 08:14:38', '2025-11-25 08:14:38'),
(12, 13, 'clasificados/TSWGZKYSKyzdskDm7f95p8isS3KZjdJdeRv3qJ5C.jpg', 0, '2025-11-25 08:14:38', '2025-11-25 08:14:38'),
(13, 14, 'clasificados/NpEUqXTfPfoxMKNE3RTQJrt73XHkZKRJO6Zuws6p.jpg', 0, '2025-11-25 22:15:56', '2025-11-25 22:15:56'),
(14, 14, 'clasificados/7Jv1JaR91vuK4Z2HOhBss5ImsxgSFSzB5VQJWMDc.jpg', 0, '2025-11-25 22:15:56', '2025-11-25 22:15:56'),
(15, 16, 'clasificados/CqCXM7I69nlYFtMlVSDURoWVLmVuIzphliM67uKr.jpg', 0, '2025-12-02 23:34:44', '2025-12-02 23:34:44'),
(16, 16, 'clasificados/7o8ktHPFV5OYdTf9Nd9ajDu23odOOvoZNwWXfKV6.jpg', 0, '2025-12-02 23:34:44', '2025-12-02 23:34:44'),
(17, 17, 'clasificados/EMC14w7m7kNpwER44R3PYaT5sgk8JNm3f8LTaidU.jpg', 0, '2025-12-03 00:15:21', '2025-12-03 00:15:21'),
(18, 17, 'clasificados/j9J3HeelJF077Aw86Ea9BJLHcOSIaXg1pd42FeiV.jpg', 0, '2025-12-03 00:15:21', '2025-12-03 00:15:21'),
(19, 18, 'clasificados/TlTfqROIgXeCdcBPooKXfJBLZUMz1wmVuavn5Ayo.webp', 0, '2025-12-05 15:04:52', '2025-12-05 15:04:52'),
(20, 20, 'clasificados/x9C1Yt2bjxWdSwy0Z78amT6BcozRVeSZINVnRYsx.jpg', 0, '2025-12-16 21:40:44', '2025-12-16 21:40:44'),
(21, 22, 'clasificados/6QPIFKBVNt1OrTa4BirrTz8ke6NMjcZDiuhjdZ4I.jpg', 0, '2026-01-09 06:01:46', '2026-01-09 06:01:46'),
(22, 22, 'clasificados/i0Mh3GZxMK00Wg4Hu2H9uzAMFw1STDuNsPrC0dgH.webp', 0, '2026-01-09 06:01:46', '2026-01-09 06:01:46'),
(23, 23, 'clasificados/VGfXs1Wc4f2hVeT4BdnWlIJInD2IvzGEpspgfeFu.jpg', 0, '2026-01-09 06:09:55', '2026-01-09 06:09:55'),
(24, 23, 'clasificados/gadDyF2TkAN1yJqFgK4wu36KEL5nS86zB8rPu1u9.jpg', 0, '2026-01-09 06:09:55', '2026-01-09 06:09:55'),
(25, 25, 'clasificados/RfC69uq0l6XMsaffPdEgY39joMu7LkoWR8a4PIaE.jpg', 0, '2026-01-14 16:38:55', '2026-01-14 16:38:55'),
(26, 26, 'clasificados/4vZy64JmfCIn6xcX4EbK2OdfXMTG6lKLQQf5F4ZF.jpg', 0, '2026-01-15 10:39:23', '2026-01-15 10:39:23'),
(27, 27, 'clasificados/2NFBb7cSqId9uvqTrwRng3dGIHp4giyTzxHtLhbM.jpg', 0, '2026-01-16 14:45:30', '2026-01-16 14:45:30'),
(28, 29, 'clasificados/I6JEYIVaTabKVyrGDnaqJIgEdedQBHYufMMlHzTL.png', 0, '2026-01-22 16:03:43', '2026-01-22 16:03:43'),
(29, 29, 'clasificados/7kipXZGzJFhfUbT2IL95Xdh7DmCSGz58nVJNlMpk.jpg', 0, '2026-01-22 16:03:43', '2026-01-22 16:03:43'),
(30, 30, 'clasificados/vd79KfZLl2NW0PHctyECMYXb6qoqM8u7udK2piUe.jpg', 0, '2026-01-22 17:07:01', '2026-01-22 17:07:01'),
(31, 31, 'clasificados/rLYQO40lwcJR8qzsIlfchNCWed8VbYeFerJU2RCW.jpg', 0, '2026-01-22 20:41:34', '2026-01-22 20:41:34'),
(32, 31, 'clasificados/O4OjnAsyLcl3qTh4eCg2iF37P8UZippSuB7yFF2K.jpg', 0, '2026-01-22 20:41:34', '2026-01-22 20:41:34'),
(33, 32, 'clasificados/MNPFIzr8nsA4OkVD870tLHzV5luXQlCKX4zoX4oZ.png', 0, '2026-01-22 21:41:17', '2026-01-22 21:41:17'),
(34, 32, 'clasificados/9zyJwDtU6Jr21JD27vKZr8XRuBoPXjtQ8hdGPpnG.jpg', 0, '2026-01-22 21:41:17', '2026-01-22 21:41:17'),
(35, 33, 'clasificados/YQuzBL9mkySKlohqzj7TKSigwydRohnWQFx6y862.jpg', 0, '2026-01-27 12:44:20', '2026-01-27 12:44:20'),
(36, 33, 'clasificados/pslyYsVjroUqP4PjHL9vNcV4RyzxWEgQx3hRrpX4.jpg', 0, '2026-01-27 12:44:20', '2026-01-27 12:44:20'),
(37, 35, 'clasificados/dtTcbYHe86kpASB4ozrxxXbXsg9AYMBYdmWdWEuO.png', 0, '2026-02-02 12:51:25', '2026-02-02 12:51:25'),
(38, 37, 'clasificados/85zrRftA8Hskdp4Afvyh2b1fepQI1oD2TDwrmoWO.jpg', 0, '2026-02-08 12:41:53', '2026-02-08 12:41:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint UNSIGNED NOT NULL,
  `contract_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` bigint UNSIGNED DEFAULT NULL,
  `is_self_represented` tinyint(1) NOT NULL DEFAULT '0',
  `client_signature` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `seller_id` bigint UNSIGNED NOT NULL,
  `contract_duration` int NOT NULL,
  `amount` double NOT NULL,
  `billing_info` json DEFAULT NULL,
  `has_spot` tinyint(1) NOT NULL DEFAULT '0',
  `spot_amount` double NOT NULL,
  `spots_durations` json DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertisement_frequency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renewal_of` bigint UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `other_specifics` longtext COLLATE utf8mb4_unicode_ci,
  `data` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contracts`
--

INSERT INTO `contracts` (`id`, `contract_id`, `customer_id`, `agent_id`, `is_self_represented`, `client_signature`, `status`, `seller_id`, `contract_duration`, `amount`, `billing_info`, `has_spot`, `spot_amount`, `spots_durations`, `product`, `advertisement_frequency`, `renewal_of`, `start_date`, `end_date`, `other_specifics`, `data`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, '2026-30532641-00001', '30532641', NULL, 1, 0, 'pending', 5, 2, 60, '{\"name\": \"Edwin\", \"email\": \"edfer_code@proton.me\", \"address\": \"Valencia\", \"document\": \"30532641\", \"last_name\": \"Machado\", \"phone_number\": \"0424-4553000\", \"document_type\": \"V\"}', 1, 4, '[{\"duration\": \"5\"}]', 'Publicidad', '90.9 MHz', NULL, '2026-01-13', '2026-03-12', NULL, '{\"webpage\": null, \"social_media\": {\"tiktok\": null, \"youtube\": null, \"instagram\": null}}', NULL, '2026-01-14 02:32:26', '2026-01-14 02:32:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contract_documents`
--

CREATE TABLE `contract_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `contract_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'General',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contract_signatures`
--

CREATE TABLE `contract_signatures` (
  `id` bigint UNSIGNED NOT NULL,
  `contract_id` bigint UNSIGNED NOT NULL,
  `stage_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `signature_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signed_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contract_workflow_states`
--

CREATE TABLE `contract_workflow_states` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contract_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stage_id` bigint UNSIGNED NOT NULL,
  `workflow_id` bigint UNSIGNED NOT NULL,
  `with_agent` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin_reports_done` tinyint(1) NOT NULL DEFAULT '0',
  `rejection_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contract_workflow_states`
--

INSERT INTO `contract_workflow_states` (`id`, `created_at`, `updated_at`, `contract_id`, `status`, `current_stage_id`, `workflow_id`, `with_agent`, `is_admin_reports_done`, `rejection_reason`, `rejected_at`) VALUES
(6, '2026-01-14 02:32:26', '2026-01-14 02:32:26', 6, 'pendiente', 1, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` enum('V','E','G','J') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('F','NF') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NF',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `billing_info` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customer_id`, `document_type`, `type`, `name`, `last_name`, `nationality`, `email`, `phone_number`, `address`, `billing_info`, `deleted_at`, `created_at`, `updated_at`) VALUES
('30532641', 'V', 'NF', 'Edwin', 'Machado', 'Venezolana', 'edfer_code@proton.me', '0424-4553000', 'Valencia', '[{\"active\": false, \"document\": null, \"billing_name\": null, \"billing_email\": null, \"document_type\": null, \"billing_address\": null, \"billing_phone_number\": null}]', NULL, '2026-01-14 02:31:25', '2026-01-14 02:31:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lost_documents`
--

CREATE TABLE `lost_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_house` tinyint(1) NOT NULL DEFAULT '0',
  `claimed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lost_documents`
--

INSERT INTO `lost_documents` (`id`, `owner_name`, `owner_lastname`, `document_type`, `document_number`, `in_house`, `claimed`, `created_at`, `updated_at`) VALUES
(36, 'RUBEN ANTONIO', 'HIDALGO ARIAS', 'otro', 'CEDULA ,CARNET DE LA PATRIA TARJETA BANCARIA', 1, 1, NULL, NULL),
(37, 'KATERINE KATIUSKA', 'LONGOBARDI MACHUCA', 'cedula', '29958717', 1, 0, NULL, NULL),
(39, 'CARMEN LUCRESIA', 'RUIZ GELVEZ', 'otro', 'CEDULA,TARJETA BANCARIA,', 1, 0, NULL, NULL),
(40, 'LUIS ALBERTO', 'HERNANDEZ HERNANDEZ', 'cedula', '19467373', 1, 0, NULL, NULL),
(41, 'MARIA TERESA', 'CALDERIN GONZALES', 'cedula', '17694688', 1, 0, NULL, NULL),
(42, 'HUMBERTO', 'ECHEVERRY', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(44, 'IDEL FRANCISCO', 'CERRADA RODRIGUEZ', 'cedula', '16992550', 1, 0, NULL, NULL),
(45, 'HERNAN ALBERTO', 'MEDINA RAMIREZ', 'otro', 'CEDULA , CARNET DE LA PATRIA TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(46, 'ADOLFREDO GREGORIO', 'SANCHEZ VARGAS', 'cedula', '22740389', 1, 0, NULL, NULL),
(47, 'KARINA KATTY', 'FAJARDO RIBAS', 'cedula', '17799134', 1, 0, NULL, NULL),
(49, 'MARIA VERONICA', 'LAMEDA LAGUNA', 'licencia', '27298907', 1, 0, NULL, NULL),
(50, 'ALEJANDRO JOSE', 'SALAS CASTILLO ', 'cedula', '10232998', 1, 0, NULL, NULL),
(51, 'DANIEL ALEXANDER', 'MORILLO PEREZ', 'cedula', '23648862', 1, 0, NULL, NULL),
(52, 'BELKIS YUDITH', 'VENTURA DE MORON', 'cedula', '7159608', 1, 0, NULL, NULL),
(53, 'JACKSON JAVIER', 'FERNANDEZ MARTINEZ', 'licencia', '16435167', 1, 0, NULL, NULL),
(54, 'JESUS RAFAEL', 'MATA MEDINA', 'licencia', '30155944', 1, 0, NULL, NULL),
(55, 'JAVIER ALEXANDER', 'ARISTIGUETA ALVARADO', 'cedula', '31487506', 1, 0, NULL, NULL),
(56, 'NOREIDIS YOHANA', 'SAN MARTIN SOTO', 'cedula', '31291977', 1, 0, NULL, NULL),
(57, 'DIOSNEY JOSGREIDY', 'OLIVA FERRER', 'cedula', '26167163', 1, 0, NULL, NULL),
(58, 'ANA CAROLINA', 'MORENO DIAZ', 'cedula', '24302545', 1, 0, NULL, NULL),
(59, 'DIXON DE JESUS', 'GONZALES ORTEGA', 'otro', 'CEDULA , TARJETA BANCARIA , LICENCIA', 1, 0, NULL, NULL),
(60, 'EFRAIN JOSE', 'ROYERO LOPEZ', 'otro', 'CARNET PSUV', 1, 0, NULL, NULL),
(62, 'ALBENIS RAMON', 'RODRIGUEZ GARCIA', 'cedula', '17424812', 1, 0, NULL, NULL),
(63, 'JOSE ALEXIS', 'SILVA YEPEZ', 'cedula', '7120417', 1, 0, NULL, NULL),
(64, 'EFRAIN JOSE', 'ROYERO LOPEZ', 'cedula', '24903972', 1, 0, NULL, NULL),
(65, 'JHONCLEIDER MICHAEL', 'NAVAS APARICIO', 'cedula', '34681209', 1, 0, NULL, NULL),
(66, 'LUIS RAFAEL', 'MANRIQUE', 'otro', 'CEDULA  , LICENCIA , TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(67, 'SENAYDA YUDITH', ' RUIZ SEQUERA ', 'cedula', '9824354', 1, 0, NULL, NULL),
(68, 'DANNY ROBERT', '  RODRIGUEZ TARAZONA', 'cedula', '18361736', 1, 0, NULL, NULL),
(69, 'WILDERMAN JOSE', ' AVILA SUAREZ', 'licencia', ' 27481573', 1, 0, NULL, NULL),
(71, 'YOSNIER ALEXANDER', 'RODRIGUEZ HERNANDEZ', 'cedula', '34184569', 1, 0, NULL, NULL),
(72, 'ADOLFREDO GREGORIO', 'SANCHEZ VARGAS', 'licencia', '22740389', 1, 0, NULL, NULL),
(73, 'DALLANY LUCIA', ' MEDINA PIÑERO', 'cedula', '14393328', 1, 0, NULL, NULL),
(74, 'silverio', 'sabadiego', 'cedula', '363179', 1, 0, NULL, NULL),
(75, 'luis eduardo', 'escalona bonavita', 'cedula', '9889758', 1, 0, NULL, NULL),
(77, 'lubieska alejandra ', 'garay pacheco', 'cedula', '29524591', 1, 0, NULL, NULL),
(78, 'ELIZAID JOSE', 'DIAZ CORTEZ', 'otro', 'CARNET , TARJETAS BACARIAS', 1, 0, NULL, NULL),
(79, 'JOSE LUIS ', 'CASIQUE PARADA', 'cedula', '14729962', 1, 0, NULL, NULL),
(80, 'HERMES OMAR', 'YEPEZ', 'cedula', '16647276', 1, 0, NULL, NULL),
(81, 'FREDDY JOSE ', 'GRANADOS CASTILLO', 'cedula', '9825856', 1, 0, NULL, NULL),
(82, 'ANGELA SORENNA', 'RONDON TANG', 'cedula', '31435728', 1, 0, NULL, NULL),
(83, 'JOSE ALBERTO', 'BLANCO IRIARTE ', 'otro', 'CEDULA , , LICENCIA', 1, 0, NULL, NULL),
(84, 'ANA LUCIA', 'PIÑERO', 'cedula', '8172762', 1, 0, NULL, NULL),
(85, 'RUTH ELIZABETH', 'PAREDES RAMIREZ', 'cedula', '16741429', 1, 0, NULL, NULL),
(86, 'JESUS RAFAEL ', 'MATA MEDINA', 'cedula', '30155944', 1, 0, NULL, NULL),
(87, 'BRIITTE ALJANDRA ', 'FREITES GUTIERRZ ', 'cedula', '30913853', 1, 0, NULL, NULL),
(88, 'ALEXANDER JOSE ', 'RODRIGUEZ NAVARRO ', 'cedula', '15897852', 1, 0, NULL, NULL),
(89, 'LUBIESKA ALEJANDRA  ', 'GARAY PACHECO ', 'cedula', '29524591', 1, 0, NULL, NULL),
(93, 'MARIA GABRIELA ', 'CASTILLO MEJIAS', 'cedula', 'CEDULA , LICENCIAS', 1, 0, NULL, NULL),
(94, 'LUBIESKA ALEJANDRA  ', 'GARAY PACHECO ', 'cedula', '29524591', 1, 0, NULL, NULL),
(95, 'JHON ERICK', 'RIVAS CASTAÑEDA', 'cedula', '27029281', 1, 0, NULL, NULL),
(96, 'ELISA ISABEL', 'LOPEZ L', 'otro', 'TARETA DE DEBITO', 1, 0, NULL, NULL),
(97, 'GERDY EVELIN ', 'LEON COLMENAREZ', 'licencia', '04464070', 1, 0, NULL, NULL),
(98, 'JOSE ARMANDO', 'GOMEZ GARCIA', 'otro', 'CARNET DEL PSUV', 1, 0, NULL, NULL),
(99, 'HENRRY ANTONIO', 'SUAREZ', 'cedula', '5370123', 1, 0, NULL, NULL),
(100, 'WLADIMIR ', 'ROJAS', 'licencia', '15259930', 1, 0, NULL, NULL),
(101, 'CESAR ', 'BRICEÑO', 'otro', 'TARETA DEBITO', 1, 0, NULL, NULL),
(102, 'NELSON', 'OCHOA', 'cedula', '4450475', 1, 0, NULL, NULL),
(103, 'JOSE GREGORIO', 'BAZURTO', 'cedula', '7125416', 1, 0, NULL, NULL),
(107, 'ALEX ENRIQUE', 'CARRERO MUJICA', 'otro', 'CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(108, 'JORGE ANTONIO', 'DOMINGUEZ', 'cedula', '14753779', 1, 0, NULL, NULL),
(109, 'YANNET DEL VALLE', 'REQUENA MOROCOIMA', 'cedula', '13894469', 1, 0, NULL, NULL),
(110, 'ASUNCION ', 'VILLEGAS', 'otro', 'TARJETA DE DEBITO', 1, 0, NULL, NULL),
(111, 'CARLOS', 'TRAVIESO', 'cedula', '9823605', 1, 0, NULL, NULL),
(112, 'WILDERMAR ', 'AVILA SUAREZ', 'cedula', '27481573', 1, 0, NULL, NULL),
(113, 'MARIA DEL CARMEN', 'PEÑA DE MENDOZA', 'cedula', '3115180', 1, 0, NULL, NULL),
(114, 'NORBELIS ORDALIS', 'TORRES VARGAS', 'otro', 'RIF ', 1, 0, NULL, NULL),
(115, 'MERLENI YAJIRA', 'GUAINA HERNANDEZ', 'cedula', '12607877', 1, 0, NULL, NULL),
(116, 'NEUDILED ARIANNA VICTORIA', 'RIVERA PALMA', 'cedula', '31759956', 1, 0, NULL, NULL),
(117, 'JESUS  ALEXANDER', 'COLMENAREZ ESCOBAR', 'cedula', '33079523', 1, 0, NULL, NULL),
(118, 'ERNESTO DAVID', 'VARGAS HURTADO', 'cedula', '33291078', 1, 0, NULL, NULL),
(119, 'SOFIA IVANNA DEL CARMEN', 'CARVAJAL SOLER', 'cedula', '31749503', 1, 0, NULL, NULL),
(120, 'DALGY MILAGROS ', 'PADRINO PINTO', 'cedula', '20316810', 1, 0, NULL, NULL),
(121, 'FRANKLIN  DANIEL', 'RODRIGUEZ ARRIECHE', 'cedula', '19001802', 1, 0, NULL, NULL),
(122, 'MARI MARCELINA', 'MACHADO', 'cedula', '84146561', 1, 0, NULL, NULL),
(123, 'NAIROBY DANIUSKA', 'GONZALEZ SOTO', 'otro', 'CEDULA, CARNET DE LAPATRIA,CARNET DEL PSUV, ', 1, 0, NULL, NULL),
(124, 'ADELAIDA BEATRIZ', 'ROSALES ', 'cedula', '16290399', 1, 0, NULL, NULL),
(125, 'ANTONIO VICENTE ', 'APARICIO TORRES', 'cedula', '22404276', 1, 0, NULL, NULL),
(126, 'ALBERT LEONARDO', 'CIDRIAN', 'licencia', '14112153', 1, 0, NULL, NULL),
(127, 'FEDORA DEL VALLE', 'CASTILLO GONZALEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(128, 'ELY ENRIQUE', 'NUÑEZ MACHADO', 'cedula', '14819401', 1, 0, NULL, NULL),
(129, 'SAMUEL EDUARDO', 'ATUESTA ROMAN', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(130, 'MERCEDES CAROLINA', 'AMARO CASTILLO', 'cedula', '24015197', 1, 0, NULL, NULL),
(131, 'MIGUEL ALFREDO', 'DE MARIA PARTIDA', 'cedula', '7474641', 1, 0, NULL, NULL),
(132, 'WILMARY MERCEDES', 'NOGUERA CHIRINOS', 'otro', 'CEDULA ,CARNET DE LA PATRIA , TARJETA BANCARIA', 1, 0, NULL, NULL),
(133, 'GUSTAVO ALEJANDRO ', 'GADEA PEÑA', 'cedula', '32460039', 1, 0, NULL, NULL),
(134, 'OLGA MARINA', 'PAEZ', 'cedula', '9824052', 1, 0, NULL, NULL),
(135, 'JOSE', 'MONACHINO POLISANO', 'licencia', '7086466', 1, 0, NULL, NULL),
(136, 'ASTRID YARIANNY ELENOR', 'MORRIS VELASCOS', 'cedula', '23796360', 1, 0, NULL, NULL),
(137, 'JULIAN ANTONIO', 'ACOSTA BRITO', 'cedula', '36275486', 1, 0, NULL, NULL),
(138, 'SERGIO ENRIQUE', 'GONZALEZ  AVIS', 'otro', 'CEDULA, LICENCIA , CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(139, 'GLADIS DEL CARMEN', 'AVIS DE GONZALES', 'cedula', '530577', 1, 0, NULL, NULL),
(140, 'ARMANDO', 'AYALA CANO', 'cedula', '16877548', 1, 0, NULL, NULL),
(141, 'DONYN DARIO', 'FIGUEREDO ORTEGA', 'cedula', '18252575', 1, 0, NULL, NULL),
(142, 'NELSON RAFAEL', 'RODRIGUEZ HERNANDEZ', 'cedula', '10616121', 1, 0, NULL, NULL),
(143, 'HERDERSON ', 'MALDONADO', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(144, 'LORENA JOSEFINA', 'GUEDEZ PEREZ', 'cedula', '12606900', 1, 0, NULL, NULL),
(145, 'JUANA ROSA', 'GUTIEREREZ DE SANDOVAL', 'otro', 'CEDULA Y TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(146, 'LIGIA MERCEDES', 'HERNANDEZ DE ROMERO', 'cedula', '3494755', 1, 0, NULL, NULL),
(147, 'LUISANA ANDREA', 'CASTILLO GONZALEZ', 'cedula', '30020554', 1, 0, NULL, NULL),
(148, 'SORELIS MARIA', 'LOPEZ TOVAR', 'cedula', '22001262', 1, 0, NULL, NULL),
(149, 'MARYURI MERCVEDES ', 'ROJAS SAAVEDRA', 'cedula', '23414766', 1, 0, NULL, NULL),
(150, 'CAÑIZALEZ RIVERO ', 'BERNANDO  ANTONIO', 'cedula', '9053102', 1, 0, NULL, NULL),
(151, 'EDUARD ALBERTO ', 'CASTILLO MONTOYA', 'cedula', '15861882', 1, 0, NULL, NULL),
(152, 'DANIEL DAVID', 'CASTLLI DURAN', 'cedula', '20893844', 1, 0, NULL, NULL),
(153, 'LAURA MARIELBYS', 'CHAVEZ ROMAN', 'cedula', '24442929', 1, 0, NULL, NULL),
(154, 'ANGEL ANTONIO', 'COLMENAREZ MALVACIA', 'cedula', '2728378', 1, 0, NULL, NULL),
(155, 'ELEAZAR JOSE', 'COHEN GARCIA', 'cedula', '7072517', 1, 0, NULL, NULL),
(156, 'MARIA DE LOURDES ', 'CAMPO MUÑOZ', 'cedula', '8806606', 1, 0, NULL, NULL),
(157, 'LUIS DAVID', 'CORONEL SALAS', 'otro', 'CEDULA, CARNET DE LA PATRIA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(158, 'ZORAIDA MARGARITA', 'COLMENAREZ TORREALBA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(159, 'VALENTINA BETZABETH ', 'CHACON CARDOZO', 'licencia', '30172086', 1, 0, NULL, NULL),
(160, 'MANUEL FELIPE', 'CHACIN HERRERA', 'otro', 'CEDULA, TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(161, 'MAYRA ALEJANDRA', 'CASSERES RINCON', 'cedula', '22744666', 1, 0, NULL, NULL),
(162, 'PALMENIS', 'CARMONA OTAIZA', 'otro', 'CEDULA, LICENCIA,TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(163, 'MARCOS ANIBAL', 'COLMENAREZ ROMAN', 'cedula', '10776271', 1, 0, NULL, NULL),
(164, 'ALIRIO RAMON', 'CHIRINO', 'cedula', '1140762', 1, 0, NULL, NULL),
(165, 'ISBELYS BEATRIZ ', 'PEREZ CONTRERAS', 'otro', 'CANET DE LA PATRIA', 1, 0, NULL, NULL),
(166, 'JOSE GREGORIO', 'CHIRINOS CASTILLOS', 'cedula', '33878085', 1, 0, NULL, NULL),
(167, 'IRIS VANESSA', 'GALLEGO ASTUDILLO', 'cedula', '18767784', 1, 0, NULL, NULL),
(168, 'ALI JOSE', 'GITIA GARCIA', 'cedula', '33199299', 1, 0, NULL, NULL),
(169, 'ARIAM YOSIBETH', 'ORELLANA ZEGOVIA', 'cedula', '27501622', 1, 0, NULL, NULL),
(170, 'JOANGLI ENRIQUE', 'WINKAAR IÑIGUEZ', 'licencia', '16568869', 1, 0, NULL, NULL),
(171, 'JAIRO DE JESUS', 'YEPEZ HURTADO', 'licencia', '16152628', 1, 0, NULL, NULL),
(172, 'NEYKARITH JOSEMITH', 'CEDEÑO CRUZ', 'cedula', '32181672', 1, 0, NULL, NULL),
(173, 'YASMIN CAROLINA', 'COLMENAREZ CASTILLO', 'cedula', '15964119', 1, 0, NULL, NULL),
(174, 'EROS COROMOTO', 'CORZSO PINEDA', 'cedula', '18945992', 1, 0, NULL, NULL),
(175, 'MARIA DE LA CRUZ', 'CISNEROS DE SALAZAR', 'cedula', '2339696', 1, 0, NULL, NULL),
(176, 'SABAT MILAGRO', 'COLMENAREZ OSPINA', 'cedula', '22408839', 1, 0, NULL, NULL),
(177, 'JOSE RAFAEL', 'CHACON  GUEVARA', 'cedula', '21031808', 1, 0, NULL, NULL),
(178, 'MARIA DE LOS ANGELES', 'CAMACHO PARRA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(179, 'ZULLY SOMAY', 'CARRILLO MOLINA', 'cedula', '13323953', 1, 0, NULL, NULL),
(180, 'JORGE LUIS ', 'CORREA MARTINEZ', 'cedula', '27609837', 1, 0, NULL, NULL),
(181, 'NESTOR LUIS', 'CASTILLO MURILLO', 'cedula', '7080720', 1, 0, NULL, NULL),
(182, 'GABRIEL JOSE', 'CASTELANO', 'otro', 'RIF, CERTIFICADO MEDICO, CEDULA', 1, 0, NULL, NULL),
(183, 'WLADIMIR ALEXANDER ', 'CAMARGO GONZALEZ', 'otro', 'CERTIFICADO DE CIRCUALCION', 1, 0, NULL, NULL),
(184, 'ANGELA  MARIA', 'CEDEÑO GONZALEZ', 'cedula', '15088555', 1, 0, NULL, NULL),
(185, 'JHON ALEXANDER ', 'COLINA TABERA', 'cedula', '13509339', 1, 0, NULL, NULL),
(186, 'DEXEL ALEXANDER', 'CAMBERO MORA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(187, 'NORIS YARISBEL', 'CARRASCO MENDEZ', 'cedula', '18811332', 1, 0, NULL, NULL),
(188, 'SALOMON DE JESUS', 'CARVAJAL RODRIGUEZ', 'cedula', '19425364', 1, 0, NULL, NULL),
(189, 'JOSE RAFAEL ', 'CARRERO SANCHEZ', 'otro', 'CEDULA, TARJETA BANCARIA, LICENCIA', 1, 0, NULL, NULL),
(190, 'WILVER JOSE', 'CORONADO MORENO', 'cedula', '27173633', 1, 0, NULL, NULL),
(191, 'AYBIS JOSEFINA', 'CASTRO', 'cedula', '8799683', 1, 0, NULL, NULL),
(192, 'VALERIA VALENTINA', 'CHIRINO CARRASQUERO', 'cedula', '34857128', 1, 0, NULL, NULL),
(193, 'JOSE RAMIRO', 'CALDERON VILLAMIZAR', 'otro', 'LICENCIA', 1, 0, NULL, NULL),
(194, 'YEISON GAMARRA ', 'CORREA GAMARRA', 'cedula', '28480090', 1, 0, NULL, NULL),
(195, 'STEHICY CAROLINA', 'COMENAREZ CESPEDES', 'cedula', '18783098', 1, 0, NULL, NULL),
(196, 'JUDITH DEL CARMEN', 'CHIRINOS SOTO', 'cedula', '7985750', 1, 0, NULL, NULL),
(197, 'MARY CARMEN ', 'CISNEROS PEREZ ', 'cedula', '22223969', 1, 0, NULL, NULL),
(198, 'ALBERT JESUS', 'CASTILLO CORDERO', 'cedula', '23427712', 1, 0, NULL, NULL),
(199, 'LUIS SANTIAGO', 'CALZADILLA VELAZQUEZ', 'otro', 'LICENCIA DE CONDUCIR', 1, 0, NULL, NULL),
(200, 'DUFRAY JOSE', 'CARVAJAL MARQUEZ', 'cedula', '28402961', 1, 0, NULL, NULL),
(201, 'ZAIDA JOSEFINA', 'COCHO ZAPATA', 'cedula', '5010773', 1, 0, NULL, NULL),
(205, 'mari', 'jose', 'cedula', '111111', 1, 1, NULL, NULL),
(207, 'mari', 'jose', 'cedula', '111111', 1, 0, NULL, NULL),
(208, 'mari', 'jose', 'cedula', '111111', 1, 1, NULL, NULL),
(209, 'KEVIN ANTONIO', 'BLANCO BRIZUELA', 'cedula', '21454236', 1, 0, NULL, NULL),
(210, 'MARYORY NAKARY', 'BAPTISTA RODRIGUEZ ', 'cedula', '15584673', 1, 0, NULL, NULL),
(211, 'IVAN ALEXANDER', 'BIZAMON SANCHEZ', 'cedula', '16896202', 1, 0, NULL, NULL),
(212, 'CARMEN TERESA', 'BOYER', 'cedula', '6411265', 1, 0, NULL, NULL),
(213, 'MAYRA ALEJANDRA ', 'BLANCO MEDINA', 'cedula', '13988682', 1, 0, NULL, NULL),
(214, 'BELKYS YADIRA', 'BOLIVAR', 'cedula', '7046909', 1, 0, NULL, NULL),
(215, 'BENITEZ GONZALEZ', 'SEBASTIAN JESUS', 'cedula', '30046575', 1, 0, NULL, NULL),
(216, 'MARY ELENA', 'BELLO AGUILERA', 'cedula', '13033712', 1, 0, NULL, NULL),
(217, 'JOSE FRANCISCO', 'BUSTAMENTE RIVERO', 'licencia', '27517568', 1, 0, NULL, NULL),
(218, 'RENNY DIONICIO', 'BLANCO DELGADO', 'cedula', '12493606', 1, 0, NULL, NULL),
(219, 'ALFREDO RAFAEL', 'BARAZARTE CUBILLAN', 'cedula', '14080841', 1, 0, NULL, NULL),
(220, 'DAVID DONAT', 'BARRUETA SANDOVAL', 'cedula', '16503671', 1, 0, NULL, NULL),
(221, 'RUBEN DARIO', 'FLORES ROSALES', 'cedula', '12604669 CEDULA, LICENCIA , TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(222, 'ALFREDO JOSE', 'FERRER PEREZ', 'cedula', '30000838', 1, 0, NULL, NULL),
(223, 'EGLEE MILAGROS ', 'FARFAN OROPEZA', 'cedula', '14495089', 1, 0, NULL, NULL),
(224, 'GIOVANNI  JOSE ', 'FERNANDEZ MENDOZA', 'otro', '28480059 CERTIFICADO MEDICO, CEDULA, LICENCIA', 1, 0, NULL, NULL),
(225, 'IRIS GABRIELA', 'FERNANDEZ MACHADO', 'cedula', '28067970', 1, 0, NULL, NULL),
(226, 'CARMEN MARIA', 'FIGUEREDO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(227, 'ROGER RICARDO', 'FIGUERA CASTILLO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(228, 'ANTOLINA', 'FLORES PERAZA', 'cedula', '8144905', 1, 0, NULL, NULL),
(229, 'FREDDY JOSE', 'FERRER RIERA', 'licencia', '17620546', 1, 0, NULL, NULL),
(230, 'YANET MERCEDES', 'FERNANDEZ REQUENA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(231, 'FRANYERBER JESUS', 'HERRERA GONZALEZ', 'cedula', '32547553', 1, 1, NULL, NULL),
(232, 'FUENMAYOR CRUCES ', 'CARMEN ELOISA', 'cedula', '5941370', 1, 0, NULL, NULL),
(233, 'WILFREDO ENRIQUE', 'FRANCO REQUENA', 'cedula', '16049888', 1, 0, NULL, NULL),
(234, 'NIDIAN  MARITZA', 'FARIAS', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(235, 'ARMANDA JOSEFINA', 'FLORES', 'cedula', '4128737', 1, 0, NULL, NULL),
(236, 'DOMENICO VICENZO', 'CONZA HERNANDEZ', 'cedula', '29941096', 1, 0, NULL, NULL),
(237, 'OSCAR DANIEL', 'GOMEZ LOPEZ', 'cedula', '30096289', 1, 0, NULL, NULL),
(238, 'JESUS SANTIAGO', 'BRICEÑO', 'cedula', '18412084', 1, 0, NULL, NULL),
(239, 'CESAR MIGUEL', 'YEPEZ APONTE', 'cedula', '34686057', 1, 0, NULL, NULL),
(240, 'YOHEL MARIN ', 'HERRERA ARANGUREN', 'licencia', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(241, 'YOLANDA NICOLASA', 'SALCEDO DE GOITIA', 'otro', 'CEDULA, CARNET DE LA PATRIA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(242, 'FERNANDO LEON ', 'YUSTI OCAMPO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(243, 'JOSE EDUARDO', 'YUSTI ALVIZU', 'cedula', '16449003', 1, 0, NULL, NULL),
(244, 'MAIKEL ENRIQUE', 'CHIRINOS MACOTT', 'cedula', '32014301', 1, 0, NULL, NULL),
(245, 'JHOXEL GREGORIO', 'MEJIAS CORDERO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(246, 'OSCAR ENRIQUE', 'CUEVAS ENRIQUE', 'cedula', '8073899', 1, 0, NULL, NULL),
(247, 'MARBELLA', 'CRESPO', 'otro', 'CEDULA, CARNET DE LA PATRIA, CARNET IPSFA', 1, 0, NULL, NULL),
(248, 'NEOMAR RAFAEL ', 'CONTRERA DAVILA', 'cedula', '29882327', 1, 0, NULL, NULL),
(249, 'GABRIELA ALEJANDRA', 'MENDEZ ORTA', 'cedula', '31281013', 1, 0, NULL, NULL),
(250, 'GREGORY ALEJANDRO', 'CORRALES MERCADO', 'licencia', '30387139', 1, 0, NULL, NULL),
(251, 'MARIA ELENA', 'CASTILLO PRADO', 'cedula', '18228822', 1, 0, NULL, NULL),
(252, 'ALEXIS RAMON', 'CORDOVA  PIÑA', 'licencia', '11177396', 1, 0, NULL, NULL),
(253, 'ARMANDA JOSEFINA', 'FLORES', 'cedula', '4128737', 1, 0, NULL, NULL),
(254, 'NIDIA MARITZA', 'FARIAS', 'cedula', '03922405', 1, 0, NULL, NULL),
(255, 'WILFREDO ENRIQUE ', 'FRANCO REQUENA', 'otro', 'TARJETA BANCARIA, CEDULA', 1, 0, NULL, NULL),
(256, 'CARMEN ELOISA', 'FUENMAYOR CRUCES', 'cedula', '5941370', 1, 0, NULL, NULL),
(257, 'FRANYERBER JESUS', 'HERRERA GONZALEZ', 'cedula', '32547553', 1, 0, NULL, NULL),
(258, 'FREDDY JOSE ', 'FERRER RIERA ', 'cedula', '17620546', 1, 0, NULL, NULL),
(259, 'ANTONILA', 'FLORES PERAZA', 'cedula', '8144905', 1, 0, NULL, NULL),
(260, 'YOHEL MARIN ', 'HERRERA ARANGUREN', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(261, 'SIREN ANDREINA', 'MONTERO YUGURI', 'cedula', '25120893', 1, 0, NULL, NULL),
(262, 'MIRIAN GREGORIA', 'MARIN GAUNA', 'cedula', '15103324', 1, 0, NULL, NULL),
(263, 'ENDER ROBINSON', 'BALLEN TORRES', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(264, 'LUBERT DE JESUS', 'BRADSHAW HERNANDEZ', 'cedula', '26879121', 1, 0, NULL, NULL),
(265, 'NOHEMI DEL VALLE', 'BARCO VASQUEZ', 'cedula', '22423174', 1, 0, NULL, NULL),
(266, 'LORILYS MARIELIS', 'REYES SILVA', 'cedula', '30312623', 1, 0, NULL, NULL),
(267, 'JHONATTAN  RAFAEL ', 'RODRIGUEZ GONZALEZ', 'cedula', '21311422', 1, 0, NULL, NULL),
(268, 'CESAR ARMANDO', 'RINCON RUIZ', 'cedula', '24472449', 1, 0, NULL, NULL),
(269, 'WEILLIAM ARMANDA', 'RIVADENEIRA VASQUEZ', 'licencia', '5612079', 1, 0, NULL, NULL),
(270, 'GENESIS DAYANA', 'RODRIGUEZ SALINAS', 'cedula', '20315066', 1, 0, NULL, NULL),
(271, 'JOSE DANIEL ', 'PADRON TARAZONA', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(272, 'PEDRO RAIMON', 'ROSAS MORAO', 'cedula', '17956367', 1, 0, NULL, NULL),
(273, 'LUIS EDGARDO', 'MEDINA RODRIGUGEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(274, 'HEIDI DAIMAR', 'MUÑOZ MOLINA', 'cedula', '25752662', 1, 0, NULL, NULL),
(275, 'EVA MARIELA', 'MORENO ARTEAGA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(276, 'SANTOS XAVIER', 'MAYAS RODRIGUEZ', 'cedula', '24911504', 1, 0, NULL, NULL),
(277, 'FERNANDO SEGUNDO', 'MEDINA GONZALEZ', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(278, 'FRANCISCO JAVIER', 'MORENO VELAZQUEZ', 'cedula', '16502179', 1, 0, NULL, NULL),
(279, 'JORGE DANIEL', 'MUJICA TORRES', 'cedula', '34272036', 1, 0, NULL, NULL),
(280, 'JOSE LEONARDO ', 'MENDOZA SANCHEZ ', 'cedula', '34472595', 1, 0, NULL, NULL),
(281, 'ARMANDO HUMBERTO ', 'MACIA', 'otro', 'CERTIFICADO DE CIRCULACION Y CEDULA', 1, 0, NULL, NULL),
(282, 'DAVID JOSE', 'MENDEZ GONZALEZ', 'cedula', '29820838', 1, 0, NULL, NULL),
(283, 'JHULIANNY SARAI', 'MATA SILVA', 'cedula', '29745770', 1, 0, NULL, NULL),
(284, 'DERWINS MIGUEL', 'MARQUEZ VERGARA', 'cedula', '28821699', 1, 0, NULL, NULL),
(285, 'VANESA JOSEFINA', 'MENDOZA GORNEZ', 'otro', 'CERTIFICADO MEDICO, CEDULA, LICENCIA', 1, 0, NULL, NULL),
(286, 'LUIS RENE', 'MEJIAS CAMACHO', 'otro', 'TARJETAS BANCARIAS, LICENCIA, CEDULA', 1, 0, NULL, NULL),
(287, 'MARINEY', 'MOLINA SUAREZ', 'cedula', '7097726', 1, 0, NULL, NULL),
(288, 'YADIRA COROMOTO', 'MENDOZA MENDOZA', 'otro', 'CERTIFICADO DE DISCAPACIDAD', 1, 0, NULL, NULL),
(289, 'ASTRID DAYANA', 'GARCIA ROBLES', 'cedula', '24972190', 1, 0, NULL, NULL),
(290, 'WILKER JOSE', 'PEREZ RINCON', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(291, 'ENYERBE JAVIER', 'LOPEZ LEAL', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(292, 'MARIA ALEJANDRA', 'COLMENAREZ PACHECO', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(293, 'ALEJANDRA VALENTINA', 'LOZANO SANCHEZ', 'cedula', '28272580', 1, 0, NULL, NULL),
(294, 'ROSA ELENA ', 'MENDOZA', 'cedula', '7504565', 1, 0, NULL, NULL),
(295, 'YURAIMA YSABEL', 'ORTEGA PINEDA', 'otro', 'CARNET DE LA PATRIA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(296, 'DOMENICO VICENZO', 'CONZA HERNANDEZ', 'otro', 'CARNET DE LA PATRIA, ', 1, 0, NULL, NULL),
(297, 'GARCIA CASTILLO', 'EDGAR ALBERTO', 'cedula', '22426535', 1, 0, NULL, NULL),
(298, 'ADALBERTO JOSE', 'BARRETO CASTILLO', 'cedula', '22726983', 1, 0, NULL, NULL),
(299, 'ELION JAVIER', 'GARCIA ROMERO', 'cedula', '31310041', 1, 0, NULL, NULL),
(300, 'JEICKSON ADRIAN', 'MONTEZ FUENTES', 'cedula', '28553724', 1, 0, NULL, NULL),
(301, 'WILKER JOSE', 'PEREZ RINCON', 'cedula', '30958785', 1, 0, NULL, NULL),
(302, 'JOSE IGNACIO ', 'OVIEDO OLIVERO', 'otro', 'LICENCIA, CEDULA, TARJETA DE DEBITO ', 1, 0, NULL, NULL),
(303, 'ESTRELLA KIMBERLYN', 'JIMENEZ PEREZ', 'cedula', '21214164', 1, 0, NULL, NULL),
(304, 'ARNALDO ANTONIO', 'JAIMEZ MEJIA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(305, 'ROBERTO ANTONIO', 'JIMENEZ', 'cedula', '11882014', 1, 0, NULL, NULL),
(306, 'JOSE IVAN ', 'JARAMILLO RODRIGUEZ', 'otro', 'CEDULA, LICENCIA Y TARJETA BANCARIA', 1, 0, NULL, NULL),
(307, 'ANTHONY JOSE', 'JIMENEZ MEDINA', 'cedula', '17072447', 1, 0, NULL, NULL),
(308, 'ALVARO ', 'FAJARDO HERNANDEZ', 'otro', 'CEDULA, LICENCIA, CERIFICADO MEDICO', 1, 0, NULL, NULL),
(309, 'PABLO ALEJANDRO', 'TORRES HENRIQUEZ', 'otro', 'CEDULA, LICENCIA Y TARJETA BANCARIA', 1, 0, NULL, NULL),
(310, 'VALERIA ESTEFANIA', 'INFANTE GUZMAN', 'cedula', '29503218', 1, 0, NULL, NULL),
(311, 'ISOLINA ELENA ', 'AREVALA', 'cedula', '9672747', 1, 0, NULL, NULL),
(312, 'VALENTIN GUSTAVO DE JESUS', 'NUÑEZ NOGUERA', 'otro', 'CEDULA, TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(313, 'AUDIO', 'NAVARRO GONZALEZ', 'cedula', '11874829', 1, 0, NULL, NULL),
(314, 'JENYFER DAYETZA', 'NUÑEZ RODRIGUEZ', 'cedula', '24514334', 1, 0, NULL, NULL),
(315, 'LUZ STEFANY', 'NAVAS RANGEL', 'cedula', '30617878', 1, 0, NULL, NULL),
(316, 'ANGEL DAMIAN', 'NIERIS CASERES', 'cedula', '8177556', 1, 0, NULL, NULL),
(317, 'ESTEFANY ANDREINA', 'NATERA ESTRADA', 'otro', 'CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(318, 'JUAN HONORIO', 'URIBE FLOREZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(319, 'FREDDY JOSE', 'URBINA RODRIGUEZ', 'cedula', '26697233', 1, 0, NULL, NULL),
(320, 'WILMER JEAN CARLOS', 'URBANO DELGADO', 'otro', 'CEDULA Y TARJETA BANCARIA', 1, 0, NULL, NULL),
(321, 'BELKYS JOSEFINA', 'TOVAR RODRIGUEZ', 'cedula', '7096699', 1, 0, NULL, NULL),
(322, 'SARA PATRICIA ', 'TORRES CHACIN', 'cedula', '9754805', 1, 0, NULL, NULL),
(323, 'OLEIMA LERCILA', 'TORRES OLIVERES', 'cedula', '11156521', 1, 0, NULL, NULL),
(324, 'MIRIAN MARIA', 'TRUGEL MARCHAN', 'cedula', '12109418', 1, 0, NULL, NULL),
(325, 'FRANK ALBERTO', 'TOVAR PORTE', 'cedula', '10230787', 1, 0, NULL, NULL),
(326, 'JOSE ISIDORO ', 'TORREALBA', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(327, 'JHOAN JOEL', 'TABORDA NIÑO', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(328, 'NELSON ENRRIQUE', 'VASQUEZ PARRA', 'cedula', '17004222', 1, 0, NULL, NULL),
(329, 'NAYELIS DEL VALLE', 'BONILLO RIVERA', 'cedula', '28583241', 1, 0, NULL, NULL),
(330, 'BARRETO GUANIPA', 'ARTURO JOSE', 'cedula', '18412768', 1, 0, NULL, NULL),
(331, 'JIMENA ALEJANDRA', 'OSORIO URBINA', 'cedula', '22416979', 1, 0, NULL, NULL),
(332, 'ALFREDO JOSE', 'BOLIVAR CARDONA', 'cedula', '26917462', 1, 0, NULL, NULL),
(333, 'ANNY ANDREINA', 'BALZA CARDOZO', 'cedula', '23512689', 1, 0, NULL, NULL),
(334, 'RODOLFO ISIDRO', 'BELLO VILLEGAS', 'cedula', '12034085', 1, 0, NULL, NULL),
(335, 'JOSE ALBERTO', 'BELISARIOA  ROJAS', 'cedula', '33155309', 1, 0, NULL, NULL),
(336, 'JOSEPH JOSE', 'BARRIOS PEROZO', 'cedula', '21563751', 1, 0, NULL, NULL),
(337, 'ALEXIS JOSE', 'BETANCOURT JIMENEZ', 'cedula', '14625574', 1, 0, NULL, NULL),
(338, 'NIUMAR JOSE ', 'BLANCO', 'otro', 'CEDULA, LICENCIA, CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(339, 'HERNAN OSMUNDO', 'GAMEZ', 'otro', 'CEDULA ,LICENCIA, CARNET IPSFA', 1, 0, NULL, NULL),
(340, 'DANICSON JESUS', 'HURTADO PAEZ', 'cedula', '31083617', 1, 0, NULL, NULL),
(341, 'MANUEL ANDRES', 'OVALLES TORRES', 'otro', 'CEDULA ,LICENCIA,CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(342, 'JOSE ALI ', 'ARTEAGA ARTEAGA', 'otro', 'LICENCIA, CERTIFICADO MEDICO Y DE CIRCULACION', 1, 0, NULL, NULL),
(343, 'FRANKLIN WLADIMIR ', 'ARTEAGA HERRERA', 'otro', 'TARJETA BANCARIA Y CEDULA', 1, 0, NULL, NULL),
(344, 'DOMINGO ANTONIO', 'APONTE GONZALEZ', 'otro', 'CARNET DEL PSUV', 1, 0, NULL, NULL),
(345, 'PIERANYELA NEREIDA', 'AGRAGña DE SOSA', 'cedula', '7081730', 1, 0, NULL, NULL),
(346, 'AILEEN JHORGELI', 'ACOSTA SANCHEZ', 'cedula', '32284836', 1, 0, NULL, NULL),
(347, 'RICARDO JOSE', 'APONTE', 'otro', 'CERTIFICADO DE CIRCULACON', 1, 0, NULL, NULL),
(348, 'FELIX ALEXANDER', 'ARRAYAGO ALONZO', 'cedula', '25874104', 1, 0, NULL, NULL),
(349, 'OMAR RAFAEL', 'AGUILAR FRANCO ', 'cedula', '4129236', 1, 0, NULL, NULL),
(350, 'DAILYS ADRIANA', 'ACOSTA GUEVAS', 'cedula', '20570424', 1, 0, NULL, NULL),
(351, 'LUIS RAFAEL', 'AGUIRRE MENDOZA', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(352, 'GRISLEY CAROLINA', 'ACOSTA SANCHEZ', 'cedula', '34030333', 1, 0, NULL, NULL),
(353, 'JOSE RAFAEL', 'ALFONZO MARVAL', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(354, 'LILIA COROMOTO', 'AULAR VALERA', 'cedula', '7066193', 1, 0, NULL, NULL),
(355, 'VALERIA MILAGROS', 'ANGOLA ARAUJO', 'cedula', '21032510', 1, 0, NULL, NULL),
(356, 'JESUS SALVADOR', 'ARTIGAS ANDRADES', 'cedula', '9319436', 1, 0, NULL, NULL),
(357, 'PEDRO MANUEL', 'ADAMES MORENO', 'cedula', '27061851', 1, 0, NULL, NULL),
(358, 'PABLO ANTONIO ', 'ALVAREZ ADAN ', 'otro', 'CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(359, 'MARIANA CAROLINA ', 'ALTUVE HERNANDEZ', 'cedula', '31274707', 1, 0, NULL, NULL),
(360, 'ROSA YMELDA', 'HIDALGO MEJIAS', 'cedula', '7052091', 1, 0, NULL, NULL),
(361, 'CLAUDIA ELENA', 'HENNIG DIAZ', 'otro', 'LICENCIA Y CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(362, 'GREDMAG JOSE', 'HERRERA ZAMBRANO', 'cedula', '26195752', 1, 0, NULL, NULL),
(363, 'JORGELIS KARINA', 'HERNANDEZ NATERA', 'cedula', '24247609', 1, 0, NULL, NULL),
(364, 'JORGE SIMON', 'HERNANDEZ HERNANDEZ', 'cedula', '13597222', 1, 0, NULL, NULL),
(365, 'MARIANYERLIN YORGELIS ', 'HERRIQUEZ LEON', 'cedula', '26507517', 1, 0, NULL, NULL),
(366, 'MAXGLY YUBELIN', 'HERMOSO ROJAS', 'otro', 'LICENCIA, CEDULA, CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(367, 'SEBASTIAN ANDRES ', 'UTRERA HERMOSO', 'cedula', '33488217', 1, 0, NULL, NULL),
(368, 'WUILFREDO ELIAS', 'UTRERA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(369, 'ADRIAN JOSE', 'HENRIQUEZ GONZALEZ', 'otro', 'CEDULA, LICENCIA ', 1, 0, NULL, NULL),
(370, 'HUSMAN FRANCISCO ', 'VERA MEJIAS', 'cedula', '48700879', 1, 0, NULL, NULL),
(371, 'MARIAN KATHERINE ', 'HENRIQUEZ HERNANDEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(372, 'DAMIAN ARTURO', 'HERNANDEZ CASTELLANOS ', 'cedula', '30814867', 1, 0, NULL, NULL),
(373, 'JOSE GREGORIO ', 'IZQUERDO OLMEDO', 'cedula', '11345004', 1, 0, NULL, NULL),
(374, 'JUAN MOISES ', 'BLANCO LUGO', 'cedula', '7115777', 1, 0, NULL, NULL),
(375, 'MIGUEL ALFREDO', 'PEREIRA PIñERO', 'cedula', '19246081', 1, 0, NULL, NULL),
(376, 'JOHAN ENRIQUE', 'RIZO LAREZ', 'otro', 'CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(377, 'DIEGO FEDERICO', 'GALEA OLIVERO', 'cedula', '7088290', 1, 0, NULL, NULL),
(378, 'RUSBEL ELIEZER', 'GONZALEZ ALFARO', 'cedula', '17776528', 1, 0, NULL, NULL),
(379, 'DILIA TIBISAY', 'GARAY CASTILLO', 'cedula', '13470660', 1, 0, NULL, NULL),
(380, 'WILMEN JOSE', 'GONZALEZ GUERRA', 'otro', 'CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(381, 'VICTORIA', 'GUEVARA', 'cedula', '4132148', 1, 0, NULL, NULL),
(382, 'PEDRO PABLO', 'GONZALEZ HERNANDEZ', 'cedula', '12431577', 1, 0, NULL, NULL),
(383, 'LUIS JOSE', 'GUEDEZ FERNANDEZ', 'cedula', '22343173', 1, 0, NULL, NULL),
(384, 'EYILDA RUSBELY', 'GARBAN GOMEZ', 'cedula', '21587249', 1, 0, NULL, NULL),
(385, 'YRGREILYS YURETSI', 'GUILLEN ZAMBRANO', 'cedula', '31199793', 1, 0, NULL, NULL),
(386, 'JESSIKA NATASHA', 'GOMEZ CARRASQUEL', 'cedula', '18708780', 1, 0, NULL, NULL),
(387, 'JUAN ANTONIO', 'GUERRA', 'cedula', '16506516', 1, 0, NULL, NULL),
(388, 'RAMON HENRIQUE', 'GOMEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(389, 'YORDIS JOSE', 'GARCIA ROMERO', 'cedula', '25476711', 1, 0, NULL, NULL),
(390, 'JUAN ANTONIO', 'GUERRA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(391, 'EDIXON RAFAEL ', 'GARCIA RUIZ', 'otro', 'LICENCIA,CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(392, 'PEDRO ALI', 'GARCIA', 'cedula', '1338520', 1, 0, NULL, NULL),
(393, 'JUAN CARLOS', 'JUAN CARLOS', 'cedula', '30889125', 1, 0, NULL, NULL),
(394, 'RONAL JESUS', 'MENDOZA', 'otro', 'CEDULA, TARJETA BANCARIA, CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(395, 'JOSE GREGORIO', 'MENDOZA CASTILLO', 'otro', 'CARNET DE LA PATRIA, CARNET PSUV', 1, 0, NULL, NULL),
(396, 'ROBERT ARMANDO ', 'MELO MANIA', 'cedula', '29515112', 1, 0, NULL, NULL),
(397, 'KEYBELHSON JOEL', 'MORILLO CRUCES', 'cedula', '30172771', 1, 0, NULL, NULL),
(398, 'LEOPOLDO ', 'MORENO', 'cedula', '9001478', 1, 0, NULL, NULL),
(399, 'JULIO RAFAEL', 'MEDINA GALINDEZ', 'cedula', '30704759', 1, 0, NULL, NULL),
(400, 'CHRISTIAN WLADIMIR', 'MEDINA RODRIGUEZ', 'cedula', '14572452', 1, 0, NULL, NULL),
(401, 'DIEGO JOSE', 'MIJARES VALERO', 'cedula', '30341949', 1, 0, NULL, NULL),
(402, 'JENNIFER JULIA ', 'MOREAN PADILLA', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(403, 'DANIEL ENRIQUE', 'MOLINA HERNANDEZ', 'cedula', '18375413', 1, 0, NULL, NULL),
(404, 'GABRIEL', 'MARTINEZ', 'otro', 'TARJETA DE VACUNACION', 1, 0, NULL, NULL),
(405, 'ANTHONY RAYMON ', 'MARCIALES PEñA', 'cedula', '25107613', 1, 0, NULL, NULL),
(406, 'LILIANA PATRICIA', 'MALDONADO MENDOZA', 'otro', 'CEDULA, TARJETA BANCARIA, ,LICENCIA', 1, 0, NULL, NULL),
(407, 'JUAN ALBERTO ', 'MOLINA AGUILAR', 'otro', 'CEDULA, CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(408, 'JOSE RAFAEL', 'MARTINEZ ,MARTINEZ', 'otro', 'CEDULA ,LICENCIA', 1, 0, NULL, NULL),
(409, 'FRANKLYS ROBERTO', 'MARTINEZ MARTINEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(410, 'JHOSHUAR ANDRES', 'MOSQUERA VELIZ', 'cedula', '34539142', 1, 0, NULL, NULL),
(411, 'ANDIS LENING', 'MORA NOGUERA', 'cedula', '13313881', 1, 0, NULL, NULL),
(412, 'LEINAD DANIEL', 'MENDOZA PULIDO', 'cedula', '11556637', 1, 0, NULL, NULL),
(413, 'ROSANGELICA ', 'MACHADO PAREDES', 'cedula', '22599242', 1, 0, NULL, NULL),
(414, 'ALBA REBECA', 'MARTINEZ MAVAREZ', 'cedula', '15496754', 1, 0, NULL, NULL),
(415, 'CARMEN OBDULIA ', 'MARQUEZ', 'cedula', '3288286', 1, 0, NULL, NULL),
(416, 'SOLANGEL CAROLINA ', 'MORA BUSTAMANTE', 'otro', '17193874', 1, 0, NULL, NULL),
(417, 'ANGEL JOSE GREGORIO ', 'MACIAS DE JESUS', 'otro', 'CEDULA, LICENCIA Y CERTFIFICADO MEDICO', 1, 0, NULL, NULL),
(418, 'ERIKA EVAGELINA ', 'MONSALVE', 'cedula', '14515858', 1, 0, NULL, NULL),
(419, 'KRISSNA LOHEMY', 'MORA SAAVEDRA', 'otro', 'CEDULA, LICENCIA,CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(420, 'HELEM', 'MONTILLA LAMEDA', 'cedula', '27550294', 1, 0, NULL, NULL),
(421, 'ANA VICTORIA ', 'MORENO SILVA', 'otro', 'CEDULA Y TARJETA BANCARIA', 1, 0, NULL, NULL),
(422, 'JOSE ISAAC', 'MAYORGA GONZALEZ', 'cedula', '9828769', 1, 0, NULL, NULL),
(423, 'JUAN BAUTISTA', 'MARTINEZ', 'cedula', '5240810', 1, 0, NULL, NULL),
(424, 'JUSTINIANO', 'MOLINA', 'cedula', '24683420', 1, 0, NULL, NULL),
(425, 'KARINA NOELI', 'MENDOZA PIMENTEL', 'otro', 'CEDULA, CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(426, 'BEATRIZ ADRIANA', 'MENDEZ NUñEZ', 'otro', 'CARNET DE LA PATRIA Y CEDULA', 1, 0, NULL, NULL),
(427, 'GUSTAVO EDUARDO', 'MARTINEZ TOLEDO', 'otro', 'LICENCIA, CERTIFICADO MEDICO, LICENCIA', 1, 0, NULL, NULL),
(428, 'YOVANNA ELIZABETH', 'MONTIEL DIAZ', 'otro', 'CEDULA, LICENCIA, CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(429, 'YESSENIA BETZABETH', 'MATA LOPEZ', 'cedula', '22509483', 1, 0, NULL, NULL),
(430, 'EVELYN MARGARITA', 'MORENO MENDOZA', 'cedula', '16447449', 1, 0, NULL, NULL),
(431, 'ANGEL ANTONIO ', 'REYES BARRENO', 'cedula', '11475206', 1, 0, NULL, NULL),
(432, 'CAROLINA GREGORIA', 'PEñA DE ROMERO', 'cedula', '7173013', 1, 0, NULL, NULL),
(433, 'ELIANNYS ANDREINA', 'PEREZ RIERA', 'cedula', '19001416', 1, 0, NULL, NULL),
(434, 'ALMA LUZ', 'PEREZ CABRERA', 'cedula', '9445019', 1, 0, NULL, NULL),
(435, 'GRECIA VALENTINA', 'PERAZA CORTEZ', 'cedula', '28433445', 1, 0, NULL, NULL),
(436, 'LUIS ALEJANDRO', 'PELAEZ ESPINOZA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(437, 'NIKO ADRIAN ', 'PIñA PEROZO', 'cedula', '33334952', 1, 0, NULL, NULL),
(438, 'JUAN EMILIO ', 'PALENCIA MORALES', 'cedula', '17399519', 1, 0, NULL, NULL),
(439, 'CARLOS ALBERTO ', 'PINTO FIGUEROA', 'cedula', '14051567', 1, 0, NULL, NULL),
(440, 'ANGELO JOSE', 'PEñA ALZURUTT', 'cedula', '18748800', 1, 0, NULL, NULL),
(441, 'KENEDY JOSE', 'PESTANA MARTINEZ', 'cedula', '22687913', 1, 0, NULL, NULL),
(442, 'VICNELL JOSE', 'PARRA CARMONA', 'cedula', '19230022', 1, 0, NULL, NULL),
(443, 'YORISMA DEL CARMEN ', 'GUDIñO RUIZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(444, 'TEODORO', 'GAENA', 'otro', 'CERTIFICADO DE MEDICOS', 1, 0, NULL, NULL),
(445, 'CRISTOFHER DARIO', 'GOMEZ SANCHEZ', 'cedula', '32590494', 1, 0, NULL, NULL),
(446, 'RAUL  ALEJANDRO', 'ZAMBRANO GARCIA', 'cedula', '22358793', 1, 0, NULL, NULL),
(447, 'ALAM JOSE', 'CAñIZALEZ GUAINA', 'otro', 'CEDULA, CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(448, 'FRANCISCO', 'VASQUEZ OCHOA', 'cedula', '7240576', 1, 0, NULL, NULL),
(449, 'WLADIMIR', 'VALERO GONZALEZ', 'cedula', '20384523', 1, 0, NULL, NULL),
(450, 'VICTOR JESUS', 'QUEIPO VEROES', 'cedula', '2788368', 1, 0, NULL, NULL),
(451, 'DAYLO ALEXANDER ', 'PACHECO BRACHO', 'cedula', '30606066', 1, 0, NULL, NULL),
(452, 'WILLIANS ENRIQUE', 'HENRIQUEZ PADRON', 'cedula', '14252074', 1, 0, NULL, NULL),
(453, 'AARON DAVID', 'HANO MANTILLA', 'cedula', '31353234', 1, 0, NULL, NULL),
(454, 'MARGARET NATALIA', 'ALVARADO PIñA', 'cedula', '34351725', 1, 0, NULL, NULL),
(455, 'CARMEN GRACIELA', 'LA ROSA DELGADO', 'cedula', '19199869', 1, 0, NULL, NULL),
(456, 'JESUS ALIRIO', 'LOPEZ ARTAHONA', 'cedula', '11710110', 1, 0, NULL, NULL),
(457, 'ORMARI ANDREINA', 'LEAL GIL', 'cedula', '30997599', 1, 0, NULL, NULL),
(458, 'ANGELES GABRIELA', 'LOAIZA TOVAR', 'cedula', '31457215', 1, 0, NULL, NULL),
(459, 'JORGE ', 'LANDAETA', 'cedula', '7058441', 1, 0, NULL, NULL),
(460, 'LEANDRO ALEXANDER', 'SANCHEZ DURAND', 'cedula', '31770035', 1, 0, NULL, NULL),
(461, 'MIGDALIS ESTHER', 'SIERRA ROBLES', 'cedula', '13100151', 1, 0, NULL, NULL),
(462, 'EDGAR JOSE', 'SANCHEZ SUMOZA', 'cedula', '22005330', 1, 0, NULL, NULL),
(463, 'LAURA SARAI', 'SAAVCEDRA VILLEGAS', 'cedula', '27994688', 1, 0, NULL, NULL),
(464, 'JESUS ALBERTO ', 'SOCORRO SOCORRO', 'cedula', '19927336', 1, 0, NULL, NULL),
(465, 'LUIS DAVID ', 'SUAREZ SUAREZ', 'otro', 'CEDULA, LICENCIA, CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(466, 'JORGE LUIS', 'SOSA FREITES', 'licencia', '5524353', 1, 0, NULL, NULL),
(467, 'MIGUEL ABRAHAM', 'SALAS YGLESIAS ', 'otro', 'CEDULA, LICENCIA Y CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(468, 'CARLOS ALBERTO', 'SANCHEZ NAVAS', 'cedula', '9829605', 1, 0, NULL, NULL),
(469, 'FELIX ALBERTO', 'SOCI BARRANCO', 'otro', 'CEDULA,LICENCIA , CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(470, 'ANTONIO JOSE', 'SANCHEZ CAMPOS', 'cedula', '21531054', 1, 0, NULL, NULL),
(471, 'MIGUEL DE JESUS', 'SOLORZANO TOCORA', 'cedula', '27064416', 1, 0, NULL, NULL),
(472, 'NESTOR EDUARDO', 'SANTOS PAREDES', 'cedula', '20385120', 1, 0, NULL, NULL),
(473, 'MARITZA JOSEFINA', 'SILVA', 'cedula', '8622945', 1, 0, NULL, NULL),
(474, 'CHARLI JOSE', 'SALAZAR  ORTUño', 'cedula', '3053215', 1, 0, NULL, NULL),
(475, 'OSNEY JOSE', 'SALAZAR JOSE', 'cedula', '31454830', 1, 0, NULL, NULL),
(476, 'NAYUA SALAH', 'ABOULTAIF', 'cedula', '20380721', 1, 0, NULL, NULL),
(477, 'PEDRO', 'SOLORZANO', 'cedula', '7030506', 1, 0, NULL, NULL),
(478, 'SANCHEZ DIAZ ', 'JOSE GREGORIO', 'cedula', '25335955', 1, 0, NULL, NULL),
(479, 'MIGUEL ANGEL', 'SUMOZA CASTILLO', 'cedula', '1991200', 1, 0, NULL, NULL),
(480, 'HERMAN ', 'SEVILLA SEVILLA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(481, 'ANGIE MARIA', 'SALAZAR DE MARIN', 'cedula', '14863702', 1, 0, NULL, NULL),
(482, 'IVAN GABRIEL', 'SEQUERA CEBALLOS', 'cedula', '31219642', 1, 0, NULL, NULL),
(483, 'ALEX JOSUE', 'SILVA SILVA', 'cedula', '17891176', 1, 0, NULL, NULL),
(484, 'SUSJELY ALEXANDRA', 'SOLANO FERRER', 'cedula', '31120872', 1, 0, NULL, NULL),
(485, 'ERNESTO JOSE', 'SUAREZ SILVA', 'cedula', '15901764', 1, 0, NULL, NULL),
(486, 'GLADYS MARGARITA', 'SALAZAR DE PICHARDO', 'otro', 'CEDULA, CARNET DE LA PATRIA Y TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(487, 'RICHAR  DAVID', 'OTO QUINTERO', 'licencia', '16449431', 1, 0, NULL, NULL),
(488, 'NAIROBI NORBERYS', 'SANCHEZ DE MENDOZA', 'otro', 'CEDULA Y CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(489, 'JANDY EDWIN', 'SOTO BORGES', 'cedula', '18240378', 1, 0, NULL, NULL),
(490, 'BEATRIZ YUSVELY', 'SANCHEZ PAEZ', 'otro', 'CEDULA Y CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(491, 'ELVIA XIOMARA', 'SANCHEZ MARTINEZ', 'licencia', '5423518', 1, 0, NULL, NULL),
(492, 'DANIELA ', 'SANDOVAL MORENO', 'cedula', '27173200', 1, 0, NULL, NULL),
(493, 'JUAN EDUARDO', 'SILVA', 'otro', 'CARNET', 1, 0, NULL, NULL),
(494, 'CARLOS LUIS', 'SANCHEZ BRIZUELA', 'cedula', '14070918', 1, 0, NULL, NULL),
(495, 'CRISTIAN ARNALDO ', 'SILVA GONZALEZ', 'cedula', '18360961', 1, 0, NULL, NULL),
(496, 'OMAR ALEXANDER ', 'SANDOVAL MORENO', 'cedula', '32012856', 1, 0, NULL, NULL),
(497, 'ARIANA VALENTINA', 'SANCHEZ GONZALEZ', 'cedula', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(498, 'JESUS ISNARDO ', 'SILVA HERNANDEZ', 'cedula', '30647879', 1, 0, NULL, NULL),
(499, 'FAVIO YAMID', 'GUERRERO DIAZ', 'otro', 'CERTIFICADO DE VEHICULO', 1, 0, NULL, NULL),
(500, 'TEODORO GABRIEL', 'VAN DERBIEST PRIETO', 'cedula', '27228173', 1, 0, NULL, NULL),
(501, 'ANYELO DANIEL', 'ESCALANTE HERNANDEZ', 'cedula', '27590437', 1, 0, NULL, NULL),
(502, 'JULIO JOSE', 'ESCALONA MORILLO', 'cedula', '15412436', 1, 0, NULL, NULL),
(503, 'JESUS DAVID ', 'ESCALONA RODRIGUEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(504, 'HEDIMAR COROMOTO ', 'ESCALONA MENDOZA', 'otro', 'CERTIFICADO DE DISCAPACIDAD', 1, 0, NULL, NULL),
(505, 'HARRIS XOKRATEX', 'LUNA GOMEZ', 'otro', 'CEDULA, CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(506, 'MARIA FERNANDA', 'ESPINOZA TELLES', 'cedula', '26114214', 1, 0, NULL, NULL),
(507, 'TEODORO GABRIEL', 'VAN DERBIRST PRIETO', 'cedula', '27228173', 1, 0, NULL, NULL),
(508, 'ANA LUISA', 'INFANTE SILVA', 'cedula', '30362079', 1, 0, NULL, NULL),
(509, 'ILSA MARGARITA', 'PINTO', 'cedula', '4131071', 1, 0, NULL, NULL),
(510, 'KIMBERLYN DAYARI', 'ALVAREZ GUEDEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(511, 'SUSY COROMOTO', 'VALENCIA MORALES', 'cedula', '15738542', 1, 0, NULL, NULL),
(512, 'SIUL JOANCY', 'MALDONADO MONTILLA', 'cedula', '17904283', 1, 0, NULL, NULL),
(513, 'TOMAS IZAIAS', 'ESCALONA GUEVARA', 'cedula', '7000246', 1, 0, NULL, NULL),
(514, 'SUSY COROMOTO', 'VALENCIA MORALES', 'cedula', '15738542', 1, 0, NULL, NULL),
(515, 'ROBERTO CARLOS ', 'ESCALONA MARTINEZ', 'licencia', '13985465', 1, 0, NULL, NULL),
(516, 'AMELIA PASCUALA', 'NAVARRA DE MIRANDA', 'cedula', '4863172', 1, 0, NULL, NULL),
(517, 'ANDREA ALEJANDRA', 'NOGUERA MENDOZA', 'cedula', '29681403', 1, 0, NULL, NULL),
(518, 'EFRAIN RAMON', 'NIEVES PAREDES', 'cedula', '7020770', 1, 0, NULL, NULL),
(519, 'MARCELO RAMON', 'TORREALBA PEñA', 'otro', 'CEDULA, LICENCIA, CERTIFICADO NDE CIRCULACION', 1, 0, NULL, NULL),
(520, 'YESENIA YURUSAY', 'GONZALEZ GUZMAN', 'cedula', '15580109', 1, 0, NULL, NULL),
(521, 'NELIDA DEL CARMEN', 'GODOY HOYOA', 'cedula', '7081316', 1, 0, NULL, NULL),
(522, 'SOL MARIA', 'RODRIGUEZ DE RODRIGUEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(523, 'JOSE GREGORIO', 'FARFAN GONZALEZ', 'licencia', '24449622', 1, 0, NULL, NULL),
(524, 'MARIALEJANDRA', 'FUNG VARGAS', 'cedula', '13988799', 1, 0, NULL, NULL),
(525, 'ANGILY MARGARITA', 'FIGUERA CARDENAS', 'cedula', '21029727', 1, 0, NULL, NULL),
(526, 'MARIANA DEL CARMEN', 'PINTO RODRIGUEZ', 'cedula', '26960260', 1, 0, NULL, NULL),
(527, 'MIRELLA DEL CARMEN', 'QUINTERO MONTILLA', 'otro', 'CERTIFICADO DE DISCAPACIDAD', 1, 0, NULL, NULL),
(528, 'MATIAS SALVADOR', 'VAN DER DYS MARTINEZ', 'otro', 'CARNET DE PSUV', 1, 0, NULL, NULL),
(529, 'YUGREISY DAYANA ', 'RIERA DUARTE', 'cedula', '26338644', 1, 0, NULL, NULL),
(530, 'RAINEL DAVID', 'MARRUFO  RAMOS', 'cedula', '28821446', 1, 0, NULL, NULL),
(531, 'RAINNER STEVENS', 'ROMERO KRAUSE', 'cedula', '24548157', 1, 0, NULL, NULL),
(532, 'NORMALY YESENIA', 'RAMOS MERCADO ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(533, 'ANGEL RAFAEL', 'REYES BERIT', 'cedula', '4638716', 1, 0, NULL, NULL),
(534, 'ELIO ALEXANDRE', 'RODRIGUEZ GARCIA', 'cedula', '27725975', 1, 0, NULL, NULL),
(535, 'JEAN CARLOS', 'RODRIGUEZ GARCIA', 'cedula', '16536089', 1, 0, NULL, NULL),
(536, 'MARIA RAMONA', 'RODRIGUEZ CORDOVA', 'cedula', '11475331', 1, 0, NULL, NULL),
(537, 'NURVELIS YORAIMA', 'RAMIREZ  TORREALBA', 'cedula', '31609185', 1, 0, NULL, NULL),
(538, 'RAUL ENRIQUE', 'RAMOS BASTIDAS', 'cedula', '14818509', 1, 0, NULL, NULL),
(539, 'OCTAVIO', 'RINCON HERNANDEZ', 'cedula', '22406543', 1, 0, NULL, NULL),
(540, 'ROSA MARIBEL', 'RODRIGUEZ PAEZ', 'cedula', '11520595', 1, 0, NULL, NULL),
(541, 'JOSE ANTONIO ', 'REYES', 'cedula', '10364399', 1, 0, NULL, NULL),
(542, 'GERARDO JESUS ', 'ROSALES ROMERO', 'cedula', '16244573', 1, 0, NULL, NULL),
(543, 'ENDERSON DAVID', 'RONDON JAIMES', 'cedula', '30427275', 1, 0, NULL, NULL),
(544, 'ISIDORO', 'SILVA', 'cedula', '13898527', 1, 0, NULL, NULL),
(545, 'LUCAS ANDRES', 'RODRIGUEZ BERMEJO', 'otro', 'CEDULA, TARJETA BANCARIAS', 1, 0, NULL, NULL),
(546, 'YHOFRE ALBERTO ', 'RIVAS LOBO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(547, 'JOSE RAFAEL ', 'RONDON MARTINEZ', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(548, 'JESUS MIGUEL', 'RODRIGUEZ RODRIGUEZ', 'otro', 'CEDULA Y CERTIFICADO MEDICO VIAL', 1, 0, NULL, NULL),
(549, 'DOUGLAS AMADO', 'REYES RIVAS', 'cedula', '18705482', 1, 0, NULL, NULL),
(550, 'MIBETH ILIANA', 'RONDON PEREZ', 'cedula', '13080455', 1, 0, NULL, NULL),
(551, 'GABRIEL ALEJANDRO ', 'ZAMBRANO HENRIQUEZ', 'otro', 'CEDULA, LICENCIA, CERTFICADO MEDICO', 1, 0, NULL, NULL),
(552, 'NATHALY MARIANGELA', 'GONZALEZ LOPEZ', 'cedula', '30053746', 1, 0, NULL, NULL),
(553, 'ERIANGELI VALERIA', 'OARRA VELAZQUEZ', 'cedula', '33450875', 1, 0, NULL, NULL),
(554, 'DEIVIR JESUS', 'GONZALEZ PADILLA', 'cedula', '33177298', 1, 0, NULL, NULL),
(555, 'CARLOS EDUARDO ', 'GUZMAN EDUARDO', 'cedula', '7106441', 1, 0, NULL, NULL),
(556, 'NANCY YADIRA', 'GARCIA YADIRA', 'cedula', '5663383', 1, 0, NULL, NULL),
(557, 'JORGE ELIECER', 'GOMEZ RANGEL', 'cedula', '14962241', 1, 0, NULL, NULL),
(558, 'ALBERTO JOSE', 'GRATEROL', 'cedula', '7051887', 1, 0, NULL, NULL),
(559, 'JUAN ANTONIO', 'GONZALEZ PUERTA', 'cedula', '3617846', 1, 0, NULL, NULL),
(560, 'MARIANELLY DEL MILAGROS', 'GONZALEZ DELGADO', 'cedula', '16595624', 1, 0, NULL, NULL),
(561, 'LEONCIO ANTONIO', 'GONZALEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(562, 'JOSE LUIS', 'GOMEZ SALAS', 'cedula', '4667520', 1, 0, NULL, NULL),
(563, 'ENMA ISABEL', 'MOTA DE GOMEZ', 'otro', 'CEDULA, CARNET DE ABOGADO, TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(564, 'JESUS ALBERTO ', 'GOMEZ ARISTIZABAL ', 'otro', 'CARNET DE LA PATRIA ', 1, 0, NULL, NULL),
(565, 'JOSE LUIS ', 'GOMEZ SALAS', 'cedula', '4667520', 1, 0, NULL, NULL),
(566, 'YELITZA YESICA', 'GUILLEN RINCON', 'cedula', '19479589', 1, 0, NULL, NULL),
(567, 'JOSE GREGORIO', 'GUZMAN VINAJA', 'cedula', '26960318', 1, 0, NULL, NULL),
(568, 'ANA MARILYS', 'GARCIA CASTRO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(569, 'OLGA MARGARITA', 'GUERRA MENDEZ', 'cedula', '12366578', 1, 0, NULL, NULL),
(570, 'OMAR EDUARDO', 'GELVIZ PELAYO', 'cedula', '4228721', 1, 0, NULL, NULL),
(571, 'RICARDO JOSE', 'GONZALEZ LORETO', 'cedula', '23427686', 1, 0, NULL, NULL),
(572, 'YULIANA LISSETH DEL CARMEN', 'GUERRERO QUINTERO', 'cedula', '34465430', 1, 0, NULL, NULL),
(573, 'KATIUSKA YUSMARY', 'GUZMAN GUTIERREZ', 'cedula', '16289785', 1, 0, NULL, NULL),
(574, 'JOSE LADISLAO', 'GOYO', 'cedula', '3584973', 1, 0, NULL, NULL),
(575, 'JESUS DAVID', 'RODRIGUEZ GARCIA', 'cedula', '28402857', 1, 0, NULL, NULL),
(576, 'FRANCISCO DE PAULA', 'RODRIGUEZ', 'cedula', '3491763', 1, 0, NULL, NULL),
(577, 'YOHANNY JOSELIN', 'VERA VARELA', 'cedula', '27594021', 1, 0, NULL, NULL),
(578, 'RAFAEL SIMON', 'ROMERO LOYO', 'cedula', '11815765', 1, 0, NULL, NULL),
(579, 'NORKA DEL ROSARIO ', 'RODRIGUEZ MEDINA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(580, 'ORIANNA ALEJANDRA', 'RINCON RIVERO', 'cedula', '35022818', 1, 0, NULL, NULL),
(581, 'CARLOS JAVIER', 'RIVERO GONZALEZ', 'cedula', '25903886', 1, 0, NULL, NULL),
(582, 'ANDRY RAFAEL', 'RIVERO PETIT', 'cedula', '18687890', 1, 0, NULL, NULL),
(583, 'YOHANNA RAQUEL ', 'RIOS DANGELO', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(584, 'BRIEDY JANETT', 'RODRIGUEZ LOPEZ', 'cedula', '11814085', 1, 0, NULL, NULL),
(585, 'MIGUEL ANTONIO', 'RODRIGUEZ SOTO', 'cedula', '13332812', 1, 0, NULL, NULL),
(586, 'YADAIVER GABRIELA', 'RIVAS RENGIFO', 'cedula', '22416853', 1, 0, NULL, NULL),
(587, 'JONATHA JOSE', 'RODRIGUEZ PINEDA', 'otro', 'CEDULA, LICENCIA ,CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(588, 'LUIS FERNANDO', 'DIAZ DURAN', 'otro', 'CEDULA, CERTIFICADO MEDICO, LICENCIA', 1, 0, NULL, NULL),
(589, 'BERNABE ALCIDES ', 'DIAZ DUN', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(590, 'CAROLINA DEL VALLE ', 'DURAN', 'cedula', '13663143', 1, 0, NULL, NULL),
(591, 'YUANY ANGELYS ', 'DIAZ RAMIREZ ', 'cedula', '32012858', 1, 0, NULL, NULL),
(592, 'JENNIFER VICTORIA', 'DELGADO MEDINA', 'cedula', '27381622', 1, 0, NULL, NULL),
(593, 'GRECIA ANDREINA ', 'DIAZ HURTADO', 'cedula', '19525194', 1, 0, NULL, NULL),
(594, 'ADALBERTO JOSUE ', 'DE SOUSA MAYA', 'cedula', '25829850', 1, 0, NULL, NULL),
(595, 'ALEXANDER JESUS', 'DIAZ FERRER', 'licencia', '17551256', 1, 0, NULL, NULL),
(596, 'MELIDA RAFAELA', 'DIAZ MORENO', 'cedula', '4707735', 1, 0, NULL, NULL),
(597, 'JOSE RAMON', 'DE LA CRUZ DUARTE', 'cedula', '6904356', 1, 0, NULL, NULL),
(598, 'YULEINI COROMOTO', 'DIEGUEZ CHRIRINOS', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(599, 'JUAN BAUTISTA', 'DURAN MARCHAN', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(600, 'JEAN CARLOS', 'DE NOBREGA RODRIGUEZ', 'licencia', '16772800', 1, 0, NULL, NULL),
(601, 'MANUEL GUIDO', 'DE JESUS', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(602, 'DEBORA JOSEFINA', 'DIAZ GUZMAN', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(603, 'DANIEL ANDRES', 'DIAZ GALEA', 'licencia', '27854932', 1, 0, NULL, NULL),
(604, 'GLADYS MARGARITA', 'DIAZ RODRIGUEZ', 'cedula', '6901671', 1, 0, NULL, NULL),
(605, 'DIAZ MENDOZA ', 'GREGORIO JESUS', 'cedula', '19365051', 1, 0, NULL, NULL),
(606, 'GERMAN ALEXANDER', 'DIAZ CARO', 'cedula', '15722142', 1, 0, NULL, NULL),
(607, 'GHANESSA CAROLINA ', 'RODRIGUEZ RAMOS ', 'cedula', '22418737', 1, 0, NULL, NULL),
(608, 'ALEX EMILIO', 'RAMIREZ CARRILLO', 'cedula', '16556092', 1, 0, NULL, NULL),
(609, 'KEYBER JOSE', 'ROJAS ROJAS', 'cedula', '32294134', 1, 0, NULL, NULL),
(610, 'ANGELA LUCIA', 'RIVERO  RAMONES', 'cedula', '30900129', 1, 0, NULL, NULL),
(611, 'ANGELA LUCIA', 'RIVERA RAMONES', 'cedula', '3090129', 1, 0, NULL, NULL),
(612, 'RUBEN DAña', 'ROJAS ESPAña', 'licencia', '15901126', 1, 0, NULL, NULL),
(613, 'ARMANDO ', 'ALAYA CANO', 'cedula', '16877548', 1, 0, NULL, NULL),
(614, 'JOSE ALEXANDER', 'ANDRADE QUINTERO', 'cedula', '12104703', 1, 0, NULL, NULL),
(615, 'EMILI FERNANDA', 'TAPIAS SANCHEZ', 'cedula', '27855435', 1, 0, NULL, NULL),
(616, 'MIGUEL ANGEL', 'ACOSTA SANCHEZ', 'cedula', '7079175', 1, 0, NULL, NULL),
(617, 'ANDRES MANUEL', 'GONZALEZ GARCIA', 'cedula', '20274080', 1, 0, NULL, NULL),
(618, 'MARIA DE LOURDES', 'GRATERON DE PULIDO', 'cedula', '3082722', 1, 0, NULL, NULL),
(619, 'ORANGEL', 'GUDIñO', 'cedula', '10039172', 1, 0, NULL, NULL),
(620, 'GABRIELA YISEL ', 'GOMEZ RUBIO', 'cedula', '24911745', 1, 0, NULL, NULL),
(621, 'MIGUEL ALEJANDRO ', 'GUERRERO FERNANDEZ', 'cedula', '30999948', 1, 0, NULL, NULL),
(622, 'HERIBERTA DE JESUS', 'GARCIA GUTIERREZ', 'cedula', '4988257', 1, 0, NULL, NULL),
(623, 'YORDIS JOSE', 'GARCIA ROMERO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(624, 'jose', 'amell', 'cedula', '200816822', 1, 1, NULL, NULL),
(625, 'JOSE', 'AMELLITO', 'cedula', '11111111', 1, 1, NULL, NULL),
(626, 'JOSE', 'AMELLITO', 'cedula', '11111111', 1, 1, NULL, NULL),
(627, 'JOSE', 'AMELLITO', 'cedula', '11111111', 1, 1, NULL, NULL),
(628, 'JOSE2', 'AMELLITO', 'cedula', '22222222', 1, 1, NULL, NULL),
(629, 'JOSEP', 'AMELLITO', 'cedula', '3333333333', 1, 1, NULL, NULL),
(630, 'DAVID', 'JOSE', 'cedula', '8888888888', 1, 1, NULL, NULL),
(631, 'Dervis', 'Martinez', 'cedula', '31456326', 1, 1, NULL, NULL),
(632, 'JOSE GREGORIO', 'GARRIO GOMEZ', 'cedula', '28554093', 1, 0, NULL, NULL),
(633, 'ANGEL GABRIEL', 'GONZALEZ ESPINO', 'cedula', '18193812', 1, 0, NULL, NULL),
(634, 'JOSE VALENTIN', 'GONZALEZ SERRADAS', 'cedula', '3855377', 1, 0, NULL, NULL),
(635, 'CESAR AUGUSTO ', 'GOMEZ DIAZ', 'cedula', '34501361', 1, 0, NULL, NULL),
(636, 'HALAN NATHANAEL', 'GUILLEN GUILLEN', 'cedula', '22740338', 1, 0, NULL, NULL),
(637, 'MARYLAURA', 'GRATEROL MIQUELENA', 'cedula', '30675202', 1, 0, NULL, NULL),
(638, 'JOSE ', 'GARRIDO ', 'otro', 'CERTIFICADO MEICO', 1, 0, NULL, NULL),
(639, 'CARLOS ALBERTO ', 'GIL ARAMBULET', 'cedula', '24859341', 1, 0, NULL, NULL),
(640, 'CARLOS ALBERTO ', 'GILARAMBULET', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(641, 'ARMANDO JOSE', 'ORTEGA CARIPA', 'cedula', '28067335', 1, 0, NULL, NULL),
(642, 'OLLAVARES ROMERO', 'RHONAL LEE', 'cedula', '20162652', 1, 0, NULL, NULL),
(643, 'JOSE LUIS ', 'OLIVEROS', 'cedula', '8845885', 1, 0, NULL, NULL),
(644, 'HECTOR LUIS ', 'ORTEGA LUIS', 'cedula', '15744492', 1, 0, NULL, NULL),
(645, 'JASON JESUS', 'ORTEGA GONZALEZ', 'cedula', '29834437', 1, 0, NULL, NULL),
(646, 'ORTEGA MEDINA', 'ANGEL RAFAEL', 'cedula', '7007700', 1, 0, NULL, NULL);
INSERT INTO `lost_documents` (`id`, `owner_name`, `owner_lastname`, `document_type`, `document_number`, `in_house`, `claimed`, `created_at`, `updated_at`) VALUES
(647, 'YASMIN COROMOTO', 'LOZADA BRAVO', 'cedula', '15977418', 1, 0, NULL, NULL),
(648, 'JOSE LUIS ', 'LUGO SULBARAN', 'otro', 'CEDULA, LICENCIA,CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(649, 'ELISETH LORENA', 'LOZADA GIRALDO', 'cedula', '21454355', 1, 0, NULL, NULL),
(650, 'EFRANCIS DEL CARMEN', 'LAYA BUENO', 'cedula', '24570279', 1, 0, NULL, NULL),
(651, 'ANGEL FACUNDO ', 'LUGO RICO', 'cedula', '2785717', 1, 0, NULL, NULL),
(652, 'CRUZ ALEJANDRO', 'LOPEZ BRACHO', 'cedula', '12728909', 1, 0, NULL, NULL),
(653, 'FREDDY RAFAEL ', 'LIENDO CASADIEGO', 'cedula', '18746545', 1, 0, NULL, NULL),
(654, 'EMILI GRACIELA', 'LUGO LUGO', 'cedula', '25047158', 1, 0, NULL, NULL),
(655, 'LAURA GABRIELA', 'HENRIQUEZ DE NOBREGA', 'cedula', '21157985', 1, 0, NULL, NULL),
(656, 'DIEGO DAVID ', 'ARGUELLES CORONEL', 'otro', 'CEDULA, LICENCIA, CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(657, 'ENDER DAVID', 'MONOGA NOGUERA', 'otro', 'CARNET MIGRATORIO', 1, 0, NULL, NULL),
(658, 'ORLANDO JOSE', 'RIOS CASTILLO', 'otro', 'CEDULA, LICENCIA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(659, 'JESUS ALEJANDRO ', 'RICON ARIAS', 'cedula', '31530581', 1, 0, NULL, NULL),
(660, 'LUIS ALBERTO ', 'LUIS ALBERTO ', 'cedula', '12108246', 1, 0, NULL, NULL),
(661, 'DULCE ELIZABETH', 'PINTO TORRES', 'cedula', '4875600', 1, 0, NULL, NULL),
(662, 'JOSE ALEJANDRO', 'PINEDA MORALES', 'cedula', '7139982', 1, 0, NULL, NULL),
(663, 'ALBERT ALEJANDRO ', 'PINEDA MEDINA', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(664, 'LUIS LEONARDO', 'PIñERO ESTE', 'cedula', '13514933', 1, 0, NULL, NULL),
(665, 'NURMA POMPIULIO', 'PARRA GUEVARA', 'cedula', '9442933', 1, 0, NULL, NULL),
(666, 'DERBIS LUIS ', 'PAREDES LOPEZ', 'cedula', '25881737', 1, 0, NULL, NULL),
(667, 'PEREIRA MORALES', 'LUIS ALFONSO', 'cedula', '18546296', 1, 0, NULL, NULL),
(668, 'PAEZ SUMOZA ', 'RONAR', 'cedula', '18253967', 1, 0, NULL, NULL),
(669, 'ALEXANDER ALBERTO', 'PACHECO ROJAS', 'cedula', '29772801', 1, 0, NULL, NULL),
(670, 'RONALD ENRIQUE', 'PiñERO BLANCO', 'cedula', '18531944', 1, 0, NULL, NULL),
(671, 'JORGE LUIS', 'PEñALVER MORAO', 'cedula', '29777391', 1, 0, NULL, NULL),
(672, 'ZOBEIDA DEL ROSARIO', 'MONTERO PEREZ ', 'cedula', '5933633', 1, 0, NULL, NULL),
(673, 'JOSE GREGORIO', 'OROPEZA MONTERO', 'otro', 'LICENCIA, CERTIFICADO DE CIRCULACION,', 1, 0, NULL, NULL),
(674, 'ALBERTO JESUS ', 'OSTOS GRANADILLO', 'cedula', '26729285', 1, 0, NULL, NULL),
(675, 'ESTHER MARIA', 'OREFICE ARRIETA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(676, 'JESUS ALFONSO', 'OLIVIA PEREZ', 'cedula', '15977250', 1, 0, NULL, NULL),
(677, 'OSCAR ERNESTO', 'OJEDA ROMERO', 'cedula', '9443385', 0, 0, NULL, NULL),
(678, 'FLOR AMABLE', 'OLARTE DE PEREIRA', 'cedula', '9635790', 1, 0, NULL, NULL),
(679, 'PEDRO MIGUEL ', 'ORTUNIO CARRIZALEZ', 'cedula', '4859587', 1, 0, NULL, NULL),
(680, 'JUNILSE JACQUELINE ', 'ORTEGA BARRIOS ', 'cedula', '12316002', 1, 0, NULL, NULL),
(681, 'SINTHYA JOSE', 'OSTOS TERRERO', 'cedula', '17991332', 1, 0, NULL, NULL),
(682, 'DAYMARY JOSEFINA', 'OJEDA DE RUJANO', 'cedula', '12774420', 1, 0, NULL, NULL),
(683, 'MERCIO RAMON', 'OCHOA', 'cedula', '8590270', 1, 0, NULL, NULL),
(684, 'YULENY ISOLINA ', 'OCANTO CARRILLO', 'otro', 'CEDULA,CARNET DE LA PATRIA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(685, 'JESUS DARIO', 'RUJANO OJEDA', 'cedula', '30420800', 1, 0, NULL, NULL),
(686, 'JESUS ALEXANDER', 'MENDEZ ALVARADO', 'cedula', '27726223', 1, 0, NULL, NULL),
(687, 'JOSE GREGORIO ', 'PEREZ', 'cedula', 'CADELA, TARJETAS BANCARIAS, ENTRE OTROS', 1, 0, NULL, NULL),
(688, 'KELVIS ALEXANDER', 'LOZADA LOZADA', 'otro', 'LICENCIA, CARNET DE CIRCULACIÓN, ENTRE OTROS', 1, 0, NULL, NULL),
(689, 'FLOR MARIA', 'PINEDA', 'cedula', '6565442', 1, 0, NULL, NULL),
(690, 'FREDDY ALBERTO', 'RODRIGUEZ IBAÑEZ', 'cedula', '3649911', 1, 0, NULL, NULL),
(691, 'ELIZAID JOSE', 'DIAZ CORTEZ', 'otro', 'CEDULA, LICENCIA, CERTIFICADO DE CIRCULACION, RCV', 1, 0, NULL, NULL),
(692, 'JOSE MIGUEL', 'BUCAN', 'cedula', '22408196', 1, 0, NULL, NULL),
(693, 'JOSMAN JOSE', 'GRANADILLO ORTEGA', 'cedula', '20731288', 1, 0, NULL, NULL),
(694, 'YEINFER', 'MARIN PEREZ', 'otro', 'CARTERA, LICENCIA DE CONDUCIR, LLAVE,', 1, 0, NULL, NULL),
(695, 'SILVIA PATRICIA', 'RAMONES SANCHEZ', 'otro', 'CÉDULA, TARJETAS BANCARIAS,', 1, 0, NULL, NULL),
(696, 'JOSE ASCENCION', 'RUIZ ROA', 'otro', 'BILLETERA, CÉDULA, TARJETA BANCARIA,', 1, 0, NULL, NULL),
(697, 'CARMEN CAROLINA', 'RAMOS PUERTA', 'cedula', '15246797', 1, 0, NULL, NULL),
(698, 'LUIS ALEXANDER', 'MONTILLA TIAPA', 'otro', 'CÉDULA, LICENCIA DE CONDUCIR, OTROS', 1, 0, NULL, NULL),
(699, 'GAUDY JAVIER', 'PERAZA VARGAS', 'cedula', 'CEDULA, LICENCIA, CERTIFICADO, TARJETA BANCARIA', 1, 0, NULL, NULL),
(700, 'DOUGLAS ALFREDO', 'FUENTES PADILLA', 'otro', 'BILLETERA, CÉDULA, TARJETAS BANCARIAS, OTROS', 1, 0, NULL, NULL),
(701, 'MILEYDI DILIMAR', 'MEDINA ARIAS', 'cedula', '26437652', 1, 0, NULL, NULL),
(702, 'Omar de Jesús', 'Linares Rumbos', 'otro', '4134962', 1, 0, NULL, NULL),
(703, 'Addys Adriana', 'Barrios Toscano', 'otro', '16184821', 1, 0, NULL, NULL),
(704, 'HECTOR DANIEL', 'HERNANDEZ MARTINEZ', 'otro', 'LICENCIA PARA CONDUCIR Y CARNET MINISTERIAL', 1, 0, NULL, NULL),
(705, 'RICHARD JOSÉ', 'AGUILAR RIERA', 'cedula', '19443194', 1, 0, NULL, NULL),
(706, 'VERONICA CAROLINA', 'CASADIEGO PLAZA', 'cedula', '30738053', 1, 0, NULL, NULL),
(707, 'ALBERTO ANTONIO ', 'MORENO GAVIDIA', 'cedula', '19563973', 1, 0, NULL, NULL),
(708, 'VICTOR MANUEL', 'FLORES MANCHEGO', 'otro', 'CÉDULA Y CARNET SENIAT', 1, 0, NULL, NULL),
(709, 'YOLANDA', 'MONTERO SUAREZ ', 'cedula', '3539885', 1, 0, NULL, NULL),
(710, 'ÁNGEL ', 'LÓPEZ', 'otro', 'CARNET DE TRANSPORTE', 1, 0, NULL, NULL),
(711, 'JOSE LUIS ', 'CASADIEGO PINEDA', 'otro', 'CERTIFICADO DE CIRCULACIÓN', 1, 0, NULL, NULL),
(712, 'JOSE ', 'SILVA', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(713, 'ANGGY DE JESUS ', 'GUILLEN URDANETA ', 'otro', 'CEDULA Y OTROS ', 1, 0, NULL, NULL),
(714, 'VICTOR LUIS', 'PAEZ NIEVES', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR Y OTROS', 1, 0, NULL, NULL),
(715, 'VICTOR MANUEL', 'MONTILLA', 'otro', 'CEDULA, MONEDERO ROSA,TARJETAS BANCARIAS', 1, 0, NULL, NULL),
(716, 'EDITH NOELIA', 'PETTIT DE GUEDEZ', 'cedula', '15505840', 1, 0, NULL, NULL),
(717, 'YEVERSON JOSUE', 'SANCHEZ ZAMBRANO', 'otro', 'CEDULA, CERTIFICADO MEDICO Y OTROS', 1, 0, NULL, NULL),
(718, 'ROTNER GREGORIO', 'RODRIGUEZ PARAGUACUTO', 'cedula', '36426005', 1, 0, NULL, NULL),
(719, 'VALERIA FERNANDA', 'URANGA BURGOS', 'otro', 'CEDULA, CARNET DE LA PATRIA Y TARJETA DE DEBITO', 1, 0, NULL, NULL),
(720, 'ALEXANDER RAMON', 'ROSAL FERMIN', 'otro', 'CERTIFICADO DE CIRCULACIÓN Y OTROS', 1, 0, NULL, NULL),
(721, 'PIERINA EDDYMAR', 'FLORES LUGO', 'cedula', '30.855.429', 1, 0, NULL, NULL),
(722, 'YONI JOSE', 'ALEZONES', 'otro', 'CEDULA, CARNET DE LA PATRIA Y OTROS', 1, 0, NULL, NULL),
(723, 'MILLAN MIRANDA', 'MANUEL ANTONIO', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR Y OTROS', 1, 0, NULL, NULL),
(724, 'MANUEL', 'MILLAN', 'otro', 'CEDULA, TARJETAS BANCARIAS Y OTROS ', 1, 0, NULL, NULL),
(725, 'JUAN RAMON', 'TORREALBA', 'otro', 'CEDULA, CARNET DE LA PATRIA Y OTROS', 1, 0, NULL, NULL),
(726, 'WILLIAM ALEXANDER ', 'MARTINEZ VALBUENA', 'otro', 'CEDULA, CARNET DE LA PATRIA Y OTROS', 1, 0, NULL, NULL),
(727, 'ROXELI ANDREINA', 'QUEVEDO BARRETO', 'otro', 'CEDULA, TARJETA BANCARIA Y OTROS', 1, 0, NULL, NULL),
(728, 'MARIA JOSEFINA', 'CORONADO DE BOLIVAR', 'cedula', '5920106', 1, 0, NULL, NULL),
(729, 'KATTY COROMOTO', 'SANCHEZ PLANCHEZ', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(730, 'RAUL RAFAEL', 'PRIETO MONTERO', 'cedula', '14167768', 1, 0, NULL, NULL),
(731, 'BEIYARUTH DEL VALLE', 'MARRERO MOLINA', 'cedula', '31354057', 1, 0, NULL, NULL),
(732, 'ALBERTO RAMON', 'MORALES ARIAS', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR Y OTROS', 1, 0, NULL, NULL),
(733, 'JOSE DAVID', 'MARIN SANDOVAL ', 'cedula', '32083108', 1, 0, NULL, NULL),
(734, 'JORGE LUIS ', 'ZAMBRANO LINARES ', 'cedula', '5494030', 1, 1, NULL, NULL),
(735, 'JEAN CARLOS ', 'BISHOPP ANDRADES', 'otro', 'CEDULA, CARNET DE LA PATRIA Y BILLETERA', 1, 0, NULL, NULL),
(736, 'YENIRETH D', 'LUGO RIVAS ', 'otro', 'TARJETA BANCARIA ', 1, 0, NULL, NULL),
(737, 'JOSE ANGEL', 'HERRERA PERDOMO', 'cedula', '9687817', 1, 0, NULL, NULL),
(738, 'MAIVET', 'PEREIRA', 'otro', 'CARNET ESTUDIANTIL', 1, 0, NULL, NULL),
(739, 'ALEXIS MARTIN', 'MARTINEZ ', 'cedula', '7118352', 1, 0, NULL, NULL),
(740, 'Dayana Alejandra ', 'Marquez Vilera ', 'cedula', '22738408', 1, 0, NULL, NULL),
(741, 'LILIANA ERNESTINA', 'VILERA PERDOMO', 'cedula', '8844681', 1, 0, NULL, NULL),
(742, 'PRUDENCIO ', 'GALINDEZ PANDARE', 'cedula', '8416311', 1, 0, NULL, NULL),
(743, 'GRISEL CORINA', 'CHIRINOS BRIZUELA', 'cedula', 'CEDULA, CARNET DE LA PATRIA Y BILLETERA', 1, 0, NULL, NULL),
(744, 'JOSE DEL CARMEN', 'PEREZ MONCADA', 'cedula', 'CEDULA, CARNET DE LA PATRIA Y BILLETERA', 1, 0, NULL, NULL),
(745, 'MARIA ELENA ', 'VASQUEZ SANDOVAL', 'cedula', 'CÉDULA Y CARNET DE LA PATRIA ', 1, 0, NULL, NULL),
(746, 'MAIKEL NICOLAS', 'GARCIA RIVERO', 'otro', 'CEDULA, CARTERA,K CERTIFICADO DE DE CIRCULACIÓN ', 1, 0, NULL, NULL),
(747, 'ARMAS', 'KARINA', 'otro', 'CARNET DE CABLE HOGFAR CON LLAVES', 1, 0, NULL, NULL),
(748, 'JOSE DANIEL ', 'RODRIGUEZ ORELLANA ', 'cedula', 'CÉDULA, TARJETAS Y BILLETERA ', 1, 0, NULL, NULL),
(749, 'SARA VICTORIA ', 'ORELLADA OLMAO ', 'cedula', 'CÉDULA, Y TARJETA BANESCO ', 1, 0, NULL, NULL),
(750, 'KILIGAN JOSUE ', 'SILVA DIAZ ', 'cedula', '33149437', 1, 0, NULL, NULL),
(751, 'JESSICA C', 'HERNANDEZ D', 'otro', 'TARJETA BANCARIA ', 1, 0, NULL, NULL),
(752, 'JOSE ANGEL ', 'FIGUEROA ', 'cedula', '21484769', 1, 0, NULL, NULL),
(753, 'MICHAEL ALEXANDER', 'ARGUELLO MENDEZ', 'cedula', '21309537', 1, 0, NULL, NULL),
(754, 'LUIS GILBERTO', 'CARBONELL', 'cedula', '9826900', 1, 0, NULL, NULL),
(755, 'SAMUEL ALEJANDRO', 'FIGUEREDO SÁNCHEZ', 'cedula', '28082381', 1, 0, NULL, NULL),
(756, 'LUIS GEERARDO', 'GARMENDIA MENDOZA', 'cedula', '29748331', 1, 0, NULL, NULL),
(757, 'GLADYS JOSEFINA ', 'HUNG LEÓN ', 'otro', 'CEDULA, LICENCIA DE CONDUCIR, ', 1, 0, NULL, NULL),
(758, 'ISKA GUNITH ', 'GOMEZ MORILLO', 'cedula', '19524129', 1, 0, NULL, NULL),
(759, 'CARLOS EDUARDO ', 'MUJICA ALZURUTT', 'cedula', 'BILLERA, CÉDULA,CARNETS, TARJETAS BANCARIAS ', 1, 0, NULL, NULL),
(760, 'JOSNER ALEJANDRO ', 'ZAMBRANO MENDEZ ', 'otro', 'TARJETAS, CÉDULA Y BILLETERA ', 1, 0, NULL, NULL),
(761, 'JOSEFA RAMONA', 'PEROZO', 'cedula', '12472895', 1, 0, NULL, NULL),
(762, 'YOHANA LILIBETH', 'JIMENEZ JIMENEZ ', 'cedula', '24444181', 1, 0, NULL, NULL),
(763, 'HAROLD DANIEL ', 'SERRANO RUIZ ', 'cedula', '18061495', 1, 0, NULL, NULL),
(764, 'PAULINO DEL CARMEN ', 'ARAQUE ', 'cedula', '5148360', 1, 0, NULL, NULL),
(765, 'DAYANA CAROLINA ', 'PARRA PARRA', 'cedula', '18857362', 1, 0, NULL, NULL),
(766, 'KEIDI ALEXANDRA ', 'LOPEZ ESPINOZA ', 'cedula', '23411516', 1, 0, NULL, NULL),
(767, 'ENMA VICTORIA ', 'CARILLO URBANO ', 'cedula', '7216335', 1, 0, NULL, NULL),
(768, 'VICTOR SALVADOR ', 'OCHOA ', 'cedula', '4857357', 1, 0, NULL, NULL),
(769, 'PEDRO ANTONIO ', 'PADILLA  REYES', 'otro', 'LICENCIA DE CONDUCIR,CERTIFICADO MÉDICO ', 1, 0, NULL, NULL),
(770, 'ALBERTO RAMON ', 'MONTERO LINARES', 'licencia', 'LICENCIA DE CONDUCIR ', 1, 0, NULL, NULL),
(771, 'SONIA', 'LOPEZ MOTA ', 'otro', 'CERTIFICADO DE CIRCULACIÓN  ', 1, 0, NULL, NULL),
(772, 'GUILLERMO ', 'NARVAEZ MUÑOZ', 'cedula', '22222794', 1, 0, NULL, NULL),
(773, 'YUDELYS ', 'GONZALEZ ', 'cedula', 'CERTIFICADO MÉDICO ', 1, 0, NULL, NULL),
(774, 'FELIX JOSE ', 'CONTRERAS MEZA ', 'cedula', 'CEDULA, LICENCIA DE CONDUCIR, TARJETAS Y MAS ', 1, 0, NULL, NULL),
(775, 'GUSTAVO ADOLFO', 'RIVERO', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(776, 'VASQUEZ OVIEDO', 'ROSMAN ARGENIS', 'cedula', '19481599', 1, 0, NULL, NULL),
(777, 'ENYERBERTH JOSE', 'ARTEAGTA BUENO', 'cedula', '24014428', 1, 0, NULL, NULL),
(778, 'LOHANIS ALBERTOS', 'CEDEÑO MALDONADO', 'cedula', '24629053', 1, 0, NULL, NULL),
(779, 'NELLYS ARACELIS', 'CHIRINO CONTRETAS', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(780, 'JESUS RAFAEL', 'JIMENEZ NAMIAS', 'cedula', '9508166', 1, 0, NULL, NULL),
(781, 'HERNAN ALBERTO', 'MEDINA RAMIREZ', 'cedula', '11876041', 1, 0, NULL, NULL),
(782, 'AMELHYS MARIANA ', 'ROJAS RODRIGUEZ', 'cedula', '33308947', 1, 0, NULL, NULL),
(783, 'RAFAEL LEONARDO', 'FLORES', 'otro', 'LICENDIA PARA CONDUCIR', 1, 0, NULL, NULL),
(784, 'JOSE LUIS', 'PERERA BEARRAGAN', 'pasaporte', '176418786', 1, 0, NULL, NULL),
(785, 'MIRIAN C', 'LA REDONDA L', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(786, 'LUIS JOSE', 'RODRIGUEZ CHACON', 'cedula', '33005063', 1, 0, NULL, NULL),
(787, 'JOSE FERNANDO', 'HERRERA NOGUERA', 'otro', 'BILLETERA, CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(788, 'MIA PAULINA', 'LARA NOGUERA', 'cedula', '36154933', 1, 0, NULL, NULL),
(789, 'BRAYAN EMANUEL', 'PALENCIA POZO', 'cedula', '31540544', 1, 0, NULL, NULL),
(790, 'CARLOS JAVIER', 'ESPINOZA ESTRADA', 'cedula', '29779513', 1, 0, NULL, NULL),
(791, 'BETTY ESPERANZA', 'BARILLAS GAMEZ', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(792, 'MIGUELANGEL JESUS', 'BASAN NUÑEZ', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR Y OTROS', 1, 0, NULL, NULL),
(793, 'PEDRO MIGUEL', 'GUERRA ADAMES', 'otro', 'CEDULA, TARJETAS BANCARIAS, LICENCIA Y OTROS', 1, 0, NULL, NULL),
(794, 'DAVID ALEJANDRO', 'ARCINIEGAS BEDOYA', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR Y OTROS', 1, 0, NULL, NULL),
(795, 'JOSE GREGORIO', 'PINEDA', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR Y OTROS', 1, 0, NULL, NULL),
(796, 'FUENTES PADILLA', 'DOUGLAS ALFREDO', 'otro', 'CEDULA, CARNET DE LA PATRIA Y OTROS', 1, 0, NULL, NULL),
(797, 'NAYESKA ALEXANDRA', 'MERCADO MERCADO', 'otro', 'CEDULA, TARJETAS BANCARIAS Y OTROS', 1, 0, NULL, NULL),
(798, 'DUGLERYS SOFIA', 'MOTA DOSE', 'cedula', '32642900', 1, 0, NULL, NULL),
(799, 'ESTHER DE LAS ROSAS', 'COLMENAREZ', 'cedula', '8657140', 1, 0, NULL, NULL),
(800, 'ISDAVEL JACSEKL', 'SERRANO URBINA', 'cedula', '28553959', 1, 0, NULL, NULL),
(801, 'ISAMAR ANDREINA', 'VALDERRAMA GUEVARA', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(802, 'JESUS GABINO', 'RONDON VILLARREAL', 'cedula', '11321743', 1, 0, NULL, NULL),
(803, 'JESUS GABINO', 'RONDON GRATEROL', 'cedula', '18271474', 1, 0, NULL, NULL),
(804, 'YOLAIDA DEL CARMEN ', 'GRATEROL ARANDIA', 'otro', 'CARNET DE LA PATRIA, TARJETAS BANCARIAS ', 1, 0, NULL, NULL),
(805, 'JOSE ANGEL', 'CARRASCO RODRIGUEZ', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR, OTROS', 1, 0, NULL, NULL),
(806, 'EDGAR ALBERTO', 'PEREZ', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR, OTROS', 1, 0, NULL, NULL),
(807, 'BENITO JOSE', 'LACLE COLINA', 'otro', 'CEDULA DE IDENTIDAD, BILLETERA, Y OTROS', 1, 0, NULL, NULL),
(808, 'JESUS ALBERTO', 'GARCIA SANCHEZ', 'otro', 'CEDULA, TARJETAS BANCARIAS, OTROS', 1, 0, NULL, NULL),
(809, 'ADELIS ANTONIO', 'ACOSTA CANELON', 'otro', 'CEDULA, LICENCIA PARA CONDUCIR, OTROS', 1, 0, NULL, NULL),
(810, 'MARIA DE LOURDES ', 'ROJAS DE GONZALEZ', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(811, 'JOVITO ANTONIO', 'PEREZ', 'cedula', '3612658', 1, 0, NULL, NULL),
(812, 'JOHN WILLMER', 'SOTO MEDINA', 'cedula', '20031153', 1, 0, NULL, NULL),
(813, 'ROSA MARIA ', 'BAUTE JARAMILLO', 'cedula', '7064562', 1, 0, NULL, NULL),
(814, 'ENDER RAMON', 'OJEDA VARGAS', 'cedula', '31309965', 1, 0, NULL, NULL),
(815, 'MARIA', 'CARDENAS MAYETONE', 'cedula', '22222788', 1, 0, NULL, NULL),
(816, 'KEILA CRISTINA', 'OROZCO SANCHEZ', 'cedula', '16784820', 1, 0, NULL, NULL),
(817, 'RICHARD ANTONIO', 'HOYOS HERNANDEZ', 'otro', 'CEDULA, CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(818, 'JOSE LUIS', 'BARBOZA LOPEZ', 'cedula', '7106263', 1, 0, NULL, NULL),
(819, 'MANUEL DAVID', 'CORTELL SOSA', 'otro', 'LICENCIA, CEDULA DE IDENTIDAD, RESPALDO, OTROS', 1, 0, NULL, NULL),
(820, 'CIELO IRAITZA', 'ARIAS CASTILLO', 'cedula', '18345773', 1, 0, NULL, NULL),
(821, 'CARLEX ALEXANDRA ', 'NOGUERA GUEDEZ', 'cedula', '31505600', 1, 0, NULL, NULL),
(822, 'YOSIMAR ALEJANDRA', 'JIMENEZ HERNANDEZ ', 'cedula', '28232385', 1, 0, NULL, NULL),
(823, 'JOSMAN JOSUE', 'GARCIA NAVARRO', 'cedula', '30709390', 1, 0, NULL, NULL),
(824, 'YOLIEXI MARIELBA', 'BARRIEL MARQUEZ', 'cedula', '19295086', 1, 0, NULL, NULL),
(825, 'GREGORIO OSWALDO', 'ROMERO AÑEZ', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(826, 'EUSEBIO RAUL', 'HERNANDEZ AROCHA', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(827, 'PEDRO JOSE', 'HERRERA ROMERO', 'cedula', '19856784', 1, 0, NULL, NULL),
(828, 'YELITZA JOSEFINA', 'PADRON ALVARADO', 'cedula', '13900503', 1, 0, NULL, NULL),
(829, 'KRISS WALFRED', 'CARDENAS MUÑOZ', 'cedula', '32111515', 1, 0, NULL, NULL),
(830, 'SIMON ANDRES', 'SALAZAR SANDOVAL', 'cedula', '29590167', 1, 0, NULL, NULL),
(831, 'JOHANNA YANETH', 'VILLAMIZAR ORTIZ ', 'cedula', '27062042', 1, 0, NULL, NULL),
(832, 'JOSE FRANCISCO', 'ZAPATA SANCHEZ', 'cedula', '10738367', 1, 0, NULL, NULL),
(833, 'JHONDEIVIS RAFAEL', 'MARQUEZ MEDINA', 'otro', 'RCV, LICENCIA PARA CONDUCIR, TARJETA BANCARIA', 1, 0, NULL, NULL),
(834, 'ANDRUS RAFAEL', 'MARQUEZ PULIDO', 'cedula', '26363256', 1, 0, NULL, NULL),
(835, 'EGARDO JOSE', 'ROJAS SARMIENTO ', 'cedula', '14625435', 1, 0, NULL, NULL),
(836, 'JOHNNY ALBERTO', 'VILLASANA AGUILERA', 'otro', 'BILELTERA, CEDULA, CERTIFICADO MÉDICO', 1, 0, NULL, NULL),
(837, 'SANCHEZ ', 'JULIO RAMON', 'cedula', 'CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(838, 'YUBALDO TELESFORO', 'SOTO BALLESTERO', 'cedula', 'CEDULA,TARJETA BANCARIA, LLAVE, OTROS', 1, 0, NULL, NULL),
(839, 'CARLOS DAVID ', 'PADRON CASTILLO', 'licencia', 'LICENCIA DE CONDUCIR', 1, 0, NULL, NULL),
(840, 'LUIS ALBERTO ', 'ROMERO', 'otro', 'CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(841, 'YHONATAN EDUARDO', 'HERNANDEZ LANDAETA', 'otro', 'CARNET (OFICIAL)', 1, 0, NULL, NULL),
(842, 'FREDDY ALEXANDER', 'GONZALEZ HERNANDEZ', 'cedula', '31036200', 1, 0, NULL, NULL),
(843, 'NANCY DEL CARMEN', 'BRICEÑO TORO', 'cedula', '7951987', 1, 0, NULL, NULL),
(844, 'DANIEL ALBERTO', 'GONZALEZ VALERO', 'otro', 'TARJETA DE CREDITO, CEDULA, OTROS', 1, 0, NULL, NULL),
(845, 'JONATHAN JOSE', 'CAMACHO ROMERO', 'cedula', '27629692', 1, 0, NULL, NULL),
(846, 'MIGUEL ANGEL', 'ALVIZU ROSALES', 'cedula', '30889611', 1, 0, NULL, NULL),
(847, 'MATILDE', 'MERCADO TORREALBA', 'cedula', '7561624', 1, 0, NULL, NULL),
(848, 'LEONARDO JOSE', 'GALEA JIMENES', 'otro', 'CÉDULA, LICENCIA, OTROS', 1, 0, NULL, NULL),
(849, 'LEONARDO JOSE', 'GALEA JIMENES', 'otro', 'CEDULA, LICENCIA, OTROS', 1, 0, NULL, NULL),
(850, 'ALEX', 'DÍAZ', 'otro', 'TARJETA DE BANCO DE SANGRE', 1, 1, NULL, NULL),
(851, 'ALEX RAFAEL', 'DIAZ LOVERA', 'cedula', '15258790', 1, 0, NULL, NULL),
(852, 'MARLENIS DEL CARMEN', 'MATERAN ZAMBRANO', 'cedula', '15349261', 1, 0, NULL, NULL),
(853, 'SANTIAGO', 'PÉREZ PERROTTA', 'otro', 'CEDULA, LICENCIA, CERTIFICADO VIAL, OTROS', 1, 0, NULL, NULL),
(854, 'PEDRO MANUEL', 'GONZALEZ TOVAR', 'cedula', '26245851', 1, 0, NULL, NULL),
(855, 'EDAR', 'DIAZ', 'cedula', '18239351', 0, 1, NULL, NULL),
(856, 'LIRIANNYS', 'DITTA', 'cedula', '26929475', 1, 0, NULL, NULL),
(857, 'ARBY RAMON', 'GONZALEZ', 'otro', 'BILLETERA', 1, 0, NULL, NULL),
(858, 'MIRIAM', 'SOLANO', 'cedula', '7041361', 1, 0, NULL, NULL),
(859, 'JOSE GREGORIO ', 'TORRES', 'cedula', '15071708', 1, 0, NULL, NULL),
(860, 'ERNESTO JOSE', 'PEÑA CURIEL', 'cedula', '30077916', 1, 0, NULL, NULL),
(861, 'JOSE', 'MUSKUS', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(862, 'YEXEBEHL OSMAILY', 'LOVERA SEQUERA', 'cedula', '21479502', 1, 0, NULL, NULL),
(863, 'EHINAR EDUARDO', 'TORREALBA', 'cedula', '12508147', 1, 0, NULL, NULL),
(864, 'MARILYN ANAYIBE', 'CASTILLO OLIVEROS', 'cedula', '18531671', 1, 0, NULL, NULL),
(865, 'JOSE GERSON', 'SANDOVAL GARCIA', 'cedula', '9142826', 1, 0, NULL, NULL),
(866, 'JESUS AROLDO', 'PARADA ACOSTA', 'cedula', '17814268', 1, 1, NULL, NULL),
(867, 'ANGEL', 'ZUMETA', 'otro', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(868, 'JESUS AROLDO', 'PARADA ACOSTA', 'otro', 'CEDULA, LICENCIA, OTROS', 1, 1, NULL, NULL),
(869, 'JOHAN', 'ARENAS', 'otro', 'CEDULA, LICENCIA, OTROS', 1, 0, NULL, NULL),
(870, 'MARCOS DANIEL', 'BETANCOURT', 'otro', 'CEDULA, LICENCIA, OTROS', 1, 0, NULL, NULL),
(871, 'CESAR DANIEL', 'JUCCI HERNANDEZ', 'cedula', '18410306', 1, 0, NULL, NULL),
(872, 'SANTIAGO DE JESUS', 'MOISAN FIGUEROA', 'otro', 'CEDULA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(873, 'ADALBERTO', 'GELVEZ GONZALEZ', 'cedula', '5790391', 1, 1, NULL, NULL),
(874, 'SORAIDA MARÍA', 'ROMERO DE VARGAS', 'otro', 'CEDULA Y TARJETA BANCARIA', 1, 0, NULL, NULL),
(875, 'MIGUEL ALEJANDRO', 'HOBEN ANGULO', 'cedula', '35140391', 1, 0, NULL, NULL),
(876, 'DERWING ELIAN', 'ALVARADO PIÑA', 'otro', 'CÉDULA, CARNET DE LA PATRIA, CÉDULA FAMILIAR', 1, 0, NULL, NULL),
(877, 'YAIR HUNGLIVER', 'SOUSA GALINDEZ', 'otro', 'CÉDULA, LICENCIA, CARNETS Y OTROS', 1, 0, NULL, NULL),
(878, 'WILLI JAROMIR', 'GONZALEZ FLOREZ', 'otro', 'CELULAR ROTO Y CEDULA DE IDENTIDAD', 1, 0, NULL, NULL),
(879, 'JULIO CESAR', 'AULAR CABRERA', 'otro', 'CEDULAR, TARJTA, CARTERA ', 1, 0, NULL, NULL),
(880, 'Randolph Raul', 'Machado Moron', 'cedula', '11640193, TARJETA BANCARIA, CARNET DE CIRCULACIÓN', 1, 0, NULL, NULL),
(881, 'ANTONY GUSTAVO', 'ESADA CORDERO', 'cedula', '27548567', 1, 0, NULL, NULL),
(882, 'JOHAN ', 'MORA', 'otro', '19108714, CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(883, 'GENEY ANTONIO', 'CHIRINOS OLLARVES', 'cedula', '7738453, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(884, 'YAJAIRA MARINI', 'DIAZ SANCHEZ', 'cedula', '11765137, VARIOS DOCUMENTOS', 1, 0, NULL, NULL),
(885, 'ANDREA ORIANA', 'REYES PALMA', 'cedula', '28432363', 1, 0, NULL, NULL),
(886, 'DAIRY VANESSA', 'ESCALONA PANIAGUA', 'cedula', '20786780', 1, 0, NULL, NULL),
(887, 'CARMELO', 'PROVINZANO GRAFFAGNINO', 'cedula', '28248936, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(888, 'MIGUEL ANGEL ', 'GONZALEZ ALVIZU', 'cedula', '29978519, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(889, 'ALBA ROSA ', 'RAMIREZ PEÑA', 'cedula', '21169807, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(890, 'JORGE LUIS', 'ECHEZURIA', 'cedula', '5225308, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(891, 'JOHAN HELY', 'MONTERO AQUINO', 'cedula', '14624715', 1, 0, NULL, NULL),
(892, 'SORELIS MARIA', 'LOPEZ TOVAR', 'cedula', '22001262, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(893, 'ISAIAS ALEJANDRO', 'GONZALEZ RUIZ ', 'cedula', '28232382', 1, 0, NULL, NULL),
(894, 'ANGERBER SMITH', 'FERNANDEZ VALERA', 'cedula', '28034459', 1, 0, NULL, NULL),
(895, 'BARBARA DERIMAR', 'BARRETO RUIZ', 'cedula', '31339158, CEDULA Y TARJETA', 1, 0, NULL, NULL),
(896, 'ALBERTO RAMON ', 'MORALES ARIAS', 'cedula', '29625061, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(897, 'BENITO JOSE', 'LACLE COLINA', 'cedula', '4874714, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(898, 'ADELIS ANTONIO', 'ACOSTA CANELON', 'cedula', '26642208, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(899, 'JESUS ALBERTO', 'GARCIA SANCHEZ', 'cedula', '30710315, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(900, 'JOHNNY ALBERTO', 'VILLASANA AGUILERA', 'cedula', '16289511, TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(901, 'JEAN CARLOS ', 'BISHOPP ANDRADES', 'cedula', '21021541 TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(902, 'YONDER JAVIER', 'OVIEDO VARGAS', 'cedula', '11521641 TODOS LOS MDOCUMENTOS', 1, 0, NULL, NULL),
(903, 'JESUS DAVID', 'RODRIGUEZ SALAZAR', 'cedula', '35062305 CEDULA Y LICENCIA', 1, 0, NULL, NULL),
(904, 'JAVIELYS REYMARI', 'CAMPECHANO MORA', 'cedula', '32407173', 1, 0, NULL, NULL),
(905, 'CARMEN VICTORIA ', 'DIAZ GONZALEZ', 'cedula', '29851973 CERTIFICADO MEDICO', 1, 0, NULL, NULL),
(906, 'SELVIO DAVID', 'CABRERA GUTIERREZ', 'cedula', '7688358 TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(907, 'IBRAHIM DE JESUS ', 'RODRIGUEZ BRICEÑO', 'cedula', '30768022 TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(908, 'ANGELO ', 'JASPE', 'cedula', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(909, 'FRANK LEONARDO', 'VERA LAGUNA', 'cedula', '31310395', 1, 0, NULL, NULL),
(910, 'YUBRASKA MADERLIN', 'ROJAS PINEDA', 'cedula', '20085457 TODOS LOS DOCUMENTOS', 1, 0, NULL, NULL),
(911, 'JOSE RAFAEL', 'SANTANA PEÑA', 'cedula', '22514096', 1, 0, NULL, NULL),
(912, 'ANTONIETA VICTORIA', 'NUÑEZ CORRO', 'cedula', '36255976', 1, 0, NULL, NULL),
(913, 'OMAR JAVIER', 'PARADA RODRIGUEZ', 'cedula', '13105500', 1, 0, NULL, NULL),
(914, 'MAXIMILIANO DE JESUS', 'SALAS PINTO', 'cedula', '35136305', 1, 0, NULL, NULL),
(915, 'MAYERITH DALESKA', 'PINTO FUENTES', 'cedula', '24911056', 1, 0, NULL, NULL),
(916, 'CARLOS ALBERTO', 'GUEDEZ BRITO', 'cedula', '12910377', 1, 0, NULL, NULL),
(917, 'LISETT LORENA', 'TIRADO ROMAN', 'cedula', '14080575', 1, 0, NULL, NULL),
(918, 'FELIX FRANCISCO', 'VASQUEZ', 'cedula', '9303910', 1, 0, NULL, NULL),
(919, 'ALEJANDRA YOXIMAR', 'LANDAETA TABLANTE', 'cedula', '21602611', 1, 0, NULL, NULL),
(920, 'GABRIELA DEL CARMEN', 'MARIÑO GONZALEZ', 'cedula', '30977677', 1, 0, NULL, NULL),
(921, 'MARIA FERNANDA ', 'CAMARAN DE HIDALGO', 'cedula', '7067537', 1, 0, NULL, NULL),
(922, 'NADRA ABDEL', 'KARIM Q.', 'cedula', 'TARJETA DE DEBITO', 1, 0, NULL, NULL),
(923, 'JESUS MIGUEL', 'VENARES ACOSTA', 'cedula', '17776546 CERTIFICADO DE DISCAPACIDAD', 1, 0, NULL, NULL),
(924, 'ANYINIS', 'ACOSTA  AGUILAR', 'cedula', '26960207', 1, 0, NULL, NULL),
(925, 'CARLOS EDUARDO', 'LOPEZ SANZ', 'cedula', '29681016', 1, 0, NULL, NULL),
(926, 'JOAN ELADIO', 'TORREALBA VILLEGAS', 'cedula', '13291924 BOLSA CON DOCUMENTOS', 1, 0, NULL, NULL),
(927, 'ANDERSON SAUL', 'LOPEZ MEJIAS', 'cedula', '24300386', 1, 0, NULL, NULL),
(928, 'ANDERSON SAUL', 'LOPEZ MEJIAS', 'cedula', '24300386 CARTERA', 1, 0, NULL, NULL),
(929, 'ASTRID VICTORIA', 'SANCHEZ HERNANDEZ', 'otro', 'CEDULA, CARTERA, TARJETA BANCARIA', 1, 0, NULL, NULL),
(930, 'MARTINEZ VILLASANA', 'FRANKLIN JAVIER', 'otro', 'CEDULA, CERTIFICADO MEDICO, LICENCIA DE CONDUCIR', 1, 0, NULL, NULL),
(931, 'ALEXANDER DANIEL', 'QUINTERO CIVIRA', 'cedula', '31013910', 1, 0, NULL, NULL),
(932, 'OSCAR', 'HERRERA', 'otro', 'CARNET DE TRABAJO', 1, 0, NULL, NULL),
(933, 'WILFREDO ', 'TOVAR', 'otro', 'CARNET DE TRABAJO', 1, 0, NULL, NULL),
(934, 'FRANKLIN ', 'RINCON', 'otro', 'CARNET DE TRABAJO', 1, 0, NULL, NULL),
(935, 'YELITZA DEL CARMEN', 'SIERRA', 'otro', 'CEDULA, CARNET DE LA PATRIA', 1, 0, NULL, NULL),
(936, 'NICK FRANYEL NIOMAR', 'AGUILERA LOPEZ', 'cedula', '31535103', 1, 0, NULL, NULL),
(937, 'MARIA DE LOS ANGELES', 'GUEDEZ AQUINO', 'cedula', '29727969', 1, 0, NULL, NULL),
(938, 'JOHNY OLIVER', 'HERNANDEZ CHIRINO', 'cedula', '26058980', 1, 0, NULL, NULL),
(939, 'MANUEL ALEJANDRO', 'OCANTO CARREÑO', 'otro', 'LICENCIA DE CONDUCIR', 1, 0, NULL, NULL),
(940, 'VANESSA CAROLINA', 'CHACON SANCHEZ', 'otro', 'CERTIFICADO DE CIRCULACION', 1, 0, NULL, NULL),
(941, 'YAIRIC', 'GONZALEZ', 'otro', 'CARNET ESTUDIANTIL', 1, 0, NULL, NULL),
(942, 'JOSE EFRAIN', 'AVILA ', 'otro', 'CÉDULA, TARJETAS BANCARIAS, CARNET VACUNACIÓN ', 1, 0, NULL, NULL),
(943, 'DANETZI ALEXANDRA', 'LEAL PINEDA', 'cedula', '31932483', 1, 0, NULL, NULL),
(944, 'LUIS SEBASTIAN ', 'OCHOA SERENO', 'otro', 'CÉDULA, LICENCIA CONDUCIR, OTROS', 1, 0, NULL, NULL),
(945, 'JULIANDRI DEL VALLE', 'GUSMAN BASTARDO', 'cedula', '34398826', 1, 0, NULL, NULL),
(946, 'SUHAIL ANABELLA', 'GUACARAN MUJICA', 'cedula', '32763875', 1, 0, NULL, NULL),
(947, 'JOSE DAVID', 'PEREZ NIEVES', 'otro', 'CEDULA, LICENCIA CONDUCIR, 30709491', 1, 0, NULL, NULL),
(948, 'YOLIANNY', 'APARICIO LUGO ', 'cedula', '28098294', 1, 0, NULL, NULL),
(949, 'José Genaro', 'Meneses', 'cedula', 'TARJETA BANCARIA', 1, 0, NULL, NULL),
(950, 'Ana Modesta', 'Sequera', 'cedula', '10365647', 1, 0, NULL, NULL),
(951, 'Geovanni Antonio', 'Meléndez Colmenares', 'cedula', '7047095', 1, 0, NULL, NULL),
(952, 'Yean Carlos Alberto', 'Casadiego Machado', 'cedula', '14613896', 1, 0, NULL, NULL),
(953, 'Jhony Rafael ', 'Maestre Lucumi', 'cedula', '31165262', 1, 0, NULL, NULL),
(954, 'Luis Sebastian', 'Ochoa Sereno', 'cedula', '32126166', 1, 0, NULL, NULL),
(955, 'Jesús Alexander ', 'Silva León', 'cedula', '26245091', 1, 0, NULL, NULL),
(956, 'José Manuel', 'Guarema', 'otro', '1157078', 1, 0, NULL, NULL),
(957, 'José Elías', 'Morales', 'cedula', '9219262', 1, 0, NULL, NULL),
(958, 'Yeiber Omar', 'Román Perozo', 'cedula', '27517881', 1, 0, NULL, NULL),
(959, 'Lewis Alexander', 'Ollarve Ramírez', 'cedula', '21214789', 1, 0, NULL, NULL),
(960, 'Jorge Alberta ', 'Chirino Loyo', 'cedula', '7470523', 1, 0, NULL, NULL),
(961, 'Yndalecia del Carmen', 'Lozada González', 'cedula', '7084777', 1, 0, NULL, NULL),
(962, 'Sara Patricia', 'Varela Pinto', 'cedula', '28425431', 1, 0, NULL, NULL),
(963, 'MARISOL ', 'COLINA', 'cedula', '19525987', 1, 0, NULL, NULL),
(964, 'Zain Alejandro', 'Rondon', 'cedula', '30601248', 0, 1, '2025-12-12 03:11:41', '2025-12-12 03:11:41'),
(965, 'Yorgelis Carolina', 'Sanchez Bravo', 'cedula', '26508320', 1, 0, '2026-02-04 19:13:36', '2026-02-04 19:13:36'),
(966, 'Mervin Alfredo ', 'Casares Villegas', 'cedula', '20513865', 1, 0, '2026-02-04 19:19:32', '2026-02-04 19:19:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_05_223215_create_personal_access_tokens_table', 1),
(5, '2025_08_06_213619_create_plans_table', 1),
(6, '2025_08_16_222813_create_clasificados_table', 1),
(7, '2025_08_25_160949_create_admins_table', 1),
(8, '2025_08_26_012531_create_categories_table', 1),
(9, '2025_08_26_012743_create_category_clasificado_table', 1),
(10, '2025_08_27_212653_create_rejected_table', 1),
(11, '2025_09_01_025333_create_appeals_table', 1),
(12, '2025_09_07_010018_create_reports_table', 1),
(13, '2025_09_09_232458_create_notifications_table', 1),
(14, '2025_09_16_190245_create_celebrations_table', 1),
(15, '2025_09_20_203722_create_banned_users_table', 1),
(16, '2025_09_24_001452_create_clasificado_photos_table', 1),
(17, '2025_10_27_230740_create_payments_table', 1),
(18, '2025_10_27_230938_modify_payments_clasificado_nullable', 1),
(21, '2025_11_12_015738_create_activity_log_table', 2),
(22, '2025_11_12_015739_add_event_column_to_activity_log_table', 2),
(23, '2025_11_12_015740_add_batch_uuid_column_to_activity_log_table', 2),
(24, '2025_12_11_002312_create_lost_documents_table', 2),
(26, '2025_11_09_195047_create_customers_table', 3),
(27, '2025_11_12_153413_create_agents_table', 3),
(28, '2025_11_12_162039_create_contracts_table', 3),
(29, '2025_11_12_171619_create_permission_tables', 3),
(30, '2025_11_13_005904_create_administration_users_table', 3),
(31, '2025_11_13_025615_create_workflows_table', 3),
(32, '2025_11_13_025723_create_stages_table', 3),
(33, '2025_11_13_230813_create_contract_workflow_states_table', 3),
(34, '2026_01_02_222311_add_signature_requirement_to_stages_table', 3),
(35, '2026_01_02_235251_add_signature_token_to_administration_users_table', 3),
(36, '2026_01_05_001456_add_self_representation_to_contracts_table', 3),
(37, '2026_01_05_014640_add_nationality_to_customers_and_agents_tables', 3),
(38, '2026_01_05_020154_add_responsible_user_id_to_stages_table', 3),
(39, '2026_01_05_023728_create_contract_signatures_table', 3),
(40, '2026_01_05_033436_create_contract_documents_table', 3),
(41, '2026_01_12_135751_add_billing_info_to_contracts_table', 4),
(42, '2026_01_12_154556_add_client_signature_to_contracts_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\AdministrationUser', 3),
(4, 'App\\Models\\AdministrationUser', 4),
(4, 'App\\Models\\AdministrationUser', 5),
(2, 'App\\Models\\AdministrationUser', 6),
(2, 'App\\Models\\AdministrationUser', 7),
(2, 'App\\Models\\AdministrationUser', 8),
(2, 'App\\Models\\AdministrationUser', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0419672f-2d3d-4a2c-8de4-e7760c3526b3', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 14, '{\"clasificado_id\":33,\"title\":\"TRAJE PARA CABALLERO POCO USO\",\"status\":\"approved\",\"message\":\"Tu clasificado \'TRAJE PARA CABALLERO POCO USO\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/traje-para-caballero-poco-uso-33\",\"activated_at\":\"2026-01-29T04:00:00.000000Z\"}', NULL, '2026-01-29 12:03:39', '2026-01-29 12:03:39'),
('06141ada-c2df-442b-b43f-30d4669a0cb4', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 53, '{\"clasificado_id\":32,\"title\":\"Blindaje Corporativo\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Blindaje Corporativo\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/blindaje-corporativo-32\",\"activated_at\":\"2026-01-25T04:00:00.000000Z\"}', NULL, '2026-01-26 00:10:55', '2026-01-26 00:10:55'),
('099477ba-7c98-4e72-8bf7-5060f7898b6f', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 45, '{\"clasificado_id\":22,\"title\":\"Jardiner\\u00eda, jardinero\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Jardiner\\u00eda, jardinero\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/jardineria-jardinero-22\",\"activated_at\":\"2026-01-09T00:00:00.000000Z\"}', NULL, '2026-01-09 17:29:24', '2026-01-09 17:29:24'),
('1112e54b-d5e9-4ff6-a6f9-27f5c4774a8d', 'App\\Notifications\\ClasificadoPorVencer', 'App\\Models\\User', 4, '{\"clasificado_id\":1,\"title\":\"Test\",\"message\":\"Tu clasificado \'Test\' vencer\\u00e1 en 120 d\\u00edas.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/test-1\",\"expires_at\":\"2026-03-10T00:00:00.000000Z\"}', NULL, '2025-11-10 07:30:05', '2025-11-10 07:30:05'),
('17df1b91-c4fe-4b7e-bb49-ff873905cb4f', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 65, '{\"clasificado_id\":34,\"title\":\"Servicio de mano de obra, remodelaci\\u00f3n, mantenimiento y afines\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Servicio de mano de obra, remodelaci\\u00f3n, mantenimiento y afines\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-de-mano-de-obra-remodelacion-mantenimiento-y-afines-34\",\"activated_at\":\"2026-02-06T04:00:00.000000Z\"}', NULL, '2026-02-06 19:52:08', '2026-02-06 19:52:08'),
('186d7ece-0d3b-4121-880e-3b4a60e90486', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 17, '{\"clasificado_id\":11,\"title\":\"Ollas RENA WARE\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Ollas RENA WARE\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/ollas-rena-ware-11\",\"activated_at\":\"2025-11-24T00:00:00.000000Z\"}', NULL, '2025-11-25 03:27:21', '2025-11-25 03:27:21'),
('26354abd-23aa-4f99-ba5d-186b3484634a', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 38, '{\"clasificado_id\":20,\"title\":\"Se pintab carros peque\\u00f1os en 400 $\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Se pintab carros peque\\u00f1os en 400 $\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/se-pintab-carros-pequenos-en-400-20\",\"activated_at\":\"2025-12-16T00:00:00.000000Z\"}', NULL, '2025-12-17 00:07:28', '2025-12-17 00:07:28'),
('2cb9ffac-ee72-4236-80f5-d5e598fe839c', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 16, '{\"clasificado_id\":8,\"title\":\"Avaluos para bienes muebles e inmuebles-Perito Certificado\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Avaluos para bienes muebles e inmuebles-Perito Certificado\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/avaluos-para-bienes-muebles-e-inmuebles-perito-certificado-8\",\"activated_at\":\"2025-11-24T00:00:00.000000Z\"}', '2025-12-07 18:30:37', '2025-11-25 03:28:30', '2025-12-07 18:30:37'),
('3727cdee-477b-47b4-a3a2-29e40ba41ca9', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 16, '{\"clasificado_id\":31,\"title\":\"BOTONES PARA CONFECCION Y MANUALIDADES FIGURAS ANIMALITOS-POR DOCENA\",\"status\":\"approved\",\"message\":\"Tu clasificado \'BOTONES PARA CONFECCION Y MANUALIDADES FIGURAS ANIMALITOS-POR DOCENA\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/botones-para-confeccion-y-manualidades-figuras-animalitos-por-docena-31\",\"activated_at\":\"2026-01-25T04:00:00.000000Z\"}', NULL, '2026-01-26 00:11:14', '2026-01-26 00:11:14'),
('3772011f-9e80-471b-8cbe-2df8e749129e', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 4, '{\"clasificado_id\":1,\"title\":\"Test\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Test\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/test-1\",\"activated_at\":\"2025-11-10T00:00:00.000000Z\"}', '2025-11-10 07:28:08', '2025-11-10 07:07:40', '2025-11-10 07:28:08'),
('3c0c43c9-031a-4d81-8bc1-a7049631e5ec', 'App\\Notifications\\ClasificadoRechazado', 'App\\Models\\User', 10, '{\"clasificado_id\":4,\"title\":\"Busco empleo\",\"status\":\"rejected\",\"reason\":\"NO HAY TRABAJO\",\"message\":\"Gracias por tu env\\u00edo, Jorge Isaac. Tras una revisi\\u00f3n detallada, hemos detectado elementos que requieren ajustes para cumplir con nuestras pol\\u00edticas editoriales.\\n\\n  Observaciones:\\n\\u2022 NO HAY TRABAJO\\n\\nTe invitamos a corregir tu clasificado y reenviarlo para su aprobaci\\u00f3n. Si necesitas orientaci\\u00f3n, estamos para ayudarte.\",\"action_text\":\"Editar mi clasificado\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificados\\/busco-empleo-4\\/editar\",\"salutation\":\"Radio Am\\u00e9rica, la onda de la alegr\\u00eda.\"}', '2025-11-15 20:01:13', '2025-11-15 19:59:24', '2025-11-15 20:01:13'),
('40117c96-c00c-4662-900f-9a1af12a7650', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 49, '{\"clasificado_id\":24,\"title\":\"Puesta a Tierra de sus equipos electricos\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Puesta a Tierra de sus equipos electricos\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/puesta-a-tierra-de-sus-equipos-electricos-24\",\"activated_at\":\"2026-01-15T04:00:00.000000Z\"}', '2026-02-02 11:39:17', '2026-01-15 14:43:40', '2026-02-02 11:39:17'),
('48892e1d-52a2-4e47-8cab-a90ba7d920a7', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 45, '{\"clasificado_id\":23,\"title\":\"Instalaci\\u00f3n de cer\\u00e1mica, porcelanato\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Instalaci\\u00f3n de cer\\u00e1mica, porcelanato\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/instalacion-de-ceramica-porcelanato-23\",\"activated_at\":\"2026-01-09T00:00:00.000000Z\"}', NULL, '2026-01-09 17:29:23', '2026-01-09 17:29:23'),
('4df99c7f-458a-4518-96ed-d5ab2bad2f2b', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 17, '{\"clasificado_id\":9,\"title\":\"Potes de cocina RENA WARE\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Potes de cocina RENA WARE\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/potes-de-cocina-rena-ware-9\",\"activated_at\":\"2025-11-24T00:00:00.000000Z\"}', NULL, '2025-11-25 03:27:59', '2025-11-25 03:27:59'),
('538eefdc-27a5-4d95-9fa8-23fa5f86aeac', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 33, '{\"clasificado_id\":19,\"title\":\"Vendo casa\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Vendo casa\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/vendo-casa-19\",\"activated_at\":\"2025-12-12T00:00:00.000000Z\"}', NULL, '2025-12-12 19:39:32', '2025-12-12 19:39:32'),
('59496da2-a650-44a7-a4ec-b222a7119541', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 9, '{\"clasificado_id\":2,\"title\":\"Se vende Software de Pentesting\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Se vende Software de Pentesting\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/se-vende-software-de-pentesting-2\",\"activated_at\":\"2025-11-13T00:00:00.000000Z\"}', NULL, '2025-11-13 23:29:34', '2025-11-13 23:29:34'),
('5eb02674-2406-49b1-a384-51b59ab16877', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 25, '{\"clasificado_id\":17,\"title\":\"Servicio t\\u00e9cnico PC Redes y CCTV camaras\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Servicio t\\u00e9cnico PC Redes y CCTV camaras\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-tecnico-pc-redes-y-cctv-camaras-17\",\"activated_at\":\"2025-12-03T00:00:00.000000Z\"}', NULL, '2025-12-03 19:00:01', '2025-12-03 19:00:01'),
('65ac14d6-8777-489f-a887-b379f4a8b747', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 14, '{\"clasificado_id\":6,\"title\":\"Venta en Promocion Libros Educativos 3x1\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Venta en Promocion Libros Educativos 3x1\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/venta-en-promocion-libros-educativos-3x1-6\",\"activated_at\":\"2025-11-24T00:00:00.000000Z\"}', '2025-11-25 00:38:17', '2025-11-24 19:04:55', '2025-11-25 00:38:17'),
('683bab2a-8388-403c-be28-efc8ee0b806f', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 52, '{\"clasificado_id\":27,\"title\":\"Servicio de moto taxi deliverys y encomienda\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Servicio de moto taxi deliverys y encomienda\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-de-moto-taxi-deliverys-y-encomienda-27\",\"activated_at\":\"2026-01-19T04:00:00.000000Z\"}', NULL, '2026-01-19 21:05:16', '2026-01-19 21:05:16'),
('6d940946-94a0-45f6-a8cb-1b6971306ab5', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 49, '{\"clasificado_id\":35,\"title\":\"Combo de 2 lentes de seguridad en 9 dolares\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Combo de 2 lentes de seguridad en 9 dolares\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/combo-de-2-lentes-de-seguridad-en-9-dolares-35\",\"activated_at\":\"2026-02-06T04:00:00.000000Z\"}', NULL, '2026-02-06 19:51:53', '2026-02-06 19:51:53'),
('7a84e61f-c2a4-473a-a66d-26ae279fd098', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 55, '{\"clasificado_id\":29,\"title\":\"AL LADO\",\"status\":\"approved\",\"message\":\"Tu clasificado \'AL LADO\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/al-lado-29\",\"activated_at\":\"2026-01-22T04:00:00.000000Z\"}', NULL, '2026-01-22 19:27:43', '2026-01-22 19:27:43'),
('7edd160e-5bbd-4828-bdff-d782eaf4527d', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 51, '{\"clasificado_id\":26,\"title\":\"Jardines Industriales Jireh\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Jardines Industriales Jireh\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/jardines-industriales-jireh-26\",\"activated_at\":\"2026-01-15T04:00:00.000000Z\"}', NULL, '2026-01-15 14:42:48', '2026-01-15 14:42:48'),
('7fad6760-696e-4f63-9a97-755be26cab18', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 45, '{\"clasificado_id\":21,\"title\":\"Alba\\u00f1ileria y construcci\\u00f3n en general\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Alba\\u00f1ileria y construcci\\u00f3n en general\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/albanileria-y-construccion-en-general-21\",\"activated_at\":\"2026-01-09T00:00:00.000000Z\"}', NULL, '2026-01-09 17:29:25', '2026-01-09 17:29:25'),
('8129b779-fe41-4567-9924-0fc4f43f5923', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 57, '{\"clasificado_id\":30,\"title\":\"Impresoras de toner\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Impresoras de toner\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/impresoras-de-toner-30\",\"activated_at\":\"2026-01-22T04:00:00.000000Z\"}', NULL, '2026-01-22 19:27:30', '2026-01-22 19:27:30'),
('8c4693a8-599c-4ddb-8949-5f501c6a43ee', 'App\\Notifications\\ClasificadoPorVencer', 'App\\Models\\User', 4, '{\"title\":\"Clasificado por vencer\",\"body\":\"El clasificado \'Test\' vencer\\u00e1 en 120 d\\u00edas.\",\"type\":\"warning\",\"clasificado_id\":1}', '2025-11-10 07:08:02', '2025-11-10 07:07:45', '2025-11-10 07:08:02'),
('934bc12c-d909-4277-8ae8-a77213448ee5', 'App\\Notifications\\ClasificadoPorVencer', 'App\\Models\\User', 4, '{\"title\":\"Clasificado por vencer\",\"body\":\"El clasificado \'Test\' vencer\\u00e1 en 120 d\\u00edas.\",\"type\":\"warning\",\"clasificado_id\":1}', '2025-11-10 07:28:07', '2025-11-10 07:27:50', '2025-11-10 07:28:07'),
('9a43aa6e-ebc4-4591-bdd3-e0bbb797e7af', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 14, '{\"clasificado_id\":7,\"title\":\"Mini Venta de Garage\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Mini Venta de Garage\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/mini-venta-de-garage-7\",\"activated_at\":\"2025-11-24T00:00:00.000000Z\"}', '2025-11-25 00:38:12', '2025-11-24 19:05:59', '2025-11-25 00:38:12'),
('a0a770a4-4820-4155-ad44-97a60718231c', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 54, '{\"clasificado_id\":28,\"title\":\"Todo en redes wifi\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Todo en redes wifi\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/todo-en-redes-wifi-28\",\"activated_at\":\"2026-01-19T04:00:00.000000Z\"}', NULL, '2026-01-19 21:03:21', '2026-01-19 21:03:21'),
('a468ca61-05c9-47be-b05a-d24f84b30693', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 11, '{\"clasificado_id\":5,\"title\":\"Servicio de refrigeraci\\u00f3n| Instalaci\\u00f3n, mantenimiento preventivo y correctivo\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Servicio de refrigeraci\\u00f3n| Instalaci\\u00f3n, mantenimiento preventivo y correctivo\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-de-refrigeracion-instalacion-mantenimiento-preventivo-y-correctivo-5\",\"activated_at\":\"2025-11-20T00:00:00.000000Z\"}', '2025-11-20 22:40:18', '2025-11-20 22:38:08', '2025-11-20 22:40:18'),
('a5cf393c-a63e-4980-875b-5ac41e680a08', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 20, '{\"clasificado_id\":14,\"title\":\"M\\u00f3dulo Alta frecuencia MILLER 220V\",\"status\":\"approved\",\"message\":\"Tu clasificado \'M\\u00f3dulo Alta frecuencia MILLER 220V\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/modulo-alta-frecuencia-miller-220v-14\",\"activated_at\":\"2025-11-25T00:00:00.000000Z\"}', NULL, '2025-11-26 01:17:52', '2025-11-26 01:17:52'),
('bcc365e5-a9e1-470c-a759-06d48b49c257', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 16, '{\"clasificado_id\":25,\"title\":\"VALORACI\\u00d3N DE BIENES MUEBLES E INMUEBLES (AVAL\\u00daOS)-MEDICIONES DE INMUEBLES\",\"status\":\"approved\",\"message\":\"Tu clasificado \'VALORACI\\u00d3N DE BIENES MUEBLES E INMUEBLES (AVAL\\u00daOS)-MEDICIONES DE INMUEBLES\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/valoracion-de-bienes-muebles-e-inmuebles-avaluos-mediciones-de-inmuebles-25\",\"activated_at\":\"2026-01-15T04:00:00.000000Z\"}', NULL, '2026-01-15 14:43:10', '2026-01-15 14:43:10'),
('bf5f5834-8a99-4bf3-bc5d-91becb59c8ae', 'App\\Notifications\\ClasificadoPorVencer', 'App\\Models\\User', 4, '{\"title\":\"Clasificado por vencer\",\"body\":\"El clasificado \'Test\' vencer\\u00e1 en 120 d\\u00edas.\",\"type\":\"warning\",\"clasificado_id\":1}', '2025-11-10 07:15:07', '2025-11-10 07:14:38', '2025-11-10 07:15:07'),
('c582e7b9-ea4f-4e66-8488-2c9d8fa68c78', 'App\\Notifications\\ClasificadoRechazado', 'App\\Models\\User', 9, '{\"clasificado_id\":3,\"title\":\"casa en prebo\",\"status\":\"rejected\",\"reason\":\"La Imagen no coincide con el clasificado \",\"message\":\"Gracias por tu env\\u00edo, Dervis. Tras una revisi\\u00f3n detallada, hemos detectado elementos que requieren ajustes para cumplir con nuestras pol\\u00edticas editoriales.\\n\\n  Observaciones:\\n\\u2022 La Imagen no coincide con el clasificado \\n\\nTe invitamos a corregir tu clasificado y reenviarlo para su aprobaci\\u00f3n. Si necesitas orientaci\\u00f3n, estamos para ayudarte.\",\"action_text\":\"Editar mi clasificado\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificados\\/casa-en-prebo-3\\/editar\",\"salutation\":\"Radio Am\\u00e9rica, la onda de la alegr\\u00eda.\"}', NULL, '2025-11-13 23:37:28', '2025-11-13 23:37:28'),
('d25b8aa0-4fc3-4d18-98c4-b63ea856a4c3', 'App\\Notifications\\ClasificadoPorVencer', 'App\\Models\\User', 4, '{\"title\":\"Clasificado por vencer\",\"body\":\"El clasificado \'Test\' vencer\\u00e1 en 120 d\\u00edas.\",\"type\":\"warning\",\"clasificado_id\":1}', '2025-11-10 07:20:13', '2025-11-10 07:19:53', '2025-11-10 07:20:13'),
('d7db3bb9-fad2-4bd4-9fbd-8b48f381d540', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 19, '{\"clasificado_id\":13,\"title\":\"Servicio T\\u00e9cnico de Aires acondicionados y Refrigeraci\\u00f3n\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Servicio T\\u00e9cnico de Aires acondicionados y Refrigeraci\\u00f3n\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-tecnico-de-aires-acondicionados-y-refrigeracion-13\",\"activated_at\":\"2025-11-25T00:00:00.000000Z\"}', NULL, '2025-11-26 01:18:07', '2025-11-26 01:18:07'),
('e692a82b-df59-41e5-8365-136e5452d91b', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 17, '{\"clasificado_id\":10,\"title\":\"Olla de Presi\\u00f3n Rena Ware\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Olla de Presi\\u00f3n Rena Ware\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/olla-de-presion-rena-ware-10\",\"activated_at\":\"2025-11-24T00:00:00.000000Z\"}', NULL, '2025-11-25 03:27:40', '2025-11-25 03:27:40'),
('e70feac6-211d-4deb-b2f8-a50e06360397', 'App\\Notifications\\ClasificadoPorVencer', 'App\\Models\\User', 4, '{\"title\":\"Clasificado por vencer\",\"body\":\"El clasificado \'Test\' vencer\\u00e1 en 120 d\\u00edas.\",\"type\":\"warning\",\"clasificado_id\":1}', '2025-11-10 07:29:05', '2025-11-10 07:28:54', '2025-11-10 07:29:05'),
('e89b78eb-128e-49aa-a6a1-292766da78ce', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 23, '{\"clasificado_id\":15,\"title\":\"se solicita contador\",\"status\":\"approved\",\"message\":\"Tu clasificado \'se solicita contador\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/se-solicita-contador-15\",\"activated_at\":\"2025-12-02T00:00:00.000000Z\"}', NULL, '2025-12-02 18:31:58', '2025-12-02 18:31:58'),
('f048be25-0842-4302-b750-b9257d46b5ab', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 19, '{\"clasificado_id\":12,\"title\":\"Servicio t\\u00e9cnico en refrigeraci\\u00f3n y aire acondicionado\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Servicio t\\u00e9cnico en refrigeraci\\u00f3n y aire acondicionado\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-tecnico-en-refrigeracion-y-aire-acondicionado-12\",\"activated_at\":\"2025-11-25T00:00:00.000000Z\"}', '2025-11-25 08:23:15', '2025-11-25 07:50:32', '2025-11-25 08:23:15'),
('f2237794-e004-4ea3-ab66-1f284821d29b', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 27, '{\"clasificado_id\":18,\"title\":\"Curso: Gesti\\u00f3n y Manejo de Sustancias Peligrosas\",\"status\":\"approved\",\"message\":\"Tu clasificado \'Curso: Gesti\\u00f3n y Manejo de Sustancias Peligrosas\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/curso-gestion-y-manejo-de-sustancias-peligrosas-18\",\"activated_at\":\"2025-12-07T00:00:00.000000Z\"}', NULL, '2025-12-07 06:03:23', '2025-12-07 06:03:23'),
('f227697c-6c5f-45d2-b7c8-0b1ff5428163', 'App\\Notifications\\ClasificadoAprobado', 'App\\Models\\User', 25, '{\"clasificado_id\":16,\"title\":\"SERVICIO T\\u00c9CNICO PC LAPTOPS REDES ELECTR\\u00d3NICA Y C\\u00c1MARAS DE SEGURIDAD\",\"status\":\"approved\",\"message\":\"Tu clasificado \'SERVICIO T\\u00c9CNICO PC LAPTOPS REDES ELECTR\\u00d3NICA Y C\\u00c1MARAS DE SEGURIDAD\' ha sido aprobado y ya est\\u00e1 visible en la plataforma.\",\"action_url\":\"clasificados.radioamerica.com.ve\\/clasificado\\/servicio-tecnico-pc-laptops-redes-electronica-y-camaras-de-seguridad-16\",\"activated_at\":\"2025-12-03T00:00:00.000000Z\"}', NULL, '2025-12-03 19:00:00', '2025-12-03 19:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('k.rcreaciones2025@gmail.com', '$2y$12$nH4dsVCf/0lJYms/3ZMIouz/uowvOmjmAs42el/OBsELaYqs4dCHy', '2026-02-05 17:02:01'),
('nicolanareli1@gmail.com', '$2y$12$baoCnR9LkTSBJnhZMm4jZupjqBj1Ici1b2IZhgV.EcdiWYWqWg4se', '2025-12-26 17:02:54'),
('zainrondon@gmail.con', '$2y$12$oxZoUxSogIUpx4c1PkLGmuBEyXRa2E9vxDYWkUEGU/BzKcrgFeLYu', '2025-12-25 11:16:51'),
('zajrj@outlook.com', '$2y$12$E26694lVigkWsFXufLO1auwq/rFTKGbfDnxf.oJd4ZOro.38e00Ou', '2025-11-07 08:57:11'),
('zajrj3@gmail.com', '$2y$12$Z5y16oKiFhpbt2CPGXLyVeK3Bm3F5/6LaUMez7g99XkoF//2tRMWa', '2025-11-07 09:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `clasificado_id` bigint UNSIGNED DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','confirmed','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 5, 'auth_token', '1b4e1577d57499f74ba65916a09247d05115a6d343415d82aea65d6394f9d5eb', '[\"*\"]', '2025-11-04 01:44:04', '2025-11-04 08:57:36', '2025-11-03 08:57:36', '2025-11-04 01:44:04'),
(3, 'App\\Models\\User', 6, 'auth_token', '3e277d4495cce9ce2d48f3281fd572d53742e38132151510d137712adbdcac42', '[\"*\"]', '2025-11-04 01:04:01', '2025-11-04 09:21:09', '2025-11-03 09:21:09', '2025-11-04 01:04:01'),
(4, 'App\\Models\\User', 7, 'auth_token', 'ab88ea4af546e28cd97bea2ffe16fef57fcdf00042d2ae765e5ce2601c50e30b', '[\"*\"]', '2025-11-04 17:42:26', '2025-11-04 19:54:02', '2025-11-03 19:54:02', '2025-11-04 17:42:26'),
(6, 'App\\Models\\User', 4, 'auth_token', 'a1383a2ff7600df0bf6cc7f444a62d69324a5e6f7cf19d50d5101cd4d6a387b1', '[\"*\"]', '2025-11-08 02:07:33', '2025-11-08 04:44:03', '2025-11-07 04:44:02', '2025-11-08 02:07:33'),
(9, 'App\\Models\\User', 4, 'auth_token', 'd70373eea39595cb811d38c405ee6ad435a79aa0eec264d2ed835496466b1583', '[\"*\"]', '2025-11-10 03:41:15', '2025-11-10 05:02:44', '2025-11-09 05:02:44', '2025-11-10 03:41:15'),
(10, 'App\\Models\\User', 4, 'auth_token', '9f4bce96762e9836fa1b10a69d953b32c452c0e98aacc8f16f1c83dd7402f76d', '[\"*\"]', '2025-11-11 00:04:33', '2025-11-11 07:05:43', '2025-11-10 07:05:43', '2025-11-11 00:04:33'),
(11, 'App\\Models\\User', 4, 'auth_token', '44f8dfa5dd7d72883d70af3c8c9aa1e0b029e597f169e5df69d437f540bc7a98', '[\"*\"]', '2025-11-12 05:24:16', '2025-11-12 20:10:35', '2025-11-11 20:10:35', '2025-11-12 05:24:16'),
(14, 'App\\Models\\User', 6, 'auth_token', 'db674513655d16adf8ca816ac0433e0a64ee154725a685490bf5be80ebefad55', '[\"*\"]', '2025-11-13 23:43:14', '2025-11-14 23:20:27', '2025-11-13 23:20:27', '2025-11-13 23:43:14'),
(16, 'App\\Models\\User', 10, 'auth_token', 'c89d388ec9e732e38ff5cb4fef083568614122454a75e3eee2a8fe33c524a856', '[\"*\"]', NULL, '2025-11-16 19:51:40', '2025-11-15 19:51:40', '2025-11-15 19:51:40'),
(17, 'App\\Models\\User', 10, 'auth_token', '18c4a7cccd5c8aec44862d6639991b4da5e00294dc95a4e742a10dd1b4fc5819', '[\"*\"]', NULL, '2025-11-16 19:52:11', '2025-11-15 19:52:11', '2025-11-15 19:52:11'),
(18, 'App\\Models\\User', 10, 'auth_token', 'e619873bd252db55755ad550e58c0999e58a05c385d3bb4ee38dc15069a3af8d', '[\"*\"]', '2025-12-03 22:02:44', '2025-12-15 19:52:22', '2025-11-15 19:52:22', '2025-12-03 22:02:44'),
(20, 'App\\Models\\User', 12, 'auth_token', 'c01c99cec9590a10960af6474ba086434b70773e1389a361d66c65b8c7ba00da', '[\"*\"]', '2025-11-21 04:39:18', '2025-11-22 03:59:09', '2025-11-21 03:59:09', '2025-11-21 04:39:18'),
(21, 'App\\Models\\User', 13, 'auth_token', 'ab3cd0a77fe3a65bf4f95e3d387e99ff3de10dd9ac9be15f22acfd3db187c61f', '[\"*\"]', '2025-11-22 16:46:19', '2025-11-23 16:38:40', '2025-11-22 16:38:40', '2025-11-22 16:46:19'),
(22, 'App\\Models\\User', 6, 'auth_token', 'b650911c982c1b83ad23fc1bdd637ecc3bbc445893054da8f56699d3fd3847d7', '[\"*\"]', '2025-11-22 22:40:45', '2025-11-23 21:31:27', '2025-11-22 21:31:27', '2025-11-22 22:40:45'),
(26, 'App\\Models\\User', 15, 'auth_token', '2e54b69be80ad49eef80ff28acdf2dbbc974e615e58b48bf8022054ec1d38536', '[\"*\"]', '2025-11-25 18:41:57', '2025-11-25 19:45:42', '2025-11-24 19:45:42', '2025-11-25 18:41:57'),
(27, 'App\\Models\\User', 16, 'auth_token', 'e1886babf20c947604a0763a079da10f0b94bb4ea14382f57bd525ffb5e35318', '[\"*\"]', '2025-11-24 21:14:35', '2025-11-25 20:08:38', '2025-11-24 20:08:38', '2025-11-24 21:14:35'),
(28, 'App\\Models\\User', 17, 'auth_token', '89362934749e29203d7a674e9e219a7e7252789d17d78ff046195a1ad10c7e6a', '[\"*\"]', '2025-11-25 00:49:46', '2025-11-25 23:59:17', '2025-11-24 23:59:17', '2025-11-25 00:49:46'),
(30, 'App\\Models\\User', 18, 'auth_token', '2c9e8ab9560e7360c46dda1ff9b85cfd7c15a770cf9290c5d8b24696598c6890', '[\"*\"]', '2025-11-25 05:31:23', '2025-11-26 04:57:16', '2025-11-25 04:57:16', '2025-11-25 05:31:23'),
(31, 'App\\Models\\User', 19, 'auth_token', '5bcd5743ba37f27b27cad0502b959dbf45210b049caf6a9bd86f4824f6c3dba2', '[\"*\"]', '2025-11-25 22:14:51', '2025-11-26 05:30:45', '2025-11-25 05:30:45', '2025-11-25 22:14:51'),
(32, 'App\\Models\\User', 19, 'auth_token', '5c75bbe0f428a8b55df48ca821c1bf0c24fe965186f30f9216f779daea9e0276', '[\"*\"]', '2025-11-26 00:13:57', '2025-11-26 08:04:24', '2025-11-25 08:04:24', '2025-11-26 00:13:57'),
(33, 'App\\Models\\User', 18, 'auth_token', 'e595c5cd62fccd619aca8793ed58eb349197204caa9e93ef01a8758f7fc774a9', '[\"*\"]', '2025-12-12 05:17:35', '2025-12-25 19:43:31', '2025-11-25 19:43:31', '2025-12-12 05:17:35'),
(35, 'App\\Models\\User', 16, 'auth_token', 'bdabc927e80e6ab0bbe3de032243dcf3a77292dfcc7c99a3cc9de499c176d479', '[\"*\"]', '2025-11-26 19:59:42', '2025-11-27 16:22:37', '2025-11-26 16:22:37', '2025-11-26 19:59:42'),
(36, 'App\\Models\\User', 21, 'auth_token', '147c9794c9b31f8dff96b6b64549643c5d5310aa659bc818a13abfe25d6a1500', '[\"*\"]', '2025-11-27 01:45:03', '2025-11-28 01:01:09', '2025-11-27 01:01:09', '2025-11-27 01:45:03'),
(38, 'App\\Models\\User', 22, 'auth_token', '62ea78ed6c74fa94124a21142b7bbd54b8d2ea4430336865b1312977a49fd74e', '[\"*\"]', '2025-11-28 17:32:09', '2025-11-29 17:30:25', '2025-11-28 17:30:25', '2025-11-28 17:32:09'),
(39, 'App\\Models\\User', 22, 'auth_token', 'd1143c787be3227266c5df31eca90ab2147868eb5cecdf9c80d195959d319eed', '[\"*\"]', '2025-11-29 01:15:12', '2025-11-30 01:14:32', '2025-11-29 01:14:32', '2025-11-29 01:15:12'),
(40, 'App\\Models\\User', 23, 'auth_token', '3cf377de1bdda3ce38075e8035c67980addce95dbf4d3ad3c0b10d39d0d36f42', '[\"*\"]', '2025-12-02 16:42:01', '2025-12-02 16:42:21', '2025-12-01 16:42:21', '2025-12-02 16:42:01'),
(43, 'App\\Models\\User', 19, 'auth_token', '0cb653f05a9a80be58ebb418348c8e4820fe8c52d6a790ab69d4f23ff7ff86d7', '[\"*\"]', '2025-12-02 07:42:09', '2025-12-03 07:39:08', '2025-12-02 07:39:08', '2025-12-02 07:42:09'),
(44, 'App\\Models\\User', 25, 'auth_token', '9a5c90db768f3beef490eba3494aec3813905e1bc792e30a6022683bea5c05e9', '[\"*\"]', '2025-12-03 02:50:39', '2025-12-03 23:22:03', '2025-12-02 23:22:03', '2025-12-03 02:50:39'),
(45, 'App\\Models\\User', 26, 'auth_token', '16b8dda3a4764541c4970f41ef21a3dd6ba124004c70bcd36ea49518a737b857', '[\"*\"]', '2025-12-02 23:54:18', '2025-12-03 23:41:50', '2025-12-02 23:41:50', '2025-12-02 23:54:18'),
(46, 'App\\Models\\User', 27, 'auth_token', 'e9c70033fb514a28ce5e73c7897b064f2841be17f7aaa684d136a03fa18a3b21', '[\"*\"]', '2025-12-05 15:07:14', '2025-12-06 14:48:15', '2025-12-05 14:48:15', '2025-12-05 15:07:14'),
(47, 'App\\Models\\User', 28, 'auth_token', 'be5f6bda6dab088d39a67a03cce4ea5393f1d8ba88ee53279c2a693436dc6308', '[\"*\"]', '2025-12-05 19:47:58', '2025-12-06 18:26:05', '2025-12-05 18:26:05', '2025-12-05 19:47:58'),
(48, 'App\\Models\\User', 16, 'auth_token', '93382226f85278e4fed31201cb8f374c0beed3282001394e71fd5ff94fd5810a', '[\"*\"]', '2025-12-07 18:39:56', '2025-12-08 18:08:54', '2025-12-07 18:08:54', '2025-12-07 18:39:56'),
(49, 'App\\Models\\User', 29, 'auth_token', 'a305e0702fa8c8acc7248a46f329ab2d2b7d37834c3132a16d93a32d0c4456c9', '[\"*\"]', '2025-12-07 18:49:24', '2025-12-08 18:49:23', '2025-12-07 18:49:23', '2025-12-07 18:49:24'),
(50, 'App\\Models\\User', 30, 'auth_token', '233317a8c937674be2237d49d634fc9bfd526af5d8e14a0afc22089add3f65d3', '[\"*\"]', '2025-12-10 03:57:26', '2025-12-11 00:40:34', '2025-12-10 00:40:34', '2025-12-10 03:57:26'),
(51, 'App\\Models\\User', 31, 'auth_token', '28b9192c7cc710c2229aff6c7e50cd42aed78a5906c95ae5149e1af53ef5da2b', '[\"*\"]', '2025-12-10 17:18:20', '2025-12-11 17:18:20', '2025-12-10 17:18:20', '2025-12-10 17:18:20'),
(52, 'App\\Models\\User', 32, 'auth_token', '6e4966abdfb5370b9664f869d0d512786666c48366eeb3a45f45619bbb0c9de9', '[\"*\"]', '2025-12-12 17:03:15', '2025-12-12 18:55:53', '2025-12-11 18:55:53', '2025-12-12 17:03:15'),
(53, 'App\\Models\\User', 33, 'auth_token', '5eb626b21ae9e32fcf869cf7be15156cfc51be97920128b1bfb5ebc10d0f6e45', '[\"*\"]', '2025-12-12 02:40:31', '2025-12-13 02:21:41', '2025-12-12 02:21:41', '2025-12-12 02:40:31'),
(54, 'App\\Models\\User', 34, 'auth_token', '0c500f5ee4dc07c33afa510d835e221a9a0af9490c3861dae46e7876db30b1b6', '[\"*\"]', '2025-12-15 23:22:57', '2025-12-16 23:21:24', '2025-12-15 23:21:23', '2025-12-15 23:22:57'),
(57, 'App\\Models\\User', 36, 'auth_token', '0124cd811f72ce31c384cfe9403ee2e6edf42c043cdf3794deed9ae4e7f46f7a', '[\"*\"]', '2025-12-16 17:54:42', '2025-12-17 17:16:03', '2025-12-16 17:16:03', '2025-12-16 17:54:42'),
(58, 'App\\Models\\User', 37, 'auth_token', 'ccabc7904525f90c408086d84aafc8387daaee7530ed6e27f0e1d56aed5d6383', '[\"*\"]', '2025-12-16 19:50:44', '2025-12-17 19:50:43', '2025-12-16 19:50:43', '2025-12-16 19:50:44'),
(59, 'App\\Models\\User', 38, 'auth_token', '1fd8b5248f43fcd911567a18ce2d26b178c0302268bc88f5f137b4c0be57288e', '[\"*\"]', '2025-12-16 21:45:03', '2025-12-17 21:32:29', '2025-12-16 21:32:29', '2025-12-16 21:45:03'),
(60, 'App\\Models\\User', 39, 'auth_token', '69d27bbafa32681cd374a51ea915bd13fd1bbd30870b65bf896f75953443ef31', '[\"*\"]', '2025-12-18 20:43:46', '2025-12-19 20:29:18', '2025-12-18 20:29:18', '2025-12-18 20:43:46'),
(61, 'App\\Models\\User', 29, 'auth_token', 'b2ca3354ec000d5e40083a02e1c16b844d4418ddd9afc6c9afbe803eb6f9a836', '[\"*\"]', NULL, '2025-12-24 15:18:21', '2025-12-23 15:18:20', '2025-12-23 15:18:21'),
(62, 'App\\Models\\User', 29, 'auth_token', 'fea13ddfb93a607f8e29fd33097a24e40ebc1bf3fc5c1e665f8571efb31bcbfa', '[\"*\"]', '2025-12-23 15:19:31', '2025-12-24 15:18:33', '2025-12-23 15:18:33', '2025-12-23 15:19:31'),
(64, 'App\\Models\\User', 40, 'auth_token', '4321152a2b6d72df06e74ce6b0f117d86b6d810cbb41cc3b0725a60e1a009d1e', '[\"*\"]', '2025-12-26 13:46:58', '2025-12-26 17:22:00', '2025-12-25 17:22:00', '2025-12-26 13:46:58'),
(66, 'App\\Models\\User', 41, 'auth_token', 'f0267460dec3bdca50a67a6c3fd22bb3a25618e4d01a08031121cb9fbd2681f3', '[\"*\"]', '2025-12-26 01:13:24', '2025-12-27 01:13:23', '2025-12-26 01:13:23', '2025-12-26 01:13:24'),
(67, 'App\\Models\\User', 42, 'auth_token', '1a65be8218550bb973ba205005ac90013da642427a7d26f5dd4b497aaa631bd5', '[\"*\"]', '2025-12-29 20:47:04', '2025-12-30 17:49:35', '2025-12-29 17:49:34', '2025-12-29 20:47:04'),
(68, 'App\\Models\\User', 42, 'auth_token', '98ee705c1b9b5d1ceba64b49ceb5531de9cd4b33dd71cd3c7d8af310ea9d2efa', '[\"*\"]', '2025-12-31 19:00:01', '2026-01-01 17:50:34', '2025-12-31 17:50:34', '2025-12-31 19:00:01'),
(70, 'App\\Models\\User', 43, 'auth_token', '5d0c54ba2b008f1dc86ba82f84510ca8ab6119b4ec60f70119850cf569325183', '[\"*\"]', '2026-01-06 06:32:43', '2026-01-06 22:32:20', '2026-01-05 22:32:20', '2026-01-06 06:32:43'),
(71, 'App\\Models\\User', 44, 'auth_token', '376f3e7707dbed1b3939700e06a0dc011f4262cf045e43ec7b38d76d8f388943', '[\"*\"]', '2026-01-07 19:48:27', '2026-01-08 19:48:10', '2026-01-07 19:48:10', '2026-01-07 19:48:27'),
(72, 'App\\Models\\User', 45, 'auth_token', '728af56acae93adc6b11996c7fb2a2866770d7da2760f9911b0f325e878aa5ed', '[\"*\"]', '2026-01-09 20:23:47', '2026-01-10 05:42:17', '2026-01-09 05:42:17', '2026-01-09 20:23:47'),
(73, 'App\\Models\\User', 45, 'auth_token', '1855b0ca9c4724fb41fa75c75e644e872d82275dbe03a4cc61227583e682a078', '[\"*\"]', '2026-01-10 18:40:30', '2026-01-11 17:02:35', '2026-01-10 17:02:35', '2026-01-10 18:40:30'),
(74, 'App\\Models\\User', 44, 'auth_token', '839077b9cc0f327c1fc3f9a65fa05b01e3dd522e6153bdeee24a69b4d23f9778', '[\"*\"]', '2026-01-23 11:55:33', '2026-02-10 15:19:12', '2026-01-11 15:19:12', '2026-01-23 11:55:33'),
(76, 'App\\Models\\User', 47, 'auth_token', 'de452bf0c3db1c630d3477894ece58591c5699165849a675b29f1fcc02df7093', '[\"*\"]', '2026-01-11 18:45:03', '2026-01-12 18:44:29', '2026-01-11 18:44:29', '2026-01-11 18:45:03'),
(77, 'App\\Models\\User', 48, 'auth_token', '5d6c2a35a5e4a1e8a257c12b46a015ecc8418f9ce86dc73e01d059c1ead353a2', '[\"*\"]', '2026-01-12 19:33:55', '2026-01-13 19:27:50', '2026-01-12 19:27:50', '2026-01-12 19:33:55'),
(78, 'App\\Models\\User', 16, 'auth_token', '7ee6593e2e971e8494827b1fc9da302eb6c3fedb7a0b5ba2ee26cc0846142ab7', '[\"*\"]', '2026-01-14 21:22:59', '2026-01-15 14:08:51', '2026-01-14 14:08:51', '2026-01-14 21:22:59'),
(79, 'App\\Models\\User', 49, 'auth_token', 'cdca6d21d3a732d3811486bac8a4ee29a818c5ae90752b50d23d24c36378a1e3', '[\"*\"]', '2026-01-14 23:35:42', '2026-01-15 14:57:26', '2026-01-14 14:57:26', '2026-01-14 23:35:42'),
(80, 'App\\Models\\User', 50, 'auth_token', 'd307f1bb7eb34542a6a08ee34810a4eccf3fef8f6a21c276519562c41b04b591', '[\"*\"]', '2026-01-15 01:44:07', '2026-01-16 01:38:03', '2026-01-15 01:38:03', '2026-01-15 01:44:07'),
(81, 'App\\Models\\User', 51, 'auth_token', '872f94b8441f54a7725c9f0ef126ee4537121ed8f858edce955417dcc0cb4e3e', '[\"*\"]', '2026-01-15 10:47:23', '2026-01-16 10:09:46', '2026-01-15 10:09:46', '2026-01-15 10:47:23'),
(82, 'App\\Models\\User', 52, 'auth_token', '8aab6a13bde4bf179542e0abd7842b82d687b78db30955b60fd59c6746839851', '[\"*\"]', '2026-01-16 14:45:31', '2026-01-17 14:37:05', '2026-01-16 14:37:05', '2026-01-16 14:45:31'),
(83, 'App\\Models\\User', 53, 'auth_token', '8c83719460709e1d6ea022b24ec31a29d381e2371173b8320ae91cca45545fb7', '[\"*\"]', '2026-01-16 20:24:59', '2026-01-17 20:17:25', '2026-01-16 20:17:25', '2026-01-16 20:24:59'),
(84, 'App\\Models\\User', 54, 'auth_token', '48fc80e48bfaf1872aae2e6db113edc839c37cbd7c9d8bb19550917866ab574f', '[\"*\"]', '2026-01-18 11:25:11', '2026-01-19 11:02:50', '2026-01-18 11:02:50', '2026-01-18 11:25:11'),
(85, 'App\\Models\\User', 48, 'auth_token', 'ff0b588a66f4dd46e7ce205d325b765c864e3306fec59b9c7b1acf87f69c74da', '[\"*\"]', '2026-01-19 14:53:07', '2026-01-20 14:27:01', '2026-01-19 14:27:01', '2026-01-19 14:53:07'),
(86, 'App\\Models\\User', 55, 'auth_token', '19c13b108fa4941d53d483a3dbf4391521273cdfbb9c271c0e663609d7aa1076', '[\"*\"]', '2026-01-22 15:24:09', '2026-01-23 12:51:57', '2026-01-22 12:51:57', '2026-01-22 15:24:09'),
(87, 'App\\Models\\User', 19, 'auth_token', 'aefb1945949305879ec2e3831460cd7cf4f2d2a56d9a887553fc643f909fe744', '[\"*\"]', '2026-01-22 12:53:41', '2026-01-23 12:52:09', '2026-01-22 12:52:09', '2026-01-22 12:53:41'),
(88, 'App\\Models\\User', 56, 'auth_token', '3600c55756585c1970c74365098a3cefba169be05328da0cf26cdb141a7855af', '[\"*\"]', '2026-01-22 14:23:46', '2026-01-23 13:32:56', '2026-01-22 13:32:56', '2026-01-22 14:23:46'),
(89, 'App\\Models\\User', 55, 'auth_token', '8e2e4e33d10639e7793a3ca535303b929160ec9653a3d5991e7f1c88a5426291', '[\"*\"]', '2026-02-06 17:27:49', '2026-02-21 15:17:39', '2026-01-22 15:17:39', '2026-02-06 17:27:49'),
(90, 'App\\Models\\User', 42, 'auth_token', '5088542edf39f72ba8e4f5e500d8212f4132a4b112f58d3cf68527045b768dc7', '[\"*\"]', '2026-01-22 16:16:03', '2026-02-21 16:07:55', '2026-01-22 16:07:55', '2026-01-22 16:16:03'),
(91, 'App\\Models\\User', 57, 'auth_token', 'cdc650b85fbd023ea2df418c763b6c1dee2abe595f8fddc2e63fbcd2ac260ffe', '[\"*\"]', '2026-01-22 18:04:06', '2026-01-23 16:16:16', '2026-01-22 16:16:16', '2026-01-22 18:04:06'),
(92, 'App\\Models\\User', 16, 'auth_token', '63a5f2da914c5e47b8b03dd3f3e498032c5c60be45b5038332915ad9824247e6', '[\"*\"]', '2026-01-22 20:42:36', '2026-01-23 20:36:31', '2026-01-22 20:36:31', '2026-01-22 20:42:36'),
(93, 'App\\Models\\User', 53, 'auth_token', '89c163513cd7d1ce1d43306525c2a36617bae4d4732398e20bddeba9f85bfc3e', '[\"*\"]', '2026-01-22 21:44:11', '2026-01-23 21:14:04', '2026-01-22 21:14:03', '2026-01-22 21:44:11'),
(94, 'App\\Models\\User', 53, 'auth_token', '2d54dd2c2dc92285446e1804d805e75391b6d62af16ee66bbbe918ab41b97054', '[\"*\"]', '2026-01-22 22:35:05', '2026-01-23 22:31:27', '2026-01-22 22:31:27', '2026-01-22 22:35:05'),
(95, 'App\\Models\\User', 58, 'auth_token', '3edae127d28d6486fbcf9b4da6b76d412270908001abcd4204283a6c97432677', '[\"*\"]', '2026-01-23 02:04:04', '2026-01-24 02:03:35', '2026-01-23 02:03:35', '2026-01-23 02:04:04'),
(96, 'App\\Models\\User', 59, 'auth_token', 'd91f0f1b61b6c04727955df101a2fce990bae836ad13c226de743b68d67f12e7', '[\"*\"]', '2026-01-25 18:22:33', '2026-01-26 18:12:48', '2026-01-25 18:12:48', '2026-01-25 18:22:33'),
(97, 'App\\Models\\User', 60, 'auth_token', 'a7e2f324845577d0fb65d13b0a719125dcdfdceac7c54e98ac94d96879bb0e49', '[\"*\"]', '2026-01-27 12:02:10', '2026-01-28 12:01:19', '2026-01-27 12:01:19', '2026-01-27 12:02:10'),
(98, 'App\\Models\\User', 61, 'auth_token', 'ab5d3dcfafbdf50578d1f15770bcfc12a3986d2bb562a0821bc0e685687846a5', '[\"*\"]', '2026-01-27 12:14:49', '2026-01-28 12:03:41', '2026-01-27 12:03:41', '2026-01-27 12:14:49'),
(100, 'App\\Models\\User', 62, 'auth_token', 'dd1f5badf99e80c430706e2cc2020d1aac23f9ee8e2955c5ee372a91f217144e', '[\"*\"]', '2026-01-27 14:47:00', '2026-01-28 14:25:46', '2026-01-27 14:25:46', '2026-01-27 14:47:00'),
(101, 'App\\Models\\User', 63, 'auth_token', 'b39e3966da9e244f6ecd4ee72d9dc8fbf29153babf7c12f9727d0a2d70fb11af', '[\"*\"]', '2026-01-27 17:03:37', '2026-01-28 17:02:43', '2026-01-27 17:02:43', '2026-01-27 17:03:37'),
(102, 'App\\Models\\User', 64, 'auth_token', '91522d3ca499c95be9014566ca6ed580998d735d1eab54b3c61a395790d3e431', '[\"*\"]', '2026-01-30 21:20:05', '2026-01-31 12:05:08', '2026-01-30 12:05:08', '2026-01-30 21:20:05'),
(103, 'App\\Models\\User', 65, 'auth_token', 'aff488bc671b301412a1d57336ba13f8dca6b8658f2af635749b25d94ce7d6e7', '[\"*\"]', '2026-02-01 01:03:27', '2026-02-02 00:51:31', '2026-02-01 00:51:31', '2026-02-01 01:03:27'),
(104, 'App\\Models\\User', 49, 'auth_token', '778ab6041b51360396011ca0c1c78b2a7eb2d4b1d797dc485c59dc69c56376dd', '[\"*\"]', '2026-02-05 18:08:04', '2026-03-04 11:27:15', '2026-02-02 11:27:15', '2026-02-05 18:08:04'),
(105, 'App\\Models\\User', 53, 'auth_token', '4d1e49b2f9cdc13671b8a3eae6a248fa3efade6fcbdfaddff8ac276393f07866', '[\"*\"]', '2026-02-04 19:42:19', '2026-03-06 19:40:38', '2026-02-04 19:40:38', '2026-02-04 19:42:19'),
(106, 'App\\Models\\User', 66, 'auth_token', 'c77990ac6e0422ee5d7c857be9ac8bc1751b47d587e78cbeed291ae4462d06d6', '[\"*\"]', '2026-02-05 17:09:25', '2026-02-06 17:06:25', '2026-02-05 17:06:25', '2026-02-05 17:09:25'),
(107, 'App\\Models\\User', 67, 'auth_token', '5c5015bc9251c798adf1bd201307cdd4ab9d7e3d3d82529333b5c9d8577a54ec', '[\"*\"]', '2026-02-06 00:57:15', '2026-02-07 00:18:39', '2026-02-06 00:18:39', '2026-02-06 00:57:15'),
(108, 'App\\Models\\User', 64, 'auth_token', '99917c88415d1dae429efa804c2621cf5b146e7f4985b2054b68332dca1a807c', '[\"*\"]', '2026-02-06 13:44:06', '2026-02-07 11:43:43', '2026-02-06 11:43:43', '2026-02-06 13:44:06'),
(109, 'App\\Models\\User', 42, 'auth_token', 'ea71ea9fc2dcd3b7e247f4810afbfec114afe6ee7749820f8701913414845d6a', '[\"*\"]', '2026-02-07 16:27:11', '2026-03-09 15:15:51', '2026-02-07 15:15:51', '2026-02-07 16:27:11'),
(110, 'App\\Models\\User', 68, 'auth_token', '34d3368fb7c459a7a35d2679be167626f5c65e935bdb5d405575d427fe16a906', '[\"*\"]', '2026-02-08 13:43:18', '2026-02-09 11:22:28', '2026-02-08 11:22:28', '2026-02-08 13:43:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `features` json DEFAULT NULL,
  `limit_words` int NOT NULL,
  `number_of_ads` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `duration` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`id`, `features`, `limit_words`, `number_of_ads`, `name`, `price`, `duration`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '[{\"title\": \"gratis\", \"description\": null}]', 100, 3, 'Plan gratuito', 0.00, 120, 1, '2025-11-03 19:55:56', '2025-11-03 19:55:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rejecteds`
--

CREATE TABLE `rejecteds` (
  `id` bigint UNSIGNED NOT NULL,
  `clasificado_id` bigint UNSIGNED NOT NULL,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `clasificado_id` bigint UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','resolved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Vendedor', 'administration_user', '2026-01-11 01:15:51', '2026-01-11 01:15:51'),
(2, 'Administrador', 'administration_user', '2026-01-11 01:15:51', '2026-01-11 01:15:51'),
(3, 'Productor', 'administration_user', '2026-01-11 01:15:51', '2026-01-11 01:15:51'),
(4, 'Desarrollador', 'administration_user', '2026-01-11 01:15:51', '2026-01-11 01:15:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stages`
--

CREATE TABLE `stages` (
  `id` bigint UNSIGNED NOT NULL,
  `workflow_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `requires_document` tinyint(1) NOT NULL DEFAULT '0',
  `requires_digital_signature` tinyint(1) NOT NULL DEFAULT '0',
  `is_parallel` tinyint(1) NOT NULL DEFAULT '0',
  `attachments` json DEFAULT NULL,
  `responsible_role_id` bigint UNSIGNED DEFAULT NULL,
  `responsible_user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `stages`
--

INSERT INTO `stages` (`id`, `workflow_id`, `name`, `order`, `requires_document`, `requires_digital_signature`, `is_parallel`, `attachments`, `responsible_role_id`, `responsible_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Primera revisión', 1, 0, 1, 0, NULL, 2, 6, '2026-01-11 01:37:13', '2026-01-12 18:23:54'),
(2, 1, 'Segunda revisión', 2, 0, 1, 0, '[]', 2, 7, '2026-01-11 01:37:13', '2026-01-12 18:23:54'),
(3, 1, 'Producción', 3, 1, 1, 0, '[]', 3, NULL, '2026-01-11 01:37:52', '2026-01-12 18:33:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `social_links` json DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` enum('V','E','G','J') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('M','F','O') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubication` json DEFAULT NULL,
  `receive_newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `accept_terms` tinyint(1) NOT NULL DEFAULT '0',
  `limit_free_clasificados` int NOT NULL DEFAULT '3',
  `last_free_reset` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `social_links`, `password`, `phone_number`, `document`, `document_type`, `birth_date`, `gender`, `ubication`, `receive_newsletter`, `accept_terms`, `limit_free_clasificados`, `last_free_reset`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Edwin', 'Machado', 'edfermachado10@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$yjwTmP9lQxg6O7p5c0i/Puz3Sbda9sxOu9ny1LRMv4ejjXbTVBbHu', '+584244033882', '30532641', 'V', '2002-12-30', 'M', NULL, 1, 1, 3, NULL, NULL, '2025-11-03 08:57:36', '2025-11-03 08:58:08'),
(6, 'Dervis', 'Martinez', 'dmartinez@radioamerica.com.ve', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$g4xtWuec31ie9hs/2bX6CeESrl.l16qeZcAYGZ5yQ3GJkpBNj493S', '+584244240157', '31456326', 'V', '2005-04-20', 'M', '{\"city\": \"valencia\", \"state\": \"Carabobo\", \"others\": \"michelena\\nsan blas\", \"municipality\": \"valencia\"}', 1, 1, 3, NULL, NULL, '2025-11-03 09:21:09', '2025-11-22 21:31:53'),
(7, 'ileny', 'Martinez', 'ilenymg@gmail.com', NULL, NULL, '$2y$12$0isZHmL8nyODi0Owk2y6JO58tjQ8s4bQzrH868svSWZZi63BGGbde', NULL, '12107664', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-11-03 19:54:02', '2025-11-03 19:54:02'),
(8, 'Sofia', 'Rondon', 'zajrj@outlook.com', NULL, NULL, '$2y$12$sGU./hTy8J7iUEa9lXPpd.edZuH.LIVKTDacRxgfo.z.83SOeiC9e', NULL, '30601247', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-11-07 08:52:57', '2025-11-07 08:52:57'),
(9, 'Dervis', 'Martinez', 'dervismartinez20@gmail.com', NULL, NULL, '$2y$12$IiwXOyClWOrwIbRy0VMzNe8bxQ1W/7AmfDEABwl.68uyuJ45.61vq', NULL, '0000000', 'V', NULL, 'M', NULL, 1, 1, 1, '2025-11-13 23:28:01', NULL, '2025-11-13 23:21:55', '2025-11-13 23:36:25'),
(11, 'Zain José', 'Rondón Flores', 'zainrondon@gmail.con', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$71Qi3fuFIM/r83Z2SmgAN.K.JXqPg9zL0RniH2V71DPDeXoF2P4HG', '+584148736044', '11814586', 'V', '1973-11-13', 'M', NULL, 0, 1, 2, '2025-11-20 15:20:39', NULL, '2025-11-20 15:09:49', '2025-11-20 15:20:39'),
(12, 'Luis Ramón', 'Romero Pérez', 'luisromero4229@gmail.com', NULL, NULL, '$2y$12$sKuSe1GcVg7BCR/i.AjPFe8UQW/gkV70HUKwqQeH3wS1740jdjUVW', NULL, '7005290', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-11-21 03:59:09', '2025-11-21 03:59:09'),
(13, 'Maikel', 'Piñates', 'maikel030976@gmail.com', NULL, NULL, '$2y$12$4z.zVteNBrIE5sEOrZPaVegOB5AbGrz.WAKMPP1gz4J2k93K5UjhG', NULL, '13133977', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-11-22 16:38:40', '2025-11-22 16:38:40'),
(14, 'Elizabeth', 'Escalona', 'escalonazej@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$C6U8T4WKVR54Tlt0CrYUpO8KBYKSR4Ti93hpqzou4MLLC/FlGiZSu', '+584143467947', '12605378', 'V', '1975-12-28', 'F', '{\"city\": \"Valencia\", \"state\": \"Carabobo\", \"others\": \"Sector Don Bosco Calle Bruzual Casa 106-71\", \"municipality\": \"Valencia\"}', 1, 1, 2, '2026-01-27 12:44:20', 'FPlet6WfY1ceWYOj5qsWJM9u2fJ9cl37Cg1nqr0dvyfgtAIymE4O50uX2ARh', '2025-11-23 17:13:03', '2026-01-27 12:44:20'),
(15, 'Jesus', 'Aguilar', 'danieljimenez737@gmail.com', NULL, NULL, '$2y$12$DeXQ9S7TQZbawUduwCCyNe1E7pXGncPzhoEwl9.pm85rkB0NJsHI6', NULL, '21485074', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-11-24 19:45:42', '2025-11-24 19:45:42'),
(16, 'Mariela', 'Romero Cruces', 'delvromero@gmail.com', NULL, NULL, '$2y$12$IjW7QVZbMo4j21fMyM7aseiGIZE1CsDcW9GkSFQxJSKEv6fbNTNT6', NULL, '7126120', 'V', NULL, 'F', NULL, 1, 1, 1, '2026-01-14 16:38:55', NULL, '2025-11-24 20:08:38', '2026-01-22 20:41:34'),
(17, 'María Alejandra', 'Tortolero', 'matrvz79@hotmail.com', NULL, NULL, '$2y$12$92NfzkbOIOpKC/AYlirYv.VhI3V3OVgRjeExu4IMHKrZoGgHHMniO', NULL, '14069540', 'V', NULL, 'F', NULL, 1, 1, 2, '2025-11-25 00:32:11', NULL, '2025-11-24 23:59:17', '2025-11-25 07:53:02'),
(18, 'Miguel', 'Orozco', 'leugim304@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": \"https://www.instagram.com/leugim304/\"}', '$2y$12$/Pk/6YV7MNJ5lz076aYKfu4zI053.plEOg/ho3m4e3OCtiGCYYHHu', '+584144394976', '10739488', 'V', '1970-04-30', 'M', '{\"city\": \"Valencia\", \"state\": \"Carabobo\", \"others\": \"San Blas. Valencia\", \"municipality\": \"Valencia\"}', 1, 1, 3, NULL, 'kbLLrxUUPMLkhnKQOwnA5yWFZ8VXHkikL04Q6RB6dbXj7qKI27fPKsmt0oJI', '2025-11-25 04:57:16', '2025-11-25 05:06:43'),
(19, 'Daniel Armando', 'Quintero Geerman', 'geermanarmando@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$CDfs7snhxbPH6VWivOrnTuGTWVPQN23hT4gEu0ouYkZoX4SW.m.wy', '+584124075622', '13508146', 'V', '1976-09-08', 'M', '{\"city\": \"Valencia\", \"state\": \"Carabobo\", \"others\": \"Carretera nacional Valencia Pto cabello, barrio la Coromoto, calle don Bosco nro. 10214\", \"municipality\": \"Naguanagua\"}', 0, 1, 1, '2025-11-25 05:36:50', NULL, '2025-11-25 05:30:45', '2025-11-25 08:16:32'),
(20, 'Comerciante', 'Lugo Sánchez', 'leonardluis818@gmail.com', NULL, NULL, '$2y$12$u1Y6VthBmmIF0//EujigH.zrbFY8m6ECNXFw2uZEWxfDo7XHBgYk.', NULL, '14821168', 'V', NULL, 'M', NULL, 1, 1, 2, '2025-11-25 22:15:56', NULL, '2025-11-25 22:02:15', '2025-11-25 22:15:56'),
(21, 'Rosario', 'Cabrera', 'rosariocabrerae@gmail.com', NULL, NULL, '$2y$12$PHgHmCKgtXYKtc2qWCcJ3urouFBgj6Fc03mZnHobRUZbgTDay3QuG', NULL, '3540583', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-11-27 01:01:09', '2025-11-27 01:01:09'),
(22, 'Fátima', 'Montilva', 'fmontilva5289@gmail.com', NULL, NULL, '$2y$12$qUJM1al1wxhUfubInJo1Ie7iICbPK78oN8bY83oPU.KYFP99kZ6jK', NULL, '18468848', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-11-28 17:30:25', '2025-11-28 17:30:25'),
(23, 'AISLAMIENTO Y REFRACTARIOS PEYILAN C.A', NULL, 'garcespe@hotmail.com', NULL, NULL, '$2y$12$qc8buT/PhU//HcsQe8RSc.IvcQ3UdYpIifaQmSBEUo6MmjIGBZbou', NULL, '507339912', 'J', NULL, NULL, '{\"city\": \"valencia\", \"state\": \"carabobo\", \"others\": \"zona industrial carabobo c.c. thema local 3 av michelena\", \"municipality\": \"valencia\"}', 1, 1, 2, '2025-12-02 16:14:34', NULL, '2025-12-01 16:42:21', '2025-12-02 16:16:19'),
(24, 'YHONIS', 'RIERA', 'correoalbertoriera@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$DmbbkUHyqJeH4UFpCtGJR.i7ZUE6sonxmlrDggXqn.YeCh.L8T/gW', '+584145833472', '4133085', 'V', '1954-01-24', 'M', NULL, 0, 1, 3, NULL, NULL, '2025-12-02 04:49:11', '2025-12-02 04:51:05'),
(25, 'Jorge', 'Fuentes', 'j6fuentes@hotmail.com', NULL, NULL, '$2y$12$C55QB.GB1TalDlqAXvcTTeMXSCLvKiSO.p/FbaxTKXPqRHMT4ff12', NULL, '15745545', 'V', NULL, 'M', NULL, 1, 1, 1, '2025-12-02 23:34:44', NULL, '2025-12-02 23:22:03', '2025-12-03 00:15:21'),
(26, 'Merlys', 'Marin', 'merlysmarin.rah@gmail.com', NULL, NULL, '$2y$12$XTb6JS.pb6/v/D.7IHo5vu6.fwVAxACoImI7yj5.g6UAtXAaaTThq', NULL, '17136832', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-12-02 23:41:50', '2025-12-02 23:41:50'),
(27, 'Startup Coaching Consultores', NULL, 'startupcoachingvzla2@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$F8XvWk44N6.jguYvbw2k4uvszCUtFJC2r3kf5gQxGzMWdI.o.bEhW', '+584144961409', '502099425', 'J', NULL, NULL, '{\"city\": \"Valencia\", \"state\": \"Carabobo\", \"others\": \"Valencia - Edo Carabobo\", \"municipality\": \"Valencia\"}', 1, 1, 2, '2025-12-05 15:04:52', NULL, '2025-12-05 14:48:15', '2025-12-05 15:04:52'),
(28, 'Juan', 'García', 'juanes2207@gmail.com', NULL, NULL, '$2y$12$2W9cSVGicodMusNXiVb2Yu50A.DggSCSIgRnN5MYzjvvwJjBLdyU.', NULL, '11528533', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-05 18:26:05', '2025-12-05 18:26:05'),
(29, 'Jorge', 'Hernandez', 'jorgedavidcastillo011216@gmail.com', NULL, NULL, '$2y$12$8DrKCElsxILmwxD9BzzFdOVYnR1oZtvNdsTEycs8I8XSLNFXm2j76', NULL, '25754464', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-07 18:49:23', '2025-12-07 18:49:23'),
(30, 'Omar j.', 'Yanez l.', 'omar1873@gmail.com', NULL, NULL, '$2y$12$0p5nzh2ujKjRekp/Ise9MeRT6ggQWVYU43pSf.QxPAn96/iQnehGO', NULL, '11813318', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-10 00:40:34', '2025-12-10 00:40:34'),
(31, 'Elvis', 'Terán', 'elvisteran578@gmail.com', NULL, NULL, '$2y$12$bygcjcLnM7H1UaZZVTu9zOWuQ7UbZAMTUhai1j.GiUVFS6.x0PDXu', NULL, '7145814', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-10 17:18:20', '2025-12-10 17:18:20'),
(32, 'Electronica', 'EnVivo', 'electronicaenvivo10@gmail.com', NULL, NULL, '$2y$12$DB7gTrqVT/qOQiA5L6e73.hQOeXADlap9MMijARjsNSaT9dYSaY3K', NULL, '115285331', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-11 18:55:53', '2025-12-11 18:55:53'),
(33, 'Julio', 'Leon', 'jleonco@hotmail.com', NULL, NULL, '$2y$12$9zWA3z1igCDLMCd0JoSbk.ZMmnmMGj06kWM5AbkdT7AavEBuQCPpG', NULL, '12423792', 'V', NULL, 'M', NULL, 1, 1, 2, '2025-12-12 02:32:39', NULL, '2025-12-12 02:21:41', '2025-12-12 02:32:39'),
(34, 'Rosi', 'AGUDELO', 'ledezmarosita98@gmail.com', NULL, NULL, '$2y$12$h59wWx8oXsaZfwAbbSmZO.bl0zccyGNGGVIK2nUg6FUpziCX23gXq', NULL, '18178785', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-12-15 23:21:17', '2025-12-15 23:21:17'),
(35, 'Francisco', 'Robles', 'robles0570@gmail.com', NULL, NULL, '$2y$12$uswAP/5oI5IyRQVQVYheh.KEdWkw6roBORGbyM4MjbFUCAQS5XlTK', NULL, '10230093', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, 'CrNMpBdjMiUPPaQOpuiqzx5Y2gRr1a2cgq9uhux93JUHRPIz9LlvdNN96yLC', '2025-12-16 01:02:25', '2025-12-16 01:02:25'),
(36, 'Giovanny Alexander', 'Vivas Labrador', 'alexpower141.gv@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$jFTSMYZ9AGDjYRBxcbc8Oe30NkNVSbJV8oDsXd07hGVg/zp0esgD.', '+584144145982', '16049274', 'V', '1980-11-02', 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-16 17:16:02', '2025-12-16 17:51:05'),
(37, 'Nicol', 'Hinojosa', 'nicolanareli1@gmail.com', NULL, NULL, '$2y$12$LAE.h9ti1uxqVRmqaeMdWOQcvyFnXovImzdDqwh8o/NrhbKRQ6HF2', NULL, '29685733', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2025-12-16 19:50:43', '2025-12-16 19:50:43'),
(38, 'Miguel', 'Coronado', 'miguelcoronadomiancosu@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$W44lwIbNgM3BYE4JigwktOEVXA7e9LRjWnPib7hwp.8w7W.zZx84K', '+584244249196', '24570261', 'V', '1996-01-09', 'M', '{\"city\": \"Valencia\", \"state\": \"Carabobo\", \"others\": \"Detras del c.c rebeca\", \"municipality\": \"Valencia\"}', 0, 1, 2, '2025-12-16 21:40:43', NULL, '2025-12-16 21:32:29', '2025-12-16 21:43:16'),
(39, 'daniela', 'hernandez', 'danielacoromoto723@gmail.com', NULL, NULL, '$2y$12$e3WBP7vftKq0KTzP8Fo6eObJ8poXuYmliNwH8W/THwTFl6Onz3Df2', NULL, '31581689', 'V', NULL, NULL, NULL, 1, 1, 3, NULL, NULL, '2025-12-18 20:29:18', '2025-12-18 20:29:18'),
(40, 'Hernán', 'García', 'hernanjgj2@gmail.com', NULL, NULL, '$2y$12$nPGYgVsXRxiDd/LLG6VvqOCxL3MoWLE7W2Kq3VuqPg4Qg04XLbYcK', NULL, '10370614', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2025-12-25 17:22:00', '2025-12-25 17:22:00'),
(41, 'ORLANDOELGRANDE.F.P', 'RUIZ BECERRIT', 'ruizorla123456@gmail.com', NULL, NULL, '$2y$12$nzjdYvijt4nZJGNVHByAQuFsbc.W/JA.c7lzPJulGab6o/dweGMFW', NULL, '7023329', 'V', NULL, NULL, NULL, 1, 1, 3, NULL, NULL, '2025-12-26 01:13:23', '2025-12-26 01:13:23'),
(42, 'Desiderio', 'Agudo', 'desiderioagudo2018@gmail.com', NULL, NULL, '$2y$12$RyqeJyoyoJavm2kF1qw7XuaU9/Xl4Y1txJzmyGBLa8Mw8CaGI68di', NULL, '7006333', 'V', NULL, 'M', NULL, 1, 1, 2, '2026-02-07 16:22:00', 'gahLjq7O2Otd4W2c5K61aSvzlK8KwoskfPdv1FE62gc99Va1yNfAawclsugX', '2025-12-29 17:49:34', '2026-02-07 16:22:00'),
(43, 'Zain', 'Rondon', 'zajrj3@gmail.com', NULL, NULL, '$2y$12$QmYqMzuUykSkn.E8uqETzep4abIDrCm5jvu9TCJByfqAc6NdezVHi', NULL, '30601248', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-05 22:27:45', '2026-01-05 22:27:45'),
(44, 'Emprendimiento Yelitza Olavarrieta', NULL, 'yelitzajolavarrieta@gmail.com', NULL, NULL, '$2y$12$nub15i3vuXjR22Ho99r7yOVLviQm5uRiZu/FbbSnelMpFXXuK.1.a', NULL, '507240622', 'J', NULL, NULL, '{\"city\": \"Guacara\", \"state\": \"Carabobo\", \"others\": \"Centro Comercial Mercasol Planta baja local 35-46 Calle Carabobo Guacara Estado Carabobo\", \"municipality\": \"Guacara\"}', 1, 1, 3, NULL, '4H5Yl7q2oBnYzJymXJn3NO7Muu27iyPxdbLxxTnJRP0XQyMSKfehPd2wWxf1', '2026-01-07 19:48:10', '2026-01-23 11:55:26'),
(45, 'Leonardo', 'Tarache', 'leonardotarache@gmail.com', NULL, NULL, '$2y$12$IG9O5c9/.DkxD.GR1Ld2pej6Mf2ffp8FsdGutbSopFLr.WLaWkCba', NULL, '18533031', 'V', NULL, 'M', NULL, 1, 1, 0, '2026-01-09 05:51:41', NULL, '2026-01-09 05:42:17', '2026-01-09 06:09:55'),
(46, 'Luis', 'Garcia', 'ventasluisgarcia77@gmail.com', NULL, NULL, '$2y$12$bl7IR4Elqnb38M7xrNhPUObC1X2kqggIK7HhWlubrTHyDDwwLO/QS', NULL, '14571070', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-11 15:39:46', '2026-01-11 15:39:46'),
(47, 'Manuel', 'Armas', 'manuel-gam93@hotmail.com', NULL, NULL, '$2y$12$Wvax4zVCogHzCeEAi4Sm.uRxjWhIaS4m0sAK76.BVHwDXoaeDjFFO', NULL, '22518833', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-11 18:44:29', '2026-01-11 18:44:29'),
(48, 'Hurtado', 'Laya', 'nelsonlaya@hotmail.com', NULL, NULL, '$2y$12$ZnfzUO9haXRLE/CBYYWi7eKmZVQEttQfkwGjWHWOWlEFG3Rs4JnJS', NULL, '5378799', 'V', NULL, NULL, NULL, 1, 1, 3, NULL, NULL, '2026-01-12 19:27:50', '2026-01-12 19:27:50'),
(49, 'Frank Arthur', 'Vera Moreno', 'indafra@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$JTAOVfsKQH6bal5vKb58rePY5v0qFHAFkXXd53cBPsH3FvmJFC3v.', '+584142365301', '10377383', 'V', '1969-06-27', 'M', NULL, 1, 1, 1, '2026-01-14 15:03:30', '7jvqb2yo7j2PlTjcfI8aIE1u8UFAEIvKYJNGbUKzItIMnTF6Vyjp9Sceph36', '2026-01-14 14:57:26', '2026-02-02 12:51:25'),
(50, 'Douglas', 'Zambrano', 'zambrano.douglase@gmail.com', NULL, NULL, '$2y$12$Sr3R1stNK9MbfNjQIqTZjOgwwkiA5VV6eK4F9c6vvlFWHdABvNBKK', NULL, '14079774', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-15 01:38:03', '2026-01-15 01:38:03'),
(51, 'willian', 'rodriguez', 'entrevist@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": \"https://www.instagram.com/jardinindustrial\"}', '$2y$12$bK5GDsz548EpLUkKniZZbejTLJ/FKlJbxmBS3BCTuYYmzE9T.Ci8K', '+584124584549', '16872687', 'V', '1983-03-04', 'M', '{\"city\": \"valencia\", \"state\": \"carabobo\", \"others\": \"bucaral 2, calle 7, casa 142\", \"municipality\": \"Rafael urdaneta\"}', 1, 1, 2, '2026-01-15 10:39:23', NULL, '2026-01-15 10:09:46', '2026-01-15 10:45:22'),
(52, 'Michael', 'Murgueza', 'smaikolsanchez@gmail.com', NULL, NULL, '$2y$12$9UIEfLHkffiQRFfXktvwTOq0RmmFq6bu8yJRXSHfyStBHGmG04Itm', NULL, '27228662', 'V', NULL, 'M', NULL, 1, 1, 2, '2026-01-16 14:45:29', NULL, '2026-01-16 14:37:05', '2026-01-16 14:45:29'),
(53, 'Maria Alejandra', 'Lovera Valero', 'malv28@gmail.com', NULL, NULL, '$2y$12$LjjIDK2pw1zcZ4xypobnne3SLliKwZxwVAagBqikbL1bd0hJHKesO', NULL, '12930878', 'V', NULL, 'F', NULL, 1, 1, 2, '2026-01-22 21:41:16', 'tPusB5syf8GoW9mAnauYQnUNWli6FMMLbrCKoKiujPGhgJ2lU1PDnEMWznBD', '2026-01-16 20:17:25', '2026-01-22 21:41:17'),
(54, 'Roger', 'Martinez', 'uc.universidadecarabobo@gmail.com', NULL, NULL, '$2y$12$XhDvS42XyRg9vLNO/1dESOfuWtrDB.c9zSzUEZQHF3L4NH0/lqzha', NULL, '16049552', 'V', NULL, 'M', NULL, 1, 1, 2, '2026-01-18 11:16:59', NULL, '2026-01-18 11:02:50', '2026-01-18 11:16:59'),
(55, 'José Alfredo', 'Salinas Hernández', 'joseasalinas.allado@gmail.com', NULL, '{\"tiktok\": \"https://tiktok.com/@joseasalinas.al_lado\", \"facebook\": \"https://facebook.com/josealfredosalinas.inmuebles\", \"instagram\": \"https://instagram.com/@joseasalinas.al_lado\"}', '$2y$12$p5klX.ud6usJlIQOb9Hky.UHUlgPQhRXKOsyzR.EQq4imMt/05cxi', '+584145839354', '7064471', 'V', '1964-04-01', 'M', '{\"city\": \"Valencia\", \"state\": \"Carabobo\", \"others\": \"La Isabelica sector 2\", \"municipality\": \"Rafael Urdaneta\"}', 1, 1, 2, '2026-01-22 16:03:43', 'rx6NKnwFyYRBNfDWYYqFO5xfJQzqyS61MBdnx6cQ92o5DGZiEpmcX7M82SZz', '2026-01-22 12:51:57', '2026-01-22 16:03:43'),
(56, 'Irma', 'Rios', 'irfelir6858@gmail.com', NULL, NULL, '$2y$12$/s7yRnjRQS294g4iWg5v/.a47Zb1vj/Or8TwdkbGKaBstaIL/0peK', NULL, '5386833', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2026-01-22 13:32:56', '2026-01-22 13:32:56'),
(57, 'Danis', 'Anzola', 'dannyanzola888@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$fcIkqvSp2K7RsKuTFIC4QOOklySJmGgtGcb.1.VXbQuZ6kXNyayBa', '+584243128066', '12335713', 'V', '1974-12-06', 'M', NULL, 1, 1, 2, '2026-01-22 17:07:01', NULL, '2026-01-22 16:16:16', '2026-01-22 17:07:01'),
(58, 'Yelitza', 'Rodríguez', 'k.rcreaciones2025@gmail.com', NULL, NULL, '$2y$12$Aorl1q1FiTkkMIxayoHO4OSk9V5YfNHgwOWlQxVo71hYb2zjRg.qO', NULL, '12524854', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2026-01-23 02:03:35', '2026-01-23 02:03:35'),
(59, 'Yadira', 'Fabrega', 'marketing.digital.uga@gmail.com', NULL, NULL, '$2y$12$sqtbyP6Lm16mJDWnnn5lSuHgrA/4F9/DPUB1KOkjs8qo4.pICCCie', NULL, '13234562', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2026-01-25 18:12:48', '2026-01-25 18:12:48'),
(60, 'Yeisnell', 'Sequera', 'sgyeisnell@gmail.com', NULL, NULL, '$2y$12$dDKQW4OEXqF4XM3PPnss/Olu/JUWWJhi9aleltUdfoGLTTnCc.sXm', NULL, '24294231', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2026-01-27 12:01:19', '2026-01-27 12:01:19'),
(61, 'Victor Leonardo', 'Velasco Sánchez', 'tecnovictor2018@gmail.com', NULL, NULL, '$2y$12$O/cRdbE65Vvi4SUybyh89.vA1iGByKouA6RKsKcZlRzw2JXuuJXLO', NULL, '19443551', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-27 12:03:41', '2026-01-27 12:03:41'),
(62, 'Jose', 'Mayorca', 'mayorcalopezjose@gmail.com', NULL, '{\"tiktok\": null, \"facebook\": null, \"instagram\": null}', '$2y$12$k/epSsWoKRvALtlJZsUSt.hMPSOg0xcbdPIub7UgXNEgPSGqapjU.', '+584144058529', '7075065', 'V', '1963-03-03', 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-27 14:25:46', '2026-01-27 14:31:27'),
(63, 'Clemente', 'Cabrera', 'clementecabrera91@hotmail.com', NULL, NULL, '$2y$12$AsmD6ncoywBQQcRhDv.DkuzN2aBBwvaiJ7eGsCEgGqtZev1BXNDe.', NULL, '7045254', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-27 17:02:43', '2026-01-27 17:02:43'),
(64, 'Eugenio', 'Nava', 'eugenionavam@gmail.com', NULL, NULL, '$2y$12$GTeKKGze9LyyVxLyCkcoBON6CamU8igm.qz86K92f/oZrUX7.Ekpq', NULL, '5845337', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-01-30 12:05:08', '2026-01-30 12:05:08'),
(65, 'Feiberth', 'Perez', 'fjperez1408@gmail.com', NULL, NULL, '$2y$12$Rr7QQwH43vrDSLzlGxb30.qJnkgNfvFkENReRYLUc.XN0SZbY0QXW', NULL, '19011225', 'V', NULL, 'M', NULL, 1, 1, 2, '2026-02-01 01:02:55', NULL, '2026-02-01 00:51:31', '2026-02-01 01:02:55'),
(66, 'Eduardo', 'Natera', 'eduardoramonnatera@gmail.com', NULL, NULL, '$2y$12$JhkFhEJ.Q7L5hv3JQGEEEOZULJN3Kdw8fGvJ8bli9nWuFMSJfRSHy', NULL, '9826766', 'V', NULL, 'M', NULL, 1, 1, 3, NULL, NULL, '2026-02-05 17:06:25', '2026-02-05 17:06:25'),
(67, 'Gloria', 'Escalona', 'gloriaes2005@gmail.com', NULL, NULL, '$2y$12$RDs4Ghj5eEEP3hktn6ZtG.zVp2iA87OIKviM8lcXIzhYBqqA9W/fy', NULL, '7048148', 'V', NULL, 'F', NULL, 1, 1, 3, NULL, NULL, '2026-02-06 00:18:39', '2026-02-06 00:18:39'),
(68, 'Ariangel', 'Galea', 'ariangelochoa367@gmail.com', NULL, NULL, '$2y$12$nXmvEEhedbQc5IMmt31RHuvjU5rUXmxxtGccjbfiXy.dnc2xj3lZS', NULL, '12110105', 'V', NULL, 'F', NULL, 1, 1, 2, '2026-02-08 12:41:53', NULL, '2026-02-08 11:22:28', '2026-02-08 12:41:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workflows`
--

CREATE TABLE `workflows` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `workflows`
--

INSERT INTO `workflows` (`id`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Contrato de publiciadad radial', NULL, 1, '2026-01-11 01:37:13', '2026-01-12 18:23:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indices de la tabla `administration_users`
--
ALTER TABLE `administration_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administration_users_document_unique` (`document`),
  ADD UNIQUE KEY `administration_users_email_unique` (`email`),
  ADD UNIQUE KEY `administration_users_signature_token_unique` (`signature_token`);

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_document_unique` (`document`);

--
-- Indices de la tabla `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agents_document_unique` (`document`),
  ADD KEY `agents_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `appeals`
--
ALTER TABLE `appeals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appeals_clasificado_id_foreign` (`clasificado_id`),
  ADD KEY `appeals_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `banned_users`
--
ALTER TABLE `banned_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banned_users_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `category_clasificado`
--
ALTER TABLE `category_clasificado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_clasificado_clasificado_id_foreign` (`clasificado_id`),
  ADD KEY `category_clasificado_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `celebrations`
--
ALTER TABLE `celebrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `celebrations_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `clasificados`
--
ALTER TABLE `clasificados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clasificados_slug_unique` (`slug`),
  ADD KEY `clasificados_user_id_foreign` (`user_id`),
  ADD KEY `clasificados_plan_id_foreign` (`plan_id`);

--
-- Indices de la tabla `clasificado_photos`
--
ALTER TABLE `clasificado_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clasificado_photos_clasificado_id_foreign` (`clasificado_id`);

--
-- Indices de la tabla `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contracts_contract_id_unique` (`contract_id`),
  ADD KEY `contracts_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `contract_documents`
--
ALTER TABLE `contract_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_documents_contract_id_foreign` (`contract_id`),
  ADD KEY `contract_documents_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `contract_signatures`
--
ALTER TABLE `contract_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_signatures_contract_id_foreign` (`contract_id`),
  ADD KEY `contract_signatures_stage_id_foreign` (`stage_id`),
  ADD KEY `contract_signatures_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `contract_workflow_states`
--
ALTER TABLE `contract_workflow_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_workflow_states_contract_id_foreign` (`contract_id`),
  ADD KEY `contract_workflow_states_current_stage_id_foreign` (`current_stage_id`),
  ADD KEY `contract_workflow_states_workflow_id_foreign` (`workflow_id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lost_documents`
--
ALTER TABLE `lost_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_reference_unique` (`reference`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_source_phone_index` (`source_phone`),
  ADD KEY `payments_document_index` (`document`),
  ADD KEY `payments_clasificado_id_foreign` (`clasificado_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indices de la tabla `rejecteds`
--
ALTER TABLE `rejecteds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rejecteds_clasificado_id_foreign` (`clasificado_id`);

--
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_clasificado_id_foreign` (`clasificado_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stages_workflow_id_foreign` (`workflow_id`),
  ADD KEY `stages_responsible_role_id_foreign` (`responsible_role_id`),
  ADD KEY `stages_responsible_user_id_foreign` (`responsible_user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_document_unique` (`document`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Indices de la tabla `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `administration_users`
--
ALTER TABLE `administration_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `appeals`
--
ALTER TABLE `appeals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `banned_users`
--
ALTER TABLE `banned_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `category_clasificado`
--
ALTER TABLE `category_clasificado`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `celebrations`
--
ALTER TABLE `celebrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clasificados`
--
ALTER TABLE `clasificados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `clasificado_photos`
--
ALTER TABLE `clasificado_photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contract_documents`
--
ALTER TABLE `contract_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `contract_signatures`
--
ALTER TABLE `contract_signatures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `contract_workflow_states`
--
ALTER TABLE `contract_workflow_states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `lost_documents`
--
ALTER TABLE `lost_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=967;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rejecteds`
--
ALTER TABLE `rejecteds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `appeals`
--
ALTER TABLE `appeals`
  ADD CONSTRAINT `appeals_clasificado_id_foreign` FOREIGN KEY (`clasificado_id`) REFERENCES `clasificados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appeals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `banned_users`
--
ALTER TABLE `banned_users`
  ADD CONSTRAINT `banned_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `category_clasificado`
--
ALTER TABLE `category_clasificado`
  ADD CONSTRAINT `category_clasificado_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_clasificado_clasificado_id_foreign` FOREIGN KEY (`clasificado_id`) REFERENCES `clasificados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `celebrations`
--
ALTER TABLE `celebrations`
  ADD CONSTRAINT `celebrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clasificados`
--
ALTER TABLE `clasificados`
  ADD CONSTRAINT `clasificados_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clasificados_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clasificado_photos`
--
ALTER TABLE `clasificado_photos`
  ADD CONSTRAINT `clasificado_photos_clasificado_id_foreign` FOREIGN KEY (`clasificado_id`) REFERENCES `clasificados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Filtros para la tabla `contract_documents`
--
ALTER TABLE `contract_documents`
  ADD CONSTRAINT `contract_documents_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `administration_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `contract_signatures`
--
ALTER TABLE `contract_signatures`
  ADD CONSTRAINT `contract_signatures_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_signatures_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`),
  ADD CONSTRAINT `contract_signatures_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `administration_users` (`id`);

--
-- Filtros para la tabla `contract_workflow_states`
--
ALTER TABLE `contract_workflow_states`
  ADD CONSTRAINT `contract_workflow_states_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_workflow_states_current_stage_id_foreign` FOREIGN KEY (`current_stage_id`) REFERENCES `stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_workflow_states_workflow_id_foreign` FOREIGN KEY (`workflow_id`) REFERENCES `workflows` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_clasificado_id_foreign` FOREIGN KEY (`clasificado_id`) REFERENCES `clasificados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rejecteds`
--
ALTER TABLE `rejecteds`
  ADD CONSTRAINT `rejecteds_clasificado_id_foreign` FOREIGN KEY (`clasificado_id`) REFERENCES `clasificados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_clasificado_id_foreign` FOREIGN KEY (`clasificado_id`) REFERENCES `clasificados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_responsible_role_id_foreign` FOREIGN KEY (`responsible_role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stages_responsible_user_id_foreign` FOREIGN KEY (`responsible_user_id`) REFERENCES `administration_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stages_workflow_id_foreign` FOREIGN KEY (`workflow_id`) REFERENCES `workflows` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
