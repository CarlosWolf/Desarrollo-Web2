/*
 Navicat Premium Data Transfer

 Source Server         : ConeccionBd
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : curso_php_ajax

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 28/05/2022 20:46:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` char(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `edad` int NULL DEFAULT NULL,
  `pais` char(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `correo` char(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Tommy', 20, 'Mexico', 'tommy@tommy.com');
INSERT INTO `usuarios` VALUES (2, 'Israel', 18, 'Colombia', 'isra@isra.com');
INSERT INTO `usuarios` VALUES (3, 'Manuel', 21, 'Hungria', 'manuel@manuel.com');
INSERT INTO `usuarios` VALUES (4, 'Juan', 30, 'Turquia', 'juan@juan.com');
INSERT INTO `usuarios` VALUES (5, 'Moises', 25, 'EUA', 'moises@moises.com');
INSERT INTO `usuarios` VALUES (6, 'Francisco', 46, 'Japon', 'frank@frank.com');

SET FOREIGN_KEY_CHECKS = 1;
