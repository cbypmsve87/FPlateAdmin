/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2017-12-19 00:26:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) default NULL,
  `E-mail` varchar(50) default NULL,
  `Phone` varchar(18) default NULL,
  `City` varchar(50) default NULL,
  `Role` varchar(50) default NULL,
  `Status` varchar(2) character set utf8 default NULL,
  `Company` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
