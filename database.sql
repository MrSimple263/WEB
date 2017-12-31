-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: qlttth
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `IDCLASS` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `IDSUBJECT` int(11) NOT NULL,
  `IDTEACHER` int(11) NOT NULL,
  `TINHTRANG` varchar(2) NOT NULL,
  PRIMARY KEY (`IDCLASS`),
  KEY `FK_IDSUBJECT_SUBJECT_idx` (`IDSUBJECT`),
  KEY `FK_IDTEACHER_USERS_idx` (`IDTEACHER`),
  CONSTRAINT `FK_IDSUBJECT_SUBJECT` FOREIGN KEY (`IDSUBJECT`) REFERENCES `subject` (`IDSUBJECT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_IDTEACHER_USERS` FOREIGN KEY (`IDTEACHER`) REFERENCES `users` (`IDUSERS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'CLASS_1',7,7,'1'),(2,'CLASS_2',11,6,'1'),(3,'CLASS_3',10,6,'1'),(4,'CLASS_4',14,7,'1'),(5,'CLASS_5',14,7,'1');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `IDDOCUMENT` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` tinytext,
  `LINK` text NOT NULL,
  `IDCLASS` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDDOCUMENT`),
  KEY `class_doc_idx` (`IDCLASS`),
  CONSTRAINT `class_doc` FOREIGN KEY (`IDCLASS`) REFERENCES `class` (`IDCLASS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (2,'Tài Liệu Lập Trình JAVA','http://www.tutorialspoint.com/java/java_tutorial.pdf',1),(3,'Java Core','http://www.cs.columbia.edu/~lok/3101/lectures/02-corejava.pdf',1);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_subject`
--

DROP TABLE IF EXISTS `group_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_subject` (
  `IDGROUP` int(11) NOT NULL AUTO_INCREMENT,
  `NAMEGROUP` varchar(45) NOT NULL,
  `IMG` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDGROUP`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_subject`
--

LOCK TABLES `group_subject` WRITE;
/*!40000 ALTER TABLE `group_subject` DISABLE KEYS */;
INSERT INTO `group_subject` VALUES (3,'Lập Trình C#','Csharp.png'),(9,'Lập Trình PHP','1200px-PHP-logo.svg.png'),(11,'Lập Trình Java','Java.png');
/*!40000 ALTER TABLE `group_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `IDNEWS` int(11) NOT NULL AUTO_INCREMENT,
  `TITILE` tinytext NOT NULL,
  `DESCRIPTION` tinytext NOT NULL,
  `CONTENT` mediumtext NOT NULL,
  `IMG` text,
  `DATE` date DEFAULT NULL,
  PRIMARY KEY (`IDNEWS`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (6,'Thông báo học viên nghỉ Quốc khánh 2-9','Kính chào Quý thầy cô và các bạn học viên đang Trung tâm tin học.','<p>K&iacute;nh ch&agrave;o Qu&yacute; thầy c&ocirc; v&agrave; c&aacute;c bạn học vi&ecirc;n đang Trung t&acirc;m tin học.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để Qu&yacute; thầy c&ocirc; v&agrave; c&aacute;c bạn học vi&ecirc;n c&oacute; thể sắp xếp cong việc trong thời gian sắp tới. Trung t&acirc;m xin th&ocirc;ng b&aacute;o lịch nghỉ lễ như sau:</p>\r\n\r\n<ul>\r\n	<li>C&aacute;c lớp học sữ nghỉ lể: từ thứ 6 ng&agrave;y 1/9 đến hết thứ 2 ng&agrave;y 4/9/2017</li>\r\n	<li>Trung t&acirc;m bắt đầu l&agrave;m việc lại l&uacute;c 7h30-thứ 3 ng&agrave;y 5/9/2017</li>\r\n</ul>\r\n\r\n<p>Đặc biệt, bộ phận tư vấn ghi danh sẽ vẫn l&agrave;m việc v&agrave;o 2 ng&agrave;y 1/9 v&agrave; 4/9 để nhằm hỗ trợ tốt nhất cho c&aacute;c bạn Học vi&ecirc;n muốn t&igrave;m hiểu về c&aacute;c kh&oacute;a khai giảng ng&agrave;y 8/9 sắp tới.</p>\r\n\r\n<p>&nbsp;</p>\r\n','tb-280.png','2017-12-30'),(7,'Thông báo nghỉ tết dương lịch 2018','Trung tâm thông báo kế hoạch nghỉ lể','<p>K&iacute;nh ch&agrave;o Qu&yacute; thầy c&ocirc; v&agrave; to&agrave;n thể c&aacute;c bạn học vi&ecirc;n tại trung t&acirc;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để Qu&yacute; thầy c&ocirc; v&agrave; c&aacute;c bạn c&oacute; thể chủ động sắp xếp c&ocirc;ng việc trong thời gian sắp tới, Trung t&acirc;m xin th&ocirc;ng b&aacute;o lịch nghỉ tết dương lịch 2018 như sau:</p>\r\n\r\n<ul>\r\n	<li>C&aacute;c lớp học sẽ nghỉ lễ: từ thứ 7&nbsp;ng&agrave;y 30/12 đến hết thứ 2 ng&agrave;y 1/1/2017</li>\r\n	<li>Trung t&acirc;m bắt đầu l&agrave;m việc lại v&agrave;o l&uacute;c 7h30- thứ 3 ng&agrave;y 2/1/2017</li>\r\n</ul>\r\n','tet-tay-280.png','2017-12-30'),(8,'Thông báo lịch khai giảng các khóa học hè 2017-28/7/2017','Trung tâm thông báo lịch học hè','<p>Ngyaf 28/7/2017, Trung t&acirc;m tin học tổng khai giảng c&aacute;c kh&oacute;a học lạp tr&igrave;nh vi&ecirc;n, k&yacute; thuật vi&ecirc;n v&agrave; c&aacute;c lớp chuy&ecirc;n đề với lịch học s&aacute;ng - chiều - tối v&agrave; cuối tuần để c&aacute;c bạn chọn lịch học ph&ugrave; hợp với m&igrave;nh nhất:</p>\r\n\r\n<ul>\r\n	<li>Tin học văn ph&ograve;ng: Ứng dụng c&ocirc;ng ngh&ecirc; th&ocirc;ng tin cơ bản - n&acirc;ng cao, c&aacute;c lớp luyện thi.&nbsp;</li>\r\n	<li>Tin học quốc tế MOS&nbsp;</li>\r\n	<li>Đồ họa, thiết kế web, 3D Phim&nbsp;</li>\r\n	<li>Lập&nbsp;tr&igrave;nh ứng dụng, di động, cơ sở dữ liệu&nbsp;</li>\r\n	<li>Kiếm thử phần mềm</li>\r\n	<li>Mạng m&aacute;y t&iacute;nh</li>\r\n	<li>Internet Marketing</li>\r\n</ul>\r\n\r\n<p>Ưu đ&atilde;i học ph&iacute; l&ecirc;n đến 20% khi bạn đăng k&yacute; c&aacute;c kh&oacute;a học h&egrave; n&agrave;y tại Trung t&acirc;m, để nhận ưu đ&atilde;i hấp dẫn, bạn nhớ đăng k&yacute; online v&agrave; ho&agrave;n tất học ph&iacute; đến hết ng&agrave;y 26/7/2017</p>\r\n','trung-tam-tin-hoc-tong-khai-giang-cac-khoa-he (1).png','2017-12-30'),(9,'Thư cảm ơn thầy cô ngày lễ nhà giáo Việt Nam 20-11','Kính gửi Quý thầy cô đang giảng dạy tại trung tâm','<p>K&iacute;nh gửi Qu&yacute; thầy c&ocirc; đang giảng dạy tại trung t&acirc;m, nh&acirc;n ng&agrave;y 20-11 xin gửi đến Qu&yacute; thầy c&ocirc; lời cảm ơn ch&acirc;n th&agrave;nh nhất đến Qu&yacute; thầy c&ocirc; đ&atilde; giảng dạy nhiệt t&igrave;nh tại trung t&acirc;m. V&agrave; đồng thời gửi đến lời ch&uacute;c sức khỏe, vui vẻ trong ng&agrave;y n&agrave;y d&agrave;nh đến cho tất cả thầy c&ocirc; tại trung t&acirc;m.</p>\r\n','thu-cam-on-20-11-small.jpg','2017-12-30'),(10,'Thông báo khẩn nghỉ tránh bão','Kính gửi Quý thầy cô và học viên tại trung tâm','<p>K&iacute;nh gủi Qu&yacute; thầy c&ocirc; đang giảng dạy tại trung t&acirc;m v&agrave; c&aacute;c bạn học viện. Cơn b&atilde;o Tembin đổ bộ v&agrave;o T&acirc;y Nam Bộ. Đẻ đảm bảo an to&agrave;n cho qu&yacute; thầy c&ocirc; v&agrave; c&aacute;c bạn học vi&ecirc;n, trung t&acirc;m ch&uacute;ng ta sẽ nghỉ&nbsp; tr&aacute;nh b&atilde;o. Lịch nghỉ tr&aacute;nh b&atilde;o</p>\r\n\r\n<ul>\r\n	<li>Từ 12H thứ 2 ng&agrave;y 25/12 đến hết thứ 3 ng&agrave;y 26/12</li>\r\n</ul>\r\n\r\n<p>Trung t&acirc;m sẽ hoạt động lại b&igrave;nh thường v&agrave;o s&aacute;ng 7h30 thứ 4 ng&agrave;y 27/12</p>\r\n','nghi-tranh-bao-280 (1).png','2017-12-30');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `IDROLE` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`IDROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'TEACHER'),(3,'STUDENT');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class`
--

DROP TABLE IF EXISTS `student_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_class` (
  `IDSTUDENT` int(11) NOT NULL,
  `IDCLASS` int(11) NOT NULL,
  PRIMARY KEY (`IDSTUDENT`,`IDCLASS`),
  KEY `FK_IDCLASS_idx` (`IDCLASS`),
  CONSTRAINT `FK_IDCLASS` FOREIGN KEY (`IDCLASS`) REFERENCES `class` (`IDCLASS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_IDSTUDENT_USER` FOREIGN KEY (`IDSTUDENT`) REFERENCES `users` (`IDUSERS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class`
--

LOCK TABLES `student_class` WRITE;
/*!40000 ALTER TABLE `student_class` DISABLE KEYS */;
INSERT INTO `student_class` VALUES (2,1),(3,1),(2,2),(2,3),(7,3);
/*!40000 ALTER TABLE `student_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `IDSUBJECT` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `IMG` varchar(250) NOT NULL,
  `IDGROUP` int(11) DEFAULT NULL,
  `infor` text,
  PRIMARY KEY (`IDSUBJECT`),
  KEY `FK_SUBJECT_GROUP_idx` (`IDGROUP`),
  CONSTRAINT `FK_SUBJECT_GROUP` FOREIGN KEY (`IDGROUP`) REFERENCES `group_subject` (`IDGROUP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (7,'java cơ bản','Java.png',NULL,'<p>This is my textarea to be replaced with CKEditor.</p>'),(8,'Winform cơ bản','CStyle-feature-2.png',3,'<p><strong>Lập tr&igrave;nh vi&ecirc;n n&acirc;ng cao .Net</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>.Net</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n .Net</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>.Net</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong></li>\r\n</ul>'),(10,'PHP cơ bản','1200px-PHP-logo.svg.png',9,'<p><strong>Lập tr&igrave;nh vi&ecirc;n n&acirc;ng cao PHP</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>PHP</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n PHP</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>PHP</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong></li>\r\n</ul>'),(11,'Csharp nâng cao','images.png',3,'<p><strong>Lập tr&igrave;nh vi&ecirc;n n&acirc;ng cao C#</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>C#</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n C#</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>C#</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong></li>\r\n</ul>'),(12,'Java nâng cao','javanc.jpg',NULL,'<p>This is my textarea to be replaced with CKEditor.</p>'),(13,'PHP nâng cao','Adv-PHP.png',9,'<p><strong>Lập tr&igrave;nh vi&ecirc;n n&acirc;ng cao PHP</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>PHP</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n PHP</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>PHP</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong></li>\r\n</ul>'),(14,'Android cơ bản với java','android.jpg',NULL,'<p>This is my textarea to be replaced with CKEditor.</p>'),(15,'.Net cơ bản','net.png',3,'<p><strong>Lập tr&igrave;nh vi&ecirc;n cơ bản #C</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>#C</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n #C</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>#C</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong></li>\r\n</ul>'),(16,'PHP với MySQL','phpsql.png',9,'<p><strong>Lập tr&igrave;nh vi&ecirc;n n&acirc;ng cao PHP</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>PHP</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n PHP</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>PHP</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong></li>\r\n</ul>'),(17,'Java Cơ Bản','Java.png',11,'<p><strong>Lập tr&igrave;nh vi&ecirc;n cơ bản JAVA&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ Java</li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n Java</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ nhận được g&igrave; qua kh&oacute;a học?&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng th&agrave;nh thạo c&aacute;c c&ocirc;ng cụ để tiến h&agrave;nh viết chương tr&igrave;nh</li>\r\n	<li>Viết những chương tr&igrave;nh cơ bản, n&acirc;ng cao</li>\r\n	<li>Hiểu r&otilde; những phương thức để l&agrave;m việc</li>\r\n	<li>Hỗ trợ c&aacute;c bạn một c&aacute;ch tốt nhất để c&aacute;c bạn đi l&agrave;m thật tốt</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong Java</li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p>Biểu thức ch&iacute;nh quy</p>'),(18,'Java nâng cao','javanc.jpg',11,'<p><strong>Lập tr&igrave;nh vi&ecirc;n n&acirc;ng cao JAVA&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ Java</li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n Java</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong Java</li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>\r\n\r\n<p><strong>Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c nhau</strong></li>\r\n	<li><strong>Nắm vững v&agrave; vận dụng c&aacute;c kiến thức về lập tr&igrave;nh hướng đối tượng như Object, Class ...trong việc x&acirc;y dựng v&agrave; ph&aacute;t triển ứng dụng</strong></li>\r\n	<li><strong>&Aacute;p dụng Design Pattem khi thiết kế cấu tr&uacute;c ứng dụng</strong></li>\r\n	<li><strong>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập tin text,XML, CSDL</strong></li>\r\n	<li><strong>Ph&aacute;t triển ứng dụng Web với J2EE, JSP, Servlet theo m&ocirc; h&igrave;nh MVC</strong></li>\r\n	<li><strong>X&acirc;y dựng Web Service d&ugrave;ng RESt API</strong></li>\r\n	<li><strong>Ph&aacute;t tiển ứng dụng web với Spring framework</strong></li>\r\n	<li><strong>Sử dụng server Tomcat</strong>​​​​​​​</li>\r\n</ul>'),(19,'Lập trình Android','android.jpg',11,'<p><strong>Lập tr&igrave;nh vi&ecirc;n cơ bản Android</strong></p>\r\n\r\n<ul>\r\n	<li>Cung cấp cho học vi&ecirc;n những kiến thức nền tảng về lập tr&igrave;nh với ng&ocirc;n ngữ <strong>Android</strong></li>\r\n	<li>R&egrave;n luy&ecirc;n c&aacute;c kỹ năng lập tr&igrave;nh cơ bản&nbsp;</li>\r\n	<li>Tạo bước khởi đầu vững chắc cho học vi&ecirc;n tham gia kh&oacute;a học <strong>Lập&nbsp;tr&igrave;nh vi&ecirc;n Android</strong></li>\r\n</ul>\r\n\r\n<p><strong>Sẽ rất hữu &iacute;ch nếu bạn l&agrave;:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Học sinh, sinh vi&ecirc;n, người đ&atilde; đi l&agrave;m ... y&ecirc;u th&iacute;ch CNTT đ&atilde; c&oacute; kiến thức cơ bản về Tin học văn ph&ograve;ng b&agrave; sử dụng Internet</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ nhận được g&igrave; qua kh&oacute;a học?&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Sử dụng th&agrave;nh thạo c&aacute;c c&ocirc;ng cụ để tiến h&agrave;nh viết chương tr&igrave;nh</li>\r\n	<li>Viết những chương tr&igrave;nh cơ bản, n&acirc;ng cao</li>\r\n	<li>Hiểu r&otilde; những phương thức để l&agrave;m việc</li>\r\n	<li>Hỗ trợ c&aacute;c bạn một c&aacute;ch tốt nhất để c&aacute;c bạn đi l&agrave;m thật tốt</li>\r\n</ul>\r\n\r\n<p><strong>Bạn sẽ học được những g&igrave;?</strong></p>\r\n\r\n<ul>\r\n	<li>Giới thiệu ứng dụng Java</li>\r\n	<li>M&ocirc;i trường ph&aacute;t triền ứng dụng</li>\r\n	<li>X&acirc;y dựng ứng dụng đầu ti&ecirc;n</li>\r\n	<li>Biết về Console trong <strong>Android</strong></li>\r\n	<li>Về Giao diện</li>\r\n	<li>Từ kh&oacute;a v&agrave; to&aacute;n tử</li>\r\n	<li>Cấu tr&uacute;c điều khiển</li>\r\n	<li>Cấu tr&uacute;c lặp</li>\r\n	<li>Sử dụng thư viện&nbsp;</li>\r\n	<li>X&acirc;y dựng phương thức</li>\r\n</ul>');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `IDUSERS` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `FULLNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `PHONE` varchar(50) NOT NULL,
  `EMAIL` varchar(45) DEFAULT NULL,
  `ROLE` int(11) NOT NULL,
  `IMG` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IDUSERS`),
  UNIQUE KEY `USERNAME_UNIQUE` (`USERNAME`),
  KEY `FK_USER_ROLE_idx` (`ROLE`),
  CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`ROLE`) REFERENCES `role` (`IDROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'minh123','12345678','Trần Quang Minh','Quận 7','01632458816','quangminhtran26@gmail.com',1,'Csharp.png'),(2,'phat123','nhim113','Nhất thành ','22/23/2 đường 27, Quận thủ đức','0121212124','tanphat@gmail.com',3,'tải xuống.jpg'),(3,'thanh123','12345678','Phạm Thành','Thủ Đức','65665121321','thanh@gmail.com',3,'1'),(4,'nguyen123','56562333','Nguyễn Nguyên','Quận 5','55123132155','nguyen@gmail.com',3,NULL),(5,'hoa123','12345678','Nguyễn Hoa','Quận 4','22313216551','hoa@gmail.com',3,NULL),(6,'dung123','12345678','Trần Dũng','Quận 1','12345678','dũng@gmail.com',2,'android.jpg'),(7,'Nga','12345678','Nguyễn Thị Nga','Quận 8','2361515611','nag@gmail.com',2,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `IDVIDEO` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` tinytext,
  `LINK` text NOT NULL,
  `IDCLASS` int(11) DEFAULT NULL,
  `NAME` varchar(45) NOT NULL,
  PRIMARY KEY (`IDVIDEO`),
  KEY `class_vid_idx` (`IDCLASS`),
  CONSTRAINT `class_vid` FOREIGN KEY (`IDCLASS`) REFERENCES `class` (`IDCLASS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Bài này các em làm quen về các biến cơ bản trong java','https://www.youtube.com/embed/dokzNTIWHzs',1,'Bài 1:Làm Quen với Java'),(2,'Bài này chúng ta làm quen với các hàm trong java','https://www.youtube.com/embed/1BwgZZya2mw',1,'Bài 2:Java và hàm'),(3,'làm quen với khái niệm class cũng như các tính chất cơ bản của class','https://www.youtube.com/embed/NmzvGHBUAGQ',1,'Bài 3:Class trong java');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qlttth'
--
/*!50003 DROP FUNCTION IF EXISTS `checklogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `checklogin`(name varchar(30),pass varchar(30)) RETURNS int(11)
BEGIN
declare result int;
declare id int default 0;
select count(*) into result from users where USERNAME=name and PASSWORD=pass ;
if result =1  then 
select IDUSERS into id from users where USERNAME=name and PASSWORD=pass;
return id;
end if;
return -1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classadd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classadd`(name varchar(45),idsub int,idtea int)
BEGIN
insert class(NAME,IDSUBJECT,IDTEACHER,TINHTRANG) VALUES(name,idsub,idtea,'1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classdell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classdell`(id int)
BEGIN
	delete from student_class where IDCLASS=id;
    delete from document where IDCLASS=id;
    delete from video where IDCLASS=id;
    delete from class where IDCLASS=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `classselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `classselect`()
BEGIN
select class.IDCLASS,class.NAME,class.IDSUBJECT,class.IDTEACHER,users.FULLNAME
from class inner join users on class.IDTEACHER=users.IDUSERS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletegroup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletegroup`(in id int)
BEGIN
	update subject set IDGROUP=null
    where IDGROUP=id;
    delete from group_subject where IDGROUP=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `groupupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `groupupdate`(id int,
								namegroup nvarchar(45),
                                img nvarchar(45))
BEGIN
if(img is null) then
	update group_subject set NAMEGROUP=namegroup where IDGROUP=id ;
else
	update group_subject set NAMEGROUP=namegroup,IMG=img where IDGROUP=id;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hocsinhcotronglop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hocsinhcotronglop`(id int)
BEGIN
	select users.IDUSERS,USERNAME,FULLNAME
    from users inner join student_class on users.IDUSERS=student_class.IDSTUDENT
    where student_class.IDCLASS=id and users.role=3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hocsinhkocotronglop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hocsinhkocotronglop`(id int)
BEGIN
select users.IDUSERS,USERNAME,FULLNAME
from users
where users.IDUSERS not in(
					select users.IDUSERS
					from users inner join student_class on users.IDUSERS=student_class.IDSTUDENT
					where student_class.IDCLASS=id) and users.role=3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lopdangday` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lopdangday`(id int)
BEGIN
	select class.IDCLASS,class.NAME,subject.NAME
    from class 
    inner join
    users 
    on class.IDTEACHER=users.IDUSERS
    inner join
    subject
    on subject.IDSUBJECT=class.IDSUBJECT
    where users.IDUSERS=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lopdanghoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lopdanghoc`(id int)
BEGIN
select class.IDCLASS,class.NAME,subject.NAME
from 
(student_class 
inner join 
users 
on users.IDUSERS=student_class.IDSTUDENT)
inner join
class
on
student_class.IDCLASS=class.IDCLASS
inner join 
subject
on
class.IDSUBJECT=subject.IDSUBJECT
where users.IDUSERS=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newsinsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newsinsert`(title tinytext,des tinytext,content mediumtext,img text)
BEGIN
	insert into news(TITILE,DESCRIPTION,CONTENT,IMG,DATE) values(title,des,content,img,date(now()));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `newsupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `newsupdate`(id int,til tinytext,des tinytext,con mediumtext,img text)
BEGIN
	if(img is null) then
		update news set TITILE=til,DESCRIPTION=des,CONTENT=con,DATE=now()
        where IDNEWS=id;
	else 
		update news set TITILE=til,DESCRIPTION=des,CONTENT=con,IMG=img,DATE=now()
		where IDNEWS=id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `subjectdell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `subjectdell`(id int)
BEGIN
	delete from class where class.IDSUBJECT=id;
    delete from subject where subject.IDSUBJECT=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `subjectinsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `subjectinsert`(name nvarchar(45),
													img varchar(250),
													idgroup int,
													infor text)
BEGIN
        insert into subject(NAME,IMG,IDGROUP,infor) values(name,img,idgroup,infor);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `subjectselect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `subjectselect`()
BEGIN
	select IDSUBJECT,NAME,NAMEGROUP
    from subject inner join group_subject
    on subject.IDGROUP=group_subject.IDGROUP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `subjectupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `subjectupdate`(id int,name varchar(45),
									img varchar(250),idgroup int,infor text)
BEGIN
	if(img is null) then
		update subject set NAME=name,IDGROUP=idgroup,INFOR=infor
    WHERE IDSUBJECT=id;
	else 
		update subject set NAME=name,IMG=img,IDGROUP=idgroup,INFOR=infor
    WHERE IDSUBJECT=id;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userdell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userdell`(id int)
BEGIN
delete from student_class where IDSTUDENT=id;
delete from class where IDTEACHER=id;
delete from users where IDUSERS=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userinsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userinsert`(username varchar(30),pass varchar(30),
								name varchar(50),ad varchar(100),phone varchar(50),
                                email varchar(45),role int,img varchar(250))
BEGIN
	insert into users(USERNAME,PASSWORD,FULLNAME,ADDRESS,PHONE,EMAIL,ROLE,IMG)
    VALUES (username,pass,name,ad,phone,email,role,img);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userupdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userupdate`(id int,username varchar(30),
								pass varchar(30),fullname varchar(50),
								address varchar(100),phone varchar(50),
                                email varchar(45),role int,img varchar(250))
BEGIN
if(img is null) then
	update users set USERNAME=username,PASSWORD=pass,FULLNAME=fullname,ADDRESS=address,
					PHONE=phone,EMAIL=email,ROLE=role where IDUSERS=id;
else
	update users set USERNAME=username,PASSWORD=pass,FULLNAME=fullname,ADDRESS=address,
					PHONE=phone,EMAIL=email,ROLE=role,IMG=img where IDUSERS=id;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-31 16:03:22
