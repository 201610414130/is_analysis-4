/*
Navicat MySQL Data Transfer

Source Server         : Mysql57
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssh_test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-22 00:51:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `userID` varchar(6) NOT NULL COMMENT 'instituteNo-编号',
  `pwd` varchar(128) NOT NULL,
  `name` varchar(15) NOT NULL,
  `userType` int(1) NOT NULL,
  `instituteNo` varchar(2) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `instituteNoforA` (`instituteNo`),
  CONSTRAINT `instituteNoforA` FOREIGN KEY (`instituteNo`) REFERENCES `institute` (`instituteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('011001', '7ddc5fac2a153855142c7981baa4535c7b851f40', 'root', '1', '01');

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
  `clazzNo` varchar(11) NOT NULL COMMENT '2015-01001-01',
  `ClazzName` varchar(30) NOT NULL,
  `education` int(1) NOT NULL,
  `majorNo` varchar(5) NOT NULL,
  PRIMARY KEY (`clazzNo`),
  KEY `majorNo` (`majorNo`),
  CONSTRAINT `majorNo` FOREIGN KEY (`majorNo`) REFERENCES `major` (`majorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES ('20150100101', '2015级软件工程一班', '2', '01001');
INSERT INTO `clazz` VALUES ('20150100102', '2015级软件工程二班', '2', '01001');
INSERT INTO `clazz` VALUES ('20150100103', '2015级软件工程三班', '2', '01001');
INSERT INTO `clazz` VALUES ('20150100104', '2015级软件工程四班', '2', '01001');
INSERT INTO `clazz` VALUES ('20150100201', '2015级信息与计算科学一班', '2', '01002');
INSERT INTO `clazz` VALUES ('20150100202', '2015级信息与计算科学二班', '2', '01002');
INSERT INTO `clazz` VALUES ('20150100203', '2015级信息与计算科学三班', '2', '01002');
INSERT INTO `clazz` VALUES ('20150100204', '2015级信息与计算科学四班', '2', '01002');
INSERT INTO `clazz` VALUES ('20150100301', '2015级物联网工程一班', '2', '01003');
INSERT INTO `clazz` VALUES ('20150100302', '2015级物联网工程二班', '2', '01003');
INSERT INTO `clazz` VALUES ('20150100303', '2015级物联网工程三班', '2', '01003');
INSERT INTO `clazz` VALUES ('20150100304', '2015级物联网工程四班', '2', '01003');
INSERT INTO `clazz` VALUES ('20150100401', '2015级通信工程一班', '2', '01004');
INSERT INTO `clazz` VALUES ('20150100402', '2015级通信工程二班', '2', '01004');
INSERT INTO `clazz` VALUES ('20150100403', '2015级通信工程三班', '2', '01004');
INSERT INTO `clazz` VALUES ('20150100404', '2015级通信工程四班', '2', '01004');
INSERT INTO `clazz` VALUES ('20150100501', '2015级计算机科学与技术一班', '2', '01005');
INSERT INTO `clazz` VALUES ('20150100502', '2015级计算机科学与技术二班', '2', '01005');
INSERT INTO `clazz` VALUES ('20150100503', '2015级计算机科学与技术三班', '2', '01005');
INSERT INTO `clazz` VALUES ('20150100504', '2015级计算机科学与技术四班', '2', '01005');
INSERT INTO `clazz` VALUES ('20150100601', '2015级电气工程及其自动化一班', '2', '01006');
INSERT INTO `clazz` VALUES ('20150100602', '2015级电气工程及其自动化二班', '2', '01006');
INSERT INTO `clazz` VALUES ('20150100603', '2015级电气工程及其自动化三班', '2', '01006');
INSERT INTO `clazz` VALUES ('20150100604', '2015级电气工程及其自动化四班', '2', '01006');
INSERT INTO `clazz` VALUES ('20150100701', '2015级电子信息工程一班', '2', '01007');
INSERT INTO `clazz` VALUES ('20150100702', '2015级电子信息工程二班', '2', '01007');
INSERT INTO `clazz` VALUES ('20150100703', '2015级电子信息工程三班', '2', '01007');
INSERT INTO `clazz` VALUES ('20150100704', '2015级电子信息工程四班', '2', '01007');
INSERT INTO `clazz` VALUES ('20150100801', '2015级网络工程一班', '2', '01008');
INSERT INTO `clazz` VALUES ('20150100802', '2015级网络工程二班', '2', '01008');
INSERT INTO `clazz` VALUES ('20150100803', '2015级网络工程三班', '2', '01008');
INSERT INTO `clazz` VALUES ('20150100804', '2015级网络工程四班', '2', '01008');
INSERT INTO `clazz` VALUES ('20150100901', '2015级数字媒体技术一班', '2', '01009');
INSERT INTO `clazz` VALUES ('20150100902', '2015级数字媒体技术二班', '2', '01009');
INSERT INTO `clazz` VALUES ('20150100903', '2015级数字媒体技术三班', '2', '01009');
INSERT INTO `clazz` VALUES ('20150100904', '2015级数字媒体技术四班', '2', '01009');
INSERT INTO `clazz` VALUES ('20150101001', '2015级自动化一班', '2', '01010');
INSERT INTO `clazz` VALUES ('20150101002', '2015级自动化二班', '2', '01010');
INSERT INTO `clazz` VALUES ('20150101003', '2015级自动化三班', '2', '01010');
INSERT INTO `clazz` VALUES ('20150101004', '2015级自动化四班', '2', '01010');

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
  PRIMARY KEY (`experimentscoresNo`,`experimentNo`),
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
INSERT INTO `institute` VALUES ('01', '信息科学与工程', '0824894');

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
INSERT INTO `major` VALUES ('01001', '软件工程', '01');
INSERT INTO `major` VALUES ('01002', '信息与计算科学', '01');
INSERT INTO `major` VALUES ('01003', '物联网工程', '01');
INSERT INTO `major` VALUES ('01004', '通信工程', '01');
INSERT INTO `major` VALUES ('01005', '计算机科学与技术', '01');
INSERT INTO `major` VALUES ('01006', '电气工程及其自动化', '01');
INSERT INTO `major` VALUES ('01007', '电子信息工程', '01');
INSERT INTO `major` VALUES ('01008', '网络工程', '01');
INSERT INTO `major` VALUES ('01009', '数字媒体技术', '01');
INSERT INTO `major` VALUES ('01010', '自动化', '01');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `userID` varchar(13) NOT NULL,
  `pwd` varchar(128) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  `userType` int(1) NOT NULL,
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
INSERT INTO `student` VALUES ('2015010010101', '2015010010101', '阎梦', '3', 'gnameTest2', null, '20150100101');
INSERT INTO `student` VALUES ('2015010010102', null, '余海利', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010103', null, '候沐', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010104', '66e06ee7fd810381902051f6d228db998bf4e5a6', '罗符', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010105', null, '颜南宫 ', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010106', null, '杨廉', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010107', null, '彦冷', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010108', null, '戴阎', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010109', null, '雍门', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010110', null, '阎门和', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010111', null, '柳甄锐', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010112', null, '潘毅', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010113', null, '戴勤长孙书', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010114', null, '范英', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010115', null, '赵庄', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010116', null, '钱枫', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010117', null, '柳英', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010118', null, '刘柔', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010119', null, '罗柔', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010120', null, '严诸葛', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010121', null, '庞叡柳', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010122', null, '戴菊', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010123', null, '闫莓夏', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010124', null, '郑昂', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010125', null, '赵门', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010126', null, '钱南', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010127', null, '柳门', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010128', null, '闫昭', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010129', null, '阎芳', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010130', null, '刘英博', '3', null, null, '20150100101');
INSERT INTO `student` VALUES ('2015010010201', null, '王门和', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010202', null, '郑雪风', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010203', null, '钱柔', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010204', null, '王珊', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010205', null, '钱符烨', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010206', null, '余符', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010207', null, '颜英', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010208', null, '候咛', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010209', null, '钱诸葛', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010210', null, '阎廖星', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010211', null, '伊觅', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010212', null, '钱滕', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010213', null, '罗易', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010214', null, '潘昭', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010215', null, '范梦', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010216', null, '雍英', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010217', null, '颜霖那', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010218', null, '王霖那', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010219', null, '严珂', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010220', null, '雍韵', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010221', null, '闫飞', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010222', null, '庞莓夏', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010223', null, '郑珊', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010224', null, '于阎', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010225', null, '伊束', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010226', null, '阎南', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010227', null, '刘柏', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010228', null, '闫南', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010229', null, '杨束', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010230', null, '郑梁', '3', null, null, '20150100102');
INSERT INTO `student` VALUES ('2015010010301', null, '于韵', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010302', null, '钱符烨', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010303', null, '赵臧娅', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010304', null, '刘珊', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010305', null, '庞符烨', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010306', null, '雍芳', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010307', null, '伊聂', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010308', null, '戴芬', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010309', null, '杨韵', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010310', null, '严咸', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010311', null, '阎珂', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010312', null, '汤冷', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010313', null, '汤枫', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010314', null, '汤宜隗', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010315', null, '庞门和', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010316', null, '阎觅', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010317', null, '闫南宫 ', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010318', null, '刘竹', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010319', null, '余星', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010320', null, '彦束', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010321', null, '龚毅', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010322', null, '范贝', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010323', null, '候符', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010324', null, '龚霖那', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010325', null, '唐竹', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010326', null, '唐公西', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010327', null, '于邱', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010328', null, '彦高超', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010329', null, '雍琴闾', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010330', null, '范叡柳', '3', null, null, '20150100103');
INSERT INTO `student` VALUES ('2015010010401', null, '范滕', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010402', null, '颜珂', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010403', null, '余门和', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010404', null, '汤夏', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010405', null, '阎廖星', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010406', null, '雍易', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010407', null, '唐莓夏', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010408', null, '李阎', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010409', null, '王眉查', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010410', null, '候易', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010411', null, '于班', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010412', null, '龚雨', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010413', null, '罗觅', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010414', null, '赵荀', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010415', null, '杨靖', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010416', null, '严柔', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010417', null, '罗璇', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010418', null, '汤芬', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010419', null, '赵夏', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010420', null, '罗丘韵', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010421', null, '严星', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010422', null, '孙南宫 ', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010423', null, '庞梦', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010424', null, '颜竹', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010425', null, '龚初骆', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010426', null, '王龙文', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010427', null, '闫怀丁', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010428', null, '李英博', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010429', null, '穆全', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010010430', null, '严竹', '3', null, null, '20150100104');
INSERT INTO `student` VALUES ('2015010020101', null, '郑怀丁', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020102', null, '候滕', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020103', null, '于全', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020104', null, '刘廉', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020105', null, '伊珂', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020106', null, '罗霖那', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020107', null, '孙滕', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020108', null, '雍勤长孙书', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020109', null, '候英博', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020110', null, '杨西', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020111', null, '孙夏', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020112', null, '钱雨', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020113', null, '罗海利', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020114', null, '余珂', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020115', null, '雍官', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020116', null, '罗符烨', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020117', null, '郑叡柳', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020118', null, '赵西', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020119', null, '汤滕', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020120', null, '伊庄', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020121', null, '颜班', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020122', null, '李邱', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020123', null, '郑初骆', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020124', null, '彦锋', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020125', null, '伊邱', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020126', null, '龚珂', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020127', null, '雍雨', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020128', null, '阎贝', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020129', null, '龚琴闾', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020130', null, '龚眉查', '3', null, null, '20150100201');
INSERT INTO `student` VALUES ('2015010020201', null, '杨夏', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020202', null, '贺怀丁', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020203', null, '闫海利', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020204', null, '潘官', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020205', null, '余彤', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020206', null, '穆觅', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020207', null, '于冷', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020208', null, '柳莓夏', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020209', null, '刘全', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020210', null, '穆初骆', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020211', null, '范璇', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020212', null, '雍门', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020213', null, '贺公西', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020214', null, '郑菊', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020215', null, '李滕', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020216', null, '候柏', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020217', null, '余昂', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020218', null, '候谷泰', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020219', null, '罗夔', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020220', null, '潘夔', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020221', null, '穆西', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020222', null, '颜易', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020223', null, '刘莓夏', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020224', null, '王霖那', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020225', null, '王后', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020226', null, '郑芳', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020227', null, '余亓', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020228', null, '罗夏', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020229', null, '余西', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020230', null, '颜易', '3', null, null, '20150100202');
INSERT INTO `student` VALUES ('2015010020301', null, '汤西', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020302', null, '钱门', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020303', null, '汤柏', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020304', null, '彦觅', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020305', null, '于班', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020306', null, '潘芳', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020307', null, '李门', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020308', null, '贺柔', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020309', null, '孙眉查', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020310', null, '杨符', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020311', null, '余夏', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020312', null, '杨公西', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020313', null, '范觅', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020314', null, '赵全丹', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020315', null, '贺冷', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020316', null, '穆锋', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020317', null, '刘别敏', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020318', null, '潘西', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020319', null, '柳星', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020320', null, '戴昂', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020321', null, '唐英博', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020322', null, '雍勤长孙书', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020323', null, '郑昂', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020324', null, '潘叶', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020325', null, '赵咸', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020326', null, '赵靖', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020327', null, '候官', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020328', null, '严莓夏', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020329', null, '钱昭', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020330', null, '潘夏', '3', null, null, '20150100203');
INSERT INTO `student` VALUES ('2015010020401', null, '柳甄锐', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020402', null, '范初骆', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020403', null, '汤廉', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020404', null, '庞南', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020405', null, '孙夔', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020406', null, '戴叡柳', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020407', null, '穆璇', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020408', null, '伊珂', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020409', null, '龚雪', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020410', null, '范西', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020411', null, '彦夏', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020412', null, '柳珂', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020413', null, '彦彤', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020414', null, '柳廉', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020415', null, '范荀', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020416', null, '于锋', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020417', null, '候亓', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020418', null, '杨冷', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020419', null, '汤茗', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020420', null, '颜亓', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020421', null, '潘冷', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020422', null, '彦咛', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020423', null, '雍邱', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020424', null, '李门', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020425', null, '汤亓', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020426', null, '余竹', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020427', null, '阎梁', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020428', null, '穆韵', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020429', null, '严琴闾', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010020430', null, '罗易', '3', null, null, '20150100204');
INSERT INTO `student` VALUES ('2015010030101', null, '孙柔', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030102', null, '贺邱', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030103', null, '颜门', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030104', null, '雍贝', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030105', null, '候班', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030106', null, '赵琴闾', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030107', null, '龙全丹', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030108', null, '龙霖那', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030109', null, '严公西', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030110', null, '柳车', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030111', null, '颜昭', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030112', null, '颜枫', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030113', null, '孙南', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030114', null, '罗柔', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030115', null, '孙门和', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030116', null, '刘真', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030117', null, '雍韵', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030118', null, '王诸葛', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030119', null, '杨咛', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030120', null, '于聂', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030121', null, '潘莓夏', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030122', null, '戴西', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030123', null, '贺怀丁', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030124', null, '唐英博', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030125', null, '严后', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030126', null, '范琴', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030127', null, '罗琴', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030128', null, '汤高超', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030129', null, '潘冷', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030130', null, '汤海利', '3', null, null, '20150100301');
INSERT INTO `student` VALUES ('2015010030201', null, '潘眉查', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030202', null, '严飞', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030203', null, '罗靖', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030204', null, '贺琴', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030205', null, '范丘韵', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030206', null, '阎菊', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030207', null, '余门', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030208', null, '罗昂', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030209', null, '龙阎', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030210', null, '唐璇', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030211', null, '于易', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030212', null, '杨珊', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030213', null, '伊霖那', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030214', null, '龚廖星', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030215', null, '庞易', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030216', null, '穆靖', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030217', null, '李夔', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030218', null, '戴彤', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030219', null, '钱星', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030220', null, '柳臧娅', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030221', null, '郑靖', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030222', null, '李诸葛', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030223', null, '戴菊', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030224', null, '闫荀', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030225', null, '杨璇', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030226', null, '钱西', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030227', null, '潘全丹', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030228', null, '钱雪风', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030229', null, '戴毅', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030230', null, '严别敏', '3', null, null, '20150100302');
INSERT INTO `student` VALUES ('2015010030301', null, '赵龙文', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030302', null, '唐昭', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030303', null, '贺锋', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030304', null, '余门', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030305', null, '戴梦', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030306', null, '余叶', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030307', null, '雍符', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030308', null, '赵琴', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030309', null, '穆诸葛', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030310', null, '伊南宫 ', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030311', null, '严聂', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030312', null, '雍冷', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030313', null, '彦韵', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030314', null, '柳班', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030315', null, '闫别敏', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030316', null, '罗星', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030317', null, '汤叡柳', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030318', null, '伊贝', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030319', null, '杨宜隗', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030320', null, '龙后', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030321', null, '雍茗', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030322', null, '余海利', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030323', null, '龚束', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030324', null, '严夔', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030325', null, '余英博', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030326', null, '郑雪风', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030327', null, '赵毅', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030328', null, '柳易', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030329', null, '孙珊', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030330', null, '王柏', '3', null, null, '20150100303');
INSERT INTO `student` VALUES ('2015010030401', null, '刘觅', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030402', null, '郑雪', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030403', null, '彦雪风', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030404', null, '贺南宫 ', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030405', null, '钱符', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030406', null, '伊靖', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030407', null, '钱咛', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030408', null, '穆琴', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030409', null, '伊莓夏', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030410', null, '庞觅', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030411', null, '刘咛', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030412', null, '候廉', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030413', null, '严阎', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030414', null, '闫廉', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030415', null, '穆英', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030416', null, '刘枫', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030417', null, '郑琴', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030418', null, '王宜隗', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030419', null, '彦雪风', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030420', null, '郑西', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030421', null, '闫易', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030422', null, '阎初骆', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030423', null, '王符烨', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030424', null, '候英博', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030425', null, '汤臧娅', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030426', null, '杨芳', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030427', null, '庞易', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030428', null, '庞芳', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030429', null, '刘怀丁', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010030430', null, '郑符', '3', null, null, '20150100304');
INSERT INTO `student` VALUES ('2015010040101', null, '柳符烨', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040102', null, '闫冷', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040103', null, '庞咸', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040104', null, '柳门', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040105', null, '柳霖那', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040106', null, '戴束', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040107', null, '彦门', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040108', null, '钱臧娅', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040109', null, '罗班', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040110', null, '雍雪', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040111', null, '罗西', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040112', null, '彦彤', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040113', null, '彦怀丁', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040114', null, '候雪风', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040115', null, '候莓夏', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040116', null, '刘怀丁', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040117', null, '严英博', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040118', null, '严叶', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040119', null, '王梁', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040120', null, '刘龙文', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040121', null, '李夏', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040122', null, '龚珊', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040123', null, '刘全丹', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040124', null, '赵海利', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040125', null, '余英博', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040126', null, '李锋', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040127', null, '于聂', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040128', null, '阎梁', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040129', null, '杨荀', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040130', null, '汤枫', '3', null, null, '20150100401');
INSERT INTO `student` VALUES ('2015010040201', null, '于雪', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040202', null, '颜亓', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040203', null, '孙星', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040204', null, '孙叶', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040205', null, '庞阎', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040206', null, '王叶', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040207', null, '闫锋', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040208', null, '余梦', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040209', null, '汤梦', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040210', null, '余束', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040211', null, '伊毅', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040212', null, '戴班', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040213', null, '范夔', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040214', null, '汤飞', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040215', null, '余梁', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040216', null, '范邱', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040217', null, '郑珊', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040218', null, '戴飞', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040219', null, '闫昭', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040220', null, '杨海利', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040221', null, '孙宜隗', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040222', null, '穆冷', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040223', null, '戴星', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040224', null, '伊菊', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040225', null, '庞昂', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040226', null, '雍班', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040227', null, '贺珂', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040228', null, '贺门和', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040229', null, '候琴闾', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040230', null, '候霖那', '3', null, null, '20150100402');
INSERT INTO `student` VALUES ('2015010040301', null, '杨琴', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040302', null, '潘聂', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040303', null, '伊夔', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040304', null, '刘丘韵', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040305', null, '候滕', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040306', null, '刘全', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040307', null, '候怀丁', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040308', null, '杨龙文', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040309', null, '龙菊', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040310', null, '彦珂', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040311', null, '柳公西', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040312', null, '伊雪风', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040313', null, '王勤长孙书', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040314', null, '严冷', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040315', null, '汤璇', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040316', null, '雍冷', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040317', null, '伊柔', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040318', null, '于公西', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040319', null, '贺符烨', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040320', null, '郑别敏', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040321', null, '彦龙文', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040322', null, '穆昭', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040323', null, '雍雪', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040324', null, '彦菊', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040325', null, '杨邱', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040326', null, '伊毅', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040327', null, '余后', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040328', null, '赵夔', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040329', null, '候柏', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040330', null, '龙锋', '3', null, null, '20150100403');
INSERT INTO `student` VALUES ('2015010040401', null, '龚廉', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040402', null, '穆海利', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040403', null, '汤冷', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040404', null, '穆锋', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040405', null, '阎别敏', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040406', null, '庞束', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040407', null, '柳沐', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040408', null, '庞亓', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040409', null, '于夏', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040410', null, '戴南', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040411', null, '余芳', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040412', null, '庞束', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040413', null, '阎雪', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040414', null, '范符烨', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040415', null, '穆柔', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040416', null, '戴叶', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040417', null, '王符烨', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040418', null, '候冷', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040419', null, '彦龙文', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040420', null, '贺璇', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040421', null, '龙夏', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040422', null, '柳眉查', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040423', null, '杨全丹', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040424', null, '戴珂', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040425', null, '李星', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040426', null, '郑叶', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040427', null, '候靖', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040428', null, '贺束', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040429', null, '龙梦', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010040430', null, '贺海利', '3', null, null, '20150100404');
INSERT INTO `student` VALUES ('2015010050101', null, '杨高超', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050102', null, '贺符烨', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050103', null, '王别敏', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050104', null, '罗谷泰', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050105', null, '余锋', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050106', null, '杨茗', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050107', null, '伊昭', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050108', null, '穆怀丁', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050109', null, '王龙文', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050110', null, '彦丘韵', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050111', null, '钱英博', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050112', null, '余枫', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050113', null, '潘高超', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050114', null, '汤冷', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050115', null, '雍邱', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050116', null, '汤毅', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050117', null, '贺滕', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050118', null, '于星', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050119', null, '赵易', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050120', null, '罗高超', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050121', null, '罗柔', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050122', null, '余海利', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050123', null, '李竹', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050124', null, '阎霖那', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050125', null, '严全', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050126', null, '范龙文', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050127', null, '颜昂', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050128', null, '王彤', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050129', null, '候星', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050130', null, '刘叶', '3', null, null, '20150100501');
INSERT INTO `student` VALUES ('2015010050201', null, '唐符', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050202', null, '雍勤长孙书', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050203', null, '龚符', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050204', null, '龙锋', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050205', null, '雍冷', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050206', null, '郑琴闾', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050207', null, '阎夔', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050208', null, '候夏', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050209', null, '杨后', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050210', null, '孙南宫 ', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050211', null, '严靖', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050212', null, '雍车', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050213', null, '龙夏', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050214', null, '庞英博', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050215', null, '阎芳', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050216', null, '王菊', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050217', null, '闫诸葛', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050218', null, '罗臧娅', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050219', null, '于后', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050220', null, '伊锋', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050221', null, '孙叡柳', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050222', null, '于诸葛', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050223', null, '赵南宫 ', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050224', null, '彦冷', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050225', null, '彦眉查', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050226', null, '刘毅', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050227', null, '庞诸葛', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050228', null, '孙夔', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050229', null, '范龙文', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050230', null, '闫梦', '3', null, null, '20150100502');
INSERT INTO `student` VALUES ('2015010050301', null, '雍昭', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050302', null, '伊枫', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050303', null, '龙锋', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050304', null, '贺眉查', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050305', null, '罗锋', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050306', null, '范珂', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050307', null, '孙亓', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050308', null, '罗邱', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050309', null, '汤冷', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050310', null, '颜沐', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050311', null, '余车', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050312', null, '钱公西', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050313', null, '范锋', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050314', null, '杨真', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050315', null, '穆勤长孙书', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050316', null, '王门和', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050317', null, '伊眉查', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050318', null, '庞别敏', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050319', null, '郑锋', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050320', null, '郑符烨', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050321', null, '闫宜隗', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050322', null, '柳南', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050323', null, '于后', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050324', null, '孙叡柳', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050325', null, '戴咛', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050326', null, '穆叡柳', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050327', null, '柳珂', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050328', null, '严门', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050329', null, '龙束', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050330', null, '郑荀', '3', null, null, '20150100503');
INSERT INTO `student` VALUES ('2015010050401', null, '李官', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050402', null, '汤雪', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050403', null, '雍莓夏', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050404', null, '庞毅', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050405', null, '彦觅', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050406', null, '孙海利', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050407', null, '颜臧娅', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050408', null, '龙芬', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050409', null, '钱冷', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050410', null, '汤毅', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050411', null, '罗菊', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050412', null, '李廉', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050413', null, '严高超', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050414', null, '汤甄锐', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050415', null, '候竹', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050416', null, '杨莓夏', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050417', null, '郑廖星', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050418', null, '雍靖', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050419', null, '汤觅', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050420', null, '罗彤', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050421', null, '孙宜隗', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050422', null, '王符', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050423', null, '戴贝', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050424', null, '雍符烨', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050425', null, '范柏', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050426', null, '龙邱', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050427', null, '庞柏', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050428', null, '钱枫', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050429', null, '于夏', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010050430', null, '杨靖', '3', null, null, '20150100504');
INSERT INTO `student` VALUES ('2015010060101', null, '柳车', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060102', null, '钱廖星', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060103', null, '杨眉查', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060104', null, '穆琴', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060105', null, '潘雪风', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060106', null, '伊菊', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060107', null, '庞怀丁', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060108', null, '柳怀丁', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060109', null, '汤琴闾', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060110', null, '阎霖那', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060111', null, '伊叡柳', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060112', null, '李竹', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060113', null, '余叶', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060114', null, '闫初骆', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060115', null, '罗南宫 ', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060116', null, '郑初骆', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060117', null, '龚芳', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060118', null, '颜全', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060119', null, '罗眉查', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060120', null, '严诸葛', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060121', null, '穆怀丁', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060122', null, '阎枫', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060123', null, '潘符', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060124', null, '于别敏', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060125', null, '范聂', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060126', null, '范觅', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060127', null, '赵芬', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060128', null, '于茗', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060129', null, '余韵', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060130', null, '刘韵', '3', null, null, '20150100601');
INSERT INTO `student` VALUES ('2015010060201', null, '唐初骆', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060202', null, '雍全丹', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060203', null, '潘珊', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060204', null, '孙符', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060205', null, '龚符', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060206', null, '刘真', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060207', null, '杨全', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060208', null, '伊英博', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060209', null, '雍官', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060210', null, '伊廖星', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060211', null, '范琴闾', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060212', null, '赵英', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060213', null, '戴邱', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060214', null, '彦亓', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060215', null, '庞靖', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060216', null, '罗公西', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060217', null, '候怀丁', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060218', null, '刘易', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060219', null, '刘车', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060220', null, '穆柏', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060221', null, '王庄', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060222', null, '刘易', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060223', null, '于星', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060224', null, '刘公西', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060225', null, '彦海利', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060226', null, '庞全丹', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060227', null, '范冷', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060228', null, '闫珊', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060229', null, '闫门', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060230', null, '颜南', '3', null, null, '20150100602');
INSERT INTO `student` VALUES ('2015010060301', null, '彦梦', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060302', null, '钱夏', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060303', null, '刘璇', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060304', null, '于班', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060305', null, '柳柔', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060306', null, '候咛', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060307', null, '杨珂', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060308', null, '余韵', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060309', null, '伊柏', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060310', null, '严毅', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060311', null, '严咸', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060312', null, '范柔', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060313', null, '严璇', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060314', null, '戴车', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060315', null, '穆雪风', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060316', null, '贺毅', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060317', null, '彦荀', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060318', null, '候莓夏', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060319', null, '贺门和', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060320', null, '杨南', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060321', null, '龙怀丁', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060322', null, '穆枫', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060323', null, '刘西', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060324', null, '刘西', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060325', null, '刘叡柳', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060326', null, '戴珂', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060327', null, '彦柏', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060328', null, '于毅', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060329', null, '雍英', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060330', null, '阎芬', '3', null, null, '20150100603');
INSERT INTO `student` VALUES ('2015010060401', null, '郑梁', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060402', null, '罗叡柳', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060403', null, '余邱', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060404', null, '龙星', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060405', null, '郑眉查', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060406', null, '范咛', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060407', null, '闫荀', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060408', null, '汤邱', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060409', null, '闫柏', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060410', null, '李公西', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060411', null, '范茗', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060412', null, '雍谷泰', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060413', null, '贺后', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060414', null, '庞枫', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060415', null, '赵飞', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060416', null, '戴西', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060417', null, '钱滕', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060418', null, '孙符', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060419', null, '潘怀丁', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060420', null, '严易', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060421', null, '雍柏', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060422', null, '余勤长孙书', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060423', null, '郑锋', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060424', null, '范官', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060425', null, '阎咸', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060426', null, '候廖星', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060427', null, '阎飞', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060428', null, '庞官', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060429', null, '颜邱', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010060430', null, '阎车', '3', null, null, '20150100604');
INSERT INTO `student` VALUES ('2015010070101', null, '刘谷泰', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070102', null, '赵彤', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070103', null, '闫车', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070104', null, '罗西', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070105', null, '李诸葛', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070106', null, '彦谷泰', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070107', null, '彦门和', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070108', null, '龚菊', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070109', null, '戴别敏', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070110', null, '穆邱', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070111', null, '严谷泰', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070112', null, '罗勤长孙书', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070113', null, '戴亓', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070114', null, '阎靖', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070115', null, '雍柔', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070116', null, '孙雪风', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070117', null, '彦车', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070118', null, '李沐', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070119', null, '刘珊', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070120', null, '王芳', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070121', null, '伊芬', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070122', null, '汤庄', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070123', null, '赵夔', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070124', null, '闫冷', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070125', null, '王雪', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070126', null, '李竹', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070127', null, '汤滕', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070128', null, '汤沐', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070129', null, '汤全丹', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070130', null, '雍臧娅', '3', null, null, '20150100701');
INSERT INTO `student` VALUES ('2015010070201', null, '李高超', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070202', null, '李毅', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070203', null, '范臧娅', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070204', null, '雍宜隗', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070205', null, '庞廉', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070206', null, '彦后', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070207', null, '戴廖星', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070208', null, '孙符烨', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070209', null, '刘沐', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070210', null, '孙甄锐', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070211', null, '范班', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070212', null, '潘琴', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070213', null, '严竹', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070214', null, '孙全', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070215', null, '雍昭', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070216', null, '郑门和', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070217', null, '汤门', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070218', null, '贺车', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070219', null, '雍西', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070220', null, '赵门', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070221', null, '李别敏', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070222', null, '彦全', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070223', null, '唐星', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070224', null, '伊门和', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070225', null, '罗咛', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070226', null, '伊霖那', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070227', null, '李梦', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070228', null, '彦锋', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070229', null, '龙夏', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070230', null, '闫臧娅', '3', null, null, '20150100702');
INSERT INTO `student` VALUES ('2015010070301', null, '罗眉查', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070302', null, '贺别敏', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070303', null, '伊西', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070304', null, '孙珊', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070305', null, '钱后', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070306', null, '汤芳', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070307', null, '龚昭', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070308', null, '贺茗', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070309', null, '闫沐', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070310', null, '柳聂', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070311', null, '汤锋', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070312', null, '穆初骆', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070313', null, '伊班', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070314', null, '彦茗', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070315', null, '闫咛', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070316', null, '杨冷', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070317', null, '颜芳', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070318', null, '唐公西', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070319', null, '余枫', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070320', null, '颜眉查', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070321', null, '钱夏', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070322', null, '王咸', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070323', null, '严臧娅', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070324', null, '阎梁', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070325', null, '候车', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070326', null, '于全', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070327', null, '颜冷', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070328', null, '庞觅', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070329', null, '阎亓', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070330', null, '李易', '3', null, null, '20150100703');
INSERT INTO `student` VALUES ('2015010070401', null, '雍初骆', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070402', null, '颜甄锐', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070403', null, '范叡柳', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070404', null, '范门', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070405', null, '范芳', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070406', null, '闫茗', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070407', null, '罗庄', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070408', null, '李甄锐', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070409', null, '于亓', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070410', null, '李梦', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070411', null, '闫梁', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070412', null, '范甄锐', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070413', null, '穆别敏', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070414', null, '钱廉', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070415', null, '柳叶', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070416', null, '潘梦', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070417', null, '汤靖', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070418', null, '范夔', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070419', null, '刘眉查', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070420', null, '于叡柳', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070421', null, '余滕', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070422', null, '杨甄锐', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070423', null, '颜滕', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070424', null, '汤枫', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070425', null, '刘英博', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070426', null, '汤莓夏', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070427', null, '闫真', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070428', null, '彦宜隗', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070429', null, '罗别敏', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010070430', null, '戴荀', '3', null, null, '20150100704');
INSERT INTO `student` VALUES ('2015010080101', null, '贺亓', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080102', null, '李易', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080103', null, '唐甄锐', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080104', null, '柳飞', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080105', null, '穆芬', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080106', null, '穆符烨', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080107', null, '贺亓', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080108', null, '罗咛', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080109', null, '严门', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080110', null, '严飞', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080111', null, '阎觅', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080112', null, '穆后', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080113', null, '候茗', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080114', null, '雍雪', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080115', null, '伊廖星', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080116', null, '王丘韵', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080117', null, '阎全', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080118', null, '严咛', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080119', null, '柳夏', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080120', null, '龙昂', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080121', null, '龙冷', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080122', null, '闫莓夏', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080123', null, '戴芬', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080124', null, '雍昭', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080125', null, '龚菊', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080126', null, '严琴闾', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080127', null, '严雪', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080128', null, '闫芳', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080129', null, '戴英博', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080130', null, '孙眉查', '3', null, null, '20150100801');
INSERT INTO `student` VALUES ('2015010080201', null, '彦星', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080202', null, '汤束', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080203', null, '阎芳', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080204', null, '罗西', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080205', null, '龚芳', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080206', null, '于西', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080207', null, '戴琴', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080208', null, '候甄锐', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080209', null, '孙官', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080210', null, '汤全', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080211', null, '刘南宫 ', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080212', null, '候莓夏', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080213', null, '颜毅', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080214', null, '龚雪风', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080215', null, '戴易', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080216', null, '余公西', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080217', null, '汤莓夏', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080218', null, '闫英博', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080219', null, '钱真', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080220', null, '柳茗', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080221', null, '郑冷', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080222', null, '阎莓夏', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080223', null, '赵公西', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080224', null, '穆易', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080225', null, '孙西', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080226', null, '赵易', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080227', null, '伊咛', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080228', null, '伊珂', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080229', null, '庞车', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080230', null, '龚车', '3', null, null, '20150100802');
INSERT INTO `student` VALUES ('2015010080301', null, '龙飞', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080302', null, '余靖', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080303', null, '彦雨', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080304', null, '罗雨', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080305', null, '候西', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080306', null, '唐芳', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080307', null, '于韵', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080308', null, '彦廖星', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080309', null, '潘臧娅', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080310', null, '杨公西', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080311', null, '戴西', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080312', null, '赵真', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080313', null, '龚诸葛', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080314', null, '伊珂', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080315', null, '杨夏', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080316', null, '唐珂', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080317', null, '王邱', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080318', null, '王西', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080319', null, '彦荀', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080320', null, '潘昂', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080321', null, '范琴', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080322', null, '贺眉查', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080323', null, '唐班', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080324', null, '汤南', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080325', null, '于柔', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080326', null, '杨英博', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080327', null, '严星', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080328', null, '候珂', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080329', null, '刘门', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080330', null, '王易', '3', null, null, '20150100803');
INSERT INTO `student` VALUES ('2015010080401', null, '龙竹', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080402', null, '汤茗', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080403', null, '彦邱', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080404', null, '李菊', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080405', null, '潘英博', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080406', null, '余星', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080407', null, '庞枫', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080408', null, '阎全丹', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080409', null, '雍眉查', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080410', null, '李全', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080411', null, '阎甄锐', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080412', null, '唐门', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080413', null, '颜彤', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080414', null, '刘诸葛', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080415', null, '孙亓', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080416', null, '范珂', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080417', null, '彦叡柳', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080418', null, '阎聂', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080419', null, '颜谷泰', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080420', null, '刘霖那', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080421', null, '闫柏', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080422', null, '王别敏', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080423', null, '贺臧娅', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080424', null, '伊谷泰', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080425', null, '赵荀', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080426', null, '赵勤长孙书', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080427', null, '赵滕', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080428', null, '赵亓', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080429', null, '唐珂', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010080430', null, '彦全', '3', null, null, '20150100804');
INSERT INTO `student` VALUES ('2015010090101', null, '戴初骆', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090102', null, '颜南宫 ', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090103', null, '颜全丹', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090104', null, '候靖', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090105', null, '孙符烨', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090106', null, '彦叡柳', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090107', null, '罗官', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090108', null, '唐庄', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090109', null, '王霖那', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090110', null, '范门', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090111', null, '严琴闾', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090112', null, '伊梁', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090113', null, '王官', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090114', null, '贺夔', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090115', null, '贺甄锐', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090116', null, '雍柔', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090117', null, '刘昂', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090118', null, '穆冷', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090119', null, '罗夏', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090120', null, '柳贝', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090121', null, '汤英', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090122', null, '钱韵', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090123', null, '赵聂', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090124', null, '雍梦', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090125', null, '严丘韵', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090126', null, '穆夔', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090127', null, '余亓', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090128', null, '闫贝', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090129', null, '杨门', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090130', null, '范梁', '3', null, null, '20150100901');
INSERT INTO `student` VALUES ('2015010090201', null, '穆莓夏', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090202', null, '孙彤', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090203', null, '穆梦', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090204', null, '李韵', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090205', null, '伊夏', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090206', null, '潘觅', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090207', null, '刘叶', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090208', null, '柳霖那', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090209', null, '戴霖那', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090210', null, '戴聂', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090211', null, '于滕', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090212', null, '范夏', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090213', null, '罗海利', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090214', null, '钱全丹', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090215', null, '雍高超', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090216', null, '赵雨', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090217', null, '汤柔', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090218', null, '柳叡柳', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090219', null, '孙夏', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090220', null, '唐亓', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090221', null, '彦贝', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090222', null, '贺夔', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090223', null, '郑雨', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090224', null, '雍英博', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090225', null, '雍彤', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090226', null, '闫毅', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090227', null, '汤荀', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090228', null, '龚韵', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090229', null, '刘官', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090230', null, '杨靖', '3', null, null, '20150100902');
INSERT INTO `student` VALUES ('2015010090301', null, '汤夏', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090302', null, '刘海利', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090303', null, '龙符', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090304', null, '于别敏', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090305', null, '闫茗', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090306', null, '彦谷泰', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090307', null, '闫竹', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090308', null, '钱怀丁', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090309', null, '杨甄锐', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090310', null, '刘真', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090311', null, '伊臧娅', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090312', null, '柳真', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090313', null, '彦梁', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090314', null, '严莓夏', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090315', null, '于璇', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090316', null, '龚英', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090317', null, '罗沐', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090318', null, '唐后', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090319', null, '彦邱', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090320', null, '伊英', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090321', null, '王门', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090322', null, '严聂', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090323', null, '庞雪风', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090324', null, '钱竹', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090325', null, '唐西', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090326', null, '穆束', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090327', null, '龚亓', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090328', null, '贺廉', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090329', null, '阎沐', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090330', null, '龙靖', '3', null, null, '20150100903');
INSERT INTO `student` VALUES ('2015010090401', null, '龚符', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090402', null, '贺南', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090403', null, '雍班', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090404', null, '阎璇', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090405', null, '刘南', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090406', null, '闫西', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090407', null, '贺全', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090408', null, '杨咸', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090409', null, '汤班', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090410', null, '钱星', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090411', null, '彦邱', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090412', null, '庞易', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090413', null, '雍霖那', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090414', null, '罗觅', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090415', null, '刘梦', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090416', null, '罗沐', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090417', null, '柳全丹', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090418', null, '闫昂', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090419', null, '刘贝', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090420', null, '刘怀丁', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090421', null, '穆甄锐', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090422', null, '雍昭', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090423', null, '候冷', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090424', null, '杨海利', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090425', null, '余茗', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090426', null, '范符烨', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090427', null, '雍琴', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090428', null, '范雨', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090429', null, '杨聂', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010090430', null, '雍霖那', '3', null, null, '20150100904');
INSERT INTO `student` VALUES ('2015010100101', null, '柳宜隗', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100102', null, '范璇', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100103', null, '唐雪风', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100104', null, '刘芬', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100105', null, '雍锋', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100106', null, '刘琴闾', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100107', null, '郑束', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100108', null, '王海利', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100109', null, '汤芳', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100110', null, '杨韵', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100111', null, '孙贝', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100112', null, '郑真', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100113', null, '范霖那', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100114', null, '穆璇', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100115', null, '贺公西', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100116', null, '庞叶', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100117', null, '钱觅', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100118', null, '郑贝', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100119', null, '龚霖那', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100120', null, '孙雪', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100121', null, '赵菊', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100122', null, '孙南宫 ', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100123', null, '钱梦', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100124', null, '颜枫', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100125', null, '余符', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100126', null, '候甄锐', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100127', null, '戴门', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100128', null, '余枫', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100129', null, '郑宜隗', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100130', null, '于莓夏', '3', null, null, '20150101001');
INSERT INTO `student` VALUES ('2015010100201', null, '孙谷泰', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100202', null, '严柏', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100203', null, '伊菊', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100204', null, '余符烨', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100205', null, '候昂', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100206', null, '杨聂', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100207', null, '潘全', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100208', null, '严庄', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100209', null, '伊珊', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100210', null, '雍符烨', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100211', null, '穆柔', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100212', null, '范冷', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100213', null, '李韵', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100214', null, '贺锋', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100215', null, '罗门和', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100216', null, '闫宜隗', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100217', null, '严西', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100218', null, '汤英博', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100219', null, '于竹', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100220', null, '余廉', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100221', null, '王车', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100222', null, '龚聂', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100223', null, '赵昭', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100224', null, '李梦', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100225', null, '潘柔', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100226', null, '刘廉', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100227', null, '刘琴闾', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100228', null, '戴邱', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100229', null, '柳南', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100230', null, '赵雪', '3', null, null, '20150101002');
INSERT INTO `student` VALUES ('2015010100301', null, '范臧娅', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100302', null, '范初骆', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100303', null, '候莓夏', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100304', null, '范靖', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100305', null, '钱英博', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100306', null, '颜廖星', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100307', null, '钱庄', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100308', null, '龚车', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100309', null, '李甄锐', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100310', null, '王英博', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100311', null, '赵门', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100312', null, '穆滕', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100313', null, '龙咸', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100314', null, '郑琴', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100315', null, '贺廖星', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100316', null, '柳车', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100317', null, '孙觅', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100318', null, '龙符', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100319', null, '孙琴闾', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100320', null, '闫聂', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100321', null, '龚海利', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100322', null, '阎廖星', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100323', null, '穆西', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100324', null, '潘雪', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100325', null, '刘符烨', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100326', null, '罗芬', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100327', null, '刘怀丁', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100328', null, '颜怀丁', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100329', null, '汤英', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100330', null, '严锋', '3', null, null, '20150101003');
INSERT INTO `student` VALUES ('2015010100401', null, '刘莓夏', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100402', null, '贺勤长孙书', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100403', null, '伊后', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100404', null, '汤怀丁', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100405', null, '刘咸', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100406', null, '颜高超', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100407', null, '郑叶', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100408', null, '钱琴闾', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100409', null, '彦全', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100410', null, '庞菊', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100411', null, '候龙文', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100412', null, '戴聂', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100413', null, '王飞', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100414', null, '贺雨', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100415', null, '颜冷', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100416', null, '龚眉查', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100417', null, '雍初骆', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100418', null, '郑全丹', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100419', null, '罗公西', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100420', null, '闫冷', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100421', null, '戴真', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100422', null, '罗龙文', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100423', null, '王高超', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100424', null, '伊南宫 ', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100425', null, '罗梦', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100426', null, '龙咸', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100427', null, '龙甄锐', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100428', null, '龚聂', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100429', null, '龚符烨', '3', null, null, '20150101004');
INSERT INTO `student` VALUES ('2015010100430', null, '阎束', '3', null, null, '20150101004');

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
  `pwd` varchar(128) DEFAULT NULL,
  `name` varchar(15) NOT NULL,
  `userType` int(1) NOT NULL,
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
INSERT INTO `teacher` VALUES ('012001', null, '孙海利', '2', null, '副教授', '硕士', '01');
INSERT INTO `teacher` VALUES ('012002', null, '王英博', '2', null, '讲师', '博士', '01');
INSERT INTO `teacher` VALUES ('012003', null, '李南宫 ', '2', null, '教授', '博士后', '01');
INSERT INTO `teacher` VALUES ('012004', '104e6f205e8d0aefdc16d5eb350000475800f1d5', '杨高超', '2', null, '副教授', '本科', '01');
INSERT INTO `teacher` VALUES ('012005', null, '柳甄锐', '2', null, '讲师', '硕士', '01');
INSERT INTO `teacher` VALUES ('012006', null, '赵锋', '2', null, '教授', '博士', '01');
INSERT INTO `teacher` VALUES ('012007', null, '孙别敏', '2', null, '副教授', '博士后', '01');
INSERT INTO `teacher` VALUES ('012008', null, '王叡柳', '2', null, '讲师', '本科', '01');
INSERT INTO `teacher` VALUES ('012009', null, '李英', '2', null, '教授', '硕士', '01');
INSERT INTO `teacher` VALUES ('012010', null, '杨毅', '2', null, '副教授', '博士', '01');
INSERT INTO `teacher` VALUES ('012011', null, '柳符烨', '2', null, '讲师', '博士后', '01');
INSERT INTO `teacher` VALUES ('012012', null, '赵霖那', '2', null, '教授', '本科', '01');
INSERT INTO `teacher` VALUES ('012013', null, '孙飞', '2', null, '副教授', '硕士', '01');
INSERT INTO `teacher` VALUES ('012014', null, '王昂', '2', null, '讲师', '博士', '01');
INSERT INTO `teacher` VALUES ('012015', null, '李谷泰', '2', null, '教授', '博士后', '01');
INSERT INTO `teacher` VALUES ('012016', null, '杨初骆', '2', null, '副教授', '本科', '01');
INSERT INTO `teacher` VALUES ('012017', null, '柳星', '2', null, '讲师', '硕士', '01');
INSERT INTO `teacher` VALUES ('012018', null, '赵雨', '2', null, '教授', '博士', '01');
INSERT INTO `teacher` VALUES ('012019', null, '孙南', '2', null, '副教授', '博士后', '01');
INSERT INTO `teacher` VALUES ('012020', null, '王门和', '2', null, '讲师', '本科', '01');
INSERT INTO `teacher` VALUES ('012021', null, '李韵', '2', null, '教授', '硕士', '01');
INSERT INTO `teacher` VALUES ('012022', null, '杨雪风', '2', null, '副教授', '博士', '01');
INSERT INTO `teacher` VALUES ('012023', null, '柳廖星', '2', null, '讲师', '博士后', '01');
INSERT INTO `teacher` VALUES ('012024', null, '赵海利', '2', null, '教授', '本科', '01');
INSERT INTO `teacher` VALUES ('012025', null, '孙英博', '2', null, '副教授', '硕士', '01');
