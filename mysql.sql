-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: basic_data
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communicationoverview`
--

DROP TABLE IF EXISTS `communicationoverview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `communicationoverview` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `taskip` bigint(20) NOT NULL,
  `peerip` bigint(20) NOT NULL,
  `direction` int(11) DEFAULT NULL,
  `activity_type` varchar(45) DEFAULT NULL,
  `proto_type` varchar(45) DEFAULT NULL,
  `sessionnum` bigint(20) DEFAULT NULL,
  `port` mediumtext,
  `send_bytes` bigint(20) DEFAULT NULL,
  `receive_bytes` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cycle`,`taskip`,`peerip`,`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `connlog`
--

DROP TABLE IF EXISTS `connlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `connlog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `ts` varchar(45) NOT NULL,
  `taskip` bigint(20) DEFAULT NULL,
  `taskport` int(11) DEFAULT NULL,
  `peerip` bigint(20) DEFAULT NULL,
  `peerport` int(11) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `proto` varchar(10) DEFAULT NULL,
  `service` varchar(15) DEFAULT NULL,
  `send_pkts` bigint(20) DEFAULT NULL,
  `send_bytes` bigint(20) DEFAULT NULL,
  `receive_pkts` bigint(20) DEFAULT NULL,
  `receive_bytes` bigint(20) DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `conn_states` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`,`ts`),
  KEY `coindex` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dnslog`
--

DROP TABLE IF EXISTS `dnslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dnslog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `query` varchar(4096) DEFAULT NULL,
  `answers` varchar(4096) DEFAULT NULL,
  `ttls` varchar(512) DEFAULT NULL,
  `rcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`uid`,`cycle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fileslog`
--

DROP TABLE IF EXISTS `fileslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fileslog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `fuid` varchar(45) NOT NULL,
  `uids` varchar(128) DEFAULT NULL,
  `mime_type` varchar(1024) DEFAULT NULL,
  `filename` varchar(1024) DEFAULT NULL,
  `total_bytes` varchar(512) DEFAULT NULL,
  `md5` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`fuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `httplog`
--

DROP TABLE IF EXISTS `httplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `httplog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  `host` varchar(512) DEFAULT NULL,
  `uri` varchar(1024) DEFAULT NULL,
  `orig_fuids` varchar(512) DEFAULT NULL,
  `resp_fuids` varchar(512) DEFAULT NULL,
  `status_code` varchar(45) DEFAULT NULL,
  `referer` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `iocrelation`
--

DROP TABLE IF EXISTS `iocrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `iocrelation` (
  `taskid` int(11) DEFAULT NULL,
  `name1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `relation` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pelog`
--

DROP TABLE IF EXISTS `pelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pelog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `fuid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `machine` varchar(128) DEFAULT NULL,
  `compile_ts` varchar(128) DEFAULT NULL,
  `os` varchar(128) DEFAULT NULL,
  `subsystem` varchar(128) DEFAULT NULL,
  `is_exe` char(10) DEFAULT NULL,
  `is_64bit` char(10) DEFAULT NULL,
  `uses_aslr` char(10) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`fuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rdplog`
--

DROP TABLE IF EXISTS `rdplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rdplog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) COLLATE utf8_bin NOT NULL,
  `uid` varchar(45) COLLATE utf8_bin NOT NULL,
  `ts` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `cookie` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `result` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `siplog`
--

DROP TABLE IF EXISTS `siplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `siplog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  `uri` varchar(512) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `request_from` varchar(128) DEFAULT NULL,
  `request_to` varchar(128) DEFAULT NULL,
  `response_from` varchar(128) DEFAULT NULL,
  `response_to` varchar(128) DEFAULT NULL,
  `reply_to` varchar(128) DEFAULT NULL,
  `call_id` varchar(128) DEFAULT NULL,
  `seq` varchar(128) DEFAULT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `status_code` varchar(45) DEFAULT NULL,
  `status_msg` varchar(512) DEFAULT NULL,
  `req_body_len` varchar(45) DEFAULT NULL,
  `resp_body_len` varchar(45) DEFAULT NULL,
  `content_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `smtplog`
--

DROP TABLE IF EXISTS `smtplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `smtplog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `helo` varchar(128) DEFAULT NULL,
  `mailfrom` varchar(128) DEFAULT NULL,
  `rcptto` varchar(128) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `cc` varchar(128) DEFAULT NULL,
  `reply_to` varchar(128) DEFAULT NULL,
  `msg_id` varchar(45) DEFAULT NULL,
  `in_reply_to` varchar(128) DEFAULT NULL,
  `last_reply` varchar(45) DEFAULT NULL,
  `subject` varchar(128) DEFAULT NULL,
  `x_originating_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `fuids` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snmplog`
--

DROP TABLE IF EXISTS `snmplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `snmplog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `version` varchar(128) DEFAULT NULL,
  `community` varchar(128) DEFAULT NULL,
  `get_requests` varchar(128) DEFAULT NULL,
  `get_responses` varchar(128) DEFAULT NULL,
  `set_requests` varchar(128) DEFAULT NULL,
  `display_string` varchar(128) DEFAULT NULL,
  `up_since` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sshlog`
--

DROP TABLE IF EXISTS `sshlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sshlog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `auth_success` varchar(45) DEFAULT NULL,
  `auth_attempts` varchar(45) DEFAULT NULL,
  `direction` varchar(45) DEFAULT NULL,
  `client` varchar(128) DEFAULT NULL,
  `server` varchar(128) DEFAULT NULL,
  `cipher_alg` varchar(128) DEFAULT NULL,
  `mac_alg` varchar(128) DEFAULT NULL,
  `compression_alg` varchar(128) DEFAULT NULL,
  `kex_alg` varchar(128) DEFAULT NULL,
  `host_key_alg` varchar(128) DEFAULT NULL,
  `host_key` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ssllog`
--

DROP TABLE IF EXISTS `ssllog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ssllog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ts` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `server_name` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cert_chain_fuids` varchar(512) COLLATE armscii8_bin DEFAULT NULL,
  `client_cert_chain_fuids` varchar(512) COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weirdlog`
--

DROP TABLE IF EXISTS `weirdlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `weirdlog` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `taskip` bigint(20) DEFAULT NULL,
  `taskport` int(11) DEFAULT NULL,
  `peerip` bigint(20) DEFAULT NULL,
  `peerport` int(11) DEFAULT NULL,
  `signature` varchar(128) DEFAULT NULL,
  `sensor` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x509log`
--

DROP TABLE IF EXISTS `x509log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `x509log` (
  `taskid` int(11) NOT NULL,
  `cycle` varchar(45) NOT NULL,
  `fuid` varchar(45) NOT NULL,
  `ts` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `serial` mediumtext,
  `subject` mediumtext,
  `issuer` mediumtext,
  `not_valid_before` varchar(128) DEFAULT NULL,
  `not_valid_after` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`taskid`,`cycle`,`fuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-21 21:43:01
