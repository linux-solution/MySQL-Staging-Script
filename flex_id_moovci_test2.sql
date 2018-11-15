-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: flex_id_moovci_test
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `Debarrages20180209`
--

DROP TABLE IF EXISTS `Debarrages20180209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Debarrages20180209` (
  `tel` varchar(12) DEFAULT NULL,
  KEY `idxtel` (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Debarrages20180209`
--

LOCK TABLES `Debarrages20180209` WRITE;
/*!40000 ALTER TABLE `Debarrages20180209` DISABLE KEYS */;
/*!40000 ALTER TABLE `Debarrages20180209` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FlexTerminals`
--

DROP TABLE IF EXISTS `FlexTerminals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FlexTerminals` (
  `Telno` int(11) NOT NULL,
  `IMSI` varchar(50) DEFAULT NULL,
  `Description` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Telno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FlexTerminals`
--

LOCK TABLES `FlexTerminals` WRITE;
/*!40000 ALTER TABLE `FlexTerminals` DISABLE KEYS */;
/*!40000 ALTER TABLE `FlexTerminals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flex_NumerosBase`
--

DROP TABLE IF EXISTS `Flex_NumerosBase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Flex_NumerosBase` (
  `MSISDN` int(11) NOT NULL,
  `Statut` varchar(30) NOT NULL,
  `DateStatut` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flex_NumerosBase`
--

LOCK TABLES `Flex_NumerosBase` WRITE;
/*!40000 ALTER TABLE `Flex_NumerosBase` DISABLE KEYS */;
/*!40000 ALTER TABLE `Flex_NumerosBase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_object_identity_ancestors`
--

DROP TABLE IF EXISTS `acl_object_identity_ancestors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_object_identity_ancestors` (
  `object_identity_id` int(10) unsigned NOT NULL,
  `ancestor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  KEY `IDX_825DE299C671CEA1` (`ancestor_id`),
  CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_object_identity_ancestors`
--

LOCK TABLES `acl_object_identity_ancestors` WRITE;
/*!40000 ALTER TABLE `acl_object_identity_ancestors` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_object_identity_ancestors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_iddocs_images`
--

DROP TABLE IF EXISTS `core_iddocs_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_iddocs_images` (
  `iddoc_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`iddoc_id`,`image_id`),
  KEY `IDX_26733CDEEDEBE510` (`iddoc_id`),
  KEY `IDX_26733CDE3DA5256D` (`image_id`),
  CONSTRAINT `FK_26733CDE3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `oro_attachment_file` (`id`),
  CONSTRAINT `FK_26733CDEEDEBE510` FOREIGN KEY (`iddoc_id`) REFERENCES `core_id_document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_iddocs_images`
--

LOCK TABLES `core_iddocs_images` WRITE;
/*!40000 ALTER TABLE `core_iddocs_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_iddocs_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demarrage_massive_20180219`
--

DROP TABLE IF EXISTS `demarrage_massive_20180219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demarrage_massive_20180219` (
  `subscribe_phone` varchar(14) DEFAULT NULL,
  KEY `IDX_phone` (`subscribe_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demarrage_massive_20180219`
--

LOCK TABLES `demarrage_massive_20180219` WRITE;
/*!40000 ALTER TABLE `demarrage_massive_20180219` DISABLE KEYS */;
/*!40000 ALTER TABLE `demarrage_massive_20180219` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_address_type`
--

DROP TABLE IF EXISTS `oro_address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_address_type` (
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `UNIQ_8B3E52E3EA750E8` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_address_type`
--

LOCK TABLES `oro_address_type` WRITE;
/*!40000 ALTER TABLE `oro_address_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_attribute_family_label`
--

DROP TABLE IF EXISTS `oro_attribute_family_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attribute_family_label` (
  `attribute_family_id` int(11) NOT NULL,
  `localized_value_id` int(11) NOT NULL,
  PRIMARY KEY (`attribute_family_id`,`localized_value_id`),
  UNIQUE KEY `UNIQ_FFCBDC82EB576E89` (`localized_value_id`),
  KEY `IDX_FFCBDC827E7F26EC` (`attribute_family_id`),
  CONSTRAINT `FK_FFCBDC827E7F26EC` FOREIGN KEY (`attribute_family_id`) REFERENCES `oro_attribute_family` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_FFCBDC82EB576E89` FOREIGN KEY (`localized_value_id`) REFERENCES `oro_fallback_localization_val` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_attribute_family_label`
--

LOCK TABLES `oro_attribute_family_label` WRITE;
/*!40000 ALTER TABLE `oro_attribute_family_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_attribute_family_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_attribute_group_label`
--

DROP TABLE IF EXISTS `oro_attribute_group_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attribute_group_label` (
  `attribute_group_id` int(11) NOT NULL,
  `localized_value_id` int(11) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`localized_value_id`),
  UNIQUE KEY `UNIQ_9292F17AEB576E89` (`localized_value_id`),
  KEY `IDX_9292F17A62D643B7` (`attribute_group_id`),
  CONSTRAINT `FK_9292F17A62D643B7` FOREIGN KEY (`attribute_group_id`) REFERENCES `oro_attribute_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_9292F17AEB576E89` FOREIGN KEY (`localized_value_id`) REFERENCES `oro_fallback_localization_val` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_attribute_group_label`
--

LOCK TABLES `oro_attribute_group_label` WRITE;
/*!40000 ALTER TABLE `oro_attribute_group_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_attribute_group_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_dictionary_country`
--

DROP TABLE IF EXISTS `oro_dictionary_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dictionary_country` (
  `iso2_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso3_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`iso2_code`),
  KEY `country_name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_dictionary_country`
--

LOCK TABLES `oro_dictionary_country` WRITE;
/*!40000 ALTER TABLE `oro_dictionary_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_dictionary_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_dictionary_region`
--

DROP TABLE IF EXISTS `oro_dictionary_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dictionary_region` (
  `combined_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`combined_code`),
  KEY `IDX_8C71325AF026BB7C` (`country_code`),
  KEY `region_name_idx` (`name`),
  CONSTRAINT `FK_8C71325AF026BB7C` FOREIGN KEY (`country_code`) REFERENCES `oro_dictionary_country` (`iso2_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_dictionary_region`
--

LOCK TABLES `oro_dictionary_region` WRITE;
/*!40000 ALTER TABLE `oro_dictionary_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_dictionary_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_email_mailbox_roles`
--

DROP TABLE IF EXISTS `oro_email_mailbox_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_mailbox_roles` (
  `mailbox_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`mailbox_id`,`role_id`),
  KEY `IDX_5458E87466EC35CC` (`mailbox_id`),
  KEY `IDX_5458E874D60322AC` (`role_id`),
  CONSTRAINT `FK_5458E87466EC35CC` FOREIGN KEY (`mailbox_id`) REFERENCES `oro_email_mailbox` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5458E874D60322AC` FOREIGN KEY (`role_id`) REFERENCES `oro_access_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_email_mailbox_roles`
--

LOCK TABLES `oro_email_mailbox_roles` WRITE;
/*!40000 ALTER TABLE `oro_email_mailbox_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_email_mailbox_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_email_mailbox_users`
--

DROP TABLE IF EXISTS `oro_email_mailbox_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_mailbox_users` (
  `mailbox_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`mailbox_id`,`user_id`),
  KEY `IDX_F6E5635A66EC35CC` (`mailbox_id`),
  KEY `IDX_F6E5635AA76ED395` (`user_id`),
  CONSTRAINT `FK_F6E5635A66EC35CC` FOREIGN KEY (`mailbox_id`) REFERENCES `oro_email_mailbox` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F6E5635AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_email_mailbox_users`
--

LOCK TABLES `oro_email_mailbox_users` WRITE;
/*!40000 ALTER TABLE `oro_email_mailbox_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_email_mailbox_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_email_user_folders`
--

DROP TABLE IF EXISTS `oro_email_user_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_user_folders` (
  `email_user_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  PRIMARY KEY (`email_user_id`,`folder_id`),
  KEY `IDX_201746D71AAEBB5A` (`email_user_id`),
  KEY `IDX_201746D7162CB942` (`folder_id`),
  CONSTRAINT `FK_201746D7162CB942` FOREIGN KEY (`folder_id`) REFERENCES `oro_email_folder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_201746D71AAEBB5A` FOREIGN KEY (`email_user_id`) REFERENCES `oro_email_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_email_user_folders`
--

LOCK TABLES `oro_email_user_folders` WRITE;
/*!40000 ALTER TABLE `oro_email_user_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_email_user_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_grid_appearance_type`
--

DROP TABLE IF EXISTS `oro_grid_appearance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_grid_appearance_type` (
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_grid_appearance_type`
--

LOCK TABLES `oro_grid_appearance_type` WRITE;
/*!40000 ALTER TABLE `oro_grid_appearance_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_grid_appearance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_imap_wrong_creds_origin`
--

DROP TABLE IF EXISTS `oro_imap_wrong_creds_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_imap_wrong_creds_origin` (
  `origin_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`origin_id`),
  KEY `IDX_A1E0E3DB7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_imap_wrong_creds_origin`
--

LOCK TABLES `oro_imap_wrong_creds_origin` WRITE;
/*!40000 ALTER TABLE `oro_imap_wrong_creds_origin` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_imap_wrong_creds_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_localization_title`
--

DROP TABLE IF EXISTS `oro_localization_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_localization_title` (
  `localization_id` int(11) NOT NULL,
  `localized_value_id` int(11) NOT NULL,
  PRIMARY KEY (`localization_id`,`localized_value_id`),
  UNIQUE KEY `UNIQ_ACB99C0AEB576E89` (`localized_value_id`),
  KEY `IDX_ACB99C0A6A2856C7` (`localization_id`),
  CONSTRAINT `FK_ACB99C0A6A2856C7` FOREIGN KEY (`localization_id`) REFERENCES `oro_localization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACB99C0AEB576E89` FOREIGN KEY (`localized_value_id`) REFERENCES `oro_fallback_localization_val` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_localization_title`
--

LOCK TABLES `oro_localization_title` WRITE;
/*!40000 ALTER TABLE `oro_localization_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_localization_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_message_queue_job_unique`
--

DROP TABLE IF EXISTS `oro_message_queue_job_unique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_message_queue_job_unique` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UNIQ_20837C5E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_message_queue_job_unique`
--

LOCK TABLES `oro_message_queue_job_unique` WRITE;
/*!40000 ALTER TABLE `oro_message_queue_job_unique` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_message_queue_job_unique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_navigation_menu_upd_descr`
--

DROP TABLE IF EXISTS `oro_navigation_menu_upd_descr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_menu_upd_descr` (
  `menu_update_id` int(11) NOT NULL,
  `localized_value_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_update_id`,`localized_value_id`),
  UNIQUE KEY `UNIQ_8F023C02EB576E89` (`localized_value_id`),
  KEY `IDX_8F023C02CCD68D85` (`menu_update_id`),
  CONSTRAINT `FK_8F023C02CCD68D85` FOREIGN KEY (`menu_update_id`) REFERENCES `oro_navigation_menu_upd` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8F023C02EB576E89` FOREIGN KEY (`localized_value_id`) REFERENCES `oro_fallback_localization_val` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_navigation_menu_upd_descr`
--

LOCK TABLES `oro_navigation_menu_upd_descr` WRITE;
/*!40000 ALTER TABLE `oro_navigation_menu_upd_descr` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_navigation_menu_upd_descr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_navigation_menu_upd_title`
--

DROP TABLE IF EXISTS `oro_navigation_menu_upd_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_menu_upd_title` (
  `menu_update_id` int(11) NOT NULL,
  `localized_value_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_update_id`,`localized_value_id`),
  UNIQUE KEY `UNIQ_A4309BB5EB576E89` (`localized_value_id`),
  KEY `IDX_A4309BB5CCD68D85` (`menu_update_id`),
  CONSTRAINT `FK_A4309BB5CCD68D85` FOREIGN KEY (`menu_update_id`) REFERENCES `oro_navigation_menu_upd` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A4309BB5EB576E89` FOREIGN KEY (`localized_value_id`) REFERENCES `oro_fallback_localization_val` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_navigation_menu_upd_title`
--

LOCK TABLES `oro_navigation_menu_upd_title` WRITE;
/*!40000 ALTER TABLE `oro_navigation_menu_upd_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_navigation_menu_upd_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_notification_recip_group`
--

DROP TABLE IF EXISTS `oro_notification_recip_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_recip_group` (
  `recipient_list_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`recipient_list_id`,`group_id`),
  KEY `IDX_14F109F12B9E3E89` (`recipient_list_id`),
  KEY `IDX_14F109F1FE54D947` (`group_id`),
  CONSTRAINT `FK_14F109F12B9E3E89` FOREIGN KEY (`recipient_list_id`) REFERENCES `oro_notification_recip_list` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_14F109F1FE54D947` FOREIGN KEY (`group_id`) REFERENCES `oro_access_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_notification_recip_group`
--

LOCK TABLES `oro_notification_recip_group` WRITE;
/*!40000 ALTER TABLE `oro_notification_recip_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_notification_recip_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_notification_recip_user`
--

DROP TABLE IF EXISTS `oro_notification_recip_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_recip_user` (
  `recipient_list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`recipient_list_id`,`user_id`),
  KEY `IDX_606646402B9E3E89` (`recipient_list_id`),
  KEY `IDX_60664640A76ED395` (`user_id`),
  CONSTRAINT `FK_606646402B9E3E89` FOREIGN KEY (`recipient_list_id`) REFERENCES `oro_notification_recip_list` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_60664640A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_notification_recip_user`
--

LOCK TABLES `oro_notification_recip_user` WRITE;
/*!40000 ALTER TABLE `oro_notification_recip_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_notification_recip_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_process_definition`
--

DROP TABLE IF EXISTS `oro_process_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_process_definition` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `related_entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `execution_order` smallint(6) NOT NULL,
  `exclude_definitions` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  `actions_configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pre_conditions_configuration` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_process_definition`
--

LOCK TABLES `oro_process_definition` WRITE;
/*!40000 ALTER TABLE `oro_process_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_process_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_rel_265353702da17977bb66fd`
--

DROP TABLE IF EXISTS `oro_rel_265353702da17977bb66fd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_rel_265353702da17977bb66fd` (
  `email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`email_id`,`user_id`),
  KEY `IDX_DB1A822CA832C1C9` (`email_id`),
  KEY `IDX_DB1A822CA76ED395` (`user_id`),
  CONSTRAINT `FK_DB1A822CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DB1A822CA832C1C9` FOREIGN KEY (`email_id`) REFERENCES `oro_email` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_rel_265353702da17977bb66fd`
--

LOCK TABLES `oro_rel_265353702da17977bb66fd` WRITE;
/*!40000 ALTER TABLE `oro_rel_265353702da17977bb66fd` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_rel_265353702da17977bb66fd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_rel_c3990ba62da17977270bd6`
--

DROP TABLE IF EXISTS `oro_rel_c3990ba62da17977270bd6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_rel_c3990ba62da17977270bd6` (
  `activitylist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`activitylist_id`,`user_id`),
  KEY `IDX_1902CE2996EB1108` (`activitylist_id`),
  KEY `IDX_1902CE29A76ED395` (`user_id`),
  CONSTRAINT `FK_1902CE2996EB1108` FOREIGN KEY (`activitylist_id`) REFERENCES `oro_activity_list` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1902CE29A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_rel_c3990ba62da17977270bd6`
--

LOCK TABLES `oro_rel_c3990ba62da17977270bd6` WRITE;
/*!40000 ALTER TABLE `oro_rel_c3990ba62da17977270bd6` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_rel_c3990ba62da17977270bd6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_report_type`
--

DROP TABLE IF EXISTS `oro_report_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_report_type` (
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `uniq_397d3359ea750e8` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_report_type`
--

LOCK TABLES `oro_report_type` WRITE;
/*!40000 ALTER TABLE `oro_report_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_report_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_security_perm_apply_entity`
--

DROP TABLE IF EXISTS `oro_security_perm_apply_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_security_perm_apply_entity` (
  `permission_id` int(11) NOT NULL,
  `permission_entity_id` int(11) NOT NULL,
  PRIMARY KEY (`permission_id`,`permission_entity_id`),
  KEY `IDX_6CEC2164A3D25331` (`permission_entity_id`),
  KEY `IDX_6CEC2164FED90CCA` (`permission_id`),
  CONSTRAINT `FK_6CEC2164A3D25331` FOREIGN KEY (`permission_entity_id`) REFERENCES `oro_security_permission_entity` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6CEC2164FED90CCA` FOREIGN KEY (`permission_id`) REFERENCES `oro_security_permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_security_perm_apply_entity`
--

LOCK TABLES `oro_security_perm_apply_entity` WRITE;
/*!40000 ALTER TABLE `oro_security_perm_apply_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_security_perm_apply_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_security_perm_excl_entity`
--

DROP TABLE IF EXISTS `oro_security_perm_excl_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_security_perm_excl_entity` (
  `permission_id` int(11) NOT NULL,
  `permission_entity_id` int(11) NOT NULL,
  PRIMARY KEY (`permission_id`,`permission_entity_id`),
  KEY `IDX_7463ACCA3D25331` (`permission_entity_id`),
  KEY `IDX_7463ACCFED90CCA` (`permission_id`),
  CONSTRAINT `FK_7463ACCA3D25331` FOREIGN KEY (`permission_entity_id`) REFERENCES `oro_security_permission_entity` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7463ACCFED90CCA` FOREIGN KEY (`permission_id`) REFERENCES `oro_security_permission` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_security_perm_excl_entity`
--

LOCK TABLES `oro_security_perm_excl_entity` WRITE;
/*!40000 ALTER TABLE `oro_security_perm_excl_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_security_perm_excl_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_segment_type`
--

DROP TABLE IF EXISTS `oro_segment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_segment_type` (
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `uniq_29d10555ea750e8` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_segment_type`
--

LOCK TABLES `oro_segment_type` WRITE;
/*!40000 ALTER TABLE `oro_segment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_segment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_user_access_group`
--

DROP TABLE IF EXISTS `oro_user_access_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_access_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_EC003EF3A76ED395` (`user_id`),
  KEY `IDX_EC003EF3FE54D947` (`group_id`),
  CONSTRAINT `FK_EC003EF3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EC003EF3FE54D947` FOREIGN KEY (`group_id`) REFERENCES `oro_access_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_user_access_group`
--

LOCK TABLES `oro_user_access_group` WRITE;
/*!40000 ALTER TABLE `oro_user_access_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_user_access_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_user_access_group_role`
--

DROP TABLE IF EXISTS `oro_user_access_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_access_group_role` (
  `group_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`role_id`),
  KEY `IDX_E7E7E38EFE54D947` (`group_id`),
  KEY `IDX_E7E7E38ED60322AC` (`role_id`),
  CONSTRAINT `FK_E7E7E38ED60322AC` FOREIGN KEY (`role_id`) REFERENCES `oro_access_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E7E7E38EFE54D947` FOREIGN KEY (`group_id`) REFERENCES `oro_access_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_user_access_group_role`
--

LOCK TABLES `oro_user_access_group_role` WRITE;
/*!40000 ALTER TABLE `oro_user_access_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_user_access_group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_user_access_role`
--

DROP TABLE IF EXISTS `oro_user_access_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_access_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_290571BEA76ED395` (`user_id`),
  KEY `IDX_290571BED60322AC` (`role_id`),
  CONSTRAINT `FK_290571BEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_290571BED60322AC` FOREIGN KEY (`role_id`) REFERENCES `oro_access_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_user_access_role`
--

LOCK TABLES `oro_user_access_role` WRITE;
/*!40000 ALTER TABLE `oro_user_access_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_user_access_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_user_business_unit`
--

DROP TABLE IF EXISTS `oro_user_business_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_business_unit` (
  `user_id` int(11) NOT NULL,
  `business_unit_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`business_unit_id`),
  KEY `IDX_B190CE8FA76ED395` (`user_id`),
  KEY `IDX_B190CE8FA58ECB40` (`business_unit_id`),
  CONSTRAINT `FK_B190CE8FA58ECB40` FOREIGN KEY (`business_unit_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B190CE8FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_user_business_unit`
--

LOCK TABLES `oro_user_business_unit` WRITE;
/*!40000 ALTER TABLE `oro_user_business_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_user_business_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_user_organization`
--

DROP TABLE IF EXISTS `oro_user_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_organization` (
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`organization_id`),
  KEY `IDX_A9BB6519A76ED395` (`user_id`),
  KEY `IDX_A9BB651932C8A3DE` (`organization_id`),
  CONSTRAINT `FK_A9BB651932C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A9BB6519A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_user_organization`
--

LOCK TABLES `oro_user_organization` WRITE;
/*!40000 ALTER TABLE `oro_user_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_user_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_workflow_definition`
--

DROP TABLE IF EXISTS `oro_workflow_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_definition` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_step_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `related_entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_attribute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `steps_display_ordered` tinyint(1) NOT NULL,
  `system` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `exclusive_active_groups` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  `exclusive_record_groups` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applications` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  PRIMARY KEY (`name`),
  KEY `idx_6f737c368377424f` (`start_step_id`),
  CONSTRAINT `FK_6F737C368377424F` FOREIGN KEY (`start_step_id`) REFERENCES `oro_workflow_step` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_workflow_definition`
--

LOCK TABLES `oro_workflow_definition` WRITE;
/*!40000 ALTER TABLE `oro_workflow_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_workflow_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oro_workflow_scopes`
--

DROP TABLE IF EXISTS `oro_workflow_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_scopes` (
  `workflow_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` int(11) NOT NULL,
  PRIMARY KEY (`workflow_name`,`scope_id`),
  KEY `IDX_3F71ABC7682B5931` (`scope_id`),
  KEY `IDX_3F71ABC71BBC6E3D` (`workflow_name`),
  CONSTRAINT `FK_3F71ABC71BBC6E3D` FOREIGN KEY (`workflow_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_3F71ABC7682B5931` FOREIGN KEY (`scope_id`) REFERENCES `oro_scope` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oro_workflow_scopes`
--

LOCK TABLES `oro_workflow_scopes` WRITE;
/*!40000 ALTER TABLE `oro_workflow_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oro_workflow_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnes_personnesmorale`
--

DROP TABLE IF EXISTS `personnes_personnesmorale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnes_personnesmorale` (
  `personne_id` int(11) NOT NULL,
  `personneMorale_id` int(11) NOT NULL,
  PRIMARY KEY (`personne_id`,`personneMorale_id`),
  KEY `IDX_AE371B97A21BD112` (`personne_id`),
  KEY `IDX_AE371B975C689A6E` (`personneMorale_id`),
  CONSTRAINT `FK_AE371B975C689A6E` FOREIGN KEY (`personneMorale_id`) REFERENCES `core_personne_morale` (`id`),
  CONSTRAINT `FK_AE371B97A21BD112` FOREIGN KEY (`personne_id`) REFERENCES `core_personne` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnes_personnesmorale`
--

LOCK TABLES `personnes_personnesmorale` WRITE;
/*!40000 ALTER TABLE `personnes_personnesmorale` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnes_personnesmorale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-11  7:17:39
