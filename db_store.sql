/*
 Navicat Premium Data Transfer

 Source Server         : Mysql80
 Source Server Type    : MySQL
 Source Server Version : 80040
 Source Host           : localhost:3306
 Source Schema         : db_store

 Target Server Type    : MySQL
 Target Server Version : 80040
 File Encoding         : 65001

 Date: 06/01/2025 23:00:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_type_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `codename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 141 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, '1', 'add_logentry', 'Can add log entry');
INSERT INTO `auth_permission` VALUES (2, '1', 'change_logentry', 'Can change log entry');
INSERT INTO `auth_permission` VALUES (3, '1', 'delete_logentry', 'Can delete log entry');
INSERT INTO `auth_permission` VALUES (4, '1', 'view_logentry', 'Can view log entry');
INSERT INTO `auth_permission` VALUES (5, '2', 'add_permission', 'Can add permission');
INSERT INTO `auth_permission` VALUES (6, '2', 'change_permission', 'Can change permission');
INSERT INTO `auth_permission` VALUES (7, '2', 'delete_permission', 'Can delete permission');
INSERT INTO `auth_permission` VALUES (8, '2', 'view_permission', 'Can view permission');
INSERT INTO `auth_permission` VALUES (9, '3', 'add_group', 'Can add group');
INSERT INTO `auth_permission` VALUES (10, '3', 'change_group', 'Can change group');
INSERT INTO `auth_permission` VALUES (11, '3', 'delete_group', 'Can delete group');
INSERT INTO `auth_permission` VALUES (12, '3', 'view_group', 'Can view group');
INSERT INTO `auth_permission` VALUES (13, '4', 'add_user', 'Can add user');
INSERT INTO `auth_permission` VALUES (14, '4', 'change_user', 'Can change user');
INSERT INTO `auth_permission` VALUES (15, '4', 'delete_user', 'Can delete user');
INSERT INTO `auth_permission` VALUES (16, '4', 'view_user', 'Can view user');
INSERT INTO `auth_permission` VALUES (17, '5', 'add_contenttype', 'Can add content type');
INSERT INTO `auth_permission` VALUES (18, '5', 'change_contenttype', 'Can change content type');
INSERT INTO `auth_permission` VALUES (19, '5', 'delete_contenttype', 'Can delete content type');
INSERT INTO `auth_permission` VALUES (20, '5', 'view_contenttype', 'Can view content type');
INSERT INTO `auth_permission` VALUES (21, '6', 'add_session', 'Can add session');
INSERT INTO `auth_permission` VALUES (22, '6', 'change_session', 'Can change session');
INSERT INTO `auth_permission` VALUES (23, '6', 'delete_session', 'Can delete session');
INSERT INTO `auth_permission` VALUES (24, '6', 'view_session', 'Can view session');
INSERT INTO `auth_permission` VALUES (25, '7', 'add_customer', 'Can add customer');
INSERT INTO `auth_permission` VALUES (26, '7', 'change_customer', 'Can change customer');
INSERT INTO `auth_permission` VALUES (27, '7', 'delete_customer', 'Can delete customer');
INSERT INTO `auth_permission` VALUES (28, '7', 'view_customer', 'Can view customer');
INSERT INTO `auth_permission` VALUES (29, '8', 'add_clothes', 'Can add clothes');
INSERT INTO `auth_permission` VALUES (30, '8', 'change_clothes', 'Can change clothes');
INSERT INTO `auth_permission` VALUES (31, '8', 'delete_clothes', 'Can delete clothes');
INSERT INTO `auth_permission` VALUES (32, '8', 'view_clothes', 'Can view clothes');
INSERT INTO `auth_permission` VALUES (33, '9', 'add_user', 'Can add 用户');
INSERT INTO `auth_permission` VALUES (34, '9', 'change_user', 'Can change 用户');
INSERT INTO `auth_permission` VALUES (35, '9', 'delete_user', 'Can delete 用户');
INSERT INTO `auth_permission` VALUES (36, '9', 'view_user', 'Can view 用户');
INSERT INTO `auth_permission` VALUES (37, '10', 'add_captchastore', 'Can add captcha store');
INSERT INTO `auth_permission` VALUES (38, '10', 'change_captchastore', 'Can change captcha store');
INSERT INTO `auth_permission` VALUES (39, '10', 'delete_captchastore', 'Can delete captcha store');
INSERT INTO `auth_permission` VALUES (40, '10', 'view_captchastore', 'Can view captcha store');
INSERT INTO `auth_permission` VALUES (41, '11', 'add_inorder', 'Can add inorder');
INSERT INTO `auth_permission` VALUES (42, '11', 'change_inorder', 'Can change inorder');
INSERT INTO `auth_permission` VALUES (43, '11', 'delete_inorder', 'Can delete inorder');
INSERT INTO `auth_permission` VALUES (44, '11', 'view_inorder', 'Can view inorder');
INSERT INTO `auth_permission` VALUES (45, '12', 'add_outorder', 'Can add outorder');
INSERT INTO `auth_permission` VALUES (46, '12', 'change_outorder', 'Can change outorder');
INSERT INTO `auth_permission` VALUES (47, '12', 'delete_outorder', 'Can delete outorder');
INSERT INTO `auth_permission` VALUES (48, '12', 'view_outorder', 'Can view outorder');
INSERT INTO `auth_permission` VALUES (49, '13', 'add_outorderclothes', 'Can add outorder clothes');
INSERT INTO `auth_permission` VALUES (50, '13', 'change_outorderclothes', 'Can change outorder clothes');
INSERT INTO `auth_permission` VALUES (51, '13', 'delete_outorderclothes', 'Can delete outorder clothes');
INSERT INTO `auth_permission` VALUES (52, '13', 'view_outorderclothes', 'Can view outorder clothes');
INSERT INTO `auth_permission` VALUES (53, '14', 'add_inorderclothes', 'Can add inorder clothes');
INSERT INTO `auth_permission` VALUES (54, '14', 'change_inorderclothes', 'Can change inorder clothes');
INSERT INTO `auth_permission` VALUES (55, '14', 'delete_inorderclothes', 'Can delete inorder clothes');
INSERT INTO `auth_permission` VALUES (56, '14', 'view_inorderclothes', 'Can view inorder clothes');
INSERT INTO `auth_permission` VALUES (57, '1', 'add_logentry', 'Can add log entry');
INSERT INTO `auth_permission` VALUES (58, '1', 'change_logentry', 'Can change log entry');
INSERT INTO `auth_permission` VALUES (59, '1', 'delete_logentry', 'Can delete log entry');
INSERT INTO `auth_permission` VALUES (60, '2', 'add_permission', 'Can add permission');
INSERT INTO `auth_permission` VALUES (61, '2', 'change_permission', 'Can change permission');
INSERT INTO `auth_permission` VALUES (62, '2', 'delete_permission', 'Can delete permission');
INSERT INTO `auth_permission` VALUES (63, '3', 'add_group', 'Can add group');
INSERT INTO `auth_permission` VALUES (64, '3', 'change_group', 'Can change group');
INSERT INTO `auth_permission` VALUES (65, '3', 'delete_group', 'Can delete group');
INSERT INTO `auth_permission` VALUES (66, '4', 'add_user', 'Can add user');
INSERT INTO `auth_permission` VALUES (67, '4', 'change_user', 'Can change user');
INSERT INTO `auth_permission` VALUES (68, '4', 'delete_user', 'Can delete user');
INSERT INTO `auth_permission` VALUES (69, '5', 'add_contenttype', 'Can add content type');
INSERT INTO `auth_permission` VALUES (70, '5', 'change_contenttype', 'Can change content type');
INSERT INTO `auth_permission` VALUES (71, '5', 'delete_contenttype', 'Can delete content type');
INSERT INTO `auth_permission` VALUES (72, '6', 'add_session', 'Can add session');
INSERT INTO `auth_permission` VALUES (73, '6', 'change_session', 'Can change session');
INSERT INTO `auth_permission` VALUES (74, '6', 'delete_session', 'Can delete session');
INSERT INTO `auth_permission` VALUES (75, '8', 'add_clothes', 'Can add Clothing information');
INSERT INTO `auth_permission` VALUES (76, '8', 'change_clothes', 'Can change Clothing information');
INSERT INTO `auth_permission` VALUES (77, '8', 'delete_clothes', 'Can delete Clothing information');
INSERT INTO `auth_permission` VALUES (78, '7', 'add_customer', 'Can add Customer information');
INSERT INTO `auth_permission` VALUES (79, '7', 'change_customer', 'Can change Customer information');
INSERT INTO `auth_permission` VALUES (80, '7', 'delete_customer', 'Can delete Customer information');
INSERT INTO `auth_permission` VALUES (81, '11', 'add_inorder', 'Can add Warehouse entry information');
INSERT INTO `auth_permission` VALUES (82, '11', 'change_inorder', 'Can change Warehouse entry information');
INSERT INTO `auth_permission` VALUES (83, '11', 'delete_inorder', 'Can delete Warehouse entry information');
INSERT INTO `auth_permission` VALUES (84, '14', 'add_inorderclothes', 'Can add Store entry details');
INSERT INTO `auth_permission` VALUES (85, '14', 'change_inorderclothes', 'Can change Store entry details');
INSERT INTO `auth_permission` VALUES (86, '14', 'delete_inorderclothes', 'Can delete Store entry details');
INSERT INTO `auth_permission` VALUES (87, '12', 'add_outorder', 'Can add Outbound information');
INSERT INTO `auth_permission` VALUES (88, '12', 'change_outorder', 'Can change Outbound information');
INSERT INTO `auth_permission` VALUES (89, '12', 'delete_outorder', 'Can delete Outbound information');
INSERT INTO `auth_permission` VALUES (90, '13', 'add_outorderclothes', 'Can add Details of the delivery slip');
INSERT INTO `auth_permission` VALUES (91, '13', 'change_outorderclothes', 'Can change Details of the delivery slip');
INSERT INTO `auth_permission` VALUES (92, '13', 'delete_outorderclothes', 'Can delete Details of the delivery slip');
INSERT INTO `auth_permission` VALUES (93, '9', 'add_user', 'Can add User information');
INSERT INTO `auth_permission` VALUES (94, '9', 'change_user', 'Can change User information');
INSERT INTO `auth_permission` VALUES (95, '9', 'delete_user', 'Can delete User information');
INSERT INTO `auth_permission` VALUES (96, '10', 'add_captchastore', 'Can add captcha store');
INSERT INTO `auth_permission` VALUES (97, '10', 'change_captchastore', 'Can change captcha store');
INSERT INTO `auth_permission` VALUES (98, '10', 'delete_captchastore', 'Can delete captcha store');
INSERT INTO `auth_permission` VALUES (99, '1', 'add_logentry', 'Can add log entry');
INSERT INTO `auth_permission` VALUES (100, '1', 'change_logentry', 'Can change log entry');
INSERT INTO `auth_permission` VALUES (101, '1', 'delete_logentry', 'Can delete log entry');
INSERT INTO `auth_permission` VALUES (102, '2', 'add_permission', 'Can add permission');
INSERT INTO `auth_permission` VALUES (103, '2', 'change_permission', 'Can change permission');
INSERT INTO `auth_permission` VALUES (104, '2', 'delete_permission', 'Can delete permission');
INSERT INTO `auth_permission` VALUES (105, '3', 'add_group', 'Can add group');
INSERT INTO `auth_permission` VALUES (106, '3', 'change_group', 'Can change group');
INSERT INTO `auth_permission` VALUES (107, '3', 'delete_group', 'Can delete group');
INSERT INTO `auth_permission` VALUES (108, '4', 'add_user', 'Can add user');
INSERT INTO `auth_permission` VALUES (109, '4', 'change_user', 'Can change user');
INSERT INTO `auth_permission` VALUES (110, '4', 'delete_user', 'Can delete user');
INSERT INTO `auth_permission` VALUES (111, '5', 'add_contenttype', 'Can add content type');
INSERT INTO `auth_permission` VALUES (112, '5', 'change_contenttype', 'Can change content type');
INSERT INTO `auth_permission` VALUES (113, '5', 'delete_contenttype', 'Can delete content type');
INSERT INTO `auth_permission` VALUES (114, '6', 'add_session', 'Can add session');
INSERT INTO `auth_permission` VALUES (115, '6', 'change_session', 'Can change session');
INSERT INTO `auth_permission` VALUES (116, '6', 'delete_session', 'Can delete session');
INSERT INTO `auth_permission` VALUES (117, '8', 'add_clothes', 'Can add Clothing information');
INSERT INTO `auth_permission` VALUES (118, '8', 'change_clothes', 'Can change Clothing information');
INSERT INTO `auth_permission` VALUES (119, '8', 'delete_clothes', 'Can delete Clothing information');
INSERT INTO `auth_permission` VALUES (120, '7', 'add_customer', 'Can add Customer information');
INSERT INTO `auth_permission` VALUES (121, '7', 'change_customer', 'Can change Customer information');
INSERT INTO `auth_permission` VALUES (122, '7', 'delete_customer', 'Can delete Customer information');
INSERT INTO `auth_permission` VALUES (123, '11', 'add_inorder', 'Can add Warehouse entry information');
INSERT INTO `auth_permission` VALUES (124, '11', 'change_inorder', 'Can change Warehouse entry information');
INSERT INTO `auth_permission` VALUES (125, '11', 'delete_inorder', 'Can delete Warehouse entry information');
INSERT INTO `auth_permission` VALUES (126, '14', 'add_inorderclothes', 'Can add Store entry details');
INSERT INTO `auth_permission` VALUES (127, '14', 'change_inorderclothes', 'Can change Store entry details');
INSERT INTO `auth_permission` VALUES (128, '14', 'delete_inorderclothes', 'Can delete Store entry details');
INSERT INTO `auth_permission` VALUES (129, '12', 'add_outorder', 'Can add Outbound information');
INSERT INTO `auth_permission` VALUES (130, '12', 'change_outorder', 'Can change Outbound information');
INSERT INTO `auth_permission` VALUES (131, '12', 'delete_outorder', 'Can delete Outbound information');
INSERT INTO `auth_permission` VALUES (132, '13', 'add_outorderclothes', 'Can add Details of the delivery slip');
INSERT INTO `auth_permission` VALUES (133, '13', 'change_outorderclothes', 'Can change Details of the delivery slip');
INSERT INTO `auth_permission` VALUES (134, '13', 'delete_outorderclothes', 'Can delete Details of the delivery slip');
INSERT INTO `auth_permission` VALUES (135, '9', 'add_user', 'Can add User information');
INSERT INTO `auth_permission` VALUES (136, '9', 'change_user', 'Can change User information');
INSERT INTO `auth_permission` VALUES (137, '9', 'delete_user', 'Can delete User information');
INSERT INTO `auth_permission` VALUES (138, '10', 'add_captchastore', 'Can add captcha store');
INSERT INTO `auth_permission` VALUES (139, '10', 'change_captchastore', 'Can change captcha store');
INSERT INTO `auth_permission` VALUES (140, '10', 'delete_captchastore', 'Can delete captcha store');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `is_superuser` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_staff` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `date_joined` datetime NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$390000$mO1MG0zxCv4ftFRxTz8al7$xyoED9OtBp3lvddjQAsIJl1yb6bXpX6YuDfYSNKTgqs=', '2024-11-27 12:52:07', '1', 'admin', NULL, NULL, '1', '1', '2024-11-27 20:47:30', NULL);

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `group_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `response` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `hashkey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `expiration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 321 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (318, 'TDNI', 'tdni', '588db9f043f32851479e7a008f4d64605d71fcc0', '2025-01-06 21:46:51.529636');
INSERT INTO `captcha_captchastore` VALUES (320, 'YRGY', 'yrgy', '02c9e40b2df2c5024ce9d15d39acd5b4bb8bd16b', '2025-01-06 22:49:08.529546');

-- ----------------------------
-- Table structure for common_clothes
-- ----------------------------
DROP TABLE IF EXISTS `common_clothes`;
CREATE TABLE `common_clothes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of common_clothes
-- ----------------------------
INSERT INTO `common_clothes` VALUES (1, 'A-12', 200, 'M', 'black', 'Men\'s hoodie', '2024-11-27 21:45:38', '2024-12-26 18:03:36', 159, 'Men\'s hoodie');
INSERT INTO `common_clothes` VALUES (2, 'C-15', 50, 'L', 'white', 'Women\'s T-shirt', '2024-11-27 21:45:38', '2024-12-26 18:03:10', 57, 'Women\'s T-shirt');
INSERT INTO `common_clothes` VALUES (3, 'F-33', 100, 'XL', 'white', 'Warm sweater', '2024-11-27 21:45:38', '2024-12-23 23:17:55', -65, 'Warm sweater');
INSERT INTO `common_clothes` VALUES (4, 'X-33', 500, 'L', 'black', 'Suit, evening dress', '2024-11-27 22:26:21', '2024-12-23 23:25:12', 144, 'Suit, evening dress');
INSERT INTO `common_clothes` VALUES (5, 'K-323', 120, 'L', 'black', '2024 New slacks', '2024-11-27 21:56:09', '2024-12-23 23:18:24', 24, '2024 New slacks');
INSERT INTO `common_clothes` VALUES (6, 'C-16', 200, 'M', 'blue', 'Security uniform', '2024-11-27 08:31:56', '2024-12-23 23:23:09', 11, 'Security uniform');
INSERT INTO `common_clothes` VALUES (7, 'L', 45, 'S', 'blck', 'Baby clothing', '2024-12-26 19:15:50', '2024-12-26 19:15:50', 50, 'Baby clothing');
INSERT INTO `common_clothes` VALUES (8, 'M', 78, 'XL', 'yellow', 'Cotton-padded clothes', '2024-12-26 19:18:32', '2024-12-26 19:18:32', 7, 'Cotton-padded clothes');

-- ----------------------------
-- Table structure for common_customer
-- ----------------------------
DROP TABLE IF EXISTS `common_customer`;
CREATE TABLE `common_customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of common_customer
-- ----------------------------
INSERT INTO `common_customer` VALUES (1, 'Gao Qiqiang', 'Old factory Street, Beijing City', '2024-11-27 21:45:38', '2024-12-23 23:02:46', '16666666666');
INSERT INTO `common_customer` VALUES (2, 'Zhao Lichun', 'Handong', '2024-11-27 21:45:38', '2024-12-23 23:03:31', '17777777777');
INSERT INTO `common_customer` VALUES (3, 'Qi Tongwei', 'Handong province landscape Group', '2024-11-27 23:29:35', '2024-12-23 23:03:58', '18888888888');
INSERT INTO `common_customer` VALUES (7, 'jack', 'Kim Boon Tai MRT Station, Singap', '2024-12-26 19:12:54', '2024-12-26 19:12:54', '18879033873');

-- ----------------------------
-- Table structure for common_inorder
-- ----------------------------
DROP TABLE IF EXISTS `common_inorder`;
CREATE TABLE `common_inorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of common_inorder
-- ----------------------------
INSERT INTO `common_inorder` VALUES (32, 'IN2024121711592699663', '2024-12-17 11:59:27', 2, '2024-12-17 11:59:32', '2');
INSERT INTO `common_inorder` VALUES (30, 'IN2024121101531596728', '2024-12-11 01:53:16', 2, '2024-12-11 01:53:16', '1');
INSERT INTO `common_inorder` VALUES (31, 'IN2024121113025647887', '2024-12-11 13:02:57', 1, '2024-12-11 13:02:57', '16');
INSERT INTO `common_inorder` VALUES (29, 'IN2024121101522791451', '2024-12-11 01:52:27', 1, '2024-12-11 01:52:33', '1');
INSERT INTO `common_inorder` VALUES (33, 'IN2024122323235495010', '2024-12-23 23:23:55', 3, '2024-12-23 23:23:55', '16');
INSERT INTO `common_inorder` VALUES (34, 'IN2024122618030495914', '2024-12-26 18:03:05', 2, '2024-12-26 18:03:05', '16');
INSERT INTO `common_inorder` VALUES (35, 'IN2024122618032954962', '2024-12-26 18:03:29', 1, '2024-12-26 18:03:29', '16');

-- ----------------------------
-- Table structure for common_inorderclothes
-- ----------------------------
DROP TABLE IF EXISTS `common_inorderclothes`;
CREATE TABLE `common_inorderclothes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `clothes_id` int NULL DEFAULT NULL,
  `amount` int NULL DEFAULT NULL,
  `inorder_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of common_inorderclothes
-- ----------------------------
INSERT INTO `common_inorderclothes` VALUES (25, 1, 2, 35);
INSERT INTO `common_inorderclothes` VALUES (16, 3, 21, 30);
INSERT INTO `common_inorderclothes` VALUES (20, 5, 23, 31);
INSERT INTO `common_inorderclothes` VALUES (24, 2, 2, 34);
INSERT INTO `common_inorderclothes` VALUES (23, 4, 21, 33);
INSERT INTO `common_inorderclothes` VALUES (22, 4, 23, 29);
INSERT INTO `common_inorderclothes` VALUES (21, 1, 4, 29);

-- ----------------------------
-- Table structure for common_outorder
-- ----------------------------
DROP TABLE IF EXISTS `common_outorder`;
CREATE TABLE `common_outorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of common_outorder
-- ----------------------------
INSERT INTO `common_outorder` VALUES (22, 'IN2024121113034663951', '2024-12-11 13:03:47', 2, '2024-12-11 13:03:47', 16);
INSERT INTO `common_outorder` VALUES (23, 'IN2024121113041556717', '2024-12-11 13:04:16', 3, '2024-12-11 13:04:16', 16);
INSERT INTO `common_outorder` VALUES (21, 'IN2024121101443323931', '2024-12-11 01:44:34', 1, '2024-12-11 01:44:34', 1);
INSERT INTO `common_outorder` VALUES (24, 'IN2024-12-26 18:02:2214079', '2024-12-26 18:02:23', 2, '2024-12-26 18:02:23', 16);

-- ----------------------------
-- Table structure for common_outorderclothes
-- ----------------------------
DROP TABLE IF EXISTS `common_outorderclothes`;
CREATE TABLE `common_outorderclothes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `clothes_id` int NULL DEFAULT NULL,
  `amount` int NULL DEFAULT NULL,
  `outorder_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of common_outorderclothes
-- ----------------------------
INSERT INTO `common_outorderclothes` VALUES (23, 2, 45, 23);
INSERT INTO `common_outorderclothes` VALUES (22, 1, 34, 22);
INSERT INTO `common_outorderclothes` VALUES (24, 1, 2, 21);
INSERT INTO `common_outorderclothes` VALUES (25, 1, 1, 24);

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `modify_time` datetime NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES (2, 'test', 'test', 'operator', '2024-11-27 20:45:23', '2024-12-23 23:33:29', 'd94d479f2c371ab210b600a95c40fe7a4bdef0568a7f7bad0b27b727fd648980');
INSERT INTO `common_user` VALUES (1, 'bhml', 'bhml', 'Administrator', '2024-11-27 12:35:00', '2024-12-23 23:37:03', 'd94d479f2c371ab210b600a95c40fe7a4bdef0568a7f7bad0b27b727fd648980');
INSERT INTO `common_user` VALUES (16, 'eric', 'eric', 'Administrator', '2024-12-11 13:01:42', '2024-12-23 23:33:34', 'd94d479f2c371ab210b600a95c40fe7a4bdef0568a7f7bad0b27b727fd648980');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NULL DEFAULT NULL,
  `object_id` int NULL DEFAULT NULL,
  `object_repr` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `change_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `action_flag` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'common', 'customer');
INSERT INTO `django_content_type` VALUES (8, 'common', 'clothes');
INSERT INTO `django_content_type` VALUES (9, 'common', 'user');
INSERT INTO `django_content_type` VALUES (10, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (11, 'common', 'inorder');
INSERT INTO `django_content_type` VALUES (12, 'common', 'outorder');
INSERT INTO `django_content_type` VALUES (13, 'common', 'outorderclothes');
INSERT INTO `django_content_type` VALUES (14, 'common', 'inorderclothes');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `applied` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `session_data` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `expire_date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('84o8dtl1l9gtvk6pp5h2peazcahbbgf2', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyhLLzEnNTlayUkjJyc5SgQkX5OSChmFLzpERDIGliYBZTampiaqFUCwB2FBqk:1tL4IT:-rcCynIAssQKblnMFHXl-e8_huDiJkeQJT7gLtJGOKg', '2024-12-11 02:15:21.365038');
INSERT INTO `django_session` VALUES ('rt5me7z4fj1rggym1n1w8s78gsszroe0', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyhLLzEnNTlayUkjJyc5SgQkX5OSChmFLzpERDIGliYBZTampiaqFUCwB2FBqk:1tL4VH:92N7Vy6R9C4mpFuFLFHmzqUXpU19vIdNeBahP6jSw1E', '2024-12-11 02:28:35.667022');
INSERT INTO `django_session` VALUES ('47kndz5htmx3jcw02lt7grfarzrmiusg', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIygrLzEnNTlayUSlKLS5SgQkX5OSChmFIzk-SUmFKTNNPkmFJTE1MLpVoAflobKQ:1tLE5U:VBLzynTcOOiqJ1qJw2-K_hLXWql9tuOlh6dCoo3qPbs', '2024-12-11 12:42:36.709519');
INSERT INTO `django_session` VALUES ('cbnlyw35k6ezjth4izxps5z11yn38us4', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tLEte:SxGgizhDqSzZnWIVvK49wG7qqfA1wBnMMIMt4SFbhSI', '2024-12-11 13:34:26.372664');
INSERT INTO `django_session` VALUES ('uohsl2vnne79e703tpq7nxmkupbnh1zh', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tLGac:hlsDDAFvb69mbCa2Y8ubvb0zEGvcF-9TCN1zG_K7BAU', '2024-12-11 15:22:54.978425');
INSERT INTO `django_session` VALUES ('f33tjw0s3o3ahqzxo8w3h37rzpmze3fh', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tLciy:1nFR3M3IBazmhBr_LKpCrRB_q5OxJRUOMctl_WV39qg', '2024-12-12 15:01:00.114540');
INSERT INTO `django_session` VALUES ('5yjrbqg1xfqfyncb349rt0hluwb09s06', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tMNyt:uZ5BZ0qoOgtH-V4Xn0Nig5-dqmVJFqpdgPHK5xtGrPw', '2024-12-14 17:28:35.065063');
INSERT INTO `django_session` VALUES ('8r5k8rhulvyf1qh6iit8c7jvxtvt87cw', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIygrLzEnNTlayUSlKLS5SgQkX5OSChmFIzk-SUmFKTNNPkmFJTE1MLpVoAflobKQ:1tNOlh:CSyTeMdaen2ez9LRCvJ9Z_PN0TDMHiboE8De9eEo6WM', '2024-12-17 12:31:09.929163');
INSERT INTO `django_session` VALUES ('q8lmgef68289xgdeysw9b7q6xhqgupe7', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tO7nI:6731xbmpwChm29axsZE8hpN7Z1DNNT-bbM9HLNVYvTs', '2024-12-19 12:35:48.484865');
INSERT INTO `django_session` VALUES ('l1x9bmd5gci74m5gvgeyaud9zf9dpqft', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tO9U9:zdm5zNFLP80cpvcsDRvp5AkBBsBAt4xISh2cSS_HQ9E', '2024-12-19 14:24:09.003942');
INSERT INTO `django_session` VALUES ('0ydqdy9d3w40tsdyr20w6vjmtvoa8ml3', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tPhhN:aWA9u7wsdbck0Gnh46dyCjSexYYYHW29vGC6PF6O0-Y', '2024-12-23 21:08:13.801844');
INSERT INTO `django_session` VALUES ('nrqtzz3nl0gefvsw055a4ac9z1vp9exp', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tPj8o:AO62W3TpLkuegGIs4C_f1jS1iJEVl9e30FOK899B3fE', '2024-12-23 22:40:38.406968');
INSERT INTO `django_session` VALUES ('5u20cew1met7z0kbvy3cvgy79rhv3mlp', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgoZhS86REQyBpYmAWU2pqYmqhVAsAi2Ua2g:1tPkSn:KEGJgF747gRy1PsZlgWdUzSH-CKkHIqjTE4MguudY6o', '2024-12-24 00:05:21.994201');
INSERT INTO `django_session` VALUES ('si88l0yxndqs0s0sl1ob4vvs1v5vwo6t', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgIceU3My8zOKSosSS_CKlWgAQ_hr2:1tPkTn:3g5ZyicO0Jv9DZxWhxlDaaFVyYyl5b_Gf5XffPP17Cw', '2024-12-24 00:06:23.553803');
INSERT INTO `django_session` VALUES ('k4uobgs3fvmjfa64svh2hsb14zn6c731', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgIceU3My8zOKSosSS_CKlWgAQ_hr2:1tPkVo:Sza5A2pwRdlCUsdQxCs4zb_EmQt5Y__DXPIW_igB9WU', '2024-12-24 00:08:28.563314');
INSERT INTO `django_session` VALUES ('7p3632cmnuxtrzzvw2xkxphly52y66lj', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgIceU3My8zOKSosSS_CKlWgAQ_hr2:1tQkCn:ICslZwQMpTjyDmWJwO9F76tlnE9eJ4TJAGOV5osH6vY', '2024-12-26 18:00:57.746396');
INSERT INTO `django_session` VALUES ('ejng2u8u1f2zx9gzil2i24zirrfef8hy', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgIceU3My8zOKSosSS_CKlWgAQ_hr2:1tQkiS:erzdjez7-cF9tQ5PR5j3lzYIDj1Em7EbppiIXLuSMCg', '2024-12-26 18:33:40.431727');
INSERT INTO `django_session` VALUES ('lgd2dpdmlm7ouaw8cph3lqbdb6whno4h', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgIceU3My8zOKSosSS_CKlWgAQ_hr2:1tQlsv:HbOnxT7u9zwuMiY_KLWVmQ_NikfaIffSb2ScYHLzLSo', '2024-12-26 19:48:33.663235');
INSERT INTO `django_session` VALUES ('pr70oq4noynp95up89723dqx7r5fsvcg', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyhLLzEnNTlayUkjJyc5SgQkX5OSAhx5TczLzM4pKixJL8IqVaAPysGsA:1tUPrT:r1Rfr9RjyCN8RdQCLtltNgf0H9YdCnpYHZiMN2ieX-4', '2025-01-05 21:06:07.482492');
INSERT INTO `django_session` VALUES ('v2k1whcs9wme80g3j7sphajkt64nck03', '.eJyrVsosjs_JT8_MU7IqKSpN1VEqLU4tis9MUbIyNINy8hJzU5WslFKLMpOVoEJF-TkgIceU3My8zOKSosSS_CKlWgAQ_hr2:1tUnND:hRlFS4r544TrmWlxkzgabKMcvsT5tOnPDoUoDyuL_Gg', '2025-01-06 22:12:27.340355');

SET FOREIGN_KEY_CHECKS = 1;
