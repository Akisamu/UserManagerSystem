/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : school

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-01-07 10:40:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '男', '15', '陕西', '12345', 'zhangsan@itcast.cn');
INSERT INTO `student` VALUES ('2', '李四', '女', '15', '北京', '88888', 'ls@itcast.cn');
INSERT INTO `student` VALUES ('4', '1', '男', '1', '陕西', '1212131', '1212131@123.com');
INSERT INTO `student` VALUES ('5', '2', '男', '2', '陕西', '2222', '2222@132.com');
INSERT INTO `student` VALUES ('6', 'ee', '男', '23', '陕西', '12312', '12312@123.com');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan', '123456');
INSERT INTO `user` VALUES ('2', 'lisi', 'aaaaaa');
INSERT INTO `user` VALUES ('7', 'zhaoliu', '123456');
INSERT INTO `user` VALUES ('8', 'wangwu', '123456');
INSERT INTO `user` VALUES ('9', '小明', '123');
INSERT INTO `user` VALUES ('10', 'admin', 'admin');
INSERT INTO `user` VALUES ('11', 'test', '123456');
