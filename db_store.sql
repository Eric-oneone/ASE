/*
 Navicat MySQL Data Transfer

 Source Server         : mysq
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : db_store

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 27/11/2024 20:53:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `content_type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `codename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (75, '8', 'add_clothes', 'Can add 服装信息');
INSERT INTO `auth_permission` VALUES (76, '8', 'change_clothes', 'Can change 服装信息');
INSERT INTO `auth_permission` VALUES (77, '8', 'delete_clothes', 'Can delete 服装信息');
INSERT INTO `auth_permission` VALUES (78, '7', 'add_customer', 'Can add 客户信息');
INSERT INTO `auth_permission` VALUES (79, '7', 'change_customer', 'Can change 客户信息');
INSERT INTO `auth_permission` VALUES (80, '7', 'delete_customer', 'Can delete 客户信息');
INSERT INTO `auth_permission` VALUES (81, '11', 'add_inorder', 'Can add 入库单信息');
INSERT INTO `auth_permission` VALUES (82, '11', 'change_inorder', 'Can change 入库单信息');
INSERT INTO `auth_permission` VALUES (83, '11', 'delete_inorder', 'Can delete 入库单信息');
INSERT INTO `auth_permission` VALUES (84, '14', 'add_inorderclothes', 'Can add 入库单详情');
INSERT INTO `auth_permission` VALUES (85, '14', 'change_inorderclothes', 'Can change 入库单详情');
INSERT INTO `auth_permission` VALUES (86, '14', 'delete_inorderclothes', 'Can delete 入库单详情');
INSERT INTO `auth_permission` VALUES (87, '12', 'add_outorder', 'Can add 出库单信息');
INSERT INTO `auth_permission` VALUES (88, '12', 'change_outorder', 'Can change 出库单信息');
INSERT INTO `auth_permission` VALUES (89, '12', 'delete_outorder', 'Can delete 出库单信息');
INSERT INTO `auth_permission` VALUES (90, '13', 'add_outorderclothes', 'Can add 出库单详情');
INSERT INTO `auth_permission` VALUES (91, '13', 'change_outorderclothes', 'Can change 出库单详情');
INSERT INTO `auth_permission` VALUES (92, '13', 'delete_outorderclothes', 'Can delete 出库单详情');
INSERT INTO `auth_permission` VALUES (93, '9', 'add_user', 'Can add 用户信息');
INSERT INTO `auth_permission` VALUES (94, '9', 'change_user', 'Can change 用户信息');
INSERT INTO `auth_permission` VALUES (95, '9', 'delete_user', 'Can delete 用户信息');
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
INSERT INTO `auth_permission` VALUES (117, '8', 'add_clothes', 'Can add 服装信息');
INSERT INTO `auth_permission` VALUES (118, '8', 'change_clothes', 'Can change 服装信息');
INSERT INTO `auth_permission` VALUES (119, '8', 'delete_clothes', 'Can delete 服装信息');
INSERT INTO `auth_permission` VALUES (120, '7', 'add_customer', 'Can add 客户信息');
INSERT INTO `auth_permission` VALUES (121, '7', 'change_customer', 'Can change 客户信息');
INSERT INTO `auth_permission` VALUES (122, '7', 'delete_customer', 'Can delete 客户信息');
INSERT INTO `auth_permission` VALUES (123, '11', 'add_inorder', 'Can add 入库单信息');
INSERT INTO `auth_permission` VALUES (124, '11', 'change_inorder', 'Can change 入库单信息');
INSERT INTO `auth_permission` VALUES (125, '11', 'delete_inorder', 'Can delete 入库单信息');
INSERT INTO `auth_permission` VALUES (126, '14', 'add_inorderclothes', 'Can add 入库单详情');
INSERT INTO `auth_permission` VALUES (127, '14', 'change_inorderclothes', 'Can change 入库单详情');
INSERT INTO `auth_permission` VALUES (128, '14', 'delete_inorderclothes', 'Can delete 入库单详情');
INSERT INTO `auth_permission` VALUES (129, '12', 'add_outorder', 'Can add 出库单信息');
INSERT INTO `auth_permission` VALUES (130, '12', 'change_outorder', 'Can change 出库单信息');
INSERT INTO `auth_permission` VALUES (131, '12', 'delete_outorder', 'Can delete 出库单信息');
INSERT INTO `auth_permission` VALUES (132, '13', 'add_outorderclothes', 'Can add 出库单详情');
INSERT INTO `auth_permission` VALUES (133, '13', 'change_outorderclothes', 'Can change 出库单详情');
INSERT INTO `auth_permission` VALUES (134, '13', 'delete_outorderclothes', 'Can delete 出库单详情');
INSERT INTO `auth_permission` VALUES (135, '9', 'add_user', 'Can add 用户信息');
INSERT INTO `auth_permission` VALUES (136, '9', 'change_user', 'Can change 用户信息');
INSERT INTO `auth_permission` VALUES (137, '9', 'delete_user', 'Can delete 用户信息');
INSERT INTO `auth_permission` VALUES (138, '10', 'add_captchastore', 'Can add captcha store');
INSERT INTO `auth_permission` VALUES (139, '10', 'change_captchastore', 'Can change captcha store');
INSERT INTO `auth_permission` VALUES (140, '10', 'delete_captchastore', 'Can delete captcha store');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_superuser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_staff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_joined` datetime(0) NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$390000$mO1MG0zxCv4ftFRxTz8al7$xyoED9OtBp3lvddjQAsIJl1yb6bXpX6YuDfYSNKTgqs=', '2024-11-27 12:52:07', '1', 'admin', NULL, NULL, '1', '1', '2024-11-27 20:47:30', NULL);

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hashkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expiration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 230 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (228, 'ICEA', 'icea', '52d300a112b2ec61d3e21791c983107ba115d720', '2024-11-27 20:53:30.281416');
INSERT INTO `captcha_captchastore` VALUES (229, 'UNFK', 'unfk', 'bb86a5c3dd93a17dea0d92492d1a79d4bfd55a74', '2024-11-27 20:53:35.565325');

-- ----------------------------
-- Table structure for common_clothes
-- ----------------------------
DROP TABLE IF EXISTS `common_clothes`;
CREATE TABLE `common_clothes`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(255) NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  `stock` int(255) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of common_clothes
-- ----------------------------
INSERT INTO `common_clothes` VALUES (1, 'A-12', 200, 'M', '黑', '男士卫衣', '2024-11-27 21:45:38', '2024-11-27 16:40:58', 200, '男士卫衣');
INSERT INTO `common_clothes` VALUES (2, 'C-15', 50, 'L', '白', '女士T恤', '2024-11-27 21:45:38', '2024-11-27 16:41:04', 199, '女士T恤');
INSERT INTO `common_clothes` VALUES (3, 'F-33', 100, 'XL', '白', '保暖毛衣', '2024-11-27 21:45:38', '2024-11-27 20:24:04', 2, '保暖毛衣');
INSERT INTO `common_clothes` VALUES (4, 'X-33', 500, 'L', '黑', '西服、晚礼服', '2024-11-27 22:26:21', '2024-11-27 08:29:26', 200, '西服、晚礼服');
INSERT INTO `common_clothes` VALUES (5, 'K-323', 120, 'L', '黑', '2024新款休闲裤', '2024-11-27 21:56:09', '2024-11-27 20:23:54', 1, '2024新款休闲裤');
INSERT INTO `common_clothes` VALUES (6, 'C-16', 200, 'M', '蓝', '保安服', '2024-11-27 08:31:56', '2024-11-27 20:23:45', 1, '保安服');

-- ----------------------------
-- Table structure for common_customer
-- ----------------------------
DROP TABLE IF EXISTS `common_customer`;
CREATE TABLE `common_customer`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of common_customer
-- ----------------------------
INSERT INTO `common_customer` VALUES (1, '高启强', '京海市旧厂街', '2024-11-27 21:45:38', '2024-11-27 15:23:53', '16666666666');
INSERT INTO `common_customer` VALUES (2, '赵立春', '汉东省', '2024-11-27 21:45:38', '2024-11-27 10:00:13', '17777777777');
INSERT INTO `common_customer` VALUES (3, '祁同伟', '汉东省山水集团', '2024-11-27 23:29:35', '2024-11-27 08:12:59', '18888888888');

-- ----------------------------
-- Table structure for common_inorder
-- ----------------------------
DROP TABLE IF EXISTS `common_inorder`;
CREATE TABLE `common_inorder`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `customer_id` int(255) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of common_inorder
-- ----------------------------
INSERT INTO `common_inorder` VALUES (25, 'IN2019110409051858861', '2024-11-27 09:05:18', 3, '2024-11-27 09:05:18', '7');
INSERT INTO `common_inorder` VALUES (26, 'IN2019110409252379817', '2024-11-27 09:25:23', 5, '2024-11-27 08:13:21', '7');
INSERT INTO `common_inorder` VALUES (28, 'IN2019110608281062773', '2024-11-27 08:28:11', 5, '2024-11-27 08:28:11', '7');

-- ----------------------------
-- Table structure for common_inorderclothes
-- ----------------------------
DROP TABLE IF EXISTS `common_inorderclothes`;
CREATE TABLE `common_inorderclothes`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `clothes_id` int(255) NULL DEFAULT NULL,
  `amount` int(255) NULL DEFAULT NULL,
  `inorder_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of common_inorderclothes
-- ----------------------------
INSERT INTO `common_inorderclothes` VALUES (10, 1, 10, 25);
INSERT INTO `common_inorderclothes` VALUES (11, 2, 100, 26);
INSERT INTO `common_inorderclothes` VALUES (13, 3, 100, 28);
INSERT INTO `common_inorderclothes` VALUES (14, 4, 100, 25);

-- ----------------------------
-- Table structure for common_outorder
-- ----------------------------
DROP TABLE IF EXISTS `common_outorder`;
CREATE TABLE `common_outorder`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `customer_id` int(255) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  `user_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of common_outorder
-- ----------------------------
INSERT INTO `common_outorder` VALUES (18, 'IN2019110409291635886', '2024-11-27 09:29:17', 5, '2024-11-27 08:13:27', 7);
INSERT INTO `common_outorder` VALUES (19, 'IN2019110608322145923', '2024-11-27 08:32:21', 5, '2024-11-27 08:32:21', 7);
INSERT INTO `common_outorder` VALUES (20, 'IN2024112521185275180', '2024-11-27 21:18:52', 5, '2024-11-27 21:19:25', 14);

-- ----------------------------
-- Table structure for common_outorderclothes
-- ----------------------------
DROP TABLE IF EXISTS `common_outorderclothes`;
CREATE TABLE `common_outorderclothes`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `clothes_id` int(255) NULL DEFAULT NULL,
  `amount` int(255) NULL DEFAULT NULL,
  `outorder_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of common_outorderclothes
-- ----------------------------
INSERT INTO `common_outorderclothes` VALUES (18, 2, 1, 18);
INSERT INTO `common_outorderclothes` VALUES (16, 6, 10, 19);
INSERT INTO `common_outorderclothes` VALUES (19, 3, 12, 18);

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `modify_time` datetime(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES (2, 'test', 'test', '操作员', '2024-11-27 20:45:23', '2024-11-27 20:45:29', 'd94d479f2c371ab210b600a95c40fe7a4bdef0568a7f7bad0b27b727fd648980');
INSERT INTO `common_user` VALUES (1, 'bhml', 'bhml', '管理员', '2024-11-27 12:35:00', '2024-11-27 12:35:00', 'd94d479f2c371ab210b600a95c40fe7a4bdef0568a7f7bad0b27b727fd648980');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NULL DEFAULT NULL,
  `object_id` int(255) NULL DEFAULT NULL,
  `object_repr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `change_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content_type_id` int(255) NULL DEFAULT NULL,
  `user_id` int(255) NULL DEFAULT NULL,
  `action_flag` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applied` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `session_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expire_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
