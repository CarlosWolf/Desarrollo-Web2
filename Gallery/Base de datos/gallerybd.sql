/*
 Navicat Premium Data Transfer

 Source Server         : ConeccionBd
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : gallerybd

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 28/05/2022 20:24:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int NOT NULL,
  `photo_id` int NOT NULL,
  `author` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (0, 128, 'Yo', 'Que bonito es lo bonito');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `caption` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alternate_text` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES (81, 'Gray Carss', '', 'Audi V8', 'images-21.jpg', '', 'image/jpeg', 19957);
INSERT INTO `photos` VALUES (83, '', '', '', 'images-22.jpg', '', 'image/jpeg', 21133);
INSERT INTO `photos` VALUES (85, '', '', '', 'images-23.jpg', '', 'image/jpeg', 22792);
INSERT INTO `photos` VALUES (87, '', '', '', 'images-24.jpg', '', 'image/jpeg', 29850);
INSERT INTO `photos` VALUES (89, '', '', '', 'images-25.jpg', '', 'image/jpeg', 19363);
INSERT INTO `photos` VALUES (91, '', '', '', 'images-26.jpg', '', 'image/jpeg', 21802);
INSERT INTO `photos` VALUES (95, '', '', '', 'images-28.jpg', '', 'image/jpeg', 17662);
INSERT INTO `photos` VALUES (97, '', '', '', 'images-29.jpg', '', 'image/jpeg', 25493);
INSERT INTO `photos` VALUES (99, '', '', '', 'images-30.jpg', '', 'image/jpeg', 20257);
INSERT INTO `photos` VALUES (101, '', '', '', 'images-31.jpg', '', 'image/jpeg', 20928);
INSERT INTO `photos` VALUES (103, '', '', '', 'images-32.jpg', '', 'image/jpeg', 22772);
INSERT INTO `photos` VALUES (104, '', '', '', 'images-33 copy.jpg', '', 'image/jpeg', 16855);
INSERT INTO `photos` VALUES (105, '', '', '', 'images-33.jpg', '', 'image/jpeg', 16855);
INSERT INTO `photos` VALUES (106, '', '', '', 'images-34 copy.jpg', '', 'image/jpeg', 23587);
INSERT INTO `photos` VALUES (107, '', '', '', 'images-34.jpg', '', 'image/jpeg', 23587);
INSERT INTO `photos` VALUES (108, '', '', '', 'images-35 copy.jpg', '', 'image/jpeg', 23672);
INSERT INTO `photos` VALUES (109, '', '', '', 'images-35.jpg', '', 'image/jpeg', 23672);
INSERT INTO `photos` VALUES (110, '', '', '', 'images-36 copy.jpg', '', 'image/jpeg', 21672);
INSERT INTO `photos` VALUES (111, '', '', '', 'images-36.jpg', '', 'image/jpeg', 21672);
INSERT INTO `photos` VALUES (112, '', '', '', 'images-37 copy.jpg', '', 'image/jpeg', 20381);
INSERT INTO `photos` VALUES (113, '', '', '', 'images-37.jpg', '', 'image/jpeg', 20381);
INSERT INTO `photos` VALUES (114, '', '', '', 'images-38 copy.jpg', '', 'image/jpeg', 21857);
INSERT INTO `photos` VALUES (115, '', '', '', 'images-38.jpg', '', 'image/jpeg', 21857);
INSERT INTO `photos` VALUES (116, '', '', '', 'images-39 copy.jpg', '', 'image/jpeg', 24969);
INSERT INTO `photos` VALUES (117, '', '', '', 'images-39.jpg', '', 'image/jpeg', 24969);
INSERT INTO `photos` VALUES (118, '', '', '', 'images-40.jpg', '', 'image/jpeg', 24385);
INSERT INTO `photos` VALUES (119, '', '', '', 'images-41 copy.jpg', '', 'image/jpeg', 16296);
INSERT INTO `photos` VALUES (120, '', '', '', 'images-41.jpg', '', 'image/jpeg', 16296);
INSERT INTO `photos` VALUES (121, '', '', '', 'images-42 copy.jpg', '', 'image/jpeg', 22401);
INSERT INTO `photos` VALUES (122, '', '', '', 'images-44 copy.jpg', '', 'image/jpeg', 29486);
INSERT INTO `photos` VALUES (123, '', '', '', 'images-44.jpg', '', 'image/jpeg', 29486);
INSERT INTO `photos` VALUES (124, '', '', '', 'images-50 copy.jpg', '', 'image/jpeg', 21652);
INSERT INTO `photos` VALUES (125, '', '', '', 'images-50.jpg', '', 'image/jpeg', 21652);
INSERT INTO `photos` VALUES (126, '', '', '', 'slide_1.jpg', '', 'image/jpeg', 177750);
INSERT INTO `photos` VALUES (127, '', '', '', 'slide_2.jpg', '', 'image/jpeg', 190863);
INSERT INTO `photos` VALUES (128, '', '', '', 'slide_3.jpg', '', 'image/jpeg', 61299);
INSERT INTO `photos` VALUES (135, '', '', '', 'lambor_aventador.jpg', '', 'image/jpeg', 739322);
INSERT INTO `photos` VALUES (0, 'Albedo mami', '', '', 'Albedo bunny.jpg', '', 'image/jpeg', 227761);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Juan', '117', 'West', 'Day', '');
INSERT INTO `users` VALUES (4, 'carlosmontero', '117', 'Carlos', 'Montero', '');

SET FOREIGN_KEY_CHECKS = 1;
