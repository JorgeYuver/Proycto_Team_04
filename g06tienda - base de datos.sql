-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla g06tienda.carrito
CREATE TABLE IF NOT EXISTS `carrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.carrito: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` (`id`, `producto_id`, `precio`, `cliente_id`) VALUES
	(1, 5, 52000, 1),
	(2, 7, 50000, 2),
	(3, 3, 50000, 3),
	(4, 8, 42000, 4);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;

-- Volcando estructura para tabla g06tienda.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.categorias: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `nombre`) VALUES
	(1, 'Camisetas'),
	(2, 'Polos'),
	(3, 'Estampados');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla g06tienda.detallepagos
CREATE TABLE IF NOT EXISTS `detallepagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.detallepagos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `detallepagos` DISABLE KEYS */;
INSERT INTO `detallepagos` (`id`, `pago_id`, `producto_id`) VALUES
	(1, 1, 5),
	(2, 2, 7),
	(3, 3, 3),
	(4, 4, 8);
/*!40000 ALTER TABLE `detallepagos` ENABLE KEYS */;

-- Volcando estructura para tabla g06tienda.pagos
CREATE TABLE IF NOT EXISTS `pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.pagos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` (`id`, `fecha`, `valor`, `cliente_id`) VALUES
	(1, '2022-10-12', 52000, 1),
	(2, '2022-10-12', 50000, 2),
	(3, '2022-10-12', 50000, 3),
	(4, '2022-10-12', 42000, 4);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;

-- Volcando estructura para tabla g06tienda.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.productos: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `precio`, `categoria_id`, `estado`) VALUES
	(1, 'Camiseta Roja', 48000, 1, 1),
	(2, 'Camiseta Azul', 45000, 1, 1),
	(3, 'Camiseta Blanca', 50000, 1, 1),
	(4, 'Camiseta Vinotinto', 48000, 1, 1),
	(5, 'Polo Rosado', 52000, 2, 1),
	(6, 'Polo Lila', 49000, 2, 1),
	(7, 'Polo Beige', 50000, 2, 1),
	(8, 'Estampado Negro', 42000, 3, 1),
	(9, 'Polo Azul', 55000, 2, 1),
	(10, 'Estampado Verde', 52000, 3, 1),
	(11, 'Estampado Blanco', 48000, 3, 1),
	(12, 'Estampado Rojo', 55000, 3, 1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla g06tienda.tipousuario
CREATE TABLE IF NOT EXISTS `tipousuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.tipousuario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` (`id`, `tipo`) VALUES
	(1, 'Cliente'),
	(2, 'Usuario');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;

-- Volcando estructura para tabla g06tienda.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla g06tienda.usuarios: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`, `tipo_id`) VALUES
	(1, 'Jhon Garcia', 'jgarcia@unab.edu.co', '12345', 1),
	(2, 'Olga Lucia Lopez', 'olopez@unab.edu.co', '54321', 1),
	(3, 'Jorge Yuver Moreno', 'jmoreno@unab.edu.co', '98765', 1),
	(4, 'Rhonal Alonso', 'ralonso@unab.edu.co', '67890', 1),
	(5, 'Administrador Uno', 'admin1@unab.edu.co', '0000', 2),
	(6, 'Administrador Dos', 'admin2@unab.edu.co', '7777', 2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
