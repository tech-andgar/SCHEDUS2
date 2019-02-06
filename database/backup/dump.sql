-- --------------------------------------------------------
-- Host:                         remotemysql.com
-- Server version:               5.7.22 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             10.1.0.5473
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for 0B8tZeymzk
DROP DATABASE IF EXISTS `0B8tZeymzk`;
CREATE DATABASE IF NOT EXISTS `0B8tZeymzk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `0B8tZeymzk`;

-- Dumping structure for table 0B8tZeymzk.actividad_proyecto
DROP TABLE IF EXISTS `actividad_proyecto`;
CREATE TABLE IF NOT EXISTS `actividad_proyecto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proyecto_id` int(10) unsigned DEFAULT NULL,
  `fase_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actividad_proyecto_name_unique` (`name`),
  KEY `actividad_proyecto_proyecto_id_index` (`proyecto_id`),
  KEY `actividad_proyecto_fase_id_index` (`fase_id`),
  CONSTRAINT `actividad_proyecto_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fase` (`id`),
  CONSTRAINT `actividad_proyecto_proyecto_id_foreign` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.actividad_proyecto: ~0 rows (approximately)
DELETE FROM `actividad_proyecto`;
/*!40000 ALTER TABLE `actividad_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad_proyecto` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.ambiente
DROP TABLE IF EXISTS `ambiente`;
CREATE TABLE IF NOT EXISTS `ambiente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_id` int(10) unsigned DEFAULT NULL,
  `estado_ambiente_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ambiente_sede_id_index` (`sede_id`),
  KEY `ambiente_estado_ambiente_id_index` (`estado_ambiente_id`),
  CONSTRAINT `ambiente_estado_ambiente_id_foreign` FOREIGN KEY (`estado_ambiente_id`) REFERENCES `estado_ambiente` (`id`),
  CONSTRAINT `ambiente_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.ambiente: ~57 rows (approximately)
DELETE FROM `ambiente`;
/*!40000 ALTER TABLE `ambiente` DISABLE KEYS */;
INSERT INTO `ambiente` (`id`, `number`, `sede_id`, `estado_ambiente_id`, `created_at`, `updated_at`) VALUES
	(1, '300', 1, 1, '2019-01-31 02:55:05', '2019-02-06 01:36:12'),
	(2, '302', 1, 1, '2019-01-31 02:55:53', NULL),
	(3, '303', 1, 1, '2019-01-31 02:56:39', NULL),
	(4, '306', 1, 1, '2019-02-06 01:50:40', NULL),
	(5, '317', 1, 1, '2019-02-06 01:51:08', NULL),
	(6, 'ZONA DEPORTIVA PATIO 1', 1, 1, '2019-02-06 01:51:35', NULL),
	(7, 'SOTANO', 2, 1, '2019-01-30 21:59:36', NULL),
	(8, 'AUDITORIO', 2, 1, '2019-02-06 01:22:10', NULL),
	(9, '103', 2, 1, '2019-02-06 01:25:58', NULL),
	(10, '201', 2, 1, '2019-02-06 01:26:51', NULL),
	(11, '202', 2, 1, '2019-02-06 01:29:58', NULL),
	(12, '203', 2, 1, '2019-02-06 01:30:40', NULL),
	(13, '301', 2, 1, '2019-02-06 01:31:48', NULL),
	(14, '302', 2, 1, '2019-02-06 01:32:20', NULL),
	(15, '303', 2, 1, '2019-02-06 01:33:03', NULL),
	(16, '401', 2, 1, '2019-02-06 01:33:28', NULL),
	(17, '402', 2, 1, '2019-02-06 01:33:44', NULL),
	(18, '403', 2, 1, '2019-02-06 01:34:04', NULL),
	(19, '501', 2, 1, '2019-02-06 01:34:24', NULL),
	(20, '502', 2, 1, '2019-02-06 01:34:43', NULL),
	(21, '503', 2, 1, '2019-02-06 01:35:10', NULL),
	(22, '601', 2, 1, '2019-02-06 01:40:02', NULL),
	(23, '602', 2, 1, '2019-02-06 01:40:28', NULL),
	(24, '603', 2, 1, '2019-02-06 01:40:55', NULL),
	(25, '201', 3, 1, '2019-02-06 01:41:30', NULL),
	(26, '202', 3, 1, '2019-02-06 01:42:31', NULL),
	(27, '203', 3, 1, '2019-02-06 01:42:51', NULL),
	(28, '204', 3, 1, '2019-02-06 01:43:15', NULL),
	(29, '205', 3, 1, '2019-02-06 01:43:40', NULL),
	(30, '301', 3, 1, '2019-02-06 01:43:58', NULL),
	(31, '302', 3, 1, '2019-02-06 01:44:23', NULL),
	(32, '303', 3, 1, '2019-02-06 01:44:44', NULL),
	(33, '304', 3, 1, '2019-02-06 01:47:55', NULL),
	(34, '305', 3, 1, '2019-02-06 01:48:12', NULL),
	(35, '401', 3, 1, '2019-02-06 01:48:30', NULL),
	(36, '402', 3, 1, '2019-02-06 01:52:36', NULL),
	(37, '403', 3, 1, '2019-02-06 01:53:36', NULL),
	(38, '405', 3, 1, '2019-01-30 21:59:38', NULL),
	(39, '100', 4, 1, '2019-02-06 01:52:08', NULL),
	(40, '102', 4, 1, '2019-02-06 16:17:01', '2019-02-06 21:10:04'),
	(41, 'AUDITORIO', 4, 1, '2019-02-06 16:16:59', NULL),
	(42, '200', 4, 1, '2019-02-06 16:16:57', NULL),
	(43, '201', 4, 1, '2019-02-06 16:16:55', NULL),
	(44, '202', 4, 1, '2019-02-06 16:16:53', NULL),
	(45, 'CAFE-LIBRO', 4, 1, '2019-02-06 16:16:51', NULL),
	(46, '300', 4, 1, '2019-02-06 16:16:50', NULL),
	(47, '301', 4, 1, '2019-02-06 16:16:47', NULL),
	(48, '302', 4, 1, '2019-02-06 16:16:45', NULL),
	(49, '303', 4, 1, '2019-02-06 16:16:41', NULL),
	(50, '305', 4, 1, '2019-02-06 16:17:22', NULL),
	(51, '307', 4, 1, '2019-02-06 16:17:33', NULL),
	(52, '400', 4, 1, '2019-02-06 16:17:45', NULL),
	(53, '401', 4, 1, '2019-02-06 16:17:55', NULL),
	(54, '402', 4, 1, '2019-02-06 16:18:06', NULL),
	(55, '403', 4, 1, '2019-02-06 16:18:15', NULL),
	(56, '405', 4, 1, '2019-02-06 16:18:29', NULL),
	(57, '407', 4, 1, '2019-02-06 16:18:40', NULL);
/*!40000 ALTER TABLE `ambiente` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_apicustom
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_apicustom: ~0 rows (approximately)
DELETE FROM `cms_apicustom`;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_apikey
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_apikey: ~0 rows (approximately)
DELETE FROM `cms_apikey`;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_dashboard
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_dashboard: ~0 rows (approximately)
DELETE FROM `cms_dashboard`;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_email_queues
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_email_queues: ~0 rows (approximately)
DELETE FROM `cms_email_queues`;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_email_templates
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_email_templates: ~1 rows (approximately)
DELETE FROM `cms_email_templates`;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
	(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-01-30 22:58:48', NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_logs
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_logs: ~142 rows (approximately)
DELETE FROM `cms_logs`;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/logout', 'afgarcia0479@misena.edu.co se desconectó', '', 2, '2019-01-30 23:00:51', NULL),
	(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 127.0.0.1', '', 2, '2019-01-30 23:01:51', NULL),
	(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información primary en Configuración color', '', 2, '2019-01-31 02:07:02', NULL),
	(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información secondary en Configuración color', '', 2, '2019-01-31 02:07:33', NULL),
	(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información success en Configuración color', '', 2, '2019-01-31 02:08:05', NULL),
	(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información danger en Configuración color', '', 2, '2019-01-31 02:08:35', NULL),
	(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información warning en Configuración color', '', 2, '2019-01-31 02:09:06', NULL),
	(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información info en Configuración color', '', 2, '2019-01-31 02:09:36', NULL),
	(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información light en Configuración color', '', 2, '2019-01-31 02:10:22', NULL),
	(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información dark en Configuración color', '', 2, '2019-01-31 02:11:21', NULL),
	(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información muted en Configuración color', '', 2, '2019-01-31 02:12:17', NULL),
	(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/status_color/add-save', 'Añadir nueva información white en Configuración color', '', 2, '2019-01-31 02:13:30', NULL),
	(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/estado_ambiente/add-save', 'Añadir nueva información Libre en Estado Ambiente', '', 2, '2019-01-31 02:24:06', NULL),
	(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/estado_ambiente/add-save', 'Añadir nueva información Ocupado en Estado Ambiente', '', 2, '2019-01-31 02:25:44', NULL),
	(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Añadir nueva información Ambiente en Gestión de Menús', '', 2, '2019-01-31 02:42:28', NULL),
	(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/sede/add-save', 'Añadir nueva información Complejo Sur en Sede', '', 2, '2019-01-31 02:49:31', NULL),
	(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/sede/add-save', 'Añadir nueva información Barrio Colombia en Sede', '', 2, '2019-01-31 02:50:31', NULL),
	(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/sede/add-save', 'Añadir nueva información Barrio Restrepo en Sede', '', 2, '2019-01-31 02:51:16', NULL),
	(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-01-31 02:53:30', NULL),
	(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-01-31 02:54:18', NULL),
	(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-01-31 02:55:06', NULL),
	(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-01-31 02:55:54', NULL),
	(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-01-31 02:56:40', NULL),
	(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-01-31 02:57:25', NULL),
	(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'http://localhost:8000/admin/logout', 'afgarcia0479@misena.edu.co se desconectó', '', 2, '2019-01-31 03:25:51', NULL),
	(26, '10.47.234.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 10.47.234.240', '', 1, '2019-01-31 03:25:47', NULL),
	(27, '10.61.185.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/add-save', 'Añadir nueva información Gestion de proyecto en Gestión de Menús', '', 1, '2019-01-31 03:32:15', NULL),
	(28, '10.45.185.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/8', 'Actualizar información Actividad Proyecto en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:33:29', NULL),
	(29, '10.45.230.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/7', 'Actualizar información Proyecto en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:34:43', NULL),
	(30, '10.31.68.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/6', 'Actualizar información Fase en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:35:44', NULL),
	(31, '10.45.77.207', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/5', 'Actualizar información Gestion de Ambiente en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Ambiente</td><td>Gestion de Ambiente</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:36:53', NULL),
	(32, '10.143.251.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/3', 'Actualizar información Ambiente Formacion en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Ambiente Formación</td><td>Ambiente Formacion</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:38:49', NULL),
	(33, '10.65.230.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/2', 'Actualizar información Estado Ambiente en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:40:02', NULL),
	(34, '10.61.157.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/4', 'Actualizar información Sede en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-01-31 03:40:54', NULL),
	(35, '10.65.230.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2019-01-31 03:41:47', NULL),
	(36, '10.47.229.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de dpinzoncas@misena.edu.co desde la Dirección IP 10.47.229.186', '', 4, '2019-01-31 03:42:10', NULL),
	(37, '10.65.253.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/logout', 'dpinzoncas@misena.edu.co se desconectó', '', 4, '2019-01-31 03:43:39', NULL),
	(38, '10.35.218.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 10.35.218.93', '', 2, '2019-01-31 03:44:18', NULL),
	(39, '10.41.219.86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 'https://schedus.herokuapp.com/admin/logout', 'afgarcia0479@misena.edu.co se desconectó', '', 2, '2019-01-31 03:46:04', NULL),
	(40, '10.179.231.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 10.179.231.59', '', 2, '2019-02-04 18:22:49', NULL),
	(41, '10.45.66.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/logout', 'afgarcia0479@misena.edu.co se desconectó', '', 2, '2019-02-04 18:24:07', NULL),
	(42, '10.45.66.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 10.45.66.173', '', 2, '2019-02-04 18:24:31', NULL),
	(43, '10.166.115.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 10.166.115.234', '', 2, '2019-02-04 18:27:16', NULL),
	(44, '10.71.203.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-02-04 18:28:20', NULL),
	(45, '10.43.205.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 2, '2019-02-04 18:28:30', NULL),
	(46, '10.43.205.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/ambiente_formacion/action-selected', 'Eliminar información 14,15 en Ambiente Formación', '', 2, '2019-02-04 18:28:42', NULL),
	(47, '10.71.203.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/users/edit-save/2', 'Actualizar información Andrés García en Gestión de usuarios', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/2/2019-02/serveimage.png</td></tr><tr><td>password</td><td>$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 2, '2019-02-04 18:30:44', NULL),
	(48, '10.71.203.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/logout', 'afgarcia0479@misena.edu.co se desconectó', '', 2, '2019-02-04 18:31:03', NULL),
	(49, '10.67.160.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 10.67.160.158', '', 2, '2019-02-04 18:31:26', NULL),
	(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de afgarcia0479@misena.edu.co desde la Dirección IP 127.0.0.1', '', 2, '2019-02-04 18:38:59', NULL),
	(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/nivel_programa_formacion/add-save', 'Añadir nueva información Técnico en Nivel programa formación', '', 2, '2019-02-04 18:43:21', NULL),
	(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/nivel_programa_formacion/add-save', 'Añadir nueva información Tecnología en Nivel programa formación', '', 2, '2019-02-04 18:44:07', NULL),
	(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/nivel_programa_formacion/add-save', 'Añadir nueva información Profesional en Nivel programa formación', '', 2, '2019-02-04 18:44:42', NULL),
	(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ggalarcon@misena.edu.co desde la Dirección IP 127.0.0.1', '', 5, '2019-02-04 18:52:13', NULL),
	(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/5', 'Actualizar información Germán Gilberto Alacrón en Gestión de usuarios', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/2/2019-02/serveimage.png</td></tr><tr><td>password</td><td>$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS</td><td></td></tr><tr><td>id_cms_privileges</td><td>0</td><td>2</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 2, '2019-02-04 18:53:08', NULL),
	(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ggalarcon@misena.edu.co se desconectó', '', 5, '2019-02-04 18:53:17', NULL),
	(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/estado_programa_formacion/add-save', 'Añadir nueva información Activo en Estado programa de formación', '', 2, '2019-02-04 18:53:53', NULL),
	(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ggalarcon@misena.edu.co desde la Dirección IP 127.0.0.1', '', 5, '2019-02-04 18:54:04', NULL),
	(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/estado_programa_formacion/add-save', 'Añadir nueva información Inactivo en Estado programa de formación', '', 2, '2019-02-04 18:59:24', NULL),
	(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/4', 'Actualizar información Diana Carolina Pinzon en Gestión de usuarios', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/2/2019-02/serveimage.png</td></tr><tr><td>password</td><td>$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS</td><td></td></tr><tr><td>id_cms_privileges</td><td>0</td><td>3</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 2, '2019-02-04 19:03:35', NULL),
	(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 'http://localhost:8000/admin/login', 'Ingreso de dpinzoncas@misena.edu.co desde la Dirección IP 127.0.0.1', '', 4, '2019-02-04 19:11:16', NULL),
	(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Añadir nueva información Gestion de Usuarios en Gestión de Menús', '', 2, '2019-02-04 19:15:29', NULL),
	(63, '10.41.163.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/add-save', 'Añadir nueva información Gestion Programa de Formacion en Gestión de Menús', '', 2, '2019-02-04 21:05:07', NULL),
	(64, '10.45.63.201', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/13', 'Actualizar información Gestion Programa Formacion en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Gestion Programa de Formacion</td><td>Gestion Programa Formacion</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 2, '2019-02-04 21:10:55', NULL),
	(65, '10.35.211.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/13', 'Actualizar información Gestion Prog Formacion en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Gestion Programa Formacion</td><td>Gestion Prog Formacion</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 2, '2019-02-04 21:12:29', NULL),
	(66, '10.65.240.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/menu_management/edit-save/11', 'Actualizar información Estado programa de formacion en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Estado programa de formación</td><td>Estado programa de formacion</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-toggle-off</td><td>fa fa-toggle-on</td></tr><tr><td>parent_id</td><td>13</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 2, '2019-02-04 21:13:22', NULL),
	(67, '10.45.115.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/module_generator/delete/21', 'Eliminar información Programa de Formación en Generador de Módulos', '', 2, '2019-02-04 21:15:14', NULL),
	(68, '10.45.115.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/module_generator/delete/22', 'Eliminar información Prog. Formación en Generador de Módulos', '', 2, '2019-02-04 21:17:53', NULL),
	(69, '10.45.115.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'https://schedus.herokuapp.com/admin/module_generator/delete/21', 'Eliminar información Programa de Formación en Generador de Módulos', '', 2, '2019-02-04 21:19:10', NULL),
	(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/1', 'Actualizar información Super Admin en Gestión de usuarios', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/2/2019-02/serveimage.png</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>schedus@gmail.com</td></tr><tr><td>password</td><td>$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 2, '2019-02-04 21:57:49', NULL),
	(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Añadir nueva información Gestion Resultado Aprendizaje en Gestión de Menús', '', 2, '2019-02-04 22:08:52', NULL),
	(72, '10.97.234.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://schedus.herokuapp.com/admin/login', 'Ingreso de schedus@gmail.com desde la Dirección IP 10.97.234.47', '', 1, '2019-02-04 22:52:26', NULL),
	(73, '10.45.185.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://schedus.herokuapp.com/admin/users/delete-image', 'Eliminar la imagen de Super Admin en Gestión de usuarios', '', 1, '2019-02-04 22:54:06', NULL),
	(74, '10.45.185.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://schedus.herokuapp.com/admin/users/edit-save/1', 'Actualizar información Super Admin en Gestión de usuarios', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-02/serveimage.png</td></tr><tr><td>password</td><td>$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-02-04 22:54:17', NULL),
	(75, '10.81.195.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://schedus.herokuapp.com/admin/logout', 'schedus@gmail.com se desconectó', '', 1, '2019-02-04 22:54:37', NULL),
	(76, '10.37.186.183', 'Mozilla/5.0 (iPad; CPU OS 12_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/8.1.1 Mobile/16C50 Safari/605.1.15', 'http://schedus.herokuapp.com/admin/login', 'Ingreso de schedus@gmail.com desde la Dirección IP 10.37.186.183', '', 1, '2019-02-05 00:29:13', NULL),
	(77, '10.37.186.183', 'Mozilla/5.0 (iPad; CPU OS 12_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/8.1.1 Mobile/16C50 Safari/605.1.15', 'http://schedus.herokuapp.com/admin/logout', 'schedus@gmail.com se desconectó', '', 1, '2019-02-05 00:31:00', NULL),
	(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de schedus@gmail.com desde la Dirección IP 127.0.0.1', '', 1, '2019-02-05 13:47:04', NULL),
	(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Añadir nueva información Gestion de Ficha en Gestión de Menús', '', 1, '2019-02-05 13:53:18', NULL),
	(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/23', 'Actualizar información Ficha en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr></tbody></table>', 1, '2019-02-05 14:07:33', NULL),
	(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/24', 'Actualizar información Ruta de Ficha en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-02-05 14:09:54', NULL),
	(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/19', 'Actualizar información Resultado de aprendizaje en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr></tbody></table>', 1, '2019-02-05 14:11:56', NULL),
	(83, '10.35.211.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; en-US) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11D257 UCBrowser/11.3.2.1094 Mobile', 'http://schedus.herokuapp.com/admin/login', 'Ingreso de jaamaya643@misena.edu.co desde la Dirección IP 10.35.211.120', '', 3, '2019-02-05 17:02:35', NULL),
	(84, '10.33.232.176', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; en-US) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11D257 UCBrowser/11.3.2.1094 Mobile', 'http://schedus.herokuapp.com/admin/logout', 'jaamaya643@misena.edu.co se desconectó', '', 3, '2019-02-05 17:05:48', NULL),
	(85, '10.63.144.56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; en-US) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11D257 UCBrowser/11.3.2.1094 Mobile', 'http://schedus.herokuapp.com/admin/login', 'Ingreso de ggalarcon@misena.edu.co desde la Dirección IP 10.63.144.56', '', 5, '2019-02-05 17:05:58', NULL),
	(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de schedus@gmail.com desde la Dirección IP 127.0.0.1', '', 1, '2019-02-05 22:19:56', NULL),
	(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/28', 'Eliminar información Grupo en Generador de Módulos', '', 1, '2019-02-05 22:20:55', NULL),
	(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/26', 'Actualizar información Grupo en Gestión de Menús', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>21</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-02-05 22:32:10', NULL),
	(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de jaamaya643@misena.edu.co desde la Dirección IP 127.0.0.1', '', 3, '2019-02-06 01:00:57', NULL),
	(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:22:11', NULL),
	(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/1', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:24:40', NULL),
	(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/1', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:24:43', NULL),
	(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/2', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:25:04', NULL),
	(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/2', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:25:16', NULL),
	(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:25:58', NULL),
	(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:26:51', NULL),
	(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/12', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:27:15', NULL),
	(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/13', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:27:37', NULL),
	(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/13', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:27:40', NULL),
	(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/6', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:28:18', NULL),
	(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/8', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:28:48', NULL),
	(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/action-selected', 'Eliminar información 7 en Ambiente Formación', '', 3, '2019-02-06 01:29:11', NULL),
	(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:29:58', NULL),
	(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:30:40', NULL),
	(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/delete/11', 'Eliminar información  en Ambiente Formación', '', 3, '2019-02-06 01:31:10', NULL),
	(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:31:48', NULL),
	(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:32:21', NULL),
	(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:33:03', NULL),
	(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:33:28', NULL),
	(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:33:44', NULL),
	(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:34:05', NULL),
	(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:34:24', NULL),
	(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:34:43', NULL),
	(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:35:11', NULL),
	(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/edit-save/3', 'Actualizar información  en Ambiente Formación', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>number</td><td>Auditorio</td><td>AUDITORIO</td></tr></tbody></table>', 3, '2019-02-06 01:36:12', NULL),
	(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/sede/add-save', 'Añadir nueva información Ricaurte en Sede', '', 3, '2019-02-06 01:38:58', NULL),
	(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:40:03', NULL),
	(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:40:28', NULL),
	(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:40:56', NULL),
	(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:41:30', NULL),
	(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:42:31', NULL),
	(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:42:51', NULL),
	(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:43:15', NULL),
	(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:43:40', NULL),
	(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:43:59', NULL),
	(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:44:23', NULL),
	(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:44:44', NULL),
	(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:47:55', NULL),
	(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:48:13', NULL),
	(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:48:30', NULL),
	(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:50:40', NULL),
	(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:51:08', NULL),
	(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:51:35', NULL),
	(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:52:09', NULL),
	(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:52:37', NULL),
	(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://127.0.0.1:8000/admin/ambiente_formacion/add-save', 'Añadir nueva información  en Ambiente Formación', '', 3, '2019-02-06 01:53:36', NULL),
	(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de schedus@gmail.com desde la Dirección IP 127.0.0.1', '', 1, '2019-02-06 03:48:11', NULL),
	(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de schedus@gmail.com desde la Dirección IP 127.0.0.1', '', 1, '2019-02-06 15:59:21', NULL),
	(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Añadir nueva información Gestion de Horarios en Gestión de Menús', '', 1, '2019-02-06 18:08:03', NULL),
	(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/ambiente_formacion/edit-save/40', 'Actualizar información  en Ambiente Formación', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>number</td><td>100</td><td>102</td></tr><tr><td>estado_ambiente_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2019-02-06 21:10:04', NULL),
	(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/sede/edit-save/2', 'Actualizar información Restrepo en Sede', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Barrio Restrepo</td><td>Restrepo</td></tr></tbody></table>', 1, '2019-02-06 21:20:48', NULL),
	(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3691.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'schedus@gmail.com se desconectó', '', 1, '2019-02-06 21:57:25', NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_menus
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_menus: ~29 rows (approximately)
DELETE FROM `cms_menus`;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
	(1, 'Configuración color', 'Route', 'AdminStatusColorControllerGetIndex', NULL, 'fa fa-refresh', 0, 0, 0, 1, 12, '2019-01-31 01:57:13', NULL),
	(2, 'Estado Ambiente', 'Route', 'AdminEstadoAmbienteControllerGetIndex', 'normal', 'fa fa-toggle-on', 0, 0, 0, 1, 11, '2019-01-31 02:16:52', '2019-01-31 03:39:56'),
	(3, 'Ambiente Formacion', 'Route', 'AdminAmbienteFormacionControllerGetIndex', 'normal', 'fa fa-building', 5, 1, 0, 1, 1, '2019-01-31 02:29:47', '2019-01-31 03:38:43'),
	(4, 'Sede', 'Route', 'AdminSedeControllerGetIndex', 'normal', 'fa fa-building', 5, 1, 0, 1, 2, '2019-01-31 02:31:48', '2019-01-31 03:40:48'),
	(5, 'Gestión de Ambiente', 'URL', '#', 'normal', 'fa fa-cube', 0, 1, 0, 1, 4, '2019-01-31 02:42:25', '2019-01-31 03:36:45'),
	(6, 'Fase', 'Route', 'AdminFaseControllerGetIndex', 'normal', 'fa fa-signal', 0, 0, 0, 1, 6, '2019-01-31 03:04:20', '2019-01-31 03:35:38'),
	(7, 'Proyecto', 'Route', 'AdminProyectoControllerGetIndex', 'normal', 'fa fa-briefcase', 13, 1, 0, 1, 2, '2019-01-31 03:08:24', '2019-01-31 03:34:37'),
	(8, 'Actividad Proyecto', 'Route', 'AdminActividadProyectoControllerGetIndex', 'normal', 'fa fa-print', 13, 1, 0, 1, 3, '2019-01-31 03:13:19', '2019-01-31 03:33:23'),
	(9, 'Gestión de Proyecto', 'URL', '#', 'normal', 'fa fa-print', 0, 0, 0, 1, 5, '2019-01-31 03:32:13', NULL),
	(10, 'Nivel programa formación', 'Route', 'AdminNivelProgramaFormacionControllerGetIndex', NULL, 'fa fa-book', 0, 0, 0, 1, 7, '2019-02-04 18:40:09', NULL),
	(11, 'Estado programa de formación', 'Route', 'AdminEstadoProgramaFormacionControllerGetIndex', 'normal', 'fa fa-toggle-on', 0, 0, 0, 1, 10, '2019-02-04 18:47:26', '2019-02-04 21:13:21'),
	(12, 'Gestión de Usuarios', 'Module', 'users', 'normal', 'fa fa-user', 0, 1, 0, 1, 5, '2019-02-04 19:15:28', NULL),
	(13, 'Gestión Prog. Formación', 'URL', '#', 'normal', 'fa fa-book', 0, 1, 0, 1, 3, '2019-02-04 21:05:07', '2019-02-04 21:12:28'),
	(16, 'Programa de Formación', 'Route', 'AdminProgramaFormacionControllerGetIndex', NULL, 'fa fa-book', 13, 1, 0, 1, 1, '2019-02-04 21:50:01', NULL),
	(17, 'Competencia', 'Route', 'AdminCompetenciaControllerGetIndex', NULL, 'fa fa-star', 13, 1, 0, 1, 5, '2019-02-04 22:03:02', NULL),
	(18, 'Gestion Resultado Aprendizaje', 'URL', '#', 'normal', 'fa fa-th-list', 0, 0, 0, 1, 4, '2019-02-04 22:08:50', NULL),
	(19, 'Resultado de aprendizaje', 'Route', 'AdminResultadoAprendizajeControllerGetIndex', 'normal', 'fa fa-list', 13, 1, 0, 1, 4, '2019-02-04 22:12:09', '2019-02-05 14:11:53'),
	(20, 'Estado Ficha', 'Route', 'AdminEstadoFichaControllerGetIndex', NULL, 'fa fa-toggle-on', 0, 0, 0, 1, 9, '2019-02-05 13:49:39', NULL),
	(21, 'Gestion de Ficha', 'Controller & Method', '#', 'normal', 'fa fa-users', 0, 1, 0, 1, 2, '2019-02-05 13:53:17', NULL),
	(22, 'Jornada', 'Route', 'AdminJornadaControllerGetIndex', NULL, 'fa fa-sun-o', 0, 0, 0, 1, 8, '2019-02-05 13:54:04', NULL),
	(23, 'Ficha', 'Route', 'AdminFichaControllerGetIndex', 'normal', 'fa fa-users', 21, 1, 0, 1, 3, '2019-02-05 13:59:45', '2019-02-05 14:07:29'),
	(24, 'Ruta de Ficha', 'Route', 'AdminRutaFichaControllerGetIndex', 'normal', 'fa fa-user-md', 21, 1, 0, 1, 1, '2019-02-05 14:06:09', '2019-02-05 14:09:50'),
	(26, 'Grupo', 'Route', 'AdminGrupoControllerGetIndex', 'normal', 'fa fa-user-md', 21, 1, 0, 1, 2, '2019-02-05 22:23:43', '2019-02-05 22:32:05'),
	(27, 'Dias', 'Route', 'AdminDiasControllerGetIndex', NULL, 'fa fa-sun-o', 0, 0, 0, 1, 1, '2019-02-06 16:00:13', NULL),
	(28, 'Modo', 'Route', 'AdminModoControllerGetIndex', NULL, 'fa fa-toggle-on', 0, 0, 0, 1, 2, '2019-02-06 17:47:01', NULL),
	(29, 'Trimestre', 'Route', 'AdminTrimestreControllerGetIndex', NULL, 'fa fa-calendar-times-o', 32, 1, 0, 1, 1, '2019-02-06 17:47:55', NULL),
	(30, 'Estado Horario asignada', 'Route', 'AdminEstadoHorarioAsignadaControllerGetIndex', NULL, 'fa fa-toggle-on', 0, 0, 0, 1, 3, '2019-02-06 17:55:43', NULL),
	(31, 'Horario asignada', 'Route', 'AdminHorarioAsignadaControllerGetIndex', NULL, 'fa fa-calendar', 32, 1, 0, 1, 2, '2019-02-06 18:01:31', NULL),
	(32, 'Gestion de Horarios', 'URL', '#', 'normal', 'fa fa-calendar', 0, 1, 0, 1, 1, '2019-02-06 18:07:57', NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_menus_privileges
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_menus_privileges: ~65 rows (approximately)
DELETE FROM `cms_menus_privileges`;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
	(1, 1, 1),
	(12, 9, 2),
	(13, 9, 3),
	(14, 9, 1),
	(15, 8, 2),
	(16, 8, 3),
	(17, 8, 1),
	(18, 7, 2),
	(19, 7, 3),
	(20, 7, 1),
	(21, 6, 2),
	(22, 6, 3),
	(23, 6, 1),
	(24, 5, 2),
	(25, 5, 4),
	(26, 5, 3),
	(27, 5, 1),
	(28, 3, 2),
	(29, 3, 3),
	(30, 3, 1),
	(31, 2, 2),
	(32, 2, 3),
	(33, 2, 1),
	(34, 4, 2),
	(35, 4, 3),
	(36, 4, 1),
	(37, 10, 1),
	(39, 12, 2),
	(43, 14, 1),
	(47, 13, 2),
	(48, 13, 3),
	(49, 13, 1),
	(50, 11, 1),
	(51, 15, 1),
	(52, 16, 1),
	(53, 17, 1),
	(54, 18, 2),
	(55, 18, 3),
	(56, 18, 1),
	(58, 20, 1),
	(59, 21, 2),
	(60, 21, 3),
	(61, 21, 1),
	(62, 22, 1),
	(65, 23, 2),
	(66, 23, 3),
	(67, 23, 1),
	(68, 24, 2),
	(69, 24, 3),
	(70, 24, 1),
	(71, 25, 1),
	(72, 19, 2),
	(73, 19, 3),
	(74, 19, 1),
	(76, 26, 2),
	(77, 26, 3),
	(78, 26, 1),
	(79, 27, 1),
	(80, 28, 1),
	(81, 29, 1),
	(82, 30, 1),
	(83, 31, 1),
	(84, 32, 2),
	(85, 32, 3),
	(86, 32, 1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_moduls
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_moduls: ~33 rows (approximately)
DELETE FROM `cms_moduls`;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Notificaciones', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(2, 'Privilegios', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(3, 'Privilegios & Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(4, 'Gestión de usuarios', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-01-30 22:57:52', NULL, NULL),
	(5, 'Ajustes', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(6, 'Generador de Módulos', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(7, 'Gestión de Menús', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(8, 'Plantillas de Correo', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(9, 'Generador de Estadísticas', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(10, 'Generador de API', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(11, 'Log de Accesos (Usuarios)', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-01-30 22:57:52', NULL, NULL),
	(12, 'Configuración color', 'fa fa-refresh', 'status_color', 'status_color', 'AdminStatusColorController', 0, 0, '2019-01-31 01:57:09', NULL, NULL),
	(13, 'Estado Ambiente', 'fa fa-toggle-on', 'estado_ambiente', 'estado_ambiente', 'AdminEstadoAmbienteController', 0, 0, '2019-01-31 02:16:47', NULL, NULL),
	(14, 'Ambiente Formación', 'fa fa-building', 'ambiente_formacion', 'ambiente', 'AdminAmbienteFormacionController', 0, 0, '2019-01-31 02:29:41', NULL, NULL),
	(15, 'Sede', 'fa fa-building', 'sede', 'sede', 'AdminSedeController', 0, 0, '2019-01-31 02:31:43', NULL, NULL),
	(16, 'Fase', 'fa fa-signal', 'fase', 'fase', 'AdminFaseController', 0, 0, '2019-01-31 03:04:15', NULL, NULL),
	(17, 'Proyecto', 'fa fa-briefcase', 'proyecto', 'proyecto', 'AdminProyectoController', 0, 0, '2019-01-31 03:08:20', NULL, NULL),
	(18, 'Actividad Proyecto', 'fa fa-print', 'actividad_proyecto', 'actividad_proyecto', 'AdminActividadProyectoController', 0, 0, '2019-01-31 03:13:11', NULL, NULL),
	(19, 'Nivel programa formación', 'fa fa-book', 'nivel_programa_formacion', 'nivel_programa_formacion', 'AdminNivelProgramaFormacionController', 0, 0, '2019-02-04 18:40:06', NULL, NULL),
	(20, 'Estado programa de formación', 'fa fa-toggle-off', 'estado_programa_formacion', 'estado_programa_formacion', 'AdminEstadoProgramaFormacionController', 0, 0, '2019-02-04 18:47:23', NULL, NULL),
	(21, 'Programa de Formación', 'fa fa-book', 'programa_formacion', 'programa_formacion', 'AdminProgramaFormacionController', 0, 0, '2019-02-04 21:49:55', NULL, NULL),
	(22, 'Competencia', 'fa fa-star', 'competencia', 'competencia', 'AdminCompetenciaController', 0, 0, '2019-02-04 22:02:59', NULL, NULL),
	(23, 'Resultado de aprendizaje', 'fa fa-list', 'resultado_aprendizaje', 'resultado_aprendizaje', 'AdminResultadoAprendizajeController', 0, 0, '2019-02-04 22:12:07', NULL, NULL),
	(24, 'Estado Ficha', 'fa fa-toggle-on', 'estado_ficha', 'estado_ficha', 'AdminEstadoFichaController', 0, 0, '2019-02-05 13:49:34', NULL, NULL),
	(25, 'Jornada', 'fa fa-sun-o', 'jornada', 'jornada', 'AdminJornadaController', 0, 0, '2019-02-05 13:54:01', NULL, NULL),
	(26, 'Ficha', 'fa fa-users', 'ficha', 'ficha', 'AdminFichaController', 0, 0, '2019-02-05 13:59:42', NULL, NULL),
	(27, 'Ruta de Ficha', 'fa fa-user-md', 'ruta_ficha', 'ruta_ficha', 'AdminRutaFichaController', 0, 0, '2019-02-05 14:06:05', NULL, NULL),
	(28, 'Grupo', 'fa fa-user-md', 'grupo', 'grupo', 'AdminGrupoController', 0, 0, '2019-02-05 22:23:40', NULL, NULL),
	(29, 'Dias', 'fa fa-sun-o', 'dias', 'dias', 'AdminDiasController', 0, 0, '2019-02-06 16:00:08', NULL, NULL),
	(30, 'Modo', 'fa fa-toggle-on', 'modo', 'modo', 'AdminModoController', 0, 0, '2019-02-06 17:46:59', NULL, NULL),
	(31, 'Trimestre', 'fa fa-calendar-times-o', 'trimestre', 'trimestre', 'AdminTrimestreController', 0, 0, '2019-02-06 17:47:52', NULL, NULL),
	(32, 'Estado Horario asignada', 'fa fa-toggle-on', 'estado_horario_asignada', 'estado_horario_asignada', 'AdminEstadoHorarioAsignadaController', 0, 0, '2019-02-06 17:55:40', NULL, NULL),
	(33, 'Horario asignada', 'fa fa-calendar', 'horario_asignada', 'horario_asignada', 'AdminHorarioAsignadaController', 0, 0, '2019-02-06 18:01:23', NULL, NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_notifications
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_notifications: ~0 rows (approximately)
DELETE FROM `cms_notifications`;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_privileges
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_privileges: ~4 rows (approximately)
DELETE FROM `cms_privileges`;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
	(1, 'Super Administrator', 1, 'skin-green', '2019-01-30 22:58:00', NULL),
	(2, 'Coordinador', 0, 'skin-green', NULL, NULL),
	(3, 'Lider', 0, 'skin-green', NULL, NULL),
	(4, 'Instructor', 0, 'skin-green', NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_privileges_roles
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_privileges_roles: ~38 rows (approximately)
DELETE FROM `cms_privileges_roles`;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
	(21, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
	(22, 1, 1, 1, 1, 1, 3, 14, NULL, NULL),
	(23, 1, 1, 1, 1, 1, 3, 13, NULL, NULL),
	(24, 1, 1, 1, 1, 1, 3, 16, NULL, NULL),
	(25, 1, 1, 1, 1, 1, 3, 17, NULL, NULL),
	(26, 1, 1, 1, 1, 1, 3, 15, NULL, NULL),
	(27, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
	(28, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
	(29, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
	(30, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
	(31, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
	(32, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
	(33, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
	(34, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
	(35, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
	(36, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
	(37, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
	(38, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
	(39, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
	(40, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
	(41, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
	(42, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
	(43, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
	(44, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
	(45, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
	(46, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
	(47, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
	(48, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
	(49, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
	(50, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
	(51, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
	(52, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
	(53, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
	(54, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
	(55, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
	(56, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
	(57, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
	(58, 1, 1, 1, 1, 1, 1, 33, NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_settings
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_settings: ~16 rows (approximately)
DELETE FROM `cms_settings`;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
	(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2019-01-30 22:58:15', NULL, 'Estilo de página de registro', 'Login Background Color'),
	(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2019-01-30 22:58:15', NULL, 'Estilo de página de registro', 'Login Font Color'),
	(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Estilo de página de registro', 'Login Background Image'),
	(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Correo', 'Email Sender'),
	(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Correo', 'Mail Driver'),
	(6, 'smtp_host', '', 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Correo', 'SMTP Host'),
	(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-01-30 22:58:15', NULL, 'Ajustes de Correo', 'SMTP Port'),
	(8, 'smtp_username', '', 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Correo', 'SMTP Username'),
	(9, 'smtp_password', '', 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Correo', 'SMTP Password'),
	(10, 'appname', 'SCHEDUS', 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'Application Name'),
	(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'Default Paper Print Size'),
	(12, 'logo', 'uploads/2019-02/8ccbafd5b367462c103a0a921332b1c5.svg', 'upload_image', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'Logo'),
	(13, 'favicon', 'uploads/2019-02/f57d5d0634549b271309dde146d96572.webp', 'upload_image', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'Favicon'),
	(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'API Debug Mode'),
	(15, 'google_api_key', NULL, 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'Google API Key'),
	(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2019-01-30 22:58:15', NULL, 'Ajustes de Aplicaciones', 'Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_statistics
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_statistics: ~0 rows (approximately)
DELETE FROM `cms_statistics`;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_statistic_components
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_statistic_components: ~0 rows (approximately)
DELETE FROM `cms_statistic_components`;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.cms_users
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.cms_users: ~5 rows (approximately)
DELETE FROM `cms_users`;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'Super Admin', 'uploads/1/2019-02/serveimage.png', 'schedus@gmail.com', '$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS', 1, '2019-01-30 22:57:45', '2019-02-04 22:54:17', 'Active'),
	(2, 'Andrés García', 'uploads/2/2019-02/serveimage.png', 'afgarcia0479@misena.edu.co', '$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS', 1, '2019-01-30 22:57:46', '2019-02-04 18:30:44', 'Active'),
	(3, 'Johann Abelardo Amaya', NULL, 'jaamaya643@misena.edu.co', '$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS', 1, '2019-01-30 22:57:48', NULL, 'Active'),
	(4, 'Diana Carolina Pinzon', 'uploads/2/2019-02/serveimage.png', 'dpinzoncas@misena.edu.co', '$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS', 3, '2019-01-30 22:57:49', '2019-02-04 19:03:34', 'Active'),
	(5, 'Germán Gilberto Alacrón', 'uploads/2/2019-02/serveimage.png', 'ggalarcon@misena.edu.co', '$2y$10$9y1F6168LFwRWDlrDSdyGO8xQsnT5SOj81rye1Ep2oB87SuvxSOQS', 2, '2019-01-30 22:57:51', '2019-02-04 18:53:08', 'Active');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.competencia
DROP TABLE IF EXISTS `competencia`;
CREATE TABLE IF NOT EXISTS `competencia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `programa_formacion_id` int(10) unsigned DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `competencia_programa_formacion_id_index` (`programa_formacion_id`),
  CONSTRAINT `competencia_programa_formacion_id_foreign` FOREIGN KEY (`programa_formacion_id`) REFERENCES `programa_formacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.competencia: ~0 rows (approximately)
DELETE FROM `competencia`;
/*!40000 ALTER TABLE `competencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencia` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.dias
DROP TABLE IF EXISTS `dias`;
CREATE TABLE IF NOT EXISTS `dias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dias_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.dias: ~0 rows (approximately)
DELETE FROM `dias`;
/*!40000 ALTER TABLE `dias` DISABLE KEYS */;
/*!40000 ALTER TABLE `dias` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.estado_ambiente
DROP TABLE IF EXISTS `estado_ambiente`;
CREATE TABLE IF NOT EXISTS `estado_ambiente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_color_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado_ambiente_name_unique` (`name`),
  KEY `estado_ambiente_status_color_id_index` (`status_color_id`),
  CONSTRAINT `estado_ambiente_status_color_id_foreign` FOREIGN KEY (`status_color_id`) REFERENCES `status_color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.estado_ambiente: ~2 rows (approximately)
DELETE FROM `estado_ambiente`;
/*!40000 ALTER TABLE `estado_ambiente` DISABLE KEYS */;
INSERT INTO `estado_ambiente` (`id`, `name`, `status_color_id`, `created_at`, `updated_at`) VALUES
	(1, 'Libre', 3, '2019-01-31 02:24:05', NULL),
	(2, 'Ocupado', 4, '2019-01-31 02:25:43', NULL);
/*!40000 ALTER TABLE `estado_ambiente` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.estado_ficha
DROP TABLE IF EXISTS `estado_ficha`;
CREATE TABLE IF NOT EXISTS `estado_ficha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_color_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado_ficha_name_unique` (`name`),
  KEY `estado_ficha_status_color_id_index` (`status_color_id`),
  CONSTRAINT `estado_ficha_status_color_id_foreign` FOREIGN KEY (`status_color_id`) REFERENCES `status_color` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.estado_ficha: ~0 rows (approximately)
DELETE FROM `estado_ficha`;
/*!40000 ALTER TABLE `estado_ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_ficha` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.estado_horario_asignada
DROP TABLE IF EXISTS `estado_horario_asignada`;
CREATE TABLE IF NOT EXISTS `estado_horario_asignada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_color_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado_horario_asignada_name_unique` (`name`),
  KEY `estado_horario_asignada_status_color_id_index` (`status_color_id`),
  CONSTRAINT `estado_horario_asignada_status_color_id_foreign` FOREIGN KEY (`status_color_id`) REFERENCES `status_color` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.estado_horario_asignada: ~0 rows (approximately)
DELETE FROM `estado_horario_asignada`;
/*!40000 ALTER TABLE `estado_horario_asignada` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_horario_asignada` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.estado_programa_formacion
DROP TABLE IF EXISTS `estado_programa_formacion`;
CREATE TABLE IF NOT EXISTS `estado_programa_formacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_color_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estado_programa_formacion_name_unique` (`name`),
  KEY `estado_programa_formacion_status_color_id_index` (`status_color_id`),
  CONSTRAINT `estado_programa_formacion_status_color_id_foreign` FOREIGN KEY (`status_color_id`) REFERENCES `status_color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.estado_programa_formacion: ~2 rows (approximately)
DELETE FROM `estado_programa_formacion`;
/*!40000 ALTER TABLE `estado_programa_formacion` DISABLE KEYS */;
INSERT INTO `estado_programa_formacion` (`id`, `name`, `status_color_id`, `created_at`, `updated_at`) VALUES
	(1, 'Activo', 3, '2019-02-04 18:53:52', NULL),
	(2, 'Inactivo', 4, '2019-02-04 18:59:23', NULL);
/*!40000 ALTER TABLE `estado_programa_formacion` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.fase
DROP TABLE IF EXISTS `fase`;
CREATE TABLE IF NOT EXISTS `fase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fase_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.fase: ~0 rows (approximately)
DELETE FROM `fase`;
/*!40000 ALTER TABLE `fase` DISABLE KEYS */;
/*!40000 ALTER TABLE `fase` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.ficha
DROP TABLE IF EXISTS `ficha`;
CREATE TABLE IF NOT EXISTS `ficha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_ficha_id` int(10) unsigned DEFAULT NULL,
  `programa_formacion_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ficha_estado_ficha_id_index` (`estado_ficha_id`),
  KEY `ficha_programa_formacion_id_index` (`programa_formacion_id`),
  CONSTRAINT `ficha_estado_ficha_id_foreign` FOREIGN KEY (`estado_ficha_id`) REFERENCES `estado_ficha` (`id`),
  CONSTRAINT `ficha_programa_formacion_id_foreign` FOREIGN KEY (`programa_formacion_id`) REFERENCES `programa_formacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.ficha: ~0 rows (approximately)
DELETE FROM `ficha`;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.grupo
DROP TABLE IF EXISTS `grupo`;
CREATE TABLE IF NOT EXISTS `grupo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ficha_id` int(10) unsigned DEFAULT NULL,
  `number` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta_ficha_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_ruta_ficha_id_index` (`ruta_ficha_id`),
  KEY `grupo_ficha_id_index` (`ficha_id`),
  CONSTRAINT `grupo_ficha_id_foreign` FOREIGN KEY (`ficha_id`) REFERENCES `ficha` (`id`),
  CONSTRAINT `grupo_ruta_ficha_id_foreign` FOREIGN KEY (`ruta_ficha_id`) REFERENCES `ruta_ficha` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.grupo: ~0 rows (approximately)
DELETE FROM `grupo`;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.horario_asignada
DROP TABLE IF EXISTS `horario_asignada`;
CREATE TABLE IF NOT EXISTS `horario_asignada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trimestre_id` int(10) unsigned DEFAULT NULL,
  `modo_id` int(10) unsigned DEFAULT NULL,
  `ruta_ficha_id` int(10) unsigned DEFAULT NULL,
  `trimestre_ficha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resultado_aprendizaje_id` int(10) unsigned DEFAULT NULL,
  `instructor_id` int(10) unsigned DEFAULT NULL,
  `dias_id` int(10) unsigned DEFAULT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `ambiente_id` int(10) unsigned DEFAULT NULL,
  `estado_horario_asignada_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `horario_asignada_trimestre_id_index` (`trimestre_id`),
  KEY `horario_asignada_modo_id_index` (`modo_id`),
  KEY `horario_asignada_ruta_ficha_id_index` (`ruta_ficha_id`),
  KEY `horario_asignada_resultado_aprendizaje_id_index` (`resultado_aprendizaje_id`),
  KEY `horario_asignada_instructor_id_index` (`instructor_id`),
  KEY `horario_asignada_dias_id_index` (`dias_id`),
  KEY `horario_asignada_ambiente_id_index` (`ambiente_id`),
  KEY `horario_asignada_estado_horario_asignada_id_index` (`estado_horario_asignada_id`),
  CONSTRAINT `horario_asignada_ambiente_id_foreign` FOREIGN KEY (`ambiente_id`) REFERENCES `ambiente` (`id`),
  CONSTRAINT `horario_asignada_dias_id_foreign` FOREIGN KEY (`dias_id`) REFERENCES `dias` (`id`),
  CONSTRAINT `horario_asignada_estado_horario_asignada_id_foreign` FOREIGN KEY (`estado_horario_asignada_id`) REFERENCES `estado_horario_asignada` (`id`),
  CONSTRAINT `horario_asignada_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `cms_users` (`id`),
  CONSTRAINT `horario_asignada_modo_id_foreign` FOREIGN KEY (`modo_id`) REFERENCES `modo` (`id`),
  CONSTRAINT `horario_asignada_resultado_aprendizaje_id_foreign` FOREIGN KEY (`resultado_aprendizaje_id`) REFERENCES `resultado_aprendizaje` (`id`),
  CONSTRAINT `horario_asignada_ruta_ficha_id_foreign` FOREIGN KEY (`ruta_ficha_id`) REFERENCES `ruta_ficha` (`id`),
  CONSTRAINT `horario_asignada_trimestre_id_foreign` FOREIGN KEY (`trimestre_id`) REFERENCES `trimestre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.horario_asignada: ~0 rows (approximately)
DELETE FROM `horario_asignada`;
/*!40000 ALTER TABLE `horario_asignada` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario_asignada` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.jornada
DROP TABLE IF EXISTS `jornada`;
CREATE TABLE IF NOT EXISTS `jornada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jornada_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.jornada: ~0 rows (approximately)
DELETE FROM `jornada`;
/*!40000 ALTER TABLE `jornada` DISABLE KEYS */;
/*!40000 ALTER TABLE `jornada` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.migrations: ~49 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
	(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
	(3, '2016_08_07_151210_add_table_cms_logs', 1),
	(4, '2016_08_07_151211_add_details_cms_logs', 1),
	(5, '2016_08_07_152014_add_table_cms_privileges', 1),
	(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
	(7, '2016_08_07_152320_add_table_cms_settings', 1),
	(8, '2016_08_07_152421_add_table_cms_users', 1),
	(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
	(10, '2016_08_07_154624_add_table_cms_moduls', 1),
	(11, '2016_08_17_225409_add_status_cms_users', 1),
	(12, '2016_08_20_125418_add_table_cms_notifications', 1),
	(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
	(14, '2016_09_16_035347_add_group_setting', 1),
	(15, '2016_09_16_045425_add_label_setting', 1),
	(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
	(17, '2016_10_01_141740_add_method_type_apicustom', 1),
	(18, '2016_10_01_141846_add_parameters_apicustom', 1),
	(19, '2016_10_01_141934_add_responses_apicustom', 1),
	(20, '2016_10_01_144826_add_table_apikey', 1),
	(21, '2016_11_14_141657_create_cms_menus', 1),
	(22, '2016_11_15_132350_create_cms_email_templates', 1),
	(23, '2016_11_15_190410_create_cms_statistics', 1),
	(24, '2016_11_17_102740_create_cms_statistic_components', 1),
	(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
	(26, '2019_01_22_221038_create_status_color_table', 1),
	(27, '2019_01_22_224354_create_jornadas_table', 1),
	(28, '2019_01_22_230143_create_estado_fichas_table', 1),
	(29, '2019_01_22_230903_create_nivel_programa_formacions_table', 1),
	(30, '2019_01_22_231039_create_fases_table', 1),
	(31, '2019_01_22_231504_create_proyectos_table', 1),
	(32, '2019_01_22_231640_create_estado_programa_formacions_table', 1),
	(33, '2019_01_22_231833_create_resultado_aprendizajes_table', 1),
	(34, '2019_01_22_232912_create_sedes_table', 1),
	(35, '2019_01_22_233034_create_estado_ambientes_table', 1),
	(36, '2019_01_22_233357_create_dias_table', 1),
	(37, '2019_01_22_233503_create_trimestres_table', 1),
	(38, '2019_01_22_233638_create_modos_table', 1),
	(39, '2019_01_22_233743_create_estado_horario_asignadas_table', 1),
	(40, '2019_01_22_234737_create_tipo_documentos_table', 1),
	(41, '2019_01_23_231204_create_actividad_proyectos_table', 1),
	(42, '2019_01_23_232500_create_programa_formacions_table', 1),
	(43, '2019_01_23_233127_create_ambientes_table', 1),
	(44, '2019_01_24_210706_create_fichas_table', 1),
	(45, '2019_01_24_224919_create_ruta_fichas_table', 1),
	(46, '2019_01_24_230903_create_grupos_table', 1),
	(47, '2019_01_24_232047_create_competencias_table', 1),
	(48, '2019_01_24_233924_create_horario_asignadas_table', 1),
	(49, '2019_02_04_221920_add_columns_competencia_to_resultado_aprendizaje_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.modo
DROP TABLE IF EXISTS `modo`;
CREATE TABLE IF NOT EXISTS `modo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `modo_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.modo: ~0 rows (approximately)
DELETE FROM `modo`;
/*!40000 ALTER TABLE `modo` DISABLE KEYS */;
/*!40000 ALTER TABLE `modo` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.nivel_programa_formacion
DROP TABLE IF EXISTS `nivel_programa_formacion`;
CREATE TABLE IF NOT EXISTS `nivel_programa_formacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nivel_programa_formacion_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.nivel_programa_formacion: ~3 rows (approximately)
DELETE FROM `nivel_programa_formacion`;
/*!40000 ALTER TABLE `nivel_programa_formacion` DISABLE KEYS */;
INSERT INTO `nivel_programa_formacion` (`id`, `name`, `duracion`, `created_at`, `updated_at`) VALUES
	(1, 'Técnico', '12 Meses', '2019-02-04 18:43:20', NULL),
	(2, 'Tecnología', '24 Meses', '2019-02-04 18:44:06', NULL),
	(3, 'Profesional', '60 Meses', '2019-02-04 18:44:41', NULL);
/*!40000 ALTER TABLE `nivel_programa_formacion` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.programa_formacion
DROP TABLE IF EXISTS `programa_formacion`;
CREATE TABLE IF NOT EXISTS `programa_formacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_programa_formacion_id` int(10) unsigned DEFAULT NULL,
  `proyecto_id` int(10) unsigned DEFAULT NULL,
  `estado_programa_formacion_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `programa_formacion_name_unique` (`name`),
  KEY `programa_formacion_nivel_programa_formacion_id_index` (`nivel_programa_formacion_id`),
  KEY `programa_formacion_proyecto_id_index` (`proyecto_id`),
  KEY `programa_formacion_estado_programa_formacion_id_index` (`estado_programa_formacion_id`),
  CONSTRAINT `programa_formacion_estado_programa_formacion_id_foreign` FOREIGN KEY (`estado_programa_formacion_id`) REFERENCES `estado_programa_formacion` (`id`),
  CONSTRAINT `programa_formacion_nivel_programa_formacion_id_foreign` FOREIGN KEY (`nivel_programa_formacion_id`) REFERENCES `nivel_programa_formacion` (`id`),
  CONSTRAINT `programa_formacion_proyecto_id_foreign` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.programa_formacion: ~0 rows (approximately)
DELETE FROM `programa_formacion`;
/*!40000 ALTER TABLE `programa_formacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa_formacion` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.proyecto
DROP TABLE IF EXISTS `proyecto`;
CREATE TABLE IF NOT EXISTS `proyecto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proyecto_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.proyecto: ~0 rows (approximately)
DELETE FROM `proyecto`;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.resultado_aprendizaje
DROP TABLE IF EXISTS `resultado_aprendizaje`;
CREATE TABLE IF NOT EXISTS `resultado_aprendizaje` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competencia_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resultado_aprendizaje_competencia_id_index` (`competencia_id`),
  CONSTRAINT `resultado_aprendizaje_competencia_id_foreign` FOREIGN KEY (`competencia_id`) REFERENCES `competencia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.resultado_aprendizaje: ~0 rows (approximately)
DELETE FROM `resultado_aprendizaje`;
/*!40000 ALTER TABLE `resultado_aprendizaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultado_aprendizaje` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.ruta_ficha
DROP TABLE IF EXISTS `ruta_ficha`;
CREATE TABLE IF NOT EXISTS `ruta_ficha` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jornada_id` int(10) unsigned DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ruta_ficha_name_unique` (`name`),
  KEY `ruta_ficha_jornada_id_index` (`jornada_id`),
  CONSTRAINT `ruta_ficha_jornada_id_foreign` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.ruta_ficha: ~0 rows (approximately)
DELETE FROM `ruta_ficha`;
/*!40000 ALTER TABLE `ruta_ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruta_ficha` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.sede
DROP TABLE IF EXISTS `sede`;
CREATE TABLE IF NOT EXISTS `sede` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sede_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.sede: ~5 rows (approximately)
DELETE FROM `sede`;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` (`id`, `name`, `direccion`, `created_at`, `updated_at`) VALUES
	(1, 'Complejo Sur', 'Avda. Cra 30 No. 17b-25 Sur', '2019-01-31 02:49:30', NULL),
	(2, 'Restrepo', 'Av. 1 de Mayo # 12d-68 Ciudad Jardin', '2019-01-31 02:51:15', '2019-02-06 21:20:48'),
	(3, 'Ricaurte', 'Calle 12 # 30-18', '2019-02-06 01:38:58', NULL),
	(4, 'Barrio Colombia', 'Calle 69 # 20-30-36', '2019-01-31 02:50:30', NULL),
	(5, 'Alamos', 'Carrera 89a #64c-33', NULL, NULL);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.status_color
DROP TABLE IF EXISTS `status_color`;
CREATE TABLE IF NOT EXISTS `status_color` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_color_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.status_color: ~10 rows (approximately)
DELETE FROM `status_color`;
/*!40000 ALTER TABLE `status_color` DISABLE KEYS */;
INSERT INTO `status_color` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'primary', '2019-01-31 02:07:01', NULL),
	(2, 'secondary', '2019-01-31 02:07:32', NULL),
	(3, 'success', '2019-01-31 02:08:04', NULL),
	(4, 'danger', '2019-01-31 02:08:35', NULL),
	(5, 'warning', '2019-01-31 02:09:05', NULL),
	(6, 'info', '2019-01-31 02:09:36', NULL),
	(7, 'light', '2019-01-31 02:10:21', NULL),
	(8, 'dark', '2019-01-31 02:11:20', NULL),
	(9, 'muted', '2019-01-31 02:12:17', NULL),
	(10, 'white', '2019-01-31 02:13:29', NULL);
/*!40000 ALTER TABLE `status_color` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.tipo_documento
DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipo_documento_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.tipo_documento: ~0 rows (approximately)
DELETE FROM `tipo_documento`;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;

-- Dumping structure for table 0B8tZeymzk.trimestre
DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trimestre_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table 0B8tZeymzk.trimestre: ~0 rows (approximately)
DELETE FROM `trimestre`;
/*!40000 ALTER TABLE `trimestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `trimestre` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
