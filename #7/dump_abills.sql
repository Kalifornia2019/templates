-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: abills
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `admin_actions`
--

DROP TABLE IF EXISTS `admin_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_actions` (
  `actions` varchar(100) NOT NULL DEFAULT '',
  `datetime` datetime NOT NULL,
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(10) NOT NULL DEFAULT '',
  `action_type` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Users changes log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_actions`
--

LOCK TABLES `admin_actions` WRITE;
/*!40000 ALTER TABLE `admin_actions` DISABLE KEYS */;
INSERT INTO `admin_actions` VALUES ('LOGIN:test','2009-08-03 11:42:53',1534854767,1,1,1,'',7),('BILL_ID ->1;','2009-08-03 11:42:53',1534854767,1,1,2,'',2),('PASSWORD *->*;','2009-08-03 11:42:53',1534854767,1,1,3,'',2),('ADD PI','2009-08-03 11:42:53',1534854767,1,1,4,'',0),('ACTIVE','2009-08-03 11:42:53',1534854767,1,1,5,'Internet',1),('LOGIN:test1, REDUCTION:, REDUCTION_DATE:, CREDIT:, CREDIT_DATE:, GID:, COMPANY_ID:1','2019-10-30 06:52:15',3232235623,3,1,6,'',7),('BILL_ID 0->4','2019-10-30 06:52:15',3232235623,3,1,7,'',2),('PI','2019-10-30 06:52:15',3232235623,3,1,8,'',1);
/*!40000 ALTER TABLE `admin_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permits`
--

DROP TABLE IF EXISTS `admin_permits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permits` (
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `section` smallint(6) unsigned NOT NULL DEFAULT '0',
  `actions` smallint(6) unsigned NOT NULL DEFAULT '0',
  `module` varchar(12) NOT NULL DEFAULT '',
  UNIQUE KEY `aid_modules` (`aid`,`module`,`section`,`actions`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin permissions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permits`
--

LOCK TABLES `admin_permits` WRITE;
/*!40000 ALTER TABLE `admin_permits` DISABLE KEYS */;
INSERT INTO `admin_permits` VALUES (1,0,0,''),(1,0,1,''),(1,0,2,''),(1,0,3,''),(1,0,4,''),(1,0,5,''),(1,0,6,''),(1,0,7,''),(1,0,8,''),(1,0,9,''),(1,0,10,''),(1,0,11,''),(1,0,12,''),(1,0,13,''),(1,0,14,''),(1,0,16,''),(1,0,17,''),(1,0,18,''),(1,0,19,''),(1,0,28,''),(1,0,29,''),(1,0,30,''),(1,1,0,''),(1,1,1,''),(1,1,2,''),(1,1,3,''),(1,2,0,''),(1,2,1,''),(1,2,2,''),(1,2,3,''),(1,3,0,''),(1,3,1,''),(1,3,2,''),(1,3,3,''),(1,3,6,''),(1,3,7,''),(1,4,0,''),(1,4,1,''),(1,4,2,''),(1,4,3,''),(1,4,4,''),(1,5,0,''),(1,5,1,''),(1,5,2,''),(1,6,0,''),(1,7,0,''),(1,8,0,'');
/*!40000 ALTER TABLE `admin_permits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_settings`
--

DROP TABLE IF EXISTS `admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_settings` (
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `object` varchar(128) NOT NULL DEFAULT '',
  `setting` text NOT NULL,
  PRIMARY KEY (`aid`,`object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admins settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_settings`
--

LOCK TABLES `admin_settings` WRITE;
/*!40000 ALTER TABLE `admin_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_slides`
--

DROP TABLE IF EXISTS `admin_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_slides` (
  `slide_name` varchar(30) NOT NULL DEFAULT '',
  `field_id` varchar(30) NOT NULL DEFAULT '',
  `field_warning` varchar(130) NOT NULL DEFAULT '',
  `field_comments` varchar(200) NOT NULL DEFAULT '',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `size` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `aid` (`aid`,`slide_name`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin slides';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_slides`
--

LOCK TABLES `admin_slides` WRITE;
/*!40000 ALTER TABLE `admin_slides` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_system_actions`
--

DROP TABLE IF EXISTS `admin_system_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_system_actions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `actions` varchar(200) NOT NULL DEFAULT '',
  `datetime` datetime NOT NULL,
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `module` varchar(10) NOT NULL DEFAULT '',
  `action_type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='System Changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_system_actions`
--

LOCK TABLES `admin_system_actions` WRITE;
/*!40000 ALTER TABLE `admin_system_actions` DISABLE KEYS */;
INSERT INTO `admin_system_actions` VALUES (1,'NAS_ID:1 NAS_AUTH_TYPE 0->1;IP 2130706433->127.0.0.1;NAS_MNG_IP_PORT 127.0.0.1:3799:5005->127.0.0.1:3799:5005:','2019-10-30 06:43:20',3232235623,1,'',2),(4,'NAS_ID:1 NAS_AUTH_TYPE 1->0;IP 2130706433->127.0.0.1','2019-10-30 07:04:16',3232235623,1,'',2);
/*!40000 ALTER TABLE `admin_system_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_type_permits`
--

DROP TABLE IF EXISTS `admin_type_permits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_type_permits` (
  `type` varchar(60) NOT NULL DEFAULT '',
  `section` smallint(6) unsigned NOT NULL DEFAULT '0',
  `actions` smallint(6) unsigned NOT NULL DEFAULT '0',
  `module` varchar(12) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin type permits';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_type_permits`
--

LOCK TABLES `admin_type_permits` WRITE;
/*!40000 ALTER TABLE `admin_type_permits` DISABLE KEYS */;
INSERT INTO `admin_type_permits` VALUES ('$lang{ALL} $lang{PERMISSION}',0,0,''),('$lang{ALL} $lang{PERMISSION}',0,1,''),('$lang{ALL} $lang{PERMISSION}',0,2,''),('$lang{ALL} $lang{PERMISSION}',0,3,''),('$lang{ALL} $lang{PERMISSION}',0,4,''),('$lang{ALL} $lang{PERMISSION}',0,5,''),('$lang{ALL} $lang{PERMISSION}',0,6,''),('$lang{ALL} $lang{PERMISSION}',0,7,''),('$lang{ALL} $lang{PERMISSION}',0,8,''),('$lang{ALL} $lang{PERMISSION}',0,9,''),('$lang{ALL} $lang{PERMISSION}',0,10,''),('$lang{ALL} $lang{PERMISSION}',0,11,''),('$lang{ALL} $lang{PERMISSION}',0,12,''),('$lang{ALL} $lang{PERMISSION}',0,13,''),('$lang{ALL} $lang{PERMISSION}',0,14,''),('$lang{ALL} $lang{PERMISSION}',0,16,''),('$lang{ALL} $lang{PERMISSION}',0,17,''),('$lang{ALL} $lang{PERMISSION}',0,18,''),('$lang{ALL} $lang{PERMISSION}',0,28,''),('$lang{ALL} $lang{PERMISSION}',0,29,''),('$lang{ALL} $lang{PERMISSION}',0,30,''),('$lang{ALL} $lang{PERMISSION}',1,0,''),('$lang{ALL} $lang{PERMISSION}',1,1,''),('$lang{ALL} $lang{PERMISSION}',1,2,''),('$lang{ALL} $lang{PERMISSION}',1,3,''),('$lang{ALL} $lang{PERMISSION}',1,4,''),('$lang{ALL} $lang{PERMISSION}',2,0,''),('$lang{ALL} $lang{PERMISSION}',2,1,''),('$lang{ALL} $lang{PERMISSION}',2,2,''),('$lang{ALL} $lang{PERMISSION}',2,3,''),('$lang{ALL} $lang{PERMISSION}',3,0,''),('$lang{ALL} $lang{PERMISSION}',3,1,''),('$lang{ALL} $lang{PERMISSION}',3,2,''),('$lang{ALL} $lang{PERMISSION}',3,3,''),('$lang{ALL} $lang{PERMISSION}',3,6,''),('$lang{ALL} $lang{PERMISSION}',3,7,''),('$lang{ALL} $lang{PERMISSION}',4,0,''),('$lang{ALL} $lang{PERMISSION}',4,1,''),('$lang{ALL} $lang{PERMISSION}',4,2,''),('$lang{ALL} $lang{PERMISSION}',4,3,''),('$lang{ALL} $lang{PERMISSION}',4,4,''),('$lang{ALL} $lang{PERMISSION}',4,5,''),('$lang{ALL} $lang{PERMISSION}',4,6,''),('$lang{ALL} $lang{PERMISSION}',5,0,''),('$lang{ALL} $lang{PERMISSION}',5,1,''),('$lang{ALL} $lang{PERMISSION}',5,2,''),('$lang{ALL} $lang{PERMISSION}',6,0,''),('$lang{ALL} $lang{PERMISSION}',7,0,''),('$lang{ALL} $lang{PERMISSION}',8,0,''),('$lang{MANAGER}',0,0,''),('$lang{MANAGER}',0,1,''),('$lang{MANAGER}',0,2,''),('$lang{MANAGER}',0,3,''),('$lang{MANAGER}',0,4,''),('$lang{MANAGER}',0,5,''),('$lang{MANAGER}',0,6,''),('$lang{MANAGER}',0,7,''),('$lang{MANAGER}',0,8,''),('$lang{MANAGER}',0,9,''),('$lang{MANAGER}',0,10,''),('$lang{MANAGER}',0,11,''),('$lang{MANAGER}',1,0,''),('$lang{MANAGER}',1,1,''),('$lang{MANAGER}',2,0,''),('$lang{MANAGER}',2,1,''),('$lang{MANAGER}',5,0,''),('$lang{MANAGER}',5,1,''),('$lang{MANAGER}',6,0,''),('$lang{MANAGER}',7,0,''),('$lang{MANAGER}',8,0,''),('$lang{SUPPORT}',0,0,'Msgs'),('$lang{SUPPORT}',0,2,'Maps'),('$lang{SUPPORT}',5,0,'Snmputils'),('$lang{SUPPORT}',5,1,'Notepad'),('$lang{SUPPORT}',6,0,''),('$lang{SUPPORT}',7,0,''),('$lang{SUPPORT}',8,0,''),('$lang{ACCOUNTANT}',0,0,'Docs'),('$lang{ACCOUNTANT}',0,2,'Paysys'),('$lang{ACCOUNTANT}',1,0,'Cards'),('$lang{ACCOUNTANT}',1,1,'Extfin'),('$lang{ACCOUNTANT}',1,2,'Notepad'),('$lang{ACCOUNTANT}',1,3,''),('$lang{ACCOUNTANT}',1,4,''),('$lang{ACCOUNTANT}',2,0,''),('$lang{ACCOUNTANT}',2,1,''),('$lang{ACCOUNTANT}',2,2,''),('$lang{ACCOUNTANT}',2,3,''),('$lang{ACCOUNTANT}',3,0,''),('$lang{ACCOUNTANT}',3,1,''),('$lang{ACCOUNTANT}',6,0,''),('$lang{ACCOUNTANT}',7,0,''),('$lang{ACCOUNTANT}',8,0,'');
/*!40000 ALTER TABLE `admin_type_permits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `regdate` date NOT NULL,
  `password` blob NOT NULL,
  `gid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phone` varchar(16) NOT NULL DEFAULT '',
  `web_options` text NOT NULL,
  `email` varchar(35) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `min_search_chars` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `max_rows` smallint(6) unsigned NOT NULL DEFAULT '0',
  `address` varchar(60) NOT NULL DEFAULT '',
  `cell_phone` varchar(20) NOT NULL DEFAULT '',
  `pasport_num` varchar(16) NOT NULL DEFAULT '',
  `pasport_date` date NOT NULL,
  `pasport_grant` varchar(100) NOT NULL DEFAULT '',
  `inn` varchar(20) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `max_credit` double(12,4) NOT NULL DEFAULT '0.0000',
  `credit_days` smallint(6) NOT NULL DEFAULT '0',
  `full_log` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sip_number` varchar(15) NOT NULL DEFAULT '',
  `api_key` varchar(100) NOT NULL DEFAULT '',
  `gps_imei` varchar(15) NOT NULL DEFAULT '',
  `rfid_number` varchar(15) NOT NULL DEFAULT '',
  `start_work` date NOT NULL,
  `telegram_id` varchar(15) NOT NULL DEFAULT '',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `department` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `id` (`id`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Admins list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('abills','abills',0,'2019-10-30',_binary '\\D3F\9A\B6',0,1,0,'','','','',0,0,0,'','','','2001-01-01','','','2001-01-01',0.0000,0,0,'','','','','2019-10-30','','0000-00-00 00:00:00',0),('system','System user',0,'2019-10-30',_binary '\80!Ni\\D6A\\E1o\9E\\CF	5\9AM\82\90>Y\F3;\9D\r\89\8F\F3\89(Sz',0,2,0,'','','','',0,0,0,'','','','2001-01-01','','','2001-01-01',0.0000,0,0,'','','','','2019-10-30','','0000-00-00 00:00:00',0),('users_web','Users web portal',0,'2019-10-30',_binary '{>/\F5\FD\8E~;\9A/\B1\9A4\BAڋ\\DA\Z\8BY?Jk\\C8u\94\F1',0,3,0,'','','','',0,0,0,'','','','2001-01-01','','','2001-01-01',0.0000,0,0,'','','','','2019-10-30','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_access`
--

DROP TABLE IF EXISTS `admins_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins_access` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `begin` time NOT NULL DEFAULT '00:00:00',
  `end` time NOT NULL DEFAULT '00:00:00',
  `day` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `bit_mask` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin access';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_access`
--

LOCK TABLES `admins_access` WRITE;
/*!40000 ALTER TABLE `admins_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_contacts`
--

DROP TABLE IF EXISTS `admins_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` smallint(11) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `value` varchar(250) NOT NULL DEFAULT '',
  `priority` smallint(6) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main admin contacts table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_contacts`
--

LOCK TABLES `admins_contacts` WRITE;
/*!40000 ALTER TABLE `admins_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_full_log`
--

DROP TABLE IF EXISTS `admins_full_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins_full_log` (
  `function_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `function_name` varchar(32) NOT NULL DEFAULT '',
  `datetime` datetime NOT NULL,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` varchar(32) NOT NULL DEFAULT '',
  `params` text,
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin full log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_full_log`
--

LOCK TABLES `admins_full_log` WRITE;
/*!40000 ALTER TABLE `admins_full_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_full_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_groups`
--

DROP TABLE IF EXISTS `admins_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins_groups` (
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `gid` (`gid`,`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_groups`
--

LOCK TABLES `admins_groups` WRITE;
/*!40000 ALTER TABLE `admins_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins_time_sheet`
--

DROP TABLE IF EXISTS `admins_time_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins_time_sheet` (
  `aid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `work_time` tinyint(2) NOT NULL DEFAULT '0',
  `overtime` tinyint(2) NOT NULL DEFAULT '0',
  `extra_fee` tinyint(2) NOT NULL DEFAULT '0',
  `day_type` tinyint(2) NOT NULL DEFAULT '0',
  UNIQUE KEY `aid_date` (`aid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admins time sheet';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins_time_sheet`
--

LOCK TABLES `admins_time_sheet` WRITE;
/*!40000 ALTER TABLE `admins_time_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins_time_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billd_plugins`
--

DROP TABLE IF EXISTS `billd_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billd_plugins` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `threads` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `make_lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `period` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_execute` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_end` datetime NOT NULL,
  `last_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin_name` (`plugin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='billd plugin orginizer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billd_plugins`
--

LOCK TABLES `billd_plugins` WRITE;
/*!40000 ALTER TABLE `billd_plugins` DISABLE KEYS */;
INSERT INTO `billd_plugins` VALUES (1,'check_lines',0,0,0,0,0,'2019-11-11 12:50:01','2019-11-11 12:50:02',0);
/*!40000 ALTER TABLE `billd_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `deposit` double(15,6) NOT NULL DEFAULT '0.000000',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `registration` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Users deposits';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,0.000000,1,0,'2009-08-03'),(4,0.000000,3,0,'2019-10-30');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `builds`
--

DROP TABLE IF EXISTS `builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `builds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `street_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `number` varchar(10) NOT NULL DEFAULT '',
  `flors` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `entrances` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `map_x` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_y` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_x2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_y2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_x3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_y3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_x4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `map_y4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `coordx` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `coordy` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `flats` smallint(6) unsigned NOT NULL DEFAULT '0',
  `build_schema` varchar(150) NOT NULL DEFAULT '',
  `contract_id` varchar(12) NOT NULL DEFAULT '',
  `contract_date` date NOT NULL DEFAULT '0000-00-00',
  `contract_price` double(15,6) NOT NULL DEFAULT '0.000000',
  `comments` text,
  `public_comments` text,
  `zip` varchar(7) NOT NULL DEFAULT '',
  `planned_to_connect` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numbering_direction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `block` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `street_id` (`street_id`,`number`,`block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Address Builds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `builds`
--

LOCK TABLES `builds` WRITE;
/*!40000 ALTER TABLE `builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companie_admins`
--

DROP TABLE IF EXISTS `companie_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companie_admins` (
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`company_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Companie Super Users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companie_admins`
--

LOCK TABLES `companie_admins` WRITE;
/*!40000 ALTER TABLE `companie_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `companie_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `bill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `tax_number` varchar(250) NOT NULL DEFAULT '',
  `bank_account` varchar(250) DEFAULT NULL,
  `bank_name` varchar(150) DEFAULT NULL,
  `cor_bank_account` varchar(150) DEFAULT NULL,
  `bank_bic` varchar(100) DEFAULT NULL,
  `registration` date NOT NULL DEFAULT '0000-00-00',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `credit` double(8,2) NOT NULL DEFAULT '0.00',
  `credit_date` date NOT NULL DEFAULT '0000-00-00',
  `address` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `vat` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `contract_id` varchar(10) NOT NULL DEFAULT '',
  `contract_date` date NOT NULL DEFAULT '0000-00-00',
  `ext_bill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `representative` varchar(120) NOT NULL DEFAULT '',
  `contract_sufix` varchar(5) NOT NULL DEFAULT '',
  `location_id` int(11) unsigned NOT NULL DEFAULT '0',
  `address_flat` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`domain_id`,`name`),
  KEY `bill_id` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Companies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `param` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(250) NOT NULL DEFAULT '',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `param` (`domain_id`,`param`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='System config';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('ADMIN_HAS_VIEWED_TOUR_1','1',0),('ORGANIZATION_ADDITIONAL_INFO','',0),('ORGANIZATION_ADDRESS','',0),('ORGANIZATION_BANK_NAME','',0),('ORGANIZATION_BANK_NUM','',0),('ORGANIZATION_CURRENT_ACCOUNT','',0),('ORGANIZATION_CUSTOM_DEPART_LEGAL_ENTITIES','',0),('ORGANIZATION_CUSTOM_DEPART_PHYS_PERSON','',0),('ORGANIZATION_FAX','',0),('ORGANIZATION_ID_CODE','',0),('ORGANIZATION_MAIL','',0),('ORGANIZATION_NAME','',0),('ORGANIZATION_PHONE','',0),('ORGANIZATION_SUPPORT_INFO','',0),('ORGANIZATION_SUPPORT_TECH','',0),('ORGANIZATION_WEB_SITE','',0),('SYS_ID','e687ae3b4fb90f4f95cd46d61d1bb4f3',0),('_ORGANIZATION_LOCATION_ID','',0);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_variables`
--

DROP TABLE IF EXISTS `config_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_variables` (
  `param` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `value` varchar(250) NOT NULL DEFAULT '',
  `comments` text,
  UNIQUE KEY `param` (`param`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='System config variables list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_variables`
--

LOCK TABLES `config_variables` WRITE;
/*!40000 ALTER TABLE `config_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_type`
--

DROP TABLE IF EXISTS `contracts_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contracts type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_type`
--

LOCK TABLES `contracts_type` WRITE;
/*!40000 ALTER TABLE `contracts_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `country` smallint(4) unsigned NOT NULL DEFAULT '0',
  `zip` varchar(7) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `coordx` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `coordy` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `zoom` tinyint(2) NOT NULL DEFAULT '0',
  `domain_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`city`,`name`,`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Locations districts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Main District',0,'','','',0.00000000000000,0.00000000000000,0,0);
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_act_orders`
--

DROP TABLE IF EXISTS `docs_act_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_act_orders` (
  `act_id` int(11) unsigned NOT NULL DEFAULT '0',
  `orders` varchar(200) NOT NULL DEFAULT '',
  `counts` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `fees_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `act_id` (`act_id`),
  CONSTRAINT `docs_act_orders_ibfk_1` FOREIGN KEY (`act_id`) REFERENCES `docs_acts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs act orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_act_orders`
--

LOCK TABLES `docs_act_orders` WRITE;
/*!40000 ALTER TABLE `docs_act_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_act_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_acts`
--

DROP TABLE IF EXISTS `docs_acts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_acts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `act_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `vat` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `start_period` date NOT NULL DEFAULT '0000-00-00',
  `end_period` date NOT NULL DEFAULT '0000-00-00',
  `company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sum` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`,`company_id`,`uid`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Acts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_acts`
--

LOCK TABLES `docs_acts` WRITE;
/*!40000 ALTER TABLE `docs_acts` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_acts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_invoice2payments`
--

DROP TABLE IF EXISTS `docs_invoice2payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_invoice2payments` (
  `invoice_id` int(11) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sum` double(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`invoice_id`,`payment_id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `docs_invoice2payments_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  CONSTRAINT `docs_invoice2payments_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `docs_invoices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Invoice to payments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_invoice2payments`
--

LOCK TABLES `docs_invoice2payments` WRITE;
/*!40000 ALTER TABLE `docs_invoice2payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_invoice2payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_invoice_orders`
--

DROP TABLE IF EXISTS `docs_invoice_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_invoice_orders` (
  `invoice_id` int(11) unsigned NOT NULL DEFAULT '0',
  `orders` varchar(200) NOT NULL DEFAULT '',
  `counts` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fees_id` int(11) unsigned NOT NULL DEFAULT '0',
  `fees_type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `type_fees_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `invoice_id` (`invoice_id`),
  KEY `fees_id` (`fees_id`),
  CONSTRAINT `docs_invoice_orders_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `docs_invoices` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Invoice Orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_invoice_orders`
--

LOCK TABLES `docs_invoice_orders` WRITE;
/*!40000 ALTER TABLE `docs_invoice_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_invoice_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_invoices`
--

DROP TABLE IF EXISTS `docs_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_invoices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer` varchar(200) NOT NULL DEFAULT '',
  `phone` varchar(16) NOT NULL DEFAULT '0',
  `user` varchar(20) NOT NULL DEFAULT '',
  `invoice_num` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `vat` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deposit` double(15,6) NOT NULL DEFAULT '0.000000',
  `delivery_status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `exchange_rate` double(12,4) NOT NULL DEFAULT '0.0000',
  `currency` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `domain_id` (`domain_id`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Invoices';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_invoices`
--

LOCK TABLES `docs_invoices` WRITE;
/*!40000 ALTER TABLE `docs_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_main`
--

DROP TABLE IF EXISTS `docs_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_main` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `send_docs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `personal_delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `invoicing_period` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `periodic_create_docs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '',
  `invoice_date` date NOT NULL DEFAULT '0000-00-00',
  `comments` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs users settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_main`
--

LOCK TABLES `docs_main` WRITE;
/*!40000 ALTER TABLE `docs_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_receipt_orders`
--

DROP TABLE IF EXISTS `docs_receipt_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_receipt_orders` (
  `receipt_id` int(11) unsigned NOT NULL DEFAULT '0',
  `orders` varchar(200) NOT NULL DEFAULT '',
  `counts` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `fees_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `receipt_id` (`receipt_id`),
  KEY `fees_id` (`fees_id`),
  CONSTRAINT `docs_receipt_orders_ibfk_1` FOREIGN KEY (`receipt_id`) REFERENCES `docs_receipts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs receipt orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_receipt_orders`
--

LOCK TABLES `docs_receipt_orders` WRITE;
/*!40000 ALTER TABLE `docs_receipt_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_receipt_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_receipts`
--

DROP TABLE IF EXISTS `docs_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_receipts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `customer` varchar(200) NOT NULL DEFAULT '',
  `phone` varchar(16) NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receipt_num` int(10) unsigned NOT NULL DEFAULT '0',
  `vat` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `by_proxy_seria` varchar(40) NOT NULL DEFAULT '',
  `by_proxy_person` varchar(15) NOT NULL DEFAULT '',
  `by_proxy_date` date NOT NULL DEFAULT '0000-00-00',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `payment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deposit` double(15,6) NOT NULL DEFAULT '0.000000',
  `delivery_status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `exchange_rate` double(12,4) NOT NULL DEFAULT '0.0000',
  `currency` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `domain_id` (`domain_id`),
  CONSTRAINT `docs_receipts_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Receipts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_receipts`
--

LOCK TABLES `docs_receipts` WRITE;
/*!40000 ALTER TABLE `docs_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_tax_invoice_orders`
--

DROP TABLE IF EXISTS `docs_tax_invoice_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_tax_invoice_orders` (
  `tax_invoice_id` int(11) unsigned NOT NULL DEFAULT '0',
  `orders` varchar(200) NOT NULL DEFAULT '',
  `counts` int(10) unsigned NOT NULL DEFAULT '0',
  `unit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  KEY `aid` (`tax_invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Tax Invoices Orders';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_tax_invoice_orders`
--

LOCK TABLES `docs_tax_invoice_orders` WRITE;
/*!40000 ALTER TABLE `docs_tax_invoice_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_tax_invoice_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_tax_invoices`
--

DROP TABLE IF EXISTS `docs_tax_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs_tax_invoices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tax_invoice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `vat` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`,`company_id`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Docs Tax Invoices';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_tax_invoices`
--

LOCK TABLES `docs_tax_invoices` WRITE;
/*!40000 ALTER TABLE `docs_tax_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_tax_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `comments` text,
  `created` date NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Domains List';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `errors_log`
--

DROP TABLE IF EXISTS `errors_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errors_log` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `user` varchar(20) NOT NULL DEFAULT '',
  `message` varchar(120) NOT NULL DEFAULT '',
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `i_user_date` (`user`,`date`),
  KEY `log_type` (`log_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Error log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `errors_log`
--

LOCK TABLES `errors_log` WRITE;
/*!40000 ALTER TABLE `errors_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `errors_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_rate`
--

DROP TABLE IF EXISTS `exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_rate` (
  `money` varchar(30) NOT NULL DEFAULT '',
  `short_name` varchar(30) NOT NULL DEFAULT '',
  `iso` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate` double(12,4) NOT NULL DEFAULT '0.0000',
  `changed` date NOT NULL DEFAULT '0000-00-00',
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `money` (`money`),
  UNIQUE KEY `short_name` (`short_name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Exchange rate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_rate`
--

LOCK TABLES `exchange_rate` WRITE;
/*!40000 ALTER TABLE `exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_rate_log`
--

DROP TABLE IF EXISTS `exchange_rate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_rate_log` (
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exchange_rate_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate` double(12,4) NOT NULL DEFAULT '0.0000',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Exchange rate log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_rate_log`
--

LOCK TABLES `exchange_rate_log` WRITE;
/*!40000 ALTER TABLE `exchange_rate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_rate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees` (
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sum` double(12,4) NOT NULL DEFAULT '0.0000',
  `dsc` varchar(80) NOT NULL DEFAULT '',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `last_deposit` double(15,6) NOT NULL DEFAULT '0.000000',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `vat` double(5,2) unsigned NOT NULL DEFAULT '0.00',
  `inner_describe` varchar(80) NOT NULL DEFAULT '',
  `method` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `date` (`date`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_types`
--

DROP TABLE IF EXISTS `fees_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_types` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sum` double(10,2) NOT NULL DEFAULT '0.00',
  `name` varchar(40) NOT NULL DEFAULT '',
  `default_describe` varchar(80) NOT NULL DEFAULT '',
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Payments types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_types`
--

LOCK TABLES `fees_types` WRITE;
/*!40000 ALTER TABLE `fees_types` DISABLE KEYS */;
INSERT INTO `fees_types` VALUES (0,0.00,'$lang{ONE_TIME}','',0.00),(1,0.00,'$lang{ABON}','',0.00),(2,0.00,'$lang{FINE}','',0.00),(3,0.00,'$lang{ACTIVATE}','',0.00),(4,0.00,'$lang{MONEY_TRANSFER}','',0.00);
/*!40000 ALTER TABLE `fees_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `filter` varchar(100) NOT NULL DEFAULT '',
  `params` varchar(200) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `filter` (`filter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `gid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `separate_docs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_credit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disable_paysys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disable_chg_tp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  UNIQUE KEY `name` (`domain_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `function` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `help` text NOT NULL,
  PRIMARY KEY (`function`),
  UNIQUE KEY `function` (`function`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `day` varchar(5) NOT NULL DEFAULT '',
  `file` char(50) NOT NULL DEFAULT '',
  `descr` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Hillidays list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_fields`
--

DROP TABLE IF EXISTS `info_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_fields` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `sql_field` varchar(60) NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `abon_portal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_chg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(60) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `company` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`domain_id`),
  UNIQUE KEY `sql_field` (`sql_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info_fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_fields`
--

LOCK TABLES `info_fields` WRITE;
/*!40000 ALTER TABLE `info_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet_log`
--

DROP TABLE IF EXISTS `internet_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_log` (
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tp_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `sent` int(10) unsigned NOT NULL DEFAULT '0',
  `recv` int(10) unsigned NOT NULL DEFAULT '0',
  `sum` double(14,6) NOT NULL DEFAULT '0.000000',
  `port_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nas_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `sent2` int(11) unsigned NOT NULL DEFAULT '0',
  `recv2` int(11) unsigned NOT NULL DEFAULT '0',
  `acct_session_id` varchar(32) NOT NULL DEFAULT '',
  `cid` varchar(18) NOT NULL DEFAULT '',
  `bill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `terminate_cause` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `framed_ipv6_prefix` varbinary(16) NOT NULL DEFAULT '',
  `acct_input_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `acct_output_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ex_input_octets_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ex_output_octets_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Internet sessions logs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet_log`
--

LOCK TABLES `internet_log` WRITE;
/*!40000 ALTER TABLE `internet_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `internet_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet_log_intervals`
--

DROP TABLE IF EXISTS `internet_log_intervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_log_intervals` (
  `interval_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sent` bigint(14) unsigned NOT NULL DEFAULT '0',
  `recv` bigint(14) unsigned NOT NULL DEFAULT '0',
  `duration` int(11) unsigned NOT NULL DEFAULT '0',
  `traffic_type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sum` double(14,6) unsigned NOT NULL DEFAULT '0.000000',
  `acct_session_id` varchar(32) NOT NULL DEFAULT '',
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `acct_session_id` (`acct_session_id`),
  KEY `session_interval` (`acct_session_id`,`interval_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Internet interval summary stats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet_log_intervals`
--

LOCK TABLES `internet_log_intervals` WRITE;
/*!40000 ALTER TABLE `internet_log_intervals` DISABLE KEYS */;
/*!40000 ALTER TABLE `internet_log_intervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet_main`
--

DROP TABLE IF EXISTS `internet_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `tp_id` smallint(6) NOT NULL DEFAULT '0',
  `logins` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `registration` date DEFAULT '0000-00-00',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `ipv6` varbinary(16) NOT NULL DEFAULT '',
  `ipv6_prefix` varbinary(16) NOT NULL DEFAULT '',
  `ipv6_mask` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ipv6_prefix_mask` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `netmask` int(10) unsigned NOT NULL DEFAULT '4294967295',
  `filter_id` varchar(150) NOT NULL DEFAULT '',
  `speed` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` varchar(200) NOT NULL DEFAULT '',
  `password` blob NOT NULL,
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `join_service` int(10) unsigned NOT NULL DEFAULT '0',
  `turbo_mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_turbo_mode` smallint(6) unsigned NOT NULL DEFAULT '0',
  `activate` date NOT NULL DEFAULT '0000-00-00',
  `expire` date NOT NULL DEFAULT '0000-00-00',
  `login` varchar(24) NOT NULL DEFAULT '',
  `detail_stats` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `personal_tp` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `cpe_mac` varchar(200) NOT NULL DEFAULT '',
  `comments` varchar(250) NOT NULL DEFAULT '',
  `port` varchar(100) NOT NULL DEFAULT '',
  `vlan` smallint(6) NOT NULL DEFAULT '0',
  `nas_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `server_vlan` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ipn_activate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `port` (`port`),
  KEY `nas_id` (`nas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Internet users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet_main`
--

LOCK TABLES `internet_main` WRITE;
/*!40000 ALTER TABLE `internet_main` DISABLE KEYS */;
INSERT INTO `internet_main` VALUES (1,1,1,0,'2019-10-30',0,'','',0,0,4294967295,'',0,'','',0,0,0,0,'0000-00-00','0000-00-00','',0,0.00,'','','',0,0,0,0);
/*!40000 ALTER TABLE `internet_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet_online`
--

DROP TABLE IF EXISTS `internet_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_online` (
  `status` int(3) NOT NULL DEFAULT '0',
  `user_name` varchar(32) NOT NULL DEFAULT '',
  `started` datetime NOT NULL,
  `nas_ip_address` int(11) unsigned NOT NULL DEFAULT '0',
  `nas_port_id` int(6) unsigned NOT NULL DEFAULT '0',
  `acct_session_id` varchar(40) NOT NULL DEFAULT '',
  `acct_session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `acct_input_octets` bigint(14) unsigned NOT NULL DEFAULT '0',
  `acct_output_octets` bigint(14) unsigned NOT NULL DEFAULT '0',
  `ex_input_octets` bigint(14) unsigned NOT NULL DEFAULT '0',
  `ex_output_octets` bigint(14) unsigned NOT NULL DEFAULT '0',
  `connect_term_reason` smallint(1) unsigned NOT NULL DEFAULT '0',
  `framed_ip_address` int(11) unsigned NOT NULL DEFAULT '0',
  `framed_ipv6_prefix` varbinary(16) NOT NULL DEFAULT '',
  `delegated_ipv6_prefix` varbinary(16) NOT NULL DEFAULT '',
  `framed_interface_id` varbinary(16) NOT NULL DEFAULT '',
  `lupdated` int(11) unsigned NOT NULL DEFAULT '0',
  `sum` double(14,6) NOT NULL DEFAULT '0.000000',
  `cid` varchar(20) NOT NULL DEFAULT '',
  `connect_info` varchar(35) NOT NULL DEFAULT '',
  `tp_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nas_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `acct_input_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `acct_output_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ex_input_octets_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `ex_output_octets_gigawords` smallint(4) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `join_service` int(11) unsigned NOT NULL DEFAULT '0',
  `turbo_mode` varchar(30) NOT NULL DEFAULT '',
  `guest` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `circuit_id` varchar(25) NOT NULL DEFAULT '',
  `remote_id` varchar(25) NOT NULL DEFAULT '',
  `hostname` varchar(30) NOT NULL DEFAULT '',
  `switch_port` varchar(11) NOT NULL DEFAULT '',
  `vlan` smallint(6) unsigned NOT NULL DEFAULT '0',
  `server_vlan` smallint(6) unsigned NOT NULL DEFAULT '0',
  `switch_mac` varchar(17) NOT NULL DEFAULT '',
  `dhcp_id` tinyint(2) NOT NULL DEFAULT '0',
  `dhcp_ends` datetime NOT NULL,
  `service_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `user_name` (`user_name`),
  KEY `acct_session_id` (`acct_session_id`),
  KEY `framed_ip_address` (`framed_ip_address`),
  KEY `service_id` (`service_id`),
  KEY `nas_id` (`nas_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Internet online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet_online`
--

LOCK TABLES `internet_online` WRITE;
/*!40000 ALTER TABLE `internet_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `internet_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet_users_pool`
--

DROP TABLE IF EXISTS `internet_users_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_users_pool` (
  `service_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `pool_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comments` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Internet users ip pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet_users_pool`
--

LOCK TABLES `internet_users_pool` WRITE;
/*!40000 ALTER TABLE `internet_users_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `internet_users_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervals`
--

DROP TABLE IF EXISTS `intervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intervals` (
  `tp_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `begin` time NOT NULL DEFAULT '00:00:00',
  `end` time NOT NULL DEFAULT '00:00:00',
  `tarif` varchar(7) NOT NULL DEFAULT '0',
  `day` tinyint(4) unsigned DEFAULT '0',
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tp_intervals` (`tp_id`,`begin`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Time intervals for tariffs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervals`
--

LOCK TABLES `intervals` WRITE;
/*!40000 ALTER TABLE `intervals` DISABLE KEYS */;
/*!40000 ALTER TABLE `intervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipn_log`
--

DROP TABLE IF EXISTS `ipn_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipn_log` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stop` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `traffic_class` smallint(3) unsigned NOT NULL DEFAULT '0',
  `traffic_in` bigint(14) unsigned NOT NULL DEFAULT '0',
  `traffic_out` bigint(14) unsigned NOT NULL DEFAULT '0',
  `nas_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `interval_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sum` double(15,6) unsigned NOT NULL DEFAULT '0.000000',
  `session_id` char(20) NOT NULL DEFAULT '',
  KEY `uid_traffic_class` (`uid`,`traffic_class`),
  KEY `uid` (`uid`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ipn log traffic class';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipn_log`
--

LOCK TABLES `ipn_log` WRITE;
/*!40000 ALTER TABLE `ipn_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipn_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipn_traf_detail`
--

DROP TABLE IF EXISTS `ipn_traf_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipn_traf_detail` (
  `src_addr` int(11) unsigned NOT NULL DEFAULT '0',
  `dst_addr` int(11) unsigned NOT NULL DEFAULT '0',
  `src_port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dst_port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `protocol` tinyint(3) unsigned DEFAULT '0',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `s_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ipn detail log traffic class';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipn_traf_detail`
--

LOCK TABLES `ipn_traf_detail` WRITE;
/*!40000 ALTER TABLE `ipn_traf_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipn_traf_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipn_unknow_ips`
--

DROP TABLE IF EXISTS `ipn_unknow_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipn_unknow_ips` (
  `src_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `dst_ip` int(11) unsigned NOT NULL,
  `size` int(11) unsigned NOT NULL,
  `nas_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ipn unknow ips';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipn_unknow_ips`
--

LOCK TABLES `ipn_unknow_ips` WRITE;
/*!40000 ALTER TABLE `ipn_unknow_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipn_unknow_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ippools`
--

DROP TABLE IF EXISTS `ippools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ippools` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nas` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `counts` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `priority` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `speed` int(10) unsigned NOT NULL DEFAULT '0',
  `ipv6_prefix` varbinary(16) NOT NULL DEFAULT '',
  `ipv6_mask` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ipv6_template` varbinary(100) NOT NULL DEFAULT '',
  `ipv6_pd` varbinary(16) NOT NULL DEFAULT '',
  `ipv6_pd_mask` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ipv6_pd_template` varbinary(100) NOT NULL DEFAULT '',
  `next_pool_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `netmask` int(11) unsigned NOT NULL DEFAULT '4294967295',
  `dns` varchar(32) NOT NULL DEFAULT '',
  `ntp` varchar(80) NOT NULL DEFAULT '',
  `gateway` int(11) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `vlan` smallint(2) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nas` (`nas`,`ip`),
  KEY `guest` (`guest`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='IP Pools';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ippools`
--

LOCK TABLES `ippools` WRITE;
/*!40000 ALTER TABLE `ippools` DISABLE KEYS */;
INSERT INTO `ippools` VALUES (1,1,167772161,256,'Main',0,0,0,'',0,'','',0,'',0,4294967295,'','',0,0,0,0,'');
/*!40000 ALTER TABLE `ippools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ippools_ips`
--

DROP TABLE IF EXISTS `ippools_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ippools_ips` (
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ippool_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`,`ippool_id`),
  KEY `ip_status` (`ip`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IP Pools ips';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ippools_ips`
--

LOCK TABLES `ippools_ips` WRITE;
/*!40000 ALTER TABLE `ippools_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ippools_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_media`
--

DROP TABLE IF EXISTS `location_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `content_size` varchar(30) NOT NULL DEFAULT '',
  `content_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Location media';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_media`
--

LOCK TABLES `location_media` WRITE;
/*!40000 ALTER TABLE `location_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_admins`
--

DROP TABLE IF EXISTS `msgs_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_admins` (
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `chapter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `email_notify` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deligation_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `aid` (`aid`,`chapter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs admins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_admins`
--

LOCK TABLES `msgs_admins` WRITE;
/*!40000 ALTER TABLE `msgs_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_attachments`
--

DROP TABLE IF EXISTS `msgs_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `content_size` varchar(30) NOT NULL DEFAULT '',
  `content_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_by` int(11) NOT NULL DEFAULT '0',
  `change_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_by` int(11) NOT NULL DEFAULT '0',
  `message_type` tinyint(2) NOT NULL DEFAULT '0',
  `coordx` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `coordy` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  PRIMARY KEY (`id`),
  KEY `article_attachment_article_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages Attachment table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_attachments`
--

LOCK TABLES `msgs_attachments` WRITE;
/*!40000 ALTER TABLE `msgs_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_chapters`
--

DROP TABLE IF EXISTS `msgs_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_chapters` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `responsible` smallint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `inner_chapter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `autoclose` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Msgs chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_chapters`
--

LOCK TABLES `msgs_chapters` WRITE;
/*!40000 ALTER TABLE `msgs_chapters` DISABLE KEYS */;
INSERT INTO `msgs_chapters` VALUES (1,0,'-',0,0);
/*!40000 ALTER TABLE `msgs_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_chat`
--

DROP TABLE IF EXISTS `msgs_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(100) NOT NULL DEFAULT '',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `num_ticket` int(10) unsigned NOT NULL DEFAULT '0',
  `msgs_unread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Chat Messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_chat`
--

LOCK TABLES `msgs_chat` WRITE;
/*!40000 ALTER TABLE `msgs_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_delivery`
--

DROP TABLE IF EXISTS `msgs_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_delivery` (
  `id` smallint(11) unsigned NOT NULL AUTO_INCREMENT,
  `send_date` date NOT NULL,
  `send_time` time NOT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `subject` varchar(250) NOT NULL DEFAULT '',
  `send_method` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs delivery list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_delivery`
--

LOCK TABLES `msgs_delivery` WRITE;
/*!40000 ALTER TABLE `msgs_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_delivery_users`
--

DROP TABLE IF EXISTS `msgs_delivery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_delivery_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `mdelivery_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sended_date` datetime NOT NULL,
  `send_method` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `mdelivery_id` (`mdelivery_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs delivery users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_delivery_users`
--

LOCK TABLES `msgs_delivery_users` WRITE;
/*!40000 ALTER TABLE `msgs_delivery_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_delivery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_dispatch`
--

DROP TABLE IF EXISTS `msgs_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_dispatch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `plan_date` date NOT NULL DEFAULT '0000-00-00',
  `comments` text NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed_date` date NOT NULL DEFAULT '0000-00-00',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `resposible` smallint(6) unsigned NOT NULL DEFAULT '0',
  `created_by` smallint(6) unsigned NOT NULL DEFAULT '0',
  `category` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plan_date` (`plan_date`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs dispatches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_dispatch`
--

LOCK TABLES `msgs_dispatch` WRITE;
/*!40000 ALTER TABLE `msgs_dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_dispatch_admins`
--

DROP TABLE IF EXISTS `msgs_dispatch_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_dispatch_admins` (
  `dispatch_id` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs Dispatch admins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_dispatch_admins`
--

LOCK TABLES `msgs_dispatch_admins` WRITE;
/*!40000 ALTER TABLE `msgs_dispatch_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_dispatch_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_dispatch_category`
--

DROP TABLE IF EXISTS `msgs_dispatch_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_dispatch_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages dispatch category';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_dispatch_category`
--

LOCK TABLES `msgs_dispatch_category` WRITE;
/*!40000 ALTER TABLE `msgs_dispatch_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_dispatch_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_message_pb`
--

DROP TABLE IF EXISTS `msgs_message_pb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_message_pb` (
  `main_msg` int(11) unsigned NOT NULL DEFAULT '0',
  `step_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `step_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coordx` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `coordy` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `aid` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `msg_step` (`main_msg`,`step_num`),
  KEY `main_msg` (`main_msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages work progress bar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_message_pb`
--

LOCK TABLES `msgs_message_pb` WRITE;
/*!40000 ALTER TABLE `msgs_message_pb` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_message_pb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_messages`
--

DROP TABLE IF EXISTS `msgs_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `par` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `chapter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `reply` text NOT NULL,
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(2) unsigned DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Admin ID',
  `subject` varchar(150) NOT NULL DEFAULT '',
  `gid` smallint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'Users gid',
  `priority` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `lock_msg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Close date',
  `done_date` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Msg done date',
  `plan_date` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Planing for execute date',
  `plan_time` time NOT NULL DEFAULT '00:00:00' COMMENT 'Planing for execute time',
  `user_read` datetime NOT NULL,
  `admin_read` datetime NOT NULL,
  `resposible` smallint(6) unsigned DEFAULT '0',
  `inner_msg` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Inner message',
  `phone` varchar(16) NOT NULL DEFAULT '',
  `dispatch_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deligation` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deligation_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `survey_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rating` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'Message rating',
  `rating_comment` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `chapter` (`chapter`),
  KEY `state` (`state`),
  KEY `dispatch_id` (`dispatch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs Messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_messages`
--

LOCK TABLES `msgs_messages` WRITE;
/*!40000 ALTER TABLE `msgs_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_proggress_bar`
--

DROP TABLE IF EXISTS `msgs_proggress_bar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_proggress_bar` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_notice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `responsible_notice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `follower_notice` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `step_num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `step_name` varchar(100) NOT NULL DEFAULT '',
  `step_tip` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chapter_id_name` (`chapter_id`,`step_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages progress bar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_proggress_bar`
--

LOCK TABLES `msgs_proggress_bar` WRITE;
/*!40000 ALTER TABLE `msgs_proggress_bar` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_proggress_bar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_quick_replys`
--

DROP TABLE IF EXISTS `msgs_quick_replys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_quick_replys` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `reply` varchar(250) NOT NULL DEFAULT '',
  `color` varchar(7) NOT NULL DEFAULT '',
  `type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quick replys';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_quick_replys`
--

LOCK TABLES `msgs_quick_replys` WRITE;
/*!40000 ALTER TABLE `msgs_quick_replys` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_quick_replys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_quick_replys_tags`
--

DROP TABLE IF EXISTS `msgs_quick_replys_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_quick_replys_tags` (
  `quick_reply_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `msg_id` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quick replys msgs tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_quick_replys_tags`
--

LOCK TABLES `msgs_quick_replys_tags` WRITE;
/*!40000 ALTER TABLE `msgs_quick_replys_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_quick_replys_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_quick_replys_types`
--

DROP TABLE IF EXISTS `msgs_quick_replys_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_quick_replys_types` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quick replys types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_quick_replys_types`
--

LOCK TABLES `msgs_quick_replys_types` WRITE;
/*!40000 ALTER TABLE `msgs_quick_replys_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_quick_replys_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_reply`
--

DROP TABLE IF EXISTS `msgs_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `main_msg` int(11) unsigned NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `caption` varchar(40) NOT NULL DEFAULT '',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `inner_msg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `survey_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `run_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `main_msg` (`main_msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs replies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_reply`
--

LOCK TABLES `msgs_reply` WRITE;
/*!40000 ALTER TABLE `msgs_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_status`
--

DROP TABLE IF EXISTS `msgs_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_status` (
  `id` smallint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `readiness` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `task_closed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(7) NOT NULL DEFAULT '',
  `icon` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Messages statuses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_status`
--

LOCK TABLES `msgs_status` WRITE;
/*!40000 ALTER TABLE `msgs_status` DISABLE KEYS */;
INSERT INTO `msgs_status` VALUES (0,'$lang{OPEN}',0,0,'#0000FF','fa fa-envelope-open text-aqua'),(1,'$lang{CLOSED_UNSUCCESSFUL}',100,1,'#ff0638','fa fa-warning text-red'),(2,'$lang{CLOSED_SUCCESSFUL}',100,1,'#009D00','fa fa-check text-green'),(3,'$lang{IN_WORK}',10,0,'#707070','fa fa-wrench'),(4,'$lang{NEW_MESSAGE}',0,0,'#FF8000','fa fa-reply text-blue'),(5,'$lang{HOLD_UP}',0,0,'0','fa fa-clock-o'),(6,'$lang{ANSWER_WAIT}',50,0,'','fa fa-envelope-open-o'),(9,'$lang{NOTIFICATION_MSG}',0,0,'','fa fa-flag text-red'),(10,'$lang{NOTIFICATION_MSG}  $lang{READED}',100,0,'','fa fa-flag-o text-red'),(11,'$lang{POTENTIAL_CLIENT}',0,0,'','fa fa-user-plus text-green');
/*!40000 ALTER TABLE `msgs_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_survey_answers`
--

DROP TABLE IF EXISTS `msgs_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_survey_answers` (
  `question_id` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `answer` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `date_time` datetime NOT NULL,
  `survey_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `msg_id` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`msg_id`,`reply_id`,`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages Survey Answers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_survey_answers`
--

LOCK TABLES `msgs_survey_answers` WRITE;
/*!40000 ALTER TABLE `msgs_survey_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_survey_questions`
--

DROP TABLE IF EXISTS `msgs_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_survey_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `num` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `question` varchar(200) NOT NULL,
  `params` varchar(250) NOT NULL,
  `comments` text NOT NULL,
  `user_comments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fill_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages Survey questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_survey_questions`
--

LOCK TABLES `msgs_survey_questions` WRITE;
/*!40000 ALTER TABLE `msgs_survey_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_survey_subjects`
--

DROP TABLE IF EXISTS `msgs_survey_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_survey_subjects` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `tpl` text NOT NULL,
  `filename` varchar(250) NOT NULL DEFAULT '',
  `file_size` varchar(30) NOT NULL DEFAULT '',
  `file_content_type` varchar(250) NOT NULL DEFAULT '',
  `file_contents` longblob NOT NULL,
  `msg_type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Messages Survey Subjects';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_survey_subjects`
--

LOCK TABLES `msgs_survey_subjects` WRITE;
/*!40000 ALTER TABLE `msgs_survey_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_survey_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_unreg_requests`
--

DROP TABLE IF EXISTS `msgs_unreg_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_unreg_requests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `received_admin` smallint(6) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(45) NOT NULL DEFAULT '',
  `chapter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `request` text NOT NULL,
  `comments` text NOT NULL,
  `resposible` smallint(6) unsigned NOT NULL DEFAULT '0',
  `fio` varchar(40) NOT NULL DEFAULT '',
  `phone` bigint(16) unsigned NOT NULL DEFAULT '0',
  `email` varchar(250) NOT NULL DEFAULT '',
  `company` varchar(60) NOT NULL DEFAULT '',
  `country_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `address_street` varchar(100) NOT NULL DEFAULT '',
  `address_build` varchar(10) NOT NULL DEFAULT '',
  `address_flat` varchar(10) NOT NULL DEFAULT '',
  `location_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` int(11) unsigned NOT NULL,
  `closed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tp_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `payment_sum` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `extra_sum` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `login` varchar(24) NOT NULL DEFAULT '',
  `connection_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reaction_time` varchar(100) NOT NULL DEFAULT '',
  `last_contact` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `planned_contact` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact_note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `state` (`state`),
  KEY `datetime` (`datetime`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Msgs from unregister users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_unreg_requests`
--

LOCK TABLES `msgs_unreg_requests` WRITE;
/*!40000 ALTER TABLE `msgs_unreg_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_unreg_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msgs_watch`
--

DROP TABLE IF EXISTS `msgs_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msgs_watch` (
  `main_msg` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `msg_aid` (`aid`,`main_msg`),
  KEY `main_msg` (`main_msg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Message watch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msgs_watch`
--

LOCK TABLES `msgs_watch` WRITE;
/*!40000 ALTER TABLE `msgs_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `msgs_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas`
--

DROP TABLE IF EXISTS `nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `nas_identifier` varchar(20) NOT NULL DEFAULT '',
  `descr` varchar(250) DEFAULT NULL,
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `nas_type` varchar(20) DEFAULT NULL,
  `auth_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mng_host_port` varchar(28) NOT NULL DEFAULT '',
  `mng_user` varchar(20) DEFAULT NULL,
  `mng_password` blob NOT NULL,
  `rad_pairs` text NOT NULL,
  `alive` smallint(6) unsigned NOT NULL DEFAULT '0',
  `disable` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `ext_acct` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `address_street` varchar(100) NOT NULL DEFAULT '',
  `address_build` varchar(10) NOT NULL DEFAULT '',
  `address_flat` varchar(10) NOT NULL DEFAULT '',
  `zip` varchar(7) NOT NULL DEFAULT '',
  `city` varchar(20) NOT NULL DEFAULT '',
  `country` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `mac` varchar(17) NOT NULL DEFAULT '',
  `changed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location_id` int(11) unsigned NOT NULL DEFAULT '0',
  `floor` varchar(10) NOT NULL DEFAULT '',
  `entrance` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain_id` (`domain_id`,`ip`,`nas_identifier`),
  KEY `mac` (`mac`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Nas servers list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas`
--

LOCK TABLES `nas` WRITE;
/*!40000 ALTER TABLE `nas` DISABLE KEYS */;
INSERT INTO `nas` VALUES (1,'NAS_Server','','NAS_Server',2130706433,'mpd5',0,'127.0.0.1:3799:5005:','admin',_binary 'Km3\99\A1\\D9s8\\','',300,0,0,0,'','','','','',0,0,'','2019-10-30 07:04:16',0,'','');
/*!40000 ALTER TABLE `nas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas_cmd`
--

DROP TABLE IF EXISTS `nas_cmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas_cmd` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '0',
  `comments` text,
  `cmd` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Nas console commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas_cmd`
--

LOCK TABLES `nas_cmd` WRITE;
/*!40000 ALTER TABLE `nas_cmd` DISABLE KEYS */;
/*!40000 ALTER TABLE `nas_cmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas_groups`
--

DROP TABLE IF EXISTS `nas_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `disable` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `main_page` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain_id` (`domain_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='NAS servers groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas_groups`
--

LOCK TABLES `nas_groups` WRITE;
/*!40000 ALTER TABLE `nas_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `nas_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nas_ippools`
--

DROP TABLE IF EXISTS `nas_ippools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nas_ippools` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `nas` (`nas_id`,`pool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='NAS IP Pools';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nas_ippools`
--

LOCK TABLES `nas_ippools` WRITE;
/*!40000 ALTER TABLE `nas_ippools` DISABLE KEYS */;
INSERT INTO `nas_ippools` VALUES (1,1);
/*!40000 ALTER TABLE `nas_ippools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sum` double(10,2) NOT NULL DEFAULT '0.00',
  `dsc` varchar(80) DEFAULT NULL,
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `last_deposit` double(15,6) NOT NULL DEFAULT '0.000000',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `method` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ext_id` varchar(28) NOT NULL DEFAULT '',
  `bill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `inner_describe` varchar(80) NOT NULL DEFAULT '',
  `amount` double(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Sum in currency',
  `currency` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `date` (`date`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Payments log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_type`
--

DROP TABLE IF EXISTS `payments_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `color` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Add new payment type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_type`
--

LOCK TABLES `payments_type` WRITE;
/*!40000 ALTER TABLE `payments_type` DISABLE KEYS */;
INSERT INTO `payments_type` VALUES (0,'$lang{CASH}',''),(1,'$lang{BANK}',''),(2,'$lang{EXTERNAL_PAYMENTS}',''),(3,'Credit Card',''),(4,'$lang{BONUS}',''),(5,'$lang{CORRECTION}',''),(6,'$lang{COMPENSATION}',''),(7,'$lang{MONEY_TRANSFER}',''),(8,'$lang{RECALCULATE}','');
/*!40000 ALTER TABLE `payments_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radtest_history`
--

DROP TABLE IF EXISTS `radtest_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radtest_history` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rad_query` text NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Radtest history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radtest_history`
--

LOCK TABLES `radtest_history` WRITE;
/*!40000 ALTER TABLE `radtest_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `radtest_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_wizard`
--

DROP TABLE IF EXISTS `reg_wizard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_wizard` (
  `param` varchar(40) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `module` varchar(40) NOT NULL DEFAULT '',
  `step` tinyint(2) NOT NULL DEFAULT '0',
  `session_id` varchar(30) NOT NULL DEFAULT '',
  UNIQUE KEY `session_id` (`session_id`,`step`,`param`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registration wizard temp table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_wizard`
--

LOCK TABLES `reg_wizard` WRITE;
/*!40000 ALTER TABLE `reg_wizard` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg_wizard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_detail`
--

DROP TABLE IF EXISTS `s_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_detail` (
  `acct_session_id` varchar(32) NOT NULL DEFAULT '',
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `acct_status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `sent1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `recv1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `sent2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `recv2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id` varchar(16) NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `sum` double(14,6) NOT NULL DEFAULT '0.000000',
  KEY `sid` (`acct_session_id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sessions details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_detail`
--

LOCK TABLES `s_detail` WRITE;
/*!40000 ALTER TABLE `s_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_status`
--

DROP TABLE IF EXISTS `service_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_status` (
  `id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `color` varchar(6) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `get_fees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='System service status list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_status`
--

LOCK TABLES `service_status` WRITE;
/*!40000 ALTER TABLE `service_status` DISABLE KEYS */;
INSERT INTO `service_status` VALUES (0,'$lang{ENABLE}','4CAF50',0,0),(1,'$lang{DISABLE}','F44336',0,0),(2,'$lang{NOT_ACTIVE}','FF9800',0,0),(3,'$lang{HOLD_UP}','2196F3',0,0),(4,'$lang{DISABLE} $lang{NON_PAYMENT}','607D8B',0,0),(5,'$lang{ERR_SMALL_DEPOSIT}','009688',0,0),(6,'$lang{VIRUS_ALERT}','9C27B0',0,0),(7,'$lang{REPAIR}','9E9E9E',0,0),(10,'$lang{TRAF_LIMIT}','9F9F9F',0,0);
/*!40000 ALTER TABLE `service_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shedule`
--

DROP TABLE IF EXISTS `shedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `type` varchar(50) NOT NULL DEFAULT '',
  `action` text NOT NULL,
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `counts` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `d` char(2) NOT NULL DEFAULT '*',
  `m` char(2) NOT NULL DEFAULT '*',
  `y` varchar(4) NOT NULL DEFAULT '*',
  `h` char(2) NOT NULL DEFAULT '*',
  `module` varchar(12) NOT NULL DEFAULT '',
  `comments` varchar(120) NOT NULL DEFAULT '',
  `admin_action` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `service_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_action` (`h`,`d`,`m`,`y`,`type`,`uid`,`module`),
  KEY `date_type_uid` (`date`,`type`,`uid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shedules';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shedule`
--

LOCK TABLES `shedule` WRITE;
/*!40000 ALTER TABLE `shedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `shedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlcmd_history`
--

DROP TABLE IF EXISTS `sqlcmd_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlcmd_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sql_query` text NOT NULL,
  `db_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sqlcmd history';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlcmd_history`
--

LOCK TABLES `sqlcmd_history` WRITE;
/*!40000 ALTER TABLE `sqlcmd_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sqlcmd_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streets`
--

DROP TABLE IF EXISTS `streets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `streets` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `district_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `second_name` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_district` (`name`,`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Locations streets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streets`
--

LOCK TABLES `streets` WRITE;
/*!40000 ALTER TABLE `streets` DISABLE KEYS */;
/*!40000 ALTER TABLE `streets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif_plans`
--

DROP TABLE IF EXISTS `tarif_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarif_plans` (
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month_fee` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `fixed_fees_day` tinyint(1) NOT NULL DEFAULT '0',
  `uplimit` double(14,2) NOT NULL DEFAULT '0.00',
  `name` varchar(60) NOT NULL DEFAULT '',
  `day_fee` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `active_day_fee` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logins` tinyint(4) NOT NULL DEFAULT '0',
  `day_time_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `week_time_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `month_time_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `day_traf_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `week_traf_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `month_traf_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `prepaid_trafic` int(10) unsigned NOT NULL DEFAULT '0',
  `change_price` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `activate_price` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `credit_tresshold` double(8,2) unsigned NOT NULL DEFAULT '0.00',
  `age` smallint(6) unsigned NOT NULL DEFAULT '0',
  `octets_direction` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `max_session_duration` int(11) unsigned NOT NULL DEFAULT '0',
  `filter_id` varchar(150) NOT NULL DEFAULT '',
  `payment_type` tinyint(1) NOT NULL DEFAULT '0',
  `min_session_cost` double(14,5) unsigned NOT NULL DEFAULT '0.00000',
  `rad_pairs` text,
  `reduction_fee` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postpaid_daily_fee` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `postpaid_monthly_fee` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module` varchar(12) NOT NULL DEFAULT '',
  `traffic_transfer_period` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `neg_deposit_filter_id` varchar(150) NOT NULL DEFAULT '',
  `tp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ext_bill_account` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `credit` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `user_credit_limit` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `ippool` smallint(6) unsigned NOT NULL DEFAULT '0',
  `period_alignment` tinyint(1) NOT NULL DEFAULT '0',
  `min_use` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `abon_distribution` tinyint(1) NOT NULL DEFAULT '0',
  `small_deposit_action` smallint(6) NOT NULL DEFAULT '0',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `total_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `total_traf_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `priority` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  `bills_priority` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `fine` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `neg_deposit_ippool` smallint(6) unsigned NOT NULL DEFAULT '0',
  `next_tp_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `fees_method` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `service_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tp_id`),
  UNIQUE KEY `id` (`id`,`module`,`domain_id`),
  KEY `name` (`name`,`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tarif plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif_plans`
--

LOCK TABLES `tarif_plans` WRITE;
/*!40000 ALTER TABLE `tarif_plans` DISABLE KEYS */;
INSERT INTO `tarif_plans` VALUES (100,0.00,0,0.00,'Admin',0.00,0,0,0,0,0,0,0,0,0,0.00,0.00,0.00,0,0,0,'',1,0.00000,'',0,0,0,'Internet',0,0,'',1,0,0.00,0.00,0,0,0.00,0,0,0,0,0,0,'',0,0.00,0,0,0,0,0);
/*!40000 ALTER TABLE `tarif_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ratecode` varchar(30) NOT NULL DEFAULT '',
  `ratedescr` varchar(130) NOT NULL DEFAULT '',
  `rateamount` tinyint(100) unsigned NOT NULL DEFAULT '0',
  `current` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Magazine';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_bonus_rating`
--

DROP TABLE IF EXISTS `tp_bonus_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_bonus_rating` (
  `tp_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rating_from` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_to` int(11) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `change_bonus` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `activate_bonus` double(14,2) unsigned NOT NULL DEFAULT '0.00',
  `ext_bill_account` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tarif plans bonus rating';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_bonus_rating`
--

LOCK TABLES `tp_bonus_rating` WRITE;
/*!40000 ALTER TABLE `tp_bonus_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_bonus_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_geolocation`
--

DROP TABLE IF EXISTS `tp_geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_geolocation` (
  `tp_gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `street_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `build_id` int(6) unsigned NOT NULL DEFAULT '0',
  KEY `tp_gid` (`tp_gid`),
  KEY `district_id` (`district_id`),
  KEY `street_id` (`street_id`),
  KEY `build_id` (`build_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geolocation of the tariff plan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_geolocation`
--

LOCK TABLES `tp_geolocation` WRITE;
/*!40000 ALTER TABLE `tp_geolocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_groups`
--

DROP TABLE IF EXISTS `tp_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `user_chg_tp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tarif Plans Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_groups`
--

LOCK TABLES `tp_groups` WRITE;
/*!40000 ALTER TABLE `tp_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_nas`
--

DROP TABLE IF EXISTS `tp_nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_nas` (
  `tp_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `tp_id` (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TP nas servers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_nas`
--

LOCK TABLES `tp_nas` WRITE;
/*!40000 ALTER TABLE `tp_nas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_nas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffic_classes`
--

DROP TABLE IF EXISTS `traffic_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traffic_classes` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `nets` mediumtext,
  `comments` text NOT NULL,
  `changed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Traffic Classes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic_classes`
--

LOCK TABLES `traffic_classes` WRITE;
/*!40000 ALTER TABLE `traffic_classes` DISABLE KEYS */;
INSERT INTO `traffic_classes` VALUES (1,'Global','0.0.0.0/0','','2019-10-30 06:03:35');
/*!40000 ALTER TABLE `traffic_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trafic_tarifs`
--

DROP TABLE IF EXISTS `trafic_tarifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trafic_tarifs` (
  `id` tinyint(4) NOT NULL DEFAULT '0',
  `descr` varchar(30) DEFAULT NULL,
  `net_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `nets` text,
  `tp_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `prepaid` int(11) unsigned DEFAULT '0',
  `in_price` double(13,5) unsigned NOT NULL DEFAULT '0.00000',
  `out_price` double(13,5) unsigned NOT NULL DEFAULT '0.00000',
  `in_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `interval_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `rad_pairs` text,
  `out_speed` int(10) unsigned NOT NULL DEFAULT '0',
  `expression` varchar(255) NOT NULL DEFAULT '',
  `burst_limit_dl` smallint(5) unsigned NOT NULL DEFAULT '0',
  `burst_limit_ul` smallint(5) unsigned NOT NULL DEFAULT '0',
  `burst_threshold_dl` smallint(5) unsigned NOT NULL DEFAULT '0',
  `burst_threshold_ul` smallint(5) unsigned NOT NULL DEFAULT '0',
  `burst_time_dl` smallint(5) unsigned NOT NULL DEFAULT '0',
  `burst_time_ul` smallint(5) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`,`interval_id`),
  KEY `interval_id` (`interval_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Traffic classes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trafic_tarifs`
--

LOCK TABLES `trafic_tarifs` WRITE;
/*!40000 ALTER TABLE `trafic_tarifs` DISABLE KEYS */;
/*!40000 ALTER TABLE `trafic_tarifs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `activate` date NOT NULL DEFAULT '0000-00-00',
  `expire` date NOT NULL DEFAULT '0000-00-00',
  `credit` double(10,2) NOT NULL DEFAULT '0.00',
  `reduction` double(6,2) NOT NULL DEFAULT '0.00',
  `reduction_date` date NOT NULL DEFAULT '0000-00-00',
  `registration` date DEFAULT '0000-00-00',
  `password` blob NOT NULL,
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `bill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ext_bill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `credit_date` date DEFAULT '0000-00-00',
  `domain_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `id` (`domain_id`,`id`),
  KEY `bill_id` (`bill_id`),
  KEY `gid` (`gid`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Users list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('test','0000-00-00','0000-00-00',0.00,0.00,'0000-00-00','2009-08-03',_binary 'Ni\8C\F2\A2\98',1,0,0,0,1,0,'0000-00-00',0,0),('test1','0000-00-00','0000-00-00',0.00,0.00,'0000-00-00','2019-10-30',_binary 'Ni\8C򢘱d\80',3,0,0,1,4,0,'0000-00-00',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_bruteforce`
--

DROP TABLE IF EXISTS `users_bruteforce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_bruteforce` (
  `login` varchar(20) NOT NULL DEFAULT '',
  `password` blob NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `auth_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_bruteforce`
--

LOCK TABLES `users_bruteforce` WRITE;
/*!40000 ALTER TABLE `users_bruteforce` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_bruteforce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_contact_types`
--

DROP TABLE IF EXISTS `users_contact_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_contact_types` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Types of user contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_contact_types`
--

LOCK TABLES `users_contact_types` WRITE;
/*!40000 ALTER TABLE `users_contact_types` DISABLE KEYS */;
INSERT INTO `users_contact_types` VALUES (1,'CELL_PHONE',0,0),(2,'PHONE',1,0),(3,'Skype',0,0),(4,'ICQ',0,0),(5,'Viber',0,0),(6,'Telegram',0,0),(9,'EMail',1,0),(10,'Google push',0,1);
/*!40000 ALTER TABLE `users_contact_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_contacts`
--

DROP TABLE IF EXISTS `users_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `value` varchar(250) NOT NULL DEFAULT '',
  `priority` smallint(6) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `_uid_contact` (`uid`),
  CONSTRAINT `users_contacts_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE,
  CONSTRAINT `users_contacts_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `users_contact_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main user contacts table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_contacts`
--

LOCK TABLES `users_contacts` WRITE;
/*!40000 ALTER TABLE `users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_contracts`
--

DROP TABLE IF EXISTS `users_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_contracts` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parrent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `number` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `type` smallint(3) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `aid` int(11) unsigned NOT NULL DEFAULT '0',
  `signature` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contracts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_contracts`
--

LOCK TABLES `users_contracts` WRITE;
/*!40000 ALTER TABLE `users_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_nas`
--

DROP TABLE IF EXISTS `users_nas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_nas` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `nas_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_nas`
--

LOCK TABLES `users_nas` WRITE;
/*!40000 ALTER TABLE `users_nas` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_nas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_pi`
--

DROP TABLE IF EXISTS `users_pi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_pi` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `fio` varchar(120) NOT NULL DEFAULT '',
  `fio2` varchar(40) NOT NULL DEFAULT '',
  `fio3` varchar(40) NOT NULL DEFAULT '',
  `phone` varchar(16) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `country_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `address_street` varchar(100) NOT NULL DEFAULT '',
  `address_build` varchar(10) NOT NULL DEFAULT '',
  `address_flat` varchar(10) NOT NULL DEFAULT '',
  `comments` text NOT NULL,
  `contract_id` varchar(10) NOT NULL DEFAULT '',
  `contract_date` date NOT NULL DEFAULT '0000-00-00',
  `contract_sufix` varchar(5) NOT NULL DEFAULT '',
  `pasport_num` varchar(16) NOT NULL DEFAULT '',
  `pasport_date` date NOT NULL DEFAULT '0000-00-00',
  `pasport_grant` varchar(100) NOT NULL DEFAULT '',
  `birth_date` date NOT NULL DEFAULT '0000-00-00',
  `reg_address` text NOT NULL,
  `floor` smallint(3) unsigned NOT NULL DEFAULT '0',
  `entrance` smallint(3) unsigned NOT NULL DEFAULT '0',
  `zip` varchar(7) NOT NULL DEFAULT '',
  `city` varchar(20) NOT NULL DEFAULT '',
  `accept_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `location_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Users personal info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_pi`
--

LOCK TABLES `users_pi` WRITE;
/*!40000 ALTER TABLE `users_pi` DISABLE KEYS */;
INSERT INTO `users_pi` VALUES (1,'Test user','','','','',0,'','','','','','0000-00-00','','','0000-00-00','','0000-00-00','',0,0,'','',0,0),(3,'','','','','',0,'','','','','','0000-00-00','','','0000-00-00','','0000-00-00','',0,0,'','',0,0);
/*!40000 ALTER TABLE `users_pi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_social_info`
--

DROP TABLE IF EXISTS `users_social_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_social_info` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `social_network_id` int(1) NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `gender` varchar(15) NOT NULL DEFAULT '',
  `likes` text,
  `friends_count` int(5) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(10) NOT NULL DEFAULT '',
  `photo` text,
  UNIQUE KEY `uid_sin` (`uid`,`social_network_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Info form social networks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_social_info`
--

LOCK TABLES `users_social_info` WRITE;
/*!40000 ALTER TABLE `users_social_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_social_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_test`
--

DROP TABLE IF EXISTS `users_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_test`
--

LOCK TABLES `users_test` WRITE;
/*!40000 ALTER TABLE `users_test` DISABLE KEYS */;
INSERT INTO `users_test` VALUES (1,'Testing Petro Petrovuch','Lisova','test@meta.ua');
/*!40000 ALTER TABLE `users_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_online`
--

DROP TABLE IF EXISTS `web_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_online` (
  `admin` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `logtime` int(11) unsigned NOT NULL DEFAULT '0',
  `page_index` int(10) unsigned NOT NULL DEFAULT '0',
  `sid` varchar(32) NOT NULL DEFAULT '',
  `ext_info` varchar(200) NOT NULL DEFAULT '',
  `aid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `sip_number` varchar(15) NOT NULL DEFAULT '',
  UNIQUE KEY `sid` (`sid`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Online admins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_online`
--

LOCK TABLES `web_online` WRITE;
/*!40000 ALTER TABLE `web_online` DISABLE KEYS */;
INSERT INTO `web_online` VALUES ('abills','127.0.0.1',1573448957,0,'jJsxRQs7F3XsYL','',1,'');
/*!40000 ALTER TABLE `web_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_users_sessions`
--

DROP TABLE IF EXISTS `web_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_users_sessions` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0',
  `login` varchar(20) NOT NULL DEFAULT '',
  `remote_addr` int(11) unsigned NOT NULL DEFAULT '0',
  `sid` varchar(32) NOT NULL DEFAULT '',
  `ext_info` varchar(200) NOT NULL DEFAULT '',
  `coordx` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  `coordy` double(20,14) NOT NULL DEFAULT '0.00000000000000',
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Web Sessions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_users_sessions`
--

LOCK TABLES `web_users_sessions` WRITE;
/*!40000 ALTER TABLE `web_users_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-11 12:51:36