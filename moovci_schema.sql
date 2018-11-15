-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: flex_id_moovci_test
-- ------------------------------------------------------
-- Server version	5.7.21-enterprise-commercial-advanced-log

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
-- Current Database: `flex_id_moovci_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `flex_id_moovci_test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `flex_id_moovci_test`;

--
-- Table structure for table `AncienClients338`
--

DROP TABLE IF EXISTS `AncienClients338`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AncienClients338` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MSISDN` varchar(45) DEFAULT NULL,
  `NAME` varchar(85) DEFAULT NULL,
  `SURNAME` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_MSISDN` (`MSISDN`)
) ENGINE=InnoDB AUTO_INCREMENT=2685298 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `ZZ_PurgedIdentifications_01`
--

DROP TABLE IF EXISTS `ZZ_PurgedIdentifications_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZZ_PurgedIdentifications_01` (
  `id` int(11) NOT NULL DEFAULT '0',
  `iddoc_id` int(11) DEFAULT NULL,
  `buser_id` int(11) DEFAULT NULL,
  `bunit_id` int(11) DEFAULT NULL,
  `certifiedby_id` int(11) DEFAULT NULL,
  `personne_id` int(11) DEFAULT NULL,
  `identifiedAt` datetime NOT NULL,
  `expiredAt` datetime DEFAULT NULL,
  `subscriberPhone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isExpired` tinyint(1) DEFAULT NULL,
  `isBlocked` tinyint(1) DEFAULT NULL,
  `isCertified` tinyint(1) DEFAULT NULL,
  `isReidentified` tinyint(1) DEFAULT NULL,
  `certifiedAt` datetime DEFAULT NULL,
  `isFraude` tinyint(1) DEFAULT NULL,
  `isTemporary` tinyint(1) DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `unblock_id` int(11) DEFAULT NULL,
  `rejet_id` int(11) DEFAULT NULL,
  `statut_id` int(11) DEFAULT NULL,
  `completed_id` int(11) DEFAULT NULL,
  `isUnblocked` tinyint(1) DEFAULT NULL,
  `unblockAt` datetime DEFAULT NULL,
  `isRejet` tinyint(1) DEFAULT NULL,
  `rejetAt` datetime DEFAULT NULL,
  `statut` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `statutAt` datetime DEFAULT NULL,
  `isCompleted` tinyint(1) DEFAULT NULL,
  `completedAt` datetime DEFAULT NULL,
  `isInmodif` tinyint(1) DEFAULT NULL,
  `rejet_raison_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `conformedby_id` int(11) DEFAULT NULL,
  `isConformed` tinyint(1) DEFAULT NULL,
  `conformedAt` datetime DEFAULT NULL,
  `isSample` tinyint(1) DEFAULT NULL,
  `personneMorale_id` int(11) DEFAULT NULL,
  `version_apk` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `inmodif_id` int(11) DEFAULT NULL,
  `inmodifAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ZZ_PurgedRejets_Docs_01`
--

DROP TABLE IF EXISTS `ZZ_PurgedRejets_Docs_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ZZ_PurgedRejets_Docs_01` (
  `id` int(11) NOT NULL DEFAULT '0',
  `imagefront_id` int(11) DEFAULT NULL,
  `imageback_id` int(11) DEFAULT NULL,
  `idnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `issueDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `identifications` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `nbActiveIdentifications` smallint(6) DEFAULT NULL,
  `sexe` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secondaryPhone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `creationMode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `passportType` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `countrycode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `issueplace` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpername` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `professiondetail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagesubscriber_id` int(11) DEFAULT NULL,
  `imagemandat_id` int(11) DEFAULT NULL,
  `geographyadress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Personne physique',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `civilite` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `allImageIsFound` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_classes`
--

DROP TABLE IF EXISTS `acl_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_entries`
--

DROP TABLE IF EXISTS `acl_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned NOT NULL,
  `object_identity_id` int(10) unsigned DEFAULT NULL,
  `security_identity_id` int(10) unsigned NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) unsigned NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  KEY `IDX_46C8B806EA000B10` (`class_id`),
  KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  KEY `IDX_46C8B806DF9183C9` (`security_identity_id`),
  CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=871 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_object_identities`
--

DROP TABLE IF EXISTS `acl_object_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_object_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_object_identity_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`),
  CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `acl_security_identities`
--

DROP TABLE IF EXISTS `acl_security_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_security_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `akeneo_batch_job_execution`
--

DROP TABLE IF EXISTS `akeneo_batch_job_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akeneo_batch_job_execution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_instance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `exit_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exit_description` longtext COLLATE utf8_unicode_ci,
  `failure_exceptions` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `log_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_66BCFEA7593D6954` (`job_instance_id`),
  CONSTRAINT `FK_62738477593D6954` FOREIGN KEY (`job_instance_id`) REFERENCES `akeneo_batch_job_instance` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `akeneo_batch_job_instance`
--

DROP TABLE IF EXISTS `akeneo_batch_job_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akeneo_batch_job_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `connector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rawConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_35B1ECC777153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `akeneo_batch_mapping_field`
--

DROP TABLE IF EXISTS `akeneo_batch_mapping_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akeneo_batch_mapping_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_45243258126F525E` (`item_id`),
  CONSTRAINT `FK_41EB4888126F525E` FOREIGN KEY (`item_id`) REFERENCES `akeneo_batch_mapping_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `akeneo_batch_mapping_item`
--

DROP TABLE IF EXISTS `akeneo_batch_mapping_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akeneo_batch_mapping_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `akeneo_batch_step_execution`
--

DROP TABLE IF EXISTS `akeneo_batch_step_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akeneo_batch_step_execution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_execution_id` int(11) DEFAULT NULL,
  `step_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `read_count` int(11) NOT NULL,
  `write_count` int(11) NOT NULL,
  `filter_count` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `exit_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exit_description` longtext COLLATE utf8_unicode_ci,
  `terminate_only` tinyint(1) DEFAULT NULL,
  `failure_exceptions` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `errors` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `summary` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_3B30CD3C5871C06B` (`job_execution_id`),
  CONSTRAINT `FK_BDE7D0925871C06B` FOREIGN KEY (`job_execution_id`) REFERENCES `akeneo_batch_job_execution` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `akeneo_batch_warning`
--

DROP TABLE IF EXISTS `akeneo_batch_warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akeneo_batch_warning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step_execution_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` longtext COLLATE utf8_unicode_ci,
  `reason_parameters` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `item` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8EE0AE736C7DA296` (`step_execution_id`),
  CONSTRAINT `FK_8EE0AE736C7DA296` FOREIGN KEY (`step_execution_id`) REFERENCES `akeneo_batch_step_execution` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business_user_api`
--

DROP TABLE IF EXISTS `business_user_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_user_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4E23B712C912ED9D` (`api_key`),
  KEY `IDX_4E23B712A76ED395` (`user_id`),
  KEY `IDX_4E23B71232C8A3DE` (`organization_id`),
  CONSTRAINT `FK_4E23B71232C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_4E23B712A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_campaign`
--

DROP TABLE IF EXISTS `core_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `methodName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adjustmentAmountRelative` decimal(10,2) DEFAULT NULL,
  `transactionCurrency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originOperatorID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transactionType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transactionCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dedicatedAccountID` int(11) DEFAULT NULL,
  `dedicatedAdjustmentAmountRelative` decimal(10,2) DEFAULT NULL,
  `dedicatedAccountUnitType` int(11) DEFAULT NULL,
  `dedicatedExpiryDate` datetime DEFAULT NULL,
  `originNodeType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originHostName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originTransactionID` int(11) DEFAULT NULL,
  `originTimeStamp` datetime DEFAULT NULL,
  `subscriberNumberNAI` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `startAt` datetime DEFAULT NULL,
  `endAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_cug`
--

DROP TABLE IF EXISTS `core_cug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_cug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `personneMorale_id` int(11) DEFAULT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isCreatedIdent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9E1030F450FF010` (`telephone`),
  KEY `IDX_9E1030F5C689A6E` (`personneMorale_id`),
  CONSTRAINT `FK_9E1030F5C689A6E` FOREIGN KEY (`personneMorale_id`) REFERENCES `core_personne_morale` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=449525 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_fingerprint`
--

DROP TABLE IF EXISTS `core_fingerprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_fingerprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image1_id` int(11) DEFAULT NULL,
  `image2_id` int(11) DEFAULT NULL,
  `identification_id` int(11) DEFAULT NULL,
  `label1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `label2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2B3AEB20E5529553` (`image1_id`),
  KEY `IDX_2B3AEB20F7E73ABD` (`image2_id`),
  KEY `IDX_2B3AEB204DFE3A85` (`identification_id`),
  CONSTRAINT `FK_2B3AEB204DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`),
  CONSTRAINT `FK_2B3AEB20E5529553` FOREIGN KEY (`image1_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B3AEB20F7E73ABD` FOREIGN KEY (`image2_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=585794 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_hlr_data`
--

DROP TABLE IF EXISTS `core_hlr_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_hlr_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receivedAt` datetime NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  `isSuccess` tinyint(1) DEFAULT NULL,
  `ProcessingReturn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `identification_id` int(11) DEFAULT NULL,
  `nbAttempts` int(11) DEFAULT NULL,
  `subscriberPhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hlrType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isSendFile` tinyint(1) DEFAULT NULL,
  `isSendSms` tinyint(1) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `inProcess` tinyint(1) DEFAULT NULL,
  `hlrRsaType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processingRsa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E5E6ECFA4DFE3A85` (`identification_id`),
  KEY `idx_succ_data` (`isSuccess`,`createdAt`,`nbAttempts`),
  KEY `IDX_Tel` (`subscriberPhone`),
  KEY `idx_isSuccess_isNew` (`isSuccess`,`isNew`,`inProcess`,`nbAttempts`),
  CONSTRAINT `FK_E5E6ECFA4DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5628603 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_id_document`
--

DROP TABLE IF EXISTS `core_id_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_id_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagefront_id` int(11) DEFAULT NULL,
  `imageback_id` int(11) DEFAULT NULL,
  `idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `issueDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `identifications` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `nbActiveIdentifications` smallint(6) DEFAULT NULL,
  `sexe` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondaryPhone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `creationMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passportType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countrycode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issueplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professiondetail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bloodtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagesubscriber_id` int(11) DEFAULT NULL,
  `imagemandat_id` int(11) DEFAULT NULL,
  `geographyadress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customertype` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Personne physique',
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civilite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `allImageIsFound` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F83F8894BF45EBC` (`imagefront_id`),
  KEY `IDX_5F83F889BF7686BB` (`imageback_id`),
  KEY `IDX_5F83F889289CAB68` (`imagesubscriber_id`),
  KEY `IDX_5F83F88967B71650` (`imagemandat_id`),
  KEY `IDX_secondaryPhone` (`secondaryPhone`),
  KEY `IDX_DocType` (`documentType`),
  KEY `IDX_firstname` (`firstname`),
  KEY `IDX_lastname` (`lastname`),
  KEY `IDXIsNew` (`isNew`),
  KEY `IDXallImageisFound` (`allImageIsFound`),
  KEY `IDX_Type` (`type`(15)) USING BTREE,
  CONSTRAINT `FK_5F83F889289CAB68` FOREIGN KEY (`imagesubscriber_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F83F8894BF45EBC` FOREIGN KEY (`imagefront_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F83F88967B71650` FOREIGN KEY (`imagemandat_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F83F889BF7686BB` FOREIGN KEY (`imageback_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9108456 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `core_identification`
--

DROP TABLE IF EXISTS `core_identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_identification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddoc_id` int(11) DEFAULT NULL,
  `buser_id` int(11) DEFAULT NULL,
  `bunit_id` int(11) DEFAULT NULL,
  `certifiedby_id` int(11) DEFAULT NULL,
  `personne_id` int(11) DEFAULT NULL,
  `identifiedAt` datetime NOT NULL,
  `expiredAt` datetime DEFAULT NULL,
  `subscriberPhone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `isExpired` tinyint(1) DEFAULT NULL,
  `isBlocked` tinyint(1) DEFAULT NULL,
  `isCertified` tinyint(1) DEFAULT NULL,
  `isReidentified` tinyint(1) DEFAULT NULL,
  `certifiedAt` datetime DEFAULT NULL,
  `isFraude` tinyint(1) DEFAULT NULL,
  `isTemporary` tinyint(1) DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `unblock_id` int(11) DEFAULT NULL,
  `rejet_id` int(11) DEFAULT NULL,
  `statut_id` int(11) DEFAULT NULL,
  `completed_id` int(11) DEFAULT NULL,
  `isUnblocked` tinyint(1) DEFAULT NULL,
  `unblockAt` datetime DEFAULT NULL,
  `isRejet` tinyint(1) DEFAULT NULL,
  `rejetAt` datetime DEFAULT NULL,
  `statut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statutAt` datetime DEFAULT NULL,
  `isCompleted` tinyint(1) DEFAULT NULL,
  `completedAt` datetime DEFAULT NULL,
  `isInmodif` tinyint(1) DEFAULT NULL,
  `rejet_raison_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `conformedby_id` int(11) DEFAULT NULL,
  `isConformed` tinyint(1) DEFAULT NULL,
  `conformedAt` datetime DEFAULT NULL,
  `isSample` tinyint(1) DEFAULT NULL,
  `personneMorale_id` int(11) DEFAULT NULL,
  `version_apk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inmodif_id` int(11) DEFAULT NULL,
  `inmodifAt` datetime DEFAULT NULL,
  `nbAttemptsHlr` int(11) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `allImageIsFound` tinyint(1) DEFAULT NULL,
  `recycledBy_id` int(11) DEFAULT NULL,
  `isRecycled` tinyint(1) DEFAULT NULL,
  `recycledAt` datetime DEFAULT NULL,
  `expiredBy_id` int(11) DEFAULT NULL,
  `parrainer_id` int(11) DEFAULT NULL,
  `isDuplicated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B2BB9B82EDEBE510` (`iddoc_id`),
  KEY `IDX_B2BB9B82CDEE7444` (`buser_id`),
  KEY `IDX_B2BB9B82923DD7DC` (`bunit_id`),
  KEY `IDX_B2BB9B825F501171` (`certifiedby_id`),
  KEY `IDX_B2BB9B82A21BD112` (`personne_id`),
  KEY `IDX_B2BB9B82EB8421F9` (`unblock_id`),
  KEY `IDX_B2BB9B82D739D52E` (`rejet_id`),
  KEY `IDX_B2BB9B82F6203804` (`statut_id`),
  KEY `IDX_B2BB9B8281604B56` (`completed_id`),
  KEY `IDX_B2BB9B82FBD993EB` (`rejet_raison_id`),
  KEY `IDX_SubscriberPhone` (`subscriberPhone`),
  KEY `IDX_statut` (`statut`),
  KEY `IDX_B2BB9B82F39EBE7A` (`batch_id`),
  KEY `IDX_B2BB9B82E2FFC7E0` (`conformedby_id`),
  KEY `IDX_B2BB9B825C689A6E` (`personneMorale_id`),
  KEY `idx_identifiedAt` (`identifiedAt`),
  KEY `idx_iddoc_id` (`iddoc_id`),
  KEY `idx_all_frecin` (`allImageIsFound`,`isFraude`,`isRejet`,`isExpired`,`isCertified`,`isInmodif`,`isNew`),
  KEY `idx_all_frecin1` (`allImageIsFound`,`isFraude`,`isRejet`,`isExpired`,`isCertified`,`isInmodif`,`isNew`,`id`),
  KEY `IDX_B2BB9B829508BF22` (`recycledBy_id`),
  KEY `IDX_B2BB9B82A30214B8` (`recycledBy_id`),
  KEY `IDX_B2BB9B8280D69C58` (`expiredBy_id`),
  CONSTRAINT `FK_B2BB9B825C689A6E` FOREIGN KEY (`personneMorale_id`) REFERENCES `core_personne_morale` (`id`),
  CONSTRAINT `FK_B2BB9B825F501171` FOREIGN KEY (`certifiedby_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B8280D69C58` FOREIGN KEY (`expiredBy_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B8281604B56` FOREIGN KEY (`completed_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82923DD7DC` FOREIGN KEY (`bunit_id`) REFERENCES `flex_core_business_unit` (`id`),
  CONSTRAINT `FK_B2BB9B829508BF22` FOREIGN KEY (`recycledBy_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82A21BD112` FOREIGN KEY (`personne_id`) REFERENCES `core_personne` (`id`),
  CONSTRAINT `FK_B2BB9B82CDEE7444` FOREIGN KEY (`buser_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82D739D52E` FOREIGN KEY (`rejet_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82E2FFC7E0` FOREIGN KEY (`conformedby_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82EB8421F9` FOREIGN KEY (`unblock_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82EDEBE510` FOREIGN KEY (`iddoc_id`) REFERENCES `core_id_document` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B2BB9B82F39EBE7A` FOREIGN KEY (`batch_id`) REFERENCES `moovci_conformity_batch` (`id`),
  CONSTRAINT `FK_B2BB9B82F6203804` FOREIGN KEY (`statut_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_B2BB9B82FBD993EB` FOREIGN KEY (`rejet_raison_id`) REFERENCES `core_rejet_raison` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10781258 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_identification_history`
--

DROP TABLE IF EXISTS `core_identification_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_identification_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identification_id` int(11) DEFAULT NULL,
  `event` longtext COLLATE utf8_unicode_ci NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B52989954DFE3A85` (`identification_id`),
  CONSTRAINT `FK_B52989954DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5061040 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_identification_log`
--

DROP TABLE IF EXISTS `core_identification_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_identification_log` (
  `id` int(11) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_identification_validate`
--

DROP TABLE IF EXISTS `core_identification_validate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_identification_validate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identification_id` int(11) DEFAULT NULL,
  `inmodif_id` int(11) DEFAULT NULL,
  `isInmodif` tinyint(1) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `inmodifAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_23EB5E7E4DFE3A85` (`identification_id`),
  KEY `IDX_23EB5E7EECC37811` (`inmodif_id`),
  CONSTRAINT `FK_23EB5E7E4DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`),
  CONSTRAINT `FK_23EB5E7EECC37811` FOREIGN KEY (`inmodif_id`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_identification_validate_ex`
--

DROP TABLE IF EXISTS `core_identification_validate_ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_identification_validate_ex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identification_id` int(11) DEFAULT NULL,
  `inmodif_id` int(11) DEFAULT NULL,
  `isInmodif` tinyint(1) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `inmodifAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_937AD8204DFE3A85` (`identification_id`),
  KEY `IDX_937AD820ECC37811` (`inmodif_id`),
  CONSTRAINT `FK_937AD8204DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`),
  CONSTRAINT `FK_937AD820ECC37811` FOREIGN KEY (`inmodif_id`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_in`
--

DROP TABLE IF EXISTS `core_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identification_id` int(11) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `subscriberPhone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `lastSentAt` datetime DEFAULT NULL,
  `lastServerIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbAttempts` int(11) NOT NULL DEFAULT '0',
  `campaign_id` int(11) DEFAULT NULL,
  `lastReceiveAt` datetime DEFAULT NULL,
  `responseCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isSucceed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_28AF752B4DFE3A85` (`identification_id`),
  KEY `IDX_28AF752B5EE01E44` (`created_id`),
  KEY `IDX_28AF752BF639F774` (`campaign_id`),
  CONSTRAINT `FK_28AF752B4DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_28AF752B5EE01E44` FOREIGN KEY (`created_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_28AF752BF639F774` FOREIGN KEY (`campaign_id`) REFERENCES `core_campaign` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_notification`
--

DROP TABLE IF EXISTS `core_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_numero_expire`
--

DROP TABLE IF EXISTS `core_numero_expire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_numero_expire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FCD3B3B164B64DCC` (`userId`),
  KEY `IDX_Telephone` (`telephone`),
  CONSTRAINT `FK_FCD3B3B164B64DCC` FOREIGN KEY (`userId`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15945 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_numero_recycled`
--

DROP TABLE IF EXISTS `core_numero_recycled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_numero_recycled` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CE9B80BE64B64DCC` (`userId`),
  CONSTRAINT `FK_CE9B80BE64B64DCC` FOREIGN KEY (`userId`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25541 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_parrain`
--

DROP TABLE IF EXISTS `core_parrain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_parrain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iddocument_id` int(11) DEFAULT NULL,
  `personne_id` int(11) DEFAULT NULL,
  `identification_id` int(11) DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B5BF80875FE0898` (`iddocument_id`),
  KEY `IDX_B5BF8087A21BD112` (`personne_id`),
  KEY `IDX_B5BF80874DFE3A85` (`identification_id`),
  CONSTRAINT `FK_B5BF80874DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`),
  CONSTRAINT `FK_B5BF80875FE0898` FOREIGN KEY (`iddocument_id`) REFERENCES `core_id_document` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B5BF8087A21BD112` FOREIGN KEY (`personne_id`) REFERENCES `core_personne` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_parrainer`
--

DROP TABLE IF EXISTS `core_parrainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_parrainer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parrain_id` int(11) DEFAULT NULL,
  `identification_id` int(11) DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7E22A51EDE2A7A37` (`parrain_id`),
  KEY `IDX_7E22A51E4DFE3A85` (`identification_id`),
  CONSTRAINT `FK_7E22A51E4DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`),
  CONSTRAINT `FK_7E22A51EDE2A7A37` FOREIGN KEY (`parrain_id`) REFERENCES `core_parrain` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_personne`
--

DROP TABLE IF EXISTS `core_personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idDocuments` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `dateAnniversaire` datetime NOT NULL,
  `placeNaissance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prenom_nom` (`prenom`,`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=4794044 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_personne_morale`
--

DROP TABLE IF EXISTS `core_personne_morale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_personne_morale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raisonSociale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siegeSocial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adressePostale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreation` datetime NOT NULL,
  `numeroCompteContribuable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recepisseDeclaration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `representant_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `closeUserGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `representantLegalType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2BFFDF72C33F7837` (`document_id`),
  KEY `IDX_2BFFDF726C4A52F0` (`representant_id`),
  CONSTRAINT `FK_2BFFDF726C4A52F0` FOREIGN KEY (`representant_id`) REFERENCES `core_personne` (`id`),
  CONSTRAINT `FK_2BFFDF72C33F7837` FOREIGN KEY (`document_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_rejet_raison`
--

DROP TABLE IF EXISTS `core_rejet_raison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_rejet_raison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_system_business_rule`
--

DROP TABLE IF EXISTS `core_system_business_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_system_business_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9A89CEDC5E237E06` (`name`),
  UNIQUE KEY `UNIQ_9A89CEDC47CC8C92` (`action`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_vision`
--

DROP TABLE IF EXISTS `core_vision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_vision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imageText` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=587850 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `doubles_au_20Mars2018`
--

DROP TABLE IF EXISTS `doubles_au_20Mars2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doubles_au_20Mars2018` (
  `subscriberPhone` varchar(12) NOT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `isProcessed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flex_core_business_unit`
--

DROP TABLE IF EXISTS `flex_core_business_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flex_core_business_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bunit_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD2E4FB48B0B6DA9` (`bunit_type_id`),
  CONSTRAINT `FK_FD2E4FB48B0B6DA9` FOREIGN KEY (`bunit_type_id`) REFERENCES `flex_core_business_unit_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flex_core_business_unit_type`
--

DROP TABLE IF EXISTS `flex_core_business_unit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flex_core_business_unit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_640A35975E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flex_core_sms`
--

DROP TABLE IF EXISTS `flex_core_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flex_core_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direction` varbinary(255) NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `receiver` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `delivred` varbinary(255) NOT NULL,
  `delivery_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5061058 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_l_r`
--

DROP TABLE IF EXISTS `h_l_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_l_r` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_At` datetime NOT NULL,
  `isSuccess` tinyint(1) NOT NULL,
  `hlr_response` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_identification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_unblock_status` tinyint(1) NOT NULL,
  `nbAttempts` int(11) DEFAULT NULL,
  `subscriberPhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hlrType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_Identification` (`id_identification`),
  KEY `IDX_PhoneNbr` (`phone`),
  KEY `IDX_CreatedAt` (`created_At`)
) ENGINE=InnoDB AUTO_INCREMENT=1886061 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hlr_data_history`
--

DROP TABLE IF EXISTS `hlr_data_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hlr_data_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identification_id` int(11) DEFAULT NULL,
  `receivedAt` datetime NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  `isSuccess` tinyint(1) DEFAULT NULL,
  `ProcessingReturn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `nbAttempts` int(11) DEFAULT NULL,
  `subscriberPhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hlrType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isSendFile` tinyint(1) DEFAULT NULL,
  `isSendSms` tinyint(1) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT NULL,
  `inProcess` tinyint(1) DEFAULT NULL,
  `hlrRsaType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processingRsa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BCBDC0E34DFE3A85` (`identification_id`),
  CONSTRAINT `FK_BCBDC0E34DFE3A85` FOREIGN KEY (`identification_id`) REFERENCES `core_identification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5564046 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mobile_data`
--

DROP TABLE IF EXISTS `mobile_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receivedAt` datetime NOT NULL,
  `jsonData` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `isValid` tinyint(1) NOT NULL,
  `isProcessed` tinyint(1) DEFAULT NULL,
  `nbRecords` smallint(6) DEFAULT NULL,
  `ProcessingReturn` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `isSucess` tinyint(1) DEFAULT NULL,
  `iddoc_id` int(11) DEFAULT NULL,
  `frontImageIsFound` tinyint(1) DEFAULT NULL,
  `frontImageOriginalName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backImageIsFound` tinyint(1) DEFAULT NULL,
  `backImageOriginalName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscriberImageIsFound` tinyint(1) DEFAULT NULL,
  `subscriberImageOriginalName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allImageIsFound` tinyint(1) DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4FC1EB81EDEBE510` (`iddoc_id`),
  KEY `IDXFrontImage` (`frontImageOriginalName`),
  KEY `IDXBackImage` (`backImageOriginalName`),
  KEY `IDXSubscriberImage` (`subscriberImageOriginalName`),
  CONSTRAINT `FK_4FC1EB81EDEBE510` FOREIGN KEY (`iddoc_id`) REFERENCES `core_id_document` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4180454 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `moovci_conformity_batch`
--

DROP TABLE IF EXISTS `moovci_conformity_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moovci_conformity_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agencyName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conformityRate` int(11) NOT NULL,
  `minNumber` int(11) NOT NULL,
  `startAt` datetime DEFAULT NULL,
  `endAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1A2D677BD3564642` (`createdBy`),
  KEY `IDX_1A2D677BE8DE7170` (`updatedBy`),
  CONSTRAINT `FK_1A2D677BD3564642` FOREIGN KEY (`createdBy`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_1A2D677BE8DE7170` FOREIGN KEY (`updatedBy`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_access_group`
--

DROP TABLE IF EXISTS `oro_access_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_access_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_unit_owner_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name_org_idx` (`name`,`organization_id`),
  KEY `IDX_FEF9EDB732C8A3DE` (`organization_id`),
  KEY `IDX_FEF9EDB759294170` (`business_unit_owner_id`),
  CONSTRAINT `FK_FEF9EDB732C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_FEF9EDB759294170` FOREIGN KEY (`business_unit_owner_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_access_role`
--

DROP TABLE IF EXISTS `oro_access_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_access_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `extend_description` longtext COLLATE utf8_unicode_ci,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_673F65E757698A6A` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_activity_list`
--

DROP TABLE IF EXISTS `oro_activity_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_activity_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_owner_id` int(11) DEFAULT NULL,
  `user_editor_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `verb` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `related_activity_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `related_activity_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_head` tinyint(1) NOT NULL DEFAULT '1',
  `description` longtext COLLATE utf8_unicode_ci,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_B1F9F0132C8A3DE` (`organization_id`),
  KEY `oro_activity_list_updated_idx` (`updated_at`),
  KEY `IDX_B1F9F019EB185F9` (`user_owner_id`),
  KEY `IDX_B1F9F01697521A8` (`user_editor_id`),
  KEY `al_related_activity_class` (`related_activity_class`),
  KEY `al_related_activity_id` (`related_activity_id`),
  KEY `al_is_head` (`is_head`),
  CONSTRAINT `FK_B1F9F0132C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B1F9F01697521A8` FOREIGN KEY (`user_editor_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B1F9F019EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_activity_owner`
--

DROP TABLE IF EXISTS `oro_activity_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_activity_owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_activity_owner` (`activity_id`,`user_id`),
  KEY `IDX_AB4499DB81C06096` (`activity_id`),
  KEY `IDX_AB4499DB32C8A3DE` (`organization_id`),
  KEY `idx_oro_activity_owner_user_id` (`user_id`),
  CONSTRAINT `FK_AB4499DB32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`),
  CONSTRAINT `FK_AB4499DB81C06096` FOREIGN KEY (`activity_id`) REFERENCES `oro_activity_list` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oro_activity_owner_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_address`
--

DROP TABLE IF EXISTS `oro_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street2` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_C5E99957F026BB7C` (`country_code`),
  KEY `IDX_C5E99957AEB327AF` (`region_code`),
  CONSTRAINT `fk_oro_address_country_code` FOREIGN KEY (`country_code`) REFERENCES `oro_dictionary_country` (`iso2_code`),
  CONSTRAINT `fk_oro_address_region_code` FOREIGN KEY (`region_code`) REFERENCES `oro_dictionary_region` (`combined_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_address_type_translation`
--

DROP TABLE IF EXISTS `oro_address_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_address_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foreign_key` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_type_translation_idx` (`locale`,`object_class`,`field`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_attachment`
--

DROP TABLE IF EXISTS `oro_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_FA0FE08193CB796C` (`file_id`),
  KEY `IDX_FA0FE08132C8A3DE` (`organization_id`),
  KEY `IDX_FA0FE0812B18554A` (`owner_user_id`),
  CONSTRAINT `FK_FA0FE0812B18554A` FOREIGN KEY (`owner_user_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_FA0FE08132C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_attachment_file_id` FOREIGN KEY (`file_id`) REFERENCES `oro_attachment_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_attachment_file`
--

DROP TABLE IF EXISTS `oro_attachment_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attachment_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `original_filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `att_file_orig_filename_idx` (`original_filename`),
  KEY `IDX_6E4CD01B9EB185F9` (`owner_user_id`),
  CONSTRAINT `FK_6E4CD01B2B18554A` FOREIGN KEY (`owner_user_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=28405681 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_attribute_family`
--

DROP TABLE IF EXISTS `oro_attribute_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attribute_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_owner_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_oro_attribute_family_code` (`code`),
  KEY `IDX_A6A95B469EB185F9` (`user_owner_id`),
  KEY `IDX_A6A95B4632C8A3DE` (`organization_id`),
  KEY `IDX_A6A95B463DA5256D` (`image_id`),
  CONSTRAINT `FK_A6A95B4632C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A6A95B463DA5256D` FOREIGN KEY (`image_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A6A95B469EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_attribute_group`
--

DROP TABLE IF EXISTS `oro_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attribute_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_family_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `IDX_945855477E7F26EC` (`attribute_family_id`),
  CONSTRAINT `FK_945855477E7F26EC` FOREIGN KEY (`attribute_family_id`) REFERENCES `oro_attribute_family` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_attribute_group_rel`
--

DROP TABLE IF EXISTS `oro_attribute_group_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_attribute_group_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) DEFAULT NULL,
  `entity_config_field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_attribute_group_uidx` (`entity_config_field_id`,`attribute_group_id`),
  KEY `IDX_5065C29962D643B7` (`attribute_group_id`),
  CONSTRAINT `FK_5065C29962D643B7` FOREIGN KEY (`attribute_group_id`) REFERENCES `oro_attribute_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_audit`
--

DROP TABLE IF EXISTS `oro_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `impersonation_id` int(11) DEFAULT NULL,
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logged_at` datetime DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_name` text COLLATE utf8_unicode_ci,
  `version` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_oro_audit_version` (`object_id`,`object_class`,`version`),
  KEY `IDX_5FBA427CA76ED395` (`user_id`),
  KEY `idx_oro_audit_type` (`type`),
  KEY `idx_oro_audit_logged_at` (`logged_at`),
  KEY `idx_oro_audit_object_class` (`object_class`),
  KEY `idx_oro_audit_obj_by_type` (`object_id`,`object_class`,`type`),
  KEY `idx_oro_audit_organization_id` (`organization_id`),
  KEY `IDX_5FBA427C26F87DB8` (`impersonation_id`),
  CONSTRAINT `fk_oro_audit_impersonation_id` FOREIGN KEY (`impersonation_id`) REFERENCES `oro_user_impersonation` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_audit_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_audit_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36179 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_audit_field`
--

DROP TABLE IF EXISTS `oro_audit_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_audit_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_id` int(11) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_integer` bigint(20) DEFAULT NULL,
  `old_float` double DEFAULT NULL,
  `old_boolean` tinyint(1) DEFAULT NULL,
  `old_text` longtext COLLATE utf8_unicode_ci,
  `old_date` date DEFAULT NULL,
  `old_time` time DEFAULT NULL,
  `old_datetime` datetime DEFAULT NULL,
  `new_integer` bigint(20) DEFAULT NULL,
  `new_float` double DEFAULT NULL,
  `new_boolean` tinyint(1) DEFAULT NULL,
  `new_text` longtext COLLATE utf8_unicode_ci,
  `new_date` date DEFAULT NULL,
  `new_time` time DEFAULT NULL,
  `new_datetime` datetime DEFAULT NULL,
  `old_datetimetz` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `old_object` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)(DC2Type:object)',
  `new_datetimetz` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `new_object` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)(DC2Type:object)',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `old_array` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `new_array` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `old_simplearray` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  `new_simplearray` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  `old_jsonarray` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)(DC2Type:json_array)',
  `new_jsonarray` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)(DC2Type:json_array)',
  `collection_diffs` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_9A31A824BD29F359` (`audit_id`),
  CONSTRAINT `fk_oro_audit_field_audit_id` FOREIGN KEY (`audit_id`) REFERENCES `oro_audit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98445 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_business_unit`
--

DROP TABLE IF EXISTS `oro_business_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_business_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_unit_owner_id` int(11) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `idx_c033b2d532c8a3de` (`organization_id`),
  KEY `idx_c033b2d559294170` (`business_unit_owner_id`),
  CONSTRAINT `FK_C033B2D532C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C033B2D559294170` FOREIGN KEY (`business_unit_owner_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_calendar_date`
--

DROP TABLE IF EXISTS `oro_calendar_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_calendar_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_comment`
--

DROP TABLE IF EXISTS `oro_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `email_bb212599_id` int(11) DEFAULT NULL,
  `note_c0db526d_id` int(11) DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `idx_oro_comment_owner_id` (`owner_id`),
  KEY `IDX_30E6463D2793CC5E` (`updated_by_id`),
  KEY `IDX_30E6463D32C8A3DE` (`organization_id`),
  KEY `IDX_5CD3A4BA3A14DEC3` (`email_bb212599_id`),
  KEY `IDX_5CD3A4BACF763E05` (`note_c0db526d_id`),
  KEY `idx_oro_comment_attachment_id` (`attachment_id`),
  CONSTRAINT `FK_5CD3A4BA3A14DEC3` FOREIGN KEY (`email_bb212599_id`) REFERENCES `oro_email` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5CD3A4BACF763E05` FOREIGN KEY (`note_c0db526d_id`) REFERENCES `oro_note` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_comment_attachment_id` FOREIGN KEY (`attachment_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_comment_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_comment_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_comment_updated_by_id` FOREIGN KEY (`updated_by_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_config`
--

DROP TABLE IF EXISTS `oro_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CONFIG_UQ_ENTITY` (`entity`,`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_config_value`
--

DROP TABLE IF EXISTS `oro_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_config_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `object_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)(DC2Type:object)',
  `array_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CONFIG_VALUE_UQ_ENTITY` (`name`,`section`,`config_id`),
  KEY `IDX_DAF6DF5524DB0683` (`config_id`),
  CONSTRAINT `fk_oro_config_value_config_id` FOREIGN KEY (`config_id`) REFERENCES `oro_config` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_cron_schedule`
--

DROP TABLE IF EXISTS `oro_cron_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_cron_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `args_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `definition` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_COMMAND` (`command`,`args_hash`,`definition`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_dashboard`
--

DROP TABLE IF EXISTS `oro_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_owner_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `createdat` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `updatedat` datetime DEFAULT NULL COMMENT '(DC2Type:datetime)',
  PRIMARY KEY (`id`),
  KEY `dashboard_is_default_idx` (`is_default`),
  KEY `idx_df2802ef9eb185f9` (`user_owner_id`),
  KEY `idx_df2802ef32c8a3de` (`organization_id`),
  CONSTRAINT `FK_DF2802EF32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_dashboard_user_owner_id` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_dashboard_active`
--

DROP TABLE IF EXISTS `oro_dashboard_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dashboard_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `dashboard_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_858ba17e32c8a3de` (`organization_id`),
  KEY `idx_858ba17eb9d04d2b` (`dashboard_id`),
  KEY `idx_858ba17ea76ed395` (`user_id`),
  CONSTRAINT `FK_858BA17E32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_858BA17EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_858BA17EB9D04D2B` FOREIGN KEY (`dashboard_id`) REFERENCES `oro_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4234 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_dashboard_widget`
--

DROP TABLE IF EXISTS `oro_dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dashboard_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dashboard_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout_position` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  `options` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `idx_4b6c43acb9d04d2b` (`dashboard_id`),
  CONSTRAINT `FK_4B6C43ACB9D04D2B` FOREIGN KEY (`dashboard_id`) REFERENCES `oro_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_dashboard_widget_state`
--

DROP TABLE IF EXISTS `oro_dashboard_widget_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dashboard_widget_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_owner_id` int(11) DEFAULT NULL,
  `widget_id` int(11) DEFAULT NULL,
  `is_expanded` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_4b4f5f879eb185f9` (`user_owner_id`),
  KEY `idx_4b4f5f87fbe885e2` (`widget_id`),
  CONSTRAINT `FK_5519E7F19EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5519E7F1FBE885E2` FOREIGN KEY (`widget_id`) REFERENCES `oro_dashboard_widget` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7279 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_dictionary_country_trans`
--

DROP TABLE IF EXISTS `oro_dictionary_country_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dictionary_country_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foreign_key` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_translation_idx` (`locale`,`object_class`,`field`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_dictionary_region_trans`
--

DROP TABLE IF EXISTS `oro_dictionary_region_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_dictionary_region_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foreign_key` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_translation_idx` (`locale`,`object_class`,`field`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email`
--

DROP TABLE IF EXISTS `oro_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_email_address_id` int(11) NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `email_body_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `subject` varchar(998) COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sent` datetime NOT NULL,
  `importance` int(11) NOT NULL,
  `internaldate` datetime NOT NULL,
  `message_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `x_message_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x_thread_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_head` tinyint(1) NOT NULL DEFAULT '1',
  `refs` longtext COLLATE utf8_unicode_ci,
  `multi_message_id` longtext COLLATE utf8_unicode_ci,
  `acceptLanguageHeader` longtext COLLATE utf8_unicode_ci,
  `body_synced` tinyint(1) DEFAULT '0',
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2A30C17126A2754B` (`email_body_id`),
  KEY `IDX_2A30C171D445573A` (`from_email_address_id`),
  KEY `IDX_email_message_id` (`message_id`),
  KEY `oro_email_is_head` (`is_head`),
  KEY `IDX_2A30C171E2904019` (`thread_id`),
  KEY `IDX_sent` (`sent`),
  CONSTRAINT `FK_2A30C17126A2754B` FOREIGN KEY (`email_body_id`) REFERENCES `oro_email_body` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_2A30C171D445573A` FOREIGN KEY (`from_email_address_id`) REFERENCES `oro_email_address` (`id`),
  CONSTRAINT `fk_oro_email_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `oro_email_thread` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_address`
--

DROP TABLE IF EXISTS `oro_email_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_mailbox_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `has_owner` tinyint(1) NOT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_email_address_uq` (`email`),
  KEY `IDX_FC9DBBC53486AC89` (`owner_mailbox_id`),
  KEY `IDX_FC9DBBC52B18554A` (`owner_user_id`),
  CONSTRAINT `FK_FC9DBBC52B18554A` FOREIGN KEY (`owner_user_id`) REFERENCES `oro_user` (`id`),
  CONSTRAINT `FK_FC9DBBC53486AC89` FOREIGN KEY (`owner_mailbox_id`) REFERENCES `oro_email_mailbox` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8628 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_attachment`
--

DROP TABLE IF EXISTS `oro_email_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `embedded_content_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F4427F239B621D84` (`body_id`),
  KEY `IDX_F4427F2393CB796C` (`file_id`),
  CONSTRAINT `FK_F4427F2393CB796C` FOREIGN KEY (`file_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_F4427F239B621D84` FOREIGN KEY (`body_id`) REFERENCES `oro_email_body` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_attachment_content`
--

DROP TABLE IF EXISTS `oro_email_attachment_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_attachment_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_transfer_encoding` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_18704959464E68B` (`attachment_id`),
  CONSTRAINT `FK_18704959464E68B` FOREIGN KEY (`attachment_id`) REFERENCES `oro_email_attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_auto_response_rule`
--

DROP TABLE IF EXISTS `oro_email_auto_response_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_auto_response_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `mailbox_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_58CB592A5DA0FB8` (`template_id`),
  KEY `IDX_58CB592A66EC35CC` (`mailbox_id`),
  CONSTRAINT `FK_58CB592A5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `oro_email_template` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_58CB592A66EC35CC` FOREIGN KEY (`mailbox_id`) REFERENCES `oro_email_mailbox` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_body`
--

DROP TABLE IF EXISTS `oro_email_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_body` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body_is_text` tinyint(1) NOT NULL,
  `has_attachments` tinyint(1) NOT NULL,
  `persistent` tinyint(1) NOT NULL,
  `text_body` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_folder`
--

DROP TABLE IF EXISTS `oro_email_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `origin_id` int(11) DEFAULT NULL,
  `parent_folder_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `synchronized` datetime DEFAULT NULL,
  `outdated_at` datetime DEFAULT NULL,
  `sync_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sync_start_date` datetime DEFAULT NULL,
  `failed_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_EB940F1C56A273CC` (`origin_id`),
  KEY `email_folder_outdated_at_idx` (`outdated_at`),
  KEY `IDX_EB940F1CE76796AC` (`parent_folder_id`),
  CONSTRAINT `FK_EB940F1C421FFFC` FOREIGN KEY (`parent_folder_id`) REFERENCES `oro_email_folder` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oro_email_folder_origin_id` FOREIGN KEY (`origin_id`) REFERENCES `oro_email_origin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_folder_imap`
--

DROP TABLE IF EXISTS `oro_email_folder_imap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_folder_imap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_id` int(11) NOT NULL,
  `uid_validity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EC4034F9162CB942` (`folder_id`),
  CONSTRAINT `FK_EC4034F9162CB942` FOREIGN KEY (`folder_id`) REFERENCES `oro_email_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_imap`
--

DROP TABLE IF EXISTS `oro_email_imap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_imap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` int(11) NOT NULL,
  `imap_folder_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_17E00D83A832C1C9` (`email_id`),
  KEY `IDX_17E00D834F00B133` (`imap_folder_id`),
  CONSTRAINT `FK_17E00D834F00B133` FOREIGN KEY (`imap_folder_id`) REFERENCES `oro_email_folder_imap` (`id`),
  CONSTRAINT `fk_oro_email_imap_email_id` FOREIGN KEY (`email_id`) REFERENCES `oro_email` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_mailbox`
--

DROP TABLE IF EXISTS `oro_email_mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_mailbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `process_settings_id` int(11) DEFAULT NULL,
  `origin_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_574C364FE7927C74` (`email`),
  UNIQUE KEY `UNIQ_574C364FEA750E8` (`label`),
  UNIQUE KEY `UNIQ_574C364F37BAC19A` (`process_settings_id`),
  UNIQUE KEY `UNIQ_574C364F56A273CC` (`origin_id`),
  KEY `IDX_574C364F32C8A3DE` (`organization_id`),
  CONSTRAINT `FK_574C364F32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_574C364F57E15B99` FOREIGN KEY (`process_settings_id`) REFERENCES `oro_email_mailbox_process` (`id`),
  CONSTRAINT `fk_oro_email_mailbox_origin_id` FOREIGN KEY (`origin_id`) REFERENCES `oro_email_origin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_mailbox_process`
--

DROP TABLE IF EXISTS `oro_email_mailbox_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_mailbox_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_email_origin`
--

DROP TABLE IF EXISTS `oro_email_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_origin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isActive` tinyint(1) NOT NULL,
  `sync_code_updated` datetime DEFAULT NULL,
  `synchronized` datetime DEFAULT NULL,
  `sync_code` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `internal_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sync_count` int(11) DEFAULT NULL,
  `mailbox_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `owner_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `imap_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imap_port` int(11) DEFAULT NULL,
  `imap_ssl` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imap_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imap_password` longtext COLLATE utf8_unicode_ci,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_encryption` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token_expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_mailbox_name` (`mailbox_name`),
  KEY `isActive_name_idx` (`isActive`,`name`),
  KEY `IDX_D9C750CF7E3C61F9` (`owner_id`),
  KEY `IDX_D9C750CF32C8A3DE` (`organization_id`),
  CONSTRAINT `FK_D9C750CF32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oro_email_origin_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_recipient`
--

DROP TABLE IF EXISTS `oro_email_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_recipient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address_id` int(11) NOT NULL,
  `email_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7DAF965659045DAA` (`email_address_id`),
  KEY `email_id_type_idx` (`email_id`,`type`),
  CONSTRAINT `FK_7DAF965659045DAA` FOREIGN KEY (`email_address_id`) REFERENCES `oro_email_address` (`id`),
  CONSTRAINT `FK_7DAF9656A832C1C9` FOREIGN KEY (`email_id`) REFERENCES `oro_email` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_template`
--

DROP TABLE IF EXISTS `oro_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `isSystem` tinyint(1) NOT NULL,
  `isEditable` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `entityName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `user_owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UQ_NAME` (`name`,`entityName`),
  KEY `email_name_idx` (`name`),
  KEY `email_is_system_idx` (`isSystem`),
  KEY `email_entity_name_idx` (`entityName`),
  KEY `IDX_E62049DE32C8A3DE` (`organization_id`),
  KEY `IDX_E62049DE9EB185F9` (`user_owner_id`),
  CONSTRAINT `FK_E62049DE32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_E62049DE9EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_template_translation`
--

DROP TABLE IF EXISTS `oro_email_template_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_template_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_F42DCDB8232D562B` (`object_id`),
  KEY `lookup_unique_idx` (`locale`,`object_id`,`field`),
  CONSTRAINT `FK_F42DCDB8232D562B` FOREIGN KEY (`object_id`) REFERENCES `oro_email_template` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_thread`
--

DROP TABLE IF EXISTS `oro_email_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_unseen_email_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_36164A52766C68B5` (`last_unseen_email_id`),
  CONSTRAINT `FK_36164A52766C68B5` FOREIGN KEY (`last_unseen_email_id`) REFERENCES `oro_email` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_email_user`
--

DROP TABLE IF EXISTS `oro_email_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_email_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` int(11) NOT NULL,
  `mailbox_owner_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `received` datetime NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '1',
  `unsyncedFlagCount` int(11) NOT NULL DEFAULT '0',
  `organization_id` int(11) DEFAULT NULL,
  `user_owner_id` int(11) DEFAULT NULL,
  `origin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_91F5CFF6A832C1C9` (`email_id`),
  KEY `IDX_91F5CFF6C5996C7E` (`mailbox_owner_id`),
  KEY `seen_idx` (`is_seen`,`mailbox_owner_id`),
  KEY `received_idx` (`received`,`is_seen`,`mailbox_owner_id`),
  KEY `IDX_91F5CFF632C8A3DE` (`organization_id`),
  KEY `IDX_91F5CFF69EB185F9` (`user_owner_id`),
  KEY `IDX_91F5CFF656A273CC` (`origin_id`),
  KEY `user_owner_id_mailbox_owner_id_organization_id` (`user_owner_id`,`mailbox_owner_id`,`organization_id`),
  CONSTRAINT `FK_91F5CFF632C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_91F5CFF69EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_91F5CFF6A832C1C9` FOREIGN KEY (`email_id`) REFERENCES `oro_email` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_91F5CFF6C5996C7E` FOREIGN KEY (`mailbox_owner_id`) REFERENCES `oro_email_mailbox` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_email_user_origin_id` FOREIGN KEY (`origin_id`) REFERENCES `oro_email_origin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_embedded_form`
--

DROP TABLE IF EXISTS `oro_embedded_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_embedded_form` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `css` longtext COLLATE utf8_unicode_ci NOT NULL,
  `form_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `allowed_domains` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_F7A34C17E3C61F9` (`owner_id`),
  CONSTRAINT `fk_oro_embedded_form_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_entity_config`
--

DROP TABLE IF EXISTS `oro_entity_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_entity_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `mode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_entity_config_uq` (`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_entity_config_field`
--

DROP TABLE IF EXISTS `oro_entity_config_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_entity_config_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `mode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_63EC23F781257D5D` (`entity_id`),
  CONSTRAINT `FK_63EC23F781257D5D` FOREIGN KEY (`entity_id`) REFERENCES `oro_entity_config` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_entity_config_index_value`
--

DROP TABLE IF EXISTS `oro_entity_config_index_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_entity_config_index_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_256E3E9B81257D5D` (`entity_id`),
  KEY `IDX_256E3E9B443707B0` (`field_id`),
  KEY `idx_entity_config_index_entity` (`scope`,`code`,`value`,`entity_id`),
  KEY `idx_entity_config_index_field` (`scope`,`code`,`value`,`field_id`),
  CONSTRAINT `FK_16EF5549443707B0` FOREIGN KEY (`field_id`) REFERENCES `oro_entity_config_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_16EF554981257D5D` FOREIGN KEY (`entity_id`) REFERENCES `oro_entity_config` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6520 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_entity_config_log`
--

DROP TABLE IF EXISTS `oro_entity_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_entity_config_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `logged_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4A4961FBA76ED395` (`user_id`),
  CONSTRAINT `FK_4A4961FBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_entity_config_log_diff`
--

DROP TABLE IF EXISTS `oro_entity_config_log_diff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_entity_config_log_diff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) DEFAULT NULL,
  `class_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diff` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D1F6D75AEA675D86` (`log_id`),
  CONSTRAINT `FK_D1F6D75AEA675D86` FOREIGN KEY (`log_id`) REFERENCES `oro_entity_config_log` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_entity_fallback_value`
--

DROP TABLE IF EXISTS `oro_entity_fallback_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_entity_fallback_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fallback` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scalar_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_enum_auth_status`
--

DROP TABLE IF EXISTS `oro_enum_auth_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_enum_auth_status` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_enum_value_trans`
--

DROP TABLE IF EXISTS `oro_enum_value_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_enum_value_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foreign_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oro_enum_value_trans_idx` (`locale`,`object_class`,`field`,`foreign_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_fallback_localization_val`
--

DROP TABLE IF EXISTS `oro_fallback_localization_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_fallback_localization_val` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localization_id` int(11) DEFAULT NULL,
  `fallback` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `idx_fallback` (`fallback`),
  KEY `idx_string` (`string`),
  KEY `IDX_463DE4B16A2856C7` (`localization_id`),
  CONSTRAINT `FK_463DE4B16A2856C7` FOREIGN KEY (`localization_id`) REFERENCES `oro_localization` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_grid_view`
--

DROP TABLE IF EXISTS `oro_grid_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_grid_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `user_owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filtersData` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `sortersData` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `columnsData` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `gridName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appearanceType` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appearanceData` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `discr_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5B73FBCB9EB185F9` (`user_owner_id`),
  KEY `IDX_5B73FBCB32C8A3DE` (`organization_id`),
  KEY `IDX_ORO_GRID_VIEW_APPEARANCE_TYPE` (`appearanceType`),
  KEY `idx_oro_grid_view_discr_type` (`discr_type`),
  CONSTRAINT `FK_5B73FBCB32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5B73FBCB8AF661D0` FOREIGN KEY (`appearanceType`) REFERENCES `oro_grid_appearance_type` (`name`),
  CONSTRAINT `fk_oro_grid_view_user_owner_id` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_grid_view_user_rel`
--

DROP TABLE IF EXISTS `oro_grid_view_user_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_grid_view_user_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `grid_view_id` int(11) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grid_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_USER_ID_GRID` (`user_id`),
  KEY `IDX_GRID_VIEW_GRID` (`grid_view_id`),
  KEY `idx_oro_grid_view_user_rel_type` (`type`),
  CONSTRAINT `FK_10ECBCA8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_10ECBCA8BF53711B` FOREIGN KEY (`grid_view_id`) REFERENCES `oro_grid_view` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_integration_channel`
--

DROP TABLE IF EXISTS `oro_integration_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_integration_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `default_user_owner_id` int(11) DEFAULT NULL,
  `default_business_unit_owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connectors` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `synchronization_settings` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:config_object)(DC2Type:config_object)',
  `mapping_settings` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:config_object)(DC2Type:config_object)',
  `enabled` tinyint(1) DEFAULT NULL,
  `edit_mode` int(11) NOT NULL DEFAULT '3',
  `previously_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_55B9B9C59909C13F` (`transport_id`),
  KEY `IDX_55B9B9C5A89019EA` (`default_user_owner_id`),
  KEY `IDX_55B9B9C532C8A3DE` (`organization_id`),
  KEY `oro_integration_channel_name_idx` (`name`),
  KEY `IDX_55B9B9C5FA248E2` (`default_business_unit_owner_id`),
  CONSTRAINT `FK_55B9B9C532C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_55B9B9C59909C13F` FOREIGN KEY (`transport_id`) REFERENCES `oro_integration_transport` (`id`),
  CONSTRAINT `FK_55B9B9C5A89019EA` FOREIGN KEY (`default_user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_55B9B9C5FA248E2` FOREIGN KEY (`default_business_unit_owner_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_integration_channel_status`
--

DROP TABLE IF EXISTS `oro_integration_channel_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_integration_channel_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_C0D7E5FB72F5A1AA` (`channel_id`),
  KEY `oro_intch_date_idx` (`date`),
  KEY `oro_intch_con_state_idx` (`connector`,`code`),
  CONSTRAINT `FK_C0D7E5FB72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `oro_integration_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_integration_fields_changes`
--

DROP TABLE IF EXISTS `oro_integration_fields_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_integration_fields_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `changed_fields` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `oro_integration_fields_changes_idx` (`entity_id`,`entity_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_integration_transport`
--

DROP TABLE IF EXISTS `oro_integration_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_integration_transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oro_int_trans_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_language`
--

DROP TABLE IF EXISTS `oro_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `user_owner_id` int(11) DEFAULT NULL,
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `installed_build_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_oro_language_code` (`code`),
  KEY `IDX_BBA3A1A232C8A3DE` (`organization_id`),
  KEY `IDX_BBA3A1A29EB185F9` (`user_owner_id`),
  CONSTRAINT `FK_BBA3A1A232C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_language_user_owner_id` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_localization`
--

DROP TABLE IF EXISTS `oro_localization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_localization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formatting_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_oro_localization_name` (`name`),
  KEY `IDX_E2704A66727ACA70` (`parent_id`),
  KEY `IDX_E2704A6682F1BAF4` (`language_id`),
  CONSTRAINT `FK_E2704A6682F1BAF4` FOREIGN KEY (`language_id`) REFERENCES `oro_language` (`id`),
  CONSTRAINT `fk_oro_localization_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `oro_localization` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_message_queue`
--

DROP TABLE IF EXISTS `oro_message_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_message_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8_unicode_ci,
  `headers` longtext COLLATE utf8_unicode_ci,
  `properties` longtext COLLATE utf8_unicode_ci,
  `consumer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redelivered` tinyint(1) DEFAULT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(6) NOT NULL,
  `delayed_until` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CC483C0337FDBD6D` (`consumer_id`),
  KEY `IDX_CC483C037FFD7F63` (`queue`),
  KEY `IDX_CC483C0362A6DC27` (`priority`),
  KEY `IDX_CC483C031A065DF8` (`delayed_until`)
) ENGINE=InnoDB AUTO_INCREMENT=11264711 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_message_queue_job`
--

DROP TABLE IF EXISTS `oro_message_queue_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_message_queue_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root_job_id` int(11) DEFAULT NULL,
  `owner_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interrupted` tinyint(1) NOT NULL,
  `unique` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `stopped_at` datetime DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)(DC2Type:json_array)',
  `job_progress` double DEFAULT NULL COMMENT '(DC2Type:percent)',
  PRIMARY KEY (`id`),
  KEY `IDX_2305018E295AA268` (`root_job_id`),
  CONSTRAINT `FK_2305018E295AA268` FOREIGN KEY (`root_job_id`) REFERENCES `oro_message_queue_job` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2538 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_message_queue_state`
--

DROP TABLE IF EXISTS `oro_message_queue_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_message_queue_state` (
  `id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_migrations`
--

DROP TABLE IF EXISTS `oro_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `loaded_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oro_migrations` (`bundle`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_migrations_data`
--

DROP TABLE IF EXISTS `oro_migrations_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_migrations_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loaded_at` datetime NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_navigation_history`
--

DROP TABLE IF EXISTS `oro_navigation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `url` varchar(1023) COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `visited_at` datetime NOT NULL,
  `visit_count` int(11) NOT NULL,
  `route` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `route_parameters` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B20613B9A76ED395` (`user_id`),
  KEY `oro_navigation_history_route_idx` (`route`),
  KEY `oro_navigation_history_entity_id_idx` (`entity_id`),
  KEY `IDX_B20613B932C8A3DE` (`organization_id`),
  KEY `idx_visited_at` (`visited_at`),
  KEY `idx_visit_count` (`visit_count`),
  KEY `idx_organization_id_user_id` (`organization_id`,`user_id`),
  CONSTRAINT `FK_B20613B932C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B20613B9A76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7867593 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_navigation_item`
--

DROP TABLE IF EXISTS `oro_navigation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(1023) COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_323B0258A76ED395` (`user_id`),
  KEY `sorted_items_idx` (`user_id`,`position`),
  KEY `IDX_323B025832C8A3DE` (`organization_id`),
  CONSTRAINT `FK_323B025832C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_navigation_item_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4636 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_navigation_item_pinbar`
--

DROP TABLE IF EXISTS `oro_navigation_item_pinbar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_item_pinbar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `maximized` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_54973433126F525E` (`item_id`),
  CONSTRAINT `FK_54973433126F525E` FOREIGN KEY (`item_id`) REFERENCES `oro_navigation_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2275 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_navigation_menu_upd`
--

DROP TABLE IF EXISTS `oro_navigation_menu_upd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_menu_upd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scope_id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(1023) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_divider` tinyint(1) NOT NULL,
  `is_custom` tinyint(1) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_navigation_menu_upd_uidx` (`key`,`scope_id`,`menu`),
  KEY `IDX_31C4E7F682B5931` (`scope_id`),
  CONSTRAINT `FK_31C4E7F682B5931` FOREIGN KEY (`scope_id`) REFERENCES `oro_scope` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_navigation_pagestate`
--

DROP TABLE IF EXISTS `oro_navigation_pagestate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_navigation_pagestate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `page_id` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `page_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8B43985B567C7E62` (`page_hash`),
  KEY `IDX_8B43985BA76ED395` (`user_id`),
  CONSTRAINT `FK_8B43985BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=808 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_note`
--

DROP TABLE IF EXISTS `oro_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_owner_id` int(11) DEFAULT NULL,
  `updated_by_user_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_BA066CE19EB185F9` (`user_owner_id`),
  KEY `IDX_BA066CE12793CC5E` (`updated_by_user_id`),
  KEY `IDX_BA066CE132C8A3DE` (`organization_id`),
  KEY `idx_oro_note_attachment_id` (`attachment_id`),
  CONSTRAINT `fk_oro_note_attachment_id` FOREIGN KEY (`attachment_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_note_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_note_updated_by_user_id` FOREIGN KEY (`updated_by_user_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_note_user_owner_id` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_notification_email_notif`
--

DROP TABLE IF EXISTS `oro_notification_email_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_email_notif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_list_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `entity_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workflow_definition_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workflow_transition_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A3D00FDF2B9E3E89` (`recipient_list_id`),
  KEY `IDX_A3D00FDF71F7E88B` (`event_id`),
  KEY `IDX_A3D00FDF5DA0FB8` (`template_id`),
  KEY `IDX_A3D00FDF93298D04` (`workflow_definition_name`),
  KEY `oro_idx_c1bb5181b8bde2fc` (`workflow_transition_name`),
  CONSTRAINT `FK_A3D00FDF2B9E3E89` FOREIGN KEY (`recipient_list_id`) REFERENCES `oro_notification_recip_list` (`id`),
  CONSTRAINT `FK_A3D00FDF5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `oro_email_template` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A3D00FDF71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `oro_notification_event` (`id`),
  CONSTRAINT `FK_A3D00FDF93298D04` FOREIGN KEY (`workflow_definition_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_notification_email_spool`
--

DROP TABLE IF EXISTS `oro_notification_email_spool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_email_spool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:object)(DC2Type:object)',
  `log_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_spool_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_notification_event`
--

DROP TABLE IF EXISTS `oro_notification_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2E2482DF5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_notification_mass_notif`
--

DROP TABLE IF EXISTS `oro_notification_mass_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_mass_notif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `scheduledAt` datetime NOT NULL,
  `processedAt` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_notification_recip_list`
--

DROP TABLE IF EXISTS `oro_notification_recip_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_notification_recip_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` tinyint(1) DEFAULT NULL,
  `additional_email_associations` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)(DC2Type:simple_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_organization`
--

DROP TABLE IF EXISTS `oro_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime)',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_bb42b65d5e237e06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_process_job`
--

DROP TABLE IF EXISTS `oro_process_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_process_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_trigger_id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `process_job_entity_hash_idx` (`entity_hash`),
  KEY `idx_1957630f196ffde` (`process_trigger_id`),
  CONSTRAINT `FK_1957630F196FFDE` FOREIGN KEY (`process_trigger_id`) REFERENCES `oro_process_trigger` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_process_trigger`
--

DROP TABLE IF EXISTS `oro_process_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_process_trigger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `definition_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `queued` tinyint(1) NOT NULL,
  `time_shift` int(11) DEFAULT NULL,
  `cron` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `priority` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `process_trigger_unique_idx` (`event`,`field`,`definition_name`,`cron`),
  KEY `idx_48b327bccb9d81d2` (`definition_name`),
  CONSTRAINT `FK_48B327BCCB9D81D2` FOREIGN KEY (`definition_name`) REFERENCES `oro_process_definition` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_reminder`
--

DROP TABLE IF EXISTS `oro_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `expire_at` datetime NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interval_number` int(11) NOT NULL,
  `interval_unit` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `related_entity_id` int(11) NOT NULL,
  `related_entity_classname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `failure_exception` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2F4F9F57E92F8F78` (`recipient_id`),
  KEY `reminder_state_idx` (`state`),
  KEY `idx_2f4f9f57f624b39d` (`sender_id`),
  CONSTRAINT `fk_oro_reminder_recipient_id` FOREIGN KEY (`recipient_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oro_reminder_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_report`
--

DROP TABLE IF EXISTS `oro_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_unit_owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdat` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `updatedat` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `chart_options` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)(DC2Type:json_array)',
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `idx_b48821b659294170` (`business_unit_owner_id`),
  KEY `idx_b48821b632c8a3de` (`organization_id`),
  KEY `idx_b48821b68cde5729` (`type`),
  CONSTRAINT `FK_B48821B659294170` FOREIGN KEY (`business_unit_owner_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_report_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_report_type` FOREIGN KEY (`type`) REFERENCES `oro_report_type` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_scope`
--

DROP TABLE IF EXISTS `oro_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_scope` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `localization_id` int(11) DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `idx_oro_scope_user_id` (`user_id`),
  KEY `idx_oro_scope_localization_id` (`localization_id`),
  CONSTRAINT `fk_oro_scope_localization_id` FOREIGN KEY (`localization_id`) REFERENCES `oro_localization` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oro_scope_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_search_index_datetime`
--

DROP TABLE IF EXISTS `oro_search_index_datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_search_index_datetime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  PRIMARY KEY (`id`),
  KEY `idx_459f212a126f525e` (`item_id`),
  CONSTRAINT `FK_459F212A126F525E` FOREIGN KEY (`item_id`) REFERENCES `oro_search_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_search_index_decimal`
--

DROP TABLE IF EXISTS `oro_search_index_decimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_search_index_decimal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_e0b9bb33126f525e` (`item_id`),
  CONSTRAINT `FK_E0B9BB33126F525E` FOREIGN KEY (`item_id`) REFERENCES `oro_search_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_search_index_integer`
--

DROP TABLE IF EXISTS `oro_search_index_integer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_search_index_integer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_e04ba3ab126f525e` (`item_id`),
  CONSTRAINT `FK_E04BA3AB126F525E` FOREIGN KEY (`item_id`) REFERENCES `oro_search_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6438 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_search_index_text`
--

DROP TABLE IF EXISTS `oro_search_index_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_search_index_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_a0243539126f525e` (`item_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=9797 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_search_item`
--

DROP TABLE IF EXISTS `oro_search_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_search_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changed` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_entity` (`entity`,`record_id`),
  KEY `idx_entities` (`entity`),
  KEY `idx_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3156 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_search_query`
--

DROP TABLE IF EXISTS `oro_search_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_search_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL,
  `result_count` int(11) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_security_permission`
--

DROP TABLE IF EXISTS `oro_security_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_security_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_apply_to_all` tinyint(1) NOT NULL,
  `group_names` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BAF7CD045E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_security_permission_entity`
--

DROP TABLE IF EXISTS `oro_security_permission_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_security_permission_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_26F9A8215E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_segment`
--

DROP TABLE IF EXISTS `oro_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_segment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `business_unit_owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `entity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdat` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `updatedat` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `last_run` datetime DEFAULT NULL COMMENT '(DC2Type:datetime)',
  `records_limit` int(11) DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_d02603b35e237e06` (`name`),
  KEY `idx_d02603b332c8a3de` (`organization_id`),
  KEY `idx_d02603b359294170` (`business_unit_owner_id`),
  KEY `idx_d02603b38cde5729` (`type`),
  CONSTRAINT `FK_D02603B359294170` FOREIGN KEY (`business_unit_owner_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_segment_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_segment_type` FOREIGN KEY (`type`) REFERENCES `oro_segment_type` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_segment_snapshot`
--

DROP TABLE IF EXISTS `oro_segment_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_segment_snapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment_id` int(11) NOT NULL,
  `integer_entity_id` int(11) DEFAULT NULL,
  `entity_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdat` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_43b8bb67db296aad81257d5d` (`segment_id`,`entity_id`),
  KEY `idx_43b8bb67db296aad` (`segment_id`),
  KEY `sgmnt_snpsht_int_entity_idx` (`integer_entity_id`),
  KEY `sgmnt_snpsht_str_entity_idx` (`entity_id`),
  CONSTRAINT `FK_43B8BB67DB296AAD` FOREIGN KEY (`segment_id`) REFERENCES `oro_segment` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_session`
--

DROP TABLE IF EXISTS `oro_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_session` (
  `id` varbinary(128) NOT NULL,
  `sess_data` blob NOT NULL,
  `sess_time` int(11) NOT NULL,
  `sess_lifetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_sidebar_state`
--

DROP TABLE IF EXISTS `oro_sidebar_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_sidebar_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sidebar_state_unique_idx` (`user_id`,`position`),
  KEY `IDX_AB2BC195A76ED395` (`user_id`),
  CONSTRAINT `fk_oro_sidebar_state_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=692 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_sidebar_widget`
--

DROP TABLE IF EXISTS `oro_sidebar_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_sidebar_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `placement` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `widget_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `settings` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)(DC2Type:array)',
  `state` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2FFBEA9CA76ED395` (`user_id`),
  KEY `sidebar_widgets_user_placement_idx` (`user_id`,`placement`),
  KEY `sidebar_widgets_position_idx` (`position`),
  KEY `IDX_2FFBEA9C32C8A3DE` (`organization_id`),
  CONSTRAINT `FK_2FFBEA9C32C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_sidebar_widget_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_tag_tag`
--

DROP TABLE IF EXISTS `oro_tag_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_tag_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `user_owner_id` int(11) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `updated` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `name_organization_idx` (`name`,`organization_id`),
  KEY `idx_caf0db5732c8a3de` (`organization_id`),
  KEY `idx_caf0db579eb185f9` (`user_owner_id`),
  KEY `IDX_CAF0DB579557E6F6` (`taxonomy_id`),
  CONSTRAINT `fk_oro_tag_tag_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_tag_tag_taxonomy_id` FOREIGN KEY (`taxonomy_id`) REFERENCES `oro_tag_taxonomy` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_tag_tag_user_owner_id` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_tag_tagging`
--

DROP TABLE IF EXISTS `oro_tag_tagging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_tag_tagging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `user_owner_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL COMMENT '(DC2Type:datetime)',
  `entity_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagging_idx` (`tag_id`,`entity_name`,`record_id`,`user_owner_id`),
  KEY `entity_name_idx` (`entity_name`,`record_id`),
  KEY `idx_50107502bad26311` (`tag_id`),
  KEY `idx_501075029eb185f9` (`user_owner_id`),
  CONSTRAINT `FK_501075029EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_tag_tagging_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `oro_tag_tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_tag_taxonomy`
--

DROP TABLE IF EXISTS `oro_tag_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_tag_taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `user_owner_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `background_color` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `tag_taxonomy_name_organization_idx` (`name`,`organization_id`),
  KEY `tag_taxonomy_user_owner_idx` (`user_owner_id`),
  KEY `IDX_B18F16C732C8A3DE` (`organization_id`),
  CONSTRAINT `FK_B18F16C732C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B18F16C79EB185F9` FOREIGN KEY (`user_owner_id`) REFERENCES `oro_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_translation`
--

DROP TABLE IF EXISTS `oro_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translation_key_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `scope` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_key_uniq` (`language_id`,`translation_key_id`),
  KEY `IDX_72E6CCE4D07ED992` (`translation_key_id`),
  KEY `IDX_72E6CCE482F1BAF4` (`language_id`),
  CONSTRAINT `FK_72E6CCE4D07ED992` FOREIGN KEY (`translation_key_id`) REFERENCES `oro_translation_key` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_oro_translation_language_id` FOREIGN KEY (`language_id`) REFERENCES `oro_language` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17328 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_translation_key`
--

DROP TABLE IF EXISTS `oro_translation_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_translation_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_bin NOT NULL,
  `domain` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'messages',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_domain_uniq` (`key`,`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=9550 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_user`
--

DROP TABLE IF EXISTS `oro_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar_id` int(11) DEFAULT NULL,
  `business_unit_owner_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `auth_status_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_suffix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_count` int(10) unsigned NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_changed` datetime DEFAULT NULL,
  `googleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `bunit_id` int(11) DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OroUser',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'OroUser',
  `lastActivityAt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version_apk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F82840BCF85E0677` (`username`),
  UNIQUE KEY `UNIQ_F82840BCE7927C74` (`email`),
  UNIQUE KEY `UNIQ_F82840BC6BF700BD` (`status_id`),
  KEY `oro_idx_user_phone` (`phone`),
  KEY `IDX_F82840BC59294170` (`business_unit_owner_id`),
  KEY `idx_oro_user_avatar_id` (`avatar_id`),
  KEY `IDX_F82840BC32C8A3DE` (`organization_id`),
  KEY `user_first_name_last_name_idx` (`first_name`,`last_name`),
  KEY `idx_oro_user_auth_status_id` (`auth_status_id`),
  KEY `oro_idx_user_googleid` (`googleId`),
  KEY `idx_oro_user_bunit_id` (`bunit_id`),
  CONSTRAINT `FK_F82840BC59294170` FOREIGN KEY (`business_unit_owner_id`) REFERENCES `oro_business_unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_F82840BC923DD7DC` FOREIGN KEY (`bunit_id`) REFERENCES `flex_core_business_unit` (`id`),
  CONSTRAINT `fk_oro_user_auth_status_id` FOREIGN KEY (`auth_status_id`) REFERENCES `oro_enum_auth_status` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_user_avatar_id` FOREIGN KEY (`avatar_id`) REFERENCES `oro_attachment_file` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_user_bunit_id` FOREIGN KEY (`bunit_id`) REFERENCES `flex_core_business_unit` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_user_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_user_status_id` FOREIGN KEY (`status_id`) REFERENCES `oro_user_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8597 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_user_api`
--

DROP TABLE IF EXISTS `oro_user_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_296B6993C912ED9D` (`api_key`),
  KEY `IDX_296B6993A76ED395` (`user_id`),
  KEY `IDX_296B699332C8A3DE` (`organization_id`),
  CONSTRAINT `FK_296B699332C8A3DE` FOREIGN KEY (`organization_id`) REFERENCES `oro_organization` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_oro_user_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_user_email`
--

DROP TABLE IF EXISTS `oro_user_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8600BE16A76ED395` (`user_id`),
  CONSTRAINT `fk_oro_user_email_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_user_impersonation`
--

DROP TABLE IF EXISTS `oro_user_impersonation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_impersonation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_at` datetime NOT NULL,
  `login_at` datetime DEFAULT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '127.0.0.1',
  PRIMARY KEY (`id`),
  KEY `token_idx` (`token`),
  KEY `IDX_385F2B6CA76ED395` (`user_id`),
  CONSTRAINT `FK_385F2B6CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_user_status`
--

DROP TABLE IF EXISTS `oro_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_user_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D8DDF7AAA76ED395` (`user_id`),
  CONSTRAINT `fk_oro_user_status_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_windows_state`
--

DROP TABLE IF EXISTS `oro_windows_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_windows_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8B134CF6A76ED395` (`user_id`),
  CONSTRAINT `fk_oro_windows_state_user_id` FOREIGN KEY (`user_id`) REFERENCES `oro_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2881 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_workflow_entity_acl`
--

DROP TABLE IF EXISTS `oro_workflow_entity_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_entity_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workflow_step_id` int(11) DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updatable` tinyint(1) NOT NULL,
  `deletable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_workflow_acl_unique_idx` (`workflow_name`,`attribute`,`workflow_step_id`),
  KEY `idx_c54c5e5b1bbc6e3d` (`workflow_name`),
  KEY `idx_c54c5e5b71fe882c` (`workflow_step_id`),
  CONSTRAINT `FK_C54C5E5B1BBC6E3D` FOREIGN KEY (`workflow_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_C54C5E5B71FE882C` FOREIGN KEY (`workflow_step_id`) REFERENCES `oro_workflow_step` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_workflow_entity_acl_ident`
--

DROP TABLE IF EXISTS `oro_workflow_entity_acl_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_entity_acl_ident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_entity_acl_id` int(11) DEFAULT NULL,
  `workflow_item_id` int(11) DEFAULT NULL,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_workflow_entity_acl_identity_unique_idx` (`workflow_entity_acl_id`,`entity_id`,`workflow_item_id`),
  KEY `oro_workflow_entity_acl_identity_idx` (`entity_id`,`entity_class`),
  KEY `idx_367002f11023c4ee` (`workflow_item_id`),
  KEY `idx_367002f1160f68fb` (`workflow_entity_acl_id`),
  CONSTRAINT `FK_29BAAE9E1023C4EE` FOREIGN KEY (`workflow_item_id`) REFERENCES `oro_workflow_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_29BAAE9E160F68FB` FOREIGN KEY (`workflow_entity_acl_id`) REFERENCES `oro_workflow_entity_acl` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_workflow_item`
--

DROP TABLE IF EXISTS `oro_workflow_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_step_id` int(11) DEFAULT NULL,
  `workflow_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  `serialized_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_workflow_item_entity_definition_unq` (`entity_id`,`workflow_name`),
  KEY `idx_169789ae1bbc6e3d` (`workflow_name`),
  KEY `oro_workflow_item_entity_idx` (`entity_class`,`entity_id`),
  KEY `idx_169789aed9bf9b19` (`current_step_id`),
  CONSTRAINT `FK_169789AE1BBC6E3D` FOREIGN KEY (`workflow_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_169789AED9BF9B19` FOREIGN KEY (`current_step_id`) REFERENCES `oro_workflow_step` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_workflow_restriction`
--

DROP TABLE IF EXISTS `oro_workflow_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_restriction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_step_id` int(11) DEFAULT NULL,
  `workflow_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode_values` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_workflow_restriction_idx` (`workflow_name`,`workflow_step_id`,`field`,`entity_class`,`mode`),
  KEY `IDX_3D2C17E271FE882C` (`workflow_step_id`),
  KEY `IDX_3D2C17E21BBC6E3D` (`workflow_name`),
  CONSTRAINT `FK_3D2C17E21BBC6E3D` FOREIGN KEY (`workflow_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_3D2C17E271FE882C` FOREIGN KEY (`workflow_step_id`) REFERENCES `oro_workflow_step` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_workflow_restriction_ident`
--

DROP TABLE IF EXISTS `oro_workflow_restriction_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_restriction_ident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_restriction_id` int(11) DEFAULT NULL,
  `workflow_item_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_workflow_restr_ident_unique_idx` (`workflow_restriction_id`,`entity_id`,`workflow_item_id`),
  KEY `oro_workflow_restr_ident_idx` (`entity_id`),
  KEY `IDX_C16D03703A56C10C` (`workflow_restriction_id`),
  KEY `IDX_C16D03701023C4EE` (`workflow_item_id`),
  CONSTRAINT `FK_C16D03701023C4EE` FOREIGN KEY (`workflow_item_id`) REFERENCES `oro_workflow_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C16D03703A56C10C` FOREIGN KEY (`workflow_restriction_id`) REFERENCES `oro_workflow_restriction` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `oro_workflow_step`
--

DROP TABLE IF EXISTS `oro_workflow_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `step_order` int(11) NOT NULL,
  `is_final` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oro_workflow_step_unique_idx` (`workflow_name`,`name`),
  KEY `oro_workflow_step_name_idx` (`name`),
  KEY `idx_4a35528c1bbc6e3d` (`workflow_name`),
  CONSTRAINT `FK_4A35528C1BBC6E3D` FOREIGN KEY (`workflow_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_workflow_trans_trigger`
--

DROP TABLE IF EXISTS `oro_workflow_trans_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_trans_trigger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `queued` tinyint(1) NOT NULL,
  `transition_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cron` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filter` longtext COLLATE utf8_unicode_ci,
  `event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `require` longtext COLLATE utf8_unicode_ci,
  `relation` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_FC2C1F891BBC6E3D` (`workflow_name`),
  CONSTRAINT `FK_FC2C1F891BBC6E3D` FOREIGN KEY (`workflow_name`) REFERENCES `oro_workflow_definition` (`name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oro_workflow_transition_log`
--

DROP TABLE IF EXISTS `oro_workflow_transition_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oro_workflow_transition_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step_from_id` int(11) DEFAULT NULL,
  `step_to_id` int(11) DEFAULT NULL,
  `workflow_item_id` int(11) DEFAULT NULL,
  `transition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transition_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_b3d57b302c17bd9a` (`step_to_id`),
  KEY `idx_b3d57b30c8335fe4` (`step_from_id`),
  KEY `idx_b3d57b301023c4ee` (`workflow_item_id`),
  CONSTRAINT `FK_B3D57B301023C4EE` FOREIGN KEY (`workflow_item_id`) REFERENCES `oro_workflow_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B3D57B302C17BD9A` FOREIGN KEY (`step_to_id`) REFERENCES `oro_workflow_step` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B3D57B30C8335FE4` FOREIGN KEY (`step_from_id`) REFERENCES `oro_workflow_step` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `super_sim_data`
--

DROP TABLE IF EXISTS `super_sim_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `super_sim_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receivedAt` datetime NOT NULL,
  `rawData` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  `isValid` tinyint(1) DEFAULT NULL,
  `isSuccess` tinyint(1) DEFAULT NULL,
  `ProcessingReturn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10 14:43:32
