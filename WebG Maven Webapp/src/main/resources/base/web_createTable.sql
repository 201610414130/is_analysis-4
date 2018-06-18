/*
Navicat MySQL Data Transfer

Source Server         : Mysql57
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssh_test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-10 15:48:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `userID` varchar(6) NOT NULL COMMENT 'instituteNo-编号',
  `pwd` varchar(20) NOT NULL,
  `name` varchar(15) NOT NULL,
  `userType` bit(1) NOT NULL,
  `instituteNo` varchar(2) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `instituteNoforA` (`instituteNo`),
  CONSTRAINT `instituteNoforA` FOREIGN KEY (`instituteNo`) REFERENCES `institute` (`instituteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `cexperiment`
-- ----------------------------
DROP TABLE IF EXISTS `cexperiment`;
CREATE TABLE `cexperiment` (
  `experimentNo` varchar(14) NOT NULL,
  `oder` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `courseNo` varchar(6) NOT NULL,
  PRIMARY KEY (`experimentNo`),
  KEY `courseNoforCexperiment` (`courseNo`),
  CONSTRAINT `courseNoforCexperiment` FOREIGN KEY (`courseNo`) REFERENCES `course` (`courseNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cexperiment
-- ----------------------------

-- ----------------------------
-- Table structure for `cexperiments`
-- ----------------------------
DROP TABLE IF EXISTS `cexperiments`;
CREATE TABLE `cexperiments` (
  `experimentscoresNo` varchar(46) NOT NULL,
  `experimentNo` varchar(14) NOT NULL,
  `userID` varchar(13) NOT NULL,
  `oder` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `info` varchar(100) NOT NULL,
  `address` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`experimentscoresNo`,`experimentNo`),
  CONSTRAINT `forexperimentscores` FOREIGN KEY (`experimentscoresNo`, `experimentNo`) REFERENCES `experimentscores` (`experimentscoresNo`, `experimentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cexperiments
-- ----------------------------

-- ----------------------------
-- Table structure for `clazz`
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz` (
  `clazzNo` varchar(11) NOT NULL,
  `ClazzName` varchar(30) NOT NULL,
  `education` varchar(13) NOT NULL,
  `majorNo` varchar(5) NOT NULL,
  PRIMARY KEY (`clazzNo`),
  KEY `majorNo` (`majorNo`),
  CONSTRAINT `majorNo` FOREIGN KEY (`majorNo`) REFERENCES `major` (`majorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of clazz
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseNo` varchar(8) NOT NULL,
  `courseName` varchar(30) NOT NULL,
  `creditHour` int(11) NOT NULL,
  `courseHour` int(11) NOT NULL,
  `priorCourse` varchar(8) NOT NULL,
  `majorNo` varchar(5) NOT NULL,
  PRIMARY KEY (`courseNo`),
  KEY `majorNoforC` (`majorNo`),
  CONSTRAINT `majorNoforC` FOREIGN KEY (`majorNo`) REFERENCES `major` (`majorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `courseclass`
-- ----------------------------
DROP TABLE IF EXISTS `courseclass`;
CREATE TABLE `courseclass` (
  `courseNo` varchar(8) NOT NULL,
  `cClassNo` varchar(19) NOT NULL COMMENT '年-学期-courseNo-teacherNo',
  `number` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `teacherNo` varchar(6) NOT NULL,
  PRIMARY KEY (`courseNo`,`cClassNo`),
  KEY `teacherNoforcC` (`teacherNo`),
  CONSTRAINT `courseNoforcC` FOREIGN KEY (`courseNo`) REFERENCES `course` (`courseNo`),
  CONSTRAINT `teacherNoforcC` FOREIGN KEY (`teacherNo`) REFERENCES `teacher` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of courseclass
-- ----------------------------

-- ----------------------------
-- Table structure for `experimentclause`
-- ----------------------------
DROP TABLE IF EXISTS `experimentclause`;
CREATE TABLE `experimentclause` (
  `experimentclauseNo` varchar(16) NOT NULL,
  `title` varchar(20) NOT NULL,
  `num` int(11) NOT NULL,
  `bili` float NOT NULL,
  `experimentNo` varchar(14) NOT NULL,
  PRIMARY KEY (`experimentclauseNo`),
  KEY `experimentNoforExperimentclause` (`experimentNo`),
  CONSTRAINT `experimentNoforExperimentclause` FOREIGN KEY (`experimentNo`) REFERENCES `cexperiment` (`experimentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of experimentclause
-- ----------------------------

-- ----------------------------
-- Table structure for `experimentclauses`
-- ----------------------------
DROP TABLE IF EXISTS `experimentclauses`;
CREATE TABLE `experimentclauses` (
  `experimentscoresNo` varchar(46) NOT NULL,
  `experimentNo` varchar(14) NOT NULL,
  `experimentclauseNo` varchar(16) NOT NULL,
  `title` varchar(20) NOT NULL,
  `evaluate` varchar(100) NOT NULL,
  `num` int(11) NOT NULL,
  `bili` float NOT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`experimentscoresNo`,`experimentNo`,`experimentclauseNo`),
  CONSTRAINT `forexperimentclauses` FOREIGN KEY (`experimentscoresNo`, `experimentNo`) REFERENCES `cexperiments` (`experimentscoresNo`, `experimentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of experimentclauses
-- ----------------------------

-- ----------------------------
-- Table structure for `experimentscores`
-- ----------------------------
DROP TABLE IF EXISTS `experimentscores`;
CREATE TABLE `experimentscores` (
  `experimentscoresNo` varchar(46) NOT NULL COMMENT 'experimentNo-cClassNo-studentID',
  `experimentNo` varchar(14) NOT NULL,
  `courseNo` varchar(8) NOT NULL,
  `cClassNo` varchar(19) NOT NULL,
  `studentID` varchar(13) NOT NULL,
  PRIMARY KEY (`experimentscoresNo`),
  KEY `forexperiment` (`experimentNo`),
  KEY `forstudent` (`studentID`),
  KEY `forcClass` (`courseNo`,`cClassNo`,`studentID`),
  KEY `experimentscoresNo` (`experimentscoresNo`,`experimentNo`),
  CONSTRAINT `forcClass` FOREIGN KEY (`courseNo`, `cClassNo`, `studentID`) REFERENCES `s_c` (`courseNo`, `cClassNo`, `studentID`),
  CONSTRAINT `forexperiment` FOREIGN KEY (`experimentNo`) REFERENCES `cexperiment` (`experimentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of experimentscores
-- ----------------------------

-- ----------------------------
-- Table structure for `institute`
-- ----------------------------
DROP TABLE IF EXISTS `institute`;
CREATE TABLE `institute` (
  `instituteNo` varchar(2) NOT NULL,
  `instituteName` varchar(20) NOT NULL,
  `telephone` varchar(13) NOT NULL,
  PRIMARY KEY (`instituteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of institute
-- ----------------------------

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `majorNo` varchar(5) NOT NULL COMMENT 'instituteNo-编号',
  `majorName` varchar(20) NOT NULL,
  `instituteNo` varchar(2) NOT NULL,
  PRIMARY KEY (`majorNo`),
  KEY `instituteNo` (`instituteNo`),
  CONSTRAINT `instituteNo` FOREIGN KEY (`instituteNo`) REFERENCES `institute` (`instituteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of major
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `userID` varchar(13) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  `userType` bit(1) NOT NULL,
  `Gname` varchar(15) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `clazzNo` varchar(11) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `clazzNo` (`clazzNo`),
  CONSTRAINT `clazzNo` FOREIGN KEY (`clazzNo`) REFERENCES `clazz` (`clazzNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for `s_c`
-- ----------------------------
DROP TABLE IF EXISTS `s_c`;
CREATE TABLE `s_c` (
  `courseNo` varchar(8) NOT NULL,
  `cClassNo` varchar(19) NOT NULL,
  `studentID` varchar(13) NOT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`studentID`,`cClassNo`,`courseNo`),
  KEY `courseNo` (`courseNo`,`cClassNo`,`studentID`),
  CONSTRAINT `cClassNo` FOREIGN KEY (`courseNo`, `cClassNo`) REFERENCES `courseclass` (`courseNo`, `cClassNo`),
  CONSTRAINT `studentID` FOREIGN KEY (`studentID`) REFERENCES `student` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_c
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `userID` varchar(6) NOT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  `userType` bit(1) NOT NULL,
  `Gname` varchar(15) DEFAULT NULL,
  `title` varchar(13) NOT NULL,
  `degree` varchar(13) NOT NULL,
  `instituteNo` varchar(2) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `instituteNoforT` (`instituteNo`),
  CONSTRAINT `instituteNoforT` FOREIGN KEY (`instituteNo`) REFERENCES `institute` (`instituteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of teacher
-- ----------------------------
