/*
 Navicat Premium Data Transfer

 Source Server         : ConeccionBd
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : curso_paginacion

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 28/05/2022 20:20:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `articulos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articulos
-- ----------------------------
INSERT INTO `articulos` VALUES (1, 'Lorem Ipsum is simply dummy text of the printing an');
INSERT INTO `articulos` VALUES (2, 'Lorem Ipsum is simply dummy text of the printing an');
INSERT INTO `articulos` VALUES (3, 'Lorem Ipsum is simply dummy text of the printing an');
INSERT INTO `articulos` VALUES (4, 'Lorem Ipsum is simply dummy text of the printing an');
INSERT INTO `articulos` VALUES (5, 'Lorem Ipsum is simply dummy text of the printing an');
INSERT INTO `articulos` VALUES (6, 'Lorem Ipsum is simply dummy text of the printing an');
INSERT INTO `articulos` VALUES (7, 'Lorem Ipsum is simply dummy text of the printing an');

SET FOREIGN_KEY_CHECKS = 1;
