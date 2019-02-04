/*
Navicat MySQL Data Transfer
Source Server         : Mysql
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : ctfplatform
Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001
Date: 2019-02-04 15:11:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'test', '1b13fd09e3047d8f23b5c4624f15e494', '2018-12-16 18:43:31', 'f7811ed640f2016d1578b0fa03cdd633');
INSERT INTO `admin` VALUES ('2', 'admin123', 'b6edec99809d646c728d0ecb4041beb2', '2018-12-22 20:01:27', '8d7e9b1f02170e26afa765876611da43');
INSERT INTO `admin` VALUES ('3', 'admin456', 'cc190e932e63ca23f23a616c73147911', '2018-12-22 20:13:11', '4cd6aba825092fcf38d47e6e4c170071');
INSERT INTO `admin` VALUES ('4', '1234567', 'd3b75ec79b0042acae0236025f60d9e7', '2018-12-25 12:34:58', '0ab95a0bad864465fac9e61dcae30fcf');
INSERT INTO `admin` VALUES ('5', '1024265676', 'e55851d257098fc949180a4cde1201b0', '2019-01-28 22:41:04', '097713c42db0d007e7177f23c7febf06');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `cdescribe` text,
  `tch_id` bigint(20) NOT NULL,
  `count` int(5) NOT NULL,
  `createdtime` datetime NOT NULL,
  `state` int(1) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tch_id` (`tch_id`),
  CONSTRAINT `tch_id` FOREIGN KEY (`tch_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'linux实验', '本学期课程包括十余个系列、百余个细分课题：安全方向有Web安全、移动安全、软件安全、CTF、网络安全等；大数据云计算方向包括大数据之Python系列、大数据之Hadoop系列、以及数据挖掘等，值得一提的是本学期推出了CTF实战系列内容，紧扣国内外大赛。', '1', '42', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnKQdP.jpg', '实验');
INSERT INTO `course` VALUES ('2', 'kali之Metasploit密码破解', 'Metasploit是一款开源的安全漏洞检测工具，可以帮助安全和IT专业人士识别安全性问题，验证漏洞的缓解措施。通过本节实验，学习使用metasploit进行密码破解。', '1', '1', '2018-11-29 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnK8JS.png', '实验');
INSERT INTO `course` VALUES ('3', '铁三训练营之数据分析赛教程', '本课程为中国信息安全铁人三项赛训练营教学课程，由西普教育、启明星辰、网康、绿盟、天融信等知名安全企业技术专家授课，系统介绍常见的web内容渗透、常见的取证方法；理解数据收集_数据包分析以及wireshark的简单使用；介绍ddos原理及常见的dos攻防；介绍常见的主机日志取证、分析；对铁人三项赛数据分析赛样题进行解析。', '2', '0', '2018-11-15 11:43:39', '0', 'https://s1.ax1x.com/2018/12/19/FDZ88f.jpg', '测试');
INSERT INTO `course` VALUES ('4', 'CTF新手入门之安全杂项实例讲解', 'MISC即安全杂项，题目涉及流量分析、电子取证、人肉搜索、数据分析、大数据统计等等，覆盖面比较广，主要考查参赛选手的各种基础综合知识。本系列课程中你可以学到各种编码解码，社会工程学，流量分析，日志分析等知识。', '3', '1', '2018-11-29 11:44:08', '0', 'https://s1.ax1x.com/2018/12/01/FnKtMj.png', '测试');
INSERT INTO `course` VALUES ('6', '铁三训练营之数据分析赛教程', '本课程为中国信息安全铁人三项赛训练营教学课程，由西普教育、启明星辰、网康、绿盟、天融信等知名安全企业技术专家授课，系统介绍常见的web内容渗透、常见的取证方法；理解数据收集_数据包分析以及wireshark的简单使用；介绍ddos原理及常见的dos攻防；介绍常见的主机日志取证、分析；对铁人三项赛数据分析赛样题进行解析。', '1', '1', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/19/FDZ88f.jpg', '实验');
INSERT INTO `course` VALUES ('24', 'CTF新手入门之WEB实例讲解', 'MISC即安全杂项，题目涉及流量分析、电子取证、人肉搜索、数据分析、大数据统计等等，覆盖面比较广，主要考查参赛选手的各种基础综合知识。本系列课程中你可以学到各种编码解码，社会工程学，流量分析，日志分析等知识。', '1', '1', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnKtMj.png', '实验');
INSERT INTO `course` VALUES ('25', 'CTF新手入门之安全杂项实例讲解', 'MISC即安全杂项，题目涉及流量分析、电子取证、人肉搜索、数据分析、大数据统计等等，覆盖面比较广，主要考查参赛选手的各种基础综合知识。本系列课程中你可以学到各种编码解码，社会工程学，流量分析，日志分析等知识。', '1', '1', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnK8JS.png', '实验');
INSERT INTO `course` VALUES ('26', 'dvwa实验', '知识与实例相结合，本部分是HTML5课程的基础内容，主要讲解HTML5的标签结构，与传统的HTML4相比，新增和删去的标签及相关属性，并深入拓展了全局属性的相关知识。', '2', '0', '2018-11-29 11:43:39', '0', 'https://s1.ax1x.com/2018/12/19/FDZNrQ.jpg', '测试');
INSERT INTO `course` VALUES ('27', 'webgoat实验', '知识与实例相结合，本部分是HTML5课程的基础内容，主要讲解HTML5的标签结构，与传统的HTML4相比，新增和删去的标签及相关属性，并深入拓展了全局属性的相关知识。', '3', '0', '2018-11-15 11:44:08', '0', 'https://s1.ax1x.com/2018/12/01/FnKtMj.png', '测试');
INSERT INTO `course` VALUES ('28', '常用办公文件的密码破解与防护', '论文的PDF文件加密不许复制是不是很可恶！千辛万苦下载RAR文件加密不许打开更加生气！老师发的word文档不许打印简直要疯！只想破解所有密码有木有！学完本课程什么密码都不在话下。', '1', '1', '2018-11-29 13:23:22', '0', 'https://s1.ax1x.com/2018/12/19/FDZ88f.jpg', '实验');
INSERT INTO `course` VALUES ('29', 'CTF新手入门之安全杂项实例讲解', 'MISC即安全杂项，题目涉及流量分析、电子取证、人肉搜索、数据分析、大数据统计等等，覆盖面比较广，主要考查参赛选手的各种基础综合知识。本系列课程中你可以学到各种编码解码，社会工程学，流量分析，日志分析等知识。', '1', '1', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnKtMj.png', '实验');
INSERT INTO `course` VALUES ('30', 'dvwa实验', '知识与实例相结合，本部分是HTML5课程的基础内容，主要讲解HTML5的标签结构，与传统的HTML4相比，新增和删去的标签及相关属性，并深入拓展了全局属性的相关知识。', '2', '3', '2018-11-15 11:43:39', '0', 'https://s1.ax1x.com/2018/12/01/FnKQdP.jpg', '测试');
INSERT INTO `course` VALUES ('31', '无线破解之破解原理篇', '无线破解相关介绍 相关原理介绍 涉及到的工具介绍 无线破解场景复现', '3', '0', '2018-11-15 11:44:08', '0', 'https://s1.ax1x.com/2018/12/19/FDZNrQ.jpg', '测试');
INSERT INTO `course` VALUES ('32', '信息安全保障', '随着信息化不断深入，信息安全上升到社会稳定、经济发展、甚至企业存亡和公民权益的地位，成为国家安全重要组成部分。在整个信息安全保障工作中，人是最核心、最活跃因素，信息安全保障工作最终也是通过人来落实的。信息安全事件不断增多，所造成的后果日益严重，信息安全问题不仅企业重视，更得到国家重视。', '1', '3', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnKQdP.jpg', '实验');
INSERT INTO `course` VALUES ('33', '常用办公文件的密码破解与防护', '论文的PDF文件加密不许复制是不是很可恶！千辛万苦下载RAR文件加密不许打开更加生气！老师发的word文档不许打印简直要疯！只想破解所有密码有木有！学完本课程什么密码都不在话下。。', '1', '13', '2018-11-29 13:23:22', '0', 'https://s1.ax1x.com/2018/12/19/FDZ88f.jpg', '实验');
INSERT INTO `course` VALUES ('34', '信息安全保障', '随着信息化不断深入，信息安全上升到社会稳定、经济发展、甚至企业存亡和公民权益的地位，成为国家安全重要组成部分。在整个信息安全保障工作中，人是最核心、最活跃因素，信息安全保障工作最终也是通过人来落实的。信息安全事件不断增多，所造成的后果日益严重，信息安全问题不仅企业重视，更得到国家重视。', '2', '0', '2018-11-15 11:43:39', '0', 'https://s1.ax1x.com/2018/12/01/FnKQdP.jpg', '测试');
INSERT INTO `course` VALUES ('35', '无线破解之破解原理篇', '无线破解相关介绍 相关原理介绍 涉及到的工具介绍 无线破解场景复现', '3', '0', '2018-11-15 11:44:08', '0', 'https://s1.ax1x.com/2018/12/19/FDZNrQ.jpg', '测试');
INSERT INTO `course` VALUES ('36', 'linux实验', '过去一年中假基站、广告短信、诈骗短信、电信诈骗屡屡成为媒体头条和民众关注的话题，在信息安全圈内更是引来诸多议论和吐槽，但鉴于IT背景与通信背景终究隔着行业知识体系的不同而让诸多信息安全爱好者在移动通信安全领域显得一头雾水，甚至充满神秘。过去的2G、现在的3G、未来的4G已逐渐成为互联网发展、信息化生活支撑和代言的趋势下，移动通信安全的重要不言而喻，其长久不为众人所关注的神秘感亦当得以揭开。', '1', '14', '2018-11-29 13:23:22', '0', 'https://s1.ax1x.com/2018/12/01/FnKtMj.png', '实验');
INSERT INTO `course` VALUES ('37', '无线破解之破解原理篇', '无线破解相关介绍 相关原理介绍 涉及到的工具介绍 无线破解场景复现', '1', '1', '2018-11-03 13:23:22', '0', 'https://s1.ax1x.com/2018/12/19/FDZ88f.jpg', '实验');
INSERT INTO `course` VALUES ('38', '信息安全保障', '随着信息化不断深入，信息安全上升到社会稳定、经济发展、甚至企业存亡和公民权益的地位，成为国家安全重要组成部分。在整个信息安全保障工作中，人是最核心、最活跃因素，信息安全保障工作最终也是通过人来落实的。信息安全事件不断增多，所造成的后果日益严重，信息安全问题不仅企业重视，更得到国家重视。', '2', '0', '2018-11-29 11:43:39', '0', 'https://s1.ax1x.com/2018/12/01/FnKtMj.png', '测试');
INSERT INTO `course` VALUES ('39', 'webgoat实验', '过去一年中假基站、广告短信、诈骗短信、电信诈骗屡屡成为媒体头条和民众关注的话题，在信息安全圈内更是引来诸多议论和吐槽，但鉴于IT背景与通信背景终究隔着行业知识体系的不同而让诸多信息安全爱好者在移动通信安全领域显得一头雾水，甚至充满神秘。过去的2G、现在的3G、未来的4G已逐渐成为互联网发展、信息化生活支撑和代言的趋势下，移动通信安全的重要不言而喻，其长久不为众人所关注的神秘感亦当得以揭开。', '3', '0', '2018-11-15 11:44:08', '0', 'https://s1.ax1x.com/2018/12/19/FDZNrQ.jpg', '测试');

-- ----------------------------
-- Table structure for coursetemplete
-- ----------------------------
DROP TABLE IF EXISTS `coursetemplete`;
CREATE TABLE `coursetemplete` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `createtime` date NOT NULL,
  `cdescribe` text,
  `img` varchar(255) DEFAULT NULL,
  `createdby` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursetemplete
-- ----------------------------
INSERT INTO `coursetemplete` VALUES ('1', 'dvwa实验环境', '2018-11-02', ' 第一次课程主要内容是一般SQL注入工具编写。 第二次课程主要内容是延时SQL注入工具编写。 课程由浅入深，从单个语句的编写到工具的编写，让菜鸟瞬间变大咖！', 'https://hexo-blog-chenxuan.oss-cn-beijing.aliyuncs.com/flower.png', 'root');
INSERT INTO `coursetemplete` VALUES ('7', 'webgoat实验环境', '2018-11-04', '论文的PDF文件加密不许复制是不是很可恶！千辛万苦下载RAR文件加密不许打开更加生气！老师发的word文档不许打印简直要疯！只想破解所有密码有木有！学完本课程什么密码都不在话下。', 'https://hexo-blog-chenxuan.oss-cn-beijing.aliyuncs.com/flower.png', 'root');
INSERT INTO `coursetemplete` VALUES ('8', 'linux实验', '2018-11-18', '\r\nMetasploit是一款开源的安全漏洞检测工具，可以帮助安全和IT专业人士识别安全性问题，验证漏洞的缓解措施。通过本节实验，学习使用metasploit进行密码破解。', 'https://hexo-blog-chenxuan.oss-cn-beijing.aliyuncs.com/flower.png', 'root');
INSERT INTO `coursetemplete` VALUES ('9', 'docker入门实验', '2018-11-18', ' 第一次课程主要内容是一般SQL注入工具编写。 第二次课程主要内容是延时SQL注入工具编写。 课程由浅入深，从单个语句的编写到工具的编写，让菜鸟瞬间变大咖！', 'https://hexo-blog-chenxuan.oss-cn-beijing.aliyuncs.com/flower.png', 'root');

-- ----------------------------
-- Table structure for course_templete
-- ----------------------------
DROP TABLE IF EXISTS `course_templete`;
CREATE TABLE `course_templete` (
  `courseId` bigint(20) NOT NULL,
  `templeteId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_templete
-- ----------------------------
INSERT INTO `course_templete` VALUES ('1', '1');
INSERT INTO `course_templete` VALUES ('1', '7');
INSERT INTO `course_templete` VALUES ('2', '8');
INSERT INTO `course_templete` VALUES ('3', '9');
INSERT INTO `course_templete` VALUES ('4', '7');
INSERT INTO `course_templete` VALUES ('4', '8');
INSERT INTO `course_templete` VALUES ('6', '1');
INSERT INTO `course_templete` VALUES ('6', '7');
INSERT INTO `course_templete` VALUES ('24', '1');
INSERT INTO `course_templete` VALUES ('24', '7');
INSERT INTO `course_templete` VALUES ('25', '8');
INSERT INTO `course_templete` VALUES ('26', '9');
INSERT INTO `course_templete` VALUES ('27', '7');
INSERT INTO `course_templete` VALUES ('27', '8');
INSERT INTO `course_templete` VALUES ('28', '1');
INSERT INTO `course_templete` VALUES ('28', '7');
INSERT INTO `course_templete` VALUES ('29', '8');
INSERT INTO `course_templete` VALUES ('30', '9');
INSERT INTO `course_templete` VALUES ('31', '7');
INSERT INTO `course_templete` VALUES ('31', '8');
INSERT INTO `course_templete` VALUES ('32', '1');
INSERT INTO `course_templete` VALUES ('32', '7');
INSERT INTO `course_templete` VALUES ('33', '8');
INSERT INTO `course_templete` VALUES ('34', '9');
INSERT INTO `course_templete` VALUES ('35', '7');
INSERT INTO `course_templete` VALUES ('35', '8');
INSERT INTO `course_templete` VALUES ('36', '1');
INSERT INTO `course_templete` VALUES ('36', '7');
INSERT INTO `course_templete` VALUES ('37', '8');
INSERT INTO `course_templete` VALUES ('38', '9');
INSERT INTO `course_templete` VALUES ('39', '7');
INSERT INTO `course_templete` VALUES ('39', '8');

-- ----------------------------
-- Table structure for experimentlog
-- ----------------------------
DROP TABLE IF EXISTS `experimentlog`;
CREATE TABLE `experimentlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `operatetime` datetime NOT NULL,
  `chapter` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cou_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of experimentlog
-- ----------------------------
INSERT INTO `experimentlog` VALUES ('1', 'linux实验', '2018-12-01 16:47:36', '1', '4', '1');
INSERT INTO `experimentlog` VALUES ('2', 'linux实验', '2018-12-01 16:50:32', '7', '4', '1');
INSERT INTO `experimentlog` VALUES ('3', 'docker入门实验', '2018-12-12 15:41:34', '8', '4', '2');
INSERT INTO `experimentlog` VALUES ('4', 'Kali Linux', '2018-12-05 15:43:24', '9', '4', '3');
INSERT INTO `experimentlog` VALUES ('5', 'docker入门实验', '2018-12-12 15:43:54', '7', '4', '4');
INSERT INTO `experimentlog` VALUES ('6', 'docker入门实验', '2018-12-12 15:44:07', '7', '1', '4');
INSERT INTO `experimentlog` VALUES ('7', 'Kali Linux', '2018-12-12 15:44:20', '9', '4', '26');
INSERT INTO `experimentlog` VALUES ('8', 'linux实验', '2018-12-12 15:44:39', '7', '4', '24');
INSERT INTO `experimentlog` VALUES ('9', 'Kali Linux', '2018-12-12 15:44:55', '9', '4', '30');
INSERT INTO `experimentlog` VALUES ('10', 'linux实验', '2018-12-12 15:45:13', '7', '4', '31');
INSERT INTO `experimentlog` VALUES ('11', 'linux实验', '2018-12-12 15:45:29', '1', '4', '32');
INSERT INTO `experimentlog` VALUES ('12', 'docker入门实验', '2018-12-07 15:45:39', '8', '4', '33');
INSERT INTO `experimentlog` VALUES ('13', 'Kali Linux', '2018-12-09 15:46:03', '9', '4', '34');

-- ----------------------------
-- Table structure for imagelocal
-- ----------------------------
DROP TABLE IF EXISTS `imagelocal`;
CREATE TABLE `imagelocal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iname` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `ports` varchar(50) DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  `idescribe` varchar(255) DEFAULT NULL,
  `imageid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagelocal
-- ----------------------------
INSERT INTO `imagelocal` VALUES ('20', 'whalesay:latest', '276MB', null, '2018-11-01 14:59:17', null, 'df9ed3b6f8614af72fe93ad968a09d90324be222042b3acb1a08de0837ed8e94');
INSERT INTO `imagelocal` VALUES ('21', 'dvwa:latest', '399MB', '[80/tcp]', '2018-10-31 22:29:40', null, '1a3a7bfc91a9247a879a6bfbbc60fefb32a13b8bfe3b3315ef8013cdd0c6570c');
INSERT INTO `imagelocal` VALUES ('22', 'influxdb:latest', '213MB', '[8086/tcp]', '2018-10-18 05:33:32', null, '396b2bd13e144d1575d2a5a03cbe23dc700a63bd183b4e7084a2229d61482e5a');
INSERT INTO `imagelocal` VALUES ('23', 'ubuntu:14.04', '188MB', null, '2018-09-06 06:20:43', null, 'c32fae490809105445a55e73dc76f78f6f91244bd11a05f050ef93e7830a4be1');
INSERT INTO `imagelocal` VALUES ('24', 'grafana/grafana:latest', '245MB', '[3000/tcp]', '2018-07-25 19:37:32', null, '3e16e05be9a3be009700ef7a0b4e53676149337405efb75cea5916b4ce2dfcb4');
INSERT INTO `imagelocal` VALUES ('25', 'webgoat/webgoat-8.0:latest', '299MB', '[8080/tcp]', '2018-06-21 00:32:22', null, 'fe3e14780585cfe287a07d0cbab22d7866b61a7e151f6028bda8674980f1291d');
INSERT INTO `imagelocal` VALUES ('26', 'google/cadvisor:latest', '62MB', '[8080/tcp]', '2017-12-08 01:55:55', null, '75f88e3ec333cbb410297e4f40297ac615e076b4a50aeeae49f287093ff01ab1');
INSERT INTO `imagelocal` VALUES ('27', 'docker/whalesay:latest', '247MB', null, '2015-05-26 06:04:23', null, '6b362a9f73eb8c33b48c95f4fcce1b6637fc25646728cf7fb0679b2da273c3f4');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tmp_id` bigint(20) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `content` text,
  `cname` varchar(255) NOT NULL,
  `tch_id` bigint(20) NOT NULL,
  `cou_id` bigint(20) NOT NULL,
  `sname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cou_id` (`tmp_id`),
  KEY `stu_id` (`stu_id`),
  CONSTRAINT `stu_id` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('1', '1', '1', '80', '2018-11-06 09:19:53', '成绩合格', '实验一 加密认证通信系统实现 \r\n设计实现一个通信系统，双方可以通过消息和文件通信，用户可选择一种加密算法和认证算法，对消息和文件进行加密通信和完整性验证。（要实现认证和加密，工具和语言不限，可以直接调用现有模块，认证和加密不限） \r\n实验二  综合扫描及安全评估 \r\n利用常见的一些扫描工具可以检测本系统及其它系统是否存在漏洞等安全隐患，给出全面而完善的评估报告，帮助管理员发现存在的问题，进而采取有力措施予以弥补，从而提高系统的安全性能。 \r\n实验三  网络攻防技术 \r\n矛与盾的关系告诉我们，在研究网络安全技术时，只着眼于安全防范技术是远远不够的，知己知彼方能百战不殆，因此，很有必要同时研究攻击与防范技术，才能更有效地解决各种威胁。 \r\n实验四  Windows系统安全配置方案 \r\n作为网络节点，操作系统安全成为网络信息安全首先应予考虑的事务，然而人们往往忽视了OS的安全性。其实，OS的安全不只体现在密码口令上，这仅仅是最基本的一个方面。除此之外，服务、端口、共享资源以及各种应用都很有可能存在着安全隐患，因此，应采取相应措施设置完善的本地安全策略，并使用防病毒软件、防火墙软件甚至入侵检测软件来加强系统的安全。 \r\n其中实验一要求编程实现，可直接调用相关功能函数完成。实验二至实验四可在机房的网络信息安全综合实验系统上完成。', 'linux实验', '1', '1', '陈良炫');
INSERT INTO `report` VALUES ('2', '1', '4', '78', '2018-11-06 11:28:44', '内容太少，引用太多', '实验一 加密认证通信系统实现 \r\n设计实现一个通信系统，双方可以通过消息和文件通信，用户可选择一种加密算法和认证算法，对消息和文件进行加密通信和完整性验证。（要实现认证和加密，工具和语言不限，可以直接调用现有模块，认证和加密不限） \r\n实验二  综合扫描及安全评估 \r\n利用常见的一些扫描工具可以检测本系统及其它系统是否存在漏洞等安全隐患，给出全面而完善的评估报告，帮助管理员发现存在的问题，进而采取有力措施予以弥补，从而提高系统的安全性能。 \r\n实验三  网络攻防技术 \r\n矛与盾的关系告诉我们，在研究网络安全技术时，只着眼于安全防范技术是远远不够的，知己知彼方能百战不殆，因此，很有必要同时研究攻击与防范技术，才能更有效地解决各种威胁。 \r\n实验四  Windows系统安全配置方案 \r\n作为网络节点，操作系统安全成为网络信息安全首先应予考虑的事务，然而人们往往忽视了OS的安全性。其实，OS的安全不只体现在密码口令上，这仅仅是最基本的一个方面。除此之外，服务、端口、共享资源以及各种应用都很有可能存在着安全隐患，因此，应采取相应措施设置完善的本地安全策略，并使用防病毒软件、防火墙软件甚至入侵检测软件来加强系统的安全。 \r\n其中实验一要求编程实现，可直接调用相关功能函数完成。实验二至实验四可在机房的网络信息安全综合实验系统上完成。', 'linux实验', '1', '1', '苏培坷');
INSERT INTO `report` VALUES ('3', '7', '4', '92', '2018-11-18 15:51:06', '成绩优秀', '实验一 加密认证通信系统实现 \r\n设计实现一个通信系统，双方可以通过消息和文件通信，用户可选择一种加密算法和认证算法，对消息和文件进行加密通信和完整性验证。（要实现认证和加密，工具和语言不限，可以直接调用现有模块，认证和加密不限） \r\n实验二  综合扫描及安全评估 \r\n利用常见的一些扫描工具可以检测本系统及其它系统是否存在漏洞等安全隐患，给出全面而完善的评估报告，帮助管理员发现存在的问题，进而采取有力措施予以弥补，从而提高系统的安全性能。 \r\n实验三  网络攻防技术 \r\n矛与盾的关系告诉我们，在研究网络安全技术时，只着眼于安全防范技术是远远不够的，知己知彼方能百战不殆，因此，很有必要同时研究攻击与防范技术，才能更有效地解决各种威胁。 \r\n实验四  Windows系统安全配置方案 \r\n作为网络节点，操作系统安全成为网络信息安全首先应予考虑的事务，然而人们往往忽视了OS的安全性。其实，OS的安全不只体现在密码口令上，这仅仅是最基本的一个方面。除此之外，服务、端口、共享资源以及各种应用都很有可能存在着安全隐患，因此，应采取相应措施设置完善的本地安全策略，并使用防病毒软件、防火墙软件甚至入侵检测软件来加强系统的安全。 \r\n其中实验一要求编程实现，可直接调用相关功能函数完成。实验二至实验四可在机房的网络信息安全综合实验系统上完成。', 'CTF新手入门之安全杂项实例讲解', '3', '4', '苏培坷');
INSERT INTO `report` VALUES ('4', '8', '4', '55', '2018-12-12 18:23:51', '成绩不合格', '实验一 加密认证通信系统实现 \r\n设计实现一个通信系统，双方可以通过消息和文件通信，用户可选择一种加密算法和认证算法，对消息和文件进行加密通信和完整性验证。（要实现认证和加密，工具和语言不限，可以直接调用现有模块，认证和加密不限） \r\n实验二  综合扫描及安全评估 \r\n利用常见的一些扫描工具可以检测本系统及其它系统是否存在漏洞等安全隐患，给出全面而完善的评估报告，帮助管理员发现存在的问题，进而采取有力措施予以弥补，从而提高系统的安全性能。 \r\n实验三  网络攻防技术 \r\n矛与盾的关系告诉我们，在研究网络安全技术时，只着眼于安全防范技术是远远不够的，知己知彼方能百战不殆，因此，很有必要同时研究攻击与防范技术，才能更有效地解决各种威胁。 \r\n实验四  Windows系统安全配置方案 \r\n作为网络节点，操作系统安全成为网络信息安全首先应予考虑的事务，然而人们往往忽视了OS的安全性。其实，OS的安全不只体现在密码口令上，这仅仅是最基本的一个方面。除此之外，服务、端口、共享资源以及各种应用都很有可能存在着安全隐患，因此，应采取相应措施设置完善的本地安全策略，并使用防病毒软件、防火墙软件甚至入侵检测软件来加强系统的安全。 \r\n其中实验一要求编程实现，可直接调用相关功能函数完成。实验二至实验四可在机房的网络信息安全综合实验系统上完成。', 'kali之Metasploit密码破解', '1', '2', '苏培坷');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` bigint(20) NOT NULL,
  `college` varchar(50) NOT NULL,
  `classname` varchar(20) NOT NULL,
  `tdescribe` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `jointime` datetime NOT NULL,
  `realname` varchar(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '45', '浙江师范大学行知学院工学分院', '计算机161', '总之岁月漫长，然而值得等待。', '温州', '2018-10-29 15:43:18', '陈良炫', 'https://s1.ax1x.com/2018/12/01/FnYZz6.jpg');
INSERT INTO `student` VALUES ('4', '46', '浙江师范大学行知学院工学分院', '计算机161', '我想正是伸手摘星的精神，让我们很多人长时间地工作奋战。不论到哪，让作品充分表现这个精神，并且驱使我们放弃佳作，只求杰作。 —— 李奥贝纳', '泉州', '2018-10-29 15:43:18', '苏培坷', 'https://s1.ax1x.com/2018/12/01/FnYZz6.jpg');
INSERT INTO `student` VALUES ('5', '47', '浙江师范大学行知学院工学分院', '计算机161', '总之岁月漫长，然而值得等待。', '湖州', '2018-10-29 15:43:18', '陆杰森', 'https://s1.ax1x.com/2018/12/01/FnYZz6.jpg');
INSERT INTO `student` VALUES ('6', '21', '浙江师范大学行知学院工学分院', '计算机161', '总之岁月漫长，然而值得等待。', '杭州', '2018-10-29 15:43:18', '徐海滨', 'https://s1.ax1x.com/2018/12/01/FnYZz6.jpg');
INSERT INTO `student` VALUES ('7', '33', '浙江师范大学行知学院工学分院', '计算机161', '总之岁月漫长，然而值得等待。', '义乌', '2018-10-29 15:43:18', '楼汉东', 'https://s1.ax1x.com/2018/12/01/FnYZz6.jpg');

-- ----------------------------
-- Table structure for stu_cou
-- ----------------------------
DROP TABLE IF EXISTS `stu_cou`;
CREATE TABLE `stu_cou` (
  `stu_id` bigint(20) NOT NULL,
  `cou_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_cou
-- ----------------------------
INSERT INTO `stu_cou` VALUES ('1', '1');
INSERT INTO `stu_cou` VALUES ('1', '2');
INSERT INTO `stu_cou` VALUES ('4', '29');
INSERT INTO `stu_cou` VALUES ('4', '30');

-- ----------------------------
-- Table structure for sys_logininfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfo`;
CREATE TABLE `sys_logininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usertype` int(1) NOT NULL,
  `usercode` bigint(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) DEFAULT NULL,
  `locked` int(1) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_logininfo
-- ----------------------------
INSERT INTO `sys_logininfo` VALUES ('1', '0', '201635560210', '16b8be5f856cdd1e6a13674414e07fc6', 'hDM1Or', '0', '1', 'wzchenxuan', 'https://imgchr.com/i/FJZpkj');
INSERT INTO `sys_logininfo` VALUES ('2', '0', '123', '786a40b59baea8c465cc0061a961d9f4', 'hDM1Or', '0', '4', 'stutest', 'https://imgchr.com/i/FJZpkj');
INSERT INTO `sys_logininfo` VALUES ('3', '1', '123456', '786a40b59baea8c465cc0061a961d9f4', 'hDM1Or', '0', '1', 'tchtest', 'https://imgchr.com/i/FJZpkj');

-- ----------------------------
-- Table structure for sys_permision
-- ----------------------------
DROP TABLE IF EXISTS `sys_permision`;
CREATE TABLE `sys_permision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `precode` varchar(255) DEFAULT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `parentids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permision
-- ----------------------------
INSERT INTO `sys_permision` VALUES ('1', '权限', 'permission', null, '', '0', '0/');
INSERT INTO `sys_permision` VALUES ('2', '课程管理', 'menu', null, null, '1', '0/1/');
INSERT INTO `sys_permision` VALUES ('3', '课程新增', 'permission', null, 'course:create', '11', '0/1/11/');
INSERT INTO `sys_permision` VALUES ('4', '课程删除', 'permission', null, 'course:delete', '11', '0/1/11/');
INSERT INTO `sys_permision` VALUES ('5', '课程更新', 'permission', null, 'course:update', '11', '0/1/11/');
INSERT INTO `sys_permision` VALUES ('6', '查看课程', 'permission', null, 'course:query', '11', '0/1/11/');
INSERT INTO `sys_permision` VALUES ('7', '模板管理', 'menu', null, null, '2', '0/2/');
INSERT INTO `sys_permision` VALUES ('8', '模板新增', 'permission', null, 'templete:create', '21', '0/2/21/');
INSERT INTO `sys_permision` VALUES ('9', '模板删除', 'permission', null, 'templete:delete', '21', '0/2/21/');
INSERT INTO `sys_permision` VALUES ('10', '模板更新', 'permission', null, 'templete:update', '21', '0/2/21/');
INSERT INTO `sys_permision` VALUES ('11', '查看模板', 'permission', null, 'templete:query', '21', '0/2/21/');
INSERT INTO `sys_permision` VALUES ('12', '报告管理', 'menu', null, '', '3', '0/3/');
INSERT INTO `sys_permision` VALUES ('13', '报告新增', 'permission', null, 'report:create', '31', '0/3/31/');
INSERT INTO `sys_permision` VALUES ('14', '报告删除', 'permission', null, 'report:delete', '31', '0/3/31/');
INSERT INTO `sys_permision` VALUES ('15', '报告更新', 'permission', null, 'report:update', '31', '0/3/31/');
INSERT INTO `sys_permision` VALUES ('17', '报告查看', 'permission', null, 'report:query', '31', '0/3/31/');

-- ----------------------------
-- Table structure for sys_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_permission`;
CREATE TABLE `sys_user_permission` (
  `usertype` int(1) DEFAULT NULL,
  `permission` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_permission
-- ----------------------------
INSERT INTO `sys_user_permission` VALUES ('1', '3');
INSERT INTO `sys_user_permission` VALUES ('1', '4');
INSERT INTO `sys_user_permission` VALUES ('1', '5');
INSERT INTO `sys_user_permission` VALUES ('1', '15');
INSERT INTO `sys_user_permission` VALUES ('0', '13');
INSERT INTO `sys_user_permission` VALUES ('0', '14');
INSERT INTO `sys_user_permission` VALUES ('0', '15');
INSERT INTO `sys_user_permission` VALUES ('0', '17');
INSERT INTO `sys_user_permission` VALUES ('1', '17');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) NOT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `jointime` date DEFAULT NULL,
  `qq` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '邓大勇', '17855864560', '7855864560@qq.com', 'https://imgchr.com/i/FJVvnS', '2018-11-02', '17855864560');
INSERT INTO `teacher` VALUES ('2', '叶安心', '17855864560', '7855864560@qq.com', 'https://imgchr.com/i/FJVvnS', '2018-11-15', '17855864560');
INSERT INTO `teacher` VALUES ('3', '叶建栲', '17855864560', '7855864560@qq.com', 'https://imgchr.com/i/FJVvnS', '2018-11-15', '17855864560');

-- ----------------------------
-- Table structure for tmp_img
-- ----------------------------
DROP TABLE IF EXISTS `tmp_img`;
CREATE TABLE `tmp_img` (
  `tmp_id` bigint(20) NOT NULL,
  `img_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmp_img
-- ----------------------------
INSERT INTO `tmp_img` VALUES ('1', '22');
INSERT INTO `tmp_img` VALUES ('1', '21');
INSERT INTO `tmp_img` VALUES ('7', '22');
INSERT INTO `tmp_img` VALUES ('7', '25');
INSERT INTO `tmp_img` VALUES ('8', '23');
INSERT INTO `tmp_img` VALUES ('9', '20');