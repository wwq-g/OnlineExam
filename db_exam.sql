/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : db_exam

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2018-04-28 00:20:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_exam`
-- ----------------------------
DROP TABLE IF EXISTS `t_exam`;
CREATE TABLE `t_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examDate` datetime DEFAULT NULL,
  `moreScore` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `singleScore` int(11) NOT NULL,
  `paperId` int(11) DEFAULT NULL,
  `studentId` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l14kkd2w86mpy8v2snw37hskx` (`paperId`),
  KEY `FK_sl2v4qucyp0qe9yvnk6icka10` (`studentId`),
  CONSTRAINT `FK_l14kkd2w86mpy8v2snw37hskx` FOREIGN KEY (`paperId`) REFERENCES `t_paper` (`id`),
  CONSTRAINT `FK_sl2v4qucyp0qe9yvnk6icka10` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_exam
-- ----------------------------

-- ----------------------------
-- Table structure for `t_manager`
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('1', '管理员', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_paper`
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinDate` datetime DEFAULT NULL,
  `paperName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paper
-- ----------------------------

-- ----------------------------
-- Table structure for `t_question`
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  `optionA` varchar(255) DEFAULT NULL,
  `optionB` varchar(255) DEFAULT NULL,
  `optionC` varchar(255) DEFAULT NULL,
  `optionD` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `paperId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ebouwob97chiilpjmc6gtgwkw` (`paperId`),
  CONSTRAINT `FK_ebouwob97chiilpjmc6gtgwkw` FOREIGN KEY (`paperId`) REFERENCES `t_paper` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question
-- ----------------------------

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` varchar(40) NOT NULL,
  `cardNo` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `prefession` varchar(40) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
