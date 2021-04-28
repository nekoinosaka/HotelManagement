/*
 Navicat Premium Data Transfer

 Source Server         : 本地-请先启动服务端
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : my_hotel

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 26/03/2021 00:53:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
CREAT DATABASE `HotelSSM1`;
USE `HotelSSM1`;
-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, '小龙', '123456', '李小龙', '666666', '13111111111', '555555', 0);
INSERT INTO `account` VALUES (2, '小刘', '123', '刘亦菲', '666666', '13111111111', '555555', 0);
INSERT INTO `account` VALUES (3, '小李', '123', '李四', '666666', '13111111111', '555555', 0);
INSERT INTO `account` VALUES (4, '小王', '123', '大刀王五', '666666', '13111111111', '555555', -1);
INSERT INTO `account` VALUES (5, 'user', '123456', 'user', '666666', '13111111111', '555555', 0);

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 437 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (148, 2, 35);
INSERT INTO `authority` VALUES (149, 2, 36);
INSERT INTO `authority` VALUES (150, 2, 25);
INSERT INTO `authority` VALUES (151, 2, 1);
INSERT INTO `authority` VALUES (152, 2, 14);
INSERT INTO `authority` VALUES (153, 2, 15);
INSERT INTO `authority` VALUES (383, 1, 1);
INSERT INTO `authority` VALUES (384, 1, 5);
INSERT INTO `authority` VALUES (385, 1, 17);
INSERT INTO `authority` VALUES (386, 1, 18);
INSERT INTO `authority` VALUES (387, 1, 19);
INSERT INTO `authority` VALUES (388, 1, 20);
INSERT INTO `authority` VALUES (389, 1, 13);
INSERT INTO `authority` VALUES (390, 1, 21);
INSERT INTO `authority` VALUES (391, 1, 22);
INSERT INTO `authority` VALUES (392, 1, 23);
INSERT INTO `authority` VALUES (393, 1, 35);
INSERT INTO `authority` VALUES (394, 1, 36);
INSERT INTO `authority` VALUES (395, 1, 14);
INSERT INTO `authority` VALUES (396, 1, 15);
INSERT INTO `authority` VALUES (397, 1, 24);
INSERT INTO `authority` VALUES (398, 1, 25);
INSERT INTO `authority` VALUES (399, 1, 26);
INSERT INTO `authority` VALUES (400, 1, 31);
INSERT INTO `authority` VALUES (401, 1, 32);
INSERT INTO `authority` VALUES (402, 1, 33);
INSERT INTO `authority` VALUES (403, 1, 34);
INSERT INTO `authority` VALUES (404, 1, 37);
INSERT INTO `authority` VALUES (405, 1, 38);
INSERT INTO `authority` VALUES (406, 1, 39);
INSERT INTO `authority` VALUES (407, 1, 40);
INSERT INTO `authority` VALUES (408, 1, 41);
INSERT INTO `authority` VALUES (409, 1, 42);
INSERT INTO `authority` VALUES (410, 1, 43);
INSERT INTO `authority` VALUES (411, 1, 44);
INSERT INTO `authority` VALUES (412, 1, 45);
INSERT INTO `authority` VALUES (413, 1, 46);
INSERT INTO `authority` VALUES (414, 1, 47);
INSERT INTO `authority` VALUES (415, 1, 48);
INSERT INTO `authority` VALUES (416, 1, 49);
INSERT INTO `authority` VALUES (417, 1, 50);
INSERT INTO `authority` VALUES (418, 1, 51);
INSERT INTO `authority` VALUES (419, 1, 52);
INSERT INTO `authority` VALUES (420, 1, 53);
INSERT INTO `authority` VALUES (421, 1, 54);
INSERT INTO `authority` VALUES (422, 1, 55);
INSERT INTO `authority` VALUES (423, 1, 56);
INSERT INTO `authority` VALUES (424, 1, 57);
INSERT INTO `authority` VALUES (425, 1, 58);
INSERT INTO `authority` VALUES (426, 1, 59);
INSERT INTO `authority` VALUES (427, 1, 60);
INSERT INTO `authority` VALUES (428, 1, 61);
INSERT INTO `authority` VALUES (429, 1, 62);
INSERT INTO `authority` VALUES (430, 1, 63);
INSERT INTO `authority` VALUES (431, 1, 64);
INSERT INTO `authority` VALUES (432, 1, 65);
INSERT INTO `authority` VALUES (433, 1, 66);
INSERT INTO `authority` VALUES (434, 1, 67);
INSERT INTO `authority` VALUES (435, 1, 68);
INSERT INTO `authority` VALUES (436, 1, 69);

-- ----------------------------
-- Table structure for book_order
-- ----------------------------
DROP TABLE IF EXISTS `book_order`;
CREATE TABLE `book_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `arriveDate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leaveDate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `accountId`(`accountId`) USING BTREE,
  INDEX `roomTypeId`(`roomTypeId`) USING BTREE,
  CONSTRAINT `book_order_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_order_ibfk_2` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book_order
-- ----------------------------
INSERT INTO `book_order` VALUES (10, 1, 1, '赵子龙', '62225225666552', '13656565656', 2, '2021-03-22', '2021-03-26', 'da', '2020-03-23 00:00:00');
INSERT INTO `book_order` VALUES (11, 2, 2, '李鲜艳', '622987745565656', '13918655256', 2, '2021-03-22', '2021-03-26', '', '2020-03-23 00:00:00');
INSERT INTO `book_order` VALUES (13, 3, 1, '路易斯', '6565656565656', '13999999999', 0, '2021-03-22', '2021-03-26', '预计晚上八点到。', '2020-03-23 00:00:00');
INSERT INTO `book_order` VALUES (14, 5, 2, '太上皇', '31012002522555', '13545455454', 2, '2021-03-22', '2021-03-26', '帮我留一个有窗户的靠南的！谢谢！', '2020-03-23 00:00:00');
INSERT INTO `book_order` VALUES (15, 5, 6, '杰克', '31012002522555', '13545455454', 1, '2021-03-22', '2021-03-26', '我会尽快赶来！', '2020-03-23 00:00:00');
INSERT INTO `book_order` VALUES (16, 5, 10, '麦瑞斯', '31012002522555', '13545455454', 0, '2021-03-22', '2021-03-26', '奢侈一把！', '2020-03-23 00:00:00');
INSERT INTO `book_order` VALUES (17, 1, 1, '李小龙', '4622987745565656', '13656565656', 1, '2021-03-24', '2021-03-25', 'xxx', '2021-03-23 17:30:32');

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `checkinPrice` float(8, 2) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `arriveDate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leaveDate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookOrderId` int(11) DEFAULT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `accountId`(`roomId`) USING BTREE,
  INDEX `roomTypeId`(`roomTypeId`) USING BTREE,
  CONSTRAINT `checkin_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `checkin_ibfk_2` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES (9, 2, 1, 123.00, '张三', 'ewq', 'ewq', 1, '2021-03-23', '2021-03-26', NULL, '', '2021-03-24 00:00:00');
INSERT INTO `checkin` VALUES (10, 4, 3, 298.00, '张三五', '622987745565656', '13918655256', 1, '2021-03-23', '2021-03-26', 11, '', '2021-03-24 00:00:00');
INSERT INTO `checkin` VALUES (11, 2, 1, 198.00, '李四', '62225225666552', '13656565656', 1, '2021-03-23', '2021-03-26', 10, '李四', '2021-03-24 00:00:00');
INSERT INTO `checkin` VALUES (12, 3, 2, 299.00, '小明', '31012002522555', '13545455454', 1, '2021-03-23', '2021-03-26', 14, '帮我留一个有窗户的靠南的！谢谢！', '2021-03-24 00:00:00');
INSERT INTO `checkin` VALUES (13, 6, 6, 200.00, '小明', '31012002522555', '13545455454', 0, '2021-03-23', '2021-03-26', 15, '我会尽快赶来！', '2021-03-24 00:00:00');
INSERT INTO `checkin` VALUES (14, 3, 2, 189.00, '马冬梅', '65656465656565656', '13848484878', 1, '2021-03-23', '2021-03-26', NULL, '马冬梅', '2021-03-24 00:00:00');
INSERT INTO `checkin` VALUES (15, 4, 3, 659.00, '张小帅', '62225225666552', '13656565656', 1, '2021-03-23', '2021-03-26', NULL, '测试数据', '2021-03-24 00:00:00');

-- ----------------------------
-- Table structure for floor
-- ----------------------------
DROP TABLE IF EXISTS `floor`;
CREATE TABLE `floor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of floor
-- ----------------------------
INSERT INTO `floor` VALUES (1, '1楼', '1楼最近');
INSERT INTO `floor` VALUES (2, '2楼', '2楼还好。');
INSERT INTO `floor` VALUES (3, '3楼', '3楼刚好');
INSERT INTO `floor` VALUES (4, '4楼', '4楼有点高。');
INSERT INTO `floor` VALUES (5, '5楼', '有电梯很快');
INSERT INTO `floor` VALUES (6, '6楼', '六楼正常');
INSERT INTO `floor` VALUES (7, '7楼', '正常');
INSERT INTO `floor` VALUES (11, '8楼', '正常');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (22, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-03-23 17:24:27');
INSERT INTO `log` VALUES (23, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-03-23 17:28:28');
INSERT INTO `log` VALUES (24, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-03-23 17:30:43');
INSERT INTO `log` VALUES (25, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-03-23 17:45:13');
INSERT INTO `log` VALUES (26, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-03-25 16:27:20');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (14, 0, '系统用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES (15, 14, '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES (17, 5, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (18, 5, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (19, 5, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (20, 5, '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES (21, 13, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (22, 13, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (23, 13, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (24, 15, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (25, 15, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (26, 15, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (34, 32, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (35, 1, '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES (36, 35, '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES (37, 0, '楼层管理', '', 'icon-house');
INSERT INTO `menu` VALUES (38, 37, '楼层列表', '../admin/floor/list', 'icon-house-connect');
INSERT INTO `menu` VALUES (39, 38, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (40, 38, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (41, 38, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (42, 0, '房型管理', '', 'icon-house-star');
INSERT INTO `menu` VALUES (43, 42, '房型列表', '../admin/room_type/list', 'icon-house-key');
INSERT INTO `menu` VALUES (44, 43, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (45, 43, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (46, 43, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (47, 0, '房间管理', '', 'icon-house-go');
INSERT INTO `menu` VALUES (48, 47, '房间列表', '../admin/room/list', 'icon-house-key');
INSERT INTO `menu` VALUES (49, 48, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (50, 48, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (51, 48, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (52, 0, '客户管理', '', 'icon-users');
INSERT INTO `menu` VALUES (53, 52, '客户列表', '../admin/account/list', 'icon-user-business-boss');
INSERT INTO `menu` VALUES (54, 53, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (55, 53, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (56, 53, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (57, 0, '预定管理', '', 'icon-time-green');
INSERT INTO `menu` VALUES (58, 57, '预定列表', '../admin/book_order/list', 'icon-clock');
INSERT INTO `menu` VALUES (59, 58, '新增预定', 'openAdd()', 'icon-clock-add');
INSERT INTO `menu` VALUES (60, 58, '编辑预定', 'openEdit()', 'icon-clock-edit');
INSERT INTO `menu` VALUES (61, 0, '入住管理', '', 'icon-heart-connect');
INSERT INTO `menu` VALUES (62, 61, '入住列表', '../admin/checkin/list', 'icon-heart');
INSERT INTO `menu` VALUES (63, 62, '登记入住', 'openAdd()', 'icon-heart-add');
INSERT INTO `menu` VALUES (64, 62, '编辑入住', 'openEdit()', 'icon-heart-connect');
INSERT INTO `menu` VALUES (65, 62, '登记退房', 'openCheckOut()', 'icon-heart-delete');
INSERT INTO `menu` VALUES (66, 0, '预定统计', '', 'icon-money-yen');
INSERT INTO `menu` VALUES (67, 66, '统计图表', '../admin/stats/stats', 'icon-chart-curve');
INSERT INTO `menu` VALUES (68, 67, '按月统计', 'statsByMonth()', 'icon-chart-curve-add');
INSERT INTO `menu` VALUES (69, 67, '按日统计', 'statsByDay()', 'icon-chart-curve-edit');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `floorId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roomTypeId`(`roomTypeId`) USING BTREE,
  INDEX `floorId`(`floorId`) USING BTREE,
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`floorId`) REFERENCES `floor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (2, '/HotelSSM/resources/upload/1616520282447.png', '1001', 1, 1, 1, '1001单人间、1楼。');
INSERT INTO `room` VALUES (3, '/HotelSSM/resources/upload/1616520299485.png', '2001', 2, 2, 2, '2楼普通大床房');
INSERT INTO `room` VALUES (4, '/HotelSSM/resources/upload/1616520306930.png', '3001', 3, 3, 2, '3001豪华大床房');
INSERT INTO `room` VALUES (5, '/HotelSSM/resources/upload/1616520316785.png', '4001', 4, 4, 0, '商务大床房');
INSERT INTO `room` VALUES (6, '/HotelSSM/resources/upload/1616520323195.png', '5001', 6, 5, 1, '豪华标准房');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` float(8, 2) NOT NULL,
  `liveNum` int(2) NOT NULL,
  `bedNum` int(2) NOT NULL,
  `roomNum` int(5) NOT NULL,
  `avilableNum` int(5) NOT NULL,
  `bookNum` int(5) NOT NULL DEFAULT 0,
  `livedNum` int(5) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `recommend` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES (1, '单人间', '/HotelSSM/resources/upload/1616520523231.png', 168.00, 1, 1, 12, 9, 2, 1, 1, '单人间只能入住一个人，大概15平米左右！', 0);
INSERT INTO `room_type` VALUES (2, '普通大床房', '/HotelSSM/resources/upload/1616520530620.png', 299.00, 2, 1, 15, 15, 0, 0, 0, '普通大床房，面积25平左右！', 1);
INSERT INTO `room_type` VALUES (3, '豪华大床房', '/HotelSSM/resources/upload/1616520540506.png', 399.00, 2, 1, 8, 8, 0, 0, 1, '豪华大床房，面积30平左右！', 2);
INSERT INTO `room_type` VALUES (4, '商务大床房', '/HotelSSM/resources/upload/1616520546581.png', 429.00, 2, 1, 10, 10, 0, 0, 1, '商务大床房，面积40平左右！', 3);
INSERT INTO `room_type` VALUES (5, '普通标准间', '/HotelSSM/resources/upload/1616520552778.png', 199.00, 2, 2, 11, 11, 0, 0, 1, '普通标准房，面积20平左右！', 0);
INSERT INTO `room_type` VALUES (6, '豪华标准房', '/HotelSSM/resources/upload/1616520559358.png', 199.00, 2, 2, 10, 9, 1, 1, 1, '豪华标准房，面积30平左右！', 9);
INSERT INTO `room_type` VALUES (7, '商务标准间', '/HotelSSM/resources/upload/1616520565876.png', 299.00, 2, 2, 10, 10, 0, 0, 1, '商务标准间，面积35平左右！', 0);
INSERT INTO `room_type` VALUES (8, '普通套房', '/HotelSSM/resources/upload/1616520572847.png', 699.00, 2, 2, 6, 6, 0, 0, 1, '普通套房，面积50平左右！', 0);
INSERT INTO `room_type` VALUES (9, '豪华套房', '/HotelSSM/resources/upload/1616520579483.png', 899.00, 2, 2, 5, 5, 0, 0, 1, '豪华套房，面积70平左右！', 0);
INSERT INTO `room_type` VALUES (10, '总统套房', '/HotelSSM/resources/upload/1616520587026.png', 1299.00, 2, 2, 3, 2, 1, 0, 1, '总统套房，面积100平，超豪华！', 11);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT 0,
  `age` int(3) NOT NULL DEFAULT 0,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 1, '/resources/upload/1616519634558.jpg', 1, 1, '中国北京');

SET FOREIGN_KEY_CHECKS = 1;
