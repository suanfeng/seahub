
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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api2_token` (
  `key` varchar(40) NOT NULL,
  `user` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `api2_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_token` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api2_tokenv2` (
  `key` varchar(40) NOT NULL,
  `user` varchar(255) NOT NULL,
  `platform` varchar(32) NOT NULL,
  `device_id` varchar(40) NOT NULL,
  `device_name` varchar(40) NOT NULL,
  `platform_version` varchar(16) NOT NULL,
  `client_version` varchar(16) NOT NULL,
  `last_accessed` datetime NOT NULL,
  `last_login_ip` char(39) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `wiped_at` datetime DEFAULT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user` (`user`,`platform`,`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `api2_tokenv2` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_tokenv2` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailuser` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `avatar_avatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `avatar_avatar` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_groupavatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `avatar_groupavatar` DISABLE KEYS */;
/*!40000 ALTER TABLE `avatar_groupavatar` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_clientlogintoken` (
  `token` varchar(32) NOT NULL,
  `username` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `base_clientlogintoken_14c4b06b` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_clientlogintoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_clientlogintoken` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_commandslastcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `command_type` varchar(100) NOT NULL,
  `last_check` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_commandslastcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_commandslastcheck` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_devicetoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `user` varchar(255) NOT NULL,
  `platform` varchar(32) NOT NULL,
  `version` varchar(16) NOT NULL,
  `pversion` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_devicetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_devicetoken` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_filecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repo_id` varchar(36) NOT NULL,
  `parent_path` longtext NOT NULL,
  `repo_id_parent_path_md5` varchar(100) NOT NULL,
  `item_name` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_filecomment_9a8c79bf` (`repo_id`),
  KEY `base_filecomment_c5bf47d4` (`repo_id_parent_path_md5`),
  KEY `base_filecomment_02bd92fa` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_filecomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_filecomment` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_filediscuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_message_id` int(11) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  `path` longtext NOT NULL,
  `path_hash` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base__group_message_id_6915ac55a0bd929c_fk_group_groupmessage_id` (`group_message_id`),
  KEY `base_filediscuss_b57d9b6b` (`path_hash`),
  CONSTRAINT `base__group_message_id_6915ac55a0bd929c_fk_group_groupmessage_id` FOREIGN KEY (`group_message_id`) REFERENCES `group_groupmessage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_filediscuss` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_filediscuss` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_groupenabledmodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(10) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_groupenabledmodule_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_groupenabledmodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_groupenabledmodule` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_innerpubmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_email` varchar(254) NOT NULL,
  `message` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_innerpubmsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_innerpubmsg` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_innerpubmsgreply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_to_id` int(11) NOT NULL,
  `from_email` varchar(254) NOT NULL,
  `message` varchar(150) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_innerpu_reply_to_id_27731e1a4586de01_fk_base_innerpubmsg_id` (`reply_to_id`),
  CONSTRAINT `base_innerpu_reply_to_id_27731e1a4586de01_fk_base_innerpubmsg_id` FOREIGN KEY (`reply_to_id`) REFERENCES `base_innerpubmsg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_innerpubmsgreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_innerpubmsgreply` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_userenabledmodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_userenabledmodule_14c4b06b` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_userenabledmodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_userenabledmodule` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_userlastlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_userlastlogin_14c4b06b` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_userlastlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_userlastlogin` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_userstarredfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `org_id` int(11) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  `path` longtext NOT NULL,
  `is_dir` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_userstarredfiles_0c83f57c` (`email`),
  KEY `base_userstarredfiles_9a8c79bf` (`repo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `base_userstarredfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_userstarredfiles` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constance_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `constance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `constance_config` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_contact_40c27bdc` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `contacts_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (12,'api2','token'),(13,'api2','tokenv2'),(14,'avatar','avatar'),(15,'avatar','groupavatar'),(17,'base','clientlogintoken'),(22,'base','commandslastcheck'),(21,'base','devicetoken'),(19,'base','filecomment'),(20,'base','filediscuss'),(16,'base','groupenabledmodule'),(23,'base','innerpubmsg'),(24,'base','innerpubmsgreply'),(18,'base','userenabledmodule'),(25,'base','userlastlogin'),(26,'base','userstarredfiles'),(4,'captcha','captchastore'),(27,'contacts','contact'),(1,'contenttypes','contenttype'),(5,'database','constance'),(34,'group','groupmessage'),(35,'group','messageattachment'),(36,'group','messagereply'),(33,'group','publicgroup'),(29,'institutions','institution'),(28,'institutions','institutionadmin'),(30,'invitations','invitation'),(39,'message','usermessage'),(37,'message','usermsgattachment'),(38,'message','usermsglastcheck'),(40,'notifications','notification'),(41,'notifications','usernotification'),(42,'options','useroptions'),(51,'organizations','orgmemberquota'),(6,'post_office','attachment'),(8,'post_office','email'),(7,'post_office','emailtemplate'),(9,'post_office','log'),(44,'profile','detailedprofile'),(43,'profile','profile'),(3,'registration','registrationprofile'),(2,'sessions','session'),(48,'share','anonymousshare'),(47,'share','fileshare'),(49,'share','orgfileshare'),(45,'share','privatefiledirshare'),(46,'share','uploadlinkshare'),(50,'sysadmin_extra','userloginlog'),(10,'termsandconditions','termsandconditions'),(11,'termsandconditions','usertermsandconditions'),(52,'two_factor','phonedevice'),(55,'two_factor','staticdevice'),(53,'two_factor','statictoken'),(54,'two_factor','totpdevice'),(32,'wiki','groupwiki'),(31,'wiki','personalwiki');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'captcha','0001_initial','2016-08-02 14:48:00.596152'),(2,'contenttypes','0001_initial','2016-08-02 14:48:00.797303'),(3,'contenttypes','0002_remove_content_type_name','2016-08-02 14:48:00.879450'),(4,'database','0001_initial','2016-08-02 14:48:00.902084'),(5,'institutions','0001_initial','2016-08-02 14:48:01.021340'),(6,'invitations','0001_initial','2016-08-02 14:48:01.068479'),(7,'invitations','0002_invitation_invite_type','2016-08-02 14:48:01.105755'),(8,'invitations','0003_auto_20160510_1703','2016-08-02 14:48:01.163442'),(9,'invitations','0004_auto_20160629_1610','2016-08-02 14:48:01.265499'),(10,'invitations','0005_auto_20160629_1614','2016-08-02 14:48:01.290426'),(11,'post_office','0001_initial','2016-08-02 14:48:01.727406'),(12,'post_office','0002_add_i18n_and_backend_alias','2016-08-02 14:48:02.927550'),(13,'sessions','0001_initial','2016-08-02 14:48:02.976884'),(14,'termsandconditions','0001_initial','2016-08-02 14:48:03.107817'),(15,'two_factor','0001_initial','2016-08-02 14:48:03.249115');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_groupmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `message` varchar(2048) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_groupmessage_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `group_groupmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_groupmessage` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_messageattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_message_id` int(11) NOT NULL,
  `repo_id` varchar(40) NOT NULL,
  `attach_type` varchar(5) NOT NULL,
  `path` longtext NOT NULL,
  `src` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_group_message_id_1cf3436c2d475be7_fk_group_groupmessage_id` (`group_message_id`),
  CONSTRAINT `group_group_message_id_1cf3436c2d475be7_fk_group_groupmessage_id` FOREIGN KEY (`group_message_id`) REFERENCES `group_groupmessage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `group_messageattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_messageattachment` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_messagereply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_to_id` int(11) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `message` varchar(2048) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_mess_reply_to_id_23113ea180894951_fk_group_groupmessage_id` (`reply_to_id`),
  CONSTRAINT `group_mess_reply_to_id_23113ea180894951_fk_group_groupmessage_id` FOREIGN KEY (`reply_to_id`) REFERENCES `group_groupmessage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `group_messagereply` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_messagereply` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_publicgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_publicgroup_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `group_publicgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_publicgroup` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutions_institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `institutions_institution` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutions_institution` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutions_institutionadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(254) NOT NULL,
  `institution_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `i_institution_id_5f792d6fe9a87ac9_fk_institutions_institution_id` (`institution_id`),
  CONSTRAINT `i_institution_id_5f792d6fe9a87ac9_fk_institutions_institution_id` FOREIGN KEY (`institution_id`) REFERENCES `institutions_institution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `institutions_institutionadmin` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutions_institutionadmin` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations_invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `inviter` varchar(255) NOT NULL,
  `accepter` varchar(255) NOT NULL,
  `invite_time` datetime NOT NULL,
  `accept_time` datetime DEFAULT NULL,
  `invite_type` varchar(20) NOT NULL,
  `expire_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invitations_invitation_d5dd16f8` (`inviter`),
  KEY `invitations_invitation_token_1961fbb98c05e5fd_uniq` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `invitations_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitations_invitation` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_usermessage` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(512) NOT NULL,
  `from_email` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  `ifread` tinyint(1) NOT NULL,
  `sender_deleted_at` datetime DEFAULT NULL,
  `recipient_deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `message_usermessage_f50bd8c4` (`from_email`),
  KEY `message_usermessage_acc047cf` (`to_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `message_usermessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_usermessage` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_usermsgattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_msg_id` int(11) NOT NULL,
  `priv_file_dir_share_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `m_user_msg_id_3f10b9ac43610631_fk_message_usermessage_message_id` (`user_msg_id`),
  KEY `D0bceb1017884f579a81b2fab45df4e7` (`priv_file_dir_share_id`),
  CONSTRAINT `D0bceb1017884f579a81b2fab45df4e7` FOREIGN KEY (`priv_file_dir_share_id`) REFERENCES `share_privatefiledirshare` (`id`),
  CONSTRAINT `m_user_msg_id_3f10b9ac43610631_fk_message_usermessage_message_id` FOREIGN KEY (`user_msg_id`) REFERENCES `message_usermessage` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `message_usermsgattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_usermsgattachment` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_usermsglastcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `message_usermsglastcheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_usermsglastcheck` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(512) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `notifications_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications_notification` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_usernotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user` varchar(255) NOT NULL,
  `msg_type` varchar(30) NOT NULL,
  `detail` longtext NOT NULL,
  `timestamp` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_usernotification_86899d6f` (`to_user`),
  KEY `notifications_usernotification_486af403` (`msg_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `notifications_usernotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications_usernotification` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options_useroptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `option_key` varchar(50) NOT NULL,
  `option_val` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `options_useroptions_0c83f57c` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `options_useroptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `options_useroptions` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations_orgmemberquota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `quota` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organizations_orgmemberquota_9cf869aa` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `organizations_orgmemberquota` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations_orgmemberquota` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_office_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `post_office_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_office_attachment` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_office_attachment_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attachment_id` (`attachment_id`,`email_id`),
  KEY `post_office_att_email_id_f053bb3a1fa4afd_fk_post_office_email_id` (`email_id`),
  CONSTRAINT `post_office_att_email_id_f053bb3a1fa4afd_fk_post_office_email_id` FOREIGN KEY (`email_id`) REFERENCES `post_office_email` (`id`),
  CONSTRAINT `post__attachment_id_388fa287a684f8f_fk_post_office_attachment_id` FOREIGN KEY (`attachment_id`) REFERENCES `post_office_attachment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `post_office_attachment_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_office_attachment_emails` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_office_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_email` varchar(254) NOT NULL,
  `to` longtext NOT NULL,
  `cc` longtext NOT NULL,
  `bcc` longtext NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `html_message` longtext NOT NULL,
  `status` smallint(5) unsigned DEFAULT NULL,
  `priority` smallint(5) unsigned DEFAULT NULL,
  `created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `scheduled_time` datetime DEFAULT NULL,
  `headers` longtext,
  `context` longtext,
  `template_id` int(11),
  `backend_alias` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_office_email_9acb4454` (`status`),
  KEY `post_office_email_e2fa5388` (`created`),
  KEY `post_office_email_3acc0b7a` (`last_updated`),
  KEY `post_office_email_ed24d584` (`scheduled_time`),
  KEY `post_office_email_74f53564` (`template_id`),
  CONSTRAINT `pos_template_id_3c48ffa2f1c17f43_fk_post_office_emailtemplate_id` FOREIGN KEY (`template_id`) REFERENCES `post_office_emailtemplate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `post_office_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_office_email` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_office_emailtemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `html_content` longtext NOT NULL,
  `created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  `language` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_office_emailtemplate_language_29c8606d390b61ee_uniq` (`language`,`default_template_id`),
  KEY `post_office_emailtemplate_dea6f63e` (`default_template_id`),
  CONSTRAINT `D0d1b6711ab19cd27206adfa5a4f8f80` FOREIGN KEY (`default_template_id`) REFERENCES `post_office_emailtemplate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `post_office_emailtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_office_emailtemplate` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_office_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `status` smallint(5) unsigned NOT NULL,
  `exception_type` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `email_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_office_lo_email_id_72165efe97e2d836_fk_post_office_email_id` (`email_id`),
  CONSTRAINT `post_office_lo_email_id_72165efe97e2d836_fk_post_office_email_id` FOREIGN KEY (`email_id`) REFERENCES `post_office_email` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `post_office_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_office_log` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_detailedprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `department` varchar(512) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_detailedprofile_ee11cbb1` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `profile_detailedprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_detailedprofile` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(254) NOT NULL,
  `nickname` varchar(64) NOT NULL,
  `intro` longtext NOT NULL,
  `lang_code` longtext,
  `login_id` varchar(225) DEFAULT NULL,
  `contact_email` varchar(225) DEFAULT NULL,
  `institution` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`),
  UNIQUE KEY `login_id` (`login_id`),
  KEY `profile_profile_b9973d8c` (`contact_email`),
  KEY `profile_profile_955bfff7` (`institution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `profile_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_profile` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailuser_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_anonymousshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repo_owner` varchar(255) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  `anonymous_email` varchar(255) NOT NULL,
  `token` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `share_anonymousshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_anonymousshare` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_fileshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  `path` longtext NOT NULL,
  `token` varchar(10) NOT NULL,
  `ctime` datetime NOT NULL,
  `view_cnt` int(11) NOT NULL,
  `s_type` varchar(2) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `share_fileshare_14c4b06b` (`username`),
  KEY `share_fileshare_9a8c79bf` (`repo_id`),
  KEY `share_fileshare_1abd88b5` (`s_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `share_fileshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_fileshare` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_orgfileshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `file_share_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_share_id` (`file_share_id`),
  KEY `share_orgfileshare_9cf869aa` (`org_id`),
  CONSTRAINT `share_orgfil_file_share_id_7e98815f5df832f_fk_share_fileshare_id` FOREIGN KEY (`file_share_id`) REFERENCES `share_fileshare` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `share_orgfileshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_orgfileshare` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_privatefiledirshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user` varchar(255) NOT NULL,
  `to_user` varchar(255) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  `path` longtext NOT NULL,
  `token` varchar(10) NOT NULL,
  `permission` varchar(5) NOT NULL,
  `s_type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `share_privatefiledirshare_f4f87abd` (`from_user`),
  KEY `share_privatefiledirshare_86899d6f` (`to_user`),
  KEY `share_privatefiledirshare_9a8c79bf` (`repo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `share_privatefiledirshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_privatefiledirshare` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_uploadlinkshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  `path` longtext NOT NULL,
  `token` varchar(10) NOT NULL,
  `ctime` datetime NOT NULL,
  `view_cnt` int(11) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `share_uploadlinkshare_14c4b06b` (`username`),
  KEY `share_uploadlinkshare_9a8c79bf` (`repo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `share_uploadlinkshare` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_uploadlinkshare` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysadmin_extra_userloginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `login_date` datetime NOT NULL,
  `login_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sysadmin_extra_userloginlog_14c4b06b` (`username`),
  KEY `sysadmin_extra_userloginlog_28ed1ef0` (`login_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `sysadmin_extra_userloginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysadmin_extra_userloginlog` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termsandconditions_termsandconditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) NOT NULL,
  `name` longtext NOT NULL,
  `version_number` decimal(6,2) NOT NULL,
  `text` longtext,
  `info` longtext,
  `date_active` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `termsandconditions_termsandconditions_2dbcba41` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `termsandconditions_termsandconditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `termsandconditions_termsandconditions` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termsandconditions_usertermsandconditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `date_accepted` datetime NOT NULL,
  `terms_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `termsandconditions_usertermsandcon_username_f4ab54cafa29322_uniq` (`username`,`terms_id`),
  KEY `e4da106203f3f13ff96409b55de6f515` (`terms_id`),
  CONSTRAINT `e4da106203f3f13ff96409b55de6f515` FOREIGN KEY (`terms_id`) REFERENCES `termsandconditions_termsandconditions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `termsandconditions_usertermsandconditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `termsandconditions_usertermsandconditions` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `two_factor_phonedevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `number` varchar(40) NOT NULL,
  `key` varchar(40) NOT NULL,
  `method` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `two_factor_phonedevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `two_factor_phonedevice` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `two_factor_staticdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `two_factor_staticdevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `two_factor_staticdevice` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `two_factor_statictoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(16) NOT NULL,
  `device_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `two_fac_device_id_55a7b345293a7c6c_fk_two_factor_staticdevice_id` (`device_id`),
  KEY `two_factor_statictoken_94a08da1` (`token`),
  CONSTRAINT `two_fac_device_id_55a7b345293a7c6c_fk_two_factor_staticdevice_id` FOREIGN KEY (`device_id`) REFERENCES `two_factor_staticdevice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `two_factor_statictoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `two_factor_statictoken` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `two_factor_totpdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `key` varchar(80) NOT NULL,
  `step` smallint(5) unsigned NOT NULL,
  `t0` bigint(20) NOT NULL,
  `digits` smallint(5) unsigned NOT NULL,
  `tolerance` smallint(5) unsigned NOT NULL,
  `drift` smallint(6) NOT NULL,
  `last_t` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `two_factor_totpdevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `two_factor_totpdevice` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_groupwiki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `wiki_groupwiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_groupwiki` ENABLE KEYS */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_personalwiki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `repo_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40000 ALTER TABLE `wiki_personalwiki` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_personalwiki` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

