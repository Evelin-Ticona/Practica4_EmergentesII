/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : bd_blog

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 24/05/2024 17:25:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- ----------------------------
-- Records of post
-- ----------------------------
BEGIN;
INSERT INTO `post` VALUES (1, '2024-05-14', 'Que depara la proxima generacion de procesadores?', 'Analizamos las tendencias emergentes en el diseno de procesodores y lo que podemos esperar de la proxima generaciÃÂ³n de chips Desde arquitecturas innovadoras hasta avances en la fabricacion, exploramos como estos nuevas tecnologias estan impulsando el rendimiento y la eficiencia en una amplia gama de dispositivos, desde telefonos inteligentes hasta centros de datos. Tambien discutimos cÃÂ³mo estos avances podrion afectar el futuro de la informatica y la tecnologia en general'), (2, '2024-05-13', 'Explorando los lenguajes de Programacion del futuro', 'Exploramos lenguajes que podrian dominar el panorama tecnologico en los proximos siglos');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
