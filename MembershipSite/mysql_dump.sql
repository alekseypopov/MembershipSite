-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: Membership
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add placeholder',9,'add_placeholder'),(26,'Can change placeholder',9,'change_placeholder'),(27,'Can delete placeholder',9,'delete_placeholder'),(28,'Can add cms plugin',10,'add_cmsplugin'),(29,'Can change cms plugin',10,'change_cmsplugin'),(30,'Can delete cms plugin',10,'delete_cmsplugin'),(31,'Can add page',11,'add_page'),(32,'Can change page',11,'change_page'),(33,'Can delete page',11,'delete_page'),(34,'Can view page',11,'view_page'),(35,'Can add PageModerator',12,'add_pagemoderator'),(36,'Can change PageModerator',12,'change_pagemoderator'),(37,'Can delete PageModerator',12,'delete_pagemoderator'),(38,'Can add Page moderator state',13,'add_pagemoderatorstate'),(39,'Can change Page moderator state',13,'change_pagemoderatorstate'),(40,'Can delete Page moderator state',13,'delete_pagemoderatorstate'),(41,'Can add Page global permission',14,'add_globalpagepermission'),(42,'Can change Page global permission',14,'change_globalpagepermission'),(43,'Can delete Page global permission',14,'delete_globalpagepermission'),(44,'Can add Page permission',15,'add_pagepermission'),(45,'Can change Page permission',15,'change_pagepermission'),(46,'Can delete Page permission',15,'delete_pagepermission'),(47,'Can add User (page)',16,'add_pageuser'),(48,'Can change User (page)',16,'change_pageuser'),(49,'Can delete User (page)',16,'delete_pageuser'),(50,'Can add User group (page)',17,'add_pageusergroup'),(51,'Can change User group (page)',17,'change_pageusergroup'),(52,'Can delete User group (page)',17,'delete_pageusergroup'),(53,'Can add title',18,'add_title'),(54,'Can change title',18,'change_title'),(55,'Can delete title',18,'delete_title'),(56,'Can add cache key',19,'add_cachekey'),(57,'Can change cache key',19,'change_cachekey'),(58,'Can delete cache key',19,'delete_cachekey'),(59,'Can add file',20,'add_file'),(60,'Can change file',20,'change_file'),(61,'Can delete file',20,'delete_file'),(62,'Can add flash',21,'add_flash'),(63,'Can change flash',21,'change_flash'),(64,'Can delete flash',21,'delete_flash'),(65,'Can add google map',22,'add_googlemap'),(66,'Can change google map',22,'change_googlemap'),(67,'Can delete google map',22,'delete_googlemap'),(68,'Can add link',23,'add_link'),(69,'Can change link',23,'change_link'),(70,'Can delete link',23,'delete_link'),(71,'Can add picture',24,'add_picture'),(72,'Can change picture',24,'change_picture'),(73,'Can delete picture',24,'delete_picture'),(74,'Can add Snippet',25,'add_snippet'),(75,'Can change Snippet',25,'change_snippet'),(76,'Can delete Snippet',25,'delete_snippet'),(77,'Can add Snippet',26,'add_snippetptr'),(78,'Can change Snippet',26,'change_snippetptr'),(79,'Can delete Snippet',26,'delete_snippetptr'),(80,'Can add teaser',27,'add_teaser'),(81,'Can change teaser',27,'change_teaser'),(82,'Can delete teaser',27,'delete_teaser'),(83,'Can add text',28,'add_text'),(84,'Can change text',28,'change_text'),(85,'Can delete text',28,'delete_text'),(86,'Can add video',29,'add_video'),(87,'Can change video',29,'change_video'),(88,'Can delete video',29,'delete_video'),(89,'Can add twitter recent entries',30,'add_twitterrecententries'),(90,'Can change twitter recent entries',30,'change_twitterrecententries'),(91,'Can delete twitter recent entries',30,'delete_twitterrecententries'),(92,'Can add twitter search',31,'add_twittersearch'),(93,'Can change twitter search',31,'change_twittersearch'),(94,'Can delete twitter search',31,'delete_twittersearch'),(95,'Can add profile',32,'add_profile'),(96,'Can change profile',32,'change_profile'),(97,'Can delete profile',32,'delete_profile'),(98,'Can add migration history',33,'add_migrationhistory'),(99,'Can change migration history',33,'change_migrationhistory'),(100,'Can delete migration history',33,'delete_migrationhistory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'aleksey','','','aleksey.popov1983@gmail.com','sha1$6dd34$a6b31421d528abaf11536858ee2b9527329192e6',1,1,1,'2012-01-28 07:45:48','2012-01-28 07:19:55'),(2,'test1','','','test1@gmail.com','sha1$b475c$c3b6b97b59a610a9d7ed878ab8b7fc97910f9bf3',0,1,0,'2012-01-28 07:29:04','2012-01-28 07:29:04');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeholder_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position` smallint(5) unsigned DEFAULT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_cmsplugin_3e35d7b0` (`placeholder_id`),
  KEY `cms_cmsplugin_63f17a16` (`parent_id`),
  KEY `cms_cmsplugin_75853655` (`language`),
  KEY `cms_cmsplugin_52f8f330` (`plugin_type`),
  KEY `cms_cmsplugin_2a8f42e8` (`level`),
  KEY `cms_cmsplugin_42b06ff6` (`lft`),
  KEY `cms_cmsplugin_6eabc1a6` (`rght`),
  KEY `cms_cmsplugin_102f80d8` (`tree_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (1,1,NULL,0,'en','TextPlugin','2012-01-28 07:23:27',0,1,2,1),(2,2,NULL,0,'en','TextPlugin','2012-01-28 07:24:41',0,1,2,2),(3,3,NULL,0,'en','TextPlugin','2012-01-28 07:25:49',0,1,2,3),(4,5,NULL,0,'en','TextPlugin','2012-01-28 07:26:28',0,1,2,4),(5,7,NULL,0,'en','TextPlugin','2012-01-28 07:27:26',0,1,2,5);
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_moderate` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_403f60f` (`user_id`),
  KEY `cms_globalpagepermission_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `globalpagepermission_id` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermission_sites_a21423f` (`globalpagepermission_id`),
  KEY `cms_globalpagepermission_sites_6223029` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(70) NOT NULL,
  `changed_by` varchar(70) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publication_end_date` datetime DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `template` varchar(100) NOT NULL,
  `site_id` int(11) NOT NULL,
  `moderator_state` smallint(6) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `publisher_state` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_63f17a16` (`parent_id`),
  KEY `cms_page_1199bb9e` (`publication_date`),
  KEY `cms_page_5dde019c` (`publication_end_date`),
  KEY `cms_page_3c0ea264` (`in_navigation`),
  KEY `cms_page_455d889d` (`soft_root`),
  KEY `cms_page_b56116b` (`reverse_id`),
  KEY `cms_page_267392ec` (`navigation_extenders`),
  KEY `cms_page_6223029` (`site_id`),
  KEY `cms_page_2a8f42e8` (`level`),
  KEY `cms_page_42b06ff6` (`lft`),
  KEY `cms_page_6eabc1a6` (`rght`),
  KEY `cms_page_102f80d8` (`tree_id`),
  KEY `cms_page_36f698d1` (`limit_visibility_in_menu`),
  KEY `cms_page_16d2d3fa` (`publisher_is_draft`),
  KEY `cms_page_5ffeb0a6` (`publisher_state`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'aleksey','aleksey',NULL,'2012-01-28 07:22:00','2012-01-28 07:25:23','2012-01-28 07:25:23',NULL,1,0,NULL,'',1,'home.html',1,0,0,1,2,1,0,1,1,NULL,1),(2,'aleksey','aleksey',NULL,'2012-01-28 07:22:13','2012-01-28 07:26:20','2012-01-28 07:25:28',NULL,1,0,NULL,'',1,'template_main.html',1,0,0,1,2,2,1,1,1,NULL,1),(3,'aleksey','aleksey',NULL,'2012-01-28 07:22:28','2012-01-28 07:27:20','2012-01-28 07:25:29',NULL,1,0,NULL,'',1,'template_1.html',1,0,0,1,2,3,1,1,1,NULL,1),(4,'aleksey','aleksey',NULL,'2012-01-28 07:22:37','2012-01-28 07:27:53','2012-01-28 07:25:31',NULL,1,0,NULL,'',1,'template_1.html',1,0,0,1,2,4,1,1,1,NULL,1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholders_32d04bc7` (`page_id`),
  KEY `cms_page_placeholders_3e35d7b0` (`placeholder_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,4,7),(8,4,8);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagemoderator`
--

DROP TABLE IF EXISTS `cms_pagemoderator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagemoderator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `moderate_page` tinyint(1) NOT NULL,
  `moderate_children` tinyint(1) NOT NULL,
  `moderate_descendants` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagemoderator_32d04bc7` (`page_id`),
  KEY `cms_pagemoderator_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagemoderator`
--

LOCK TABLES `cms_pagemoderator` WRITE;
/*!40000 ALTER TABLE `cms_pagemoderator` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagemoderator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagemoderatorstate`
--

DROP TABLE IF EXISTS `cms_pagemoderatorstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagemoderatorstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `action` varchar(3) DEFAULT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagemoderatorstate_32d04bc7` (`page_id`),
  KEY `cms_pagemoderatorstate_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagemoderatorstate`
--

LOCK TABLES `cms_pagemoderatorstate` WRITE;
/*!40000 ALTER TABLE `cms_pagemoderatorstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagemoderatorstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_moderate` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_403f60f` (`user_id`),
  KEY `cms_pagepermission_425ae3c4` (`group_id`),
  KEY `cms_pagepermission_32d04bc7` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_4a21cf42` (`created_by_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_4a21cf42` (`created_by_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(50) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_400badfd` (`slot`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'base_content',NULL),(2,'home_content',NULL),(3,'main_content1',NULL),(4,'base_content',NULL),(5,'template_1_content',NULL),(6,'base_content',NULL),(7,'template_1_content',NULL),(8,'base_content',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `redirect` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language` (`language`,`page_id`),
  KEY `cms_title_75853655` (`language`),
  KEY `cms_title_56ae2a2a` (`slug`),
  KEY `cms_title_6a8a34e2` (`path`),
  KEY `cms_title_3d964e2e` (`has_url_overwrite`),
  KEY `cms_title_23b1fc68` (`application_urls`),
  KEY `cms_title_32d04bc7` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','Home','','home','',0,'','','','','',1,'2012-01-28 07:22:00'),(2,'en','Main','','main','main',0,'','','','','',2,'2012-01-28 07:22:13'),(3,'en','Contact US','','contactus','contactus',0,'','','','','',3,'2012-01-28 07:22:28'),(4,'en','Tutorial','','tutorial','tutorial',0,'','','','','',4,'2012-01-28 07:22:37');
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_file`
--

DROP TABLE IF EXISTS `cmsplugin_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_file`
--

LOCK TABLES `cmsplugin_file` WRITE;
/*!40000 ALTER TABLE `cmsplugin_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_flash`
--

DROP TABLE IF EXISTS `cmsplugin_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_flash` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_flash`
--

LOCK TABLES `cmsplugin_flash` WRITE;
/*!40000 ALTER TABLE `cmsplugin_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_googlemap`
--

DROP TABLE IF EXISTS `cmsplugin_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `city` varchar(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `route_planer_title` varchar(150) DEFAULT NULL,
  `route_planer` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_googlemap`
--

LOCK TABLES `cmsplugin_googlemap` WRITE;
/*!40000 ALTER TABLE `cmsplugin_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_link`
--

DROP TABLE IF EXISTS `cmsplugin_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `mailto` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_link_37c07cc5` (`page_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_link`
--

LOCK TABLES `cmsplugin_link` WRITE;
/*!40000 ALTER TABLE `cmsplugin_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_picture`
--

DROP TABLE IF EXISTS `cmsplugin_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `longdesc` varchar(255) DEFAULT NULL,
  `float` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_picture_37c07cc5` (`page_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_picture`
--

LOCK TABLES `cmsplugin_picture` WRITE;
/*!40000 ALTER TABLE `cmsplugin_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_snippetptr`
--

DROP TABLE IF EXISTS `cmsplugin_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_snippetptr_37e31bc4` (`snippet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_snippetptr`
--

LOCK TABLES `cmsplugin_snippetptr` WRITE;
/*!40000 ALTER TABLE `cmsplugin_snippetptr` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_teaser`
--

DROP TABLE IF EXISTS `cmsplugin_teaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_teaser` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_teaser_37c07cc5` (`page_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_teaser`
--

LOCK TABLES `cmsplugin_teaser` WRITE;
/*!40000 ALTER TABLE `cmsplugin_teaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_teaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_text`
--

DROP TABLE IF EXISTS `cmsplugin_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_text`
--

LOCK TABLES `cmsplugin_text` WRITE;
/*!40000 ALTER TABLE `cmsplugin_text` DISABLE KEYS */;
INSERT INTO `cmsplugin_text` VALUES (1,'<h1>Welcome!!!</h1><h2>This is Home page of Officesecy.org</h2>'),(2,'<p><strong><em>This contents only shows to logged in Users</em></strong></p>'),(3,'<h1>This is Main Page of Site</h1><blockquote><h3>You can edit profile/logout</h3></blockquote>'),(4,'<h1>This is Contact US Page</h1><blockquote><h3>Please contact us at support@officesecy.org</h3></blockquote>'),(5,'<h1>This is Tutorial Page</h1><blockquote><h3>Have Fun!!!</h3></blockquote>');
/*!40000 ALTER TABLE `cmsplugin_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_twitterrecententries`
--

DROP TABLE IF EXISTS `cmsplugin_twitterrecententries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_twitterrecententries` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `twitter_user` varchar(75) NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  `link_hint` varchar(75) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_twitterrecententries`
--

LOCK TABLES `cmsplugin_twitterrecententries` WRITE;
/*!40000 ALTER TABLE `cmsplugin_twitterrecententries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_twitterrecententries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_twittersearch`
--

DROP TABLE IF EXISTS `cmsplugin_twittersearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_twittersearch` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `query` varchar(200) NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_twittersearch`
--

LOCK TABLES `cmsplugin_twittersearch` WRITE;
/*!40000 ALTER TABLE `cmsplugin_twittersearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_twittersearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_video`
--

DROP TABLE IF EXISTS `cmsplugin_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_video` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `movie` varchar(100) DEFAULT NULL,
  `movie_url` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `width` smallint(5) unsigned NOT NULL,
  `height` smallint(5) unsigned NOT NULL,
  `auto_play` tinyint(1) NOT NULL,
  `auto_hide` tinyint(1) NOT NULL,
  `fullscreen` tinyint(1) NOT NULL,
  `loop` tinyint(1) NOT NULL,
  `bgcolor` varchar(6) NOT NULL,
  `textcolor` varchar(6) NOT NULL,
  `seekbarcolor` varchar(6) NOT NULL,
  `seekbarbgcolor` varchar(6) NOT NULL,
  `loadingbarcolor` varchar(6) NOT NULL,
  `buttonoutcolor` varchar(6) NOT NULL,
  `buttonovercolor` varchar(6) NOT NULL,
  `buttonhighlightcolor` varchar(6) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_video`
--

LOCK TABLES `cmsplugin_video` WRITE;
/*!40000 ALTER TABLE `cmsplugin_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-01-28 07:22:00',1,11,'1','Home',1,''),(2,'2012-01-28 07:22:13',1,11,'2','Main',1,''),(3,'2012-01-28 07:22:28',1,11,'3','Contact US',1,''),(4,'2012-01-28 07:22:37',1,11,'4','Tutorial',1,''),(5,'2012-01-28 07:25:23',1,11,'1','Home',2,'Changed published, in_navigation, limit_visibility_in_menu, language and moderator_state.'),(6,'2012-01-28 07:26:20',1,11,'2','Main',2,'Changed login_required, limit_visibility_in_menu, language and moderator_state.'),(7,'2012-01-28 07:27:20',1,11,'3','Contact US',2,'Changed login_required, limit_visibility_in_menu, language and moderator_state.'),(8,'2012-01-28 07:27:53',1,11,'4','Tutorial',2,'Changed login_required, limit_visibility_in_menu, language and moderator_state.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'placeholder','cms','placeholder'),(10,'cms plugin','cms','cmsplugin'),(11,'page','cms','page'),(12,'PageModerator','cms','pagemoderator'),(13,'Page moderator state','cms','pagemoderatorstate'),(14,'Page global permission','cms','globalpagepermission'),(15,'Page permission','cms','pagepermission'),(16,'User (page)','cms','pageuser'),(17,'User group (page)','cms','pageusergroup'),(18,'title','cms','title'),(19,'cache key','menus','cachekey'),(20,'file','file','file'),(21,'flash','flash','flash'),(22,'google map','googlemap','googlemap'),(23,'link','link','link'),(24,'picture','picture','picture'),(25,'Snippet','snippet','snippet'),(26,'Snippet','snippet','snippetptr'),(27,'teaser','teaser','teaser'),(28,'text','text','text'),(29,'video','video','video'),(30,'twitter recent entries','twitter','twitterrecententries'),(31,'twitter search','twitter','twittersearch'),(32,'profile','logic','profile'),(33,'migration history','south','migrationhistory');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bf1d49cfcfbe2a8c05a0e0c7ae6655ab','OTQ5ZTBmYmZmNWQyNWEwZWQ5YzJiNDc5YTI0ZjU0NGI0YjAwODFlODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-02-11 07:45:48');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logic_profile`
--

DROP TABLE IF EXISTS `logic_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logic_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(4) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logic_profile`
--

LOCK TABLES `logic_profile` WRITE;
/*!40000 ALTER TABLE `logic_profile` DISABLE KEYS */;
INSERT INTO `logic_profile` VALUES (1,2,'Cali','USA','California','California'),(2,1,'Mr','Ukraine','Kiev','Kiev');
/*!40000 ALTER TABLE `logic_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (1,'en-us',1,'cms-menu_nodes_en-us_1'),(2,'en-us',1,'cms-menu_nodes_en-us_1_1_user'),(3,'en-us',1,'cms-menu_nodes_en-us_1_2_user'),(4,'en-us',1,'cms-menu_nodes_en-us_1_1_user'),(5,'en-us',1,'cms-menu_nodes_en-us_1_1_user'),(6,'en-us',1,'cms-menu_nodes_en-us_1_1_user'),(7,'en-us',1,'cms-menu_nodes_en-us_1');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippet_snippet`
--

DROP TABLE IF EXISTS `snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippet_snippet`
--

LOCK TABLES `snippet_snippet` WRITE;
/*!40000 ALTER TABLE `snippet_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'cms','0001_initial','2012-01-28 13:20:51'),(2,'cms','0002_auto_start','2012-01-28 13:20:51'),(3,'cms','0003_remove_placeholder','2012-01-28 13:20:51'),(4,'cms','0004_textobjects','2012-01-28 13:20:51'),(5,'cms','0005_mptt_added_to_plugins','2012-01-28 13:20:51'),(6,'text','0001_initial','2012-01-28 13:20:51'),(7,'text','0002_freeze','2012-01-28 13:20:51'),(8,'cms','0006_apphook','2012-01-28 13:20:51'),(9,'cms','0007_apphook_longer','2012-01-28 13:20:51'),(10,'cms','0008_redirects','2012-01-28 13:20:51'),(11,'cms','0009_added_meta_fields','2012-01-28 13:20:51'),(12,'cms','0010_5char_language','2012-01-28 13:20:51'),(13,'cms','0011_title_overwrites','2012-01-28 13:20:51'),(14,'cms','0012_publisher','2012-01-28 13:20:51'),(15,'text','0003_publisher','2012-01-28 13:20:51'),(16,'snippet','0001_initial','2012-01-28 13:20:51'),(17,'snippet','0002_publisher','2012-01-28 13:20:51'),(18,'picture','0001_initial','2012-01-28 13:20:51'),(19,'picture','0002_link_rename','2012-01-28 13:20:51'),(20,'picture','0003_freeze','2012-01-28 13:20:51'),(21,'picture','0004_publisher','2012-01-28 13:20:51'),(22,'link','0001_initial','2012-01-28 13:20:51'),(23,'link','0002_link_rename','2012-01-28 13:20:51'),(24,'link','0003_page_link','2012-01-28 13:20:51'),(25,'link','0004_larger_link_names','2012-01-28 13:20:51'),(26,'link','0005_publisher','2012-01-28 13:20:51'),(27,'googlemap','0001_initial','2012-01-28 13:20:51'),(28,'flash','0001_initial','2012-01-28 13:20:51'),(29,'flash','0002_freeze','2012-01-28 13:20:51'),(30,'flash','0003_publisher','2012-01-28 13:20:51'),(31,'file','0001_initial','2012-01-28 13:20:51'),(32,'file','0002_freeze','2012-01-28 13:20:51'),(33,'file','0003_publisher','2012-01-28 13:20:51'),(34,'cms','0013_site_copy','2012-01-28 13:20:51'),(35,'cms','0014_sites_removed','2012-01-28 13:20:51'),(36,'cms','0015_modified_by_added','2012-01-28 13:20:51'),(37,'cms','0016_author_copy','2012-01-28 13:20:51'),(38,'cms','0017_author_removed','2012-01-28 13:20:51'),(39,'cms','0018_site_permissions','2012-01-28 13:20:51'),(40,'cms','0019_public_table_renames','2012-01-28 13:20:51'),(41,'teaser','0001_initial','2012-01-28 13:20:51'),(42,'picture','0005_table_rename','2012-01-28 13:20:51'),(43,'picture','0006_float_added','2012-01-28 13:20:51'),(44,'cms','0020_advanced_permissions','2012-01-28 13:20:51'),(45,'cms','0021_publisher2','2012-01-28 13:20:51'),(46,'cms','0022_login_required_added','2012-01-28 13:20:51'),(47,'cms','0023_plugin_table_naming_function_changed','2012-01-28 13:20:51'),(48,'cms','0024_added_placeholder_model','2012-01-28 13:20:51'),(49,'cms','0025_placeholder_migration','2012-01-28 13:20:51'),(50,'cms','0026_finish_placeholder_migration','2012-01-28 13:20:51'),(51,'cms','0027_added_width_to_placeholder','2012-01-28 13:20:51'),(52,'cms','0028_limit_visibility_in_menu_step1of3','2012-01-28 13:20:51'),(53,'cms','0029_limit_visibility_in_menu_step2of3_data','2012-01-28 13:20:51'),(54,'cms','0030_limit_visibility_in_menu_step3of3','2012-01-28 13:20:51'),(55,'cms','0031_improved_language_code_support','2012-01-28 13:20:51'),(56,'cms','0032_auto__del_field_cmsplugin_publisher_public__del_field_cmsplugin_publis','2012-01-28 13:20:51'),(57,'cms','0033_auto__del_field_title_publisher_is_draft__del_field_title_publisher_st','2012-01-28 13:20:51'),(58,'cms','0034_auto__chg_field_title_language__chg_field_cmsplugin_language__add_fiel','2012-01-28 13:20:51'),(59,'cms','0035_auto__add_field_globalpagepermission_can_view__add_field_pagepermissio','2012-01-28 13:20:51'),(60,'menus','0001_initial','2012-01-28 13:20:51'),(61,'file','0004_table_rename','2012-01-28 13:20:51'),(62,'file','0005_publisher2','2012-01-28 13:20:51'),(63,'flash','0004_table_rename','2012-01-28 13:20:51'),(64,'flash','0005_publisher2','2012-01-28 13:20:51'),(65,'googlemap','0002_table_rename','2012-01-28 13:20:51'),(66,'googlemap','0003_address_unified','2012-01-28 13:20:51'),(67,'googlemap','0004_copy_address','2012-01-28 13:20:51'),(68,'googlemap','0005_delete_street','2012-01-28 13:20:51'),(69,'googlemap','0006_publisher2','2012-01-28 13:20:51'),(70,'googlemap','0007_latlng','2012-01-28 13:20:51'),(71,'googlemap','0008_routeplaner','2012-01-28 13:20:51'),(72,'googlemap','0009_routeplaner_title','2012-01-28 13:20:51'),(73,'link','0006_table_rename','2012-01-28 13:20:51'),(74,'link','0007_publisher2','2012-01-28 13:20:51'),(75,'link','0008_mailto','2012-01-28 13:20:51'),(76,'picture','0007_publisher2','2012-01-28 13:20:51'),(77,'picture','0008_longdesc_added','2012-01-28 13:20:51'),(78,'snippet','0003_table_rename','2012-01-28 13:20:51'),(79,'snippet','0004_publisher2','2012-01-28 13:20:51'),(80,'snippet','0005_template_added','2012-01-28 13:20:51'),(81,'teaser','0002_publisher2','2012-01-28 13:20:51'),(82,'text','0004_table_rename','2012-01-28 13:20:51'),(83,'text','0005_publisher2','2012-01-28 13:20:51'),(84,'text','0006_2_1_4_upgrade','2012-01-28 13:20:51'),(85,'video','0001_initial','2012-01-28 13:20:51'),(86,'video','0002_color_mute_controller','2012-01-28 13:20:51'),(87,'video','0003_newplayer_step1','2012-01-28 13:20:51'),(88,'video','0004_newplayer_step2','2012-01-28 13:20:51'),(89,'video','0005_newplayer_step3','2012-01-28 13:20:51'),(90,'video','0006_newplayer_step4','2012-01-28 13:20:51'),(91,'video','0007_newplayer_step5','2012-01-28 13:20:51'),(92,'twitter','0001_initial','2012-01-28 13:20:51'),(93,'twitter','0002_auto__add_twittersearch','2012-01-28 13:20:51');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-01-28 15:49:19
