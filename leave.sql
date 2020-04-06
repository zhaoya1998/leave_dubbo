/*
Navicat MySQL Data Transfer

Source Server         : cms
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : 1710d

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2020-04-06 20:26:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for leave
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `depart` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave
-- ----------------------------
INSERT INTO `leave` VALUES ('1', '张三', '人事部', '假期', '2018-5-6', '2018-5-8', '2', '2018-05-04 00:00:00', '生病', '本人应感冒 请假2天');
INSERT INTO `leave` VALUES ('2', '李四', '后勤部', '假期', '2018-9-3', '2018-9-5', '8', '2020-04-25 17:27:28', '生病', '本人应感冒 请假2天');
INSERT INTO `leave` VALUES ('3', '王五', '财务部', '假期', '2019-8-9', '2019-8-11', '9', '2020-03-16 17:27:35', '生病', '本人应感冒 请假2天');
INSERT INTO `leave` VALUES ('4', '赵六', '前台', '假期', '2019-2-3', '2019-5-6', '4', '2020-01-21 17:27:39', '生病', '本人应感冒 请假2天');
INSERT INTO `leave` VALUES ('5', '钱七', '经理', '假期', '2017-4-6', '2016-2-3', '3', '2020-02-27 17:27:44', '生病', '本人应感冒 请假2天');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', null);
