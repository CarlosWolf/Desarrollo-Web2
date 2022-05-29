/*
 Navicat Premium Data Transfer

 Source Server         : ConeccionBd
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : tweetify

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 28/05/2022 20:21:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `body` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 1, 'Have you ever thought about life in the space?', '', '2016-07-01 01:00:00', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES (2, 1, 'Yes, that is why I applied to a job in NASA! ', '', '2016-07-05 01:00:00', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES (3, 1, 'Really? This is exciting!', '', '2016-07-12 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES (4, 1, 'I have worked a lot for this!', '', '2016-07-12 01:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `profile_icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apikey` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'john', '000c285457fc971f862a79b786476c78812c8897063c6fa9c045f579a3b2d63f', 'john@example.com', 'peter.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `users` VALUES (2, 'jack', '4d6b96d1e8f9bfcd28169bafe2e17da6e1a95f71e8ca6196d3affb4f95ca809f', 'jack@example.com', 'jack.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `users` VALUES (3, 'sarah', '81ba24935dd9a720826155382938610f1b74ba226e85a7b4ca2ad58cf06664fa', 'sarah@example.com', 'sarah.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `users` VALUES (4, 'nick', 'ef1b839067281c41a6abdf36ff2346700f9cd5f17d8d4e486be9e81c67779258', 'nick@example.com', 'nick.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
