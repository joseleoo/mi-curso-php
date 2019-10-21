-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.9-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para cursophp
DROP DATABASE IF EXISTS `cursophp`;
CREATE DATABASE IF NOT EXISTS `cursophp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cursophp`;

-- Volcando estructura para tabla cursophp.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `logo` text,
  `visible` tinyint(1) NOT NULL,
  `months` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cursophp.jobs: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT IGNORE INTO `jobs` (`id`, `title`, `description`, `logo`, `visible`, `months`, `updated_at`, `created_at`) VALUES
	(1, 'tecnologo', 'tecnologia', NULL, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, '.net dev', 'a lot of things', NULL, 0, 0, '2019-10-07 16:35:07', '2019-10-07 16:35:07'),
	(3, 'Job XSSS', '<script>alert(\'Hello\');</script>', NULL, 0, 0, '2019-10-09 18:19:09', '2019-10-09 18:19:09'),
	(4, 'PHP dev', 'Things!!!', NULL, 0, 0, '2019-10-14 19:31:17', '2019-10-14 19:31:17'),
	(5, 'Workana dev', 'emocionante', NULL, 0, 0, '2019-10-16 16:22:30', '2019-10-16 16:22:30'),
	(12, 'LEONN', 'super', 'logo leon.jpg', 0, 0, '2019-10-16 16:52:15', '2019-10-16 16:52:15');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Volcando estructura para tabla cursophp.projects
DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `visible` int(11) NOT NULL,
  `months` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cursophp.projects: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT IGNORE INTO `projects` (`id`, `title`, `description`, `visible`, `months`, `created_at`, `updated_at`) VALUES
	(1, 'leonn', 'factura', 1, 1, NULL, NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Volcando estructura para tabla cursophp.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `password` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla cursophp.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
	(2, 'José Leonardo ', '$2y$10$Fql6mxDSX6R08.AmUekzZeH8AyJEe0bueXq2jI9bgtj7aAraduWey', '2019-10-21 20:24:33', '2019-10-21 20:24:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
