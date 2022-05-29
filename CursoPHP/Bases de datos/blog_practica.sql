/*
 Navicat Premium Data Transfer

 Source Server         : ConeccionBd
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blog_practica

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 28/05/2022 20:15:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `extracto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `texto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `thump` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articulos
-- ----------------------------
INSERT INTO `articulos` VALUES (1, 'Primer articulo', 'What is Lorem Ipsum?', '2022-05-26 14:46:06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '1.png');
INSERT INTO `articulos` VALUES (2, 'Titulo del segundo post', 'Why do we use it?', '2022-05-26 14:46:06', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', '2.png');
INSERT INTO `articulos` VALUES (3, 'Titulo del Tercer Articulo', 'Where can I get some?', '2022-05-26 14:47:40', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', '3.png');
INSERT INTO `articulos` VALUES (4, 'Titulo Cuarto Articulo', 'Where does it come from?', '2022-05-26 14:47:40', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,', '4.png');

SET FOREIGN_KEY_CHECKS = 1;
