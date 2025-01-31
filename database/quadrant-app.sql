-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 31-01-2025 a las 22:13:41
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `quadrant-app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8mb4_unicode_ci,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '9ce03685-1865-46cf-84ea-39e59a2a5e42', 1, 'Create', 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, '', 'finished', '', '2024-08-29 00:00:12', '2024-08-29 00:00:12', NULL, '{\"name\":\"Himalia\",\"secondary_name\":\"Torre 4000\",\"updated_at\":\"2024-08-28T18:00:12.000000Z\",\"created_at\":\"2024-08-28T18:00:12.000000Z\",\"id\":1}'),
(2, '9ce03ca4-8442-4477-b177-9382cf0f5e35', 1, 'Create', 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, '', 'finished', '', '2024-08-29 00:17:20', '2024-08-29 00:17:20', NULL, '{\"name\":\"D1\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":1167.46,\"exterior_const\":407.53,\"updated_at\":\"2024-08-28T18:17:20.000000Z\",\"created_at\":\"2024-08-28T18:17:20.000000Z\",\"id\":1}'),
(3, '9ce03d8d-dbba-499a-b225-2cac229f5ec1', 1, 'Update', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '', 'finished', '', '2024-08-29 00:19:53', '2024-08-29 00:19:53', '[]', '[]'),
(4, '9ce04c98-2417-4bcf-8645-6f3ee616d9ee', 1, 'Create', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-08-28 19:01:56', '2024-08-28 19:01:56', NULL, '{\"name\":\"4101\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"9835000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":1,\"interior_const\":\"108.46\",\"exterior_const\":\"37.86\",\"const_total\":\"146.32\",\"updated_at\":\"2024-08-28T19:01:56.000000Z\",\"created_at\":\"2024-08-28T19:01:56.000000Z\",\"id\":1}'),
(5, '9ce05d05-9f6a-4706-b41c-c4d06e21f350', 1, 'Create', 'App\\Models\\UnitType', 2, 'App\\Models\\UnitType', 2, 'App\\Models\\UnitType', 2, '', 'finished', '', '2024-08-28 19:47:52', '2024-08-28 19:47:52', NULL, '{\"name\":\"B\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"95.64\",\"exterior_const\":\"21.40\",\"updated_at\":\"2024-08-28T19:47:52.000000Z\",\"created_at\":\"2024-08-28T19:47:52.000000Z\",\"id\":2}'),
(6, '9ce05d25-a971-4847-bc6d-60e10a35d6de', 1, 'Update', 'App\\Models\\UnitType', 2, 'App\\Models\\UnitType', 2, 'App\\Models\\UnitType', 2, '', 'finished', '', '2024-08-28 19:48:13', '2024-08-28 19:48:13', '{\"bedrooms\":2}', '{\"bedrooms\":\"1\"}'),
(7, '9ce05d2d-04dc-433c-a12f-78e825ed6c26', 1, 'Update', 'App\\Models\\UnitType', 2, 'App\\Models\\UnitType', 2, 'App\\Models\\UnitType', 2, '', 'finished', '', '2024-08-28 19:48:18', '2024-08-28 19:48:18', '{\"bedrooms\":1}', '{\"bedrooms\":\"2\"}'),
(8, '9ce05d5a-77ad-4531-9157-bd1516254339', 1, 'Create', 'App\\Models\\UnitType', 3, 'App\\Models\\UnitType', 3, 'App\\Models\\UnitType', 3, '', 'finished', '', '2024-08-28 19:48:48', '2024-08-28 19:48:48', NULL, '{\"name\":\"C\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"92.84\",\"exterior_const\":\"31.90\",\"updated_at\":\"2024-08-28T19:48:48.000000Z\",\"created_at\":\"2024-08-28T19:48:48.000000Z\",\"id\":3}'),
(9, '9ce05d8b-0fac-4645-b2d5-c5cd7cf3f730', 1, 'Create', 'App\\Models\\UnitType', 4, 'App\\Models\\UnitType', 4, 'App\\Models\\UnitType', 4, '', 'finished', '', '2024-08-28 19:49:20', '2024-08-28 19:49:20', NULL, '{\"name\":\"D\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"108.46\",\"exterior_const\":\"23.63\",\"updated_at\":\"2024-08-28T19:49:20.000000Z\",\"created_at\":\"2024-08-28T19:49:20.000000Z\",\"id\":4}'),
(10, '9ce05daf-a4e7-4f46-8d47-9082fc261898', 1, 'Create', 'App\\Models\\UnitType', 5, 'App\\Models\\UnitType', 5, 'App\\Models\\UnitType', 5, '', 'finished', '', '2024-08-28 19:49:43', '2024-08-28 19:49:43', NULL, '{\"name\":\"D1\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"108.46\",\"exterior_const\":\"37.86\",\"updated_at\":\"2024-08-28T19:49:43.000000Z\",\"created_at\":\"2024-08-28T19:49:43.000000Z\",\"id\":5}'),
(11, '9ce05df7-319c-44f8-a372-b83936586a37', 1, 'Create', 'App\\Models\\UnitType', 6, 'App\\Models\\UnitType', 6, 'App\\Models\\UnitType', 6, '', 'finished', '', '2024-08-28 19:50:30', '2024-08-28 19:50:30', NULL, '{\"name\":\"E\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"91.65\",\"exterior_const\":\"4.91\",\"updated_at\":\"2024-08-28T19:50:30.000000Z\",\"created_at\":\"2024-08-28T19:50:30.000000Z\",\"id\":6}'),
(12, '9ce05e2f-53c4-4724-9bd2-e66e24cf9d7c', 1, 'Create', 'App\\Models\\UnitType', 7, 'App\\Models\\UnitType', 7, 'App\\Models\\UnitType', 7, '', 'finished', '', '2024-08-28 19:51:07', '2024-08-28 19:51:07', NULL, '{\"name\":\"F\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"86.23\",\"exterior_const\":\"9.6\",\"updated_at\":\"2024-08-28T19:51:07.000000Z\",\"created_at\":\"2024-08-28T19:51:07.000000Z\",\"id\":7}'),
(13, '9ce05e60-e02d-4601-9129-6f952ce1482b', 1, 'Create', 'App\\Models\\UnitType', 8, 'App\\Models\\UnitType', 8, 'App\\Models\\UnitType', 8, '', 'finished', '', '2024-08-28 19:51:40', '2024-08-28 19:51:40', NULL, '{\"name\":\"G\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"81.67\",\"exterior_const\":\"21.21\",\"updated_at\":\"2024-08-28T19:51:40.000000Z\",\"created_at\":\"2024-08-28T19:51:40.000000Z\",\"id\":8}'),
(14, '9ce05e87-77f4-4577-8f6b-95a504773525', 1, 'Create', 'App\\Models\\UnitType', 9, 'App\\Models\\UnitType', 9, 'App\\Models\\UnitType', 9, '', 'finished', '', '2024-08-28 19:52:05', '2024-08-28 19:52:05', NULL, '{\"name\":\"H\",\"bedrooms\":\"3\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"112.50\",\"exterior_const\":\"15.89\",\"updated_at\":\"2024-08-28T19:52:05.000000Z\",\"created_at\":\"2024-08-28T19:52:05.000000Z\",\"id\":9}'),
(15, '9ce05ec5-f12c-4098-b6f0-30dbe8cb3485', 1, 'Create', 'App\\Models\\UnitType', 10, 'App\\Models\\UnitType', 10, 'App\\Models\\UnitType', 10, '', 'finished', '', '2024-08-28 19:52:46', '2024-08-28 19:52:46', NULL, '{\"name\":\"I\",\"bedrooms\":\"3\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"111.71\",\"exterior_const\":\"15.89\",\"updated_at\":\"2024-08-28T19:52:46.000000Z\",\"created_at\":\"2024-08-28T19:52:46.000000Z\",\"id\":10}'),
(16, '9ce05ef0-98be-4f35-bc71-28521e7accc0', 1, 'Create', 'App\\Models\\UnitType', 11, 'App\\Models\\UnitType', 11, 'App\\Models\\UnitType', 11, '', 'finished', '', '2024-08-28 19:53:14', '2024-08-28 19:53:14', NULL, '{\"name\":\"J\",\"bedrooms\":\"3\",\"flexrooms\":null,\"bathrooms\":\"3\",\"interior_const\":\"122.48\",\"exterior_const\":\"42.49\",\"updated_at\":\"2024-08-28T19:53:14.000000Z\",\"created_at\":\"2024-08-28T19:53:14.000000Z\",\"id\":11}'),
(17, '9ce05f11-856a-43f2-bd13-c168fbe64c73', 1, 'Create', 'App\\Models\\UnitType', 12, 'App\\Models\\UnitType', 12, 'App\\Models\\UnitType', 12, '', 'finished', '', '2024-08-28 19:53:35', '2024-08-28 19:53:35', NULL, '{\"name\":\"J1\",\"bedrooms\":\"3\",\"flexrooms\":null,\"bathrooms\":\"3\",\"interior_const\":\"122.48\",\"exterior_const\":\"42.49\",\"updated_at\":\"2024-08-28T19:53:35.000000Z\",\"created_at\":\"2024-08-28T19:53:35.000000Z\",\"id\":12}'),
(18, '9ce09125-cc27-4a94-bbff-5c7b1434e9ad', 1, 'Create', 'App\\Models\\Unit', 2, 'App\\Models\\Unit', 2, 'App\\Models\\Unit', 2, '', 'finished', '', '2024-08-28 22:13:37', '2024-08-28 22:13:37', NULL, '{\"name\":\"4102\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"8385000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":3,\"interior_const\":\"92.84\",\"exterior_const\":\"31.9\",\"const_total\":\"124.74\",\"updated_at\":\"2024-08-28T22:13:37.000000Z\",\"created_at\":\"2024-08-28T22:13:37.000000Z\",\"id\":2}'),
(19, '9ce09155-9775-4533-a494-5576b53a6970', 1, 'Create', 'App\\Models\\Unit', 3, 'App\\Models\\Unit', 3, 'App\\Models\\Unit', 3, '', 'finished', '', '2024-08-28 22:14:09', '2024-08-28 22:14:09', NULL, '{\"name\":\"4103\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"7865000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":2,\"interior_const\":\"95.64\",\"exterior_const\":\"21.4\",\"const_total\":\"117.04\",\"updated_at\":\"2024-08-28T22:14:09.000000Z\",\"created_at\":\"2024-08-28T22:14:09.000000Z\",\"id\":3}'),
(20, '9ce092f8-e7ec-4cb0-b2c1-2d44fe429a09', 1, 'Create', 'App\\Models\\Unit', 4, 'App\\Models\\Unit', 4, 'App\\Models\\Unit', 4, '', 'finished', '', '2024-08-28 22:18:43', '2024-08-28 22:18:43', NULL, '{\"name\":\"4104\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":1,\"interior_const\":\"96.61\",\"exterior_const\":\"10.9\",\"const_total\":\"107.51\",\"updated_at\":\"2024-08-28T22:18:43.000000Z\",\"created_at\":\"2024-08-28T22:18:43.000000Z\",\"id\":4}'),
(21, '9ce09342-7dc5-4c8e-b2b9-64e48c865ecd', 1, 'Create', 'App\\Models\\Unit', 5, 'App\\Models\\Unit', 5, 'App\\Models\\Unit', 5, '', 'finished', '', '2024-08-28 22:19:32', '2024-08-28 22:19:32', NULL, '{\"name\":\"4105\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":1,\"interior_const\":\"96.61\",\"exterior_const\":\"10.9\",\"const_total\":\"107.51\",\"updated_at\":\"2024-08-28T22:19:32.000000Z\",\"created_at\":\"2024-08-28T22:19:32.000000Z\",\"id\":5}'),
(22, '9ce09446-7ee1-47cc-b9f7-1425ec456aa1', 1, 'Create', 'App\\Models\\Unit', 6, 'App\\Models\\Unit', 6, 'App\\Models\\Unit', 6, '', 'finished', '', '2024-08-28 22:22:22', '2024-08-28 22:22:22', NULL, '{\"name\":\"4106\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"7865000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":2,\"interior_const\":\"95.64\",\"exterior_const\":\"21.4\",\"const_total\":\"117.04\",\"updated_at\":\"2024-08-28T22:22:22.000000Z\",\"created_at\":\"2024-08-28T22:22:22.000000Z\",\"id\":6}'),
(23, '9ce09479-92e9-43e8-955f-59633fbcf6e0', 1, 'Create', 'App\\Models\\Unit', 7, 'App\\Models\\Unit', 7, 'App\\Models\\Unit', 7, '', 'finished', '', '2024-08-28 22:22:56', '2024-08-28 22:22:56', NULL, '{\"name\":\"4107\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":3,\"interior_const\":\"92.84\",\"exterior_const\":\"31.9\",\"const_total\":\"124.74\",\"updated_at\":\"2024-08-28T22:22:56.000000Z\",\"created_at\":\"2024-08-28T22:22:56.000000Z\",\"id\":7}'),
(24, '9ce094b2-234a-47ad-9640-eeac5812ea62', 1, 'Create', 'App\\Models\\Unit', 8, 'App\\Models\\Unit', 8, 'App\\Models\\Unit', 8, '', 'finished', '', '2024-08-28 22:23:33', '2024-08-28 22:23:33', NULL, '{\"name\":\"4108\",\"tower_id\":1,\"floor\":\"1\",\"price\":\"9835000\",\"currency\":\"MXN\",\"status\":\"Apartada\",\"youtube_link\":null,\"unit_type_id\":5,\"interior_const\":\"108.46\",\"exterior_const\":\"37.86\",\"const_total\":\"146.32\",\"updated_at\":\"2024-08-28T22:23:33.000000Z\",\"created_at\":\"2024-08-28T22:23:33.000000Z\",\"id\":8}'),
(25, '9ce0953b-0bda-4ba2-9e7c-38b9d47c84fb', 1, 'Create', 'App\\Models\\Unit', 9, 'App\\Models\\Unit', 9, 'App\\Models\\Unit', 9, '', 'finished', '', '2024-08-28 22:25:02', '2024-08-28 22:25:02', NULL, '{\"name\":\"4201\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"9015000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":4,\"interior_const\":\"108.46\",\"exterior_const\":\"23.63\",\"const_total\":\"132.09\",\"updated_at\":\"2024-08-28T22:25:02.000000Z\",\"created_at\":\"2024-08-28T22:25:02.000000Z\",\"id\":9}'),
(26, '9ce0958d-b516-46eb-8155-64974fc44e2d', 1, 'Create', 'App\\Models\\Unit', 10, 'App\\Models\\Unit', 10, 'App\\Models\\Unit', 10, '', 'finished', '', '2024-08-28 22:25:56', '2024-08-28 22:25:56', NULL, '{\"name\":\"4202\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"7025000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":8,\"interior_const\":\"81.67\",\"exterior_const\":\"21.21\",\"const_total\":\"102.88\",\"updated_at\":\"2024-08-28T22:25:56.000000Z\",\"created_at\":\"2024-08-28T22:25:56.000000Z\",\"id\":10}'),
(27, '9ce095b0-64de-4d0a-bc54-c49107f4ec8f', 1, 'Create', 'App\\Models\\Unit', 11, 'App\\Models\\Unit', 11, 'App\\Models\\Unit', 11, '', 'finished', '', '2024-08-28 22:26:19', '2024-08-28 22:26:19', NULL, '{\"name\":\"4203\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":7,\"interior_const\":\"86.23\",\"exterior_const\":\"9.6\",\"const_total\":\"95.83\",\"updated_at\":\"2024-08-28T22:26:19.000000Z\",\"created_at\":\"2024-08-28T22:26:19.000000Z\",\"id\":11}'),
(28, '9ce09859-047f-4174-aadb-401faef1b66c', 1, 'Create', 'App\\Models\\Unit', 12, 'App\\Models\\Unit', 12, 'App\\Models\\Unit', 12, '', 'finished', '', '2024-08-28 22:33:45', '2024-08-28 22:33:45', NULL, '{\"name\":\"4204\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"6590000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":6,\"interior_const\":\"91.65\",\"exterior_const\":\"4.91\",\"const_total\":\"96.56\",\"updated_at\":\"2024-08-28T22:33:45.000000Z\",\"created_at\":\"2024-08-28T22:33:45.000000Z\",\"id\":12}'),
(29, '9ce098ca-4a12-4822-babc-c2db7e2e16e1', 1, 'Create', 'App\\Models\\Unit', 13, 'App\\Models\\Unit', 13, 'App\\Models\\Unit', 13, '', 'finished', '', '2024-08-28 22:35:00', '2024-08-28 22:35:00', NULL, '{\"name\":\"4205\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":6,\"interior_const\":\"91.65\",\"exterior_const\":\"4.91\",\"const_total\":\"96.56\",\"updated_at\":\"2024-08-28T22:35:00.000000Z\",\"created_at\":\"2024-08-28T22:35:00.000000Z\",\"id\":13}'),
(30, '9ce0992c-33fc-46f7-9eee-e114fcb98a43', 1, 'Create', 'App\\Models\\Unit', 14, 'App\\Models\\Unit', 14, 'App\\Models\\Unit', 14, '', 'finished', '', '2024-08-28 22:36:04', '2024-08-28 22:36:04', NULL, '{\"name\":\"4206\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"6645000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":7,\"interior_const\":\"86.23\",\"exterior_const\":\"9.6\",\"const_total\":\"95.83\",\"updated_at\":\"2024-08-28T22:36:04.000000Z\",\"created_at\":\"2024-08-28T22:36:04.000000Z\",\"id\":14}'),
(31, '9ce09964-ee39-4c48-840b-55d84f43c64a', 1, 'Create', 'App\\Models\\Unit', 15, 'App\\Models\\Unit', 15, 'App\\Models\\Unit', 15, '', 'finished', '', '2024-08-28 22:36:41', '2024-08-28 22:36:41', NULL, '{\"name\":\"4207\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":3,\"interior_const\":\"92.84\",\"exterior_const\":\"31.9\",\"const_total\":\"124.74\",\"updated_at\":\"2024-08-28T22:36:41.000000Z\",\"created_at\":\"2024-08-28T22:36:41.000000Z\",\"id\":15}'),
(32, '9ce099b1-f6b6-49f8-a65e-dfda22a9eb59', 1, 'Create', 'App\\Models\\Unit', 16, 'App\\Models\\Unit', 16, 'App\\Models\\Unit', 16, '', 'finished', '', '2024-08-28 22:37:31', '2024-08-28 22:37:31', NULL, '{\"name\":\"4208\",\"tower_id\":1,\"floor\":\"2\",\"price\":\"9015000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":4,\"interior_const\":\"108.46\",\"exterior_const\":\"23.63\",\"const_total\":\"132.09\",\"updated_at\":\"2024-08-28T22:37:31.000000Z\",\"created_at\":\"2024-08-28T22:37:31.000000Z\",\"id\":16}'),
(33, '9cea2298-527d-48ba-aa88-f943ebc4be32', 1, 'Create', 'App\\Models\\Unit', 17, 'App\\Models\\Unit', 17, 'App\\Models\\Unit', 17, '', 'finished', '', '2024-09-02 16:22:46', '2024-09-02 16:22:46', NULL, '{\"name\":\"4301\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"9155000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":4,\"interior_const\":\"108.46\",\"exterior_const\":\"23.63\",\"const_total\":\"132.09\",\"updated_at\":\"2024-09-02T16:22:46.000000Z\",\"created_at\":\"2024-09-02T16:22:46.000000Z\",\"id\":17}'),
(34, '9cea22bd-2201-4170-b62c-0cd8f7948890', 1, 'Create', 'App\\Models\\Unit', 18, 'App\\Models\\Unit', 18, 'App\\Models\\Unit', 18, '', 'finished', '', '2024-09-02 16:23:11', '2024-09-02 16:23:11', NULL, '{\"name\":\"4302\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"7130000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":8,\"interior_const\":\"81.67\",\"exterior_const\":\"21.21\",\"const_total\":\"102.88\",\"updated_at\":\"2024-09-02T16:23:11.000000Z\",\"created_at\":\"2024-09-02T16:23:11.000000Z\",\"id\":18}'),
(35, '9cea23dc-3568-4aa4-b0ac-081e4046cbac', 1, 'Create', 'App\\Models\\Unit', 19, 'App\\Models\\Unit', 19, 'App\\Models\\Unit', 19, '', 'finished', '', '2024-09-02 16:26:19', '2024-09-02 16:26:19', NULL, '{\"name\":\"4303\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":7,\"interior_const\":\"86.23\",\"exterior_const\":\"9.6\",\"const_total\":\"95.83\",\"updated_at\":\"2024-09-02T16:26:19.000000Z\",\"created_at\":\"2024-09-02T16:26:19.000000Z\",\"id\":19}'),
(36, '9cea242b-479f-4170-8b61-875f91ad2285', 1, 'Create', 'App\\Models\\Unit', 20, 'App\\Models\\Unit', 20, 'App\\Models\\Unit', 20, '', 'finished', '', '2024-09-02 16:27:10', '2024-09-02 16:27:10', NULL, '{\"name\":\"4304\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"6695000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":6,\"interior_const\":\"91.65\",\"exterior_const\":\"4.91\",\"const_total\":\"96.56\",\"updated_at\":\"2024-09-02T16:27:10.000000Z\",\"created_at\":\"2024-09-02T16:27:10.000000Z\",\"id\":20}'),
(37, '9cea2457-45a8-48f3-b227-86a23518d246', 1, 'Create', 'App\\Models\\Unit', 21, 'App\\Models\\Unit', 21, 'App\\Models\\Unit', 21, '', 'finished', '', '2024-09-02 16:27:39', '2024-09-02 16:27:39', NULL, '{\"name\":\"4305\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":6,\"interior_const\":\"91.65\",\"exterior_const\":\"4.91\",\"const_total\":\"96.56\",\"updated_at\":\"2024-09-02T16:27:39.000000Z\",\"created_at\":\"2024-09-02T16:27:39.000000Z\",\"id\":21}'),
(38, '9cea249a-336a-4359-92bc-446e28e12011', 1, 'Create', 'App\\Models\\Unit', 22, 'App\\Models\\Unit', 22, 'App\\Models\\Unit', 22, '', 'finished', '', '2024-09-02 16:28:23', '2024-09-02 16:28:23', NULL, '{\"name\":\"4306\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":7,\"interior_const\":\"86.23\",\"exterior_const\":\"9.6\",\"const_total\":\"95.83\",\"updated_at\":\"2024-09-02T16:28:23.000000Z\",\"created_at\":\"2024-09-02T16:28:23.000000Z\",\"id\":22}'),
(39, '9cea24fd-ce2e-4f58-b125-44d0be685f90', 1, 'Create', 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, '', 'finished', '', '2024-09-02 16:29:28', '2024-09-02 16:29:28', NULL, '{\"name\":\"4307\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":8,\"interior_const\":\"81.67\",\"exterior_const\":\"21.21\",\"const_total\":\"102.88\",\"updated_at\":\"2024-09-02T16:29:28.000000Z\",\"created_at\":\"2024-09-02T16:29:28.000000Z\",\"id\":23}'),
(40, '9cea2514-c18b-46e5-935a-798968757cc8', 1, 'Create', 'App\\Models\\Unit', 24, 'App\\Models\\Unit', 24, 'App\\Models\\Unit', 24, '', 'finished', '', '2024-09-02 16:29:43', '2024-09-02 16:29:43', NULL, '{\"name\":\"4308\",\"tower_id\":1,\"floor\":\"3\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":4,\"interior_const\":\"108.46\",\"exterior_const\":\"23.63\",\"const_total\":\"132.09\",\"updated_at\":\"2024-09-02T16:29:43.000000Z\",\"created_at\":\"2024-09-02T16:29:43.000000Z\",\"id\":24}'),
(41, '9cea2524-2c96-4f47-8ec6-fe1079d85a00', 1, 'Update', 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, '', 'finished', '', '2024-09-02 16:29:54', '2024-09-02 16:29:54', '{\"status\":\"Disponible\"}', '{\"status\":\"Vendida\"}'),
(42, '9cea281d-a9a1-4833-9fcc-cf7df67a6e92', 1, 'Create', 'App\\Models\\Unit', 25, 'App\\Models\\Unit', 25, 'App\\Models\\Unit', 25, '', 'finished', '', '2024-09-02 16:38:13', '2024-09-02 16:38:13', NULL, '{\"name\":\"4401\",\"tower_id\":1,\"floor\":\"4\",\"price\":\"12330000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":12,\"interior_const\":\"141.4\",\"exterior_const\":\"33.83\",\"const_total\":\"175.23\",\"updated_at\":\"2024-09-02T16:38:13.000000Z\",\"created_at\":\"2024-09-02T16:38:13.000000Z\",\"id\":25}'),
(43, '9cea283e-a7a0-410f-b0e0-f5e38d9e03b1', 1, 'Create', 'App\\Models\\Unit', 26, 'App\\Models\\Unit', 26, 'App\\Models\\Unit', 26, '', 'finished', '', '2024-09-02 16:38:34', '2024-09-02 16:38:34', NULL, '{\"name\":\"4402\",\"tower_id\":1,\"floor\":\"4\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":10,\"interior_const\":\"111.71\",\"exterior_const\":\"15.89\",\"const_total\":\"127.6\",\"updated_at\":\"2024-09-02T16:38:34.000000Z\",\"created_at\":\"2024-09-02T16:38:34.000000Z\",\"id\":26}'),
(44, '9cea28b8-251d-48b4-95d5-eb887d819fdf', 1, 'Create', 'App\\Models\\Unit', 27, 'App\\Models\\Unit', 27, 'App\\Models\\Unit', 27, '', 'finished', '', '2024-09-02 16:39:54', '2024-09-02 16:39:54', NULL, '{\"name\":\"4403\",\"tower_id\":1,\"floor\":\"4\",\"price\":\"9035000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":9,\"interior_const\":\"112.5\",\"exterior_const\":\"15.89\",\"const_total\":\"128.39\",\"updated_at\":\"2024-09-02T16:39:54.000000Z\",\"created_at\":\"2024-09-02T16:39:54.000000Z\",\"id\":27}'),
(45, '9cea28de-0d7b-436e-9458-4705905da54f', 1, 'Create', 'App\\Models\\Unit', 28, 'App\\Models\\Unit', 28, 'App\\Models\\Unit', 28, '', 'finished', '', '2024-09-02 16:40:19', '2024-09-02 16:40:19', NULL, '{\"name\":\"4404\",\"tower_id\":1,\"floor\":\"4\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":9,\"interior_const\":\"112.5\",\"exterior_const\":\"15.89\",\"const_total\":\"128.39\",\"updated_at\":\"2024-09-02T16:40:19.000000Z\",\"created_at\":\"2024-09-02T16:40:19.000000Z\",\"id\":28}'),
(46, '9cea2909-2601-4424-8c24-ca7354ef8d90', 1, 'Create', 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, '', 'finished', '', '2024-09-02 16:40:47', '2024-09-02 16:40:47', NULL, '{\"name\":\"4405\",\"tower_id\":1,\"floor\":\"4\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":9,\"interior_const\":\"112.5\",\"exterior_const\":\"15.89\",\"const_total\":\"128.39\",\"updated_at\":\"2024-09-02T16:40:47.000000Z\",\"created_at\":\"2024-09-02T16:40:47.000000Z\",\"id\":29}'),
(47, '9cea293f-a6f9-4106-bab1-c3b816ca6705', 1, 'Create', 'App\\Models\\Unit', 30, 'App\\Models\\Unit', 30, 'App\\Models\\Unit', 30, '', 'finished', '', '2024-09-02 16:41:23', '2024-09-02 16:41:23', NULL, '{\"name\":\"4406\",\"tower_id\":1,\"floor\":\"4\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":12,\"interior_const\":\"141.4\",\"exterior_const\":\"33.83\",\"const_total\":\"175.23\",\"updated_at\":\"2024-09-02T16:41:23.000000Z\",\"created_at\":\"2024-09-02T16:41:23.000000Z\",\"id\":30}'),
(48, '9cea296e-b0d1-42a3-a30f-20098376046d', 1, 'Create', 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, '', 'finished', '', '2024-09-02 16:41:54', '2024-09-02 16:41:54', NULL, '{\"name\":\"4501\",\"tower_id\":1,\"floor\":\"5\",\"price\":\"12475000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":12,\"interior_const\":\"122.48\",\"exterior_const\":\"42.49\",\"const_total\":\"164.97\",\"updated_at\":\"2024-09-02T16:41:54.000000Z\",\"created_at\":\"2024-09-02T16:41:54.000000Z\",\"id\":31}'),
(49, '9cea29aa-fcd4-4233-af12-132508921bd7', 1, 'Create', 'App\\Models\\Unit', 32, 'App\\Models\\Unit', 32, 'App\\Models\\Unit', 32, '', 'finished', '', '2024-09-02 16:42:33', '2024-09-02 16:42:33', NULL, '{\"name\":\"4502\",\"tower_id\":1,\"floor\":\"5\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":10,\"interior_const\":\"111.71\",\"exterior_const\":\"15.89\",\"const_total\":\"127.6\",\"updated_at\":\"2024-09-02T16:42:33.000000Z\",\"created_at\":\"2024-09-02T16:42:33.000000Z\",\"id\":32}'),
(50, '9cea29d2-a73b-483a-af79-91f545b41fcb', 1, 'Create', 'App\\Models\\Unit', 33, 'App\\Models\\Unit', 33, 'App\\Models\\Unit', 33, '', 'finished', '', '2024-09-02 16:42:59', '2024-09-02 16:42:59', NULL, '{\"name\":\"4503\",\"tower_id\":1,\"floor\":\"5\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":9,\"interior_const\":\"112.5\",\"exterior_const\":\"15.89\",\"const_total\":\"128.39\",\"updated_at\":\"2024-09-02T16:42:59.000000Z\",\"created_at\":\"2024-09-02T16:42:59.000000Z\",\"id\":33}'),
(51, '9cea29f8-4b25-47f1-856a-9e6dc9456775', 1, 'Create', 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, '', 'finished', '', '2024-09-02 16:43:24', '2024-09-02 16:43:24', NULL, '{\"name\":\"4504\",\"tower_id\":1,\"floor\":\"5\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":9,\"interior_const\":\"112.5\",\"exterior_const\":\"15.89\",\"const_total\":\"128.39\",\"updated_at\":\"2024-09-02T16:43:24.000000Z\",\"created_at\":\"2024-09-02T16:43:24.000000Z\",\"id\":34}'),
(52, '9cea2a15-4569-49a9-b7d2-fc6a44bd1a8f', 1, 'Update', 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, '', 'finished', '', '2024-09-02 16:43:43', '2024-09-02 16:43:43', '{\"status\":\"Disponible\"}', '{\"status\":\"Vendida\"}'),
(53, '9cea2a3c-cb81-4687-9ca7-9a611b685b5d', 1, 'Update', 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, '', 'finished', '', '2024-09-02 16:44:09', '2024-09-02 16:44:09', '{\"status\":\"Disponible\"}', '{\"status\":\"Vendida\"}'),
(54, '9cea2a6e-5aaf-4629-beb7-eda07f9d45a5', 1, 'Create', 'App\\Models\\Unit', 35, 'App\\Models\\Unit', 35, 'App\\Models\\Unit', 35, '', 'finished', '', '2024-09-02 16:44:41', '2024-09-02 16:44:41', NULL, '{\"name\":\"4505\",\"tower_id\":1,\"floor\":\"5\",\"price\":\"9110000\",\"currency\":\"MXN\",\"status\":\"Apartada\",\"youtube_link\":null,\"unit_type_id\":10,\"interior_const\":\"111.71\",\"exterior_const\":\"15.89\",\"const_total\":\"127.6\",\"updated_at\":\"2024-09-02T16:44:41.000000Z\",\"created_at\":\"2024-09-02T16:44:41.000000Z\",\"id\":35}'),
(55, '9cea2a9b-3338-46b2-ac4c-c9fe14143d5c', 1, 'Create', 'App\\Models\\Unit', 36, 'App\\Models\\Unit', 36, 'App\\Models\\Unit', 36, '', 'finished', '', '2024-09-02 16:45:10', '2024-09-02 16:45:10', NULL, '{\"name\":\"4506\",\"tower_id\":1,\"floor\":\"5\",\"price\":\"0\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":11,\"interior_const\":\"122.48\",\"exterior_const\":\"42.49\",\"const_total\":\"164.97\",\"updated_at\":\"2024-09-02T16:45:10.000000Z\",\"created_at\":\"2024-09-02T16:45:10.000000Z\",\"id\":36}'),
(56, '9d00b336-c9e3-4c7d-a13d-160eb0437b57', 1, 'Update', 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, '', 'finished', '', '2024-09-13 21:35:22', '2024-09-13 21:35:22', '[]', '[]'),
(57, '9d00b4f8-fc15-4d74-b40c-29d68ba79087', 1, 'Update', 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, '', 'finished', '', '2024-09-13 21:40:17', '2024-09-13 21:40:17', '[]', '[]'),
(58, '9d0a9a49-0c00-451e-aaf7-7381de00c893', 1, 'Create', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-09-18 19:43:57', '2024-09-18 19:43:57', NULL, '{\"unit_id\":1,\"points\":\"100.53 449.24 172.37 452.8 172.37 376.14 100.53 376.14 100.53 449.24\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T19:43:57.000000Z\",\"created_at\":\"2024-09-18T19:43:57.000000Z\",\"id\":1}'),
(59, '9d0a9dac-1e42-4710-8647-8bff81d3752b', 1, 'Create', 'App\\Models\\Shape', 2, 'App\\Models\\Shape', 2, 'App\\Models\\Shape', 2, '', 'finished', '', '2024-09-18 19:53:25', '2024-09-18 19:53:25', NULL, '{\"unit_id\":2,\"points\":\"172.37 376.14 266.05 379.46 266.05 459.45 172.37 452.8 172.37 376.14\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T19:53:25.000000Z\",\"created_at\":\"2024-09-18T19:53:25.000000Z\",\"id\":2}'),
(60, '9d0abb8b-ee22-48b0-9491-7010d099ae07', 1, 'Create', 'App\\Models\\Shape', 3, 'App\\Models\\Shape', 3, 'App\\Models\\Shape', 3, '', 'finished', '', '2024-09-18 21:16:57', '2024-09-18 21:16:57', NULL, '{\"unit_id\":3,\"points\":\"408.94 463.21 408.94 380.61 266.05 379.42 266.05 459.41 408.94 463.21\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T21:16:57.000000Z\",\"created_at\":\"2024-09-18T21:16:57.000000Z\",\"id\":3}'),
(61, '9d0ac6dd-64c9-48c2-8b99-77aafc267759', 1, 'Create', 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, '', 'finished', '', '2024-09-18 21:48:36', '2024-09-18 21:48:36', NULL, '{\"unit_id\":6,\"points\":\"572.71 466.7 572.71 386.22 741 392.88 741 470.37 572.71 466.7\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T21:48:36.000000Z\",\"created_at\":\"2024-09-18T21:48:36.000000Z\",\"id\":4}'),
(62, '9d0ac828-5ad5-46dc-8d6a-42873a74a01c', 1, 'Create', 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, '', 'finished', '', '2024-09-18 21:52:13', '2024-09-18 21:52:13', NULL, '{\"unit_id\":9,\"points\":\"100.53 376.14 172.37 373.14 172.37 327 100.53 327 100.53 376.14\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T21:52:13.000000Z\",\"created_at\":\"2024-09-18T21:52:13.000000Z\",\"id\":5}'),
(63, '9d0ac917-a615-4835-8892-7912ef88a463', 1, 'Update', 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, '', 'finished', '', '2024-09-18 21:54:50', '2024-09-18 21:54:50', '{\"points\":\"100.53 376.14 172.37 373.14 172.37 327 100.53 327 100.53 376.14\"}', '{\"points\":\"100.53 376.14 172.37 376.14 172.37 327 100.53 327 100.53 376.14\"}'),
(64, '9d0ac97b-acbe-404a-89b8-f664203b7121', 1, 'Create', 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, '', 'finished', '', '2024-09-18 21:55:55', '2024-09-18 21:55:55', NULL, '{\"unit_id\":10,\"points\":\"172.37 327 266.05 327 266.05 373.42 172.37 373.14 172.37 327\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T21:55:55.000000Z\",\"created_at\":\"2024-09-18T21:55:55.000000Z\",\"id\":6}'),
(65, '9d0aca51-de91-456f-89c4-5f4cd7b3ac60', 1, 'Create', 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, '', 'finished', '', '2024-09-18 21:58:15', '2024-09-18 21:58:15', NULL, '{\"unit_id\":12,\"points\":\"408.94 327 487.03 329 487.03 380.61 408.94 380.61 408.94 327\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T21:58:15.000000Z\",\"created_at\":\"2024-09-18T21:58:15.000000Z\",\"id\":7}'),
(66, '9d0acaad-d8fd-4b60-81d1-7158fc4754b9', 1, 'Update', 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, '', 'finished', '', '2024-09-18 21:59:16', '2024-09-18 21:59:16', '{\"points\":\"408.94 327 487.03 329 487.03 380.61 408.94 380.61 408.94 327\"}', '{\"points\":\"408.94 327 487.03 327 487.03 380.61 408.94 380.61 408.94 327\"}'),
(67, '9d0acac9-523c-43d0-861e-fc708c747522', 1, 'Update', 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, '', 'finished', '', '2024-09-18 21:59:34', '2024-09-18 21:59:34', '[]', '[]'),
(68, '9d0acb3b-acd6-4e98-a7ab-478a3d46b36a', 1, 'Create', 'App\\Models\\Shape', 8, 'App\\Models\\Shape', 8, 'App\\Models\\Shape', 8, '', 'finished', '', '2024-09-18 22:00:49', '2024-09-18 22:00:49', NULL, '{\"unit_id\":14,\"points\":\"572.71 386.22 572.71 327.84 741 327.84 741 386.88 572.71 386.22\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:00:49.000000Z\",\"created_at\":\"2024-09-18T22:00:49.000000Z\",\"id\":8}'),
(69, '9d0acbc8-e88c-4911-9454-cb5acea8958f', 1, 'Create', 'App\\Models\\Shape', 9, 'App\\Models\\Shape', 9, 'App\\Models\\Shape', 9, '', 'finished', '', '2024-09-18 22:02:21', '2024-09-18 22:02:21', NULL, '{\"unit_id\":16,\"points\":\"912.93 394.99 912.93 328.84 1008.5 328.84 1008.5 392.87 912.93 392.99\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:02:21.000000Z\",\"created_at\":\"2024-09-18T22:02:21.000000Z\",\"id\":9}'),
(70, '9d0acd18-1535-4545-a377-f588f9d8d3ae', 1, 'Create', 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, '', 'finished', '', '2024-09-18 22:06:01', '2024-09-18 22:06:01', NULL, '{\"unit_id\":17,\"points\":\"100.53 327 172.37 327 172.37 276.4 100.53 276.4 100.53 327\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:06:01.000000Z\",\"created_at\":\"2024-09-18T22:06:01.000000Z\",\"id\":10}'),
(71, '9d0acd8b-a34d-4dca-afdd-a667947f699d', 1, 'Create', 'App\\Models\\Shape', 11, 'App\\Models\\Shape', 11, 'App\\Models\\Shape', 11, '', 'finished', '', '2024-09-18 22:07:17', '2024-09-18 22:07:17', NULL, '{\"unit_id\":18,\"points\":\"172.37 276.4 266.05 276.4 266.05 327 172.37 327 172.37 276.4\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:07:17.000000Z\",\"created_at\":\"2024-09-18T22:07:17.000000Z\",\"id\":11}'),
(72, '9d0ace44-deca-42d8-8e22-ade5a716eb93', 1, 'Create', 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, '', 'finished', '', '2024-09-18 22:09:18', '2024-09-18 22:09:18', NULL, '{\"unit_id\":20,\"points\":\"408.94 268.51 487.03 268.51 487.03 329 408.94 329 408.94 268.51\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:09:18.000000Z\",\"created_at\":\"2024-09-18T22:09:18.000000Z\",\"id\":12}'),
(73, '9d0ad239-6c84-475f-8542-49a7101b6784', 1, 'Create', 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, '', 'finished', '', '2024-09-18 22:20:22', '2024-09-18 22:20:22', NULL, '{\"unit_id\":25,\"points\":\"100.53 276.4 172.37 276.4 208.73 276.24 208.73 216.85 100.53 216.87 100.53 276.4\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:20:22.000000Z\",\"created_at\":\"2024-09-18T22:20:22.000000Z\",\"id\":13}'),
(74, '9d0ad290-d3a9-4f89-8dba-8d55dc714976', 1, 'Create', 'App\\Models\\Shape', 14, 'App\\Models\\Shape', 14, 'App\\Models\\Shape', 14, '', 'finished', '', '2024-09-18 22:21:19', '2024-09-18 22:21:19', NULL, '{\"unit_id\":27,\"points\":\"332.51 270.51 487.03 270.51 487.03 210.21 332.56 210.27 332.51 270.51\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:21:19.000000Z\",\"created_at\":\"2024-09-18T22:21:19.000000Z\",\"id\":14}'),
(75, '9d0ad2e4-3b74-411d-ad33-ea029b4254e1', 1, 'Create', 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, '', 'finished', '', '2024-09-18 22:22:14', '2024-09-18 22:22:14', NULL, '{\"unit_id\":31,\"points\":\"100.53 216.87 208.73 216.85 208.73 155.1 100.53 156.9 100.53 216.87\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:22:14.000000Z\",\"created_at\":\"2024-09-18T22:22:14.000000Z\",\"id\":15}'),
(76, '9d0ad38e-bfef-43b7-9e9e-0ca73423e486', 1, 'Create', 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, '', 'finished', '', '2024-09-18 22:24:05', '2024-09-18 22:24:05', NULL, '{\"unit_id\":35,\"points\":\"572.71 201.05 741 198.45 741 128.57 572.71 128.54 572.71 201.05\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:24:05.000000Z\",\"created_at\":\"2024-09-18T22:24:05.000000Z\",\"id\":16}'),
(77, '9d0ad3c4-2df3-4627-926e-69eefde9d99b', 1, 'Update', 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, '', 'finished', '', '2024-09-18 22:24:40', '2024-09-18 22:24:40', '{\"points\":\"572.71 201.05 741 198.45 741 128.57 572.71 128.54 572.71 201.05\"}', '{\"points\":\"572.71 201.05 741 198.45 741 128.57 572.71 137.54 572.71 201.05\"}'),
(78, '9d0ad406-5460-4688-a762-62ca230868fe', 1, 'Create', 'App\\Models\\Shape', 17, 'App\\Models\\Shape', 17, 'App\\Models\\Shape', 17, '', 'finished', '', '2024-09-18 22:25:24', '2024-09-18 22:25:24', NULL, '{\"unit_id\":8,\"points\":\"912.93 463.54 912.93 394.99 1008.5 392.87 1008.5 467.2 912.93 463.54\",\"text_x\":null,\"text_y\":null,\"updated_at\":\"2024-09-18T22:25:24.000000Z\",\"created_at\":\"2024-09-18T22:25:24.000000Z\",\"id\":17}'),
(79, '9d0ada6e-7137-4dc2-aa92-d39d7a823691', 1, 'Update', 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, '', 'finished', '', '2024-09-18 22:43:19', '2024-09-18 22:43:19', '[]', '[]'),
(80, '9d0ada6e-73d2-4fa3-b41d-ea202e291f38', 1, 'Update', 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, '', 'finished', '', '2024-09-18 22:43:19', '2024-09-18 22:43:19', '{\"status\":\"Disponible\"}', '{\"status\":\"Apartada\"}'),
(81, '9d168162-7574-420e-a02f-d1c551d7d510', 1, 'Create', 'App\\Models\\ConstructionUpdate', 1, 'App\\Models\\ConstructionUpdate', 1, 'App\\Models\\ConstructionUpdate', 1, '', 'finished', '', '2024-09-24 17:44:15', '2024-09-24 17:44:15', NULL, '{\"date\":\"2024-09-11T06:00:00.000000Z\",\"description\":null,\"description_en\":null,\"portrait_path\":\"RKH0MfOc9DxlVDwyQ9D5wJspPY5FlGk8eCPjKxXT.webp\",\"video_link\":\"https:\\/\\/www.youtube.com\\/watch?v=IgsrOHw-jkc&ab_channel=DomusVallarta\",\"updated_at\":\"2024-09-24T17:44:15.000000Z\",\"created_at\":\"2024-09-24T17:44:15.000000Z\",\"id\":1}'),
(82, '9d42a53b-942a-46d3-971f-b415b14937d9', 1, 'Update', 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, '', 'finished', '', '2024-10-16 16:20:55', '2024-10-16 16:20:55', '{\"tower_path\":null}', '{\"tower_path\":\"hGSFyE2uvpHqKCuAsUN1Fx1ibcACou1HMiIuY66e.webp\"}'),
(84, '9d42a97b-8a91-4359-993d-b8549cfeb50f', 1, 'Update', 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, '', 'finished', '', '2024-10-16 16:32:48', '2024-10-16 16:32:48', '{\"slug\":\"\"}', '{\"slug\":\"himalia\"}'),
(85, '9d42d261-2aab-4ad1-8ac8-fab6b827fa19', 1, 'Update', 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, '', 'finished', '', '2024-10-16 18:27:09', '2024-10-16 18:27:09', '{\"tower_path\":\"hGSFyE2uvpHqKCuAsUN1Fx1ibcACou1HMiIuY66e.webp\"}', '{\"tower_path\":\"M73cOms9BPIhD2STU5ZwkeaT4p0do3SINrSFB0Xb.png\"}'),
(86, '9d42d6b1-8733-4e98-aeb2-c3f4496c4030', 1, 'Update', 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, '', 'finished', '', '2024-10-16 18:39:13', '2024-10-16 18:39:13', '{\"viewbox\":null}', '{\"viewbox\":\"0 0 1102 1920\"}'),
(87, '9d42d8d8-b34b-4808-9ee8-a33e9ea101ef', 1, 'Update', 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, 'App\\Models\\Tower', 1, '', 'finished', '', '2024-10-16 18:45:14', '2024-10-16 18:45:14', '{\"viewbox\":\"0 0 1102 1920\"}', '{\"viewbox\":\"0 0 1075 1920\"}'),
(88, '9d42dfe3-de14-4269-ab91-fa93ccd78407', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-10-16 19:04:56', '2024-10-16 19:04:56', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"107.3\",\"text_y\":\"419.4\"}'),
(89, '9d42e0db-146c-4e33-9078-305768965a48', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-10-16 19:07:38', '2024-10-16 19:07:38', '{\"text_x\":107.3,\"text_y\":419.4}', '{\"text_x\":\"114\",\"text_y\":\"425\"}'),
(90, '9d42e1c1-708a-405e-b526-72652cd343bc', 1, 'Update', 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, '', 'finished', '', '2024-10-16 19:10:09', '2024-10-16 19:10:09', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"114\",\"text_y\":\"365\"}'),
(91, '9d42e326-832d-430a-b5ba-70b0abd9f071', 1, 'Update', 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, 'App\\Models\\Shape', 5, '', 'finished', '', '2024-10-16 19:14:03', '2024-10-16 19:14:03', '{\"text_x\":114,\"text_y\":365}', '{\"text_x\":\"112\",\"text_y\":\"360\"}'),
(92, '9d42e4b8-a60e-4d14-905b-14a91226a70d', 1, 'Update', 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, '', 'finished', '', '2024-10-16 19:18:27', '2024-10-16 19:18:27', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"110\",\"text_y\":\"308\"}'),
(93, '9d42e4ca-1c97-4d73-b507-835c4ae4eea9', 1, 'Update', 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, '', 'finished', '', '2024-10-16 19:18:38', '2024-10-16 19:18:38', '[]', '[]'),
(94, '9d42e4d3-7e1e-4155-95e1-c56447a5e2fb', 1, 'Update', 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, '', 'finished', '', '2024-10-16 19:18:44', '2024-10-16 19:18:44', '{\"text_x\":110,\"text_y\":308}', '{\"text_x\":\"112\",\"text_y\":\"310\"}'),
(95, '9d42e4f7-4dc2-4b04-92e2-7146dfb673d4', 1, 'Update', 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, 'App\\Models\\Shape', 10, '', 'finished', '', '2024-10-16 19:19:08', '2024-10-16 19:19:08', '[]', '[]'),
(96, '9d42e514-3052-4b8e-82a6-7a365c67a184', 1, 'Update', 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, '', 'finished', '', '2024-10-16 19:19:27', '2024-10-16 19:19:27', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"125\",\"text_y\":\"252\"}'),
(97, '9d42e52b-00c4-46b1-885b-773b6c86701b', 1, 'Update', 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, '', 'finished', '', '2024-10-16 19:19:42', '2024-10-16 19:19:42', '{\"text_x\":125,\"text_y\":252}', '{\"text_x\":\"130\",\"text_y\":\"257\"}'),
(98, '9d42e53f-c577-400e-8b65-ed790e40470a', 1, 'Update', 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, 'App\\Models\\Shape', 13, '', 'finished', '', '2024-10-16 19:19:55', '2024-10-16 19:19:55', '{\"text_y\":257}', '{\"text_y\":\"255\"}'),
(99, '9d42e594-919c-4bd0-9d04-6dee857017d0', 1, 'Update', 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, '', 'finished', '', '2024-10-16 19:20:51', '2024-10-16 19:20:51', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"130\",\"text_y\":\"193\"}'),
(100, '9d42e5a3-7415-4753-9ee8-9c40edca2b9a', 1, 'Update', 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, '', 'finished', '', '2024-10-16 19:21:00', '2024-10-16 19:21:00', '{\"text_y\":193}', '{\"text_y\":\"198\"}'),
(101, '9d42e5ae-892e-475b-8c70-b67a44ad79d4', 1, 'Update', 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, 'App\\Models\\Shape', 15, '', 'finished', '', '2024-10-16 19:21:08', '2024-10-16 19:21:08', '{\"text_y\":198}', '{\"text_y\":\"196\"}'),
(102, '9d42e749-17d1-42f3-90f4-086e5345cd4d', 1, 'Update', 'App\\Models\\Shape', 2, 'App\\Models\\Shape', 2, 'App\\Models\\Shape', 2, '', 'finished', '', '2024-10-16 19:25:37', '2024-10-16 19:25:37', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"190\",\"text_y\":\"424\"}'),
(103, '9d42e77f-fa79-48bc-a542-b3ab8448582d', 1, 'Update', 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, '', 'finished', '', '2024-10-16 19:26:13', '2024-10-16 19:26:13', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"190\",\"text_y\":\"361\"}'),
(104, '9d42e7fb-66c3-4c93-b4b3-d6ed983e24d9', 1, 'Update', 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, '', 'finished', '', '2024-10-16 19:27:34', '2024-10-16 19:27:34', '{\"points\":\"172.37 327 266.05 327 266.05 373.42 172.37 373.14 172.37 327\"}', '{\"points\":\"172.37 327 266.05 327 266.05 379.42 172.37 373.14 172.37 327\"}'),
(105, '9d42e844-38ff-4888-b52c-886339f1e127', 1, 'Update', 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, 'App\\Models\\Shape', 6, '', 'finished', '', '2024-10-16 19:28:21', '2024-10-16 19:28:21', '{\"points\":\"172.37 327 266.05 327 266.05 379.42 172.37 373.14 172.37 327\"}', '{\"points\":\"172.37 327 266.05 327 266.05 379.42 172.37 375.14 172.37 327\"}'),
(106, '9d42e92b-b374-41ef-b689-3c3c45057584', 1, 'Update', 'App\\Models\\Shape', 11, 'App\\Models\\Shape', 11, 'App\\Models\\Shape', 11, '', 'finished', '', '2024-10-16 19:30:53', '2024-10-16 19:30:53', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"190\",\"text_y\":\"308\"}'),
(107, '9d42e960-9617-43c0-b473-16710cbfc683', 1, 'Update', 'App\\Models\\Shape', 3, 'App\\Models\\Shape', 3, 'App\\Models\\Shape', 3, '', 'finished', '', '2024-10-16 19:31:28', '2024-10-16 19:31:28', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"308\",\"text_y\":\"430\"}'),
(108, '9d42e9a5-3f41-43be-b133-66b0caff5b66', 1, 'Update', 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, '', 'finished', '', '2024-10-16 19:32:13', '2024-10-16 19:32:13', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"418\",\"text_y\":\"361\"}'),
(109, '9d42e9bb-c3fa-48dc-9236-b4b1a5dfeda6', 1, 'Update', 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, 'App\\Models\\Shape', 7, '', 'finished', '', '2024-10-16 19:32:27', '2024-10-16 19:32:27', '{\"text_x\":418,\"text_y\":361}', '{\"text_x\":\"420\",\"text_y\":\"363\"}'),
(110, '9d42ea1a-0ef4-472e-a374-e5eefaf33b64', 1, 'Update', 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, '', 'finished', '', '2024-10-16 19:33:29', '2024-10-16 19:33:29', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"420\",\"text_y\":\"305\"}'),
(111, '9d42ea26-b692-4486-bf12-bf3549011d29', 1, 'Update', 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, '', 'finished', '', '2024-10-16 19:33:38', '2024-10-16 19:33:38', '{\"text_y\":305}', '{\"text_y\":\"307\"}'),
(112, '9d42eaa8-9256-478d-8c21-6f12f1df1634', 1, 'Update', 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, 'App\\Models\\Shape', 12, '', 'finished', '', '2024-10-16 19:35:03', '2024-10-16 19:35:03', '{\"points\":\"408.94 268.51 487.03 268.51 487.03 329 408.94 329 408.94 268.51\"}', '{\"points\":\"410.94 270.51 487.03 270.51 487.03 329 408.94 329 408.94 270.51\"}'),
(113, '9d42eae5-5886-47f5-b0a9-806ea9b0ebe2', 1, 'Update', 'App\\Models\\Shape', 14, 'App\\Models\\Shape', 14, 'App\\Models\\Shape', 14, '', 'finished', '', '2024-10-16 19:35:43', '2024-10-16 19:35:43', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"380\",\"text_y\":\"248\"}'),
(114, '9d42eb89-0f30-4f77-8151-af99b4186c65', 1, 'Update', 'App\\Models\\Shape', 14, 'App\\Models\\Shape', 14, 'App\\Models\\Shape', 14, '', 'finished', '', '2024-10-16 19:37:30', '2024-10-16 19:37:30', '{\"points\":\"332.51 270.51 487.03 270.51 487.03 210.21 332.56 210.27 332.51 270.51\"}', '{\"points\":\"332.51 270.51 487.03 270.51 487.03 207.21 332.56 210.27 332.51 270.51\"}'),
(115, '9d42ec0d-5203-425d-bcf1-df4e07d39a89', 1, 'Update', 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, '', 'finished', '', '2024-10-16 19:38:56', '2024-10-16 19:38:56', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"627\",\"text_y\":\"436\"}'),
(116, '9d42ec1c-aa49-4b86-8cff-9ba5f2398831', 1, 'Update', 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, '', 'finished', '', '2024-10-16 19:39:07', '2024-10-16 19:39:07', '{\"text_y\":436}', '{\"text_y\":\"440\"}'),
(117, '9d42ec61-19e2-45d2-945d-92f3f7c489ce', 1, 'Update', 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, 'App\\Models\\Shape', 4, '', 'finished', '', '2024-10-16 19:39:51', '2024-10-16 19:39:51', '{\"points\":\"572.71 466.7 572.71 386.22 741 392.88 741 470.37 572.71 466.7\"}', '{\"points\":\"572.71 466.7 572.71 386.22 741 387.88 741 470.37 572.71 466.7\"}'),
(118, '9d42ec97-dbd4-42cd-82e1-87259aa570c0', 1, 'Update', 'App\\Models\\Shape', 8, 'App\\Models\\Shape', 8, 'App\\Models\\Shape', 8, '', 'finished', '', '2024-10-16 19:40:27', '2024-10-16 19:40:27', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"627\",\"text_y\":\"368\"}'),
(119, '9d42ed04-91cc-4884-b050-741210aeafde', 1, 'Update', 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, '', 'finished', '', '2024-10-16 19:41:39', '2024-10-16 19:41:39', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"627\",\"text_y\":\"172\"}'),
(120, '9d42ed12-e8a7-403a-859e-247f3b579444', 1, 'Update', 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, 'App\\Models\\Shape', 16, '', 'finished', '', '2024-10-16 19:41:48', '2024-10-16 19:41:48', '{\"text_y\":172}', '{\"text_y\":\"175\"}'),
(121, '9d42ed63-18d6-4554-ac12-0f62146711b4', 1, 'Update', 'App\\Models\\Shape', 17, 'App\\Models\\Shape', 17, 'App\\Models\\Shape', 17, '', 'finished', '', '2024-10-16 19:42:40', '2024-10-16 19:42:40', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"931\",\"text_y\":\"438\"}'),
(122, '9d42ed6e-c49e-472d-9adb-e3ddb6f977f1', 1, 'Update', 'App\\Models\\Shape', 17, 'App\\Models\\Shape', 17, 'App\\Models\\Shape', 17, '', 'finished', '', '2024-10-16 19:42:48', '2024-10-16 19:42:48', '{\"text_x\":931}', '{\"text_x\":\"934\"}'),
(123, '9d42ed97-86b9-4550-8acf-b01d7f647a67', 1, 'Update', 'App\\Models\\Shape', 9, 'App\\Models\\Shape', 9, 'App\\Models\\Shape', 9, '', 'finished', '', '2024-10-16 19:43:15', '2024-10-16 19:43:15', '{\"text_x\":null,\"text_y\":null}', '{\"text_x\":\"931\",\"text_y\":\"369\"}'),
(124, '9d42edfd-2c44-4196-8765-75f3f80ab638', 1, 'Update', 'App\\Models\\Shape', 9, 'App\\Models\\Shape', 9, 'App\\Models\\Shape', 9, '', 'finished', '', '2024-10-16 19:44:21', '2024-10-16 19:44:21', '{\"points\":\"912.93 394.99 912.93 328.84 1008.5 328.84 1008.5 392.87 912.93 392.99\"}', '{\"points\":\"912.93 394.99 912.93 328.84 1008.5 328.84 1008.5 391.87 912.93 392.99\"}'),
(125, '9da5b8b0-679a-445b-9e6b-967a1b700462', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-12-04 22:22:17', '2024-12-04 22:22:17', '[]', '[]');
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(126, '9da5b8b0-6b63-478b-b541-ab0c2e5cbd8b', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-12-04 22:22:17', '2024-12-04 22:22:17', '{\"price\":9835000,\"interior_const\":108.46,\"exterior_const\":37.86,\"const_total\":146.32}', '{\"price\":\"1835000\",\"interior_const\":\"96.61\",\"exterior_const\":\"10.9\",\"const_total\":\"107.51\"}'),
(127, '9da5b972-a65b-47e1-b02a-819e7db31256', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-12-04 22:24:24', '2024-12-04 22:24:24', '[]', '[]'),
(128, '9da5b972-a76c-4e3f-b660-4115e4d04670', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-12-04 22:24:24', '2024-12-04 22:24:24', '{\"price\":1835000}', '{\"price\":\"9835000\"}'),
(129, '9da5b987-43cf-4c64-8053-09ae8644b0b8', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-12-04 22:24:38', '2024-12-04 22:24:38', '[]', '[]'),
(130, '9da5b987-4479-4767-b5cc-8915d72443f8', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-12-04 22:24:38', '2024-12-04 22:24:38', '{\"price\":9835000}', '{\"price\":\"1835000\"}'),
(133, '9da5baff-4f73-4b50-89a9-30f05bf62bdd', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-12-04 22:28:44', '2024-12-04 22:28:44', '[]', '[]'),
(134, '9da5baff-505c-49f2-b78e-83ca21b2e519', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-12-04 22:28:44', '2024-12-04 22:28:44', '{\"price\":1835000}', '{\"price\":\"1735000\"}'),
(135, '9da5be3f-d417-47f7-82c3-350f06a8ea3c', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-12-04 22:37:50', '2024-12-04 22:37:50', '[]', '[]'),
(136, '9da5be3f-d5aa-4f6e-808d-62aebf5db53a', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-12-04 22:37:50', '2024-12-04 22:37:50', '{\"price\":1735000}', '{\"price\":\"9835000\"}'),
(137, '9db55fca-3ed7-4d59-a0a8-ea7e94c7cff7', 1, 'Create', 'App\\Models\\PaymentPlan', 1, 'App\\Models\\PaymentPlan', 1, 'App\\Models\\PaymentPlan', 1, '', 'finished', '', '2024-12-12 17:06:57', '2024-12-12 17:06:57', NULL, '{\"name\":\"5% de descuento\",\"name_en\":\"5% Discount\",\"discount\":\"5\",\"additional_discount\":null,\"down_payment\":\"80\",\"second_payment\":null,\"months_percent\":null,\"closing_payment\":\"20\",\"updated_at\":\"2024-12-12T17:06:57.000000Z\",\"created_at\":\"2024-12-12T17:06:57.000000Z\",\"id\":1}'),
(138, '9db5601f-5b17-4cc9-a84c-b117a483478f', 1, 'Create', 'App\\Models\\PaymentPlan', 2, 'App\\Models\\PaymentPlan', 2, 'App\\Models\\PaymentPlan', 2, '', 'finished', '', '2024-12-12 17:07:53', '2024-12-12 17:07:53', NULL, '{\"name\":\"2% de descuento\",\"name_en\":\"2% Discount\",\"discount\":\"2\",\"additional_discount\":null,\"down_payment\":\"30\",\"second_payment\":\"60\",\"months_percent\":null,\"closing_payment\":\"10\",\"updated_at\":\"2024-12-12T17:07:53.000000Z\",\"created_at\":\"2024-12-12T17:07:53.000000Z\",\"id\":2}'),
(139, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 36, 'App\\Models\\Unit', 36, 'App\\Models\\Unit', 36, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(140, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 35, 'App\\Models\\Unit', 35, 'App\\Models\\Unit', 35, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(141, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(142, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 33, 'App\\Models\\Unit', 33, 'App\\Models\\Unit', 33, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(143, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 32, 'App\\Models\\Unit', 32, 'App\\Models\\Unit', 32, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(144, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(145, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 30, 'App\\Models\\Unit', 30, 'App\\Models\\Unit', 30, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(146, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(147, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 28, 'App\\Models\\Unit', 28, 'App\\Models\\Unit', 28, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(148, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 27, 'App\\Models\\Unit', 27, 'App\\Models\\Unit', 27, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(149, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 26, 'App\\Models\\Unit', 26, 'App\\Models\\Unit', 26, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(150, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 25, 'App\\Models\\Unit', 25, 'App\\Models\\Unit', 25, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(151, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 24, 'App\\Models\\Unit', 24, 'App\\Models\\Unit', 24, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(152, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(153, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 22, 'App\\Models\\Unit', 22, 'App\\Models\\Unit', 22, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(154, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 21, 'App\\Models\\Unit', 21, 'App\\Models\\Unit', 21, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(155, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 20, 'App\\Models\\Unit', 20, 'App\\Models\\Unit', 20, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(156, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 19, 'App\\Models\\Unit', 19, 'App\\Models\\Unit', 19, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(157, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 18, 'App\\Models\\Unit', 18, 'App\\Models\\Unit', 18, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(158, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 17, 'App\\Models\\Unit', 17, 'App\\Models\\Unit', 17, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(159, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 16, 'App\\Models\\Unit', 16, 'App\\Models\\Unit', 16, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(160, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 15, 'App\\Models\\Unit', 15, 'App\\Models\\Unit', 15, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(161, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 14, 'App\\Models\\Unit', 14, 'App\\Models\\Unit', 14, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(162, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 13, 'App\\Models\\Unit', 13, 'App\\Models\\Unit', 13, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(163, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 12, 'App\\Models\\Unit', 12, 'App\\Models\\Unit', 12, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(164, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 11, 'App\\Models\\Unit', 11, 'App\\Models\\Unit', 11, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(165, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 10, 'App\\Models\\Unit', 10, 'App\\Models\\Unit', 10, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(166, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 9, 'App\\Models\\Unit', 9, 'App\\Models\\Unit', 9, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(167, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 8, 'App\\Models\\Unit', 8, 'App\\Models\\Unit', 8, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(168, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 7, 'App\\Models\\Unit', 7, 'App\\Models\\Unit', 7, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(169, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 6, 'App\\Models\\Unit', 6, 'App\\Models\\Unit', 6, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(170, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 5, 'App\\Models\\Unit', 5, 'App\\Models\\Unit', 5, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(171, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 4, 'App\\Models\\Unit', 4, 'App\\Models\\Unit', 4, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(172, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 3, 'App\\Models\\Unit', 3, 'App\\Models\\Unit', 3, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(173, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 2, 'App\\Models\\Unit', 2, 'App\\Models\\Unit', 2, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(174, '9db5604d-e386-4e30-8787-f1fea9c4d0e2', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'a:1:{s:11:\"paymentPlan\";s:1:\"1\";}', 'finished', '', '2024-12-12 17:08:23', '2024-12-12 17:08:23', NULL, NULL),
(175, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 36, 'App\\Models\\Unit', 36, 'App\\Models\\Unit', 36, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(176, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 35, 'App\\Models\\Unit', 35, 'App\\Models\\Unit', 35, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(177, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, 'App\\Models\\Unit', 34, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(178, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 33, 'App\\Models\\Unit', 33, 'App\\Models\\Unit', 33, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(179, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 32, 'App\\Models\\Unit', 32, 'App\\Models\\Unit', 32, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(180, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, 'App\\Models\\Unit', 31, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(181, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 30, 'App\\Models\\Unit', 30, 'App\\Models\\Unit', 30, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(182, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, 'App\\Models\\Unit', 29, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(183, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 28, 'App\\Models\\Unit', 28, 'App\\Models\\Unit', 28, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(184, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 27, 'App\\Models\\Unit', 27, 'App\\Models\\Unit', 27, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(185, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 26, 'App\\Models\\Unit', 26, 'App\\Models\\Unit', 26, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(186, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 25, 'App\\Models\\Unit', 25, 'App\\Models\\Unit', 25, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(187, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 24, 'App\\Models\\Unit', 24, 'App\\Models\\Unit', 24, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(188, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, 'App\\Models\\Unit', 23, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(189, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 22, 'App\\Models\\Unit', 22, 'App\\Models\\Unit', 22, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(190, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 21, 'App\\Models\\Unit', 21, 'App\\Models\\Unit', 21, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(191, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 20, 'App\\Models\\Unit', 20, 'App\\Models\\Unit', 20, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(192, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 19, 'App\\Models\\Unit', 19, 'App\\Models\\Unit', 19, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(193, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 18, 'App\\Models\\Unit', 18, 'App\\Models\\Unit', 18, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(194, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 17, 'App\\Models\\Unit', 17, 'App\\Models\\Unit', 17, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(195, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 16, 'App\\Models\\Unit', 16, 'App\\Models\\Unit', 16, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(196, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 15, 'App\\Models\\Unit', 15, 'App\\Models\\Unit', 15, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(197, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 14, 'App\\Models\\Unit', 14, 'App\\Models\\Unit', 14, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(198, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 13, 'App\\Models\\Unit', 13, 'App\\Models\\Unit', 13, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(199, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 12, 'App\\Models\\Unit', 12, 'App\\Models\\Unit', 12, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(200, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 11, 'App\\Models\\Unit', 11, 'App\\Models\\Unit', 11, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(201, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 10, 'App\\Models\\Unit', 10, 'App\\Models\\Unit', 10, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(202, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 9, 'App\\Models\\Unit', 9, 'App\\Models\\Unit', 9, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(203, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 8, 'App\\Models\\Unit', 8, 'App\\Models\\Unit', 8, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(204, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 7, 'App\\Models\\Unit', 7, 'App\\Models\\Unit', 7, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(205, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 6, 'App\\Models\\Unit', 6, 'App\\Models\\Unit', 6, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(206, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 5, 'App\\Models\\Unit', 5, 'App\\Models\\Unit', 5, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(207, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 4, 'App\\Models\\Unit', 4, 'App\\Models\\Unit', 4, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(208, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 3, 'App\\Models\\Unit', 3, 'App\\Models\\Unit', 3, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(209, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 2, 'App\\Models\\Unit', 2, 'App\\Models\\Unit', 2, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(210, '9db5605a-94a4-43ae-830e-13c64f6765ec', 1, 'Asignar plan de pagos', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'a:1:{s:11:\"paymentPlan\";s:1:\"2\";}', 'finished', '', '2024-12-12 17:08:31', '2024-12-12 17:08:31', NULL, NULL),
(211, '9e17e7e4-3e21-4ad4-aa1b-35a846e06450', 1, 'Create', 'App\\Models\\Tower', 2, 'App\\Models\\Tower', 2, 'App\\Models\\Tower', 2, '', 'finished', '', '2025-01-30 16:38:39', '2025-01-30 16:38:39', NULL, '{\"name\":\"Elara\",\"secondary_name\":\"Torre 4000\",\"slug\":\"elara\",\"viewbox\":\"0 0 1920 1080\",\"updated_at\":\"2025-01-30T16:38:39.000000Z\",\"created_at\":\"2025-01-30T16:38:39.000000Z\",\"id\":2}'),
(212, '9e17f349-bdb5-4ede-a66c-7b04d6517246', 1, 'Create', 'App\\Models\\UnitType', 13, 'App\\Models\\UnitType', 13, 'App\\Models\\UnitType', 13, '', 'finished', '', '2025-01-30 17:10:31', '2025-01-30 17:10:31', NULL, '{\"name\":\"01-A\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"113.82\",\"exterior_const\":\"22.17\",\"updated_at\":\"2025-01-30T17:10:31.000000Z\",\"created_at\":\"2025-01-30T17:10:31.000000Z\",\"id\":13}'),
(213, '9e17f36a-4f45-413f-a9dd-b2a3b6c8953c', 1, 'Create', 'App\\Models\\UnitType', 14, 'App\\Models\\UnitType', 14, 'App\\Models\\UnitType', 14, '', 'finished', '', '2025-01-30 17:10:52', '2025-01-30 17:10:52', NULL, '{\"name\":\"02-A\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"103.90\",\"exterior_const\":\"28.17\",\"updated_at\":\"2025-01-30T17:10:52.000000Z\",\"created_at\":\"2025-01-30T17:10:52.000000Z\",\"id\":14}'),
(214, '9e17f38b-46b1-45ae-ac20-2d87e03d87b0', 1, 'Create', 'App\\Models\\UnitType', 15, 'App\\Models\\UnitType', 15, 'App\\Models\\UnitType', 15, '', 'finished', '', '2025-01-30 17:11:14', '2025-01-30 17:11:14', NULL, '{\"name\":\"03-A\",\"bedrooms\":\"1\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"72.59\",\"exterior_const\":\"13.32\",\"updated_at\":\"2025-01-30T17:11:14.000000Z\",\"created_at\":\"2025-01-30T17:11:14.000000Z\",\"id\":15}'),
(215, '9e17f3c0-368d-44ea-a29a-69733000016b', 1, 'Create', 'App\\Models\\UnitType', 16, 'App\\Models\\UnitType', 16, 'App\\Models\\UnitType', 16, '', 'finished', '', '2025-01-30 17:11:48', '2025-01-30 17:11:48', NULL, '{\"name\":\"04-A\",\"bedrooms\":\"1\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"72.59\",\"exterior_const\":\"14.24\",\"updated_at\":\"2025-01-30T17:11:48.000000Z\",\"created_at\":\"2025-01-30T17:11:48.000000Z\",\"id\":16}'),
(216, '9e17f3e5-408d-4e13-8e17-61521c9b5376', 1, 'Create', 'App\\Models\\UnitType', 17, 'App\\Models\\UnitType', 17, 'App\\Models\\UnitType', 17, '', 'finished', '', '2025-01-30 17:12:13', '2025-01-30 17:12:13', NULL, '{\"name\":\"05-A\",\"bedrooms\":\"2\",\"flexrooms\":null,\"bathrooms\":\"2\",\"interior_const\":\"102.1\",\"exterior_const\":\"20.01\",\"updated_at\":\"2025-01-30T17:12:13.000000Z\",\"created_at\":\"2025-01-30T17:12:13.000000Z\",\"id\":17}'),
(217, '9e17f419-2c30-4e17-91e7-fd66432e8e8d', 1, 'Create', 'App\\Models\\UnitType', 18, 'App\\Models\\UnitType', 18, 'App\\Models\\UnitType', 18, '', 'finished', '', '2025-01-30 17:12:47', '2025-01-30 17:12:47', NULL, '{\"name\":\"01-B\",\"bedrooms\":\"2\",\"flexrooms\":\"1\",\"bathrooms\":\"2\",\"interior_const\":\"121.70\",\"exterior_const\":\"20.24\",\"updated_at\":\"2025-01-30T17:12:47.000000Z\",\"created_at\":\"2025-01-30T17:12:47.000000Z\",\"id\":18}'),
(218, '9e17f446-b557-4bd3-8a07-60c957d58750', 1, 'Create', 'App\\Models\\UnitType', 19, 'App\\Models\\UnitType', 19, 'App\\Models\\UnitType', 19, '', 'finished', '', '2025-01-30 17:13:17', '2025-01-30 17:13:17', NULL, '{\"name\":\"02-B\",\"bedrooms\":\"2\",\"flexrooms\":\"1\",\"bathrooms\":\"2\",\"interior_const\":\"116.07\",\"exterior_const\":\"19.24\",\"updated_at\":\"2025-01-30T17:13:17.000000Z\",\"created_at\":\"2025-01-30T17:13:17.000000Z\",\"id\":19}'),
(219, '9e17f75c-31bc-4217-8bd0-2b9178fcdeb7', 1, 'Create', 'App\\Models\\UnitType', 20, 'App\\Models\\UnitType', 20, 'App\\Models\\UnitType', 20, '', 'finished', '', '2025-01-30 17:21:54', '2025-01-30 17:21:54', NULL, '{\"name\":\"03-B\",\"bedrooms\":\"2\",\"flexrooms\":\"1\",\"bathrooms\":\"2\",\"interior_const\":\"118.03\",\"exterior_const\":\"20.23\",\"updated_at\":\"2025-01-30T17:21:54.000000Z\",\"created_at\":\"2025-01-30T17:21:54.000000Z\",\"id\":20}'),
(220, '9e17f787-e531-46db-bee3-ea14fa8d243d', 1, 'Create', 'App\\Models\\UnitType', 21, 'App\\Models\\UnitType', 21, 'App\\Models\\UnitType', 21, '', 'finished', '', '2025-01-30 17:22:23', '2025-01-30 17:22:23', NULL, '{\"name\":\"04-B\",\"bedrooms\":\"2\",\"flexrooms\":\"1\",\"bathrooms\":\"2\",\"interior_const\":\"129.19\",\"exterior_const\":\"27.63\",\"updated_at\":\"2025-01-30T17:22:23.000000Z\",\"created_at\":\"2025-01-30T17:22:23.000000Z\",\"id\":21}'),
(221, '9e181c2b-6b40-48b1-a8b2-49b08a4916ee', 1, 'Create', 'App\\Models\\Section', 1, 'App\\Models\\Section', 1, 'App\\Models\\Section', 1, '', 'finished', '', '2025-01-30 19:04:50', '2025-01-30 19:04:50', NULL, '{\"name\":\"A\",\"view\":null,\"tower_id\":2,\"viewbox\":\"0 0 1920 1291\",\"img_path\":\"cuZSM5MnKeCHPoPOY0OfIGQSu2eiqXFJZ8oEoTeK.webp\",\"updated_at\":\"2025-01-30T19:04:50.000000Z\",\"created_at\":\"2025-01-30T19:04:50.000000Z\",\"id\":1}'),
(222, '9e181c4f-7bab-4ca7-a3c1-7d2da45ede97', 1, 'Create', 'App\\Models\\Section', 2, 'App\\Models\\Section', 2, 'App\\Models\\Section', 2, '', 'finished', '', '2025-01-30 19:05:13', '2025-01-30 19:05:13', NULL, '{\"name\":\"B\",\"view\":null,\"tower_id\":2,\"viewbox\":\"0 0 1920 1291\",\"img_path\":\"dzKtcQZjSOto99jTzUexF8JA4uYJvmEOFKeACeD7.webp\",\"updated_at\":\"2025-01-30T19:05:13.000000Z\",\"created_at\":\"2025-01-30T19:05:13.000000Z\",\"id\":2}'),
(223, '9e1a113b-1912-4839-aa1b-f578288fbb53', 1, 'Create', 'App\\Models\\Unit', 37, 'App\\Models\\Unit', 37, 'App\\Models\\Unit', 37, '', 'finished', '', '2025-01-31 18:25:54', '2025-01-31 18:25:54', NULL, '{\"name\":\"101A\",\"tower_id\":2,\"floor\":\"1\",\"price\":\"9235000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":13,\"interior_const\":\"113.82\",\"exterior_const\":\"22.17\",\"const_total\":\"135.99\",\"updated_at\":\"2025-01-31T18:25:54.000000Z\",\"created_at\":\"2025-01-31T18:25:54.000000Z\",\"id\":37}'),
(224, '9e1a1146-72ae-4045-9863-047393095e7c', 1, 'Update', 'App\\Models\\Unit', 37, 'App\\Models\\Unit', 37, 'App\\Models\\Unit', 37, '', 'finished', '', '2025-01-31 18:26:01', '2025-01-31 18:26:01', '{\"name\":\"101A\"}', '{\"name\":\"101-A\"}'),
(225, '9e1a1246-81de-4660-aed4-17ff319bc941', 1, 'Update', 'App\\Models\\Unit', 37, 'App\\Models\\Unit', 37, 'App\\Models\\Unit', 37, '', 'finished', '', '2025-01-31 18:28:49', '2025-01-31 18:28:49', '{\"section_id\":null}', '{\"section_id\":1}'),
(226, '9e1a12ce-494d-413f-810d-92dfe9b702cf', 1, 'Create', 'App\\Models\\Unit', 38, 'App\\Models\\Unit', 38, 'App\\Models\\Unit', 38, '', 'finished', '', '2025-01-31 18:30:18', '2025-01-31 18:30:18', NULL, '{\"name\":\"102-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"1\",\"price\":\"9030000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":14,\"interior_const\":\"103.91\",\"exterior_const\":\"28.17\",\"const_total\":\"132.08\",\"updated_at\":\"2025-01-31T18:30:18.000000Z\",\"created_at\":\"2025-01-31T18:30:18.000000Z\",\"id\":38}'),
(227, '9e1a1327-6d69-4d0b-bc1b-9ceff724a352', 1, 'Create', 'App\\Models\\Unit', 39, 'App\\Models\\Unit', 39, 'App\\Models\\Unit', 39, '', 'finished', '', '2025-01-31 18:31:16', '2025-01-31 18:31:16', NULL, '{\"name\":\"103-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"1\",\"price\":\"6375000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":16,\"interior_const\":\"72.59\",\"exterior_const\":\"13.33\",\"const_total\":\"85.92\",\"updated_at\":\"2025-01-31T18:31:16.000000Z\",\"created_at\":\"2025-01-31T18:31:16.000000Z\",\"id\":39}'),
(228, '9e1a136b-c182-419e-b99b-f1f63c9bf19a', 1, 'Create', 'App\\Models\\Unit', 40, 'App\\Models\\Unit', 40, 'App\\Models\\Unit', 40, '', 'finished', '', '2025-01-31 18:32:01', '2025-01-31 18:32:01', NULL, '{\"name\":\"104-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"1\",\"price\":\"6280000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":16,\"interior_const\":\"72.59\",\"exterior_const\":\"13.33\",\"const_total\":\"85.92\",\"updated_at\":\"2025-01-31T18:32:01.000000Z\",\"created_at\":\"2025-01-31T18:32:01.000000Z\",\"id\":40}'),
(229, '9e1a13b9-3865-4365-95b4-36c9345b52a5', 1, 'Create', 'App\\Models\\Unit', 41, 'App\\Models\\Unit', 41, 'App\\Models\\Unit', 41, '', 'finished', '', '2025-01-31 18:32:52', '2025-01-31 18:32:52', NULL, '{\"name\":\"105-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"1\",\"price\":\"8160000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":17,\"interior_const\":\"102.1\",\"exterior_const\":\"18.4\",\"const_total\":\"120.5\",\"updated_at\":\"2025-01-31T18:32:52.000000Z\",\"created_at\":\"2025-01-31T18:32:52.000000Z\",\"id\":41}'),
(230, '9e1a1d51-c1ef-460f-a3de-0ab914e27c82', 1, 'Create', 'App\\Models\\Unit', 42, 'App\\Models\\Unit', 42, 'App\\Models\\Unit', 42, '', 'finished', '', '2025-01-31 18:59:42', '2025-01-31 18:59:42', NULL, '{\"name\":\"201-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"2\",\"price\":\"10375000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":13,\"interior_const\":\"113.82\",\"exterior_const\":\"40.03\",\"const_total\":\"153.85\",\"updated_at\":\"2025-01-31T18:59:42.000000Z\",\"created_at\":\"2025-01-31T18:59:42.000000Z\",\"id\":42}'),
(231, '9e1a1fdd-6617-45ed-886c-021c50290334', 1, 'Create', 'App\\Models\\Unit', 43, 'App\\Models\\Unit', 43, 'App\\Models\\Unit', 43, '', 'finished', '', '2025-01-31 19:06:49', '2025-01-31 19:06:49', NULL, '{\"name\":\"202-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"2\",\"price\":\"9780000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":14,\"interior_const\":\"103.9\",\"exterior_const\":\"40.39\",\"const_total\":\"144.29\",\"updated_at\":\"2025-01-31T19:06:49.000000Z\",\"created_at\":\"2025-01-31T19:06:49.000000Z\",\"id\":43}'),
(232, '9e1a2011-08d8-4e27-bcee-476073a1b148', 1, 'Create', 'App\\Models\\Unit', 44, 'App\\Models\\Unit', 44, 'App\\Models\\Unit', 44, '', 'finished', '', '2025-01-31 19:07:23', '2025-01-31 19:07:23', NULL, '{\"name\":\"203-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"2\",\"price\":\"6375000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":15,\"interior_const\":\"72.59\",\"exterior_const\":\"14.3\",\"const_total\":\"86.89\",\"updated_at\":\"2025-01-31T19:07:23.000000Z\",\"created_at\":\"2025-01-31T19:07:23.000000Z\",\"id\":44}'),
(233, '9e1a2128-397f-4a96-8a14-4a7229f14830', 1, 'Create', 'App\\Models\\Unit', 45, 'App\\Models\\Unit', 45, 'App\\Models\\Unit', 45, '', 'finished', '', '2025-01-31 19:10:26', '2025-01-31 19:10:26', NULL, '{\"name\":\"204-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"2\",\"price\":\"6285000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":16,\"interior_const\":\"72.59\",\"exterior_const\":\"14.3\",\"const_total\":\"86.89\",\"updated_at\":\"2025-01-31T19:10:26.000000Z\",\"created_at\":\"2025-01-31T19:10:26.000000Z\",\"id\":45}'),
(234, '9e1a2185-0fd3-41d4-a9e2-d0897a3468f7', 1, 'Create', 'App\\Models\\Unit', 46, 'App\\Models\\Unit', 46, 'App\\Models\\Unit', 46, '', 'finished', '', '2025-01-31 19:11:27', '2025-01-31 19:11:27', NULL, '{\"name\":\"205-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"2\",\"price\":\"8530000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":17,\"interior_const\":\"102.1\",\"exterior_const\":\"20.07\",\"const_total\":\"122.17\",\"updated_at\":\"2025-01-31T19:11:27.000000Z\",\"created_at\":\"2025-01-31T19:11:27.000000Z\",\"id\":46}'),
(235, '9e1a2a08-8cd3-4eb0-aa9c-257a83301b87', 1, 'Create', 'App\\Models\\Unit', 47, 'App\\Models\\Unit', 47, 'App\\Models\\Unit', 47, '', 'finished', '', '2025-01-31 19:35:15', '2025-01-31 19:35:15', NULL, '{\"name\":\"301-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"3\",\"price\":\"10540000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":13,\"interior_const\":\"113.82\",\"exterior_const\":\"40.14\",\"const_total\":\"153.96\",\"updated_at\":\"2025-01-31T19:35:15.000000Z\",\"created_at\":\"2025-01-31T19:35:15.000000Z\",\"id\":47}'),
(236, '9e1a2a4e-8bd4-4a85-b763-411a097d7a89', 1, 'Create', 'App\\Models\\Unit', 48, 'App\\Models\\Unit', 48, 'App\\Models\\Unit', 48, '', 'finished', '', '2025-01-31 19:36:01', '2025-01-31 19:36:01', NULL, '{\"name\":\"302-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"3\",\"price\":\"9925000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":14,\"interior_const\":\"103.9\",\"exterior_const\":\"40.35\",\"const_total\":\"144.25\",\"updated_at\":\"2025-01-31T19:36:01.000000Z\",\"created_at\":\"2025-01-31T19:36:01.000000Z\",\"id\":48}'),
(237, '9e1a2aa1-bf01-469c-a515-24cdc43236fe', 1, 'Create', 'App\\Models\\Unit', 49, 'App\\Models\\Unit', 49, 'App\\Models\\Unit', 49, '', 'finished', '', '2025-01-31 19:36:55', '2025-01-31 19:36:55', NULL, '{\"name\":\"303-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"3\",\"price\":\"6510000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":15,\"interior_const\":\"72.59\",\"exterior_const\":\"14.24\",\"const_total\":\"86.83\",\"updated_at\":\"2025-01-31T19:36:55.000000Z\",\"created_at\":\"2025-01-31T19:36:55.000000Z\",\"id\":49}'),
(238, '9e1a2adb-547f-420e-9cf7-d334178f5d57', 1, 'Create', 'App\\Models\\Unit', 50, 'App\\Models\\Unit', 50, 'App\\Models\\Unit', 50, '', 'finished', '', '2025-01-31 19:37:33', '2025-01-31 19:37:33', NULL, '{\"name\":\"304-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"3\",\"price\":\"6420000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":16,\"interior_const\":\"72.59\",\"exterior_const\":\"14.24\",\"const_total\":\"86.83\",\"updated_at\":\"2025-01-31T19:37:33.000000Z\",\"created_at\":\"2025-01-31T19:37:33.000000Z\",\"id\":50}'),
(239, '9e1a2afc-319d-46c3-b9c2-4aab329b78f4', 1, 'Create', 'App\\Models\\Unit', 51, 'App\\Models\\Unit', 51, 'App\\Models\\Unit', 51, '', 'finished', '', '2025-01-31 19:37:55', '2025-01-31 19:37:55', NULL, '{\"name\":\"305-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"3\",\"price\":\"8655000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":17,\"interior_const\":\"102.1\",\"exterior_const\":\"20.01\",\"const_total\":\"122.11\",\"updated_at\":\"2025-01-31T19:37:55.000000Z\",\"created_at\":\"2025-01-31T19:37:55.000000Z\",\"id\":51}'),
(240, '9e1a31f9-9804-4a4b-a002-3ea781a40908', 1, 'Create', 'App\\Models\\Unit', 52, 'App\\Models\\Unit', 52, 'App\\Models\\Unit', 52, '', 'finished', '', '2025-01-31 19:57:27', '2025-01-31 19:57:27', NULL, '{\"name\":\"401-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"4\",\"price\":\"10565000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":13,\"interior_const\":\"113.82\",\"exterior_const\":\"46\",\"const_total\":\"159.82\",\"updated_at\":\"2025-01-31T19:57:27.000000Z\",\"created_at\":\"2025-01-31T19:57:27.000000Z\",\"id\":52}'),
(241, '9e1a3229-6d7a-43e9-a6c9-3ccc9a483277', 1, 'Create', 'App\\Models\\Unit', 53, 'App\\Models\\Unit', 53, 'App\\Models\\Unit', 53, '', 'finished', '', '2025-01-31 19:57:59', '2025-01-31 19:57:59', NULL, '{\"name\":\"402-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"4\",\"price\":\"9790000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":14,\"interior_const\":\"103.9\",\"exterior_const\":\"46.25\",\"const_total\":\"150.15\",\"updated_at\":\"2025-01-31T19:57:59.000000Z\",\"created_at\":\"2025-01-31T19:57:59.000000Z\",\"id\":53}'),
(242, '9e1a32a5-a3b1-4d9b-b079-0d05c0f595e6', 1, 'Create', 'App\\Models\\Unit', 54, 'App\\Models\\Unit', 54, 'App\\Models\\Unit', 54, '', 'finished', '', '2025-01-31 19:59:20', '2025-01-31 19:59:20', NULL, '{\"name\":\"403-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"4\",\"price\":\"6625000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":15,\"interior_const\":\"72.59\",\"exterior_const\":\"12.84\",\"const_total\":\"85.43\",\"updated_at\":\"2025-01-31T19:59:20.000000Z\",\"created_at\":\"2025-01-31T19:59:20.000000Z\",\"id\":54}'),
(243, '9e1a32d7-a843-45ca-8f44-4ad2b792b981', 1, 'Create', 'App\\Models\\Unit', 55, 'App\\Models\\Unit', 55, 'App\\Models\\Unit', 55, '', 'finished', '', '2025-01-31 19:59:53', '2025-01-31 19:59:53', NULL, '{\"name\":\"404-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"4\",\"price\":\"6535000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":16,\"interior_const\":\"72.59\",\"exterior_const\":\"12.84\",\"const_total\":\"85.43\",\"updated_at\":\"2025-01-31T19:59:53.000000Z\",\"created_at\":\"2025-01-31T19:59:53.000000Z\",\"id\":55}'),
(244, '9e1a3319-ec22-427d-94a4-5dca4a0afd5f', 1, 'Create', 'App\\Models\\Unit', 56, 'App\\Models\\Unit', 56, 'App\\Models\\Unit', 56, '', 'finished', '', '2025-01-31 20:00:36', '2025-01-31 20:00:36', NULL, '{\"name\":\"405-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"4\",\"price\":\"8645000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":17,\"interior_const\":\"102.15\",\"exterior_const\":\"18.13\",\"const_total\":\"120.28\",\"updated_at\":\"2025-01-31T20:00:36.000000Z\",\"created_at\":\"2025-01-31T20:00:36.000000Z\",\"id\":56}'),
(245, '9e1a4c51-ee5e-448f-8cd8-fded357e4e2e', 1, 'Create', 'App\\Models\\Unit', 57, 'App\\Models\\Unit', 57, 'App\\Models\\Unit', 57, '', 'finished', '', '2025-01-31 21:11:07', '2025-01-31 21:11:07', NULL, '{\"name\":\"501-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"5\",\"price\":\"11335000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":13,\"interior_const\":\"113.82\",\"exterior_const\":\"40.14\",\"const_total\":\"153.96\",\"updated_at\":\"2025-01-31T21:11:07.000000Z\",\"created_at\":\"2025-01-31T21:11:07.000000Z\",\"id\":57}'),
(246, '9e1a4c90-093a-4737-bd6e-e45c56b66434', 1, 'Create', 'App\\Models\\Unit', 58, 'App\\Models\\Unit', 58, 'App\\Models\\Unit', 58, '', 'finished', '', '2025-01-31 21:11:48', '2025-01-31 21:11:48', NULL, '{\"name\":\"502-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"5\",\"price\":\"10680000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":14,\"interior_const\":\"103.9\",\"exterior_const\":\"40.35\",\"const_total\":\"144.25\",\"updated_at\":\"2025-01-31T21:11:48.000000Z\",\"created_at\":\"2025-01-31T21:11:48.000000Z\",\"id\":58}'),
(247, '9e1a4cbc-5d11-4b5c-84a2-2ca1d4d35b24', 1, 'Create', 'App\\Models\\Unit', 59, 'App\\Models\\Unit', 59, 'App\\Models\\Unit', 59, '', 'finished', '', '2025-01-31 21:12:17', '2025-01-31 21:12:17', NULL, '{\"name\":\"503-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"5\",\"price\":\"7005000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":15,\"interior_const\":\"72.59\",\"exterior_const\":\"14.24\",\"const_total\":\"86.83\",\"updated_at\":\"2025-01-31T21:12:17.000000Z\",\"created_at\":\"2025-01-31T21:12:17.000000Z\",\"id\":59}'),
(248, '9e1a4dfc-5cec-405a-81c1-04dfe1f414a4', 1, 'Create', 'App\\Models\\Unit', 60, 'App\\Models\\Unit', 60, 'App\\Models\\Unit', 60, '', 'finished', '', '2025-01-31 21:15:47', '2025-01-31 21:15:47', NULL, '{\"name\":\"504-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"5\",\"price\":\"6915000\",\"currency\":\"MXN\",\"status\":\"Vendida\",\"youtube_link\":null,\"unit_type_id\":16,\"interior_const\":\"73.13\",\"exterior_const\":\"14.24\",\"const_total\":\"87.37\",\"updated_at\":\"2025-01-31T21:15:47.000000Z\",\"created_at\":\"2025-01-31T21:15:47.000000Z\",\"id\":60}'),
(249, '9e1a4e23-0a00-4285-8cd8-94743d29c59b', 1, 'Create', 'App\\Models\\Unit', 61, 'App\\Models\\Unit', 61, 'App\\Models\\Unit', 61, '', 'finished', '', '2025-01-31 21:16:12', '2025-01-31 21:16:12', NULL, '{\"name\":\"505-A\",\"tower_id\":2,\"section_id\":1,\"floor\":\"5\",\"price\":\"9020000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":17,\"interior_const\":\"102.1\",\"exterior_const\":\"20.01\",\"const_total\":\"122.11\",\"updated_at\":\"2025-01-31T21:16:12.000000Z\",\"created_at\":\"2025-01-31T21:16:12.000000Z\",\"id\":61}'),
(250, '9e1a5028-2db5-4e9a-b011-09bceffe6f8d', 1, 'Create', 'App\\Models\\Unit', 62, 'App\\Models\\Unit', 62, 'App\\Models\\Unit', 62, '', 'finished', '', '2025-01-31 21:21:51', '2025-01-31 21:21:51', NULL, '{\"name\":\"102-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"1\",\"price\":\"9230000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":19,\"interior_const\":\"116.07\",\"exterior_const\":\"18.04\",\"const_total\":\"134.11\",\"updated_at\":\"2025-01-31T21:21:51.000000Z\",\"created_at\":\"2025-01-31T21:21:51.000000Z\",\"id\":62}'),
(251, '9e1a50e0-39cc-4d2c-b1c4-d702bf369739', 1, 'Create', 'App\\Models\\Unit', 63, 'App\\Models\\Unit', 63, 'App\\Models\\Unit', 63, '', 'finished', '', '2025-01-31 21:23:52', '2025-01-31 21:23:52', NULL, '{\"name\":\"103-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"1\",\"price\":\"9275000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":20,\"interior_const\":\"118.04\",\"exterior_const\":\"18.6\",\"const_total\":\"136.64\",\"updated_at\":\"2025-01-31T21:23:52.000000Z\",\"created_at\":\"2025-01-31T21:23:52.000000Z\",\"id\":63}'),
(252, '9e1a513d-52a2-426e-a4d5-40ae1e5e1b58', 1, 'Update', 'App\\Models\\Unit', 62, 'App\\Models\\Unit', 62, 'App\\Models\\Unit', 62, '', 'finished', '', '2025-01-31 21:24:53', '2025-01-31 21:24:53', '{\"unit_type_id\":19,\"name\":\"102-B\",\"price\":9230000,\"interior_const\":116.07,\"exterior_const\":18.04,\"const_total\":134.11}', '{\"unit_type_id\":18,\"name\":\"101-B\",\"price\":\"9670000\",\"interior_const\":\"121.7\",\"exterior_const\":\"18.6\",\"const_total\":\"140.3\"}'),
(253, '9e1a51a1-9e9b-4d48-99c1-f368785089a2', 1, 'Update', 'App\\Models\\Unit', 63, 'App\\Models\\Unit', 63, 'App\\Models\\Unit', 63, '', 'finished', '', '2025-01-31 21:25:58', '2025-01-31 21:25:58', '{\"unit_type_id\":20,\"name\":\"103-B\",\"price\":9275000,\"interior_const\":118.04,\"exterior_const\":18.6,\"const_total\":136.64}', '{\"unit_type_id\":19,\"name\":\"102-B\",\"price\":\"9230000\",\"interior_const\":\"116.07\",\"exterior_const\":\"18.04\",\"const_total\":\"134.11\"}'),
(254, '9e1a528d-fd75-429b-956a-b80b67f50b2b', 1, 'Create', 'App\\Models\\Unit', 64, 'App\\Models\\Unit', 64, 'App\\Models\\Unit', 64, '', 'finished', '', '2025-01-31 21:28:33', '2025-01-31 21:28:33', NULL, '{\"name\":\"103-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"1\",\"price\":\"9275000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":20,\"interior_const\":\"118.04\",\"exterior_const\":\"18.6\",\"const_total\":\"136.64\",\"updated_at\":\"2025-01-31T21:28:33.000000Z\",\"created_at\":\"2025-01-31T21:28:33.000000Z\",\"id\":64}'),
(255, '9e1a52db-48ad-4464-87f6-c648fdbac379', 1, 'Create', 'App\\Models\\Unit', 65, 'App\\Models\\Unit', 65, 'App\\Models\\Unit', 65, '', 'finished', '', '2025-01-31 21:29:24', '2025-01-31 21:29:24', NULL, '{\"name\":\"104-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"1\",\"price\":\"10625000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":21,\"interior_const\":\"129.19\",\"exterior_const\":\"27.63\",\"const_total\":\"156.82\",\"updated_at\":\"2025-01-31T21:29:24.000000Z\",\"created_at\":\"2025-01-31T21:29:24.000000Z\",\"id\":65}'),
(256, '9e1a5343-3020-4369-8a01-ce2184370538', 1, 'Create', 'App\\Models\\Unit', 66, 'App\\Models\\Unit', 66, 'App\\Models\\Unit', 66, '', 'finished', '', '2025-01-31 21:30:32', '2025-01-31 21:30:32', NULL, '{\"name\":\"201-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"2\",\"price\":\"9910000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":18,\"interior_const\":\"121.7\",\"exterior_const\":\"20.29\",\"const_total\":\"141.99\",\"updated_at\":\"2025-01-31T21:30:32.000000Z\",\"created_at\":\"2025-01-31T21:30:32.000000Z\",\"id\":66}'),
(257, '9e1a537f-4ee1-4853-a4fd-2ca08c5e4d47', 1, 'Create', 'App\\Models\\Unit', 67, 'App\\Models\\Unit', 67, 'App\\Models\\Unit', 67, '', 'finished', '', '2025-01-31 21:31:11', '2025-01-31 21:31:11', NULL, '{\"name\":\"202-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"2\",\"price\":\"9450000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":19,\"interior_const\":\"116.07\",\"exterior_const\":\"19.36\",\"const_total\":\"135.43\",\"updated_at\":\"2025-01-31T21:31:11.000000Z\",\"created_at\":\"2025-01-31T21:31:11.000000Z\",\"id\":67}'),
(258, '9e1a5558-e083-44a3-b2d5-3167a99174a0', 1, 'Create', 'App\\Models\\Unit', 68, 'App\\Models\\Unit', 68, 'App\\Models\\Unit', 68, '', 'finished', '', '2025-01-31 21:36:22', '2025-01-31 21:36:22', NULL, '{\"name\":\"203-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"2\",\"price\":\"9520000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":20,\"interior_const\":\"118.03\",\"exterior_const\":\"20.29\",\"const_total\":\"138.32\",\"updated_at\":\"2025-01-31T21:36:22.000000Z\",\"created_at\":\"2025-01-31T21:36:22.000000Z\",\"id\":68}'),
(259, '9e1a559e-eed3-4beb-b535-cc2c0bd08b98', 1, 'Create', 'App\\Models\\Unit', 69, 'App\\Models\\Unit', 69, 'App\\Models\\Unit', 69, '', 'finished', '', '2025-01-31 21:37:08', '2025-01-31 21:37:08', NULL, '{\"name\":\"204-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"2\",\"price\":\"11385000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":21,\"interior_const\":\"129.19\",\"exterior_const\":\"27.63\",\"const_total\":\"156.82\",\"updated_at\":\"2025-01-31T21:37:08.000000Z\",\"created_at\":\"2025-01-31T21:37:08.000000Z\",\"id\":69}'),
(260, '9e1a55f5-8a37-4afd-ad97-281c0d94aaaf', 1, 'Create', 'App\\Models\\Unit', 70, 'App\\Models\\Unit', 70, 'App\\Models\\Unit', 70, '', 'finished', '', '2025-01-31 21:38:04', '2025-01-31 21:38:04', NULL, '{\"name\":\"301-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"3\",\"price\":\"10055000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":18,\"interior_const\":\"121.7\",\"exterior_const\":\"20.23\",\"const_total\":\"141.93\",\"updated_at\":\"2025-01-31T21:38:04.000000Z\",\"created_at\":\"2025-01-31T21:38:04.000000Z\",\"id\":70}'),
(261, '9e1a5652-340c-4fe2-ae26-a24adbc8f51f', 1, 'Create', 'App\\Models\\Unit', 71, 'App\\Models\\Unit', 71, 'App\\Models\\Unit', 71, '', 'finished', '', '2025-01-31 21:39:05', '2025-01-31 21:39:05', NULL, '{\"name\":\"302-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"3\",\"price\":\"9585000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":19,\"interior_const\":\"116.07\",\"exterior_const\":\"19.24\",\"const_total\":\"135.31\",\"updated_at\":\"2025-01-31T21:39:05.000000Z\",\"created_at\":\"2025-01-31T21:39:05.000000Z\",\"id\":71}');
INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(262, '9e1a567c-92bc-4b10-b937-fd8d366b68b9', 1, 'Create', 'App\\Models\\Unit', 72, 'App\\Models\\Unit', 72, 'App\\Models\\Unit', 72, '', 'finished', '', '2025-01-31 21:39:33', '2025-01-31 21:39:33', NULL, '{\"name\":\"303-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"3\",\"price\":\"9800000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":20,\"interior_const\":\"118.03\",\"exterior_const\":\"20.23\",\"const_total\":\"138.26\",\"updated_at\":\"2025-01-31T21:39:33.000000Z\",\"created_at\":\"2025-01-31T21:39:33.000000Z\",\"id\":72}'),
(263, '9e1a56be-6999-40fc-8c0f-684fecf04fe2', 1, 'Create', 'App\\Models\\Unit', 73, 'App\\Models\\Unit', 73, 'App\\Models\\Unit', 73, '', 'finished', '', '2025-01-31 21:40:16', '2025-01-31 21:40:16', NULL, '{\"name\":\"304-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"3\",\"price\":\"11915000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":21,\"interior_const\":\"129.19\",\"exterior_const\":\"37.35\",\"const_total\":\"166.54\",\"updated_at\":\"2025-01-31T21:40:16.000000Z\",\"created_at\":\"2025-01-31T21:40:16.000000Z\",\"id\":73}'),
(264, '9e1a56f1-4766-481d-90ef-8d25d0d4cbaf', 1, 'Update', 'App\\Models\\Unit', 73, 'App\\Models\\Unit', 73, 'App\\Models\\Unit', 73, '', 'finished', '', '2025-01-31 21:40:49', '2025-01-31 21:40:49', '{\"exterior_const\":37.35,\"const_total\":166.54}', '{\"exterior_const\":\"41.65\",\"const_total\":\"170.84\"}'),
(265, '9e1a5901-f122-4398-b94b-8a80fc355507', 1, 'Create', 'App\\Models\\Unit', 74, 'App\\Models\\Unit', 74, 'App\\Models\\Unit', 74, '', 'finished', '', '2025-01-31 21:46:36', '2025-01-31 21:46:36', NULL, '{\"name\":\"401-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"4\",\"price\":\"10210000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":18,\"interior_const\":\"121.7\",\"exterior_const\":\"18.33\",\"const_total\":\"140.03\",\"updated_at\":\"2025-01-31T21:46:36.000000Z\",\"created_at\":\"2025-01-31T21:46:36.000000Z\",\"id\":74}'),
(266, '9e1a5939-0074-4221-b3d8-8127c1b50b97', 1, 'Create', 'App\\Models\\Unit', 75, 'App\\Models\\Unit', 75, 'App\\Models\\Unit', 75, '', 'finished', '', '2025-01-31 21:47:12', '2025-01-31 21:47:12', NULL, '{\"name\":\"402-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"4\",\"price\":\"9735000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":19,\"interior_const\":\"116.07\",\"exterior_const\":\"17.49\",\"const_total\":\"133.56\",\"updated_at\":\"2025-01-31T21:47:12.000000Z\",\"created_at\":\"2025-01-31T21:47:12.000000Z\",\"id\":75}'),
(267, '9e1a5965-078c-483a-a8cc-b2a66b152312', 1, 'Create', 'App\\Models\\Unit', 76, 'App\\Models\\Unit', 76, 'App\\Models\\Unit', 76, '', 'finished', '', '2025-01-31 21:47:41', '2025-01-31 21:47:41', NULL, '{\"name\":\"403-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"4\",\"price\":\"9950000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":20,\"interior_const\":\"118.03\",\"exterior_const\":\"20.23\",\"const_total\":\"138.26\",\"updated_at\":\"2025-01-31T21:47:41.000000Z\",\"created_at\":\"2025-01-31T21:47:41.000000Z\",\"id\":76}'),
(268, '9e1a59a2-37ce-4bf7-927a-ad48809bc9c7', 1, 'Create', 'App\\Models\\Unit', 77, 'App\\Models\\Unit', 77, 'App\\Models\\Unit', 77, '', 'finished', '', '2025-01-31 21:48:21', '2025-01-31 21:48:21', NULL, '{\"name\":\"404-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"4\",\"price\":\"11950000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":21,\"interior_const\":\"129.19\",\"exterior_const\":\"37.35\",\"const_total\":\"166.54\",\"updated_at\":\"2025-01-31T21:48:21.000000Z\",\"created_at\":\"2025-01-31T21:48:21.000000Z\",\"id\":77}'),
(269, '9e1a5dfd-dbc8-40d2-bcd9-c7c51a7f97b0', 1, 'Create', 'App\\Models\\Unit', 78, 'App\\Models\\Unit', 78, 'App\\Models\\Unit', 78, '', 'finished', '', '2025-01-31 22:00:32', '2025-01-31 22:00:32', NULL, '{\"name\":\"501-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"5\",\"price\":\"10795000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":18,\"interior_const\":\"121.7\",\"exterior_const\":\"20.23\",\"const_total\":\"141.93\",\"updated_at\":\"2025-01-31T22:00:32.000000Z\",\"created_at\":\"2025-01-31T22:00:32.000000Z\",\"id\":78}'),
(270, '9e1a5e21-26ba-43ed-8b28-d4320f79d930', 1, 'Create', 'App\\Models\\Unit', 79, 'App\\Models\\Unit', 79, 'App\\Models\\Unit', 79, '', 'finished', '', '2025-01-31 22:00:55', '2025-01-31 22:00:55', NULL, '{\"name\":\"502-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"5\",\"price\":\"10290000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":19,\"interior_const\":\"116.07\",\"exterior_const\":\"19.24\",\"const_total\":\"135.31\",\"updated_at\":\"2025-01-31T22:00:55.000000Z\",\"created_at\":\"2025-01-31T22:00:55.000000Z\",\"id\":79}'),
(271, '9e1a5e42-f166-401a-ad79-6cc87cbe30c8', 1, 'Create', 'App\\Models\\Unit', 80, 'App\\Models\\Unit', 80, 'App\\Models\\Unit', 80, '', 'finished', '', '2025-01-31 22:01:17', '2025-01-31 22:01:17', NULL, '{\"name\":\"503-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"5\",\"price\":\"10520000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":20,\"interior_const\":\"118.03\",\"exterior_const\":\"20.23\",\"const_total\":\"138.26\",\"updated_at\":\"2025-01-31T22:01:17.000000Z\",\"created_at\":\"2025-01-31T22:01:17.000000Z\",\"id\":80}'),
(272, '9e1a5eb5-9832-43d1-8fba-b209bff98bda', 1, 'Create', 'App\\Models\\Unit', 81, 'App\\Models\\Unit', 81, 'App\\Models\\Unit', 81, '', 'finished', '', '2025-01-31 22:02:32', '2025-01-31 22:02:32', NULL, '{\"name\":\"504-B\",\"tower_id\":2,\"section_id\":2,\"floor\":\"5\",\"price\":\"12795000\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":21,\"interior_const\":\"129.19\",\"exterior_const\":\"41.65\",\"const_total\":\"170.84\",\"updated_at\":\"2025-01-31T22:02:32.000000Z\",\"created_at\":\"2025-01-31T22:02:32.000000Z\",\"id\":81}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `construction_updates`
--

CREATE TABLE `construction_updates` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `portrait_path` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `construction_updates`
--

INSERT INTO `construction_updates` (`id`, `date`, `description`, `description_en`, `portrait_path`, `video_link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2024-09-11', NULL, NULL, 'RKH0MfOc9DxlVDwyQ9D5wJspPY5FlGk8eCPjKxXT.webp', 'https://www.youtube.com/watch?v=IgsrOHw-jkc&ab_channel=DomusVallarta', '2024-09-24 17:44:15', '2024-09-24 17:44:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `valid` tinyint(1) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\UnitType', 1, '19b45aa4-b52f-4117-879d-a601864c1876', 'blueprints', 'Group 214', 'group214png.png', 'image/png', 'media', 'media', 165470, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-09-13 21:35:22', '2024-09-13 21:35:23'),
(2, 'App\\Models\\UnitType', 1, '5f84e7d6-7560-43b6-930e-f0a8cc299198', 'blueprints', 'Rectangle', 'rectanglepng.png', 'image/png', 'media', 'media', 345918, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 2, '2024-09-13 21:35:23', '2024-09-13 21:35:23'),
(3, 'App\\Models\\UnitType', 1, '86eef59c-38ab-486e-ad6b-9a161a6aeaf2', 'gallery', 'Quadrant 4107_oscuro-13', 'quadrant4107oscuro-13jpg.jpg', 'image/jpeg', 'media', 'media', 797426, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-09-13 21:40:17', '2024-09-13 21:40:18'),
(4, 'App\\Models\\UnitType', 1, '24e5327a-f9d4-4e5b-b92b-1d274c01a058', 'gallery', 'Quadrant 4107_oscuro-19', 'quadrant4107oscuro-19jpg.jpg', 'image/jpeg', 'media', 'media', 534099, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 2, '2024-09-13 21:40:17', '2024-09-13 21:40:18'),
(5, 'App\\Models\\ConstructionUpdate', 1, 'c34d23eb-ffd3-4305-b307-0f0367effa43', 'gallery_construction', '01', '01.jpeg', 'image/jpeg', 'media', 'media', 390093, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-09-24 17:44:15', '2024-09-24 17:44:15'),
(6, 'App\\Models\\ConstructionUpdate', 1, '2bcd1792-41cf-4965-adb6-efb94f5b810e', 'gallery_construction', '02', '02.jpeg', 'image/jpeg', 'media', 'media', 598090, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 2, '2024-09-24 17:44:15', '2024-09-24 17:44:15'),
(7, 'App\\Models\\ConstructionUpdate', 1, '9366c9a3-b4e8-4dee-957f-471da6466cbb', 'gallery_construction', '03', '03.jpeg', 'image/jpeg', 'media', 'media', 504857, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 3, '2024-09-24 17:44:15', '2024-09-24 17:44:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `content`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Erick Pérez', 'admin@punto401.com', '3221084847', 'Prueba', 'http://localhost:8000/en/contact', '2024-09-26 17:04:30', '2024-09-26 17:04:30', NULL),
(2, 'Erick Pérez', 'admin@punto401.com', '3221084847', 'Prueba', 'http://localhost:8000/en/contact', '2024-09-26 17:05:08', '2024-09-26 17:05:08', NULL),
(3, 'Erick Pérez', 'admin@punto401.com', '3221084847', 'Prueba', 'http://localhost:8000/en/contact', '2024-09-26 17:06:25', '2024-09-26 17:06:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nova_field_attachments`
--

CREATE TABLE `nova_field_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nova_notifications`
--

CREATE TABLE `nova_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nova_pending_field_attachments`
--

CREATE TABLE `nova_pending_field_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `draft_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_plans`
--

CREATE TABLE `payment_plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `additional_discount` double DEFAULT NULL,
  `down_payment` int(11) NOT NULL,
  `second_payment` int(11) DEFAULT NULL,
  `months_percent` int(11) DEFAULT NULL,
  `closing_payment` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payment_plans`
--

INSERT INTO `payment_plans` (`id`, `name`, `name_en`, `discount`, `additional_discount`, `down_payment`, `second_payment`, `months_percent`, `closing_payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5% de descuento', '5% Discount', 5, NULL, 80, NULL, NULL, 20, '2024-12-12 18:31:43', '2024-12-12 18:31:43', NULL),
(2, '2% de descuento', '2% Discount', 2, NULL, 30, 60, NULL, 10, '2024-12-12 18:32:10', '2024-12-12 18:32:28', NULL),
(3, 'Precio de lista', 'List Price', NULL, NULL, 30, NULL, NULL, 70, '2024-12-12 18:33:10', '2024-12-12 18:33:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_plan_unit`
--

CREATE TABLE `payment_plan_unit` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `payment_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `payment_plan_unit`
--

INSERT INTO `payment_plan_unit` (`id`, `unit_id`, `payment_plan_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 36, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(2, 35, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(3, 34, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(4, 33, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(5, 32, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(6, 31, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(7, 30, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(8, 29, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(9, 28, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(10, 27, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(11, 26, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(12, 25, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(13, 24, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(14, 23, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(15, 22, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(16, 21, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(17, 20, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(18, 19, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(19, 18, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(20, 17, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(21, 16, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(22, 15, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(23, 14, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(24, 13, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(25, 12, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(26, 11, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(27, 10, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(28, 9, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(29, 8, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(30, 7, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(31, 6, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(32, 5, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(33, 4, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(34, 3, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(35, 2, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(36, 1, 1, '2024-12-12 18:35:34', '2024-12-12 18:35:34', NULL),
(37, 36, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(38, 35, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(39, 34, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(40, 33, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(41, 32, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(42, 31, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(43, 30, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(44, 29, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(45, 28, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(46, 27, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(47, 26, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(48, 25, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(49, 24, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(50, 23, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(51, 22, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(52, 21, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(53, 20, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(54, 19, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(55, 18, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(56, 17, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(57, 16, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(58, 15, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(59, 14, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(60, 13, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(61, 12, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(62, 11, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(63, 10, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(64, 9, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(65, 8, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(66, 7, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(67, 6, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(68, 5, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(69, 4, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(70, 3, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(71, 2, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(72, 1, 2, '2024-12-12 18:35:41', '2024-12-12 18:35:41', NULL),
(73, 36, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(74, 35, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(75, 34, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(76, 33, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(77, 32, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(78, 31, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(79, 30, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(80, 29, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(81, 28, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(82, 27, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(83, 26, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(84, 25, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(85, 24, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(86, 23, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(87, 22, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(88, 21, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(89, 20, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(90, 19, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(91, 18, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(92, 17, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(93, 16, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(94, 15, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(95, 14, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(96, 13, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(97, 12, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(98, 11, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(99, 10, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(100, 9, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(101, 8, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(102, 7, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(103, 6, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(104, 5, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(105, 4, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(106, 3, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(107, 2, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL),
(108, 1, 3, '2024-12-12 18:35:50', '2024-12-12 18:35:50', NULL);

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
-- Estructura de tabla para la tabla `private_messages`
--

CREATE TABLE `private_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `tower_id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `view` varchar(255) DEFAULT NULL,
  `viewbox` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `tower_id`, `name`, `view`, `viewbox`, `img_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'A', NULL, '0 0 1920 1291', 'cuZSM5MnKeCHPoPOY0OfIGQSu2eiqXFJZ8oEoTeK.webp', '2025-01-30 19:04:50', '2025-01-30 19:04:50', NULL),
(2, 2, 'B', NULL, '0 0 1920 1291', 'dzKtcQZjSOto99jTzUexF8JA4uYJvmEOFKeACeD7.webp', '2025-01-30 19:05:13', '2025-01-30 19:05:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shapes`
--

CREATE TABLE `shapes` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `points` varchar(255) DEFAULT NULL,
  `text_x` double DEFAULT NULL,
  `text_y` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `shapes`
--

INSERT INTO `shapes` (`id`, `unit_id`, `points`, `text_x`, `text_y`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '100.53 449.24 172.37 452.8 172.37 376.14 100.53 376.14 100.53 449.24', 114, 425, '2024-09-18 19:43:57', '2024-10-16 19:07:38', NULL),
(2, 2, '172.37 376.14 266.05 379.46 266.05 459.45 172.37 452.8 172.37 376.14', 190, 424, '2024-09-18 19:53:25', '2024-10-16 19:25:37', NULL),
(3, 3, '408.94 463.21 408.94 380.61 266.05 379.42 266.05 459.41 408.94 463.21', 308, 430, '2024-09-18 21:16:57', '2024-10-16 19:31:28', NULL),
(4, 6, '572.71 466.7 572.71 386.22 741 387.88 741 470.37 572.71 466.7', 627, 440, '2024-09-18 21:48:36', '2024-10-16 19:39:51', NULL),
(5, 9, '100.53 376.14 172.37 376.14 172.37 327 100.53 327 100.53 376.14', 112, 360, '2024-09-18 21:52:13', '2024-10-16 19:14:03', NULL),
(6, 10, '172.37 327 266.05 327 266.05 379.42 172.37 375.14 172.37 327', 190, 361, '2024-09-18 21:55:55', '2024-10-16 19:28:21', NULL),
(7, 12, '408.94 327 487.03 327 487.03 380.61 408.94 380.61 408.94 327', 420, 363, '2024-09-18 21:58:15', '2024-10-16 19:32:27', NULL),
(8, 14, '572.71 386.22 572.71 327.84 741 327.84 741 386.88 572.71 386.22', 627, 368, '2024-09-18 22:00:49', '2024-10-16 19:40:27', NULL),
(9, 16, '912.93 394.99 912.93 328.84 1008.5 328.84 1008.5 391.87 912.93 392.99', 931, 369, '2024-09-18 22:02:21', '2024-10-16 19:44:21', NULL),
(10, 17, '100.53 327 172.37 327 172.37 276.4 100.53 276.4 100.53 327', 112, 310, '2024-09-18 22:06:01', '2024-10-16 19:18:44', NULL),
(11, 18, '172.37 276.4 266.05 276.4 266.05 327 172.37 327 172.37 276.4', 190, 308, '2024-09-18 22:07:17', '2024-10-16 19:30:53', NULL),
(12, 20, '410.94 270.51 487.03 270.51 487.03 329 408.94 329 408.94 270.51', 420, 307, '2024-09-18 22:09:18', '2024-10-16 19:35:03', NULL),
(13, 25, '100.53 276.4 172.37 276.4 208.73 276.24 208.73 216.85 100.53 216.87 100.53 276.4', 130, 255, '2024-09-18 22:20:22', '2024-10-16 19:19:55', NULL),
(14, 27, '332.51 270.51 487.03 270.51 487.03 207.21 332.56 210.27 332.51 270.51', 380, 248, '2024-09-18 22:21:19', '2024-10-16 19:37:30', NULL),
(15, 31, '100.53 216.87 208.73 216.85 208.73 155.1 100.53 156.9 100.53 216.87', 130, 196, '2024-09-18 22:22:14', '2024-10-16 19:21:08', NULL),
(16, 35, '572.71 201.05 741 198.45 741 128.57 572.71 137.54 572.71 201.05', 627, 175, '2024-09-18 22:24:05', '2024-10-16 19:41:48', NULL),
(17, 8, '912.93 463.54 912.93 394.99 1008.5 392.87 1008.5 467.2 912.93 463.54', 934, 438, '2024-09-18 22:25:24', '2024-10-16 19:42:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `towers`
--

CREATE TABLE `towers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `secondary_name` varchar(50) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `tower_path` varchar(255) DEFAULT NULL,
  `viewbox` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `towers`
--

INSERT INTO `towers` (`id`, `name`, `secondary_name`, `slug`, `tower_path`, `viewbox`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Himalia', 'Torre 4000', 'himalia', 'M73cOms9BPIhD2STU5ZwkeaT4p0do3SINrSFB0Xb.png', '0 0 1075 1920', '2024-08-29 00:00:12', '2024-10-16 18:45:14', NULL),
(2, 'Elara', 'Torre 4000', 'elara', NULL, '0 0 1920 1080', '2025-01-30 16:38:39', '2025-01-30 16:38:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_type_id` int(11) NOT NULL,
  `tower_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` double NOT NULL,
  `currency` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `view_path` varchar(255) DEFAULT NULL,
  `interior_const` double NOT NULL,
  `exterior_const` double NOT NULL,
  `extra_exterior_const` double DEFAULT NULL,
  `patio` double DEFAULT NULL,
  `rooftop` double DEFAULT NULL,
  `garden` double DEFAULT NULL,
  `storage` double DEFAULT NULL,
  `const_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `units`
--

INSERT INTO `units` (`id`, `unit_type_id`, `tower_id`, `section_id`, `name`, `floor`, `price`, `currency`, `status`, `youtube_link`, `view_path`, `interior_const`, `exterior_const`, `extra_exterior_const`, `patio`, `rooftop`, `garden`, `storage`, `const_total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '4101', 1, 9835000, 'MXN', 'Disponible', NULL, NULL, 96.61, 10.9, NULL, NULL, NULL, NULL, NULL, 107.51, '2024-08-28 19:01:56', '2024-12-20 21:11:57', NULL),
(2, 3, 1, NULL, '4102', 1, 8385000, 'MXN', 'Disponible', NULL, NULL, 92.84, 31.9, NULL, NULL, NULL, NULL, NULL, 124.74, '2024-08-28 22:13:37', '2024-08-28 22:13:37', NULL),
(3, 2, 1, NULL, '4103', 1, 7865000, 'MXN', 'Disponible', NULL, NULL, 95.64, 21.4, NULL, NULL, NULL, NULL, NULL, 117.04, '2024-08-28 22:14:09', '2024-08-28 22:14:09', NULL),
(4, 1, 1, NULL, '4104', 1, 0, 'MXN', 'Vendida', NULL, NULL, 96.61, 10.9, NULL, NULL, NULL, NULL, NULL, 107.51, '2024-08-28 22:18:43', '2024-08-28 22:18:43', NULL),
(5, 1, 1, NULL, '4105', 1, 0, 'MXN', 'Vendida', NULL, NULL, 96.61, 10.9, NULL, NULL, NULL, NULL, NULL, 107.51, '2024-08-28 22:19:32', '2024-08-28 22:19:32', NULL),
(6, 2, 1, NULL, '4106', 1, 7865000, 'MXN', 'Disponible', NULL, NULL, 95.64, 21.4, NULL, NULL, NULL, NULL, NULL, 117.04, '2024-08-28 22:22:22', '2024-08-28 22:22:22', NULL),
(7, 3, 1, NULL, '4107', 1, 0, 'MXN', 'Vendida', NULL, NULL, 92.84, 31.9, NULL, NULL, NULL, NULL, NULL, 124.74, '2024-08-28 22:22:56', '2024-08-28 22:22:56', NULL),
(8, 5, 1, NULL, '4108', 1, 9835000, 'MXN', 'Vendida', NULL, NULL, 108.46, 37.86, NULL, NULL, NULL, NULL, NULL, 146.32, '2024-08-28 22:23:33', '2024-12-20 21:16:37', NULL),
(9, 4, 1, NULL, '4201', 2, 9015000, 'MXN', 'Disponible', NULL, NULL, 108.46, 23.63, NULL, NULL, NULL, NULL, NULL, 132.09, '2024-08-28 22:25:02', '2024-08-28 22:25:02', NULL),
(10, 8, 1, NULL, '4202', 2, 7025000, 'MXN', 'Disponible', NULL, NULL, 81.67, 21.21, NULL, NULL, NULL, NULL, NULL, 102.88, '2024-08-28 22:25:56', '2024-08-28 22:25:56', NULL),
(11, 7, 1, NULL, '4203', 2, 0, 'MXN', 'Vendida', NULL, NULL, 86.23, 9.6, NULL, NULL, NULL, NULL, NULL, 95.83, '2024-08-28 22:26:19', '2024-08-28 22:26:19', NULL),
(12, 6, 1, NULL, '4204', 2, 6590000, 'MXN', 'Disponible', NULL, NULL, 91.65, 4.91, NULL, NULL, NULL, NULL, NULL, 96.56, '2024-08-28 22:33:45', '2024-08-28 22:33:45', NULL),
(13, 6, 1, NULL, '4205', 2, 0, 'MXN', 'Vendida', NULL, NULL, 91.65, 4.91, NULL, NULL, NULL, NULL, NULL, 96.56, '2024-08-28 22:35:00', '2024-08-28 22:35:00', NULL),
(14, 7, 1, NULL, '4206', 2, 6645000, 'MXN', 'Disponible', NULL, NULL, 86.23, 9.6, NULL, NULL, NULL, NULL, NULL, 95.83, '2024-08-28 22:36:04', '2024-08-28 22:36:04', NULL),
(15, 3, 1, NULL, '4207', 2, 0, 'MXN', 'Vendida', NULL, NULL, 92.84, 31.9, NULL, NULL, NULL, NULL, NULL, 124.74, '2024-08-28 22:36:41', '2024-08-28 22:36:41', NULL),
(16, 4, 1, NULL, '4208', 2, 9015000, 'MXN', 'Disponible', NULL, NULL, 108.46, 23.63, NULL, NULL, NULL, NULL, NULL, 132.09, '2024-08-28 22:37:31', '2024-08-28 22:37:31', NULL),
(17, 4, 1, NULL, '4301', 3, 9155000, 'MXN', 'Disponible', NULL, NULL, 108.46, 23.63, NULL, NULL, NULL, NULL, NULL, 132.09, '2024-09-02 16:22:46', '2024-09-02 16:22:46', NULL),
(18, 8, 1, NULL, '4302', 3, 7130000, 'MXN', 'Disponible', NULL, NULL, 81.67, 21.21, NULL, NULL, NULL, NULL, NULL, 102.88, '2024-09-02 16:23:11', '2024-09-02 16:23:11', NULL),
(19, 7, 1, NULL, '4303', 3, 0, 'MXN', 'Vendida', NULL, NULL, 86.23, 9.6, NULL, NULL, NULL, NULL, NULL, 95.83, '2024-09-02 16:26:19', '2024-09-02 16:26:19', NULL),
(20, 6, 1, NULL, '4304', 3, 6695000, 'MXN', 'Disponible', NULL, NULL, 91.65, 4.91, NULL, NULL, NULL, NULL, NULL, 96.56, '2024-09-02 16:27:10', '2024-09-02 16:27:10', NULL),
(21, 6, 1, NULL, '4305', 3, 0, 'MXN', 'Vendida', NULL, NULL, 91.65, 4.91, NULL, NULL, NULL, NULL, NULL, 96.56, '2024-09-02 16:27:39', '2024-09-02 16:27:39', NULL),
(22, 7, 1, NULL, '4306', 3, 0, 'MXN', 'Vendida', NULL, NULL, 86.23, 9.6, NULL, NULL, NULL, NULL, NULL, 95.83, '2024-09-02 16:28:23', '2024-09-02 16:28:23', NULL),
(23, 8, 1, NULL, '4307', 3, 0, 'MXN', 'Vendida', NULL, NULL, 81.67, 21.21, NULL, NULL, NULL, NULL, NULL, 102.88, '2024-09-02 16:29:28', '2024-09-02 16:29:54', NULL),
(24, 4, 1, NULL, '4308', 3, 0, 'MXN', 'Vendida', NULL, NULL, 108.46, 23.63, NULL, NULL, NULL, NULL, NULL, 132.09, '2024-09-02 16:29:43', '2024-09-02 16:29:43', NULL),
(25, 12, 1, NULL, '4401', 4, 12330000, 'MXN', 'Vendida', NULL, NULL, 122.48, 42.49, NULL, NULL, NULL, NULL, NULL, 164.97, '2024-09-02 16:38:13', '2024-12-20 21:22:21', NULL),
(26, 10, 1, NULL, '4402', 4, 0, 'MXN', 'Vendida', NULL, NULL, 111.71, 15.89, NULL, NULL, NULL, NULL, NULL, 127.6, '2024-09-02 16:38:34', '2024-09-02 16:38:34', NULL),
(27, 9, 1, NULL, '4403', 4, 9035000, 'MXN', 'Disponible', NULL, NULL, 112.5, 15.89, NULL, NULL, NULL, NULL, NULL, 128.39, '2024-09-02 16:39:54', '2024-09-02 16:39:54', NULL),
(28, 9, 1, NULL, '4404', 4, 0, 'MXN', 'Vendida', NULL, NULL, 112.5, 15.89, NULL, NULL, NULL, NULL, NULL, 128.39, '2024-09-02 16:40:19', '2024-09-02 16:40:19', NULL),
(29, 9, 1, NULL, '4405', 4, 0, 'MXN', 'Vendida', NULL, NULL, 112.5, 15.89, NULL, NULL, NULL, NULL, NULL, 128.39, '2024-09-02 16:40:47', '2024-09-02 16:43:43', NULL),
(30, 12, 1, NULL, '4406', 4, 0, 'MXN', 'Vendida', NULL, NULL, 141.4, 33.83, NULL, NULL, NULL, NULL, NULL, 175.23, '2024-09-02 16:41:23', '2024-09-02 16:41:23', NULL),
(31, 12, 1, NULL, '4501', 5, 12475000, 'MXN', 'Vendida', NULL, NULL, 122.48, 42.49, NULL, NULL, NULL, NULL, NULL, 164.97, '2024-09-02 16:41:54', '2024-12-20 21:23:24', NULL),
(32, 10, 1, NULL, '4502', 5, 0, 'MXN', 'Vendida', NULL, NULL, 111.71, 15.89, NULL, NULL, NULL, NULL, NULL, 127.6, '2024-09-02 16:42:33', '2024-09-02 16:42:33', NULL),
(33, 9, 1, NULL, '4503', 5, 0, 'MXN', 'Vendida', NULL, NULL, 112.5, 15.89, NULL, NULL, NULL, NULL, NULL, 128.39, '2024-09-02 16:42:59', '2024-09-02 16:42:59', NULL),
(34, 9, 1, NULL, '4504', 5, 0, 'MXN', 'Vendida', NULL, NULL, 112.5, 15.89, NULL, NULL, NULL, NULL, NULL, 128.39, '2024-09-02 16:43:24', '2024-09-02 16:44:09', NULL),
(35, 10, 1, NULL, '4505', 5, 9110000, 'MXN', 'Vendida', NULL, NULL, 111.71, 15.89, NULL, NULL, NULL, NULL, NULL, 127.6, '2024-09-02 16:44:41', '2024-12-20 21:26:08', NULL),
(36, 11, 1, NULL, '4506', 5, 0, 'MXN', 'Vendida', NULL, NULL, 122.48, 42.49, NULL, NULL, NULL, NULL, NULL, 164.97, '2024-09-02 16:45:10', '2024-09-02 16:45:10', NULL),
(37, 13, 2, 1, '101-A', 1, 9235000, 'MXN', 'Disponible', NULL, NULL, 113.82, 22.17, NULL, NULL, NULL, NULL, NULL, 135.99, '2025-01-31 18:25:54', '2025-01-31 18:28:49', NULL),
(38, 14, 2, 1, '102-A', 1, 9030000, 'MXN', 'Disponible', NULL, NULL, 103.91, 28.17, NULL, NULL, NULL, NULL, NULL, 132.08, '2025-01-31 18:30:18', '2025-01-31 18:30:18', NULL),
(39, 16, 2, 1, '103-A', 1, 6375000, 'MXN', 'Disponible', NULL, NULL, 72.59, 13.33, NULL, NULL, NULL, NULL, NULL, 85.92, '2025-01-31 18:31:16', '2025-01-31 18:31:16', NULL),
(40, 16, 2, 1, '104-A', 1, 6280000, 'MXN', 'Disponible', NULL, NULL, 72.59, 13.33, NULL, NULL, NULL, NULL, NULL, 85.92, '2025-01-31 18:32:01', '2025-01-31 18:32:01', NULL),
(41, 17, 2, 1, '105-A', 1, 8160000, 'MXN', 'Disponible', NULL, NULL, 102.1, 18.4, NULL, NULL, NULL, NULL, NULL, 120.5, '2025-01-31 18:32:52', '2025-01-31 18:32:52', NULL),
(42, 13, 2, 1, '201-A', 2, 10375000, 'MXN', 'Disponible', NULL, NULL, 113.82, 40.03, NULL, NULL, NULL, NULL, NULL, 153.85, '2025-01-31 18:59:42', '2025-01-31 18:59:42', NULL),
(43, 14, 2, 1, '202-A', 2, 9780000, 'MXN', 'Disponible', NULL, NULL, 103.9, 40.39, NULL, NULL, NULL, NULL, NULL, 144.29, '2025-01-31 19:06:49', '2025-01-31 19:06:49', NULL),
(44, 15, 2, 1, '203-A', 2, 6375000, 'MXN', 'Disponible', NULL, NULL, 72.59, 14.3, NULL, NULL, NULL, NULL, NULL, 86.89, '2025-01-31 19:07:23', '2025-01-31 19:07:23', NULL),
(45, 16, 2, 1, '204-A', 2, 6285000, 'MXN', 'Disponible', NULL, NULL, 72.59, 14.3, NULL, NULL, NULL, NULL, NULL, 86.89, '2025-01-31 19:10:26', '2025-01-31 19:10:26', NULL),
(46, 17, 2, 1, '205-A', 2, 8530000, 'MXN', 'Disponible', NULL, NULL, 102.1, 20.07, NULL, NULL, NULL, NULL, NULL, 122.17, '2025-01-31 19:11:27', '2025-01-31 19:11:27', NULL),
(47, 13, 2, 1, '301-A', 3, 10540000, 'MXN', 'Disponible', NULL, NULL, 113.82, 40.14, NULL, NULL, NULL, NULL, NULL, 153.96, '2025-01-31 19:35:15', '2025-01-31 19:35:15', NULL),
(48, 14, 2, 1, '302-A', 3, 9925000, 'MXN', 'Disponible', NULL, NULL, 103.9, 40.35, NULL, NULL, NULL, NULL, NULL, 144.25, '2025-01-31 19:36:01', '2025-01-31 19:36:01', NULL),
(49, 15, 2, 1, '303-A', 3, 6510000, 'MXN', 'Disponible', NULL, NULL, 72.59, 14.24, NULL, NULL, NULL, NULL, NULL, 86.83, '2025-01-31 19:36:55', '2025-01-31 19:36:55', NULL),
(50, 16, 2, 1, '304-A', 3, 6420000, 'MXN', 'Disponible', NULL, NULL, 72.59, 14.24, NULL, NULL, NULL, NULL, NULL, 86.83, '2025-01-31 19:37:33', '2025-01-31 19:37:33', NULL),
(51, 17, 2, 1, '305-A', 3, 8655000, 'MXN', 'Disponible', NULL, NULL, 102.1, 20.01, NULL, NULL, NULL, NULL, NULL, 122.11, '2025-01-31 19:37:55', '2025-01-31 19:37:55', NULL),
(52, 13, 2, 1, '401-A', 4, 10565000, 'MXN', 'Disponible', NULL, NULL, 113.82, 46, NULL, NULL, NULL, NULL, NULL, 159.82, '2025-01-31 19:57:27', '2025-01-31 19:57:27', NULL),
(53, 14, 2, 1, '402-A', 4, 9790000, 'MXN', 'Disponible', NULL, NULL, 103.9, 46.25, NULL, NULL, NULL, NULL, NULL, 150.15, '2025-01-31 19:57:59', '2025-01-31 19:57:59', NULL),
(54, 15, 2, 1, '403-A', 4, 6625000, 'MXN', 'Disponible', NULL, NULL, 72.59, 12.84, NULL, NULL, NULL, NULL, NULL, 85.43, '2025-01-31 19:59:20', '2025-01-31 19:59:20', NULL),
(55, 16, 2, 1, '404-A', 4, 6535000, 'MXN', 'Disponible', NULL, NULL, 72.59, 12.84, NULL, NULL, NULL, NULL, NULL, 85.43, '2025-01-31 19:59:53', '2025-01-31 19:59:53', NULL),
(56, 17, 2, 1, '405-A', 4, 8645000, 'MXN', 'Disponible', NULL, NULL, 102.15, 18.13, NULL, NULL, NULL, NULL, NULL, 120.28, '2025-01-31 20:00:36', '2025-01-31 20:00:36', NULL),
(57, 13, 2, 1, '501-A', 5, 11335000, 'MXN', 'Disponible', NULL, NULL, 113.82, 40.14, NULL, NULL, NULL, NULL, NULL, 153.96, '2025-01-31 21:11:07', '2025-01-31 21:11:07', NULL),
(58, 14, 2, 1, '502-A', 5, 10680000, 'MXN', 'Disponible', NULL, NULL, 103.9, 40.35, NULL, NULL, NULL, NULL, NULL, 144.25, '2025-01-31 21:11:48', '2025-01-31 21:11:48', NULL),
(59, 15, 2, 1, '503-A', 5, 7005000, 'MXN', 'Disponible', NULL, NULL, 72.59, 14.24, NULL, NULL, NULL, NULL, NULL, 86.83, '2025-01-31 21:12:17', '2025-01-31 21:12:17', NULL),
(60, 16, 2, 1, '504-A', 5, 6915000, 'MXN', 'Vendida', NULL, NULL, 73.13, 14.24, NULL, NULL, NULL, NULL, NULL, 87.37, '2025-01-31 21:15:47', '2025-01-31 21:15:47', NULL),
(61, 17, 2, 1, '505-A', 5, 9020000, 'MXN', 'Disponible', NULL, NULL, 102.1, 20.01, NULL, NULL, NULL, NULL, NULL, 122.11, '2025-01-31 21:16:12', '2025-01-31 21:16:12', NULL),
(62, 18, 2, 2, '101-B', 1, 9670000, 'MXN', 'Disponible', NULL, NULL, 121.7, 18.6, NULL, NULL, NULL, NULL, NULL, 140.3, '2025-01-31 21:21:51', '2025-01-31 21:24:53', NULL),
(63, 19, 2, 2, '102-B', 1, 9230000, 'MXN', 'Disponible', NULL, NULL, 116.07, 18.04, NULL, NULL, NULL, NULL, NULL, 134.11, '2025-01-31 21:23:52', '2025-01-31 21:25:58', NULL),
(64, 20, 2, 2, '103-B', 1, 9275000, 'MXN', 'Disponible', NULL, NULL, 118.04, 18.6, NULL, NULL, NULL, NULL, NULL, 136.64, '2025-01-31 21:28:33', '2025-01-31 21:28:33', NULL),
(65, 21, 2, 2, '104-B', 1, 10625000, 'MXN', 'Disponible', NULL, NULL, 129.19, 27.63, NULL, NULL, NULL, NULL, NULL, 156.82, '2025-01-31 21:29:24', '2025-01-31 21:29:24', NULL),
(66, 18, 2, 2, '201-B', 2, 9910000, 'MXN', 'Disponible', NULL, NULL, 121.7, 20.29, NULL, NULL, NULL, NULL, NULL, 141.99, '2025-01-31 21:30:32', '2025-01-31 21:30:32', NULL),
(67, 19, 2, 2, '202-B', 2, 9450000, 'MXN', 'Disponible', NULL, NULL, 116.07, 19.36, NULL, NULL, NULL, NULL, NULL, 135.43, '2025-01-31 21:31:11', '2025-01-31 21:31:11', NULL),
(68, 20, 2, 2, '203-B', 2, 9520000, 'MXN', 'Disponible', NULL, NULL, 118.03, 20.29, NULL, NULL, NULL, NULL, NULL, 138.32, '2025-01-31 21:36:22', '2025-01-31 21:36:22', NULL),
(69, 21, 2, 2, '204-B', 2, 11385000, 'MXN', 'Disponible', NULL, NULL, 129.19, 27.63, NULL, NULL, NULL, NULL, NULL, 156.82, '2025-01-31 21:37:08', '2025-01-31 21:37:08', NULL),
(70, 18, 2, 2, '301-B', 3, 10055000, 'MXN', 'Disponible', NULL, NULL, 121.7, 20.23, NULL, NULL, NULL, NULL, NULL, 141.93, '2025-01-31 21:38:04', '2025-01-31 21:38:04', NULL),
(71, 19, 2, 2, '302-B', 3, 9585000, 'MXN', 'Disponible', NULL, NULL, 116.07, 19.24, NULL, NULL, NULL, NULL, NULL, 135.31, '2025-01-31 21:39:05', '2025-01-31 21:39:05', NULL),
(72, 20, 2, 2, '303-B', 3, 9800000, 'MXN', 'Disponible', NULL, NULL, 118.03, 20.23, NULL, NULL, NULL, NULL, NULL, 138.26, '2025-01-31 21:39:33', '2025-01-31 21:39:33', NULL),
(73, 21, 2, 2, '304-B', 3, 11915000, 'MXN', 'Disponible', NULL, NULL, 129.19, 41.65, NULL, NULL, NULL, NULL, NULL, 170.84, '2025-01-31 21:40:16', '2025-01-31 21:40:49', NULL),
(74, 18, 2, 2, '401-B', 4, 10210000, 'MXN', 'Disponible', NULL, NULL, 121.7, 18.33, NULL, NULL, NULL, NULL, NULL, 140.03, '2025-01-31 21:46:36', '2025-01-31 21:46:36', NULL),
(75, 19, 2, 2, '402-B', 4, 9735000, 'MXN', 'Disponible', NULL, NULL, 116.07, 17.49, NULL, NULL, NULL, NULL, NULL, 133.56, '2025-01-31 21:47:12', '2025-01-31 21:47:12', NULL),
(76, 20, 2, 2, '403-B', 4, 9950000, 'MXN', 'Disponible', NULL, NULL, 118.03, 20.23, NULL, NULL, NULL, NULL, NULL, 138.26, '2025-01-31 21:47:41', '2025-01-31 21:47:41', NULL),
(77, 21, 2, 2, '404-B', 4, 11950000, 'MXN', 'Disponible', NULL, NULL, 129.19, 37.35, NULL, NULL, NULL, NULL, NULL, 166.54, '2025-01-31 21:48:21', '2025-01-31 21:48:21', NULL),
(78, 18, 2, 2, '501-B', 5, 10795000, 'MXN', 'Disponible', NULL, NULL, 121.7, 20.23, NULL, NULL, NULL, NULL, NULL, 141.93, '2025-01-31 22:00:32', '2025-01-31 22:00:32', NULL),
(79, 19, 2, 2, '502-B', 5, 10290000, 'MXN', 'Disponible', NULL, NULL, 116.07, 19.24, NULL, NULL, NULL, NULL, NULL, 135.31, '2025-01-31 22:00:55', '2025-01-31 22:00:55', NULL),
(80, 20, 2, 2, '503-B', 5, 10520000, 'MXN', 'Disponible', NULL, NULL, 118.03, 20.23, NULL, NULL, NULL, NULL, NULL, 138.26, '2025-01-31 22:01:17', '2025-01-31 22:01:17', NULL),
(81, 21, 2, 2, '504-B', 5, 12795000, 'MXN', 'Disponible', NULL, NULL, 129.19, 41.65, NULL, NULL, NULL, NULL, NULL, 170.84, '2025-01-31 22:02:32', '2025-01-31 22:02:32', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_types`
--

CREATE TABLE `unit_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `flexrooms` int(11) DEFAULT NULL,
  `bathrooms` double NOT NULL,
  `interior_const` double NOT NULL,
  `parking_spaces` double DEFAULT NULL,
  `exterior_const` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unit_types`
--

INSERT INTO `unit_types` (`id`, `name`, `bedrooms`, `flexrooms`, `bathrooms`, `interior_const`, `parking_spaces`, `exterior_const`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A', 2, NULL, 2, 96.61, NULL, 10.9, '2024-08-29 00:17:20', '2024-08-29 00:17:20', NULL),
(2, 'B', 2, NULL, 2, 95.64, NULL, 21.4, '2024-08-28 19:47:52', '2024-08-28 19:48:18', NULL),
(3, 'C', 2, NULL, 2, 92.84, NULL, 31.9, '2024-08-28 19:48:48', '2024-08-28 19:48:48', NULL),
(4, 'D', 2, NULL, 2, 108.46, NULL, 23.63, '2024-08-28 19:49:20', '2024-08-28 19:49:20', NULL),
(5, 'D1', 2, NULL, 2, 108.46, NULL, 37.86, '2024-08-28 19:49:43', '2024-08-28 19:49:43', NULL),
(6, 'E', 2, NULL, 2, 91.65, NULL, 4.91, '2024-08-28 19:50:30', '2024-08-28 19:50:30', NULL),
(7, 'F', 2, NULL, 2, 86.23, NULL, 9.6, '2024-08-28 19:51:07', '2024-08-28 19:51:07', NULL),
(8, 'G', 2, NULL, 2, 81.67, NULL, 21.21, '2024-08-28 19:51:40', '2024-08-28 19:51:40', NULL),
(9, 'H', 3, NULL, 2, 112.5, NULL, 15.89, '2024-08-28 19:52:05', '2024-08-28 19:52:05', NULL),
(10, 'I', 3, NULL, 2, 111.71, NULL, 15.89, '2024-08-28 19:52:46', '2024-08-28 19:52:46', NULL),
(11, 'J', 3, NULL, 3, 122.48, NULL, 42.49, '2024-08-28 19:53:14', '2024-08-28 19:53:14', NULL),
(12, 'J1', 3, NULL, 3, 122.48, NULL, 42.49, '2024-08-28 19:53:35', '2024-08-28 19:53:35', NULL),
(13, '01-A', 2, NULL, 2, 113.82, NULL, 22.17, '2025-01-30 17:10:31', '2025-01-30 17:10:31', NULL),
(14, '02-A', 2, NULL, 2, 103.9, NULL, 28.17, '2025-01-30 17:10:52', '2025-01-30 17:10:52', NULL),
(15, '03-A', 1, NULL, 2, 72.59, NULL, 13.32, '2025-01-30 17:11:14', '2025-01-30 17:11:14', NULL),
(16, '04-A', 1, NULL, 2, 72.59, NULL, 14.24, '2025-01-30 17:11:48', '2025-01-30 17:11:48', NULL),
(17, '05-A', 2, NULL, 2, 102.1, NULL, 20.01, '2025-01-30 17:12:13', '2025-01-30 17:12:13', NULL),
(18, '01-B', 2, 1, 2, 121.7, NULL, 20.24, '2025-01-30 17:12:47', '2025-01-30 17:12:47', NULL),
(19, '02-B', 2, 1, 2, 116.07, NULL, 19.24, '2025-01-30 17:13:17', '2025-01-30 17:13:17', NULL),
(20, '03-B', 2, 1, 2, 118.03, NULL, 20.23, '2025-01-30 17:21:54', '2025-01-30 17:21:54', NULL),
(21, '04-B', 2, 1, 2, 129.19, NULL, 27.63, '2025-01-30 17:22:23', '2025-01-30 17:22:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_user`
--

CREATE TABLE `unit_user` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unit_user`
--

INSERT INTO `unit_user` (`id`, `unit_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'es',
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'client' COMMENT 'superadmin,admin,agent, client',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `agent_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `lang`, `country_code`, `email_verified_at`, `password`, `role`, `notes`, `agent_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Erick Pérez', 'erick@punto401.com', '3221084848', 'es', NULL, NULL, '$2y$12$ckCD0lYyCs3Ti6euCb6bv.Tw/iuZjye6xCiVhWpcLIWYyh6sHxj/y', 'superadmin', NULL, NULL, 'MAi7z8Sm9drJ98J1G3dbMEAFOJr4n73ynPpPHMzD20xaTW4WlaoB5WAfFPeP', '2024-08-28 00:30:14', '2024-09-24 18:16:50', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_target_type_target_id_index` (`target_type`,`target_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indices de la tabla `construction_updates`
--
ALTER TABLE `construction_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nova_field_attachments`
--
ALTER TABLE `nova_field_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_field_attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`),
  ADD KEY `nova_field_attachments_url_index` (`url`);

--
-- Indices de la tabla `nova_notifications`
--
ALTER TABLE `nova_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `nova_pending_field_attachments`
--
ALTER TABLE `nova_pending_field_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_pending_field_attachments_draft_id_index` (`draft_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payment_plans`
--
ALTER TABLE `payment_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_plan_unit`
--
ALTER TABLE `payment_plan_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `private_messages`
--
ALTER TABLE `private_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tower_id` (`tower_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `shapes`
--
ALTER TABLE `shapes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indices de la tabla `towers`
--
ALTER TABLE `towers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `unit_type_id` (`unit_type_id`),
  ADD KEY `section_id` (`tower_id`),
  ADD KEY `section_id_2` (`section_id`);

--
-- Indices de la tabla `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit_user`
--
ALTER TABLE `unit_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `agent_id` (`agent_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de la tabla `construction_updates`
--
ALTER TABLE `construction_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nova_field_attachments`
--
ALTER TABLE `nova_field_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nova_pending_field_attachments`
--
ALTER TABLE `nova_pending_field_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_plans`
--
ALTER TABLE `payment_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `payment_plan_unit`
--
ALTER TABLE `payment_plan_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `private_messages`
--
ALTER TABLE `private_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `shapes`
--
ALTER TABLE `shapes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `towers`
--
ALTER TABLE `towers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `unit_user`
--
ALTER TABLE `unit_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
