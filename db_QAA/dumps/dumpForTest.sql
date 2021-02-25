-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: rigspace
-- ------------------------------------------------------
-- Server version	10.1.46-MariaDB-1~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1587034061198-1','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:46',1,'EXECUTED','8:19fcc70a3b2678fe7a65ddc1015ab4d8','createTable tableName=SPRING_SESSION; createIndex indexName=SPRING_SESSION_IX1, tableName=SPRING_SESSION; createIndex indexName=SPRING_SESSION_IX2, tableName=SPRING_SESSION','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-2','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:46',2,'EXECUTED','8:248ae72bf71b38b4ffa8f996983cbf93','createTable tableName=SPRING_SESSION_ATTRIBUTES; createIndex indexName=SPRING_SESSION_ATTRIBUTES_IX1, tableName=SPRING_SESSION_ATTRIBUTES','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-23','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:47',3,'EXECUTED','8:6ab43e64ac7b4ab22e41ab944f06a669','createTable tableName=audit_data','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-24','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:47',4,'EXECUTED','8:f3c272d5b26a67e8df3b70e9463dcc5e','createTable tableName=audit_descriptor','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-46','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:48',5,'EXECUTED','8:3b7b4ec33912de3d2077d50bb2cd9565','createTable tableName=changelog; createIndex indexName=changelog_well_ts, tableName=changelog','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-47','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:49',6,'EXECUTED','8:684e3a3178a55385d4ab3f8e3585c5dc','createTable tableName=cluster; addUniqueConstraint constraintName=uniq_cluster_index, tableName=cluster','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-58','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:50',7,'EXECUTED','8:57eb628be42d3d673438dd81a4af67e4','createTable tableName=drilling_contractor_company','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-59','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:50',8,'EXECUTED','8:8a5398b9ba33dde10836aec0d4be7d49','createTable tableName=drilling_crew','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-60','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:50',9,'EXECUTED','8:01e76eafa0d2d7f9df9d78d35c35083d','createTable tableName=drilling_crew_status; loadData tableName=drilling_crew_status','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-61','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:51',10,'EXECUTED','8:2fc389dd3a57bb7cb38e2b63973a2b8d','createTable tableName=drilling_crew_type','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-62','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:53',11,'EXECUTED','8:0616622dbb13f4b5322c4fd11e591e43','createTable tableName=drilling_tour; createIndex indexName=drilling_tour_index_1, tableName=drilling_tour','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-63','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:53',12,'EXECUTED','8:4dedc41b96dfd585255598c8b49c6f15','createTable tableName=drilling_tour_type; loadData tableName=drilling_tour_type','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-65','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:53',13,'EXECUTED','8:1edfd086ffe2a381988ce198195a6c1b','createTable tableName=entity_name; loadData tableName=entity_name','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-73','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:54',14,'EXECUTED','8:f470cec2232fdaa8ef75638d4d745e1d','createTable tableName=field','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-90','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:55',15,'EXECUTED','8:798bb100fd388c69c36bf68ee0a520bf','createTable tableName=license','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-93','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:55',16,'EXECUTED','8:78928059d7eaa1fa6e2a520abbaab06e','createTable tableName=liquidated_well_category','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-113','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:55',17,'EXECUTED','8:8e816e7b97fbb440c4336ccfc0edfe63','createTable tableName=oauth_access_token','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-114','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:56',18,'EXECUTED','8:9467618cd82317b7c467fd618f9a5e4b','createTable tableName=oauth_client_details; loadData tableName=oauth_client_details','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-115','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:57',19,'EXECUTED','8:e84ce6a89a551111d5e61f4ba847cc90','createTable tableName=oauth_client_token','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-116','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:01:59',20,'EXECUTED','8:e0e3e6b64eb999f4d48f5dddd49c9b85','createTable tableName=oauth_code','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-117','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:00',21,'EXECUTED','8:970a21960396d0ccbffc4f300df3ddb8','createTable tableName=oauth_refresh_token','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-122','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:00',22,'EXECUTED','8:88298c9e1aedea68b2b7c391a6684aac','createTable tableName=password_reset_token; createIndex indexName=FK5lwtbncug84d4ero33v3cfxvl, tableName=password_reset_token','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-151','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:01',23,'EXECUTED','8:52b4287b09289db505beb1272257b2ce','createTable tableName=rig; addUniqueConstraint constraintName=rig_unique_constraint_1, tableName=rig','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-152','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:02',24,'EXECUTED','8:28d9d06c3a130100c08bb8f8291a7271','createTable tableName=rig_and_drilling_crew_relation; createIndex indexName=rig_and_drilling_crew_relation_rig_id_index, tableName=rig_and_drilling_crew_relation; createIndex indexName=rig_and_drilling_crew_relation_drilling_crew_id_index, tableNa...','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-153','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:04',25,'EXECUTED','8:fc4e842e0f266e21698038775662a7d5','createTable tableName=rig_committed_and_uncommitted_ids; createIndex indexName=rig_committed_and_uncommitted_ids_index_1, tableName=rig_committed_and_uncommitted_ids; createIndex indexName=rig_committed_and_uncommitted_ids_index_2, tableName=rig_c...','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-155','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:05',26,'EXECUTED','8:86a60174cb28c96f9966694446aaa501','createTable tableName=rig_owner','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-156','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:06',27,'EXECUTED','8:ba1711dec29743d0fe0cd882fecec693','createTable tableName=rig_status; loadData tableName=rig_status','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-157','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:07',28,'EXECUTED','8:f444505064c353a24e8857270cf3be01','createTable tableName=rig_type','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-158','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:07',29,'EXECUTED','8:9c86169ebbfe2a3441bd54c7adfdba04','createTable tableName=right_dictionary; loadData tableName=right_dictionary','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-159','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:09',30,'EXECUTED','8:52b1c27b3a02c1639868926df1fecd34','createTable tableName=right_dictionary_item; loadData tableName=right_dictionary_item; addUniqueConstraint constraintName=permission_id_specific_protected_object_id, tableName=right_dictionary_item; createIndex indexName=FKdfcauh7erbk74i0r4be10rf0...','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-160','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:10',31,'EXECUTED','8:3a46962eae426a999ba29429c434fa96','createTable tableName=role; loadData tableName=role','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-161','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:11',32,'EXECUTED','8:7e5b96c2a08fff67370e6baec0416fea','createTable tableName=roles_and_security_groups; loadData tableName=roles_and_security_groups; createIndex indexName=roles_and_security_groups_index_1, tableName=roles_and_security_groups','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-162','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:11',33,'EXECUTED','8:85d98b7d6c41ecbef7db449b7a5720e6','createTable tableName=route','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-164','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:13',34,'EXECUTED','8:5a9ef9aae47aea5a370dd4b7c49bbb30','createTable tableName=rule; loadData tableName=rule; addUniqueConstraint constraintName=permission_id_specific_protected_object_id_rule, tableName=rule; createIndex indexName=FKnme9gfi0vlwejxpgkfgrjsbv6, tableName=rule','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-168','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:14',35,'EXECUTED','8:96f39ae273098c27d3a364911a87784b','createTable tableName=security_event; createIndex indexName=security_event_index_1, tableName=security_event','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-169','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:15',36,'EXECUTED','8:f196ff4de01267b7ea1afeb723a7bb81','createTable tableName=security_filter; loadData tableName=security_filter; addUniqueConstraint constraintName=four_fields_security_filter_uniq, tableName=security_filter','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-170','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:16',37,'EXECUTED','8:bede3479873859078cf56fec083a981b','createTable tableName=security_group; loadData tableName=security_group','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-177','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:17',38,'EXECUTED','8:d49f50c65b06039a2d5d4f6c30dba17b','createTable tableName=specific_protected_object; addUniqueConstraint constraintName=entity_id_name_specific_protected_object_uniq, tableName=specific_protected_object','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-181','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:18',39,'EXECUTED','8:03fdfc8047f29a55e3f5f79ac3c08243','createTable tableName=subsoil_user','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-199','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:19',40,'EXECUTED','8:7c074510300769a763aae1177b2020f9','createTable tableName=user; loadData tableName=user; createIndex indexName=email_user_index, tableName=user; createIndex indexName=username_user_index, tableName=user','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-200','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:20',41,'EXECUTED','8:326876530b68b3993b2864474434b0b9','createTable tableName=users_and_security_groups; loadData tableName=users_and_security_groups; createIndex indexName=users_and_security_groups_index_1, tableName=users_and_security_groups; createIndex indexName=users_and_security_groups_index_2, t...','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-201','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:21',42,'EXECUTED','8:6abb5477b14bc688e9a8ed32798a928d','createTable tableName=well; createIndex indexName=cluster_index, tableName=well; createIndex indexName=rig_id_index, tableName=well','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-202','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:23',43,'EXECUTED','8:8448bde4f1331a301650e780661551ff','createTable tableName=well_and_rig_relation; createIndex indexName=well_and_rig_relation_rig_id_index, tableName=well_and_rig_relation; createIndex indexName=well_id_index, tableName=well_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-203','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:24',44,'EXECUTED','8:38b7fb1004ef64ac36b85cf448b8a052','createTable tableName=well_license_area','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-204','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:24',45,'EXECUTED','8:e14d22579121e6536d0c482430e14f9f','createTable tableName=well_place','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-205','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:25',46,'EXECUTED','8:799ffea3647353c85b0955a0931ec101','createTable tableName=well_project','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-206','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:26',47,'EXECUTED','8:021eaece38d909b93157055fa76106d5','createTable tableName=well_purpose','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-213','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:27',48,'EXECUTED','8:13e19f7bac27082253d5542bb51c2886','createTable tableName=well_status; loadData tableName=well_status','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-214','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:28',49,'EXECUTED','8:3a16cce2086f1dcd5dc673469ba3debc','createTable tableName=well_type; loadData tableName=well_type','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-215','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:33',50,'EXECUTED','8:901fd394f51a9467fe95b027fc7356bf','createTable tableName=wellbore; addUniqueConstraint constraintName=well_id_index_number_wellbore_uniq, tableName=wellbore; createIndex indexName=well_wellbore_index, tableName=wellbore','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-216','m.turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:33',51,'EXECUTED','8:489243db493fbbc5cbc83d2ec331e021','createTable tableName=wellbore_purpose','',NULL,'3.6.3',NULL,NULL,'7870905399'),('13','turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:35',52,'EXECUTED','8:41c7c68d9fc524da284f68d32e53dcec','createTable tableName=entity_error; createIndex indexName=entity_error_name_and_id, tableName=entity_error; createIndex indexName=entity_error_index_2, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7870905399'),('16','turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:36',53,'EXECUTED','8:1ce20ff98cb74eaaac860671adbf3e00','createTable tableName=entity_error_props; createIndex indexName=entity_error_props_error_id, tableName=entity_error_props','',NULL,'3.6.3',NULL,NULL,'7870905399'),('17','turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:37',54,'EXECUTED','8:afdd1be891f1d2bc90879a9d62bd7f62','createTable tableName=processing_buffer','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1828-8','turygin','db/changelog/common/base_state/base_state.xml','2020-08-19 21:02:37',55,'EXECUTED','8:2e6f0de0bf74af3b82e4a2d125cac3d1','insert tableName=right_dictionary_item; insert tableName=right_dictionary_item; insert tableName=right_dictionary_item','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','dorofeev','db/changelog/2020-02-21/RIGSPACE-2388.xml','2020-08-19 21:02:37',56,'EXECUTED','8:7e5915ca920ac3bd360278ec59eb7514','dropTable tableName=entity_error_props','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','dorofeev','db/changelog/2020-02-21/RIGSPACE-2388.xml','2020-08-19 21:02:38',57,'EXECUTED','8:f91796c5d1f2c7593ad8e286a1222f4c','createTable tableName=entity_error_prop','',NULL,'3.6.3',NULL,NULL,'7870905399'),('3','dorofeev','db/changelog/2020-02-21/RIGSPACE-2388.xml','2020-08-19 21:02:38',58,'EXECUTED','8:c7dba72c13693efc94b6408147a891f5','createIndex indexName=error_id_entity_error_prop, tableName=entity_error_prop','',NULL,'3.6.3',NULL,NULL,'7870905399'),('4','dorofeev','db/changelog/2020-02-21/RIGSPACE-2388.xml','2020-08-19 21:02:39',59,'EXECUTED','8:8fe9cc7451cb5d629b7ab0ccd71b310b','modifyDataType columnName=rule, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7870905399'),('5','dorofeev','db/changelog/2020-02-21/RIGSPACE-2388.xml','2020-08-19 21:02:40',60,'EXECUTED','8:7136319ec3a5f0a8db52174ee6af784a','createIndex indexName=rule_name_entity_error_index, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','dorofeev','db/changelog/2020-04-27/RIGSPACE-2459.xml','2020-08-19 21:02:40',61,'EXECUTED','8:1d9ab1ddccb619f99bb3f8ff5ee012b7','sql','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','dorofeev','db/changelog/2020-04-27/RIGSPACE-2459.xml','2020-08-19 21:02:40',62,'EXECUTED','8:f86fbddf32bb3b7aad29f42747180af0','sql','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','grebenyuk','db/changelog/2020-04-27/RIGSPACE-2507.xml','2020-08-19 21:02:41',63,'EXECUTED','8:be77b67702eeb60327df4ee826d7ae68','addColumn tableName=drilling_crew','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','dorofeev','db/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:02:41',64,'EXECUTED','8:481eb5baf30b478eeb45f7a6199b50dd','sql','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','dorofeev','db/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:02:41',65,'EXECUTED','8:b37849b3ef0b0198e51b7a0c55aea10d','sql','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','grebenyuk','db/changelog/2020-05-13/RIGSPACE-2521.xml','2020-08-19 21:02:42',66,'EXECUTED','8:2da8f0b157ab98fa784b225c445d4f00','createTable tableName=drilling_tour_properties; createIndex indexName=drilling_tour_properties_drilling_crew_index_1, tableName=drilling_tour_properties','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','grebenyuk','db/changelog/2020-05-13/RIGSPACE-2521.xml','2020-08-19 21:02:43',67,'EXECUTED','8:0ba5ec7340b3dd4552bcd67bdb671eee','addColumn tableName=drilling_tour; createIndex indexName=drilling_tour_drilling_crew_index_1, tableName=drilling_tour','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','d.grebenyuk','db/changelog/2020-05-25/RIGSPACE-2521.xml','2020-08-19 21:02:44',68,'EXECUTED','8:4a18e7a48eda5b4d7a8d455e1322e465','addColumn tableName=drilling_tour','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','dorofeev','db/changelog/2020-05-25/RIGSPACE-2758.xml','2020-08-19 21:02:45',69,'EXECUTED','8:f66a06080aa715f1e4ab5b4a748a8f07','createTable tableName=well_category','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','dorofeev','db/changelog/2020-05-25/RIGSPACE-2758.xml','2020-08-19 21:02:46',70,'EXECUTED','8:8916a9ea1b991bab6d4afa219cf47a54','addColumn tableName=well','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','dorofeev','db/changelog/2020-05-25/RIGSPACE-2759.xml','2020-08-19 21:02:47',71,'EXECUTED','8:08dc26ca20bbc5b5a75bed9716b5b01f','createTable tableName=well_formation','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','dorofeev','db/changelog/2020-05-25/RIGSPACE-2759.xml','2020-08-19 21:02:47',72,'MARK_RAN','8:36e57c15e2f8be3f0c8ff3e6c66af043','sql','',NULL,'3.6.3',NULL,NULL,'7870905399'),('3','dorofeev','db/changelog/2020-05-25/RIGSPACE-2759.xml','2020-08-19 21:02:47',73,'EXECUTED','8:d0a7123b3706e8a436a8521f03c8a94c','sql','',NULL,'3.6.3',NULL,NULL,'7870905399'),('4','dorofeev','db/changelog/2020-05-25/RIGSPACE-2759.xml','2020-08-19 21:02:48',74,'EXECUTED','8:9e3bbd824d75889719d7497ec88b210f','renameTable newTableName=formation, oldTableName=well_formation','',NULL,'3.6.3',NULL,NULL,'7870905399'),('5','dorofeev','db/changelog/2020-05-25/RIGSPACE-2759.xml','2020-08-19 21:02:49',75,'EXECUTED','8:89af7a69c3b5cfbe08127477cc1df901','addColumn tableName=well','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','dorofeev','db/changelog/2020-05-25/RIGSPACE-2760.xml','2020-08-19 21:02:50',76,'EXECUTED','8:33891b514bcd02a175c3282bedf6d035','createTable tableName=well_fluid','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','dorofeev','db/changelog/2020-05-25/RIGSPACE-2760.xml','2020-08-19 21:02:51',77,'EXECUTED','8:5463ac55673a2a2cf1d1482e7d3dfb11','addColumn tableName=well','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','m.turygin','db/changelog/2020-06-09/RIGSPACE-2953.xml','2020-08-19 21:02:52',78,'EXECUTED','8:a9962a623a486a6001da00501f779c2e','addColumn tableName=user','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','d.grebenyuk','db/changelog/2020-07-08/RIGSPACE-3219.xml','2020-08-19 21:02:53',79,'EXECUTED','8:fac1a682a09214ef0ab106a1fd32bab5','addColumn tableName=well_project','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','d.grebenyuk','db/changelog/2020-07-08/RIGSPACE-3219.xml','2020-08-19 21:02:54',80,'EXECUTED','8:0270746c8ce542d76d5e0c18dc33e697','addColumn tableName=well_project','',NULL,'3.6.3',NULL,NULL,'7870905399'),('3','d.grebenyuk','db/changelog/2020-07-08/RIGSPACE-3219.xml','2020-08-19 21:02:55',81,'EXECUTED','8:20a6eab9e2ad17f164c28a5578122af1','addColumn tableName=well_project','',NULL,'3.6.3',NULL,NULL,'7870905399'),('4','d.grebenyuk','db/changelog/2020-07-08/RIGSPACE-3219.xml','2020-08-19 21:02:55',82,'EXECUTED','8:b1266cdd91ca0a97717584159b7f9e48','addColumn tableName=well_project','',NULL,'3.6.3',NULL,NULL,'7870905399'),('5','d.grebenyuk','db/changelog/2020-07-08/RIGSPACE-3219.xml','2020-08-19 21:02:56',83,'EXECUTED','8:61190bfb7a741d00049a4f9977e92b71','addColumn tableName=well_project','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1','d.grebenyuk','db/changelog/2020-08-04/RIGSPACE-3854.xml','2020-08-19 21:02:57',84,'EXECUTED','8:95d799d5f8ae380a5909b514371f6ce5','insert tableName=right_dictionary_item','',NULL,'3.6.3',NULL,NULL,'7870905399'),('2','d.grebenyuk','db/changelog/2020-08-04/RIGSPACE-3854.xml','2020-08-19 21:02:57',85,'EXECUTED','8:aefdcc06a6280977d0a047043e828696','insert tableName=right_dictionary','',NULL,'3.6.3',NULL,NULL,'7870905399'),('1587034061198-124','m.turygin','db/changelog/admin_and_reporting_common/base_state/admin_and_reporting.xml','2020-08-19 21:04:55',86,'EXECUTED','8:9d33fd1d312699a279157b98dc10c26b','createTable tableName=pit; createIndex indexName=pit_type_id_index_pit, tableName=pit','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1587034061198-125','m.turygin','db/changelog/admin_and_reporting_common/base_state/admin_and_reporting.xml','2020-08-19 21:04:57',87,'EXECUTED','8:032d614dcd24367412bba1b9e6d47657','createTable tableName=pit_and_rig_relation; createIndex indexName=event_daily_report_pit_and_rig_relation_index, tableName=pit_and_rig_relation; createIndex indexName=pit_id_index_pit_and_rig_relation, tableName=pit_and_rig_relation; createIndex i...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1587034061198-126','m.turygin','db/changelog/admin_and_reporting_common/base_state/admin_and_reporting.xml','2020-08-19 21:04:59',88,'EXECUTED','8:a1a98a170085be8573e002dea95f6ee1','createTable tableName=pit_status; addUniqueConstraint constraintName=pit_status_daily_report_id_pit_id_uniq, tableName=pit_status; createIndex indexName=event_daily_report_pit_status_index, tableName=pit_status','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1587034061198-127','m.turygin','db/changelog/admin_and_reporting_common/base_state/admin_and_reporting.xml','2020-08-19 21:04:59',89,'EXECUTED','8:d18b9fc5b5d67f8a71d7170471b933c8','createTable tableName=pit_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1587034061198-150','m.turygin','db/changelog/admin_and_reporting_common/base_state/admin_and_reporting.xml','2020-08-19 21:05:01',90,'EXECUTED','8:c7739fa7d8d6b5539d6edd74f9991be1','createTable tableName=report_type; loadData tableName=report_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:02',91,'EXECUTED','8:0c0ca83467fb1ad8da2bcdd7325f0e77','createTable tableName=pump_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:03',92,'EXECUTED','8:246df8375762002b27a7b0f43a119768','createTable tableName=pump_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('3','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:03',93,'EXECUTED','8:11db73993261602b0f2173a2d1811afe','insert tableName=pump_type; insert tableName=pump_type; insert tableName=pump_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:03',94,'EXECUTED','8:e4d0dbca78b50ab76ed0e54e8376e043','createTable tableName=pump','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:04',95,'EXECUTED','8:72d1537781088f1e0a27505cf4571ab4','createTable tableName=pump_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7871094251'),('6','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:05',96,'EXECUTED','8:e42b57fb4eed0d42b43ececd4b66cf36','createTable tableName=aggregate_manufacturer','',NULL,'3.6.3',NULL,NULL,'7871094251'),('7','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:06',97,'EXECUTED','8:be7be084cd28f12303915cff7f5e727d','createIndex indexName=rig_pump_and_rig_relation_index, tableName=pump_and_rig_relation; createIndex indexName=pump_pump_and_rig_relation_index, tableName=pump_and_rig_relation; createIndex indexName=pos_pump_pump_and_rig_relation_index, tableName=...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('8','dorofeev','db/changelog/2020-04-23/RIGSPACE-2390.xml','2020-08-19 21:05:08',98,'EXECUTED','8:835e534f3dc6cbba52e3bf4cecac15c0','createIndex indexName=pump_type_pump_index, tableName=pump; createIndex indexName=pump_model_pump_index, tableName=pump; createIndex indexName=manufacturer_model_pump_index, tableName=pump','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-04-30/RIGSPACE-2534.xml','2020-08-19 21:05:09',99,'EXECUTED','8:ae6c68f34ac07ada8dccc50614cff714','createTable tableName=shaker_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-04-30/RIGSPACE-2534.xml','2020-08-19 21:05:10',100,'EXECUTED','8:f4490d33b7eb5bc5d5db2f2955a64bb9','createTable tableName=shaker_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('3','dorofeev','db/changelog/2020-04-30/RIGSPACE-2534.xml','2020-08-19 21:05:10',101,'EXECUTED','8:8e5099315de7e425de722884ca0f65b4','createTable tableName=shaker','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-04-30/RIGSPACE-2534.xml','2020-08-19 21:05:11',102,'EXECUTED','8:de8ac074569b4c1943060a26c1e54c2a','createTable tableName=shaker_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-04-30/RIGSPACE-2534.xml','2020-08-19 21:05:12',103,'EXECUTED','8:7703717cb522aebd2a5148e5767f797d','createIndex indexName=rig_shaker_and_rig_relation_index, tableName=shaker_and_rig_relation; createIndex indexName=shaker_shaker_and_rig_relation_index, tableName=shaker_and_rig_relation; createIndex indexName=pos_shaker_and_rig_relation_index, tab...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('6','dorofeev','db/changelog/2020-04-30/RIGSPACE-2534.xml','2020-08-19 21:05:13',104,'EXECUTED','8:ec87e7dbae254365750665566ab73368','createIndex indexName=type_shaker_index, tableName=shaker; createIndex indexName=model_shaker_index, tableName=shaker; createIndex indexName=manufacturer_shaker_index, tableName=shaker','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-05-07/RIGSPACE-2543.xml','2020-08-19 21:05:15',105,'EXECUTED','8:796962271efc34fb11cdf131f9acc3d9','createTable tableName=hydroclone_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-05-07/RIGSPACE-2543.xml','2020-08-19 21:05:16',106,'EXECUTED','8:7d6abeff8d405df9d7810892fc95f692','createTable tableName=hydroclone_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-05-07/RIGSPACE-2543.xml','2020-08-19 21:05:17',107,'EXECUTED','8:092e05f9fc8d7be54f3dc99578120c9a','createTable tableName=hydroclone','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-05-07/RIGSPACE-2543.xml','2020-08-19 21:05:17',108,'EXECUTED','8:1e3918df71439373c41fe4a6b6327a19','createTable tableName=hydroclone_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7871094251'),('7','dorofeev','db/changelog/2020-05-07/RIGSPACE-2543.xml','2020-08-19 21:05:19',109,'EXECUTED','8:4a2ed2f1bd3fe7b84466157756c6db42','createIndex indexName=rig_hydroclone_and_rig_relation_index, tableName=hydroclone_and_rig_relation; createIndex indexName=hydroclone_hydroclone_and_rig_relation_index, tableName=hydroclone_and_rig_relation; createIndex indexName=pos_hydroclone_hyd...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('8','dorofeev','db/changelog/2020-05-07/RIGSPACE-2543.xml','2020-08-19 21:05:21',110,'EXECUTED','8:75d833fcd4fdbf697fec5a9993681daf','createIndex indexName=type_hydroclone_index, tableName=hydroclone; createIndex indexName=model_hydroclone_index, tableName=hydroclone; createIndex indexName=manufacturer_hydroclone_index, tableName=hydroclone','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-05-08/RIGSPACE-2545.xml','2020-08-19 21:05:22',111,'EXECUTED','8:e5645108a6435e146931b35a3528f05d','createTable tableName=centrifuge_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-05-08/RIGSPACE-2545.xml','2020-08-19 21:05:23',112,'EXECUTED','8:a72dcd65a21f8fdf1795954ba3042e8f','createTable tableName=centrifuge_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-05-08/RIGSPACE-2545.xml','2020-08-19 21:05:23',113,'EXECUTED','8:e4c6110a492874403a25711cc36f0c27','createTable tableName=centrifuge','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-05-08/RIGSPACE-2545.xml','2020-08-19 21:05:24',114,'EXECUTED','8:f7ba01e547226f31e352eabb63f6d55b','createTable tableName=centrifuge_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7871094251'),('7','dorofeev','db/changelog/2020-05-08/RIGSPACE-2545.xml','2020-08-19 21:05:25',115,'EXECUTED','8:1d7006645a62eb38277b04534f51f1b5','createIndex indexName=rig_centrifuge_and_rig_relation_index, tableName=centrifuge_and_rig_relation; createIndex indexName=centrifuge_centrifuge_and_rig_relation_index, tableName=centrifuge_and_rig_relation; createIndex indexName=pos_centrifuge_cen...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('8','dorofeev','db/changelog/2020-05-08/RIGSPACE-2545.xml','2020-08-19 21:05:26',116,'EXECUTED','8:3e93a7c720711ebad5c5d640f9429a98','createIndex indexName=type_centrifuge_index, tableName=centrifuge; createIndex indexName=model_centrifuge_index, tableName=centrifuge; createIndex indexName=manufacturer_centrifuge_index, tableName=centrifuge','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-05-12/RIGSPACE-2541.xml','2020-08-19 21:05:28',117,'EXECUTED','8:5ac3a239e755d999e2de8f080740963c','createTable tableName=degasser_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-05-12/RIGSPACE-2541.xml','2020-08-19 21:05:28',118,'EXECUTED','8:2a5341f69080eed2f85471dba64d75eb','createTable tableName=degasser_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-05-12/RIGSPACE-2541.xml','2020-08-19 21:05:29',119,'EXECUTED','8:be908c08f0c08c5908ffa82a3c314a77','createTable tableName=degasser','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-05-12/RIGSPACE-2541.xml','2020-08-19 21:05:29',120,'EXECUTED','8:85a40bd2fe853936f718b393807c5f02','createTable tableName=degasser_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7871094251'),('7','dorofeev','db/changelog/2020-05-12/RIGSPACE-2541.xml','2020-08-19 21:05:30',121,'EXECUTED','8:783796789b31de4dde9607ae9d81dc7d','createIndex indexName=rig_degasser_and_rig_relation_index, tableName=degasser_and_rig_relation; createIndex indexName=degasser_degasser_and_rig_relation_index, tableName=degasser_and_rig_relation; createIndex indexName=pos_degasser_degasser_and_ri...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('8','dorofeev','db/changelog/2020-05-12/RIGSPACE-2541.xml','2020-08-19 21:05:32',122,'EXECUTED','8:3bf33f5b04773288bd70f498b1383c6d','createIndex indexName=type_degasser_index, tableName=degasser; createIndex indexName=model_degasser_index, tableName=degasser; createIndex indexName=manufacturer_degasser_index, tableName=degasser','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:32',123,'EXECUTED','8:40381f364a623461a98a594a7ca458ce','createTable tableName=purification','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:33',124,'EXECUTED','8:3713375917e982093f0b390d46c35738','renameColumn newColumnName=model_id, oldColumnName=shaker_model_id, tableName=shaker; renameColumn newColumnName=type_id, oldColumnName=shaker_type_id, tableName=shaker; renameColumn newColumnName=number, oldColumnName=shaker_number, tableName=sha...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('3','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:34',125,'EXECUTED','8:b377f791cb1ce5f8fefa1c6130d6f49e','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:34',126,'EXECUTED','8:8817d7bcf51969c3f7f7fcbafe4e2111','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:35',127,'EXECUTED','8:02a8a7d79d8ca1fcc65d4d320c66fe02','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('6','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:36',128,'EXECUTED','8:dc830971a29f9dbc7b47d19366f1a3f0','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('7','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:37',129,'EXECUTED','8:947c028f7fb2febea76cb68fa0ce4522','dropColumn columnName=tmp_id, tableName=purification','',NULL,'3.6.3',NULL,NULL,'7871094251'),('8','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:41',130,'EXECUTED','8:6838e75da964f2281bd9b32a6bee5989','dropColumn columnName=rig_owner_id, tableName=shaker; dropColumn columnName=number, tableName=shaker; dropColumn columnName=remarks, tableName=shaker; dropColumn columnName=aggregate_manufacturer_id, tableName=shaker','',NULL,'3.6.3',NULL,NULL,'7871094251'),('9','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:45',131,'EXECUTED','8:28cdbc6e3a16555a0a0282e84ea262a2','dropColumn columnName=rig_owner_id, tableName=degasser; dropColumn columnName=number, tableName=degasser; dropColumn columnName=remarks, tableName=degasser; dropColumn columnName=aggregate_manufacturer_id, tableName=degasser','',NULL,'3.6.3',NULL,NULL,'7871094251'),('10','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:51',132,'EXECUTED','8:682ca8c66ab88b18b61d2e63c686b194','dropColumn columnName=rig_owner_id, tableName=centrifuge; dropColumn columnName=number, tableName=centrifuge; dropColumn columnName=remarks, tableName=centrifuge; dropColumn columnName=aggregate_manufacturer_id, tableName=centrifuge','',NULL,'3.6.3',NULL,NULL,'7871094251'),('11','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:55',133,'EXECUTED','8:b9e170e028fa95a6254ae31bcf6f23a9','dropColumn columnName=rig_owner_id, tableName=hydroclone; dropColumn columnName=number, tableName=hydroclone; dropColumn columnName=remarks, tableName=hydroclone; dropColumn columnName=aggregate_manufacturer_id, tableName=hydroclone','',NULL,'3.6.3',NULL,NULL,'7871094251'),('12','dorofeev','db/changelog/2020-05-12/RIGSPACE-2547.xml','2020-08-19 21:05:55',134,'EXECUTED','8:de720f5531d684657285e03645b1f3d1','renameTable newTableName=cleaning_system, oldTableName=purification','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-05-14/RIGSPACE-2547.xml','2020-08-19 21:05:55',135,'EXECUTED','8:72cfa41e881d1ce0de14e73df899734b','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-05-14/RIGSPACE-2547.xml','2020-08-19 21:05:56',136,'EXECUTED','8:2e27568ee5908c64d228e46a00836022','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:05:57',137,'EXECUTED','8:69026a228a6abd7531b8a6c3b2def2f0','createTable tableName=bop_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:05:57',138,'EXECUTED','8:68621d49e69ffeb2755d4ce7f8eaf18f','createTable tableName=bop_component_model','',NULL,'3.6.3',NULL,NULL,'7871094251'),('3','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:05:58',139,'EXECUTED','8:6ef831c0d9b4ee1c38eb76228ed15936','createTable tableName=bop_component_type','',NULL,'3.6.3',NULL,NULL,'7871094251'),('4','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:05:58',140,'EXECUTED','8:ec99ce523b646c362e98396a33d9d41a','createTable tableName=bop','',NULL,'3.6.3',NULL,NULL,'7871094251'),('5','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:05:59',141,'EXECUTED','8:cabfec9963bdaaaca8c5b3461577fceb','createTable tableName=bop_and_rig_relation','',NULL,'3.6.3',NULL,NULL,'7871094251'),('6','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:05:59',142,'EXECUTED','8:a5615dcae885dcf210349ca6d8370053','createTable tableName=bop_component','',NULL,'3.6.3',NULL,NULL,'7871094251'),('7','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:06:01',143,'EXECUTED','8:bb7aeabe2186c026286c1d2a9d1a7400','createIndex indexName=rig_bop_and_rig_relation_index, tableName=bop_and_rig_relation; createIndex indexName=centrifuge_bop_and_rig_relation_index, tableName=bop_and_rig_relation; createIndex indexName=pos_bop_and_rig_relation_index, tableName=bop_...','',NULL,'3.6.3',NULL,NULL,'7871094251'),('8','dorofeev','db/changelog/2020-06-18/RIGSPACE-2615.xml','2020-08-19 21:06:02',144,'EXECUTED','8:74bdf01ed8c1f3aecfdf36120e130aee','createIndex indexName=pos_bop_component_index, tableName=bop_component','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:06:02',145,'EXECUTED','8:544436bf89bce8716c0303e6f3f81a5a','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:06:02',146,'EXECUTED','8:ab1810876fc2545bba42ebf61bcd6748','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:06:02',147,'EXECUTED','8:aa4843ea3bbe4a5c77968e02c0528325','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('2','dorofeev','db/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:06:02',148,'EXECUTED','8:0059f2355459dad55b588ebb37c737dd','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1','dorofeev','db/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:06:02',149,'EXECUTED','8:1843236411d974bdefa1e7f0c0536392','sql','',NULL,'3.6.3',NULL,NULL,'7871094251'),('1587034061198-32','m.turygin','db/changelog/analytics_and_reporting_common/base_state/analytics_and_reporting.xml','2020-08-19 21:08:19',150,'EXECUTED','8:3d4b0a8115291f951c378c88d59f395c','createTable tableName=bit_model','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-191','m.turygin','db/changelog/analytics_and_reporting_common/base_state/analytics_and_reporting.xml','2020-08-19 21:08:20',151,'EXECUTED','8:1f857796af88f547c822262cc2838f92','createTable tableName=thread_connection_type; createIndex indexName=type_tag_id_thread_connection_type, tableName=thread_connection_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-166','m.turygin','db/changelog/analytics_and_reporting_common/base_state/analytics_and_reporting.xml','2020-08-19 21:08:21',152,'EXECUTED','8:733d93c4c0a93bda94944f6d42733c04','createTable tableName=section_name; loadData tableName=section_name','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-192','m.turygin','db/changelog/analytics_and_reporting_common/base_state/analytics_and_reporting.xml','2020-08-19 21:08:21',153,'EXECUTED','8:11c3f582066f82674f4b04fdc72b28f3','createTable tableName=thread_connection_type_tag; loadData tableName=thread_connection_type_tag','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-38','m.turygin','db/changelog/analytics_and_reporting_common/base_state/analytics_and_reporting.xml','2020-08-19 21:08:22',154,'EXECUTED','8:b9186e6e84758ec7452d2806d2c7dde4','createTable tableName=casing_outside_diameter','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','d.grebenyuk','db/changelog/2020-07-02/RIGSPACE-3173.xml','2020-08-19 21:08:23',155,'EXECUTED','8:e76170cf05152c7e1764189fd9976295','addAutoIncrement columnName=id, tableName=section_name','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','d.grebenyuk','db/changelog/2020-07-02/RIGSPACE-3173.xml','2020-08-19 21:08:24',156,'EXECUTED','8:a2f15a1d9aa7e901b702bf01a0b042a1','addDefaultValue columnName=deleted, tableName=section_name','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-3','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:25',157,'EXECUTED','8:f99838444d647d630f7081f185a6963b','createTable tableName=activity_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-4','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:26',158,'EXECUTED','8:e0fc0384207aab67750b3d8798a4ea78','createTable tableName=activity_types_and_operation_mode_types','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-27','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:26',159,'EXECUTED','8:10169cb87464a8f59523b7cb5068ddbe','createTable tableName=bearing; loadData tableName=bearing','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-28','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:27',160,'EXECUTED','8:443d232409aa1d4aed9ac2f41d387a6a','createTable tableName=bha_operation; createIndex indexName=bha_run_position_in_list_bha_operation_index, tableName=bha_operation; createIndex indexName=daily_report_id_bha_operation_index, tableName=bha_operation; createIndex indexName=event_repor...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-29','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:28',161,'EXECUTED','8:bbd12799dd73dcbe21941e91e7ed912e','createTable tableName=bha_run; createIndex indexName=event_start_time_bha_run_index, tableName=bha_run; createIndex indexName=event_tubular_assembly_bha_run_index, tableName=bha_run; createIndex indexName=tubular_assembly_id_bha_run_index, tableNa...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-30','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:29',162,'EXECUTED','8:b1b09732226180ce6a07873dc1852c00','createTable tableName=bit_dull_grade; createIndex indexName=bit_dull_grade_index, tableName=bit_dull_grade','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-34','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:30',163,'EXECUTED','8:fc4737593fbb1e2a783c7125b1717d18','createTable tableName=bit_size','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-39','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:34',164,'EXECUTED','8:18264f47017eea75a391f5c52eefa514','createTable tableName=casing_report; addUniqueConstraint constraintName=wellbore_date_event_casing_report_uniq, tableName=casing_report; createIndex indexName=casing_report_date_index, tableName=casing_report; createIndex indexName=casing_report_e...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-40','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:35',165,'EXECUTED','8:6b3be9cde8926884ae22c102464542b6','createTable tableName=casing_report_general_info; createIndex indexName=event_casing_report_general_info_index, tableName=casing_report_general_info; createIndex indexName=stage_casing_report_general_info_index, tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-41','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:36',166,'EXECUTED','8:b8a359f9c74b062211893a219a6453b3','createTable tableName=cement_job_type; loadData tableName=cement_job_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-42','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:38',167,'EXECUTED','8:478b5d5cfc4b32edacf31b49377f1ea2','createTable tableName=cementing_fluid_type; loadData tableName=cementing_fluid_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-43','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:39',168,'EXECUTED','8:19c9a2f6306deb4e8b79c1ae1147194d','createTable tableName=cementing_method','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-44','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:41',169,'EXECUTED','8:dad0157046a284075ee70cca38e346b8','createTable tableName=cementing_report; addUniqueConstraint constraintName=wellbore_date_event_cementing_report_uniq, tableName=cementing_report; createIndex indexName=cementing_report_date_index, tableName=cementing_report; createIndex indexName=...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-45','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:43',170,'EXECUTED','8:b0485324ff749b445f6e747664fe01ad','createTable tableName=cementing_report_general_info; createIndex indexName=event_cementing_report_general_info_index, tableName=cementing_report_general_info; createIndex indexName=stage_cementing_report_general_info_index, tableName=cementing_rep...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-48','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:43',171,'EXECUTED','8:fc0372e7b8ac5c6dcc47b43ccaebdfc9','createTable tableName=contractor','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-49','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:44',172,'EXECUTED','8:0bc37a0122c6655e68dcb446e8f24a27','createTable tableName=currency','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-51','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:47',173,'EXECUTED','8:a6d18b456a64598b0ed7988a16f837aa','createTable tableName=daily_report; addUniqueConstraint constraintName=number_event_id_daily_report, tableName=daily_report; addUniqueConstraint constraintName=wellbore_date_event_daily_report_uniq, tableName=daily_report; createIndex indexName=da...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-52','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:48',174,'EXECUTED','8:2110735882b155531666048dc2d5583b','createTable tableName=daily_report_general_info; createIndex indexName=daily_report_general_info_event_index, tableName=daily_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-56','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:49',175,'EXECUTED','8:9b6cb209255ad07fc0a507dfe9da5438','createTable tableName=document_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-64','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:50',176,'EXECUTED','8:54c3d1e229fbc63a49d49d17dbd92503','createTable tableName=dull_code; loadData tableName=dull_code','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-66','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:52',177,'EXECUTED','8:ec00fa9227d866ec82a5589b69a20178','createTable tableName=event; createIndex indexName=event_type_event_index, tableName=event; createIndex indexName=well_event_type_event_index, tableName=event','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-67','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:54',178,'EXECUTED','8:5ba0ac4727129fa5bd67cbf654f1a2f4','createTable tableName=event_stage_operation_activity_ref; createIndex indexName=activity_type_id_ref_index, tableName=event_stage_operation_activity_ref; createIndex indexName=event_type_id_ref_index, tableName=event_stage_operation_activity_ref; ...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-68','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:55',179,'EXECUTED','8:a27aaa81bfcd51585655845fc4985d3a','createTable tableName=event_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-69','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:56',180,'EXECUTED','8:30a24193b601226d49d96e14e26dd399','createTable tableName=event_types_and_report_forms','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-70','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:57',181,'EXECUTED','8:e679ada2b9fd16847b570a0d70031f3b','createTable tableName=event_types_and_report_types','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-71','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:57',182,'EXECUTED','8:88f56c96ff1995881cc14a269d4854a3','createTable tableName=events_and_report_forms','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-72','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:58',183,'EXECUTED','8:d62a1d884dfc9374e4bc8f51bd3e1d1e','createTable tableName=events_and_report_types','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-74','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:08:58',184,'EXECUTED','8:01ad041c49787a959bf598fde9b6341b','createTable tableName=fluid_base_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-75','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:00',185,'EXECUTED','8:1e99b647cbfdcb10bc7c0c4b85a8e61c','createTable tableName=fluid_type; createIndex indexName=fluid_base_type_id_index_fluid_type, tableName=fluid_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-76','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:00',186,'MARK_RAN','8:8f459f0cbd2f064e5e3a770e8a3ee9b3','createTable tableName=formation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-77','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:01',187,'EXECUTED','8:786139ef99be71b8583c767ec762f960','createTable tableName=grade; createIndex indexName=grade_tag_id_grade_index, tableName=grade','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-78','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:05',188,'EXECUTED','8:9081f219176ccb5dda9b3a38c7e2a86f','createTable tableName=grade_tag; loadData tableName=grade_tag','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-79','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:06',189,'EXECUTED','8:064e214474fc7aae509b3df313e845ad','createTable tableName=incident; createIndex indexName=event_id_index, tableName=incident; createIndex indexName=finish_time_event_id_index, tableName=incident; createIndex indexName=incident_kind_id_index, tableName=incident; createIndex indexName...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-80','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:07',190,'EXECUTED','8:0349839b2479a0b510dd7ee040ba2da6','createTable tableName=incident_attachment; createIndex indexName=incident_event_incident_attachment_index, tableName=incident_attachment','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-81','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:08',191,'EXECUTED','8:e75c3a5426e0b0ad120a11ac01bc3279','createTable tableName=incident_kind; addUniqueConstraint constraintName=name_incident_type_id_incident_kind, tableName=incident_kind','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-82','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:08',192,'EXECUTED','8:2d5c93c6d87b753cb5b51bfb11704f78','createTable tableName=incident_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-83','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:09',193,'EXECUTED','8:4284bc6c3822c0c107c3f064dd97be9e','createTable tableName=instrument; createIndex indexName=event_id_instrument_index, tableName=instrument; createIndex indexName=tub_assembly_element_subtype_instrument_index, tableName=instrument; createIndex indexName=tub_assembly_element_type_ins...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-84','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:10',194,'EXECUTED','8:5d401c9b73940263cc577ec626e993dd','createTable tableName=instrument_attachment; createIndex indexName=instrument_event_instrument_attachment_index, tableName=instrument_attachment','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-85','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:10',195,'EXECUTED','8:36752ecec1cd41bb7a4801d67d3ec5d9','createTable tableName=instrument_bit_detail; createIndex indexName=instrument_instrument_bit_detail_index, tableName=instrument_bit_detail','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-96','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:14',196,'EXECUTED','8:2ceeac0fa018e6138b7e0f6f6ab4fb99','createTable tableName=loss_details; createIndex indexName=event_loss_details_index, tableName=loss_details; createIndex indexName=formation_loss_details_index, tableName=loss_details; createIndex indexName=mud_balance_loss_details_index, tableName...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-97','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:15',197,'EXECUTED','8:82422eb857549c8f0f7e9cd44b31b451','createTable tableName=lubricant','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-98','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:16',198,'EXECUTED','8:1b38e8b11470d8a9c9f87376183cda65','createTable tableName=manufacturer','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-99','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:18',199,'EXECUTED','8:d765438fdae857b7c22c2ec7b8dcb729','createTable tableName=material; addUniqueConstraint constraintName=name_event_id_material_uniq, tableName=material; createIndex indexName=event_position_in_list_material_index, tableName=material; createIndex indexName=material_material_type_index...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-100','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:18',200,'EXECUTED','8:fe06bc87370b1eb14e00e30b5031848c','createTable tableName=material_attachment','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-101','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:19',201,'EXECUTED','8:38c445b7eabba8deb7d9f0416cd7b7b4','createTable tableName=material_kind; addUniqueConstraint constraintName=name_material_type_id_material_kind, tableName=material_kind','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-102','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:20',202,'EXECUTED','8:aacc85b53cce5d6cd8aa57f0117d5c7f','createTable tableName=material_state; createIndex indexName=event_report_material_state_index, tableName=material_state; createIndex indexName=material_state_material_id_index, tableName=material_state','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-103','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:21',203,'EXECUTED','8:d9c7f1b5a599e98687b6fa7a2a4da447','createTable tableName=material_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-104','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:22',204,'EXECUTED','8:8b2de85c29eedba98a0e8e4958e61d2a','createTable tableName=measure_unit; loadData tableName=measure_unit','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-105','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:25',205,'EXECUTED','8:e9e4ce09cc911ca0aea241a9146e37d8','createTable tableName=mud_balance; addUniqueConstraint constraintName=mud_balance_daily_report_id_fluid_type_id_uniq, tableName=mud_balance; createIndex indexName=event_daily_report_mud_balance_index, tableName=mud_balance; createIndex indexName=f...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-106','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:27',206,'EXECUTED','8:ae94cfbf12b8b0213101da5fa7c6bf53','createTable tableName=mud_in_well; createIndex indexName=event_daily_report_mud_in_well_index, tableName=mud_in_well; createIndex indexName=event_position_in_list_mud_in_well_index, tableName=mud_in_well; createIndex indexName=fluid_type_mud_in_we...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-107','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:30',207,'EXECUTED','8:5824dc4a2632087382ee90c9acec641c','createTable tableName=mud_property; createIndex indexName=event_report_mud_property_index, tableName=mud_property; createIndex indexName=mud_property_fluid_type, tableName=mud_property; createIndex indexName=mud_property_sample_source, tableName=m...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-110','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:30',208,'EXECUTED','8:17dd018b5c81aa7e2df026449f0c2a51','createTable tableName=north_reference; loadData tableName=north_reference','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-111','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:32',209,'EXECUTED','8:cf44482878ee056b06e021c9a807b8a3','createTable tableName=nozzle; createIndex indexName=nozzle_index, tableName=nozzle','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-112','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:32',210,'EXECUTED','8:0fcc197c70f431bdb75b3495756eea29','createTable tableName=nozzle_model','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-118','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:36',211,'EXECUTED','8:b88059f94686e614abc08cf773dac418','createTable tableName=operation; createIndex indexName=activity_type_id_operation_index, tableName=operation; createIndex indexName=finish_time_event_type_operation_index, tableName=operation; createIndex indexName=incident_id_operation_index, tab...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-119','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:36',212,'EXECUTED','8:11f624e2b9331ef0055fb4ba831faec1','createTable tableName=operation_mode_type; loadData tableName=operation_mode_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-120','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:38',213,'EXECUTED','8:bedf6436a86d1dc7080f8448c3fecabd','createTable tableName=operation_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-121','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:38',214,'EXECUTED','8:f2811debc58dc7799db1831a3d6fc6bd','createTable tableName=owner','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-123','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:39',215,'EXECUTED','8:0057e7426ad034ff4024e7416cbbcc57','createTable tableName=pin_box_config; loadData tableName=pin_box_config','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-128','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:41',216,'EXECUTED','8:93abc18506044d161f159e4b7a6d7a53','createTable tableName=planned_bha_operation; createIndex indexName=bha_run_position_in_list_plan_bha_operation_index, tableName=planned_bha_operation; createIndex indexName=event_report_run_plan_bha_operation_index, tableName=planned_bha_operation...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-129','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:42',217,'EXECUTED','8:146aea9f2c32152c8fc1841f85c5ec86','createTable tableName=planned_bha_run; createIndex indexName=event_position_in_list_planned_bha_run_index, tableName=planned_bha_run; createIndex indexName=event_tubular_assembly_planned_bha_run_index, tableName=planned_bha_run; createIndex indexN...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-130','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:46',218,'EXECUTED','8:a12b2b5add474205b689fd66b1f4bd4b','createTable tableName=planned_casing_run; addUniqueConstraint constraintName=event_casing_run_number_planned_casing_run, tableName=planned_casing_run; createIndex indexName=event_position_planned_casing_run_index, tableName=planned_casing_run; cre...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-131','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:47',219,'EXECUTED','8:f1a7a93090361407fe443b15a4c5b1b2','createTable tableName=planned_casing_run_trip_in; createIndex indexName=event_report_casing_run_trip_in_index, tableName=planned_casing_run_trip_in','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-132','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:48',220,'EXECUTED','8:de8a906eb0bf2c26234d7ed10a5bc089','createTable tableName=planned_cement_composition; createIndex indexName=event_report_fluid_plan_cementing_composition_index, tableName=planned_cement_composition; createIndex indexName=material_plan_cementing_composition_index, tableName=planned_c...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-133','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:49',221,'EXECUTED','8:d103ef9dc19910519ad208cb6145bfd0','createTable tableName=planned_cementing; createIndex indexName=cement_job_type_planned_cementing_index, tableName=planned_cementing; createIndex indexName=cementing_method_planned_cementing_index, tableName=planned_cementing; createIndex indexName...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-134','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:51',222,'EXECUTED','8:b66f4a4712af9301c4ec062ee51ac07f','createTable tableName=planned_cementing_fluid; createIndex indexName=cementing_fluid_type_plan_cementing_fluid_index, tableName=planned_cementing_fluid; createIndex indexName=event_report_cementing_plan_cementing_fluid_index, tableName=planned_cem...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-135','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:53',223,'EXECUTED','8:80bb9934e18d7e8cead3ca33ea7034de','createTable tableName=planned_cementing_operation; createIndex indexName=cementing_fluid_type_plan_cementing_operation_index, tableName=planned_cementing_operation; createIndex indexName=event_report_stage_plan_cementing_operation_index, tableName...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-136','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:56',224,'EXECUTED','8:1c7e203d2105760d82f41aba2f807e86','createTable tableName=planned_cementing_stage; createIndex indexName=event_report_cementing_plan_cementing_stage_index, tableName=planned_cementing_stage; createIndex indexName=planned_position_cementing_plan_cementing_stage_index, tableName=plann...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-137','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:09:58',225,'EXECUTED','8:31dda6aea288599f56c56b810b9d3f3c','createTable tableName=planned_intermediate_flushing; createIndex indexName=casing_position_intermediate_flushing_index, tableName=planned_intermediate_flushing; createIndex indexName=event_report_casing_intermediate_flushing_index, tableName=plann...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-138','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:02',226,'EXECUTED','8:a1ff0f0083bb84b3fe51f0a6bedd3908','createTable tableName=planned_material_requirement; addUniqueConstraint constraintName=material_stage_type_report_planned_material_uniq, tableName=planned_material_requirement; createIndex indexName=event_planned_report_planned_material_r_index, t...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-139','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:04',227,'EXECUTED','8:621186edd8965e58ad7b45d0d1065ff8','createTable tableName=planned_mud_property; createIndex indexName=planned_mud_property_fluid_type, tableName=planned_mud_property; createIndex indexName=planned_mud_property_event_report, tableName=planned_mud_property; createIndex indexName=wellb...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-140','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:06',228,'EXECUTED','8:04d104d2b4cd9d37dedda512ead5c10b','createTable tableName=planned_operation; createIndex indexName=activity_type_id_index, tableName=planned_operation; createIndex indexName=event_planned_report_planned_operation_index, tableName=planned_operation; createIndex indexName=operation_ty...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-141','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:09',229,'EXECUTED','8:f618a51f5596067a985948b67c22892b','createTable tableName=planned_report; addUniqueConstraint constraintName=number_event_id_planned_report, tableName=planned_report; createIndex indexName=event_planned_report_general_info_id_index, tableName=planned_report; createIndex indexName=pl...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-142','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:11',230,'EXECUTED','8:7e3204745b02e9b0f415e8a33811bc08','createTable tableName=planned_report_general_info; createIndex indexName=active_event_planned_report_general_info_index, tableName=planned_report_general_info; createIndex indexName=planned_report_general_info_event_index, tableName=planned_report...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-143','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:13',231,'EXECUTED','8:b08a4386b41afa2b8a509cf2c0b524fc','createTable tableName=planned_rheological_mechanical_property; createIndex indexName=event_report_fluid_plan_mechanical_property_index, tableName=planned_rheological_mechanical_property; createIndex indexName=planned_report_plan_mechanical_propert...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-144','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:14',232,'EXECUTED','8:b93e9a7d49badf63b93c7c7b417a1f80','createTable tableName=planned_tubular_assembly; createIndex indexName=event_report_string_type_plan_tubular_assembly_index, tableName=planned_tubular_assembly; createIndex indexName=previous_planned_tubular_assembly_index, tableName=planned_tubula...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-145','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:15',233,'EXECUTED','8:e0e3b208c9f738837b8d3ff10cc2eef5','createTable tableName=pull_reason; loadData tableName=pull_reason','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-146','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:19',234,'EXECUTED','8:05a0fd69ab8deccae55083d6a2eba98a','createTable tableName=report; addUniqueConstraint constraintName=report_id_report_type_id_report_uniq, tableName=report; createIndex indexName=date_report_index, tableName=report; createIndex indexName=event_report_index, tableName=report; createI...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-147','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:19',235,'EXECUTED','8:eff01e9a6603c589a7824916b8924d33','createTable tableName=report_form; loadData tableName=report_form','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-148','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:21',236,'EXECUTED','8:761976ff97e6c2fe4be90e51e1dd2ead','createTable tableName=report_section; loadData tableName=report_section; addUniqueConstraint constraintName=name_report_form_id_report_section, tableName=report_section; createIndex indexName=dictionary_report_section_index, tableName=report_secti...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-149','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:22',237,'EXECUTED','8:c2d748f7d6463cfc1922f74287137e55','createTable tableName=report_section_dictionary; loadData tableName=report_section_dictionary; addUniqueConstraint constraintName=name_report_type_id_report_section_dictionary, tableName=report_section_dictionary; addUniqueConstraint constraintNam...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-165','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:23',238,'EXECUTED','8:e17df44ff85c5d45584c0191c4841660','createTable tableName=sample_source','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-167','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:24',239,'EXECUTED','8:877b71dd39da07888f0ccbc744d892f5','createTable tableName=section_status; addUniqueConstraint constraintName=report_section_dictionary_id_section_status_uniq, tableName=section_status; createIndex indexName=section_status_dictionary_index, tableName=section_status','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-178','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:24',240,'EXECUTED','8:42b75ad095dde26b93ff93deca1034d8','createTable tableName=stage_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-180','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:25',241,'EXECUTED','8:637582026bdc333c070f4141eb383dd3','createTable tableName=string_type; loadData tableName=string_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-182','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:29',242,'EXECUTED','8:21bb53a18e238bd35ea34951b0d8907d','createTable tableName=survey; createIndex indexName=contractor_survey_index, tableName=survey; createIndex indexName=finish_time_well_survey_index, tableName=survey; createIndex indexName=prev_survey_index, tableName=survey; createIndex indexName=...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-183','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:33',243,'EXECUTED','8:0b68ee0b0948441fc99b65faf054aef5','createTable tableName=survey_station; addUniqueConstraint constraintName=measured_depth_survey_id_survey_station_uniq, tableName=survey_station; createIndex indexName=date_survey_station_index, tableName=survey_station; createIndex indexName=posit...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-184','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:34',244,'EXECUTED','8:d9c281dc13204c3f239e87e7590d19d3','createTable tableName=survey_station_type; loadData tableName=survey_station_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-185','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:35',245,'EXECUTED','8:e82e0fe7919113bbecdfccd91c7fb356','createTable tableName=survey_tie_in_type; loadData tableName=survey_tie_in_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-186','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:36',246,'EXECUTED','8:aa576a2200ae22ab55e2d9aae772a27d','createTable tableName=survey_tool','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-194','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:37',247,'EXECUTED','8:f70ec7b515dfd0dfa8ced3bf6675ca26','createTable tableName=tubular_assembly; createIndex indexName=event_string_type_tubular_assembly_index, tableName=tubular_assembly; createIndex indexName=previous_tubular_assembly_index, tableName=tubular_assembly; createIndex indexName=wellbore_t...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-195','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:40',248,'EXECUTED','8:376a018cce6f927b5788c2f3162b8ebd','createTable tableName=tubular_assembly_element; createIndex indexName=assembly_position_in_list_element_index, tableName=tubular_assembly_element; createIndex indexName=element_type_tubular_assembly_element_index, tableName=tubular_assembly_elemen...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-196','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:41',249,'EXECUTED','8:79c670dda787beeb109bb98c4e916540','createTable tableName=tubular_assembly_element_subtype; createIndex indexName=element_type_id_tubular_assembly_element_subtype, tableName=tubular_assembly_element_subtype','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-197','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:44',250,'EXECUTED','8:4218e1af75cc8144da623d48c6d59f8d','createTable tableName=tubular_assembly_element_type; loadData tableName=tubular_assembly_element_type; createIndex indexName=connection_type_tag_tubular_assembly_element_type, tableName=tubular_assembly_element_type; createIndex indexName=grade_ta...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-198','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:44',251,'EXECUTED','8:f0c78d30dc3a32bc464ea65c208de07f','createTable tableName=tubular_assembly_elements_and_instruments','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-207','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:45',252,'EXECUTED','8:cd26d4bce11e3277ab8764889da1adbd','createTable tableName=well_section; createIndex indexName=well_planned_report_well_section_index, tableName=well_section; createIndex indexName=wellbore_well_section_index, tableName=well_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-208','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:47',253,'EXECUTED','8:364f5734ca696b0213a65f5f5c0b8912','createTable tableName=well_section_and_attachment_stages; createIndex indexName=well_section_and_attachment_stages_index_2, tableName=well_section_and_attachment_stages; createIndex indexName=well_section_and_attachment_stages_index_1, tableName=w...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-209','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:48',254,'EXECUTED','8:bc7f594efe76de5ea4bda5ad2b0794ce','createTable tableName=well_section_and_drilling_stages; createIndex indexName=well_section_and_drilling_stages_index_1, tableName=well_section_and_drilling_stages; createIndex indexName=well_section_and_drilling_stages_index_2, tableName=well_sect...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-210','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:50',255,'EXECUTED','8:4590b0d814e0c535160ffb11a2673e14','createTable tableName=well_section_element; createIndex indexName=event_position_in_list_well_section_element_index, tableName=well_section_element; createIndex indexName=well_section_element_type_id_index, tableName=well_section_element; createIn...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-211','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:51',256,'EXECUTED','8:3b9381c6583e5ee02173b1978ec2ce91','createTable tableName=well_section_element_type; loadData tableName=well_section_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-212','m.turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:52',257,'EXECUTED','8:fd32d7ec1451d6d806a517fddffe47f5','createTable tableName=well_section_name','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1828-4','turygin','db/reporting/changelog/base_state_reporting/reporting.xml','2020-08-19 21:10:52',258,'EXECUTED','8:e5afcb12959d9708ee1dd111b5e0458c','insert tableName=report_type; insert tableName=report_form; insert tableName=report_section_dictionary; insert tableName=report_section_dictionary; insert tableName=report_section; insert tableName=report_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:10:53',259,'EXECUTED','8:9a8697f20ca144897be8caec7130e5c0','createTable tableName=pipe_tally_report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:10:54',260,'EXECUTED','8:3c15aa7b8a73988674f21d57d001564c','createTable tableName=pipe_tally_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:10:55',261,'EXECUTED','8:56a5822e2b7f2fa23f0f78d8bac2184f','addUniqueConstraint constraintName=number_event_pipe_tally_report_uniq, tableName=pipe_tally_report; createIndex indexName=pipe_tally_report_event_id_index, tableName=pipe_tally_report; createIndex indexName=pipe_tally_report_date_index, tableName...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('10','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:10:56',262,'EXECUTED','8:34eb1f3a4906057d077ed4bfb131ed9a','addColumn tableName=section_status','',NULL,'3.6.3',NULL,NULL,'7871298285'),('11','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:10:59',263,'EXECUTED','8:32a582176b344b2555ce348dbfd60982','addColumn tableName=report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('12','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:06',264,'EXECUTED','8:87b92d837cddcef5fe61d058db5f67c6','addColumn tableName=daily_report; addColumn tableName=casing_report; addColumn tableName=cementing_report; addColumn tableName=planned_report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('19','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:06',265,'EXECUTED','8:f457d2d7fb71f7a4135ac415244eb221','createTable tableName=pipe_tally','',NULL,'3.6.3',NULL,NULL,'7871298285'),('20','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:07',266,'EXECUTED','8:e5f4bea83495804b17707f489d40db64','createIndex indexName=pipe_tally_report_index_1, tableName=pipe_tally','',NULL,'3.6.3',NULL,NULL,'7871298285'),('21','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:08',267,'EXECUTED','8:9fbadf17e2a2b0a469e4f050c50d7439','addColumn tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('22','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:08',268,'EXECUTED','8:43ba39f189eeae42342c78b6e3304637','update tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('23','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:09',269,'EXECUTED','8:d5565c32e41809305cb96f1175561b2a','insert tableName=grade_tag','',NULL,'3.6.3',NULL,NULL,'7871298285'),('24','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:09',270,'EXECUTED','8:2c781e3d7120cac58a44bfe85049ed54','insert tableName=thread_connection_type_tag','',NULL,'3.6.3',NULL,NULL,'7871298285'),('25','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:09',271,'EXECUTED','8:e43788cba6c62fe7660111c174b59981','insert tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('26','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:10',272,'EXECUTED','8:6ccb48b675b1bcb85a8c629eb7deabd3','createTable tableName=instrument_casing_pipe_detail','',NULL,'3.6.3',NULL,NULL,'7871298285'),('27','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:10',273,'EXECUTED','8:cb1272ec504bd5cda0453b33aa069a12','update tableName=section_status','',NULL,'3.6.3',NULL,NULL,'7871298285'),('30','turygin','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:10',274,'EXECUTED','8:8d44437405aebc532baf479d95ab9453','dropNotNullConstraint columnName=length, tableName=instrument','',NULL,'3.6.3',NULL,NULL,'7871298285'),('29','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:12',275,'EXECUTED','8:b01896588f3e1085bd73e8e2832d84cc','addColumn tableName=pipe_tally_report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('30','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:13',276,'EXECUTED','8:57b36dc19e46d03b9050fa6654422a75','addColumn tableName=pipe_tally_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('31','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:14',277,'EXECUTED','8:16f31d4cc4d2e2f5711e04a67922120c','dropColumn columnName=tubular_assembly_id, tableName=pipe_tally_report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('32','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:15',278,'EXECUTED','8:5230dc47e16b18744c36bc3d21f98c47','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('34','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:15',279,'EXECUTED','8:65f163e1dadf788c6cf47038cb043b94','delete tableName=grade_tag; insert tableName=grade_tag','',NULL,'3.6.3',NULL,NULL,'7871298285'),('35','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:16',280,'EXECUTED','8:1382f9ed508492d171bc087acc4c3880','delete tableName=thread_connection_type_tag; insert tableName=thread_connection_type_tag','',NULL,'3.6.3',NULL,NULL,'7871298285'),('36','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:16',281,'EXECUTED','8:adef3882a374dc519d270ac3abb0cfb9','dropNotNullConstraint columnName=tubular_assembly_element_subtype_id, tableName=instrument','',NULL,'3.6.3',NULL,NULL,'7871298285'),('37','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:16',282,'EXECUTED','8:519d73d261c0674f2266fd201ba76855','addDefaultValue columnName=column_is_lowered, tableName=instrument_casing_pipe_detail','',NULL,'3.6.3',NULL,NULL,'7871298285'),('40','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:16',283,'EXECUTED','8:7ec1161c5bf51fd7d8d1f889fb432fa7','update tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('41','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:16',284,'EXECUTED','8:19915f25b71e5f41aa34791eb583d001','update tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('42','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:16',285,'EXECUTED','8:0eb5eb6e30e1d3e099fce4d47eeef05a','update tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('43','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:17',286,'EXECUTED','8:0876af1f99f1e5cc01f19f7e5298e2ec','update tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('44','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:21',287,'EXECUTED','8:13842edc725d39dcd839d514c9647f81','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('45','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:41',288,'EXECUTED','8:d485cb505448ff4d0aedb0b1bb45d264','dropNotNullConstraint columnName=position_in_list, tableName=tubular_assembly_element; dropNotNullConstraint columnName=position_in_list, tableName=well_section_element; dropNotNullConstraint columnName=position_in_list, tableName=mud_in_well; dro...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('46','dorofeev','db/reporting/2020-03-03/RIGSPACE-1813.xml','2020-08-19 21:11:41',289,'EXECUTED','8:214ece48b26453ed5de16af86f9ba68b','dropNotNullConstraint columnName=bit_size_id, tableName=instrument_bit_detail','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/2020-03-24/RIGSPACE-2234.xml','2020-08-19 21:11:42',290,'EXECUTED','8:6fe076f6fb11721e612dc583a3f46ba3','createTable tableName=section_order','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','turygin','db/reporting/2020-03-24/RIGSPACE-2234.xml','2020-08-19 21:11:43',291,'EXECUTED','8:30abfe8e908caa0375393880260be66a','createIndex indexName=section_order_index_1, tableName=section_order','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','turygin','db/reporting/2020-03-24/RIGSPACE-2234.xml','2020-08-19 21:11:44',292,'EXECUTED','8:ecae41f6624d8e8a2ee7e925b2e0291e','renameColumn newColumnName=position_in_list, oldColumnName=order, tableName=section_order','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/2020-03-25/RIGSPACE-2244.xml','2020-08-19 21:11:44',293,'EXECUTED','8:edc41c5a7942c4812773d777feeb188e','addColumn tableName=instrument','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/2020-03-25/RIGSPACE-2244.xml','2020-08-19 21:11:44',294,'EXECUTED','8:523ef72eedfb8d0970540aeed4cfff34','addDefaultValue columnName=column_is_lowered, tableName=instrument','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/2020-03-25/RIGSPACE-2244.xml','2020-08-19 21:11:45',295,'EXECUTED','8:8ff06299afc2ac1a1d0e44a95953ab1a','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/2020-03-25/RIGSPACE-2244.xml','2020-08-19 21:11:45',296,'EXECUTED','8:79670fb1758cdb445ca4f3b4be372c68','dropTable tableName=instrument_casing_pipe_detail','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/2020-03-25/RIGSPACE-2244.xml','2020-08-19 21:12:33',297,'EXECUTED','8:9656e4fc7c2101241123f37647dac22c','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/2020-04-16/RIGSPACE-2434.xml','2020-08-19 21:12:35',298,'EXECUTED','8:047286079c21500665fa56b1830d4331','addColumn tableName=material','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:37',299,'EXECUTED','8:157fcf585ea74ee07f9671972f64e201','createTable tableName=nationality','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:38',300,'EXECUTED','8:4d9035057a3ff50b23d93cf8e61f2199','createTable tableName=personnel_position','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:39',301,'EXECUTED','8:f2a465a92fdd1a95a5fa43a0030297b6','createTable tableName=service_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:39',302,'EXECUTED','8:424c4160a43e897010ea4ea42f8f43f0','createTable tableName=company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:40',303,'EXECUTED','8:e11c4a18e0b4335c003c6efb74943a0d','addUniqueConstraint constraintName=event_contractor_service_type_company_uniq, tableName=company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:40',304,'EXECUTED','8:847bfcc0e082e069446b3bc400ecad47','createIndex indexName=service_type_company_index, tableName=company; createIndex indexName=position_event_company_index, tableName=company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:41',305,'EXECUTED','8:74d32c0c3429e9e3b1764ca68f9da13c','createTable tableName=daily_company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('8','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:41',306,'EXECUTED','8:5a74edea3d178f44a379a46ac129874f','addUniqueConstraint constraintName=company_report_daily_company_uniq, tableName=daily_company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('9','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:42',307,'EXECUTED','8:410cfc3e5c4ba0d8abf843cb89c3dc0e','createIndex indexName=event_report_daily_company_index, tableName=daily_company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('10','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:42',308,'EXECUTED','8:f3e8a1ca73d551d2311f4f6c37f33031','createTable tableName=personnel','',NULL,'3.6.3',NULL,NULL,'7871298285'),('11','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:43',309,'EXECUTED','8:7ca769f9112ca028ca5d352d76c3b598','addUniqueConstraint constraintName=event_name_number_date_arr_personnel_uniq, tableName=personnel','',NULL,'3.6.3',NULL,NULL,'7871298285'),('12','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:44',310,'EXECUTED','8:e79b7d182d85c7950cad0f4c5a2ad894','createIndex indexName=event_personnel_index, tableName=personnel; createIndex indexName=position_event_personnel_index, tableName=personnel','',NULL,'3.6.3',NULL,NULL,'7871298285'),('13','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:45',311,'EXECUTED','8:3a6f36db1ff4da0fb795268effaa2abe','dropUniqueConstraint constraintName=event_name_number_date_arr_personnel_uniq, tableName=personnel; dropUniqueConstraint constraintName=company_report_daily_company_uniq, tableName=daily_company; dropUniqueConstraint constraintName=event_contracto...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('14','dorofeev','db/reporting/changelog/2020-04-17/RIGSPACE-2392.xml','2020-08-19 21:12:45',312,'EXECUTED','8:1f7e36f75195fb6e49abec63ae3e4973','createIndex indexName=event_company_index, tableName=company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-20/RIGSPACE-2451.xml','2020-08-19 21:12:46',313,'EXECUTED','8:5469d47bc8cbdfe0acc7474a3f7c7719','renameColumn newColumnName=inner_rows, oldColumnName=inner, tableName=bit_dull_grade; renameColumn newColumnName=outer_rows, oldColumnName=outer, tableName=bit_dull_grade','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-22/RIGSPACE-2451.xml','2020-08-19 21:12:46',314,'EXECUTED','8:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-27/RIGSPACE-2459.xml','2020-08-19 21:12:46',315,'EXECUTED','8:1eab03c1870d3c3a4359ec3fd82b233e','insert tableName=report_section_dictionary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-04-27/RIGSPACE-2459.xml','2020-08-19 21:12:46',316,'EXECUTED','8:d9d83e23e8b5a785f0bd79037a38409a','insert tableName=report_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-28/RIGSPACE-2459.xml','2020-08-19 21:12:47',317,'EXECUTED','8:2fe49d9bb39fd8b40da05a515efdc7e2','createTable tableName=pump_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-04-28/RIGSPACE-2459.xml','2020-08-19 21:12:47',318,'EXECUTED','8:cf63dab211ea9a9fb93b607ed4d604e7','createIndex indexName=event_report_pump_pump_operation_index, tableName=pump_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:12:48',319,'EXECUTED','8:6809793c44c532d5469f105838d86119','createTable tableName=weather','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:12:48',320,'EXECUTED','8:c613a61aa5fe50bbd0f7821655f65e29','createIndex indexName=event_report_weather_index, tableName=weather','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:12:49',321,'EXECUTED','8:fbe2e89c734f5be413a409f0c5b80738','createTable tableName=precipitation_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:12:49',322,'EXECUTED','8:67210411d452a00d0b79b383394d0155','insert tableName=report_section_dictionary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-04-29/RIGSPACE-2391.xml','2020-08-19 21:12:49',323,'EXECUTED','8:ace5675fa48fc747e6f05a75c87f6c98','insert tableName=report_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-04-30/RIGSPACE-2550.xml','2020-08-19 21:12:49',324,'EXECUTED','8:b54e9fcf9ab23de3f8889a858254ebd1','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-04-30/RIGSPACE-2550.xml','2020-08-19 21:12:50',325,'EXECUTED','8:ff501f4f80ff76e4dedb1d88817e0ddb','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-04-30/RIGSPACE-2550.xml','2020-08-19 21:12:50',326,'EXECUTED','8:c38fa720f689b0a20e5391fe7818b6f5','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-04-30/RIGSPACE-2550.xml','2020-08-19 21:12:50',327,'EXECUTED','8:fd92cc68a19f7aaf925bf14dd9effe21','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-04-30/RIGSPACE-2550.xml','2020-08-19 21:12:50',328,'EXECUTED','8:b2b618a50f23a448e281f95f5cdc2623','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-04-30/RIGSPACE-2550.xml','2020-08-19 21:12:50',329,'EXECUTED','8:9f8fd243abb4a5bc44b58c0ca55b0516','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-08/RIGSPACE-2580.xml','2020-08-19 21:12:51',330,'EXECUTED','8:e758e53ac1de83a648402188f96b0a02','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-14/RIGSPACE-2547.xml','2020-08-19 21:12:51',331,'EXECUTED','8:1cb8db13b8b0e3251e6ed26efbad5e72','insert tableName=report_section_dictionary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-14/RIGSPACE-2547.xml','2020-08-19 21:12:51',332,'EXECUTED','8:b21b8626a50e949314d24874db289c3f','insert tableName=report_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2547.xml','2020-08-19 21:12:52',333,'EXECUTED','8:9b08343228036fad25a590dbebc3e4d1','createTable tableName=shaker_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2547.xml','2020-08-19 21:12:53',334,'EXECUTED','8:102c9ff143e1adb6713685bbe6a1da53','createIndex indexName=event_report_pump_shaker_operation_index, tableName=shaker_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2547.xml','2020-08-19 21:12:54',335,'EXECUTED','8:27a2ce8b8b8a705702cd39ccacc5a360','createTable tableName=equipment_condition','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2547.xml','2020-08-19 21:12:54',336,'EXECUTED','8:baf0af0600e9e354c5f8e6f7a748370a','createIndex indexName=operation_time_shaker_operation_index, tableName=shaker_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2639.xml','2020-08-19 21:12:55',337,'EXECUTED','8:ff78ab67bef7b91d70cfb50c320f81a6','addColumn tableName=daily_company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2639.xml','2020-08-19 21:12:55',338,'EXECUTED','8:fe6d5e9fe284c5e08606dc1524bd897a','createIndex indexName=pos_report_daily_company_index, tableName=daily_company','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-15/RIGSPACE-2639.xml','2020-08-19 21:12:56',339,'EXECUTED','8:58c6169cd9af9c7db2aecb0c1d9859b9','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-18/RIGSPACE-2607.xml','2020-08-19 21:12:56',340,'EXECUTED','8:1023e6ce710af6705f7f49c2c686fd64','createTable tableName=degasser_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-18/RIGSPACE-2607.xml','2020-08-19 21:12:57',341,'EXECUTED','8:a0412715de22770cabe59cc381285e3d','createIndex indexName=event_report_degasser_degasser_operation_index, tableName=degasser_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-18/RIGSPACE-2607.xml','2020-08-19 21:12:58',342,'EXECUTED','8:527ce1b9722daece5b960d3ca54ff8c7','createTable tableName=hydroclone_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-05-18/RIGSPACE-2607.xml','2020-08-19 21:12:58',343,'EXECUTED','8:b090e24fdc03c79de4dd9feccf18a058','createIndex indexName=event_report_hydroclone_hydroclone_operation_index, tableName=hydroclone_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-05-18/RIGSPACE-2607.xml','2020-08-19 21:12:59',344,'EXECUTED','8:68536b5c9952ece83047bc9d73dcfff8','createIndex indexName=operation_time_degasser_operation_index, tableName=degasser_operation; createIndex indexName=operation_time_hydroclone_operation_index, tableName=hydroclone_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-19/RIGSPACE-2608.xml','2020-08-19 21:13:00',345,'EXECUTED','8:2d617ec4e230a58f666687e5e81a06fe','createTable tableName=centrifuge_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-19/RIGSPACE-2608.xml','2020-08-19 21:13:01',346,'EXECUTED','8:c2931172bf0ba1eb8240f7c7117f8410','createIndex indexName=event_report_centrifuge_centrifuge_operation_index, tableName=centrifuge_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-19/RIGSPACE-2608.xml','2020-08-19 21:13:01',347,'EXECUTED','8:191f392e6c5b7cb683da52701be1ea12','createIndex indexName=operation_time_centrifuge_operation_index, tableName=centrifuge_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-05-19/RIGSPACE-2608.xml','2020-08-19 21:13:11',348,'EXECUTED','8:3f9fef5987e64b678339a8ee4dc4f559','modifyDataType columnName=duration, tableName=shaker_operation; modifyDataType columnName=duration, tableName=degasser_operation; modifyDataType columnName=duration, tableName=centrifuge_operation; modifyDataType columnName=duration, tableName=hyd...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-20/RIGSPACE-2720.xml','2020-08-19 21:13:13',349,'EXECUTED','8:8e334787cb661e3cd2059ed201db0ab3','addColumn tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-20/RIGSPACE-2720.xml','2020-08-19 21:13:13',350,'EXECUTED','8:0bddfd85d42c8431ea85b086302a0843','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-22/RIGSPACE-2748.xml','2020-08-19 21:13:15',351,'EXECUTED','8:065fe654f9debd38fba218c3b07ef81e','addColumn tableName=planned_tubular_assembly; addColumn tableName=planned_tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-22/RIGSPACE-2748.xml','2020-08-19 21:13:15',352,'EXECUTED','8:c86a9709b3bd62d86a0552f42d5f9828','createTable tableName=string_class','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-22/RIGSPACE-2749.xml','2020-08-19 21:13:15',353,'EXECUTED','8:61002bb994883b0444ddb4486aff6003','insert tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-22/RIGSPACE-2749.xml','2020-08-19 21:13:15',354,'EXECUTED','8:e4dda7e78d6957f328a91493e824baba','update tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-22/RIGSPACE-2749.xml','2020-08-19 21:13:15',355,'MARK_RAN','8:61002bb994883b0444ddb4486aff6003','insert tableName=tubular_assembly_element_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-22/RIGSPACE-2753.xml','2020-08-19 21:13:17',356,'EXECUTED','8:6f8453ec7dca4a12db3591f333e48dcf','addColumn tableName=daily_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-25/RIGSPACE-2762.xml','2020-08-19 21:13:18',357,'EXECUTED','8:2181e0de26e20ab138bebd133aab460c','addColumn tableName=instrument','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-05-26/RIGSPACE-2751.xml','2020-08-19 21:13:19',358,'EXECUTED','8:76b2fa21833205cfef9cf59f612cf8cc','addColumn tableName=event','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-27/RIGSPACE-2781.xml','2020-08-19 21:13:21',359,'EXECUTED','8:eefcee8266571fa6abf67a9a72de8b25','addColumn tableName=tubular_assembly; addColumn tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-27/RIGSPACE-2781.xml','2020-08-19 21:13:21',360,'EXECUTED','8:668a3c7b67378cd468dd5c825ce78f18','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-27/RIGSPACE-2781.xml','2020-08-19 21:13:22',361,'EXECUTED','8:2fdbfb4c2e283edac5fd955d5443265a','addColumn tableName=bha_run','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-05-27/RIGSPACE-2781.xml','2020-08-19 21:13:23',362,'EXECUTED','8:a196919a14698e47b621a67d104ec616','dropColumn columnName=operations_count, tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-05-27/RIGSPACE-2781.xml','2020-08-19 21:13:24',363,'EXECUTED','8:190bbea2d32a166457f8cb5c5da56030','addColumn tableName=bha_run','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-05-27/RIGSPACE-2781.xml','2020-08-19 21:13:24',364,'EXECUTED','8:abe23c5d487c901726e8178847e8e7ef','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2791.xml','2020-08-19 21:13:25',365,'EXECUTED','8:d4c7a5b83b53f9e00d7e7fd5cd39852f','createTable tableName=bha_operation_stats','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-05-29/RIGSPACE-2834.xml','2020-08-19 21:13:26',366,'EXECUTED','8:a6958c82247f606a49c5d57dde8f1eef','createTable tableName=export_template','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','turygin','db/reporting/changelog/2020-05-29/RIGSPACE-2834.xml','2020-08-19 21:13:26',367,'EXECUTED','8:ea35dda5889d197affa97c3308316c97','insert tableName=export_template','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','turygin','db/reporting/changelog/2020-05-29/RIGSPACE-2834.xml','2020-08-19 21:13:27',368,'EXECUTED','8:987fc20d72d0727e0052b4b23a060b7f','addColumn tableName=event','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','turygin','db/reporting/changelog/2020-05-29/RIGSPACE-2834.xml','2020-08-19 21:13:28',369,'EXECUTED','8:e9a8bc6d1b606803f1b4ad25e69fc61c','addColumn tableName=event_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','turygin','db/reporting/changelog/2020-05-29/RIGSPACE-2834.xml','2020-08-19 21:13:28',370,'EXECUTED','8:68c2ca92165008d2f0e5120f8d6ee369','insert tableName=export_template','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2954.xml','2020-08-19 21:13:28',371,'EXECUTED','8:56e20d7f1157415ed966d335e0b91d87','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2954.xml','2020-08-19 21:13:28',372,'EXECUTED','8:f173d9c9b661b6e60fae95b0c8688eda','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2954.xml','2020-08-19 21:13:28',373,'EXECUTED','8:d7ee86ef315525a056cfa93ef126f972','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2954.xml','2020-08-19 21:13:28',374,'EXECUTED','8:ef445480bf8fdcb85bc396d7067f70b2','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2954.xml','2020-08-19 21:13:28',375,'EXECUTED','8:5ff7da3e6a0bb50b95a1e90a45f94efc','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-05-29/RIGSPACE-2954.xml','2020-08-19 21:13:28',376,'EXECUTED','8:96c39c7a720dc315687594b856d15439','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-06-01/RIGSPACE-2791.xml','2020-08-19 21:13:30',377,'EXECUTED','8:a0cd309a3c2883ce8829618371108792','addColumn tableName=bha_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-06-01/RIGSPACE-2791.xml','2020-08-19 21:13:30',378,'EXECUTED','8:7c457a831d412d9b3d4e814d8b5e7fda','createTable tableName=tubular_assembly_element_stats','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-06-01/RIGSPACE-2791.xml','2020-08-19 21:13:31',379,'EXECUTED','8:5d6d34bb6ba70b68fd860516e3585351','dropColumn columnName=operations_count, tableName=bha_run','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-06-08/RIGSPACE-2621.xml','2020-08-19 21:13:31',380,'EXECUTED','8:79b1f223c341372f9d6e769c5b873924','createTable tableName=cuttings','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-06-08/RIGSPACE-2621.xml','2020-08-19 21:13:31',381,'EXECUTED','8:da2f9aa2601b30e95950914655d7856e','createIndex indexName=event_report_cuttings_index, tableName=cuttings','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-06-10/RIGSPACE-2982.xml','2020-08-19 21:13:32',382,'EXECUTED','8:30a4cce490e945a67763923d7ee4efd9','createTable tableName=attachment_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','a.ekimenko','db/reporting/changelog/2020-06-11/RIGSPACE-2984.xml','2020-08-19 21:13:33',383,'EXECUTED','8:cbd4981a75a62ae442dd3644c3a172ed','createTable tableName=incident_cause','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:35',384,'EXECUTED','8:539f90b7be6140be0dca7612801529bc','createTable tableName=responsible_party','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:35',385,'EXECUTED','8:ebce3cfb3d85cf960006f9e109f2eecd','createIndex indexName=responsible_party_index_1, tableName=responsible_party','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:36',386,'EXECUTED','8:a26b29206713adf805e7c02aa23641f3','createIndex indexName=responsible_party_index_2, tableName=responsible_party','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:37',387,'EXECUTED','8:4a4b048672db794d7fb37835885ff260','dropColumn columnName=responsible_party, tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:38',388,'EXECUTED','8:c65208058f6aeccf87403da92bf42952','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:39',389,'EXECUTED','8:6f968aa75c632071c0fe494f71efa2b4','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:40',390,'EXECUTED','8:ff7cc99a490a3c9d32fd5dcaaeadc0e0','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('8','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:42',391,'EXECUTED','8:299f24c1f1d87e606d52f51c27ad966f','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('9','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:43',392,'EXECUTED','8:16e8aefd45020a7d6aabb88b2ff8128f','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('10','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:45',393,'EXECUTED','8:69e1f637401af00dad4cf59396f1b33f','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('11','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:47',394,'EXECUTED','8:fc2abed0a3e7e8dfc7fc7a244f14b9ae','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('12','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:48',395,'EXECUTED','8:f24b207055142acacaa208ce28e17255','addColumn tableName=incident','',NULL,'3.6.3',NULL,NULL,'7871298285'),('13','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:50',396,'EXECUTED','8:c080c09a4034bb4c32ac5ca558ca4298','addColumn tableName=incident_attachment','',NULL,'3.6.3',NULL,NULL,'7871298285'),('14','turygin','db/reporting/changelog/2020-06-15/RIGSPACE-2934.xml','2020-08-19 21:13:51',397,'EXECUTED','8:ed8a911df16902de6ca57bd21c9d520f','renameColumn newColumnName=cost, oldColumnName=coast, tableName=responsible_party','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-06-15/RIGSPACE-3000.xml','2020-08-19 21:13:52',398,'EXECUTED','8:b0a08b89e555106a2f276e3b6ff04934','createTable tableName=job_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-06-15/RIGSPACE-3000.xml','2020-08-19 21:13:53',399,'EXECUTED','8:3d1d6700f044be00a227b2b6e0516760','addColumn tableName=event','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-06-15/RIGSPACE-3015.xml','2020-08-19 21:13:53',400,'EXECUTED','8:0b617f443c5212bbaf133e708086f366','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-06-15/RIGSPACE-3015.xml','2020-08-19 21:13:53',401,'EXECUTED','8:ea9cf9f8ae8e002e8fd5d82d38e4583b','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-06-15/RIGSPACE-3015.xml','2020-08-19 21:13:53',402,'EXECUTED','8:5482989d574f95039fa9f49bfa53abfe','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-06-16/RIGSPACE-3007.xml','2020-08-19 21:13:54',403,'EXECUTED','8:d1595c40739aee91bc926b216dcae24f','addColumn tableName=event','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:13:54',404,'EXECUTED','8:85ad45839ac3808057473bcba3723aa3','addColumn tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:13:55',405,'EXECUTED','8:64a04c82f22b135360f8ddadcf1c8369','addColumn tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:13:57',406,'EXECUTED','8:5a38097fd278d6d548bfa8833af998b5','addColumn tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:13:58',407,'EXECUTED','8:dac4f40e04f6933a1ca155850886abc7','addColumn tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:13:59',408,'EXECUTED','8:91bc37c7102e65cdaa5ed5d97204a01b','addColumn tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:14:01',409,'EXECUTED','8:413a1eaeb7f1edaeae9e712f6eafd8b9','addColumn tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:14:02',410,'EXECUTED','8:ec1cfecf39eadbe6460cb2e43c796adb','addColumn tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('8','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:14:03',411,'EXECUTED','8:be46b5d09cc712b8e968d697aa798673','addColumn tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('9','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:14:03',412,'EXECUTED','8:1d00b230cc76685167b0058bedc8d593','createIndex indexName=contractor_casing_report_general_info_index, tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('10','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:14:04',413,'EXECUTED','8:640f56eacdb39d634f3c825e894f3d39','createIndex indexName=tubular_casing_report_general_info_index, tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('11','a.ekimenko','db/reporting/changelog/2020-06-18/RIGSPACE-2936.xml','2020-08-19 21:14:05',414,'EXECUTED','8:acb5813a575b5790bbc27780fbea2024','addColumn tableName=planned_tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-06-26/RIGSPACE-3070.xml','2020-08-19 21:14:06',415,'EXECUTED','8:e17932da45b798470bb58f9ffa274a6e','addColumn tableName=operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-06-26/RIGSPACE-3070.xml','2020-08-19 21:14:06',416,'EXECUTED','8:5357385e24ba7b9ed129e5ad08ecc6b3','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-06-26/RIGSPACE-3070.xml','2020-08-19 21:14:07',417,'EXECUTED','8:8d509f4360b2097a8d2fed90367f3587','createIndex indexName=operation_event_daily_report, tableName=operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-06-26/RIGSPACE-3070.xml','2020-08-19 21:14:08',418,'EXECUTED','8:4ee42fdcccdd3225a560a1f0305a43c4','dropIndex indexName=operation_well_index, tableName=operation; dropIndex indexName=start_time_event_type_operation_index, tableName=operation; dropIndex indexName=finish_time_event_type_operation_index, tableName=operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','a.ekimenko','db/reporting/changelog/2020-07-02/RIGSPACE-2936.xml','2020-08-19 21:14:08',419,'EXECUTED','8:4a31a2a510419bf878731f262f831118','dropColumn columnName=max_tubular_assembly_diameter, tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','a.ekimenko','db/reporting/changelog/2020-07-02/RIGSPACE-2936.xml','2020-08-19 21:14:10',420,'EXECUTED','8:561780ea422db05f63098bcdf4293a58','addColumn tableName=casing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-07-02/RIGSPACE-3147.xml','2020-08-19 21:14:10',421,'EXECUTED','8:b00cd7ca6c1d3a2fe22054b4a9651e7b','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3150.xml','2020-08-19 21:14:10',422,'EXECUTED','8:870c610f3a7acd9e148d7ac0c9b70885','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3151.xml','2020-08-19 21:14:10',423,'EXECUTED','8:8bfa3b2200e534c5e8af0274e0968f01','dropTable tableName=tubular_assembly_element_stats','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3153.xml','2020-08-19 21:14:12',424,'EXECUTED','8:16e7fa7772df8e16054a8c880c9da856','addColumn tableName=nozzle','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3153.xml','2020-08-19 21:14:13',425,'EXECUTED','8:78f71630f5e8302fff874230520811c6','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3153.xml','2020-08-19 21:14:14',426,'EXECUTED','8:0a7cb4a209ad9b191f8a464ed5170183','createIndex indexName=pos_tubular_event_nozzle_index, tableName=nozzle','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3154.xml','2020-08-19 21:14:14',427,'EXECUTED','8:12bffbdc3d8de8c7cb4bfeceb791713f','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3156.xml','2020-08-19 21:14:15',428,'EXECUTED','8:a0db89755559a1a8c759bb86882b3f72','dropColumn columnName=rop, tableName=bha_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3156.xml','2020-08-19 21:14:17',429,'EXECUTED','8:e6e1bb716bf12bc4a3a5205c120cd9d4','dropColumn columnName=elements_count, tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3156.xml','2020-08-19 21:14:17',430,'EXECUTED','8:85a5d530e6acd8c6796655a24b22f5e5','dropTable tableName=bha_operation_stats','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-07-02/RIGSPACE-3156.xml','2020-08-19 21:14:32',431,'EXECUTED','8:fd876305108780e6ef7dc401b66a2d31','dropColumn columnName=calc_duration, tableName=bha_run; dropColumn columnName=calc_bit_run_speed, tableName=bha_run; dropColumn columnName=calc_rate_of_penetration, tableName=bha_run; dropColumn columnName=calc_metrage_by_bha_run, tableName=bha_ru...','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-07-02/RIGSPACE-3159.xml','2020-08-19 21:14:32',432,'EXECUTED','8:ba7ef21a422b4bbba596b6dde43e30ab','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-06/RIGSPACE-3199.xml','2020-08-19 21:14:32',433,'EXECUTED','8:aa44ca14b8f072707acdc7b62a604c71','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:33',434,'EXECUTED','8:97b76bcc9a57521cd3592395f79c88fd','createTable tableName=machine_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:33',435,'EXECUTED','8:bf93e3c4641bba374afebc7cbaf455d4','createTable tableName=machine','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:34',436,'EXECUTED','8:0668fc78aed222aba3e37c7e484fcd8b','createIndex indexName=event_pos_machine_index, tableName=machine','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:34',437,'EXECUTED','8:7724539913a7c026c7ccde4e06e9b16b','createTable tableName=daily_machine','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:36',438,'EXECUTED','8:709c1a638629f94b09070695e0c66fbb','createIndex indexName=event_report_daily_machine_index, tableName=daily_machine; createIndex indexName=event_pos_daily_machine_index, tableName=daily_machine','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:36',439,'EXECUTED','8:737b4c45611e432741244e1692275ee2','insert tableName=report_section_dictionary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','dorofeev','db/reporting/changelog/2020-07-07/RIGSPACE-3010.xml','2020-08-19 21:14:36',440,'EXECUTED','8:f70a803e6076fe4ec59df9f4af788945','insert tableName=report_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-07-08/RIGSPACE-3008.xml','2020-08-19 21:14:39',441,'EXECUTED','8:dfd29c4cce50bf621010a8ad89f12370','addColumn tableName=report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:14:40',442,'EXECUTED','8:ca42e22d44e5a8e00aa0af0f967a90f4','createTable tableName=completion_type','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:14:41',443,'EXECUTED','8:22c10326d18e79d6e4662df5596c7750','createTable tableName=completion','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:14:41',444,'EXECUTED','8:3b20f7b7fd2c71d489c22f84b3730693','createIndex indexName=event_completion_index, tableName=completion','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:14:42',445,'EXECUTED','8:552c8b3449ecdcd03a72c193d2fcd952','insert tableName=report_section_dictionary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-07-09/RIGSPACE-3119.xml','2020-08-19 21:14:42',446,'EXECUTED','8:ca5788d730ff39c14d7044eb26ac1750','insert tableName=report_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','ekimenko','db/reporting/changelog/2020-07-10/RIGSPACE-3252.xml','2020-08-19 21:14:42',447,'EXECUTED','8:8b92bf4048d41423801d5f348f1e778f','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','turygin','db/reporting/changelog/2020-07-22/RIGSPACE-3322.xml','2020-08-19 21:14:44',448,'EXECUTED','8:0a257812cdc37e57d9af8b9a3c4fa4ba','createTable tableName=material_state_summary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','turygin','db/reporting/changelog/2020-07-22/RIGSPACE-3322.xml','2020-08-19 21:14:44',449,'EXECUTED','8:ed2ba4356c80a0bbe5179d5bd292b803','createIndex indexName=material_state_summary_index_1, tableName=material_state_summary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','turygin','db/reporting/changelog/2020-07-22/RIGSPACE-3322.xml','2020-08-19 21:14:45',450,'EXECUTED','8:4d35c88087579b38d9c0ce0f5c6e0c0f','createIndex indexName=material_state_summary_index_2, tableName=material_state_summary','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','turygin','db/reporting/changelog/2020-07-22/RIGSPACE-3322.xml','2020-08-19 21:14:46',451,'EXECUTED','8:dadd4cea70d7ea1f915f11ce570957f7','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','turygin','db/reporting/changelog/2020-07-22/RIGSPACE-3322.xml','2020-08-19 21:14:46',452,'EXECUTED','8:a68ea411087916092fa06a86b53e12f5','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','turygin','db/reporting/changelog/2020-07-22/RIGSPACE-3322.xml','2020-08-19 21:14:46',453,'EXECUTED','8:5b9f8246d63d112e5dd3e8eecdb5e82f','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3297.xml','2020-08-19 21:14:47',454,'EXECUTED','8:ba99d444b4456d6f95f5cbc6c556d2df','addColumn tableName=tubular_assembly','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:48',455,'EXECUTED','8:7720565a7b8fca0bd616e08e0441a45e','dropIndex indexName=event_type_id_ref_index, tableName=event_stage_operation_activity_ref','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:48',456,'EXECUTED','8:eb988ed445f7c4121206e9e29c34b7a7','createIndex indexName=four_params_ref, tableName=event_stage_operation_activity_ref','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:48',457,'EXECUTED','8:d782d6c128f7d1ba03317b85a590013f','createIndex indexName=event_id_bha_run_bha_operation_idx, tableName=bha_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:49',458,'EXECUTED','8:384d7403db289a716288f353f0d65a6a','createIndex indexName=destination_processing_buffer_idx, tableName=processing_buffer','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:49',459,'EXECUTED','8:ef3b1acf905ccb4df74dea8054f7e5d1','dropIndex indexName=entity_error_index_2, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:50',460,'EXECUTED','8:9c9603e50b72a5aae9d7e17e145b3773','createIndex indexName=status_entity_entity_error_idx, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:50',461,'EXECUTED','8:cc3165d804dd34c4937ab605532cee0b','dropIndex indexName=entity_error_name_and_id, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7871298285'),('8','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:50',462,'EXECUTED','8:9821ae726a81bb78123376f8af6591a6','createIndex indexName=entity_error_name_and_id_idx, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7871298285'),('9','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:51',463,'EXECUTED','8:c2c5ba5ba5153f60608f0e14ba057aba','dropIndex indexName=rule_name_entity_error_index, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7871298285'),('10','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:51',464,'EXECUTED','8:eb707f26ef44b1e6c3a0f611213fd4ae','createIndex indexName=entity_id_rule_entity_error_index, tableName=entity_error','',NULL,'3.6.3',NULL,NULL,'7871298285'),('11','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:51',465,'EXECUTED','8:d1a6aca3e11c055fc55c85e0ae8ce7a8','dropIndex indexName=nozzle_index, tableName=nozzle','',NULL,'3.6.3',NULL,NULL,'7871298285'),('12','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:52',466,'EXECUTED','8:c802bca58d6571d8c68882428bd69112','createIndex indexName=nozzle_index, tableName=nozzle','',NULL,'3.6.3',NULL,NULL,'7871298285'),('13','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:52',467,'EXECUTED','8:e6398692470e2f420c2b8bf09e208ea5','dropIndex indexName=event_id_bha_run_bha_operation_idx, tableName=bha_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('14','dorofeev','db/reporting/changelog/2020-07-23/RIGSPACE-3330.xml','2020-08-19 21:14:53',468,'EXECUTED','8:9c997e27649e76bbe1619765ffedc631','createIndex indexName=event_id_bha_run_bha_operation_idx, tableName=bha_operation','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','ekimenko','db/reporting/changelog/2020-07-29/RIGSPACE-3367.xml','2020-08-19 21:14:53',469,'EXECUTED','8:6c1e80b305601838687163358295a89d','dropUniqueConstraint constraintName=wellbore_date_event_casing_report_uniq, tableName=casing_report','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:53',470,'EXECUTED','8:234dfa8a2fa241802958d874a4516722','insert tableName=measure_unit','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:53',471,'EXECUTED','8:765c22c2feb0438017fd5e1358882ca5','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:54',472,'EXECUTED','8:d60737be2f1902a7ddc9201b5836b47a','insert tableName=measure_unit','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:54',473,'EXECUTED','8:30a76716d0b9a116b3491d15b36dc09d','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:54',474,'EXECUTED','8:163ed290552e0604782a7c7be4523758','insert tableName=measure_unit','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:55',475,'EXECUTED','8:94274af26419c40f14d0d12ad1f89d41','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','dorofeev','db/reporting/changelog/2020-07-30/RIGSPACE-3427.xml','2020-08-19 21:14:55',476,'EXECUTED','8:6c54f78998089075e1a91dbbf501ffc7','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:55',477,'EXECUTED','8:07289e49e1e7881e7245f603e7be9eee','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:56',478,'EXECUTED','8:25e83e894a51ef02cb1e8b465b91d1d6','addColumn tableName=well_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:58',479,'EXECUTED','8:728adf5304f6b8dd9ec3b05d3641cc5a','addColumn tableName=well_section_element','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:58',480,'EXECUTED','8:33f63395eef6b77538baf6107256a3dc','update tableName=well_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('5','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:58',481,'EXECUTED','8:5a487cbd5c3ceae266de21820d7fb2aa','addDefaultValue columnName=is_liner, tableName=well_section','',NULL,'3.6.3',NULL,NULL,'7871298285'),('6','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:58',482,'EXECUTED','8:3f6d5cce557aed267c584cb868d15504','sql','',NULL,'3.6.3',NULL,NULL,'7871298285'),('7','dorofeev','db/reporting/changelog/2020-07-31/RIGSPACE-3436.xml','2020-08-19 21:14:58',483,'EXECUTED','8:b9ff491555b8cb97163b4cf4b2c928d9','addColumn tableName=well_section_element','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','ekimenko','db/reporting/changelog/2020-08-01/RIGSPACE-2937.xml','2020-08-19 21:14:59',484,'EXECUTED','8:af692def6f5a58e2ec8f15cd7245e0a6','dropColumn columnName=contractor, tableName=cementing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','ekimenko','db/reporting/changelog/2020-08-01/RIGSPACE-2937.xml','2020-08-19 21:15:00',485,'EXECUTED','8:71db5787dfa030c13a91b9533bff6dc6','addColumn tableName=cementing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('3','ekimenko','db/reporting/changelog/2020-08-01/RIGSPACE-2937.xml','2020-08-19 21:15:01',486,'EXECUTED','8:10e3f44c3cda5a088da83fd91e61e7ee','addColumn tableName=cementing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('4','ekimenko','db/reporting/changelog/2020-08-01/RIGSPACE-2937.xml','2020-08-19 21:15:02',487,'EXECUTED','8:04853ad76093a36fa59a76201f5cdd95','addColumn tableName=cementing_report_general_info','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1','ekimenko','db/reporting/changelog/2020-08-10/RIGSPACE-3490.xml','2020-08-19 21:15:03',488,'EXECUTED','8:3b29f1e1168ac1d17717f8da90747b0c','addColumn tableName=mud_property','',NULL,'3.6.3',NULL,NULL,'7871298285'),('2','ekimenko','db/reporting/changelog/2020-08-10/RIGSPACE-3490.xml','2020-08-19 21:15:05',489,'EXECUTED','8:e3b9c0e1d4e63ac82f00db6437184b55','addColumn tableName=mud_property','',NULL,'3.6.3',NULL,NULL,'7871298285'),('1587034061198-5','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:16',490,'EXECUTED','8:daa9c690f7ef70be2233339e9dc98cc7','createTable tableName=analytical_casing; createIndex indexName=analytical_casing_well, tableName=analytical_casing','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-6','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:17',491,'EXECUTED','8:5180b15ac0ef512c14c7d4ba6bec3384','createTable tableName=analytical_casing_string; createIndex indexName=analytical_casing_string_well, tableName=analytical_casing_string','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-7','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:18',492,'EXECUTED','8:7392733a849eeb95930405a5c3c1190d','createTable tableName=analytical_dashboard','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-8','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:18',493,'EXECUTED','8:2311770934c339531e70dd99b78df330','createTable tableName=analytical_dashboards_and_bar_charts; createIndex indexName=analytical_dashboards_and_diagrams_index_1, tableName=analytical_dashboards_and_bar_charts','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-9','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:22',494,'EXECUTED','8:8e7befd8d8203c8124c8617e8450b39f','createTable tableName=analytical_dashboards_and_line_charts; createIndex indexName=analytical_dashboards_and_line_charts_index_2, tableName=analytical_dashboards_and_line_charts; createIndex indexName=analytical_dashboards_and_line_charts_index_1,...','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-10','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:24',495,'EXECUTED','8:fe5326b137f06a78f4a1e7f844ca6a6b','createTable tableName=analytical_dashboards_and_reports; createIndex indexName=analytical_dashboards_and_reports_index_1, tableName=analytical_dashboards_and_reports','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-11','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:25',496,'EXECUTED','8:fd905de4bc444eb77c2cc13cd27ad8cd','createTable tableName=analytical_dashboards_and_term_bar_charts; createIndex indexName=analytical_dashboards_and_term_bar_charts_index_1, tableName=analytical_dashboards_and_term_bar_charts; createIndex indexName=analytical_dashboards_and_term_bar...','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-12','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:26',497,'EXECUTED','8:93c6000515eb4589a8d222ea07df1bf6','createTable tableName=analytical_drill_string; createIndex indexName=analytical_drill_string_well, tableName=analytical_drill_string','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-13','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:28',498,'EXECUTED','8:f1b94d37266b2bd509e64ffb2f5044da','createTable tableName=analytical_operation; createIndex indexName=analytical_operation_index_2, tableName=analytical_operation; createIndex indexName=analytical_operation_index_1, tableName=analytical_operation','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-14','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:29',499,'EXECUTED','8:49dd4e6fe6ad1923c7e118adf8764760','createTable tableName=analytical_report','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-15','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:30',500,'EXECUTED','8:9848cd0899f16eb0ac2566c8d15771c9','createTable tableName=analytical_reports_and_bar_charts; createIndex indexName=analytical_reports_and_diagrams_index_1, tableName=analytical_reports_and_bar_charts; createIndex indexName=analytical_reports_and_diagrams_index_2, tableName=analytica...','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-16','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:31',501,'EXECUTED','8:f02ca31bd19a15810df5057b48a1ab71','createTable tableName=analytical_reports_and_line_charts; createIndex indexName=analytical_reports_and_line_charts_index_1, tableName=analytical_reports_and_line_charts','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-17','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:32',502,'EXECUTED','8:9112ca642d34488dde64df6186b13b21','createTable tableName=analytical_reports_and_term_bar_charts; createIndex indexName=analytical_reports_and_term_bar_charts_index_1, tableName=analytical_reports_and_term_bar_charts; createIndex indexName=analytical_reports_and_term_bar_charts_inde...','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-18','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:33',503,'EXECUTED','8:c8d12847fa089301870c9f5dbfa6e7fb','createTable tableName=analytical_reports_and_users; createIndex indexName=analytical_reports_and_users_index_1, tableName=analytical_reports_and_users; createIndex indexName=analytical_reports_and_users_index_2, tableName=analytical_reports_and_users','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-19','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:34',504,'EXECUTED','8:e923297bbe09ffe8543d9bb1826eeb22','createTable tableName=analytical_rig_status_type; loadData tableName=analytical_rig_status_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-20','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:34',505,'EXECUTED','8:1b37fd7dda6fd819a30d86fd4330d293','createTable tableName=analytical_task; createIndex indexName=analytical_task_index_1, tableName=analytical_task','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-21','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:35',506,'EXECUTED','8:3076c286be440ba5167e43c4256b3348','createTable tableName=analytical_task_status; loadData tableName=analytical_task_status','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-22','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:35',507,'EXECUTED','8:8a61f43442a366803a4ec49bba156475','createTable tableName=analytical_well_statuses','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-25','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:36',508,'EXECUTED','8:cd8e0d286c10b0979f13104d3c42182b','createTable tableName=bar_chart_properties','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-26','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:36',509,'EXECUTED','8:0b6102eda033277e2453a05ebddd7495','createTable tableName=bar_charts_and_users; createIndex indexName=diagrams_and_users_index_1, tableName=bar_charts_and_users; createIndex indexName=diagrams_and_users_index_2, tableName=bar_charts_and_users','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-31','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:37',510,'EXECUTED','8:9308001256da6932f2c11602d11dd525','createTable tableName=bit_manufacturer','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-33','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:38',511,'EXECUTED','8:dde978c0bf46c04b2b8b327e342473d4','createTable tableName=bit_outside_diameter','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-35','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:39',512,'EXECUTED','8:9fa6fb4367fe5fd2032ac36c5b278018','createTable tableName=bit_type; loadData tableName=bit_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-36','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:40',513,'EXECUTED','8:98020dcd8cfe4d808245b5498750c57f','createTable tableName=casing_connection_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-50','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:41',514,'EXECUTED','8:a9f31948bb71a2698c0a568fcb29e170','createTable tableName=daily_kpi_report','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-53','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:42',515,'EXECUTED','8:eea101c008fe943b88f93f44d3ae209a','createTable tableName=detect_operation_type; loadData tableName=detect_operation_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-54','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:43',516,'EXECUTED','8:72bac4f59b3573a622eb724770282d4b','createTable tableName=diagram_type; loadData tableName=diagram_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-55','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:44',517,'EXECUTED','8:8d797e5139170d478b1fc62778737e85','createTable tableName=diagram_types_and_kpi_types; loadData tableName=diagram_types_and_kpi_types; createIndex indexName=diagram_types_and_kpi_types_index_1, tableName=diagram_types_and_kpi_types','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-57','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:44',518,'EXECUTED','8:19bdacd7a81a44705424bd64683ca998','createTable tableName=drill_pipe_outside_diameter','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-87','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:45',519,'EXECUTED','8:c063a7da9b23b633e3e22e9e78e596ef','createTable tableName=kpi_group; loadData tableName=kpi_group','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-88','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:46',520,'EXECUTED','8:4876e2c72179d2d7ecf1865818146f03','createTable tableName=kpi_type; loadData tableName=kpi_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-89','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:47',521,'EXECUTED','8:5810070902d80e90e941798fc211454b','createTable tableName=kpi_types_and_kpi_groups; loadData tableName=kpi_types_and_kpi_groups; createIndex indexName=kpi_types_and_kpi_groups_index_1, tableName=kpi_types_and_kpi_groups','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-91','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:48',522,'EXECUTED','8:4fa220ca4f189eef485c1f7edc5aee2d','createTable tableName=line_chart_properties','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-92','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:49',523,'EXECUTED','8:8c138e8857263c3bfaafe2eafbf3f6f0','createTable tableName=line_charts_and_users; createIndex indexName=line_charts_and_users_index_1, tableName=line_charts_and_users; createIndex indexName=line_charts_and_users_index_2, tableName=line_charts_and_users','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-108','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:50',524,'EXECUTED','8:06f65e41b3f979c269991667142fffed','createTable tableName=mudmotor_model','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-109','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:50',525,'EXECUTED','8:98391cbcaab77d6b130128e7aee0e718','createTable tableName=mwd_model','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-163','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:51',526,'EXECUTED','8:2a13a26f43ae14c93d5ffadc8a75e76e','createTable tableName=rss_model','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-176','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:52',527,'EXECUTED','8:f5faac25ad7165e1a9be0b7cfb37c6c5','createTable tableName=sharing_status; loadData tableName=sharing_status','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-187','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:54',528,'EXECUTED','8:00ea11ba1986bba7271da54fe4d022e8','createTable tableName=target_kpi; createIndex indexName=target_kpi_index_1, tableName=target_kpi; createIndex indexName=target_kpi_index_2, tableName=target_kpi','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-188','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:54',529,'EXECUTED','8:16aeac96e08e92382be96b5bfed79795','createTable tableName=term_bar_chart_properties','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-189','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:55',530,'EXECUTED','8:77cf8dd6b9417c26b733c03a7d7d4f12','createTable tableName=term_bar_charts_and_users; createIndex indexName=term_bar_charts_and_users_index_2, tableName=term_bar_charts_and_users; createIndex indexName=term_bar_charts_and_users_index_1, tableName=term_bar_charts_and_users','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-190','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:56',531,'EXECUTED','8:e254e74a86fef4020b5ae29274e6a0d0','createTable tableName=term_chart_kpies; createIndex indexName=term_chart_kpies_index_1, tableName=term_chart_kpies','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-193','m.turygin','db/analytics/changelog/base_state_analytics/analytics.xml','2020-08-19 21:52:57',532,'EXECUTED','8:5ec8db9cce51c82581cdc7caee253d18','createTable tableName=tool_manufacturer','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1','d.grebenyuk','db/analytics/changelog/2020-05-29/RIGSPACE-2662.xml','2020-08-19 21:52:58',533,'EXECUTED','8:d1ed8bba2156b3c4e1158bffc0126796','createTable tableName=analytical_drilling_crew_target_kpi','',NULL,'3.6.3',NULL,NULL,'7873934237'),('2','d.grebenyuk','db/analytics/changelog/2020-05-29/RIGSPACE-2662.xml','2020-08-19 21:52:58',534,'EXECUTED','8:7344a5233533feabb2f27be50ade7f49','createTable tableName=analytical_target_kpi_type','',NULL,'3.6.3',NULL,NULL,'7873934237'),('3','d.grebenyuk','db/analytics/changelog/2020-05-29/RIGSPACE-2662.xml','2020-08-19 21:52:58',535,'EXECUTED','8:23584acc062b31a5743d702e3e9c971c','createTable tableName=target_kpi_operation_types; createIndex indexName=target_kpi_operation_types_index_1, tableName=target_kpi_operation_types','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1','d.grebenyuk','db/analytics/changelog/2020-06-04/RIGSPACE-2844.xml','2020-08-19 21:52:59',536,'EXECUTED','8:2378d9ec07aa6e0939a97a57d3b12557','createTable tableName=drilling_crew_daily_kpi_report','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1','d.grebenyuk','db/analytics/changelog/2020-06-11/RIGSPACE-2852.xml','2020-08-19 21:52:59',537,'EXECUTED','8:fa0ff818156e2cc883adc97e44bd134a','createTable tableName=kpi_per_day_comment','',NULL,'3.6.3',NULL,NULL,'7873934237'),('2','d.grebenyuk','db/analytics/changelog/2020-06-11/RIGSPACE-2852.xml','2020-08-19 21:53:01',538,'EXECUTED','8:d25d4efa793cac72f5bb30120d6dcff9','createTable tableName=kpi_per_day_comment_operation_types; createIndex indexName=kpi_per_day_comment_operation_types_index_1, tableName=kpi_per_day_comment_operation_types','',NULL,'3.6.3',NULL,NULL,'7873934237'),('3','d.grebenyuk','db/analytics/changelog/2020-06-11/RIGSPACE-2852.xml','2020-08-19 21:53:01',539,'EXECUTED','8:467543fd13fd5472b789dd4e8c8a2a1c','createIndex indexName=kpi_per_day_comment_index_1, tableName=kpi_per_day_comment','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1','d.grebenyuk','db/analytics/changelog/2020-06-19/RIGSPACE-2861.xml','2020-08-19 21:53:02',540,'EXECUTED','8:bc8bedadb4584dba2cee613ffb482268','createTable tableName=kpi_report_up_to_date_comment','',NULL,'3.6.3',NULL,NULL,'7873934237'),('2','d.grebenyuk','db/analytics/changelog/2020-06-19/RIGSPACE-2861.xml','2020-08-19 21:53:03',541,'EXECUTED','8:a3d47457574ed46e3fa2bd665cca7d95','createIndex indexName=kpi_report_up_to_date_comment_index_1, tableName=kpi_report_up_to_date_comment','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1','turygin','db/analytics/changelog/2020-06-26/RIGSPACE-3111.xml','2020-08-19 21:53:03',542,'EXECUTED','8:afd7fb460f277d188889d34a6a3b4a9f','sql','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1','d.grebenyuk','db/analytics/changelog/2020-06-29/RIGSPACE-3084.xml','2020-08-19 21:53:03',543,'EXECUTED','8:ffbf7c01f455f7ae4c86a537080c01a9','createTable tableName=analytical_operation_manual','',NULL,'3.6.3',NULL,NULL,'7873934237'),('2','d.grebenyuk','db/analytics/changelog/2020-06-29/RIGSPACE-3084.xml','2020-08-19 21:53:03',544,'EXECUTED','8:772db60b7b8e9dc77c2a13ddd1e639e6','createIndex indexName=analytical_operation_manual_index_2, tableName=analytical_operation_manual','',NULL,'3.6.3',NULL,NULL,'7873934237'),('3','d.grebenyuk','db/analytics/changelog/2020-06-29/RIGSPACE-3084.xml','2020-08-19 21:53:04',545,'EXECUTED','8:b992192706c32b3ffaed2bb9aace179c','createIndex indexName=analytical_operation_manual_index_1, tableName=analytical_operation_manual','',NULL,'3.6.3',NULL,NULL,'7873934237'),('4','d.grebenyuk','db/analytics/changelog/2020-06-29/RIGSPACE-3084.xml','2020-08-19 21:53:04',546,'EXECUTED','8:98668b457b9e3a6fece0b41063b88f41','renameTable newTableName=analytical_operation_algorithm, oldTableName=analytical_operation','',NULL,'3.6.3',NULL,NULL,'7873934237'),('5','d.grebenyuk','db/analytics/changelog/2020-06-29/RIGSPACE-3084.xml','2020-08-19 21:53:04',547,'EXECUTED','8:6e828a0f6444e887e231ebcb6fb08047','sql','',NULL,'3.6.3',NULL,NULL,'7873934237'),('1587034061198-94','m.turygin','db/monitoring/changelog/base_state_monitoring/monitoring.xml','2020-08-19 21:55:57',548,'EXECUTED','8:3e81519617ce7a6c8e7f455b40234126','createTable tableName=log_data_date; addUniqueConstraint constraintName=date_data_idx, tableName=log_data_date','',NULL,'3.6.3',NULL,NULL,'7874155882'),('1587034061198-95','m.turygin','db/monitoring/changelog/base_state_monitoring/monitoring.xml','2020-08-19 21:55:57',549,'EXECUTED','8:963ccecbd42f5f779e210503a32db1a4','createTable tableName=log_data_depth; addUniqueConstraint constraintName=depth_data_idx, tableName=log_data_depth','',NULL,'3.6.3',NULL,NULL,'7874155882'),('1','m.turygin','db/monitoring/changelog/2020-06-29/RIGSPACE-3134.xml','2020-08-19 21:55:58',550,'EXECUTED','8:57cc79f72ac34a896df6a0a99ff5a18f','createTable tableName=user_configuration','',NULL,'3.6.3',NULL,NULL,'7874155882'),('2','m.turygin','db/monitoring/changelog/2020-06-29/RIGSPACE-3134.xml','2020-08-19 21:55:58',551,'EXECUTED','8:5c0fce2122e391b4f2f3b098104487be','createIndex indexName=user_configuration_index_1, tableName=user_configuration','',NULL,'3.6.3',NULL,NULL,'7874155882'),('3','m.turygin','db/monitoring/changelog/2020-06-29/RIGSPACE-3134.xml','2020-08-19 21:55:59',552,'EXECUTED','8:197605a2628c4e61e4943dee72a52231','createIndex indexName=user_configuration_index_2, tableName=user_configuration','',NULL,'3.6.3',NULL,NULL,'7874155882'),('1','d.grebenyuk','db/changelog/2020-08-19/RIGSPACE-3539.xml','2020-09-06 18:03:14',553,'EXECUTED','8:1ec8b2406ea429662c26fd67a729264d','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('2','d.grebenyuk','db/changelog/2020-08-19/RIGSPACE-3539.xml','2020-09-06 18:03:14',554,'EXECUTED','8:4067ba7f56401ddaa43e07cbea638dd5','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('1','d.grebenyuk','db/changelog/2020-08-24/RIGSPACE-3608.xml','2020-09-06 18:03:14',555,'EXECUTED','8:3713ac4c15a4af1f26fa9b24a057c4a8','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('2','d.grebenyuk','db/changelog/2020-08-24/RIGSPACE-3608.xml','2020-09-06 18:03:14',556,'EXECUTED','8:e8205610e6759af4ee9a97c0d9270622','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('1','ekimenko','db/changelog/2020-08-26/RIGSPACE-3512.xml','2020-09-06 18:03:14',557,'EXECUTED','8:4aeb2654f1fa597bd6131221d9665312','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('2','ekimenko','db/changelog/2020-08-26/RIGSPACE-3512.xml','2020-09-06 18:03:14',558,'EXECUTED','8:136dcc91eff0e9a7ad358dbed2a519df','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('1','d.grebenyuk','db/changelog/2020-08-26/RIGSPACE-3619.xml','2020-09-06 18:03:14',559,'EXECUTED','8:5096a4af3713cf3978d0f1ce2fc29764','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('2','d.grebenyuk','db/changelog/2020-08-26/RIGSPACE-3619.xml','2020-09-06 18:03:14',560,'EXECUTED','8:9fd3d1649d292a301f19573035299e91','sql','',NULL,'3.6.3',NULL,NULL,'9415394174'),('1','m.turygin','db/changelog/2020-10-12/RIGSPACE-1134.xml','2020-11-18 10:18:03',561,'MARK_RAN','8:57cc79f72ac34a896df6a0a99ff5a18f','createTable tableName=user_configuration','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','turygin','db/changelog/2020-10-13/RIGSPACE-4060.xml','2020-11-18 10:18:04',562,'EXECUTED','8:a95c5463943d8597f3fd6dbe535f49e6','dropTable tableName=SPRING_SESSION','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','turygin','db/changelog/2020-10-13/RIGSPACE-4060.xml','2020-11-18 10:18:04',563,'EXECUTED','8:965a4bb6d20b1225a4bac8750b22f974','dropTable tableName=SPRING_SESSION_ATTRIBUTES','',NULL,'4.1.0',NULL,NULL,'5694683421'),('3','turygin','db/changelog/2020-10-13/RIGSPACE-4060.xml','2020-11-18 10:18:04',564,'EXECUTED','8:8d74aa8068fbe853af77314dfb1438a6','createTable tableName=SPRING_SESSION','',NULL,'4.1.0',NULL,NULL,'5694683421'),('4','turygin','db/changelog/2020-10-13/RIGSPACE-4060.xml','2020-11-18 10:18:04',565,'EXECUTED','8:5c940622bc5470a49eff241c74464230','createIndex indexName=SPRING_SESSION_IX1, tableName=SPRING_SESSION','',NULL,'4.1.0',NULL,NULL,'5694683421'),('5','turygin','db/changelog/2020-10-13/RIGSPACE-4060.xml','2020-11-18 10:18:04',566,'EXECUTED','8:d948dd8f665201f6ea08f274a1a3fa18','createIndex indexName=SPRING_SESSION_IX2, tableName=SPRING_SESSION','',NULL,'4.1.0',NULL,NULL,'5694683421'),('6','turygin','db/changelog/2020-10-13/RIGSPACE-4060.xml','2020-11-18 10:18:05',567,'EXECUTED','8:ed4b64df143afecfd198d5b26acb7797','createTable tableName=SPRING_SESSION_ATTRIBUTES','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',568,'EXECUTED','8:5231913fb6b78d6558423cbc0be093c6','dropTable tableName=processing_buffer','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',569,'EXECUTED','8:6ca05f87e5a82aa343fcf09ffd9c06ba','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('3','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',570,'EXECUTED','8:ebd7e4cf1a9a0ed75af2e839aed60e44','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('4','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',571,'EXECUTED','8:f259f12c59d30589f8003daf4afd891d','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('5','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',572,'EXECUTED','8:46000dea306c08f93b28a4c8406ec5a4','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('6','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',573,'EXECUTED','8:c1b14669e6e7b235da8918e46448a148','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('7','turygin','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',574,'EXECUTED','8:5432a693cdb36806dc5c8565dd564c46','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('8','dorofeev','db/changelog/2020-11-03/RIGSPACE-4346.xml','2020-11-18 10:18:05',575,'EXECUTED','8:ecd95a612e0d1d345bcfa9794b31c92a','update tableName=entity_error','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','p.aleshkevich','db/changelog/2020-08-25/RIGSPACE-3617.xml','2020-11-18 10:18:05',576,'MARK_RAN','8:30150dd2376ba661a262a2855124bf26','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','dorofeev','db/changelog/2020-08-25/RIGSPACE-3623.xml','2020-11-18 10:18:05',577,'EXECUTED','8:9e72d58f8d052be0433cbd70a19649a7','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','dorofeev','db/changelog/2020-08-25/RIGSPACE-3623.xml','2020-11-18 10:18:05',578,'EXECUTED','8:a29f603ae0fefd4cbbe4eb1062a67b3e','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','ekimenko','db/changelog/2020-09-16/RIGSPACE-3740.xml','2020-11-18 10:18:05',579,'EXECUTED','8:2ccba9fad246d4626a6b2ee5d4d33339','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','ekimenko','db/changelog/2020-09-16/RIGSPACE-3740.xml','2020-11-18 10:18:05',580,'EXECUTED','8:3191b2e535a1db92e64f4163c928c2a2','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('3','dorofeev','db/changelog/2020-09-16/RIGSPACE-3740.xml','2020-11-18 10:18:05',581,'EXECUTED','8:ce730d08cf0af24874465563fc8d12d7','dropNotNullConstraint columnName=position_in_list, tableName=pit_and_rig_relation','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','dorofeev','db/changelog/2020-10-05/RIGSPACE-4067.xml','2020-11-18 10:18:05',582,'EXECUTED','8:fd1e558e15de4223c9ce6668d075d4d0','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','dorofeev','db/changelog/2020-10-05/RIGSPACE-4067.xml','2020-11-18 10:18:05',583,'EXECUTED','8:bf4081790662005b32526a98ccc12648','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','dorofeev','db/changelog/2020-11-03/RIGSPACE-4335.xml','2020-11-18 10:18:05',584,'EXECUTED','8:3ce7cf2b75079287806716eb38813540','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','dorofeev','db/changelog/2020-11-03/RIGSPACE-4335.xml','2020-11-18 10:18:05',585,'EXECUTED','8:0dcacd273100682c331e804c0884f30e','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','d.grebenyuk','db/changelog/2020-11-06/RIGSPACE-4363.xml','2020-11-18 10:18:05',586,'EXECUTED','8:73502d0fab8f6f8fac75bf4635842e45','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('2','d.grebenyuk','db/changelog/2020-11-06/RIGSPACE-4363.xml','2020-11-18 10:18:05',587,'EXECUTED','8:827ecf11cce030b003141dfa716c9a79','sql','',NULL,'4.1.0',NULL,NULL,'5694683421'),('1','d.grebenyuk','db/changelog/2020-11-07/RIGSPACE-4338.xml','2020-11-18 10:18:05',588,'EXECUTED','8:30150dd2376ba661a262a2855124bf26','sql','',NULL,'4.1.0',NULL,NULL,'5694683421');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION`
--

DROP TABLE IF EXISTS `SPRING_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` bigint(20) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SESSION_ID` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX1` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX2` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION`
--

LOCK TABLES `SPRING_SESSION` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION` DISABLE KEYS */;
INSERT INTO `SPRING_SESSION` VALUES ('375189fa-cb8c-4d4e-a35a-fd162bc862ae','40ee06d7-f5f5-4cf3-896e-70b7e90e9245',1605703738878,1605703742964,1800,1605705542964,'admin'),('65c5c8c6-6539-4750-a28c-b8a4e6158fdd','97f63718-741a-449d-9ced-3d80b9e3a301',1605703737750,1605703737750,1800,1605705537750,NULL),('824de71f-e63b-4bc2-9da0-d68a2149f7c5','676ee46b-ca17-4b61-9ad0-711d16910444',1605703738102,1605703738102,1800,1605705538102,NULL);
/*!40000 ALTER TABLE `SPRING_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `SPRING_SESSION_ATTRIBUTES` VALUES ('2849d8ae-ce29-4757-922a-979b6d902cf8','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('323d0f94-ec07-43d8-8031-d785cc477fe0','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('375189fa-cb8c-4d4e-a35a-fd162bc862ae','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0*casing-report_casing-circulation-section#Csq\0~\0t\0*casing-report_casing-circulation-section#Esq\0~\0t\0*casing-report_casing-circulation-section#Vsq\0~\0t\0*casing-report_casing-composition-section#Csq\0~\0t\0*casing-report_casing-composition-section#Esq\0~\0t\0*casing-report_casing-composition-section#Vsq\0~\0t\0\'casing-report_casing-lowering-section#Csq\0~\0t\0\'casing-report_casing-lowering-section#Esq\0~\0t\0\'casing-report_casing-lowering-section#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\04casing-report_external-assembly-attachment-section#Csq\0~\0t\04casing-report_external-assembly-attachment-section#Esq\0~\0t\04casing-report_external-assembly-attachment-section#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0*cementing-report_cementing-fluid-section#Csq\0~\0t\0*cementing-report_cementing-fluid-section#Esq\0~\0t\0*cementing-report_cementing-fluid-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0$cementing-report_operation-section#Csq\0~\0t\0$cementing-report_operation-section#Esq\0~\0t\0$cementing-report_operation-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pressure-section#Csq\0~\0t\0daily-report_pressure-section#Esq\0~\0t\0daily-report_pressure-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0planned-report_risk-section#Csq\0~\0t\0planned-report_risk-section#Esq\0~\0t\0planned-report_risk-section#Vsq\0~\0t\0planned-report_survey-section#Csq\0~\0t\0planned-report_survey-section#Esq\0~\0t\0planned-report_survey-section#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0)planned-report_wellbore-geology-section#Csq\0~\0t\0)planned-report_wellbore-geology-section#Esq\0~\0t\0)planned-report_wellbore-geology-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:q\0~<q\0~>q\0~@q\0~Bq\0~Dq\0~Fq\0~Hq\0~Jq\0~Lq\0~Nq\0~Pq\0~Rq\0~Tq\0~Vq\0~Xq\0~Zq\0~\\q\0~^q\0~`q\0~bq\0~dq\0~fq\0~hq\0~jq\0~lq\0~nq\0~pq\0~rq\0~tq\0~vxt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('65c5c8c6-6539-4750-a28c-b8a4e6158fdd','SPRING_SECURITY_SAVED_REQUEST','��\0sr\0Aorg.springframework.security.web.savedrequest.DefaultSavedRequest@HD�6d�\0I\0\nserverPortL\0contextPatht\0Ljava/lang/String;L\0cookiest\0Ljava/util/ArrayList;L\0headerst\0Ljava/util/Map;L\0localesq\0~\0L\0methodq\0~\0L\0\nparametersq\0~\0L\0pathInfoq\0~\0L\0queryStringq\0~\0L\0\nrequestURIq\0~\0L\0\nrequestURLq\0~\0L\0schemeq\0~\0L\0\nserverNameq\0~\0L\0servletPathq\0~\0xp\0\0\0Pt\0/authsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\09org.springframework.security.web.savedrequest.SavedCookie@+����f\0I\0maxAgeZ\0secureI\0versionL\0commentq\0~\0L\0domainq\0~\0L\0nameq\0~\0L\0pathq\0~\0L\0valueq\0~\0xp����\0\0\0\0\0ppt\0SESSIONpt\00N2I5ZWJmMWYtZTkzMy00MjkzLTg5NGYtN2Y5MjJkYWFkZDdhxsr\0java.util.TreeMap��>-%j�\0L\0\ncomparatort\0Ljava/util/Comparator;xpsr\0*java.lang.String$CaseInsensitiveComparatorw\\}\\P��\0\0xpw\0\0\0\rt\0acceptsq\0~\0\0\0\0w\0\0\0t\0�text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9xt\0accept-encodingsq\0~\0\0\0\0w\0\0\0t\0\rgzip, deflatext\0accept-languagesq\0~\0\0\0\0w\0\0\0t\0en-US,en;q=0.9,ru;q=0.8xt\0\rcache-controlsq\0~\0\0\0\0w\0\0\0t\0	max-age=0xt\0\nconnectionsq\0~\0\0\0\0w\0\0\0t\0\nKeep-Alivext\0cookiesq\0~\0\0\0\0w\0\0\0t\08SESSION=N2I5ZWJmMWYtZTkzMy00MjkzLTg5NGYtN2Y5MjJkYWFkZDdhxt\0hostsq\0~\0\0\0\0w\0\0\0t\0test.rig.spacext\0referersq\0~\0\0\0\0w\0\0\0t\0;http://test.rig.space/admin/dictionaries/wells/license-areaxt\0upgrade-insecure-requestssq\0~\0\0\0\0w\0\0\0t\01xt\0\nuser-agentsq\0~\0\0\0\0w\0\0\0t\0hMozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36xt\0x-forwarded-forsq\0~\0\0\0\0w\0\0\0t\0192.168.6.2xt\0x-forwarded-hostsq\0~\0\0\0\0w\0\0\0t\0test.rig.spacext\0x-forwarded-serversq\0~\0\0\0\0w\0\0\0t\0test.rig.spacexxsq\0~\0\0\0\0w\0\0\0sr\0java.util.Locale~�`�0��\0I\0hashcodeL\0countryq\0~\0L\0\nextensionsq\0~\0L\0languageq\0~\0L\0scriptq\0~\0L\0variantq\0~\0xp����t\0USt\0\0t\0enq\0~\0<q\0~\0<xsq\0~\09����q\0~\0<q\0~\0<q\0~\0=q\0~\0<q\0~\0<xsq\0~\09����q\0~\0<q\0~\0<t\0ruq\0~\0<q\0~\0<xxt\0GETsq\0~\0pw\0\0\0t\0	client_idur\0[Ljava.lang.String;��V��{G\0\0xp\0\0\0t\0	rig-spacet\0redirect_uriuq\0~\0D\0\0\0t\0!http://test.rig.space/admin/logint\0\rresponse_typeuq\0~\0D\0\0\0t\0codet\0stateuq\0~\0D\0\0\0t\01M87Xvxpt\0bclient_id=rig-space&redirect_uri=http://test.rig.space/admin/login&response_type=code&state=1M87Xvt\0/auth/oauth/authorizet\0*http://test.rig.space/auth/oauth/authorizet\0httpt\0test.rig.spacet\0/oauth/authorize'),('824de71f-e63b-4bc2-9da0-d68a2149f7c5','SPRING_SECURITY_SAVED_REQUEST','��\0sr\0Aorg.springframework.security.web.savedrequest.DefaultSavedRequest@HD�6d�\0I\0\nserverPortL\0contextPatht\0Ljava/lang/String;L\0cookiest\0Ljava/util/ArrayList;L\0headerst\0Ljava/util/Map;L\0localesq\0~\0L\0methodq\0~\0L\0\nparametersq\0~\0L\0pathInfoq\0~\0L\0queryStringq\0~\0L\0\nrequestURIq\0~\0L\0\nrequestURLq\0~\0L\0schemeq\0~\0L\0\nserverNameq\0~\0L\0servletPathq\0~\0xp\0\0\0Pt\0/authsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\09org.springframework.security.web.savedrequest.SavedCookie@+����f\0I\0maxAgeZ\0secureI\0versionL\0commentq\0~\0L\0domainq\0~\0L\0nameq\0~\0L\0pathq\0~\0L\0valueq\0~\0xp����\0\0\0\0\0ppt\0SESSIONpt\00N2I5ZWJmMWYtZTkzMy00MjkzLTg5NGYtN2Y5MjJkYWFkZDdhxsr\0java.util.TreeMap��>-%j�\0L\0\ncomparatort\0Ljava/util/Comparator;xpsr\0*java.lang.String$CaseInsensitiveComparatorw\\}\\P��\0\0xpw\0\0\0\rt\0acceptsq\0~\0\0\0\0w\0\0\0t\0�text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9xt\0accept-encodingsq\0~\0\0\0\0w\0\0\0t\0\rgzip, deflatext\0accept-languagesq\0~\0\0\0\0w\0\0\0t\0en-US,en;q=0.9,ru;q=0.8xt\0\rcache-controlsq\0~\0\0\0\0w\0\0\0t\0	max-age=0xt\0\nconnectionsq\0~\0\0\0\0w\0\0\0t\0\nKeep-Alivext\0cookiesq\0~\0\0\0\0w\0\0\0t\08SESSION=N2I5ZWJmMWYtZTkzMy00MjkzLTg5NGYtN2Y5MjJkYWFkZDdhxt\0hostsq\0~\0\0\0\0w\0\0\0t\0test.rig.spacext\0referersq\0~\0\0\0\0w\0\0\0t\04http://test.rig.space/admin/dictionaries/wells/fieldxt\0upgrade-insecure-requestssq\0~\0\0\0\0w\0\0\0t\01xt\0\nuser-agentsq\0~\0\0\0\0w\0\0\0t\0hMozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36xt\0x-forwarded-forsq\0~\0\0\0\0w\0\0\0t\0192.168.6.2xt\0x-forwarded-hostsq\0~\0\0\0\0w\0\0\0t\0test.rig.spacext\0x-forwarded-serversq\0~\0\0\0\0w\0\0\0t\0test.rig.spacexxsq\0~\0\0\0\0w\0\0\0sr\0java.util.Locale~�`�0��\0I\0hashcodeL\0countryq\0~\0L\0\nextensionsq\0~\0L\0languageq\0~\0L\0scriptq\0~\0L\0variantq\0~\0xp����t\0USt\0\0t\0enq\0~\0<q\0~\0<xsq\0~\09����q\0~\0<q\0~\0<q\0~\0=q\0~\0<q\0~\0<xsq\0~\09����q\0~\0<q\0~\0<t\0ruq\0~\0<q\0~\0<xxt\0GETsq\0~\0pw\0\0\0t\0	client_idur\0[Ljava.lang.String;��V��{G\0\0xp\0\0\0t\0	rig-spacet\0redirect_uriuq\0~\0D\0\0\0t\0!http://test.rig.space/admin/logint\0\rresponse_typeuq\0~\0D\0\0\0t\0codet\0stateuq\0~\0D\0\0\0t\0n5EX6Sxpt\0bclient_id=rig-space&redirect_uri=http://test.rig.space/admin/login&response_type=code&state=n5EX6St\0/auth/oauth/authorizet\0*http://test.rig.space/auth/oauth/authorizet\0httpt\0test.rig.spacet\0/oauth/authorize'),('8f3baf72-e05c-4eda-814d-2385ca99ddfd','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('b25bb6a7-9e88-4a67-be33-80c12eede626','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('b3366d7c-a053-4abe-9164-456bfec70eb7','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('be1a2204-07fc-4a34-9b21-3a598344a983','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('d4bb9d3e-4dc3-4e68-a6c7-565a59600c50','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('e3a0207f-7ab5-427d-8963-233579328af9','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0*casing-report_casing-circulation-section#Csq\0~\0t\0*casing-report_casing-circulation-section#Esq\0~\0t\0*casing-report_casing-circulation-section#Vsq\0~\0t\0*casing-report_casing-composition-section#Csq\0~\0t\0*casing-report_casing-composition-section#Esq\0~\0t\0*casing-report_casing-composition-section#Vsq\0~\0t\0\'casing-report_casing-lowering-section#Csq\0~\0t\0\'casing-report_casing-lowering-section#Esq\0~\0t\0\'casing-report_casing-lowering-section#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\04casing-report_external-assembly-attachment-section#Csq\0~\0t\04casing-report_external-assembly-attachment-section#Esq\0~\0t\04casing-report_external-assembly-attachment-section#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0*cementing-report_cementing-fluid-section#Csq\0~\0t\0*cementing-report_cementing-fluid-section#Esq\0~\0t\0*cementing-report_cementing-fluid-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0$cementing-report_operation-section#Csq\0~\0t\0$cementing-report_operation-section#Esq\0~\0t\0$cementing-report_operation-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pressure-section#Csq\0~\0t\0daily-report_pressure-section#Esq\0~\0t\0daily-report_pressure-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0planned-report_risk-section#Csq\0~\0t\0planned-report_risk-section#Esq\0~\0t\0planned-report_risk-section#Vsq\0~\0t\0planned-report_survey-section#Csq\0~\0t\0planned-report_survey-section#Esq\0~\0t\0planned-report_survey-section#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0)planned-report_wellbore-geology-section#Csq\0~\0t\0)planned-report_wellbore-geology-section#Esq\0~\0t\0)planned-report_wellbore-geology-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:q\0~<q\0~>q\0~@q\0~Bq\0~Dq\0~Fq\0~Hq\0~Jq\0~Lq\0~Nq\0~Pq\0~Rq\0~Tq\0~Vq\0~Xq\0~Zq\0~\\q\0~^q\0~`q\0~bq\0~dq\0~fq\0~hq\0~jq\0~lq\0~nq\0~pq\0~rq\0~tq\0~vxt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin'),('e50e4602-292d-4cf6-ac73-4c5cdf903b3a','SPRING_SECURITY_CONTEXT','��\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0t\0a_drilling_crew#Esq\0~\0t\0a_drilling_crew#Vsq\0~\0t\0\ra_equipment#Csq\0~\0t\0\ra_equipment#Esq\0~\0t\0\ra_equipment#Vsq\0~\0t\0a_rig#Csq\0~\0t\0a_rig#Esq\0~\0t\0a_rig#Vsq\0~\0t\0	a_roles#Csq\0~\0t\0	a_roles#Esq\0~\0t\0	a_roles#Vsq\0~\0t\0a_security_group#Csq\0~\0t\0a_security_group#Esq\0~\0t\0a_security_group#Vsq\0~\0t\0	a_users#Csq\0~\0t\0	a_users#Esq\0~\0t\0	a_users#Vsq\0~\0t\0a_wellbore#Csq\0~\0t\0a_wellbore#Esq\0~\0t\0a_wellbore#Vsq\0~\0t\0	a_wells#Csq\0~\0t\0	a_wells#Esq\0~\0t\0	a_wells#Vsq\0~\0t\0analytical_updater#Csq\0~\0t\0analytical_updater#Esq\0~\0t\0analytical_updater#Vsq\0~\0t\0analytics#Csq\0~\0t\0analytics#Esq\0~\0t\0analytics#Vsq\0~\0t\0casing-report_casing-report#Csq\0~\0t\0casing-report_casing-report#Esq\0~\0t\0casing-report_casing-report#Vsq\0~\0t\0$casing-report_general-info-section#Csq\0~\0t\0$casing-report_general-info-section#Esq\0~\0t\0$casing-report_general-info-section#Vsq\0~\0t\0#cementing-report_cementing-report#Csq\0~\0t\0#cementing-report_cementing-report#Esq\0~\0t\0#cementing-report_cementing-report#Vsq\0~\0t\0\'cementing-report_general-info-section#Csq\0~\0t\0\'cementing-report_general-info-section#Esq\0~\0t\0\'cementing-report_general-info-section#Vsq\0~\0t\0d_dictionaries#Csq\0~\0t\0d_dictionaries#Esq\0~\0t\0d_dictionaries#Vsq\0~\0t\00daily-report_cleaning-system-operation-section#Csq\0~\0t\00daily-report_cleaning-system-operation-section#Esq\0~\0t\00daily-report_cleaning-system-operation-section#Vsq\0~\0t\0!daily-report_completion-section#Csq\0~\0t\0!daily-report_completion-section#Esq\0~\0t\0!daily-report_completion-section#Vsq\0~\0t\0\'daily-report_contractor-staff-section#Csq\0~\0t\0\'daily-report_contractor-staff-section#Esq\0~\0t\0\'daily-report_contractor-staff-section#Vsq\0~\0t\0daily-report_daily-report#Csq\0~\0t\0daily-report_daily-report#Esq\0~\0t\0daily-report_daily-report#Vsq\0~\0t\0&daily-report_drilling-string-section#Csq\0~\0t\0&daily-report_drilling-string-section#Esq\0~\0t\0&daily-report_drilling-string-section#Vsq\0~\0t\0\"daily-report_fluid-param-section#Csq\0~\0t\0\"daily-report_fluid-param-section#Esq\0~\0t\0\"daily-report_fluid-param-section#Vsq\0~\0t\0#daily-report_fluid-volume-section#Csq\0~\0t\0#daily-report_fluid-volume-section#Esq\0~\0t\0#daily-report_fluid-volume-section#Vsq\0~\0t\0#daily-report_general-info-section#Csq\0~\0t\0#daily-report_general-info-section#Esq\0~\0t\0#daily-report_general-info-section#Vsq\0~\0t\0daily-report_incident-section#Csq\0~\0t\0daily-report_incident-section#Esq\0~\0t\0daily-report_incident-section#Vsq\0~\0t\0daily-report_machine-section#Csq\0~\0t\0daily-report_machine-section#Esq\0~\0t\0daily-report_machine-section#Vsq\0~\0t\0daily-report_material-section#Csq\0~\0t\0daily-report_material-section#Esq\0~\0t\0daily-report_material-section#Vsq\0~\0t\0 daily-report_operation-section#Csq\0~\0t\0 daily-report_operation-section#Esq\0~\0t\0 daily-report_operation-section#Vsq\0~\0t\0daily-report_pump-section#Csq\0~\0t\0daily-report_pump-section#Esq\0~\0t\0daily-report_pump-section#Vsq\0~\0t\0daily-report_survey-section#Csq\0~\0t\0daily-report_survey-section#Esq\0~\0t\0daily-report_survey-section#Vsq\0~\0t\0daily-report_weather-section#Csq\0~\0t\0daily-report_weather-section#Esq\0~\0t\0daily-report_weather-section#Vsq\0~\0t\0(daily-report_well-construction-section#Csq\0~\0t\0(daily-report_well-construction-section#Esq\0~\0t\0(daily-report_well-construction-section#Vsq\0~\0t\0	e_nodes#Csq\0~\0t\0	e_nodes#Esq\0~\0t\0	e_nodes#Vsq\0~\0t\0e_sensors#Csq\0~\0t\0e_sensors#Esq\0~\0t\0e_sensors#Vsq\0~\0t\0\nm_events#Csq\0~\0t\0\nm_events#Esq\0~\0t\0\nm_events#Vsq\0~\0t\0m_reports#Csq\0~\0t\0m_reports#Esq\0~\0t\0m_reports#Vsq\0~\0t\0m_rigs#Csq\0~\0t\0m_rigs#Esq\0~\0t\0m_rigs#Vsq\0~\0t\0(pipe-tally-report_general-info-section#Csq\0~\0t\0(pipe-tally-report_general-info-section#Esq\0~\0t\0(pipe-tally-report_general-info-section#Vsq\0~\0t\0%pipe-tally-report_pipe-tally-report#Csq\0~\0t\0%pipe-tally-report_pipe-tally-report#Esq\0~\0t\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0t\0&pipe-tally-report_pipe-tally-section#Csq\0~\0t\0&pipe-tally-report_pipe-tally-section#Esq\0~\0t\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0t\0planned-report_casing-section#Csq\0~\0t\0planned-report_casing-section#Esq\0~\0t\0planned-report_casing-section#Vsq\0~\0t\0\"planned-report_cementing-section#Csq\0~\0t\0\"planned-report_cementing-section#Esq\0~\0t\0\"planned-report_cementing-section#Vsq\0~\0t\0(planned-report_drilling-string-section#Csq\0~\0t\0(planned-report_drilling-string-section#Esq\0~\0t\0(planned-report_drilling-string-section#Vsq\0~\0t\0$planned-report_fluid-param-section#Csq\0~\0t\0$planned-report_fluid-param-section#Esq\0~\0t\0$planned-report_fluid-param-section#Vsq\0~\0t\0%planned-report_general-info-section#Csq\0~\0t\0%planned-report_general-info-section#Esq\0~\0t\0%planned-report_general-info-section#Vsq\0~\0t\0!planned-report_material-section#Csq\0~\0t\0!planned-report_material-section#Esq\0~\0t\0!planned-report_material-section#Vsq\0~\0t\0\"planned-report_operation-section#Csq\0~\0t\0\"planned-report_operation-section#Esq\0~\0t\0\"planned-report_operation-section#Vsq\0~\0t\0planned-report_planned-report#Csq\0~\0t\0planned-report_planned-report#Esq\0~\0t\0planned-report_planned-report#Vsq\0~\0t\0*planned-report_well-construction-section#Csq\0~\0t\0*planned-report_well-construction-section#Esq\0~\0t\0*planned-report_well-construction-section#Vsq\0~\0t\0\nr_events#Csq\0~\0t\0\nr_events#Esq\0~\0t\0\nr_events#Vsq\0~\0t\0rating#Csq\0~\0t\0rating#Esq\0~\0t\0rating#Vxq\0~\0\rppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0\Zq\0~\0q\0~\0q\0~\0 q\0~\0\"q\0~\0$q\0~\0&q\0~\0(q\0~\0*q\0~\0,q\0~\0.q\0~\00q\0~\02q\0~\04q\0~\06q\0~\08q\0~\0:q\0~\0<q\0~\0>q\0~\0@q\0~\0Bq\0~\0Dq\0~\0Fq\0~\0Hq\0~\0Jq\0~\0Lq\0~\0Nq\0~\0Pq\0~\0Rq\0~\0Tq\0~\0Vq\0~\0Xq\0~\0Zq\0~\0\\q\0~\0^q\0~\0`q\0~\0bq\0~\0dq\0~\0fq\0~\0hq\0~\0jq\0~\0lq\0~\0nq\0~\0pq\0~\0rq\0~\0tq\0~\0vq\0~\0xq\0~\0zq\0~\0|q\0~\0~q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0q\0~q\0~q\0~q\0~q\0~\nq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~\Zq\0~q\0~q\0~ q\0~\"q\0~$q\0~&q\0~(q\0~*q\0~,q\0~.q\0~0q\0~2q\0~4q\0~6q\0~8q\0~:xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin');
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_type`
--

DROP TABLE IF EXISTS `activity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_type`
--

LOCK TABLES `activity_type` WRITE;
/*!40000 ALTER TABLE `activity_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_types_and_operation_mode_types`
--

DROP TABLE IF EXISTS `activity_types_and_operation_mode_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_types_and_operation_mode_types` (
  `operation_mode_type_id` bigint(20) NOT NULL,
  `activity_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`operation_mode_type_id`,`activity_type_id`),
  UNIQUE KEY `activity_type_id` (`activity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_types_and_operation_mode_types`
--

LOCK TABLES `activity_types_and_operation_mode_types` WRITE;
/*!40000 ALTER TABLE `activity_types_and_operation_mode_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_types_and_operation_mode_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aggregate_manufacturer`
--

DROP TABLE IF EXISTS `aggregate_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregate_manufacturer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aggregate_manufacturer`
--

LOCK TABLES `aggregate_manufacturer` WRITE;
/*!40000 ALTER TABLE `aggregate_manufacturer` DISABLE KEYS */;
INSERT INTO `aggregate_manufacturer` VALUES (1,'Акрос','2020-11-18 12:53:12','\0');
/*!40000 ALTER TABLE `aggregate_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_casing`
--

DROP TABLE IF EXISTS `analytical_casing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_casing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `section_type_id` bigint(20) DEFAULT NULL,
  `section_diameter_id` bigint(20) DEFAULT NULL,
  `casing_outside_diameter_id` bigint(20) DEFAULT NULL,
  `casing_shoe` double DEFAULT NULL,
  `casing_top` double DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytical_casing_well` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_casing`
--

LOCK TABLES `analytical_casing` WRITE;
/*!40000 ALTER TABLE `analytical_casing` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_casing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_casing_string`
--

DROP TABLE IF EXISTS `analytical_casing_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_casing_string` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `finish_time` datetime NOT NULL,
  `casing_outside_diameter_id` bigint(20) NOT NULL,
  `casing_connection_type_id` bigint(20) DEFAULT NULL,
  `casing_string_length` double DEFAULT NULL,
  `running_on_dp` bit(1) DEFAULT NULL,
  `drill_pipe_outside_diameter_id` bigint(20) DEFAULT NULL,
  `thread_connection_type_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytical_casing_string_well` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_casing_string`
--

LOCK TABLES `analytical_casing_string` WRITE;
/*!40000 ALTER TABLE `analytical_casing_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_casing_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_dashboard`
--

DROP TABLE IF EXISTS `analytical_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_dashboard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_dashboard`
--

LOCK TABLES `analytical_dashboard` WRITE;
/*!40000 ALTER TABLE `analytical_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_dashboards_and_bar_charts`
--

DROP TABLE IF EXISTS `analytical_dashboards_and_bar_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_dashboards_and_bar_charts` (
  `analytical_dashboard_id` bigint(20) NOT NULL,
  `diagram_id` bigint(20) NOT NULL,
  PRIMARY KEY (`analytical_dashboard_id`,`diagram_id`),
  KEY `analytical_dashboards_and_diagrams_index_1` (`analytical_dashboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_dashboards_and_bar_charts`
--

LOCK TABLES `analytical_dashboards_and_bar_charts` WRITE;
/*!40000 ALTER TABLE `analytical_dashboards_and_bar_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_dashboards_and_bar_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_dashboards_and_line_charts`
--

DROP TABLE IF EXISTS `analytical_dashboards_and_line_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_dashboards_and_line_charts` (
  `diagram_id` bigint(20) NOT NULL,
  `analytical_dashboard_id` bigint(20) NOT NULL,
  PRIMARY KEY (`diagram_id`,`analytical_dashboard_id`),
  KEY `analytical_dashboards_and_line_charts_index_2` (`analytical_dashboard_id`),
  KEY `analytical_dashboards_and_line_charts_index_1` (`diagram_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_dashboards_and_line_charts`
--

LOCK TABLES `analytical_dashboards_and_line_charts` WRITE;
/*!40000 ALTER TABLE `analytical_dashboards_and_line_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_dashboards_and_line_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_dashboards_and_reports`
--

DROP TABLE IF EXISTS `analytical_dashboards_and_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_dashboards_and_reports` (
  `analytical_dashboard_id` bigint(20) NOT NULL,
  `analytical_report_id` bigint(20) NOT NULL,
  PRIMARY KEY (`analytical_dashboard_id`,`analytical_report_id`),
  KEY `analytical_dashboards_and_reports_index_1` (`analytical_dashboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_dashboards_and_reports`
--

LOCK TABLES `analytical_dashboards_and_reports` WRITE;
/*!40000 ALTER TABLE `analytical_dashboards_and_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_dashboards_and_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_dashboards_and_term_bar_charts`
--

DROP TABLE IF EXISTS `analytical_dashboards_and_term_bar_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_dashboards_and_term_bar_charts` (
  `diagram_id` bigint(20) NOT NULL,
  `analytical_dashboard_id` bigint(20) NOT NULL,
  PRIMARY KEY (`diagram_id`,`analytical_dashboard_id`),
  KEY `analytical_dashboards_and_term_bar_charts_index_1` (`diagram_id`),
  KEY `analytical_dashboards_and_term_bar_charts_index_2` (`analytical_dashboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_dashboards_and_term_bar_charts`
--

LOCK TABLES `analytical_dashboards_and_term_bar_charts` WRITE;
/*!40000 ALTER TABLE `analytical_dashboards_and_term_bar_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_dashboards_and_term_bar_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_drill_string`
--

DROP TABLE IF EXISTS `analytical_drill_string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_drill_string` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `finish_time` datetime NOT NULL,
  `bit_outside_diameter_id` bigint(20) NOT NULL,
  `bit_type_id` bigint(20) DEFAULT NULL,
  `bit_model_id` bigint(20) DEFAULT NULL,
  `bit_manufacturer_id` bigint(20) DEFAULT NULL,
  `mwd_exists` bit(1) DEFAULT NULL,
  `mwd_model_id` bigint(20) DEFAULT NULL,
  `mwd_manufacturer_id` bigint(20) DEFAULT NULL,
  `mudmotor_exists` bit(1) DEFAULT NULL,
  `mudmotor_model_id` bigint(20) DEFAULT NULL,
  `mudmotor_manufacturer_id` bigint(20) DEFAULT NULL,
  `rss_exists` bit(1) DEFAULT NULL,
  `rss_model_id` bigint(20) DEFAULT NULL,
  `rss_manufacturer_id` bigint(20) DEFAULT NULL,
  `drill_pipe_outside_diameter_id` bigint(20) NOT NULL,
  `thread_connection_type_id` bigint(20) DEFAULT NULL,
  `bha_length` double DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytical_drill_string_well` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_drill_string`
--

LOCK TABLES `analytical_drill_string` WRITE;
/*!40000 ALTER TABLE `analytical_drill_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_drill_string` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_drilling_crew_target_kpi`
--

DROP TABLE IF EXISTS `analytical_drilling_crew_target_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_drilling_crew_target_kpi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_string_id` bigint(20) DEFAULT NULL,
  `kpi_type_id` bigint(20) DEFAULT NULL,
  `drilling_crew_id` bigint(20) DEFAULT NULL,
  `well_and_rig_relation_id` bigint(20) NOT NULL,
  `section_casing_id` bigint(20) DEFAULT NULL,
  `target_kpi_value` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`well_and_rig_relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_drilling_crew_target_kpi`
--

LOCK TABLES `analytical_drilling_crew_target_kpi` WRITE;
/*!40000 ALTER TABLE `analytical_drilling_crew_target_kpi` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_drilling_crew_target_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_operation_algorithm`
--

DROP TABLE IF EXISTS `analytical_operation_algorithm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_operation_algorithm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `start_depth` double DEFAULT NULL,
  `end_depth` double DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `ignore_operation` bit(1) DEFAULT NULL,
  `temp` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytical_operation_index_2` (`start_date`,`end_date`),
  KEY `analytical_operation_index_1` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_operation_algorithm`
--

LOCK TABLES `analytical_operation_algorithm` WRITE;
/*!40000 ALTER TABLE `analytical_operation_algorithm` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_operation_algorithm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_operation_manual`
--

DROP TABLE IF EXISTS `analytical_operation_manual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_operation_manual` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `start_depth` double DEFAULT NULL,
  `end_depth` double DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `ignore_operation` bit(1) DEFAULT NULL,
  `temp` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytical_operation_manual_index_2` (`start_date`,`well_id`,`temp`),
  KEY `analytical_operation_manual_index_1` (`well_id`,`end_date`,`temp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_operation_manual`
--

LOCK TABLES `analytical_operation_manual` WRITE;
/*!40000 ALTER TABLE `analytical_operation_manual` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_operation_manual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_report`
--

DROP TABLE IF EXISTS `analytical_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `decor` text,
  `creator_id` bigint(20) DEFAULT NULL,
  `sharing_status_id` int(11) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_report`
--

LOCK TABLES `analytical_report` WRITE;
/*!40000 ALTER TABLE `analytical_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_reports_and_bar_charts`
--

DROP TABLE IF EXISTS `analytical_reports_and_bar_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_reports_and_bar_charts` (
  `analytical_report_id` bigint(20) NOT NULL,
  `diagram_id` bigint(20) NOT NULL,
  PRIMARY KEY (`analytical_report_id`,`diagram_id`),
  KEY `analytical_reports_and_diagrams_index_1` (`diagram_id`),
  KEY `analytical_reports_and_diagrams_index_2` (`analytical_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_reports_and_bar_charts`
--

LOCK TABLES `analytical_reports_and_bar_charts` WRITE;
/*!40000 ALTER TABLE `analytical_reports_and_bar_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_reports_and_bar_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_reports_and_line_charts`
--

DROP TABLE IF EXISTS `analytical_reports_and_line_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_reports_and_line_charts` (
  `diagram_id` bigint(20) NOT NULL,
  `analytical_report_id` bigint(20) NOT NULL,
  PRIMARY KEY (`diagram_id`,`analytical_report_id`),
  KEY `analytical_reports_and_line_charts_index_1` (`analytical_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_reports_and_line_charts`
--

LOCK TABLES `analytical_reports_and_line_charts` WRITE;
/*!40000 ALTER TABLE `analytical_reports_and_line_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_reports_and_line_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_reports_and_term_bar_charts`
--

DROP TABLE IF EXISTS `analytical_reports_and_term_bar_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_reports_and_term_bar_charts` (
  `diagram_id` bigint(20) NOT NULL,
  `analytical_report_id` bigint(20) NOT NULL,
  PRIMARY KEY (`diagram_id`,`analytical_report_id`),
  KEY `analytical_reports_and_term_bar_charts_index_1` (`diagram_id`),
  KEY `analytical_reports_and_term_bar_charts_index_2` (`analytical_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_reports_and_term_bar_charts`
--

LOCK TABLES `analytical_reports_and_term_bar_charts` WRITE;
/*!40000 ALTER TABLE `analytical_reports_and_term_bar_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_reports_and_term_bar_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_reports_and_users`
--

DROP TABLE IF EXISTS `analytical_reports_and_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_reports_and_users` (
  `analytical_report_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`analytical_report_id`,`user_id`),
  KEY `analytical_reports_and_users_index_1` (`user_id`),
  KEY `analytical_reports_and_users_index_2` (`analytical_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_reports_and_users`
--

LOCK TABLES `analytical_reports_and_users` WRITE;
/*!40000 ALTER TABLE `analytical_reports_and_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_reports_and_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_rig_status_type`
--

DROP TABLE IF EXISTS `analytical_rig_status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_rig_status_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(6) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_rig_status_type`
--

LOCK TABLES `analytical_rig_status_type` WRITE;
/*!40000 ALTER TABLE `analytical_rig_status_type` DISABLE KEYS */;
INSERT INTO `analytical_rig_status_type` VALUES (0,'Неопределенный','FCFBE3','\0','2020-04-16 12:26:34'),(2,'Бурение','00A524','\0','2020-04-16 12:26:34'),(4,'Проработка','CF4242','\0','2020-04-16 12:26:34'),(8,'СПО спуск','403C3C','\0','2020-04-16 12:26:34'),(9,'СПО подъем','551487','\0','2020-04-16 12:26:34'),(35,'Промывка','2057F3','\0','2020-04-16 12:26:34'),(46,'Бурение слайдом','226631','\0','2020-04-16 12:26:34'),(47,'Спуск с промывкой','5D7BD2','\0','2020-04-16 12:26:34'),(48,'Промывка с вращением','2E4994','\0','2020-04-16 12:26:34'),(49,'Обратная проработка','B06464','\0','2020-04-16 12:26:34'),(50,'Подъем с промывкой','8BA3E9','\0','2020-04-16 12:26:34'),(51,'Спуск с вращением','DE2E2E','\0','2020-04-16 12:26:34'),(52,'Подъем с вращением','F37DF2','\0','2020-04-16 12:26:34'),(53,'Вращение','8D99BC','\0','2020-04-16 12:26:34'),(54,'Инструмент без движения','D7CCCC','\0','2020-04-16 12:26:34'),(55,'В клиньях','CCCA6D','\0','2020-04-16 12:26:34'),(56,'На поверхности','00AAAD','\0','2020-04-16 12:26:34');
/*!40000 ALTER TABLE `analytical_rig_status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_target_kpi_type`
--

DROP TABLE IF EXISTS `analytical_target_kpi_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_target_kpi_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_section_id` bigint(20) DEFAULT NULL,
  `is_casing` bit(1) DEFAULT NULL,
  `target_value` double DEFAULT NULL,
  `analytical_drilling_crew_target_kpi_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_target_kpi_type`
--

LOCK TABLES `analytical_target_kpi_type` WRITE;
/*!40000 ALTER TABLE `analytical_target_kpi_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_target_kpi_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_task`
--

DROP TABLE IF EXISTS `analytical_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `readiness` double NOT NULL,
  `current_state` int(11) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `free_hook_weight` double NOT NULL,
  `min_rpm` double DEFAULT NULL,
  `min_mfia` double DEFAULT NULL,
  `bha_lenght` double DEFAULT NULL,
  `current_wellbore_id` bigint(20) DEFAULT NULL,
  `last_timestamp` datetime DEFAULT NULL,
  `ignore_task_executing` bit(1) DEFAULT NULL,
  `last_processed_operation_timestamp_start` datetime DEFAULT NULL,
  `last_processed_operation_timestamp_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `analytical_task_index_1` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_task`
--

LOCK TABLES `analytical_task` WRITE;
/*!40000 ALTER TABLE `analytical_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_task_status`
--

DROP TABLE IF EXISTS `analytical_task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_task_status` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_task_status`
--

LOCK TABLES `analytical_task_status` WRITE;
/*!40000 ALTER TABLE `analytical_task_status` DISABLE KEYS */;
INSERT INTO `analytical_task_status` VALUES (0,'Ожидание в очереди.','\0','2020-04-16 12:26:45'),(1,'Работа. Поиск операций.','\0','2020-04-16 12:26:45'),(2,'Работа. Поиск KPI событий.','\0','2020-04-16 12:26:45'),(3,'Копирование новых данных.','\0','2020-04-16 12:26:45'),(4,'Отмена изменений.','\0','2020-04-16 12:26:45'),(5,'Работа. Определение активностей.','\0','2020-04-16 12:26:45');
/*!40000 ALTER TABLE `analytical_task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytical_well_statuses`
--

DROP TABLE IF EXISTS `analytical_well_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analytical_well_statuses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `analytical_casing_progress` bit(1) DEFAULT b'0',
  `analytical_casing_string_progress` bit(1) DEFAULT b'0',
  `analytical_casing_drilling_progress` bit(1) DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytical_well_statuses`
--

LOCK TABLES `analytical_well_statuses` WRITE;
/*!40000 ALTER TABLE `analytical_well_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytical_well_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment_type`
--

DROP TABLE IF EXISTS `attachment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment_type`
--

LOCK TABLES `attachment_type` WRITE;
/*!40000 ALTER TABLE `attachment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_data`
--

DROP TABLE IF EXISTS `audit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_data` text NOT NULL,
  `audit_descriptor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_data`
--

LOCK TABLES `audit_data` WRITE;
/*!40000 ALTER TABLE `audit_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_descriptor`
--

DROP TABLE IF EXISTS `audit_descriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_descriptor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` varchar(255) NOT NULL,
  `entity_table_name` varchar(255) NOT NULL,
  `modifier_id` bigint(20) NOT NULL,
  `time` datetime NOT NULL,
  `event` enum('create','update','delete') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_descriptor`
--

LOCK TABLES `audit_descriptor` WRITE;
/*!40000 ALTER TABLE `audit_descriptor` DISABLE KEYS */;
INSERT INTO `audit_descriptor` VALUES (1,'2','role',1,'2020-08-19 22:16:36','create'),(2,'2','role',1,'2020-11-18 12:11:52','update'),(3,'2','role',1,'2020-11-18 12:12:07','update'),(4,'1','well_place',1,'2020-11-18 12:49:47','create'),(5,'1','well_license_area',1,'2020-11-18 12:50:00','create'),(6,'1','well_license_area',1,'2020-11-18 12:50:30','update'),(7,'1','field',1,'2020-11-18 12:50:35','create'),(8,'1','well_project',1,'2020-11-18 12:50:40','create'),(9,'1','well_purpose',1,'2020-11-18 12:50:46','create'),(10,'1','wellbore_purpose',1,'2020-11-18 12:50:51','create'),(11,'1','subsoil_user',1,'2020-11-18 12:50:55','create'),(12,'1','well_category',1,'2020-11-18 12:51:14','create'),(13,'1','well_fluid',1,'2020-11-18 12:51:21','create'),(14,'1','formation',1,'2020-11-18 12:51:26','create'),(15,'1','rig_type',1,'2020-11-18 12:51:32','create'),(16,'1','rig_owner',1,'2020-11-18 12:51:39','create'),(17,'1','drilling_contractor_company',1,'2020-11-18 12:51:49','create'),(18,'1','pump_model',1,'2020-11-18 12:52:25','create'),(19,'1','shaker_model',1,'2020-11-18 12:52:32','create'),(20,'1','hydroclone_model',1,'2020-11-18 12:52:35','create'),(21,'1','degasser_model',1,'2020-11-18 12:52:41','create'),(22,'1','bop_model',1,'2020-11-18 12:52:49','create'),(23,'1','centrifuge_model',1,'2020-11-18 12:52:54','create'),(24,'1','bop_component_model',1,'2020-11-18 12:53:01','create'),(25,'1','aggregate_manufacturer',1,'2020-11-18 12:53:12','create'),(26,'1','shaker_type',1,'2020-11-18 12:53:21','create'),(27,'1','hydroclone_type',1,'2020-11-18 12:53:26','create'),(28,'1','degasser_type',1,'2020-11-18 12:53:30','create'),(29,'1','pit_type',1,'2020-11-18 12:53:35','create'),(30,'1','centrifuge_type',1,'2020-11-18 12:53:39','create'),(31,'1','bop_component_type',1,'2020-11-18 12:53:48','create');
/*!40000 ALTER TABLE `audit_descriptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bar_chart_properties`
--

DROP TABLE IF EXISTS `bar_chart_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bar_chart_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kpi_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filter` text,
  `decor` text,
  `sharing_status_id` int(11) NOT NULL,
  `group_by_field` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `diagram_target_kpi_value` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_chart_properties`
--

LOCK TABLES `bar_chart_properties` WRITE;
/*!40000 ALTER TABLE `bar_chart_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `bar_chart_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bar_charts_and_users`
--

DROP TABLE IF EXISTS `bar_charts_and_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bar_charts_and_users` (
  `bar_chart_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`bar_chart_id`,`user_id`),
  KEY `diagrams_and_users_index_1` (`user_id`),
  KEY `diagrams_and_users_index_2` (`bar_chart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_charts_and_users`
--

LOCK TABLES `bar_charts_and_users` WRITE;
/*!40000 ALTER TABLE `bar_charts_and_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `bar_charts_and_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bearing`
--

DROP TABLE IF EXISTS `bearing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bearing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bearing`
--

LOCK TABLES `bearing` WRITE;
/*!40000 ALTER TABLE `bearing` DISABLE KEYS */;
INSERT INTO `bearing` VALUES (1,'0','\0','2020-04-16 12:33:13'),(2,'1','\0','2020-04-16 12:33:13'),(3,'2','\0','2020-04-16 12:33:13'),(4,'3','\0','2020-04-16 12:33:13'),(5,'4','\0','2020-04-16 12:33:13'),(6,'5','\0','2020-04-16 12:33:13'),(7,'6','\0','2020-04-16 12:33:13'),(8,'7','\0','2020-04-16 12:33:13'),(9,'8','\0','2020-04-16 12:33:13'),(10,'E','\0','2020-04-16 12:33:13'),(11,'F','\0','2020-04-16 12:33:13'),(12,'N','\0','2020-04-16 12:33:13'),(13,'X','\0','2020-04-16 12:33:13');
/*!40000 ALTER TABLE `bearing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bha_operation`
--

DROP TABLE IF EXISTS `bha_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bha_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bha_run_id` bigint(20) NOT NULL,
  `operation_mode_type_id` bigint(20) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `interval_from` double DEFAULT NULL,
  `interval_to` double DEFAULT NULL,
  `rotary_per_minute_min` double DEFAULT NULL,
  `rotary_per_minute_max` double DEFAULT NULL,
  `rotary_torque_min` double DEFAULT NULL,
  `rotary_torque_max` double DEFAULT NULL,
  `weight_on_bit_min` double DEFAULT NULL,
  `weight_on_bit_max` double DEFAULT NULL,
  `pump_flow_rate_min` double DEFAULT NULL,
  `pump_flow_rate_max` double DEFAULT NULL,
  `stand_pipe_pressure_min` double DEFAULT NULL,
  `stand_pipe_pressure_max` double DEFAULT NULL,
  `metrage` double DEFAULT NULL,
  `comment` text,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bha_run_position_in_list_bha_operation_index` (`bha_run_id`,`position_in_list`),
  KEY `daily_report_id_bha_operation_index` (`daily_report_id`),
  KEY `event_report_run_bha_operation_index` (`event_id`,`daily_report_id`,`bha_run_id`),
  KEY `operation_mode_type_id_bha_operation_index` (`operation_mode_type_id`),
  KEY `event_id_bha_run_bha_operation_idx` (`event_id`,`bha_run_id`,`operation_mode_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bha_operation`
--

LOCK TABLES `bha_operation` WRITE;
/*!40000 ALTER TABLE `bha_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bha_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bha_run`
--

DROP TABLE IF EXISTS `bha_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bha_run` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` bigint(20) NOT NULL,
  `tubular_assembly_id` bigint(20) NOT NULL,
  `objective_bha` varchar(255) DEFAULT NULL,
  `trip_reason` varchar(512) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `measured_depth_in` double DEFAULT NULL,
  `measured_depth_out` double DEFAULT NULL,
  `run_number` varchar(255) DEFAULT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_start_time_bha_run_index` (`event_id`,`start_time`),
  KEY `event_tubular_assembly_bha_run_index` (`event_id`,`tubular_assembly_id`),
  KEY `tubular_assembly_id_bha_run_index` (`tubular_assembly_id`),
  KEY `wellbore_bha_run_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bha_run`
--

LOCK TABLES `bha_run` WRITE;
/*!40000 ALTER TABLE `bha_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `bha_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_dull_grade`
--

DROP TABLE IF EXISTS `bit_dull_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_dull_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bha_run_id` bigint(20) NOT NULL,
  `instrument_id` bigint(20) DEFAULT NULL,
  `inner_rows` bigint(20) DEFAULT NULL,
  `outer_rows` bigint(20) DEFAULT NULL,
  `dull_code_id` bigint(20) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `bearing_id1` bigint(20) DEFAULT NULL,
  `bearing_id2` bigint(20) DEFAULT NULL,
  `bearing_id3` bigint(20) DEFAULT NULL,
  `gauge` varchar(64) DEFAULT NULL,
  `other` varchar(64) DEFAULT NULL,
  `pull_reason_id` bigint(20) DEFAULT NULL,
  `vniibt` varchar(255) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bit_dull_grade_index` (`event_id`,`bha_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_dull_grade`
--

LOCK TABLES `bit_dull_grade` WRITE;
/*!40000 ALTER TABLE `bit_dull_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `bit_dull_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_manufacturer`
--

DROP TABLE IF EXISTS `bit_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_manufacturer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_manufacturer`
--

LOCK TABLES `bit_manufacturer` WRITE;
/*!40000 ALTER TABLE `bit_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bit_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_model`
--

DROP TABLE IF EXISTS `bit_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_model`
--

LOCK TABLES `bit_model` WRITE;
/*!40000 ALTER TABLE `bit_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `bit_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_outside_diameter`
--

DROP TABLE IF EXISTS `bit_outside_diameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_outside_diameter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_outside_diameter`
--

LOCK TABLES `bit_outside_diameter` WRITE;
/*!40000 ALTER TABLE `bit_outside_diameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `bit_outside_diameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_size`
--

DROP TABLE IF EXISTS `bit_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_size` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_size`
--

LOCK TABLES `bit_size` WRITE;
/*!40000 ALTER TABLE `bit_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `bit_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_type`
--

DROP TABLE IF EXISTS `bit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bit_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_type`
--

LOCK TABLES `bit_type` WRITE;
/*!40000 ALTER TABLE `bit_type` DISABLE KEYS */;
INSERT INTO `bit_type` VALUES (1,'PDC','\0','2020-04-16 12:28:01'),(2,'шарошечное','\0','2020-04-16 12:28:01'),(3,'бицентричное','\0','2020-04-16 12:28:01'),(4,'импрегнированное','\0','2020-04-16 12:28:02'),(5,'бурголовка','\0','2020-04-16 12:28:02');
/*!40000 ALTER TABLE `bit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bop`
--

DROP TABLE IF EXISTS `bop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rig_owner_id` bigint(20) DEFAULT NULL,
  `pres_bop_rating` double DEFAULT NULL,
  `nominal_bop_size` double DEFAULT NULL,
  `bop_model_id` bigint(20) DEFAULT NULL,
  `description` mediumtext,
  `remarks` mediumtext,
  `aggregate_manufacturer_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bop`
--

LOCK TABLES `bop` WRITE;
/*!40000 ALTER TABLE `bop` DISABLE KEYS */;
/*!40000 ALTER TABLE `bop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bop_and_rig_relation`
--

DROP TABLE IF EXISTS `bop_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bop_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `bop_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_bop_and_rig_relation_index` (`rig_id`),
  KEY `centrifuge_bop_and_rig_relation_index` (`bop_id`),
  KEY `pos_bop_and_rig_relation_index` (`position_in_list`,`bop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bop_and_rig_relation`
--

LOCK TABLES `bop_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `bop_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bop_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bop_component`
--

DROP TABLE IF EXISTS `bop_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bop_component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bop_id` bigint(20) NOT NULL,
  `bop_component_model_id` bigint(20) DEFAULT NULL,
  `bop_component_type_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `nominal_comp_size` double DEFAULT NULL,
  `working_pressure` double DEFAULT NULL,
  `remarks` mediumtext,
  `description` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pos_bop_component_index` (`bop_id`,`position_in_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bop_component`
--

LOCK TABLES `bop_component` WRITE;
/*!40000 ALTER TABLE `bop_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `bop_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bop_component_model`
--

DROP TABLE IF EXISTS `bop_component_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bop_component_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bop_component_model`
--

LOCK TABLES `bop_component_model` WRITE;
/*!40000 ALTER TABLE `bop_component_model` DISABLE KEYS */;
INSERT INTO `bop_component_model` VALUES (1,'Тестовая модель','2020-11-18 12:53:01','\0');
/*!40000 ALTER TABLE `bop_component_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bop_component_type`
--

DROP TABLE IF EXISTS `bop_component_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bop_component_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bop_component_type`
--

LOCK TABLES `bop_component_type` WRITE;
/*!40000 ALTER TABLE `bop_component_type` DISABLE KEYS */;
INSERT INTO `bop_component_type` VALUES (1,'Тестовый элемент ПВО','2020-11-18 12:53:48','\0');
/*!40000 ALTER TABLE `bop_component_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bop_model`
--

DROP TABLE IF EXISTS `bop_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bop_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bop_model`
--

LOCK TABLES `bop_model` WRITE;
/*!40000 ALTER TABLE `bop_model` DISABLE KEYS */;
INSERT INTO `bop_model` VALUES (1,'Тестовая модель','2020-11-18 12:52:49','\0');
/*!40000 ALTER TABLE `bop_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casing_connection_type`
--

DROP TABLE IF EXISTS `casing_connection_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casing_connection_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casing_connection_type`
--

LOCK TABLES `casing_connection_type` WRITE;
/*!40000 ALTER TABLE `casing_connection_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `casing_connection_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casing_outside_diameter`
--

DROP TABLE IF EXISTS `casing_outside_diameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casing_outside_diameter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casing_outside_diameter`
--

LOCK TABLES `casing_outside_diameter` WRITE;
/*!40000 ALTER TABLE `casing_outside_diameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `casing_outside_diameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casing_report`
--

DROP TABLE IF EXISTS `casing_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casing_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `number` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `casing_report_general_info_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `casing_report_date_index` (`date`),
  KEY `casing_report_event_id_index` (`event_id`),
  KEY `casing_report_wellbore_index` (`wellbore_id`),
  KEY `event_casing_report_general_info_id_index` (`casing_report_general_info_id`,`event_id`),
  KEY `number_event_id_casing_report` (`number`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casing_report`
--

LOCK TABLES `casing_report` WRITE;
/*!40000 ALTER TABLE `casing_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `casing_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casing_report_general_info`
--

DROP TABLE IF EXISTS `casing_report_general_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casing_report_general_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext,
  `wellbore_diameter` double DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `measured_depth` double DEFAULT NULL,
  `run_number` int(11) DEFAULT NULL,
  `fill_pipe` double DEFAULT NULL,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `lubricant_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `contractor_id` bigint(20) DEFAULT NULL,
  `tubular_assembly_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_casing_report_general_info_index` (`event_id`),
  KEY `stage_casing_report_general_info_index` (`stage_type_id`),
  KEY `contractor_casing_report_general_info_index` (`contractor_id`),
  KEY `tubular_casing_report_general_info_index` (`tubular_assembly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casing_report_general_info`
--

LOCK TABLES `casing_report_general_info` WRITE;
/*!40000 ALTER TABLE `casing_report_general_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `casing_report_general_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cement_job_type`
--

DROP TABLE IF EXISTS `cement_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cement_job_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cement_job_type`
--

LOCK TABLES `cement_job_type` WRITE;
/*!40000 ALTER TABLE `cement_job_type` DISABLE KEYS */;
INSERT INTO `cement_job_type` VALUES (1,'Первичное цементирование','\0','2020-04-16 12:28:46'),(2,'Установка моста','\0','2020-04-16 12:28:46'),(3,'РИР','\0','2020-04-16 12:28:46');
/*!40000 ALTER TABLE `cement_job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cementing_fluid_type`
--

DROP TABLE IF EXISTS `cementing_fluid_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cementing_fluid_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cementing_fluid_type`
--

LOCK TABLES `cementing_fluid_type` WRITE;
/*!40000 ALTER TABLE `cementing_fluid_type` DISABLE KEYS */;
INSERT INTO `cementing_fluid_type` VALUES (1,'Буферная','\0','2020-04-16 12:28:46'),(2,'Тампонажная','\0','2020-04-16 12:28:46'),(3,'Продавочная','\0','2020-04-16 12:28:46');
/*!40000 ALTER TABLE `cementing_fluid_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cementing_method`
--

DROP TABLE IF EXISTS `cementing_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cementing_method` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cementing_method`
--

LOCK TABLES `cementing_method` WRITE;
/*!40000 ALTER TABLE `cementing_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `cementing_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cementing_report`
--

DROP TABLE IF EXISTS `cementing_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cementing_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `number` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `cementing_report_general_info_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wellbore_date_event_cementing_report_uniq` (`wellbore_id`,`date`,`event_id`),
  KEY `cementing_report_date_index` (`date`),
  KEY `cementing_report_event_id_index` (`event_id`),
  KEY `cementing_report_wellbore_index` (`wellbore_id`),
  KEY `event_cement_report_general_info_id_index` (`cementing_report_general_info_id`,`event_id`),
  KEY `number_event_id_cementing_report` (`number`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cementing_report`
--

LOCK TABLES `cementing_report` WRITE;
/*!40000 ALTER TABLE `cementing_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cementing_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cementing_report_general_info`
--

DROP TABLE IF EXISTS `cementing_report_general_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cementing_report_general_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext,
  `wellbore_diameter` double DEFAULT NULL,
  `with_rotation` bit(1) NOT NULL DEFAULT b'0',
  `with_reciprocation` bit(1) NOT NULL DEFAULT b'0',
  `measured_depth` double DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `drilled_out_date` datetime DEFAULT NULL,
  `drilling_out_date` datetime DEFAULT NULL,
  `cementing_engineer` varchar(255) DEFAULT NULL,
  `tubular_assembly_id` bigint(20) DEFAULT NULL,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `cementing_method_id` bigint(20) DEFAULT NULL,
  `cement_job_type_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `contractor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_cementing_report_general_info_index` (`event_id`),
  KEY `stage_cementing_report_general_info_index` (`stage_type_id`),
  KEY `tubular_cementing_report_general_info_index` (`tubular_assembly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cementing_report_general_info`
--

LOCK TABLES `cementing_report_general_info` WRITE;
/*!40000 ALTER TABLE `cementing_report_general_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `cementing_report_general_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centrifuge`
--

DROP TABLE IF EXISTS `centrifuge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrifuge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `model_id` bigint(20) DEFAULT NULL,
  `max_speed` double DEFAULT NULL,
  `flow_capacity` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_centrifuge_index` (`type_id`),
  KEY `model_centrifuge_index` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrifuge`
--

LOCK TABLES `centrifuge` WRITE;
/*!40000 ALTER TABLE `centrifuge` DISABLE KEYS */;
/*!40000 ALTER TABLE `centrifuge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centrifuge_and_rig_relation`
--

DROP TABLE IF EXISTS `centrifuge_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrifuge_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `centrifuge_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_centrifuge_and_rig_relation_index` (`rig_id`),
  KEY `centrifuge_centrifuge_and_rig_relation_index` (`centrifuge_id`),
  KEY `pos_centrifuge_centrifuge_and_rig_relation_index` (`position_in_list`,`centrifuge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrifuge_and_rig_relation`
--

LOCK TABLES `centrifuge_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `centrifuge_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `centrifuge_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centrifuge_model`
--

DROP TABLE IF EXISTS `centrifuge_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrifuge_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrifuge_model`
--

LOCK TABLES `centrifuge_model` WRITE;
/*!40000 ALTER TABLE `centrifuge_model` DISABLE KEYS */;
INSERT INTO `centrifuge_model` VALUES (1,'AKR-363','2020-11-18 12:52:54','\0');
/*!40000 ALTER TABLE `centrifuge_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centrifuge_operation`
--

DROP TABLE IF EXISTS `centrifuge_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrifuge_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `centrifuge_id` bigint(20) NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `equipment_condition_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `density_feed` double DEFAULT NULL,
  `density_overflow` double DEFAULT NULL,
  `density_underflow` double DEFAULT NULL,
  `operation_time` time DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_centrifuge_centrifuge_operation_index` (`event_id`,`daily_report_id`,`centrifuge_id`),
  KEY `operation_time_centrifuge_operation_index` (`operation_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrifuge_operation`
--

LOCK TABLES `centrifuge_operation` WRITE;
/*!40000 ALTER TABLE `centrifuge_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `centrifuge_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centrifuge_type`
--

DROP TABLE IF EXISTS `centrifuge_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrifuge_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrifuge_type`
--

LOCK TABLES `centrifuge_type` WRITE;
/*!40000 ALTER TABLE `centrifuge_type` DISABLE KEYS */;
INSERT INTO `centrifuge_type` VALUES (1,'Центрифуга','2020-11-18 12:53:39','\0');
/*!40000 ALTER TABLE `centrifuge_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ts` datetime NOT NULL,
  `entity_name` varchar(1024) NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `type_of_changes_id` int(11) NOT NULL,
  `license_key` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) DEFAULT NULL,
  `source_name` varchar(125) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `changelog_well_ts` (`ts`,`well_id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` VALUES (1,'2020-08-19 22:14:56','security_filter',2,1,NULL,1,NULL,'ADMINS_CONSOLE'),(2,'2020-08-19 22:14:56','security_group',1,2,NULL,1,NULL,'ADMINS_CONSOLE'),(3,'2020-08-19 22:14:58','security_filter',3,1,NULL,1,NULL,'ADMINS_CONSOLE'),(4,'2020-08-19 22:14:58','security_group',1,2,NULL,1,NULL,'ADMINS_CONSOLE'),(5,'2020-08-19 22:16:35','role',2,1,NULL,1,NULL,'ADMINS_CONSOLE'),(6,'2020-08-19 22:16:36','rule',23,1,NULL,1,NULL,'ADMINS_CONSOLE'),(7,'2020-08-19 22:16:36','rule',24,1,NULL,1,NULL,'ADMINS_CONSOLE'),(8,'2020-08-19 22:16:36','rule',25,1,NULL,1,NULL,'ADMINS_CONSOLE'),(9,'2020-08-19 22:16:36','rule',26,1,NULL,1,NULL,'ADMINS_CONSOLE'),(10,'2020-08-19 22:16:36','rule',27,1,NULL,1,NULL,'ADMINS_CONSOLE'),(11,'2020-08-19 22:16:36','rule',28,1,NULL,1,NULL,'ADMINS_CONSOLE'),(12,'2020-08-19 22:16:36','rule',29,1,NULL,1,NULL,'ADMINS_CONSOLE'),(13,'2020-08-19 22:16:36','rule',30,1,NULL,1,NULL,'ADMINS_CONSOLE'),(14,'2020-08-19 22:16:36','rule',31,1,NULL,1,NULL,'ADMINS_CONSOLE'),(15,'2020-08-19 22:16:36','rule',32,1,NULL,1,NULL,'ADMINS_CONSOLE'),(16,'2020-08-19 22:16:36','rule',33,1,NULL,1,NULL,'ADMINS_CONSOLE'),(17,'2020-08-19 22:16:36','rule',34,1,NULL,1,NULL,'ADMINS_CONSOLE'),(18,'2020-08-19 22:16:36','rule',35,1,NULL,1,NULL,'ADMINS_CONSOLE'),(19,'2020-08-19 22:16:36','rule',36,1,NULL,1,NULL,'ADMINS_CONSOLE'),(20,'2020-08-19 22:16:36','rule',37,1,NULL,1,NULL,'ADMINS_CONSOLE'),(21,'2020-08-19 22:16:36','rule',38,1,NULL,1,NULL,'ADMINS_CONSOLE'),(22,'2020-08-19 22:16:36','rule',39,1,NULL,1,NULL,'ADMINS_CONSOLE'),(23,'2020-08-19 22:16:36','rule',40,1,NULL,1,NULL,'ADMINS_CONSOLE'),(24,'2020-08-19 22:16:36','rule',41,1,NULL,1,NULL,'ADMINS_CONSOLE'),(25,'2020-08-19 22:16:36','rule',42,1,NULL,1,NULL,'ADMINS_CONSOLE'),(26,'2020-08-19 22:16:36','rule',43,1,NULL,1,NULL,'ADMINS_CONSOLE'),(27,'2020-08-19 22:16:36','rule',44,1,NULL,1,NULL,'ADMINS_CONSOLE'),(28,'2020-08-19 22:16:36','rule',45,1,NULL,1,NULL,'ADMINS_CONSOLE'),(29,'2020-08-19 22:16:36','rule',46,1,NULL,1,NULL,'ADMINS_CONSOLE'),(30,'2020-08-19 22:16:36','rule',47,1,NULL,1,NULL,'ADMINS_CONSOLE'),(31,'2020-08-19 22:16:36','rule',48,1,NULL,1,NULL,'ADMINS_CONSOLE'),(32,'2020-08-19 22:16:36','rule',49,1,NULL,1,NULL,'ADMINS_CONSOLE'),(33,'2020-08-19 22:16:36','rule',50,1,NULL,1,NULL,'ADMINS_CONSOLE'),(34,'2020-08-19 22:16:36','rule',51,1,NULL,1,NULL,'ADMINS_CONSOLE'),(35,'2020-08-19 22:16:36','rule',52,1,NULL,1,NULL,'ADMINS_CONSOLE'),(36,'2020-08-19 22:16:36','rule',53,1,NULL,1,NULL,'ADMINS_CONSOLE'),(37,'2020-08-19 22:16:36','rule',54,1,NULL,1,NULL,'ADMINS_CONSOLE'),(38,'2020-08-19 22:16:36','rule',55,1,NULL,1,NULL,'ADMINS_CONSOLE'),(39,'2020-08-19 22:16:36','rule',56,1,NULL,1,NULL,'ADMINS_CONSOLE'),(40,'2020-08-19 22:16:36','rule',57,1,NULL,1,NULL,'ADMINS_CONSOLE'),(41,'2020-08-19 22:16:36','rule',58,1,NULL,1,NULL,'ADMINS_CONSOLE'),(42,'2020-08-19 22:16:36','rule',59,1,NULL,1,NULL,'ADMINS_CONSOLE'),(43,'2020-08-19 22:16:36','rule',60,1,NULL,1,NULL,'ADMINS_CONSOLE'),(44,'2020-08-19 22:16:36','rule',61,1,NULL,1,NULL,'ADMINS_CONSOLE'),(45,'2020-08-19 22:16:36','rule',62,1,NULL,1,NULL,'ADMINS_CONSOLE'),(46,'2020-08-19 22:16:36','rule',63,1,NULL,1,NULL,'ADMINS_CONSOLE'),(47,'2020-08-19 22:16:36','rule',64,1,NULL,1,NULL,'ADMINS_CONSOLE'),(48,'2020-08-19 22:16:36','rule',65,1,NULL,1,NULL,'ADMINS_CONSOLE'),(49,'2020-08-19 22:16:36','rule',66,1,NULL,1,NULL,'ADMINS_CONSOLE'),(50,'2020-08-19 22:16:36','rule',67,1,NULL,1,NULL,'ADMINS_CONSOLE'),(51,'2020-08-19 22:16:36','rule',68,1,NULL,1,NULL,'ADMINS_CONSOLE'),(52,'2020-08-19 22:16:36','rule',69,1,NULL,1,NULL,'ADMINS_CONSOLE'),(53,'2020-08-19 22:16:36','rule',70,1,NULL,1,NULL,'ADMINS_CONSOLE'),(54,'2020-08-19 22:16:36','rule',71,1,NULL,1,NULL,'ADMINS_CONSOLE'),(55,'2020-08-19 22:16:36','rule',72,1,NULL,1,NULL,'ADMINS_CONSOLE'),(56,'2020-08-19 22:16:49','security_group',1,2,NULL,1,NULL,'ADMINS_CONSOLE'),(57,'2020-09-06 18:05:34','user',1,2,NULL,1,NULL,'ADMINS_CONSOLE'),(58,'2020-11-18 12:11:41','rule',23,3,NULL,1,NULL,'ADMINS_CONSOLE'),(59,'2020-11-18 12:11:44','rule',24,3,NULL,1,NULL,'ADMINS_CONSOLE'),(60,'2020-11-18 12:11:44','rule',25,3,NULL,1,NULL,'ADMINS_CONSOLE'),(61,'2020-11-18 12:11:44','rule',26,3,NULL,1,NULL,'ADMINS_CONSOLE'),(62,'2020-11-18 12:11:44','rule',27,3,NULL,1,NULL,'ADMINS_CONSOLE'),(63,'2020-11-18 12:11:44','rule',28,3,NULL,1,NULL,'ADMINS_CONSOLE'),(64,'2020-11-18 12:11:44','rule',29,3,NULL,1,NULL,'ADMINS_CONSOLE'),(65,'2020-11-18 12:11:44','rule',30,3,NULL,1,NULL,'ADMINS_CONSOLE'),(66,'2020-11-18 12:11:44','rule',31,3,NULL,1,NULL,'ADMINS_CONSOLE'),(67,'2020-11-18 12:11:44','rule',32,3,NULL,1,NULL,'ADMINS_CONSOLE'),(68,'2020-11-18 12:11:44','rule',33,3,NULL,1,NULL,'ADMINS_CONSOLE'),(69,'2020-11-18 12:11:44','rule',34,3,NULL,1,NULL,'ADMINS_CONSOLE'),(70,'2020-11-18 12:11:44','rule',35,3,NULL,1,NULL,'ADMINS_CONSOLE'),(71,'2020-11-18 12:11:44','rule',36,3,NULL,1,NULL,'ADMINS_CONSOLE'),(72,'2020-11-18 12:11:45','rule',37,3,NULL,1,NULL,'ADMINS_CONSOLE'),(73,'2020-11-18 12:11:45','rule',38,3,NULL,1,NULL,'ADMINS_CONSOLE'),(74,'2020-11-18 12:11:45','rule',39,3,NULL,1,NULL,'ADMINS_CONSOLE'),(75,'2020-11-18 12:11:45','rule',40,3,NULL,1,NULL,'ADMINS_CONSOLE'),(76,'2020-11-18 12:11:45','rule',41,3,NULL,1,NULL,'ADMINS_CONSOLE'),(77,'2020-11-18 12:11:45','rule',42,3,NULL,1,NULL,'ADMINS_CONSOLE'),(78,'2020-11-18 12:11:45','rule',43,3,NULL,1,NULL,'ADMINS_CONSOLE'),(79,'2020-11-18 12:11:45','rule',44,3,NULL,1,NULL,'ADMINS_CONSOLE'),(80,'2020-11-18 12:11:45','rule',45,3,NULL,1,NULL,'ADMINS_CONSOLE'),(81,'2020-11-18 12:11:45','rule',46,3,NULL,1,NULL,'ADMINS_CONSOLE'),(82,'2020-11-18 12:11:45','rule',47,3,NULL,1,NULL,'ADMINS_CONSOLE'),(83,'2020-11-18 12:11:45','rule',48,3,NULL,1,NULL,'ADMINS_CONSOLE'),(84,'2020-11-18 12:11:45','rule',49,3,NULL,1,NULL,'ADMINS_CONSOLE'),(85,'2020-11-18 12:11:45','rule',50,3,NULL,1,NULL,'ADMINS_CONSOLE'),(86,'2020-11-18 12:11:45','rule',51,3,NULL,1,NULL,'ADMINS_CONSOLE'),(87,'2020-11-18 12:11:45','rule',52,3,NULL,1,NULL,'ADMINS_CONSOLE'),(88,'2020-11-18 12:11:46','rule',53,3,NULL,1,NULL,'ADMINS_CONSOLE'),(89,'2020-11-18 12:11:47','rule',54,3,NULL,1,NULL,'ADMINS_CONSOLE'),(90,'2020-11-18 12:11:48','rule',55,3,NULL,1,NULL,'ADMINS_CONSOLE'),(91,'2020-11-18 12:11:49','rule',56,3,NULL,1,NULL,'ADMINS_CONSOLE'),(92,'2020-11-18 12:11:49','rule',57,3,NULL,1,NULL,'ADMINS_CONSOLE'),(93,'2020-11-18 12:11:50','rule',58,3,NULL,1,NULL,'ADMINS_CONSOLE'),(94,'2020-11-18 12:11:50','rule',59,3,NULL,1,NULL,'ADMINS_CONSOLE'),(95,'2020-11-18 12:11:50','rule',60,3,NULL,1,NULL,'ADMINS_CONSOLE'),(96,'2020-11-18 12:11:50','rule',61,3,NULL,1,NULL,'ADMINS_CONSOLE'),(97,'2020-11-18 12:11:50','rule',62,3,NULL,1,NULL,'ADMINS_CONSOLE'),(98,'2020-11-18 12:11:50','rule',63,3,NULL,1,NULL,'ADMINS_CONSOLE'),(99,'2020-11-18 12:11:50','rule',64,3,NULL,1,NULL,'ADMINS_CONSOLE'),(100,'2020-11-18 12:11:50','rule',65,3,NULL,1,NULL,'ADMINS_CONSOLE'),(101,'2020-11-18 12:11:50','rule',66,3,NULL,1,NULL,'ADMINS_CONSOLE'),(102,'2020-11-18 12:11:50','rule',67,3,NULL,1,NULL,'ADMINS_CONSOLE'),(103,'2020-11-18 12:11:51','rule',68,3,NULL,1,NULL,'ADMINS_CONSOLE'),(104,'2020-11-18 12:11:51','rule',69,3,NULL,1,NULL,'ADMINS_CONSOLE'),(105,'2020-11-18 12:11:51','rule',70,3,NULL,1,NULL,'ADMINS_CONSOLE'),(106,'2020-11-18 12:11:51','rule',71,3,NULL,1,NULL,'ADMINS_CONSOLE'),(107,'2020-11-18 12:11:51','rule',72,3,NULL,1,NULL,'ADMINS_CONSOLE'),(108,'2020-11-18 12:11:52','role',2,2,NULL,1,NULL,'ADMINS_CONSOLE'),(109,'2020-11-18 12:11:52','rule',73,1,NULL,1,NULL,'ADMINS_CONSOLE'),(110,'2020-11-18 12:11:52','rule',74,1,NULL,1,NULL,'ADMINS_CONSOLE'),(111,'2020-11-18 12:11:52','rule',75,1,NULL,1,NULL,'ADMINS_CONSOLE'),(112,'2020-11-18 12:11:52','rule',76,1,NULL,1,NULL,'ADMINS_CONSOLE'),(113,'2020-11-18 12:11:52','rule',77,1,NULL,1,NULL,'ADMINS_CONSOLE'),(114,'2020-11-18 12:11:52','rule',78,1,NULL,1,NULL,'ADMINS_CONSOLE'),(115,'2020-11-18 12:11:52','rule',79,1,NULL,1,NULL,'ADMINS_CONSOLE'),(116,'2020-11-18 12:11:52','rule',80,1,NULL,1,NULL,'ADMINS_CONSOLE'),(117,'2020-11-18 12:11:52','rule',81,1,NULL,1,NULL,'ADMINS_CONSOLE'),(118,'2020-11-18 12:11:52','rule',82,1,NULL,1,NULL,'ADMINS_CONSOLE'),(119,'2020-11-18 12:11:52','rule',83,1,NULL,1,NULL,'ADMINS_CONSOLE'),(120,'2020-11-18 12:11:52','rule',84,1,NULL,1,NULL,'ADMINS_CONSOLE'),(121,'2020-11-18 12:11:52','rule',85,1,NULL,1,NULL,'ADMINS_CONSOLE'),(122,'2020-11-18 12:11:52','rule',86,1,NULL,1,NULL,'ADMINS_CONSOLE'),(123,'2020-11-18 12:11:52','rule',87,1,NULL,1,NULL,'ADMINS_CONSOLE'),(124,'2020-11-18 12:11:52','rule',88,1,NULL,1,NULL,'ADMINS_CONSOLE'),(125,'2020-11-18 12:11:52','rule',89,1,NULL,1,NULL,'ADMINS_CONSOLE'),(126,'2020-11-18 12:11:52','rule',90,1,NULL,1,NULL,'ADMINS_CONSOLE'),(127,'2020-11-18 12:11:52','rule',91,1,NULL,1,NULL,'ADMINS_CONSOLE'),(128,'2020-11-18 12:11:52','rule',92,1,NULL,1,NULL,'ADMINS_CONSOLE'),(129,'2020-11-18 12:11:52','rule',93,1,NULL,1,NULL,'ADMINS_CONSOLE'),(130,'2020-11-18 12:11:52','rule',94,1,NULL,1,NULL,'ADMINS_CONSOLE'),(131,'2020-11-18 12:11:52','rule',95,1,NULL,1,NULL,'ADMINS_CONSOLE'),(132,'2020-11-18 12:11:52','rule',96,1,NULL,1,NULL,'ADMINS_CONSOLE'),(133,'2020-11-18 12:11:52','rule',97,1,NULL,1,NULL,'ADMINS_CONSOLE'),(134,'2020-11-18 12:11:52','rule',98,1,NULL,1,NULL,'ADMINS_CONSOLE'),(135,'2020-11-18 12:11:52','rule',99,1,NULL,1,NULL,'ADMINS_CONSOLE'),(136,'2020-11-18 12:11:52','rule',100,1,NULL,1,NULL,'ADMINS_CONSOLE'),(137,'2020-11-18 12:11:52','rule',101,1,NULL,1,NULL,'ADMINS_CONSOLE'),(138,'2020-11-18 12:11:52','rule',102,1,NULL,1,NULL,'ADMINS_CONSOLE'),(139,'2020-11-18 12:11:52','rule',103,1,NULL,1,NULL,'ADMINS_CONSOLE'),(140,'2020-11-18 12:11:52','rule',104,1,NULL,1,NULL,'ADMINS_CONSOLE'),(141,'2020-11-18 12:11:52','rule',105,1,NULL,1,NULL,'ADMINS_CONSOLE'),(142,'2020-11-18 12:11:52','rule',106,1,NULL,1,NULL,'ADMINS_CONSOLE'),(143,'2020-11-18 12:11:52','rule',107,1,NULL,1,NULL,'ADMINS_CONSOLE'),(144,'2020-11-18 12:11:52','rule',108,1,NULL,1,NULL,'ADMINS_CONSOLE'),(145,'2020-11-18 12:11:52','rule',109,1,NULL,1,NULL,'ADMINS_CONSOLE'),(146,'2020-11-18 12:11:52','rule',110,1,NULL,1,NULL,'ADMINS_CONSOLE'),(147,'2020-11-18 12:11:52','rule',111,1,NULL,1,NULL,'ADMINS_CONSOLE'),(148,'2020-11-18 12:11:52','rule',112,1,NULL,1,NULL,'ADMINS_CONSOLE'),(149,'2020-11-18 12:11:52','rule',113,1,NULL,1,NULL,'ADMINS_CONSOLE'),(150,'2020-11-18 12:11:52','rule',114,1,NULL,1,NULL,'ADMINS_CONSOLE'),(151,'2020-11-18 12:11:52','rule',115,1,NULL,1,NULL,'ADMINS_CONSOLE'),(152,'2020-11-18 12:11:52','rule',116,1,NULL,1,NULL,'ADMINS_CONSOLE'),(153,'2020-11-18 12:11:52','rule',117,1,NULL,1,NULL,'ADMINS_CONSOLE'),(154,'2020-11-18 12:11:52','rule',118,1,NULL,1,NULL,'ADMINS_CONSOLE'),(155,'2020-11-18 12:11:52','rule',119,1,NULL,1,NULL,'ADMINS_CONSOLE'),(156,'2020-11-18 12:11:52','rule',120,1,NULL,1,NULL,'ADMINS_CONSOLE'),(157,'2020-11-18 12:11:52','rule',121,1,NULL,1,NULL,'ADMINS_CONSOLE'),(158,'2020-11-18 12:11:52','rule',122,1,NULL,1,NULL,'ADMINS_CONSOLE'),(159,'2020-11-18 12:11:52','rule',123,1,NULL,1,NULL,'ADMINS_CONSOLE'),(160,'2020-11-18 12:11:52','rule',124,1,NULL,1,NULL,'ADMINS_CONSOLE'),(161,'2020-11-18 12:11:52','rule',125,1,NULL,1,NULL,'ADMINS_CONSOLE'),(162,'2020-11-18 12:11:52','rule',126,1,NULL,1,NULL,'ADMINS_CONSOLE'),(163,'2020-11-18 12:11:52','rule',127,1,NULL,1,NULL,'ADMINS_CONSOLE'),(164,'2020-11-18 12:11:52','rule',128,1,NULL,1,NULL,'ADMINS_CONSOLE'),(165,'2020-11-18 12:11:52','rule',129,1,NULL,1,NULL,'ADMINS_CONSOLE'),(166,'2020-11-18 12:11:52','rule',130,1,NULL,1,NULL,'ADMINS_CONSOLE'),(167,'2020-11-18 12:11:52','rule',131,1,NULL,1,NULL,'ADMINS_CONSOLE'),(168,'2020-11-18 12:11:52','rule',132,1,NULL,1,NULL,'ADMINS_CONSOLE'),(169,'2020-11-18 12:12:04','rule',73,3,NULL,1,NULL,'ADMINS_CONSOLE'),(170,'2020-11-18 12:12:05','rule',74,3,NULL,1,NULL,'ADMINS_CONSOLE'),(171,'2020-11-18 12:12:05','rule',75,3,NULL,1,NULL,'ADMINS_CONSOLE'),(172,'2020-11-18 12:12:05','rule',76,3,NULL,1,NULL,'ADMINS_CONSOLE'),(173,'2020-11-18 12:12:05','rule',77,3,NULL,1,NULL,'ADMINS_CONSOLE'),(174,'2020-11-18 12:12:05','rule',78,3,NULL,1,NULL,'ADMINS_CONSOLE'),(175,'2020-11-18 12:12:05','rule',79,3,NULL,1,NULL,'ADMINS_CONSOLE'),(176,'2020-11-18 12:12:05','rule',80,3,NULL,1,NULL,'ADMINS_CONSOLE'),(177,'2020-11-18 12:12:05','rule',81,3,NULL,1,NULL,'ADMINS_CONSOLE'),(178,'2020-11-18 12:12:05','rule',82,3,NULL,1,NULL,'ADMINS_CONSOLE'),(179,'2020-11-18 12:12:05','rule',83,3,NULL,1,NULL,'ADMINS_CONSOLE'),(180,'2020-11-18 12:12:05','rule',84,3,NULL,1,NULL,'ADMINS_CONSOLE'),(181,'2020-11-18 12:12:05','rule',85,3,NULL,1,NULL,'ADMINS_CONSOLE'),(182,'2020-11-18 12:12:05','rule',86,3,NULL,1,NULL,'ADMINS_CONSOLE'),(183,'2020-11-18 12:12:05','rule',87,3,NULL,1,NULL,'ADMINS_CONSOLE'),(184,'2020-11-18 12:12:05','rule',88,3,NULL,1,NULL,'ADMINS_CONSOLE'),(185,'2020-11-18 12:12:05','rule',89,3,NULL,1,NULL,'ADMINS_CONSOLE'),(186,'2020-11-18 12:12:05','rule',90,3,NULL,1,NULL,'ADMINS_CONSOLE'),(187,'2020-11-18 12:12:05','rule',91,3,NULL,1,NULL,'ADMINS_CONSOLE'),(188,'2020-11-18 12:12:05','rule',92,3,NULL,1,NULL,'ADMINS_CONSOLE'),(189,'2020-11-18 12:12:05','rule',93,3,NULL,1,NULL,'ADMINS_CONSOLE'),(190,'2020-11-18 12:12:05','rule',94,3,NULL,1,NULL,'ADMINS_CONSOLE'),(191,'2020-11-18 12:12:05','rule',95,3,NULL,1,NULL,'ADMINS_CONSOLE'),(192,'2020-11-18 12:12:06','rule',96,3,NULL,1,NULL,'ADMINS_CONSOLE'),(193,'2020-11-18 12:12:06','rule',97,3,NULL,1,NULL,'ADMINS_CONSOLE'),(194,'2020-11-18 12:12:06','rule',98,3,NULL,1,NULL,'ADMINS_CONSOLE'),(195,'2020-11-18 12:12:06','rule',99,3,NULL,1,NULL,'ADMINS_CONSOLE'),(196,'2020-11-18 12:12:06','rule',100,3,NULL,1,NULL,'ADMINS_CONSOLE'),(197,'2020-11-18 12:12:06','rule',101,3,NULL,1,NULL,'ADMINS_CONSOLE'),(198,'2020-11-18 12:12:06','rule',102,3,NULL,1,NULL,'ADMINS_CONSOLE'),(199,'2020-11-18 12:12:06','rule',103,3,NULL,1,NULL,'ADMINS_CONSOLE'),(200,'2020-11-18 12:12:06','rule',104,3,NULL,1,NULL,'ADMINS_CONSOLE'),(201,'2020-11-18 12:12:06','rule',105,3,NULL,1,NULL,'ADMINS_CONSOLE'),(202,'2020-11-18 12:12:06','rule',106,3,NULL,1,NULL,'ADMINS_CONSOLE'),(203,'2020-11-18 12:12:06','rule',107,3,NULL,1,NULL,'ADMINS_CONSOLE'),(204,'2020-11-18 12:12:06','rule',108,3,NULL,1,NULL,'ADMINS_CONSOLE'),(205,'2020-11-18 12:12:06','rule',109,3,NULL,1,NULL,'ADMINS_CONSOLE'),(206,'2020-11-18 12:12:06','rule',110,3,NULL,1,NULL,'ADMINS_CONSOLE'),(207,'2020-11-18 12:12:06','rule',111,3,NULL,1,NULL,'ADMINS_CONSOLE'),(208,'2020-11-18 12:12:06','rule',112,3,NULL,1,NULL,'ADMINS_CONSOLE'),(209,'2020-11-18 12:12:06','rule',113,3,NULL,1,NULL,'ADMINS_CONSOLE'),(210,'2020-11-18 12:12:06','rule',114,3,NULL,1,NULL,'ADMINS_CONSOLE'),(211,'2020-11-18 12:12:06','rule',115,3,NULL,1,NULL,'ADMINS_CONSOLE'),(212,'2020-11-18 12:12:06','rule',116,3,NULL,1,NULL,'ADMINS_CONSOLE'),(213,'2020-11-18 12:12:06','rule',117,3,NULL,1,NULL,'ADMINS_CONSOLE'),(214,'2020-11-18 12:12:06','rule',118,3,NULL,1,NULL,'ADMINS_CONSOLE'),(215,'2020-11-18 12:12:06','rule',119,3,NULL,1,NULL,'ADMINS_CONSOLE'),(216,'2020-11-18 12:12:06','rule',120,3,NULL,1,NULL,'ADMINS_CONSOLE'),(217,'2020-11-18 12:12:06','rule',121,3,NULL,1,NULL,'ADMINS_CONSOLE'),(218,'2020-11-18 12:12:06','rule',122,3,NULL,1,NULL,'ADMINS_CONSOLE'),(219,'2020-11-18 12:12:06','rule',123,3,NULL,1,NULL,'ADMINS_CONSOLE'),(220,'2020-11-18 12:12:06','rule',124,3,NULL,1,NULL,'ADMINS_CONSOLE'),(221,'2020-11-18 12:12:06','rule',125,3,NULL,1,NULL,'ADMINS_CONSOLE'),(222,'2020-11-18 12:12:06','rule',126,3,NULL,1,NULL,'ADMINS_CONSOLE'),(223,'2020-11-18 12:12:06','rule',127,3,NULL,1,NULL,'ADMINS_CONSOLE'),(224,'2020-11-18 12:12:06','rule',128,3,NULL,1,NULL,'ADMINS_CONSOLE'),(225,'2020-11-18 12:12:06','rule',129,3,NULL,1,NULL,'ADMINS_CONSOLE'),(226,'2020-11-18 12:12:06','rule',130,3,NULL,1,NULL,'ADMINS_CONSOLE'),(227,'2020-11-18 12:12:06','rule',131,3,NULL,1,NULL,'ADMINS_CONSOLE'),(228,'2020-11-18 12:12:06','rule',132,3,NULL,1,NULL,'ADMINS_CONSOLE'),(229,'2020-11-18 12:12:06','role',2,2,NULL,1,NULL,'ADMINS_CONSOLE'),(230,'2020-11-18 12:12:06','rule',133,1,NULL,1,NULL,'ADMINS_CONSOLE'),(231,'2020-11-18 12:12:06','rule',134,1,NULL,1,NULL,'ADMINS_CONSOLE'),(232,'2020-11-18 12:12:06','rule',135,1,NULL,1,NULL,'ADMINS_CONSOLE'),(233,'2020-11-18 12:12:06','rule',136,1,NULL,1,NULL,'ADMINS_CONSOLE'),(234,'2020-11-18 12:12:06','rule',137,1,NULL,1,NULL,'ADMINS_CONSOLE'),(235,'2020-11-18 12:12:06','rule',138,1,NULL,1,NULL,'ADMINS_CONSOLE'),(236,'2020-11-18 12:12:06','rule',139,1,NULL,1,NULL,'ADMINS_CONSOLE'),(237,'2020-11-18 12:12:06','rule',140,1,NULL,1,NULL,'ADMINS_CONSOLE'),(238,'2020-11-18 12:12:06','rule',141,1,NULL,1,NULL,'ADMINS_CONSOLE'),(239,'2020-11-18 12:12:06','rule',142,1,NULL,1,NULL,'ADMINS_CONSOLE'),(240,'2020-11-18 12:12:06','rule',143,1,NULL,1,NULL,'ADMINS_CONSOLE'),(241,'2020-11-18 12:12:06','rule',144,1,NULL,1,NULL,'ADMINS_CONSOLE'),(242,'2020-11-18 12:12:06','rule',145,1,NULL,1,NULL,'ADMINS_CONSOLE'),(243,'2020-11-18 12:12:06','rule',146,1,NULL,1,NULL,'ADMINS_CONSOLE'),(244,'2020-11-18 12:12:06','rule',147,1,NULL,1,NULL,'ADMINS_CONSOLE'),(245,'2020-11-18 12:12:06','rule',148,1,NULL,1,NULL,'ADMINS_CONSOLE'),(246,'2020-11-18 12:12:06','rule',149,1,NULL,1,NULL,'ADMINS_CONSOLE'),(247,'2020-11-18 12:12:06','rule',150,1,NULL,1,NULL,'ADMINS_CONSOLE'),(248,'2020-11-18 12:12:06','rule',151,1,NULL,1,NULL,'ADMINS_CONSOLE'),(249,'2020-11-18 12:12:06','rule',152,1,NULL,1,NULL,'ADMINS_CONSOLE'),(250,'2020-11-18 12:12:06','rule',153,1,NULL,1,NULL,'ADMINS_CONSOLE'),(251,'2020-11-18 12:12:06','rule',154,1,NULL,1,NULL,'ADMINS_CONSOLE'),(252,'2020-11-18 12:12:06','rule',155,1,NULL,1,NULL,'ADMINS_CONSOLE'),(253,'2020-11-18 12:12:06','rule',156,1,NULL,1,NULL,'ADMINS_CONSOLE'),(254,'2020-11-18 12:12:06','rule',157,1,NULL,1,NULL,'ADMINS_CONSOLE'),(255,'2020-11-18 12:12:06','rule',158,1,NULL,1,NULL,'ADMINS_CONSOLE'),(256,'2020-11-18 12:12:06','rule',159,1,NULL,1,NULL,'ADMINS_CONSOLE'),(257,'2020-11-18 12:12:06','rule',160,1,NULL,1,NULL,'ADMINS_CONSOLE'),(258,'2020-11-18 12:12:06','rule',161,1,NULL,1,NULL,'ADMINS_CONSOLE'),(259,'2020-11-18 12:12:06','rule',162,1,NULL,1,NULL,'ADMINS_CONSOLE'),(260,'2020-11-18 12:12:06','rule',163,1,NULL,1,NULL,'ADMINS_CONSOLE'),(261,'2020-11-18 12:12:06','rule',164,1,NULL,1,NULL,'ADMINS_CONSOLE'),(262,'2020-11-18 12:12:06','rule',165,1,NULL,1,NULL,'ADMINS_CONSOLE'),(263,'2020-11-18 12:12:06','rule',166,1,NULL,1,NULL,'ADMINS_CONSOLE'),(264,'2020-11-18 12:12:06','rule',167,1,NULL,1,NULL,'ADMINS_CONSOLE'),(265,'2020-11-18 12:12:06','rule',168,1,NULL,1,NULL,'ADMINS_CONSOLE'),(266,'2020-11-18 12:12:06','rule',169,1,NULL,1,NULL,'ADMINS_CONSOLE'),(267,'2020-11-18 12:12:06','rule',170,1,NULL,1,NULL,'ADMINS_CONSOLE'),(268,'2020-11-18 12:12:06','rule',171,1,NULL,1,NULL,'ADMINS_CONSOLE'),(269,'2020-11-18 12:12:06','rule',172,1,NULL,1,NULL,'ADMINS_CONSOLE'),(270,'2020-11-18 12:12:06','rule',173,1,NULL,1,NULL,'ADMINS_CONSOLE'),(271,'2020-11-18 12:12:06','rule',174,1,NULL,1,NULL,'ADMINS_CONSOLE'),(272,'2020-11-18 12:12:06','rule',175,1,NULL,1,NULL,'ADMINS_CONSOLE'),(273,'2020-11-18 12:12:06','rule',176,1,NULL,1,NULL,'ADMINS_CONSOLE'),(274,'2020-11-18 12:12:06','rule',177,1,NULL,1,NULL,'ADMINS_CONSOLE'),(275,'2020-11-18 12:12:06','rule',178,1,NULL,1,NULL,'ADMINS_CONSOLE'),(276,'2020-11-18 12:12:06','rule',179,1,NULL,1,NULL,'ADMINS_CONSOLE'),(277,'2020-11-18 12:12:06','rule',180,1,NULL,1,NULL,'ADMINS_CONSOLE'),(278,'2020-11-18 12:12:06','rule',181,1,NULL,1,NULL,'ADMINS_CONSOLE'),(279,'2020-11-18 12:12:06','rule',182,1,NULL,1,NULL,'ADMINS_CONSOLE'),(280,'2020-11-18 12:12:06','rule',183,1,NULL,1,NULL,'ADMINS_CONSOLE'),(281,'2020-11-18 12:12:06','rule',184,1,NULL,1,NULL,'ADMINS_CONSOLE'),(282,'2020-11-18 12:12:07','rule',185,1,NULL,1,NULL,'ADMINS_CONSOLE'),(283,'2020-11-18 12:12:07','rule',186,1,NULL,1,NULL,'ADMINS_CONSOLE'),(284,'2020-11-18 12:12:07','rule',187,1,NULL,1,NULL,'ADMINS_CONSOLE'),(285,'2020-11-18 12:12:07','rule',188,1,NULL,1,NULL,'ADMINS_CONSOLE'),(286,'2020-11-18 12:12:07','rule',189,1,NULL,1,NULL,'ADMINS_CONSOLE'),(287,'2020-11-18 12:12:07','rule',190,1,NULL,1,NULL,'ADMINS_CONSOLE'),(288,'2020-11-18 12:12:07','rule',191,1,NULL,1,NULL,'ADMINS_CONSOLE'),(289,'2020-11-18 12:12:07','rule',192,1,NULL,1,NULL,'ADMINS_CONSOLE'),(290,'2020-11-18 12:49:47','well_place',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(291,'2020-11-18 12:50:00','well_license_area',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(292,'2020-11-18 12:50:28','well_license_area',1,2,NULL,1,NULL,'ADMINS_CONSOLE'),(293,'2020-11-18 12:50:35','field',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(294,'2020-11-18 12:50:40','well_project',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(295,'2020-11-18 12:50:46','well_purpose',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(296,'2020-11-18 12:50:51','wellbore_purpose',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(297,'2020-11-18 12:50:55','subsoil_user',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(298,'2020-11-18 12:51:14','well_category',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(299,'2020-11-18 12:51:21','well_fluid',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(300,'2020-11-18 12:51:26','formation',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(301,'2020-11-18 12:51:32','rig_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(302,'2020-11-18 12:51:39','rig_owner',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(303,'2020-11-18 12:51:49','drilling_contractor_company',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(304,'2020-11-18 12:52:25','pump_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(305,'2020-11-18 12:52:31','shaker_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(306,'2020-11-18 12:52:35','hydroclone_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(307,'2020-11-18 12:52:41','degasser_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(308,'2020-11-18 12:52:49','bop_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(309,'2020-11-18 12:52:54','centrifuge_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(310,'2020-11-18 12:53:01','bop_component_model',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(311,'2020-11-18 12:53:12','aggregate_manufacturer',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(312,'2020-11-18 12:53:21','shaker_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(313,'2020-11-18 12:53:26','hydroclone_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(314,'2020-11-18 12:53:30','degasser_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(315,'2020-11-18 12:53:35','pit_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(316,'2020-11-18 12:53:39','centrifuge_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE'),(317,'2020-11-18 12:53:48','bop_component_type',1,1,NULL,1,NULL,'ADMINS_CONSOLE');
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaning_system`
--

DROP TABLE IF EXISTS `cleaning_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleaning_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `remarks` mediumtext,
  `aggregate_manufacturer_id` bigint(20) DEFAULT NULL,
  `rig_owner_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaning_system`
--

LOCK TABLES `cleaning_system` WRITE;
/*!40000 ALTER TABLE `cleaning_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `cleaning_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cluster`
--

DROP TABLE IF EXISTS `cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `amount_in_cluster` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `license_area_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_cluster_index` (`name`,`field_id`,`license_area_id`,`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster`
--

LOCK TABLES `cluster` WRITE;
/*!40000 ALTER TABLE `cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contractor_id` bigint(20) DEFAULT NULL,
  `service_type_id` bigint(20) DEFAULT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `contract_phone` varchar(255) DEFAULT NULL,
  `contract_email` varchar(255) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_type_company_index` (`service_type_id`),
  KEY `position_event_company_index` (`position_in_list`,`event_id`),
  KEY `event_company_index` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completion`
--

DROP TABLE IF EXISTS `completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wellbore_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `completion_type_id` bigint(20) DEFAULT NULL,
  `formation_id` bigint(20) DEFAULT NULL,
  `completion_number` bigint(20) DEFAULT NULL,
  `completion_name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `measured_depth_top` double DEFAULT NULL,
  `measured_depth_bottom` double DEFAULT NULL,
  `remarks` mediumtext,
  `is_open_hole` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_completion_index` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completion`
--

LOCK TABLES `completion` WRITE;
/*!40000 ALTER TABLE `completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completion_type`
--

DROP TABLE IF EXISTS `completion_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completion_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_completion_type_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completion_type`
--

LOCK TABLES `completion_type` WRITE;
/*!40000 ALTER TABLE `completion_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `completion_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contractor`
--

DROP TABLE IF EXISTS `contractor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contractor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contractor`
--

LOCK TABLES `contractor` WRITE;
/*!40000 ALTER TABLE `contractor` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `symbol` varchar(25) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_ru` (`name_ru`),
  UNIQUE KEY `name_en` (`name_en`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuttings`
--

DROP TABLE IF EXISTS `cuttings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuttings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `cuttings_generated` double DEFAULT NULL,
  `cuttings_disposed` double DEFAULT NULL,
  `cuttings_discharged` double DEFAULT NULL,
  `cuttings_reinjected` double DEFAULT NULL,
  `wdm_generated` double DEFAULT NULL,
  `wdm_disposed` double DEFAULT NULL,
  `dww_generated` double DEFAULT NULL,
  `dww_disposed` double DEFAULT NULL,
  `sum_cuttings_generated` double DEFAULT NULL,
  `sum_cuttings_disposed` double DEFAULT NULL,
  `sum_cuttings_discharged` double DEFAULT NULL,
  `sum_cuttings_reinjected` double DEFAULT NULL,
  `sum_wdm_generated` double DEFAULT NULL,
  `sum_wdm_disposed` double DEFAULT NULL,
  `sum_dww_generated` double DEFAULT NULL,
  `sum_dww_disposed` double DEFAULT NULL,
  `comment` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_cuttings_index` (`event_id`,`daily_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuttings`
--

LOCK TABLES `cuttings` WRITE;
/*!40000 ALTER TABLE `cuttings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuttings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_company`
--

DROP TABLE IF EXISTS `daily_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `number_of_people` bigint(20) DEFAULT NULL,
  `total_time` double DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_daily_company_index` (`event_id`,`daily_report_id`),
  KEY `pos_report_daily_company_index` (`position_in_list`,`daily_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_company`
--

LOCK TABLES `daily_company` WRITE;
/*!40000 ALTER TABLE `daily_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_kpi_report`
--

DROP TABLE IF EXISTS `daily_kpi_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_kpi_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) DEFAULT NULL,
  `operation_type_id` bigint(20) DEFAULT NULL,
  `kpi_type_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_kpi_report`
--

LOCK TABLES `daily_kpi_report` WRITE;
/*!40000 ALTER TABLE `daily_kpi_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_kpi_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_machine`
--

DROP TABLE IF EXISTS `daily_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_machine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `remarks` mediumtext,
  `machine_id` bigint(20) DEFAULT NULL,
  `equipment_condition_id` bigint(20) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `operating_time` double DEFAULT NULL,
  `idling_time` double DEFAULT NULL,
  `standby_time` double DEFAULT NULL,
  `down_time` double DEFAULT NULL,
  `sum_operating_time` double DEFAULT NULL,
  `sum_idling_time` double DEFAULT NULL,
  `sum_standby_time` double DEFAULT NULL,
  `sum_down_time` double DEFAULT NULL,
  `work_description` varchar(255) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_daily_machine_index` (`event_id`,`daily_report_id`),
  KEY `event_pos_daily_machine_index` (`position_in_list`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_machine`
--

LOCK TABLES `daily_machine` WRITE;
/*!40000 ALTER TABLE `daily_machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_report`
--

DROP TABLE IF EXISTS `daily_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `daily_report_general_info_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `number` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_event_id_daily_report` (`number`,`event_id`),
  UNIQUE KEY `wellbore_date_event_daily_report_uniq` (`wellbore_id`,`date`,`event_id`),
  KEY `daily_report_date_index` (`date`),
  KEY `daily_report_well_id_index` (`well_id`),
  KEY `event_daily_report_general_info_id_index` (`daily_report_general_info_id`,`event_id`),
  KEY `event_id_date_daily_report_index` (`event_id`,`date`),
  KEY `wellbore_daily_report_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_report`
--

LOCK TABLES `daily_report` WRITE;
/*!40000 ALTER TABLE `daily_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_report_general_info`
--

DROP TABLE IF EXISTS `daily_report_general_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_report_general_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plugback_measured_depth` double DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `actual_days` double DEFAULT NULL,
  `measure_depth_from` double DEFAULT NULL,
  `measure_depth_to` double DEFAULT NULL,
  `metrage` double DEFAULT NULL,
  `metrage_non_productive` double DEFAULT NULL,
  `drilling_duration` bigint(20) DEFAULT NULL,
  `drilling_duration_non_productive` bigint(20) DEFAULT NULL,
  `head_behind` double DEFAULT NULL,
  `drilling_engineer_name` varchar(512) DEFAULT NULL,
  `drilling_engineer_comment` mediumtext,
  `supervisor_name_day` varchar(512) DEFAULT NULL,
  `supervisor_name_night` varchar(512) DEFAULT NULL,
  `supervisor_comment` mediumtext,
  `rig_phone` varchar(255) DEFAULT NULL,
  `work_description_whole_day` mediumtext,
  `work_description_night` mediumtext,
  `planned_work_description_whole_day` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_report_general_info_event_index` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_report_general_info`
--

LOCK TABLES `daily_report_general_info` WRITE;
/*!40000 ALTER TABLE `daily_report_general_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_report_general_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degasser`
--

DROP TABLE IF EXISTS `degasser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degasser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `model_id` bigint(20) DEFAULT NULL,
  `height` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `gas_capacity` double DEFAULT NULL,
  `flow_capacity` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_degasser_index` (`type_id`),
  KEY `model_degasser_index` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degasser`
--

LOCK TABLES `degasser` WRITE;
/*!40000 ALTER TABLE `degasser` DISABLE KEYS */;
/*!40000 ALTER TABLE `degasser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degasser_and_rig_relation`
--

DROP TABLE IF EXISTS `degasser_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degasser_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `degasser_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_degasser_and_rig_relation_index` (`rig_id`),
  KEY `degasser_degasser_and_rig_relation_index` (`degasser_id`),
  KEY `pos_degasser_degasser_and_rig_relation_index` (`position_in_list`,`degasser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degasser_and_rig_relation`
--

LOCK TABLES `degasser_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `degasser_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `degasser_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degasser_model`
--

DROP TABLE IF EXISTS `degasser_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degasser_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degasser_model`
--

LOCK TABLES `degasser_model` WRITE;
/*!40000 ALTER TABLE `degasser_model` DISABLE KEYS */;
INSERT INTO `degasser_model` VALUES (1,'AKR-300','2020-11-18 12:52:41','\0');
/*!40000 ALTER TABLE `degasser_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degasser_operation`
--

DROP TABLE IF EXISTS `degasser_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degasser_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `degasser_id` bigint(20) NOT NULL,
  `gas` double DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `equipment_condition_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `operation_time` time DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_degasser_degasser_operation_index` (`event_id`,`daily_report_id`,`degasser_id`),
  KEY `operation_time_degasser_operation_index` (`operation_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degasser_operation`
--

LOCK TABLES `degasser_operation` WRITE;
/*!40000 ALTER TABLE `degasser_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `degasser_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degasser_type`
--

DROP TABLE IF EXISTS `degasser_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degasser_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degasser_type`
--

LOCK TABLES `degasser_type` WRITE;
/*!40000 ALTER TABLE `degasser_type` DISABLE KEYS */;
INSERT INTO `degasser_type` VALUES (1,'Дегазатор центробежный','2020-11-18 12:53:30','\0');
/*!40000 ALTER TABLE `degasser_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detect_operation_type`
--

DROP TABLE IF EXISTS `detect_operation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detect_operation_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detect_operation_type`
--

LOCK TABLES `detect_operation_type` WRITE;
/*!40000 ALTER TABLE `detect_operation_type` DISABLE KEYS */;
INSERT INTO `detect_operation_type` VALUES (1,'Неопределенный','\0','2020-04-16 12:26:24'),(2,'Бурение','\0','2020-04-16 12:26:24'),(3,'Наращивание','\0','2020-04-16 12:26:24'),(4,'Промывка','\0','2020-04-16 12:26:24'),(5,'Проработка','\0','2020-04-16 12:26:24'),(6,'Обратная проработка','\0','2020-04-16 12:26:24'),(7,'СПО подъем','\0','2020-04-16 12:26:24'),(8,'СПО спуск','\0','2020-04-16 12:26:24'),(9,'Сборка КНБК','\0','2020-04-16 12:26:24'),(10,'Разборка КНБК','\0','2020-04-16 12:26:24'),(11,'Ожидание','\0','2020-04-16 12:26:24'),(12,'Работы на поверхности','\0','2020-04-16 12:26:34');
/*!40000 ALTER TABLE `detect_operation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagram_type`
--

DROP TABLE IF EXISTS `diagram_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagram_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagram_type`
--

LOCK TABLES `diagram_type` WRITE;
/*!40000 ALTER TABLE `diagram_type` DISABLE KEYS */;
INSERT INTO `diagram_type` VALUES (1,'Гистограмма','\0','2020-04-16 12:26:24'),(2,'Линейный график','\0','2020-04-16 12:28:13'),(3,'Столбчатая диаграмма','\0','2020-04-16 12:28:19');
/*!40000 ALTER TABLE `diagram_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagram_types_and_kpi_types`
--

DROP TABLE IF EXISTS `diagram_types_and_kpi_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagram_types_and_kpi_types` (
  `diagram_type_id` bigint(20) NOT NULL,
  `kpi_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`diagram_type_id`,`kpi_type_id`),
  KEY `diagram_types_and_kpi_types_index_1` (`diagram_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagram_types_and_kpi_types`
--

LOCK TABLES `diagram_types_and_kpi_types` WRITE;
/*!40000 ALTER TABLE `diagram_types_and_kpi_types` DISABLE KEYS */;
INSERT INTO `diagram_types_and_kpi_types` VALUES (1,1),(1,2),(1,3),(1,4),(1,8),(1,16),(1,17),(1,18),(1,22),(1,23),(1,24),(1,25),(1,26),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(3,26);
/*!40000 ALTER TABLE `diagram_types_and_kpi_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type`
--

DROP TABLE IF EXISTS `document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type`
--

LOCK TABLES `document_type` WRITE;
/*!40000 ALTER TABLE `document_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drill_pipe_outside_diameter`
--

DROP TABLE IF EXISTS `drill_pipe_outside_diameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drill_pipe_outside_diameter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drill_pipe_outside_diameter`
--

LOCK TABLES `drill_pipe_outside_diameter` WRITE;
/*!40000 ALTER TABLE `drill_pipe_outside_diameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `drill_pipe_outside_diameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_contractor_company`
--

DROP TABLE IF EXISTS `drilling_contractor_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_contractor_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_contractor_company`
--

LOCK TABLES `drilling_contractor_company` WRITE;
/*!40000 ALTER TABLE `drilling_contractor_company` DISABLE KEYS */;
INSERT INTO `drilling_contractor_company` VALUES (1,'Компания 1','\0','2020-11-18 12:51:49');
/*!40000 ALTER TABLE `drilling_contractor_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_crew`
--

DROP TABLE IF EXISTS `drilling_crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_crew` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `driller` varchar(255) DEFAULT NULL,
  `drilling_crew_status_id` int(11) DEFAULT NULL,
  `description` text,
  `modification_time` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `drilling_crew_type_id` int(11) DEFAULT NULL,
  `drilling_contractor_company_id` bigint(20) DEFAULT NULL,
  `cell_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_crew`
--

LOCK TABLES `drilling_crew` WRITE;
/*!40000 ALTER TABLE `drilling_crew` DISABLE KEYS */;
/*!40000 ALTER TABLE `drilling_crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_crew_daily_kpi_report`
--

DROP TABLE IF EXISTS `drilling_crew_daily_kpi_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_crew_daily_kpi_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `drilling_crew_id` bigint(20) NOT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_crew_daily_kpi_report`
--

LOCK TABLES `drilling_crew_daily_kpi_report` WRITE;
/*!40000 ALTER TABLE `drilling_crew_daily_kpi_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `drilling_crew_daily_kpi_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_crew_status`
--

DROP TABLE IF EXISTS `drilling_crew_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_crew_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_crew_status`
--

LOCK TABLES `drilling_crew_status` WRITE;
/*!40000 ALTER TABLE `drilling_crew_status` DISABLE KEYS */;
INSERT INTO `drilling_crew_status` VALUES (1,'Активна','\0','2020-04-16 12:26:10'),(2,'Неактивна','\0','2020-04-16 12:26:10'),(3,'Расформирована','\0','2020-04-16 12:26:10');
/*!40000 ALTER TABLE `drilling_crew_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_crew_type`
--

DROP TABLE IF EXISTS `drilling_crew_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_crew_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_crew_type`
--

LOCK TABLES `drilling_crew_type` WRITE;
/*!40000 ALTER TABLE `drilling_crew_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `drilling_crew_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_tour`
--

DROP TABLE IF EXISTS `drilling_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_tour` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL,
  `drilling_tour_type_id` bigint(20) NOT NULL,
  `well_and_rig_relation_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `drilling_crew_id` bigint(20) DEFAULT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `drilling_tour_index_1` (`well_and_rig_relation_id`),
  KEY `drilling_tour_drilling_crew_index_1` (`drilling_crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_tour`
--

LOCK TABLES `drilling_tour` WRITE;
/*!40000 ALTER TABLE `drilling_tour` DISABLE KEYS */;
/*!40000 ALTER TABLE `drilling_tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_tour_properties`
--

DROP TABLE IF EXISTS `drilling_tour_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_tour_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `drilling_tour_type_id` bigint(20) NOT NULL,
  `drilling_crew_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drilling_tour_properties_drilling_crew_index_1` (`drilling_crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_tour_properties`
--

LOCK TABLES `drilling_tour_properties` WRITE;
/*!40000 ALTER TABLE `drilling_tour_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `drilling_tour_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drilling_tour_type`
--

DROP TABLE IF EXISTS `drilling_tour_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drilling_tour_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drilling_tour_type`
--

LOCK TABLES `drilling_tour_type` WRITE;
/*!40000 ALTER TABLE `drilling_tour_type` DISABLE KEYS */;
INSERT INTO `drilling_tour_type` VALUES (1,'Дневная','\0','2020-04-16 12:26:45'),(2,'Ночная','\0','2020-04-16 12:26:45');
/*!40000 ALTER TABLE `drilling_tour_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dull_code`
--

DROP TABLE IF EXISTS `dull_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dull_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dull_code`
--

LOCK TABLES `dull_code` WRITE;
/*!40000 ALTER TABLE `dull_code` DISABLE KEYS */;
INSERT INTO `dull_code` VALUES (1,'BC','\0','2020-04-16 12:33:13'),(2,'BT','\0','2020-04-16 12:33:13'),(3,'BU','\0','2020-04-16 12:33:13'),(4,'CC','\0','2020-04-16 12:33:13'),(5,'CD','\0','2020-04-16 12:33:13'),(6,'CI','\0','2020-04-16 12:33:13'),(7,'CR','\0','2020-04-16 12:33:13'),(8,'CT','\0','2020-04-16 12:33:13'),(9,'ER','\0','2020-04-16 12:33:13'),(10,'FC','\0','2020-04-16 12:33:13'),(11,'LT','\0','2020-04-16 12:33:13'),(12,'OC','\0','2020-04-16 12:33:13'),(13,'SS','\0','2020-04-16 12:33:13'),(14,'WT','\0','2020-04-16 12:33:13'),(15,'RG','\0','2020-04-16 12:33:13'),(16,'LC','\0','2020-04-16 12:33:13'),(17,'NO','\0','2020-04-16 12:33:13'),(18,'HC','\0','2020-04-16 12:33:13'),(19,'TR','\0','2020-04-16 12:33:13'),(20,'JD','\0','2020-04-16 12:33:13'),(21,'RO','\0','2020-04-16 12:33:13'),(22,'SD','\0','2020-04-16 12:33:13'),(23,'LN','\0','2020-04-16 12:33:13'),(24,'PN','\0','2020-04-16 12:33:13'),(25,'PB','\0','2020-04-16 12:33:13'),(26,'WO','\0','2020-04-16 12:33:13'),(27,'BF','\0','2020-04-16 12:33:13'),(28,'DL','\0','2020-04-16 12:33:13');
/*!40000 ALTER TABLE `dull_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_error`
--

DROP TABLE IF EXISTS `entity_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_error` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity` varchar(200) NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `field` varchar(200) NOT NULL,
  `rule` varchar(100) DEFAULT NULL,
  `section_status_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_entity_entity_error_idx` (`section_status_id`,`entity`),
  KEY `entity_error_name_and_id_idx` (`entity_id`,`entity`),
  KEY `entity_id_rule_entity_error_index` (`entity`,`entity_id`,`rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_error`
--

LOCK TABLES `entity_error` WRITE;
/*!40000 ALTER TABLE `entity_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_error_prop`
--

DROP TABLE IF EXISTS `entity_error_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_error_prop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_error_id` bigint(20) DEFAULT NULL,
  `prop_name` varchar(255) DEFAULT NULL,
  `prop_value` varchar(255) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `error_id_entity_error_prop` (`entity_error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_error_prop`
--

LOCK TABLES `entity_error_prop` WRITE;
/*!40000 ALTER TABLE `entity_error_prop` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_error_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_name`
--

DROP TABLE IF EXISTS `entity_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_name`
--

LOCK TABLES `entity_name` WRITE;
/*!40000 ALTER TABLE `entity_name` DISABLE KEYS */;
INSERT INTO `entity_name` VALUES (4,'drilling_crew'),(5,'event_type'),(2,'rig'),(3,'user'),(1,'well');
/*!40000 ALTER TABLE `entity_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_condition`
--

DROP TABLE IF EXISTS `equipment_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_equipment_condition_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_condition`
--

LOCK TABLES `equipment_condition` WRITE;
/*!40000 ALTER TABLE `equipment_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `max_incl_md` double DEFAULT NULL,
  `max_incl` double DEFAULT NULL,
  `event_objective` varchar(255) DEFAULT NULL,
  `job_type_id` bigint(20) DEFAULT NULL,
  `rotary_table_elevation` double DEFAULT NULL,
  `planned_duration` double DEFAULT NULL,
  `event_type_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `planned_start_time` datetime DEFAULT NULL,
  `planned_finish_time` datetime DEFAULT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `actual_finish_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `starting_time_of_reporting_period` time NOT NULL DEFAULT '00:00:00',
  `export_template_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `start_time_business_plan` datetime DEFAULT NULL,
  `start_time_operation_plan` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_type_event_index` (`event_type_id`),
  KEY `well_event_type_event_index` (`well_id`,`event_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_stage_operation_activity_ref`
--

DROP TABLE IF EXISTS `event_stage_operation_activity_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_stage_operation_activity_ref` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `concatenated_ref` varchar(255) NOT NULL,
  `event_type_id` bigint(20) NOT NULL,
  `stage_type_id` bigint(20) NOT NULL,
  `operation_type_id` bigint(20) NOT NULL,
  `activity_type_id` bigint(20) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `concatenated_ref` (`concatenated_ref`),
  KEY `activity_type_id_ref_index` (`activity_type_id`),
  KEY `operation_type_id_ref_index` (`operation_type_id`),
  KEY `stage_type_id_ref_index` (`stage_type_id`),
  KEY `four_params_ref` (`event_type_id`,`stage_type_id`,`operation_type_id`,`activity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_stage_operation_activity_ref`
--

LOCK TABLES `event_stage_operation_activity_ref` WRITE;
/*!40000 ALTER TABLE `event_stage_operation_activity_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_stage_operation_activity_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` mediumtext,
  `name` varchar(255) NOT NULL,
  `export_template_id` bigint(20) NOT NULL DEFAULT '1',
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_type`
--

LOCK TABLES `event_type` WRITE;
/*!40000 ALTER TABLE `event_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types_and_report_forms`
--

DROP TABLE IF EXISTS `event_types_and_report_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_types_and_report_forms` (
  `event_type_id` bigint(20) NOT NULL,
  `report_form_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_type_id`,`report_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types_and_report_forms`
--

LOCK TABLES `event_types_and_report_forms` WRITE;
/*!40000 ALTER TABLE `event_types_and_report_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_types_and_report_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_types_and_report_types`
--

DROP TABLE IF EXISTS `event_types_and_report_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_types_and_report_types` (
  `event_type_id` bigint(20) NOT NULL,
  `report_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_type_id`,`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_types_and_report_types`
--

LOCK TABLES `event_types_and_report_types` WRITE;
/*!40000 ALTER TABLE `event_types_and_report_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_types_and_report_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_and_report_forms`
--

DROP TABLE IF EXISTS `events_and_report_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_and_report_forms` (
  `event_id` bigint(20) NOT NULL,
  `report_form_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_id`,`report_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_and_report_forms`
--

LOCK TABLES `events_and_report_forms` WRITE;
/*!40000 ALTER TABLE `events_and_report_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_and_report_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_and_report_types`
--

DROP TABLE IF EXISTS `events_and_report_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_and_report_types` (
  `event_id` bigint(20) NOT NULL,
  `report_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`event_id`,`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_and_report_types`
--

LOCK TABLES `events_and_report_types` WRITE;
/*!40000 ALTER TABLE `events_and_report_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_and_report_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_template`
--

DROP TABLE IF EXISTS `export_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `bean_name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_template`
--

LOCK TABLES `export_template` WRITE;
/*!40000 ALTER TABLE `export_template` DISABLE KEYS */;
INSERT INTO `export_template` VALUES (1,'Суточный рапорт по бурению','daily-report.jasper','daily-report-filler','\0','2020-08-19 21:13:26'),(2,'Сводка ВСР','daily-report-vsr.jasper','daily-report-vsr-filler','\0','2020-08-19 21:13:28');
/*!40000 ALTER TABLE `export_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES (1,'Ковыктинское','\0','2020-11-18 12:50:35');
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fluid_base_type`
--

DROP TABLE IF EXISTS `fluid_base_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fluid_base_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fluid_base_type`
--

LOCK TABLES `fluid_base_type` WRITE;
/*!40000 ALTER TABLE `fluid_base_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fluid_base_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fluid_type`
--

DROP TABLE IF EXISTS `fluid_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fluid_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  `fluid_base_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fluid_base_type_id_index_fluid_type` (`fluid_base_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fluid_type`
--

LOCK TABLES `fluid_type` WRITE;
/*!40000 ALTER TABLE `fluid_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fluid_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` VALUES (1,'Тестовый пласт','2020-11-18 12:51:26','\0');
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grade_tag_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `grade_tag_id_grade_index` (`grade_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_tag`
--

DROP TABLE IF EXISTS `grade_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_tag`
--

LOCK TABLES `grade_tag` WRITE;
/*!40000 ALTER TABLE `grade_tag` DISABLE KEYS */;
INSERT INTO `grade_tag` VALUES (1,'КНБК',NULL,'\0'),(2,'OK','2020-08-19 21:11:15','\0');
/*!40000 ALTER TABLE `grade_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydroclone`
--

DROP TABLE IF EXISTS `hydroclone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydroclone` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `model_id` bigint(20) DEFAULT NULL,
  `is_mud_cleaner` bit(1) NOT NULL DEFAULT b'0',
  `number_of_cone` bigint(20) DEFAULT NULL,
  `flow_capacity` double DEFAULT NULL,
  `cone_size` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_hydroclone_index` (`type_id`),
  KEY `model_hydroclone_index` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydroclone`
--

LOCK TABLES `hydroclone` WRITE;
/*!40000 ALTER TABLE `hydroclone` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydroclone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydroclone_and_rig_relation`
--

DROP TABLE IF EXISTS `hydroclone_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydroclone_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `hydroclone_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_hydroclone_and_rig_relation_index` (`rig_id`),
  KEY `hydroclone_hydroclone_and_rig_relation_index` (`hydroclone_id`),
  KEY `pos_hydroclone_hydroclone_and_rig_relation_index` (`position_in_list`,`hydroclone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydroclone_and_rig_relation`
--

LOCK TABLES `hydroclone_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `hydroclone_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydroclone_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydroclone_model`
--

DROP TABLE IF EXISTS `hydroclone_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydroclone_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydroclone_model`
--

LOCK TABLES `hydroclone_model` WRITE;
/*!40000 ALTER TABLE `hydroclone_model` DISABLE KEYS */;
INSERT INTO `hydroclone_model` VALUES (1,'Falсon 4-2S16N','2020-11-18 12:52:35','\0');
/*!40000 ALTER TABLE `hydroclone_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydroclone_operation`
--

DROP TABLE IF EXISTS `hydroclone_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydroclone_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hydroclone_id` bigint(20) NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `equipment_condition_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `density_feed` double DEFAULT NULL,
  `density_overflow` double DEFAULT NULL,
  `density_underflow` double DEFAULT NULL,
  `spigot_size` double DEFAULT NULL,
  `operation_time` time DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_hydroclone_hydroclone_operation_index` (`event_id`,`daily_report_id`,`hydroclone_id`),
  KEY `operation_time_hydroclone_operation_index` (`operation_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydroclone_operation`
--

LOCK TABLES `hydroclone_operation` WRITE;
/*!40000 ALTER TABLE `hydroclone_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hydroclone_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hydroclone_type`
--

DROP TABLE IF EXISTS `hydroclone_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hydroclone_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hydroclone_type`
--

LOCK TABLES `hydroclone_type` WRITE;
/*!40000 ALTER TABLE `hydroclone_type` DISABLE KEYS */;
INSERT INTO `hydroclone_type` VALUES (1,'Илоотделитель','2020-11-18 12:53:26','\0');
/*!40000 ALTER TABLE `hydroclone_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `incident_kind_id` bigint(20) DEFAULT NULL,
  `incident_cause_id` bigint(20) DEFAULT NULL,
  `description` mediumtext,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `measured_depth_from` double DEFAULT NULL,
  `measured_depth_to` double DEFAULT NULL,
  `bit_measured_depth` double DEFAULT NULL,
  `hole_size` double DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `remarks` mediumtext,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id_index` (`event_id`),
  KEY `finish_time_event_id_index` (`finish_time`,`event_id`),
  KEY `incident_kind_id_index` (`incident_kind_id`),
  KEY `start_time_event_id_index` (`start_time`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_attachment`
--

DROP TABLE IF EXISTS `incident_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `incident_id` bigint(20) NOT NULL,
  `name` varchar(512) NOT NULL,
  `directory` varchar(1024) NOT NULL,
  `thumbnail_directory` varchar(1024) DEFAULT NULL,
  `comment` text,
  `attachment_type_id` bigint(20) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incident_event_incident_attachment_index` (`event_id`,`incident_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_attachment`
--

LOCK TABLES `incident_attachment` WRITE;
/*!40000 ALTER TABLE `incident_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_cause`
--

DROP TABLE IF EXISTS `incident_cause`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_cause` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `incident_kind_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_cause`
--

LOCK TABLES `incident_cause` WRITE;
/*!40000 ALTER TABLE `incident_cause` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_cause` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_kind`
--

DROP TABLE IF EXISTS `incident_kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_kind` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `incident_type_id` bigint(20) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_incident_type_id_incident_kind` (`name`,`incident_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_kind`
--

LOCK TABLES `incident_kind` WRITE;
/*!40000 ALTER TABLE `incident_kind` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_kind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_type`
--

DROP TABLE IF EXISTS `incident_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_type`
--

LOCK TABLES `incident_type` WRITE;
/*!40000 ALTER TABLE `incident_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `displacement_volume` double DEFAULT NULL,
  `column_is_lowered` bit(1) DEFAULT b'0',
  `nipple_length` double DEFAULT NULL,
  `number_of_melting` varchar(255) DEFAULT NULL,
  `weight_per_meter` double DEFAULT NULL,
  `wall_thickness` double DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `nominal_weight` double DEFAULT NULL,
  `nominal_diameter` double DEFAULT NULL,
  `outside_diameter` double DEFAULT NULL,
  `inside_diameter` double DEFAULT NULL,
  `thread_connection_type_bottom_id` bigint(20) DEFAULT NULL,
  `thread_connection_type_top_id` bigint(20) DEFAULT NULL,
  `pin_box_config_id` bigint(20) DEFAULT NULL,
  `manufacturer_id` bigint(20) DEFAULT NULL,
  `outside_diameter_max` double DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `grade_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `length` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `normative_document` varchar(255) DEFAULT NULL,
  `inverter_number` varchar(255) DEFAULT NULL,
  `number_of_pipe_lengths` bigint(20) DEFAULT NULL,
  `is_certificate` bit(1) DEFAULT b'0',
  `comment` text,
  `is_burned_out` bit(1) NOT NULL DEFAULT b'0',
  `certificate_number` varchar(255) DEFAULT NULL,
  `start_run_hours` bigint(20) DEFAULT NULL,
  `tubular_assembly_element_subtype_id` bigint(20) DEFAULT NULL,
  `tubular_assembly_element_type_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id_instrument_index` (`event_id`),
  KEY `tub_assembly_element_subtype_instrument_index` (`tubular_assembly_element_subtype_id`),
  KEY `tub_assembly_element_type_instrument_index` (`tubular_assembly_element_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument`
--

LOCK TABLES `instrument` WRITE;
/*!40000 ALTER TABLE `instrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument_attachment`
--

DROP TABLE IF EXISTS `instrument_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `instrument_id` bigint(20) NOT NULL,
  `name` varchar(512) NOT NULL,
  `directory` varchar(1024) NOT NULL,
  `thumbnail_directory` varchar(1024) DEFAULT NULL,
  `comment` text,
  `mime_type` varchar(255) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instrument_event_instrument_attachment_index` (`event_id`,`instrument_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument_attachment`
--

LOCK TABLES `instrument_attachment` WRITE;
/*!40000 ALTER TABLE `instrument_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrument_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument_bit_detail`
--

DROP TABLE IF EXISTS `instrument_bit_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument_bit_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instrument_id` bigint(20) NOT NULL,
  `pass_through` double DEFAULT NULL,
  `bit_size_id` bigint(20) DEFAULT NULL,
  `iadc_code` varchar(20) DEFAULT NULL,
  `pilot_size` double DEFAULT NULL,
  `init_run_number` bigint(20) DEFAULT NULL,
  `bit_model_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instrument_instrument_bit_detail_index` (`instrument_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument_bit_detail`
--

LOCK TABLES `instrument_bit_detail` WRITE;
/*!40000 ALTER TABLE `instrument_bit_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrument_bit_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `description` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_job_type_uniq` (`code`),
  UNIQUE KEY `name_job_type_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_group`
--

DROP TABLE IF EXISTS `kpi_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_group` (
  `id` bigint(20) DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `measure_unit` varchar(128) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_group`
--

LOCK TABLES `kpi_group` WRITE;
/*!40000 ALTER TABLE `kpi_group` DISABLE KEYS */;
INSERT INTO `kpi_group` VALUES (1,'КПЭ-события','секунды','\0','2020-04-16 12:28:21'),(2,'КПЭ-суммарные. МСП','м/час','\0','2020-04-16 12:28:21'),(3,'КПЭ-суммарные. Время','часы','\0','2020-04-16 12:28:21'),(4,'КПЭ-суммарные. Пробурено','M','\0','2020-04-16 12:28:49');
/*!40000 ALTER TABLE `kpi_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_per_day_comment`
--

DROP TABLE IF EXISTS `kpi_per_day_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_per_day_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `drilling_crew_id` bigint(20) NOT NULL,
  `type_string_id` bigint(20) NOT NULL,
  `kpi_type_id` bigint(20) NOT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpi_per_day_comment_index_1` (`drilling_crew_id`,`type_string_id`,`kpi_type_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_per_day_comment`
--

LOCK TABLES `kpi_per_day_comment` WRITE;
/*!40000 ALTER TABLE `kpi_per_day_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpi_per_day_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_per_day_comment_operation_types`
--

DROP TABLE IF EXISTS `kpi_per_day_comment_operation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_per_day_comment_operation_types` (
  `kpi_per_day_comment_id` bigint(20) NOT NULL,
  `operation_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`kpi_per_day_comment_id`,`operation_type_id`),
  KEY `kpi_per_day_comment_operation_types_index_1` (`kpi_per_day_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_per_day_comment_operation_types`
--

LOCK TABLES `kpi_per_day_comment_operation_types` WRITE;
/*!40000 ALTER TABLE `kpi_per_day_comment_operation_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpi_per_day_comment_operation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_report_up_to_date_comment`
--

DROP TABLE IF EXISTS `kpi_report_up_to_date_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_report_up_to_date_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `drilling_crew_id` bigint(20) NOT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kpi_report_up_to_date_comment_index_1` (`drilling_crew_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_report_up_to_date_comment`
--

LOCK TABLES `kpi_report_up_to_date_comment` WRITE;
/*!40000 ALTER TABLE `kpi_report_up_to_date_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `kpi_report_up_to_date_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_type`
--

DROP TABLE IF EXISTS `kpi_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_type`
--

LOCK TABLES `kpi_type` WRITE;
/*!40000 ALTER TABLE `kpi_type` DISABLE KEYS */;
INSERT INTO `kpi_type` VALUES (1,'От клиньев до клиньев','\0','2020-04-16 12:26:24'),(2,'Бурение от забоя до клиньев','\0','2020-04-16 12:26:24'),(3,'Бурение от клиньев до забоя','\0','2020-04-16 12:26:24'),(4,'Бурение от забоя до забоя','\0','2020-04-16 12:26:24'),(5,'МСП средняя','\0','2020-04-16 12:28:13'),(6,'МСП с вращением','\0','2020-04-16 12:28:13'),(7,'МСП без вращения','\0','2020-04-16 12:28:13'),(8,'Движение между клиньями','\0','2020-04-16 12:28:15'),(9,'Чистое время бурения','\0','2020-04-16 12:28:19'),(10,'Время бурения с вращением','\0','2020-04-16 12:28:19'),(11,'Время бурения без вращения','\0','2020-04-16 12:28:19'),(12,'Время подъема','\0','2020-04-16 12:28:19'),(13,'Время спуска','\0','2020-04-16 12:28:19'),(14,'Время обратной проработки','\0','2020-04-16 12:28:19'),(15,'Время спуска с проработкой','\0','2020-04-16 12:28:19'),(16,'Бурение от ННД до ННД','\0','2020-04-16 12:28:48'),(17,'Бурение от ННД до клиньев','\0','2020-04-16 12:28:48'),(18,'Бурение от клиньев до ННД','\0','2020-04-16 12:28:48'),(19,'Проходка','\0','2020-04-16 12:28:49'),(20,'Проходка с вращением','\0','2020-04-16 12:28:49'),(21,'Проходка без вращения','\0','2020-04-16 12:28:49'),(22,'Спуск','\0','2020-04-16 12:29:02'),(23,'Обратная проработка от веса до веса','\0','2020-04-16 12:29:10'),(24,'Время промывок после бурения','\0','2020-04-16 12:29:12'),(25,'Спуск одной трубы','\0','2020-04-16 12:29:23'),(26,'Спуск свечи','\0','2020-04-16 12:29:23');
/*!40000 ALTER TABLE `kpi_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_types_and_kpi_groups`
--

DROP TABLE IF EXISTS `kpi_types_and_kpi_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_types_and_kpi_groups` (
  `kpi_type_id` bigint(20) NOT NULL,
  `kpi_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`kpi_type_id`,`kpi_group_id`),
  KEY `kpi_types_and_kpi_groups_index_1` (`kpi_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_types_and_kpi_groups`
--

LOCK TABLES `kpi_types_and_kpi_groups` WRITE;
/*!40000 ALTER TABLE `kpi_types_and_kpi_groups` DISABLE KEYS */;
INSERT INTO `kpi_types_and_kpi_groups` VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(7,2),(8,1),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,1),(17,1),(18,1),(19,4),(20,4),(21,4),(22,1),(23,1),(24,1),(25,1),(26,1);
/*!40000 ALTER TABLE `kpi_types_and_kpi_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `license_key` varchar(255) NOT NULL,
  `token` varchar(36) DEFAULT NULL,
  `well_id` bigint(20) DEFAULT NULL,
  `last_processed_changelog` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `license_key` (`license_key`),
  UNIQUE KEY `well_id` (`well_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_chart_properties`
--

DROP TABLE IF EXISTS `line_chart_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line_chart_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kpi_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filter` text,
  `decor` text,
  `sharing_status_id` int(11) NOT NULL,
  `group_by_field` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `chart_interval` varchar(4) NOT NULL DEFAULT '1d',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_chart_properties`
--

LOCK TABLES `line_chart_properties` WRITE;
/*!40000 ALTER TABLE `line_chart_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_chart_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_charts_and_users`
--

DROP TABLE IF EXISTS `line_charts_and_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line_charts_and_users` (
  `line_chart_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`line_chart_id`,`user_id`),
  KEY `line_charts_and_users_index_1` (`user_id`),
  KEY `line_charts_and_users_index_2` (`line_chart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_charts_and_users`
--

LOCK TABLES `line_charts_and_users` WRITE;
/*!40000 ALTER TABLE `line_charts_and_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_charts_and_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquidated_well_category`
--

DROP TABLE IF EXISTS `liquidated_well_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquidated_well_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquidated_well_category`
--

LOCK TABLES `liquidated_well_category` WRITE;
/*!40000 ALTER TABLE `liquidated_well_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `liquidated_well_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_data_date`
--

DROP TABLE IF EXISTS `log_data_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_data_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wellbore_id` bigint(20) NOT NULL,
  `log_id` bigint(20) NOT NULL,
  `mnemonic` varchar(25) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `data` mediumblob NOT NULL,
  `md5` varchar(32) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date_data_idx` (`wellbore_id`,`log_id`,`mnemonic`,`date_from`,`date_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_data_date`
--

LOCK TABLES `log_data_date` WRITE;
/*!40000 ALTER TABLE `log_data_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_data_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_data_depth`
--

DROP TABLE IF EXISTS `log_data_depth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_data_depth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wellbore_id` bigint(20) NOT NULL,
  `log_id` bigint(20) NOT NULL,
  `mnemonic` varchar(25) NOT NULL,
  `depth_from` double NOT NULL,
  `depth_to` double NOT NULL,
  `data` mediumblob NOT NULL,
  `md5` varchar(32) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `depth_data_idx` (`wellbore_id`,`log_id`,`mnemonic`,`depth_from`,`depth_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_data_depth`
--

LOCK TABLES `log_data_depth` WRITE;
/*!40000 ALTER TABLE `log_data_depth` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_data_depth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loss_details`
--

DROP TABLE IF EXISTS `loss_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loss_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `mud_balance_id` bigint(20) NOT NULL,
  `formation_id` bigint(20) DEFAULT NULL,
  `depth_top` double DEFAULT NULL,
  `depth_bottom` double DEFAULT NULL,
  `comment` text,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_loss_details_index` (`event_id`),
  KEY `formation_loss_details_index` (`formation_id`),
  KEY `mud_balance_loss_details_index` (`mud_balance_id`),
  KEY `wellbore_loss_details_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loss_details`
--

LOCK TABLES `loss_details` WRITE;
/*!40000 ALTER TABLE `loss_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `loss_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lubricant`
--

DROP TABLE IF EXISTS `lubricant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lubricant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lubricant`
--

LOCK TABLES `lubricant` WRITE;
/*!40000 ALTER TABLE `lubricant` DISABLE KEYS */;
/*!40000 ALTER TABLE `lubricant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `machine_type_id` bigint(20) DEFAULT NULL,
  `contractor_id` bigint(20) DEFAULT NULL,
  `machine_number` varchar(255) DEFAULT NULL,
  `operating_rate` double DEFAULT NULL,
  `idling_rate` double DEFAULT NULL,
  `standby_rate` double DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `sum_operating_time` double DEFAULT NULL,
  `sum_idling_time` double DEFAULT NULL,
  `sum_standby_time` double DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_pos_machine_index` (`event_id`,`position_in_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_type`
--

DROP TABLE IF EXISTS `machine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_machine_type_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_type`
--

LOCK TABLES `machine_type` WRITE;
/*!40000 ALTER TABLE `machine_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sum_plan` double DEFAULT NULL,
  `sum_fact` double DEFAULT NULL,
  `material_type_id` bigint(20) DEFAULT NULL,
  `package_measure_unit_id` bigint(20) DEFAULT NULL,
  `package_size` double DEFAULT NULL,
  `package_price` double DEFAULT NULL,
  `package_currency_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_event_id_material_uniq` (`name`,`event_id`),
  KEY `event_position_in_list_material_index` (`event_id`,`position_in_list`),
  KEY `material_material_type_index` (`material_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_attachment`
--

DROP TABLE IF EXISTS `material_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `material_id` bigint(20) NOT NULL,
  `name` varchar(512) NOT NULL,
  `directory` varchar(1024) NOT NULL,
  `thumbnail_directory` varchar(1024) DEFAULT NULL,
  `comment` text,
  `mime_type` varchar(255) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_attachment`
--

LOCK TABLES `material_attachment` WRITE;
/*!40000 ALTER TABLE `material_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_kind`
--

DROP TABLE IF EXISTS `material_kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_kind` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `material_type_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_material_type_id_material_kind` (`name`,`material_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_kind`
--

LOCK TABLES `material_kind` WRITE;
/*!40000 ALTER TABLE `material_kind` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_kind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_state`
--

DROP TABLE IF EXISTS `material_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `daily_report_id` bigint(20) NOT NULL,
  `material_id` bigint(20) NOT NULL,
  `income` double DEFAULT NULL,
  `outgo` double DEFAULT NULL,
  `remove` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `remarks` mediumtext,
  `stage_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_material_state_index` (`event_id`,`daily_report_id`),
  KEY `material_state_material_id_index` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_state`
--

LOCK TABLES `material_state` WRITE;
/*!40000 ALTER TABLE `material_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_state_summary`
--

DROP TABLE IF EXISTS `material_state_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_state_summary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `material_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `income_summary` double DEFAULT NULL,
  `outgo_summary` double DEFAULT NULL,
  `remove_summary` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `material_state_summary_index_1` (`material_id`),
  KEY `material_state_summary_index_2` (`material_id`,`date`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_state_summary`
--

LOCK TABLES `material_state_summary` WRITE;
/*!40000 ALTER TABLE `material_state_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_state_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_type`
--

DROP TABLE IF EXISTS `material_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_type`
--

LOCK TABLES `material_type` WRITE;
/*!40000 ALTER TABLE `material_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_unit`
--

DROP TABLE IF EXISTS `measure_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `main_unit_id` bigint(20) DEFAULT NULL,
  `description_en` mediumtext,
  `description_ru` mediumtext,
  `format` varchar(255) DEFAULT NULL,
  `ratio_operation` varchar(255) DEFAULT NULL,
  `ratio_factor` double DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_ru` (`name_ru`),
  UNIQUE KEY `name_en` (`name_en`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_unit`
--

LOCK TABLES `measure_unit` WRITE;
/*!40000 ALTER TABLE `measure_unit` DISABLE KEYS */;
INSERT INTO `measure_unit` VALUES (1,'т','t',1,'metric tonne','тонна','5.2','*',1,'\0','2020-04-16 12:26:29'),(2,'кг','kg',1,'kilogram','килограмм','5.2','*',1000,'\0','2020-04-16 12:26:29'),(3,'фн','lb',1,'pound','фунт','5.2','*',2204.6223302272,'\0','2020-04-16 12:26:29'),(4,'м','m',4,'meter','метр','5.2','*',1,'\0','2020-04-16 12:26:29'),(5,'см','cm',4,'centimeter','сантиметр','5.2','*',1,'\0','2020-04-16 12:26:29'),(6,'ярд','yd',4,'yard','ярд','5.2','*',1.0936132983377,'\0','2020-04-16 12:26:29'),(7,'фт','ft',4,'foot','фут','5.2','*',3.2808398950131,'\0','2020-04-16 12:26:29'),(8,'″','in',4,'inch','дюйм','5.2','*',39.370078740157,'\0','2020-04-16 12:26:29'),(9,'шт','pc',9,'piece','штук','5.2','*',1,'\0','2020-08-19 21:14:53'),(10,'м³','m³',10,'cubic meter','метр кубический','5.2','*',1,'\0','2020-08-19 21:14:53'),(11,'л','l',10,'liter','литр','5.2','*',1000,'\0','2020-08-19 21:14:54');
/*!40000 ALTER TABLE `measure_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mud_balance`
--

DROP TABLE IF EXISTS `mud_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mud_balance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `fluid_type_id` bigint(20) DEFAULT NULL,
  `build` double DEFAULT NULL,
  `recovered` double DEFAULT NULL,
  `influx` double DEFAULT NULL,
  `received` double DEFAULT NULL,
  `returned` double DEFAULT NULL,
  `dumped` double DEFAULT NULL,
  `cuttings` double DEFAULT NULL,
  `tripping` double DEFAULT NULL,
  `evaporation` double DEFAULT NULL,
  `spillage` double DEFAULT NULL,
  `other_surface` double DEFAULT NULL,
  `lost_circulation` double DEFAULT NULL,
  `casing_run` double DEFAULT NULL,
  `cementing` double DEFAULT NULL,
  `filter_loss` double DEFAULT NULL,
  `other_subsurface` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mud_balance_daily_report_id_fluid_type_id_uniq` (`daily_report_id`,`fluid_type_id`),
  KEY `event_daily_report_mud_balance_index` (`event_id`,`daily_report_id`),
  KEY `fluid_type_mud_balance_index` (`fluid_type_id`),
  KEY `wellbore_mud_balance_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mud_balance`
--

LOCK TABLES `mud_balance` WRITE;
/*!40000 ALTER TABLE `mud_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mud_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mud_in_well`
--

DROP TABLE IF EXISTS `mud_in_well`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mud_in_well` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `fluid_type_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `area_type` bit(1) DEFAULT NULL,
  `comment` text,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_daily_report_mud_in_well_index` (`event_id`,`daily_report_id`),
  KEY `event_position_in_list_mud_in_well_index` (`event_id`,`position_in_list`),
  KEY `fluid_type_mud_in_well_index` (`fluid_type_id`),
  KEY `wellbore_mud_in_well_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mud_in_well`
--

LOCK TABLES `mud_in_well` WRITE;
/*!40000 ALTER TABLE `mud_in_well` DISABLE KEYS */;
/*!40000 ALTER TABLE `mud_in_well` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mud_property`
--

DROP TABLE IF EXISTS `mud_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mud_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `sample_source_id` bigint(20) DEFAULT NULL,
  `fluid_type_id` bigint(20) DEFAULT NULL,
  `quatering_time` time DEFAULT NULL,
  `current_measured_depth` double DEFAULT NULL,
  `true_vertical_depth` double DEFAULT NULL,
  `tool_position` double DEFAULT NULL,
  `comment` text,
  `mud_engineer` varchar(255) DEFAULT NULL,
  `mud_temperature` double DEFAULT NULL,
  `temp_rheology` double DEFAULT NULL,
  `temp_density` double DEFAULT NULL,
  `mud_weight` double DEFAULT NULL,
  `funnel_viscosity` double DEFAULT NULL,
  `fluid_loss` double DEFAULT NULL,
  `fluid_loss_hthp` double DEFAULT NULL,
  `zero_seconds_gel` double DEFAULT NULL,
  `ten_seconds_gel` double DEFAULT NULL,
  `one_minute_gel` double DEFAULT NULL,
  `ten_minutes_gel` double DEFAULT NULL,
  `ph` double DEFAULT NULL,
  `sand` double DEFAULT NULL,
  `solids` double DEFAULT NULL,
  `lube` double DEFAULT NULL,
  `cake` double DEFAULT NULL,
  `cake_hthp` double DEFAULT NULL,
  `plastic_viscosity` double DEFAULT NULL,
  `yield_point` double DEFAULT NULL,
  `cake_friction_factor` double DEFAULT NULL,
  `mbt` double DEFAULT NULL,
  `chlorides` double DEFAULT NULL,
  `potassium` double DEFAULT NULL,
  `electrical_stability` double DEFAULT NULL,
  `hydrocarbon_phase` double DEFAULT NULL,
  `water` double DEFAULT NULL,
  `oil_water_ratio` varchar(255) DEFAULT NULL,
  `pm` double DEFAULT NULL,
  `pom` double DEFAULT NULL,
  `pf_mf` varchar(255) DEFAULT NULL,
  `total_hardness` double DEFAULT NULL,
  `lsrv` double DEFAULT NULL,
  `calcium` double DEFAULT NULL,
  `calcium_carbonate` double DEFAULT NULL,
  `calcium_chloride` double DEFAULT NULL,
  `kalium_chloride` double DEFAULT NULL,
  `filter_cake_density` double DEFAULT NULL,
  `gummosity` double DEFAULT NULL,
  `mineralization` double DEFAULT NULL,
  `rpm_600` double DEFAULT NULL,
  `rpm_300` double DEFAULT NULL,
  `rpm_200` double DEFAULT NULL,
  `rpm_100` double DEFAULT NULL,
  `rpm_6` double DEFAULT NULL,
  `rpm_3` double DEFAULT NULL,
  `property1` double DEFAULT NULL,
  `property2` double DEFAULT NULL,
  `property3` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `density` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_mud_property_index` (`event_id`,`daily_report_id`),
  KEY `mud_property_fluid_type` (`fluid_type_id`),
  KEY `mud_property_sample_source` (`sample_source_id`),
  KEY `wellbore_mud_property_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mud_property`
--

LOCK TABLES `mud_property` WRITE;
/*!40000 ALTER TABLE `mud_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `mud_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mudmotor_model`
--

DROP TABLE IF EXISTS `mudmotor_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mudmotor_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mudmotor_model`
--

LOCK TABLES `mudmotor_model` WRITE;
/*!40000 ALTER TABLE `mudmotor_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `mudmotor_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mwd_model`
--

DROP TABLE IF EXISTS `mwd_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mwd_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mwd_model`
--

LOCK TABLES `mwd_model` WRITE;
/*!40000 ALTER TABLE `mwd_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `mwd_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_nationality_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `north_reference`
--

DROP TABLE IF EXISTS `north_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `north_reference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `north_reference`
--

LOCK TABLES `north_reference` WRITE;
/*!40000 ALTER TABLE `north_reference` DISABLE KEYS */;
INSERT INTO `north_reference` VALUES (1,'Истинный','\0','2020-04-16 12:29:03'),(2,'Магнитный','\0','2020-04-16 12:29:03'),(3,'Дирекционный угол','\0','2020-04-16 12:29:03');
/*!40000 ALTER TABLE `north_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nozzle`
--

DROP TABLE IF EXISTS `nozzle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nozzle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `tubular_assembly_id` bigint(20) NOT NULL,
  `tubular_assembly_element_id` bigint(20) DEFAULT NULL,
  `diameter` double DEFAULT NULL,
  `count` bigint(20) DEFAULT NULL,
  `nozzle_model_id` bigint(20) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `remarks` mediumtext,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pos_tubular_event_nozzle_index` (`position_in_list`,`tubular_assembly_id`,`event_id`),
  KEY `nozzle_index` (`event_id`,`tubular_assembly_id`,`tubular_assembly_element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nozzle`
--

LOCK TABLES `nozzle` WRITE;
/*!40000 ALTER TABLE `nozzle` DISABLE KEYS */;
/*!40000 ALTER TABLE `nozzle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nozzle_model`
--

DROP TABLE IF EXISTS `nozzle_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nozzle_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nozzle_model`
--

LOCK TABLES `nozzle_model` WRITE;
/*!40000 ALTER TABLE `nozzle_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `nozzle_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(191) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('be9900407abc4e794faffa60ea82bdb5','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0u�ryxpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0updatet\0 createt\0 deletet\0 selectt\0\n user_infot\0\n service_1t\0\n service_2xt\0bearert\06agxbXAtNn9dU8kAufhycHy9EiM','74a7bdf43ea24bfe6856e01927aae226','admin','rig-space','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0\rt\0a_drilling_crew#Esq\0~\0\rt\0a_drilling_crew#Vsq\0~\0\rt\0\ra_equipment#Csq\0~\0\rt\0\ra_equipment#Esq\0~\0\rt\0\ra_equipment#Vsq\0~\0\rt\0a_rig#Csq\0~\0\rt\0a_rig#Esq\0~\0\rt\0a_rig#Vsq\0~\0\rt\0	a_roles#Csq\0~\0\rt\0	a_roles#Esq\0~\0\rt\0	a_roles#Vsq\0~\0\rt\0a_security_group#Csq\0~\0\rt\0a_security_group#Esq\0~\0\rt\0a_security_group#Vsq\0~\0\rt\0	a_users#Csq\0~\0\rt\0	a_users#Esq\0~\0\rt\0	a_users#Vsq\0~\0\rt\0a_wellbore#Csq\0~\0\rt\0a_wellbore#Esq\0~\0\rt\0a_wellbore#Vsq\0~\0\rt\0	a_wells#Csq\0~\0\rt\0	a_wells#Esq\0~\0\rt\0	a_wells#Vsq\0~\0\rt\0analytical_updater#Csq\0~\0\rt\0analytical_updater#Esq\0~\0\rt\0analytical_updater#Vsq\0~\0\rt\0analytics#Csq\0~\0\rt\0analytics#Esq\0~\0\rt\0analytics#Vsq\0~\0\rt\0*casing-report_casing-circulation-section#Csq\0~\0\rt\0*casing-report_casing-circulation-section#Esq\0~\0\rt\0*casing-report_casing-circulation-section#Vsq\0~\0\rt\0*casing-report_casing-composition-section#Csq\0~\0\rt\0*casing-report_casing-composition-section#Esq\0~\0\rt\0*casing-report_casing-composition-section#Vsq\0~\0\rt\0\'casing-report_casing-lowering-section#Csq\0~\0\rt\0\'casing-report_casing-lowering-section#Esq\0~\0\rt\0\'casing-report_casing-lowering-section#Vsq\0~\0\rt\0casing-report_casing-report#Csq\0~\0\rt\0casing-report_casing-report#Esq\0~\0\rt\0casing-report_casing-report#Vsq\0~\0\rt\04casing-report_external-assembly-attachment-section#Csq\0~\0\rt\04casing-report_external-assembly-attachment-section#Esq\0~\0\rt\04casing-report_external-assembly-attachment-section#Vsq\0~\0\rt\0$casing-report_general-info-section#Csq\0~\0\rt\0$casing-report_general-info-section#Esq\0~\0\rt\0$casing-report_general-info-section#Vsq\0~\0\rt\0*cementing-report_cementing-fluid-section#Csq\0~\0\rt\0*cementing-report_cementing-fluid-section#Esq\0~\0\rt\0*cementing-report_cementing-fluid-section#Vsq\0~\0\rt\0#cementing-report_cementing-report#Csq\0~\0\rt\0#cementing-report_cementing-report#Esq\0~\0\rt\0#cementing-report_cementing-report#Vsq\0~\0\rt\0\'cementing-report_general-info-section#Csq\0~\0\rt\0\'cementing-report_general-info-section#Esq\0~\0\rt\0\'cementing-report_general-info-section#Vsq\0~\0\rt\0$cementing-report_operation-section#Csq\0~\0\rt\0$cementing-report_operation-section#Esq\0~\0\rt\0$cementing-report_operation-section#Vsq\0~\0\rt\0d_dictionaries#Csq\0~\0\rt\0d_dictionaries#Esq\0~\0\rt\0d_dictionaries#Vsq\0~\0\rt\00daily-report_cleaning-system-operation-section#Csq\0~\0\rt\00daily-report_cleaning-system-operation-section#Esq\0~\0\rt\00daily-report_cleaning-system-operation-section#Vsq\0~\0\rt\0!daily-report_completion-section#Csq\0~\0\rt\0!daily-report_completion-section#Esq\0~\0\rt\0!daily-report_completion-section#Vsq\0~\0\rt\0\'daily-report_contractor-staff-section#Csq\0~\0\rt\0\'daily-report_contractor-staff-section#Esq\0~\0\rt\0\'daily-report_contractor-staff-section#Vsq\0~\0\rt\0daily-report_daily-report#Csq\0~\0\rt\0daily-report_daily-report#Esq\0~\0\rt\0daily-report_daily-report#Vsq\0~\0\rt\0&daily-report_drilling-string-section#Csq\0~\0\rt\0&daily-report_drilling-string-section#Esq\0~\0\rt\0&daily-report_drilling-string-section#Vsq\0~\0\rt\0\"daily-report_fluid-param-section#Csq\0~\0\rt\0\"daily-report_fluid-param-section#Esq\0~\0\rt\0\"daily-report_fluid-param-section#Vsq\0~\0\rt\0#daily-report_fluid-volume-section#Csq\0~\0\rt\0#daily-report_fluid-volume-section#Esq\0~\0\rt\0#daily-report_fluid-volume-section#Vsq\0~\0\rt\0#daily-report_general-info-section#Csq\0~\0\rt\0#daily-report_general-info-section#Esq\0~\0\rt\0#daily-report_general-info-section#Vsq\0~\0\rt\0daily-report_incident-section#Csq\0~\0\rt\0daily-report_incident-section#Esq\0~\0\rt\0daily-report_incident-section#Vsq\0~\0\rt\0daily-report_machine-section#Csq\0~\0\rt\0daily-report_machine-section#Esq\0~\0\rt\0daily-report_machine-section#Vsq\0~\0\rt\0daily-report_material-section#Csq\0~\0\rt\0daily-report_material-section#Esq\0~\0\rt\0daily-report_material-section#Vsq\0~\0\rt\0 daily-report_operation-section#Csq\0~\0\rt\0 daily-report_operation-section#Esq\0~\0\rt\0 daily-report_operation-section#Vsq\0~\0\rt\0daily-report_pressure-section#Csq\0~\0\rt\0daily-report_pressure-section#Esq\0~\0\rt\0daily-report_pressure-section#Vsq\0~\0\rt\0daily-report_pump-section#Csq\0~\0\rt\0daily-report_pump-section#Esq\0~\0\rt\0daily-report_pump-section#Vsq\0~\0\rt\0daily-report_survey-section#Csq\0~\0\rt\0daily-report_survey-section#Esq\0~\0\rt\0daily-report_survey-section#Vsq\0~\0\rt\0daily-report_weather-section#Csq\0~\0\rt\0daily-report_weather-section#Esq\0~\0\rt\0daily-report_weather-section#Vsq\0~\0\rt\0(daily-report_well-construction-section#Csq\0~\0\rt\0(daily-report_well-construction-section#Esq\0~\0\rt\0(daily-report_well-construction-section#Vsq\0~\0\rt\0	e_nodes#Csq\0~\0\rt\0	e_nodes#Esq\0~\0\rt\0	e_nodes#Vsq\0~\0\rt\0e_sensors#Csq\0~\0\rt\0e_sensors#Esq\0~\0\rt\0e_sensors#Vsq\0~\0\rt\0\nm_events#Csq\0~\0\rt\0\nm_events#Esq\0~\0\rt\0\nm_events#Vsq\0~\0\rt\0m_reports#Csq\0~\0\rt\0m_reports#Esq\0~\0\rt\0m_reports#Vsq\0~\0\rt\0m_rigs#Csq\0~\0\rt\0m_rigs#Esq\0~\0\rt\0m_rigs#Vsq\0~\0\rt\0(pipe-tally-report_general-info-section#Csq\0~\0\rt\0(pipe-tally-report_general-info-section#Esq\0~\0\rt\0(pipe-tally-report_general-info-section#Vsq\0~\0\rt\0%pipe-tally-report_pipe-tally-report#Csq\0~\0\rt\0%pipe-tally-report_pipe-tally-report#Esq\0~\0\rt\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0\rt\0&pipe-tally-report_pipe-tally-section#Csq\0~\0\rt\0&pipe-tally-report_pipe-tally-section#Esq\0~\0\rt\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0\rt\0planned-report_casing-section#Csq\0~\0\rt\0planned-report_casing-section#Esq\0~\0\rt\0planned-report_casing-section#Vsq\0~\0\rt\0\"planned-report_cementing-section#Csq\0~\0\rt\0\"planned-report_cementing-section#Esq\0~\0\rt\0\"planned-report_cementing-section#Vsq\0~\0\rt\0(planned-report_drilling-string-section#Csq\0~\0\rt\0(planned-report_drilling-string-section#Esq\0~\0\rt\0(planned-report_drilling-string-section#Vsq\0~\0\rt\0$planned-report_fluid-param-section#Csq\0~\0\rt\0$planned-report_fluid-param-section#Esq\0~\0\rt\0$planned-report_fluid-param-section#Vsq\0~\0\rt\0%planned-report_general-info-section#Csq\0~\0\rt\0%planned-report_general-info-section#Esq\0~\0\rt\0%planned-report_general-info-section#Vsq\0~\0\rt\0!planned-report_material-section#Csq\0~\0\rt\0!planned-report_material-section#Esq\0~\0\rt\0!planned-report_material-section#Vsq\0~\0\rt\0\"planned-report_operation-section#Csq\0~\0\rt\0\"planned-report_operation-section#Esq\0~\0\rt\0\"planned-report_operation-section#Vsq\0~\0\rt\0planned-report_planned-report#Csq\0~\0\rt\0planned-report_planned-report#Esq\0~\0\rt\0planned-report_planned-report#Vsq\0~\0\rt\0planned-report_risk-section#Csq\0~\0\rt\0planned-report_risk-section#Esq\0~\0\rt\0planned-report_risk-section#Vsq\0~\0\rt\0planned-report_survey-section#Csq\0~\0\rt\0planned-report_survey-section#Esq\0~\0\rt\0planned-report_survey-section#Vsq\0~\0\rt\0*planned-report_well-construction-section#Csq\0~\0\rt\0*planned-report_well-construction-section#Esq\0~\0\rt\0*planned-report_well-construction-section#Vsq\0~\0\rt\0)planned-report_wellbore-geology-section#Csq\0~\0\rt\0)planned-report_wellbore-geology-section#Esq\0~\0\rt\0)planned-report_wellbore-geology-section#Vsq\0~\0\rt\0\nr_events#Csq\0~\0\rt\0\nr_events#Esq\0~\0\rt\0\nr_events#Vsq\0~\0\rt\0rating#Csq\0~\0\rt\0rating#Esq\0~\0\rt\0rating#Vxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~zxr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~xL\0scopeq\0~zxpt\0	rig-spacesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~xxpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\0BdcAGFt\0\ngrant_typet\0authorization_codet\0\rresponse_typet\0codet\0redirect_urit\0!http://test.rig.space/admin/logint\0statet\0fCOLS4t\0	client_idq\0~}xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0updatet\0 createt\0 deletet\0 selectt\0\n user_infot\0\n service_1t\0\n service_2xsq\0~�w\0\0\0?@\0\0\0\0\0\0xsq\0~�?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0!http://test.rig.space/admin/loginpsq\0~�w\0\0\0?@\0\0\0\0\0\0xsq\0~�w\0\0\0?@\0\0\0\0\0q\0~�xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0�w\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#q\0~\0%q\0~\0\'q\0~\0)q\0~\0+q\0~\0-q\0~\0/q\0~\01q\0~\03q\0~\05q\0~\07q\0~\09q\0~\0;q\0~\0=q\0~\0?q\0~\0Aq\0~\0Cq\0~\0Eq\0~\0Gq\0~\0Iq\0~\0Kq\0~\0Mq\0~\0Oq\0~\0Qq\0~\0Sq\0~\0Uq\0~\0Wq\0~\0Yq\0~\0[q\0~\0]q\0~\0_q\0~\0aq\0~\0cq\0~\0eq\0~\0gq\0~\0iq\0~\0kq\0~\0mq\0~\0oq\0~\0qq\0~\0sq\0~\0uq\0~\0wq\0~\0yq\0~\0{q\0~\0}q\0~\0q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~q\0~q\0~q\0~q\0~	q\0~q\0~\rq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~!q\0~#q\0~%q\0~\'q\0~)q\0~+q\0~-q\0~/q\0~1q\0~3q\0~5q\0~7q\0~9q\0~;q\0~=q\0~?q\0~Aq\0~Cq\0~Eq\0~Gq\0~Iq\0~Kq\0~Mq\0~Oq\0~Qq\0~Sq\0~Uq\0~Wq\0~Yq\0~[q\0~]q\0~_q\0~aq\0~cq\0~eq\0~gq\0~iq\0~kq\0~mq\0~oq\0~qq\0~sq\0~uxq\0~�ppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~zL\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~�sr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#q\0~\0%q\0~\0\'q\0~\0)q\0~\0+q\0~\0-q\0~\0/q\0~\01q\0~\03q\0~\05q\0~\07q\0~\09q\0~\0;q\0~\0=q\0~\0?q\0~\0Aq\0~\0Cq\0~\0Eq\0~\0Gq\0~\0Iq\0~\0Kq\0~\0Mq\0~\0Oq\0~\0Qq\0~\0Sq\0~\0Uq\0~\0Wq\0~\0Yq\0~\0[q\0~\0]q\0~\0_q\0~\0aq\0~\0cq\0~\0eq\0~\0gq\0~\0iq\0~\0kq\0~\0mq\0~\0oq\0~\0qq\0~\0sq\0~\0uq\0~\0wq\0~\0yq\0~\0{q\0~\0}q\0~\0q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~q\0~q\0~q\0~q\0~	q\0~q\0~\rq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~!q\0~#q\0~%q\0~\'q\0~)q\0~+q\0~-q\0~/q\0~1q\0~3q\0~5q\0~7q\0~9q\0~;q\0~=q\0~?q\0~Aq\0~Cq\0~Eq\0~Gq\0~Iq\0~Kq\0~Mq\0~Oq\0~Qq\0~Sq\0~Uq\0~Wq\0~Yq\0~[q\0~]q\0~_q\0~aq\0~cq\0~eq\0~gq\0~iq\0~kq\0~mq\0~oq\0~qq\0~sq\0~uxt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin',NULL);
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(191) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('rig-space',NULL,'$2a$10$25X44ZNi9By6bnryxwTFTOfgcKyIDMwUm3D2Iv7Ri.0YDyXoPbtDW','update, create, delete, select, user_info, service_1, service_2','authorization_code',NULL,NULL,NULL,NULL,NULL,'true');
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(256) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
INSERT INTO `oauth_code` VALUES ('CKwj49','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0�w\0\0\0�sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0a_drilling_crew#Csq\0~\0\rt\0a_drilling_crew#Esq\0~\0\rt\0a_drilling_crew#Vsq\0~\0\rt\0\ra_equipment#Csq\0~\0\rt\0\ra_equipment#Esq\0~\0\rt\0\ra_equipment#Vsq\0~\0\rt\0a_rig#Csq\0~\0\rt\0a_rig#Esq\0~\0\rt\0a_rig#Vsq\0~\0\rt\0	a_roles#Csq\0~\0\rt\0	a_roles#Esq\0~\0\rt\0	a_roles#Vsq\0~\0\rt\0a_security_group#Csq\0~\0\rt\0a_security_group#Esq\0~\0\rt\0a_security_group#Vsq\0~\0\rt\0	a_users#Csq\0~\0\rt\0	a_users#Esq\0~\0\rt\0	a_users#Vsq\0~\0\rt\0a_wellbore#Csq\0~\0\rt\0a_wellbore#Esq\0~\0\rt\0a_wellbore#Vsq\0~\0\rt\0	a_wells#Csq\0~\0\rt\0	a_wells#Esq\0~\0\rt\0	a_wells#Vsq\0~\0\rt\0analytical_updater#Csq\0~\0\rt\0analytical_updater#Esq\0~\0\rt\0analytical_updater#Vsq\0~\0\rt\0analytics#Csq\0~\0\rt\0analytics#Esq\0~\0\rt\0analytics#Vsq\0~\0\rt\0casing-report_casing-report#Csq\0~\0\rt\0casing-report_casing-report#Esq\0~\0\rt\0casing-report_casing-report#Vsq\0~\0\rt\0$casing-report_general-info-section#Csq\0~\0\rt\0$casing-report_general-info-section#Esq\0~\0\rt\0$casing-report_general-info-section#Vsq\0~\0\rt\0#cementing-report_cementing-report#Csq\0~\0\rt\0#cementing-report_cementing-report#Esq\0~\0\rt\0#cementing-report_cementing-report#Vsq\0~\0\rt\0\'cementing-report_general-info-section#Csq\0~\0\rt\0\'cementing-report_general-info-section#Esq\0~\0\rt\0\'cementing-report_general-info-section#Vsq\0~\0\rt\0d_dictionaries#Csq\0~\0\rt\0d_dictionaries#Esq\0~\0\rt\0d_dictionaries#Vsq\0~\0\rt\00daily-report_cleaning-system-operation-section#Csq\0~\0\rt\00daily-report_cleaning-system-operation-section#Esq\0~\0\rt\00daily-report_cleaning-system-operation-section#Vsq\0~\0\rt\0!daily-report_completion-section#Csq\0~\0\rt\0!daily-report_completion-section#Esq\0~\0\rt\0!daily-report_completion-section#Vsq\0~\0\rt\0\'daily-report_contractor-staff-section#Csq\0~\0\rt\0\'daily-report_contractor-staff-section#Esq\0~\0\rt\0\'daily-report_contractor-staff-section#Vsq\0~\0\rt\0daily-report_daily-report#Csq\0~\0\rt\0daily-report_daily-report#Esq\0~\0\rt\0daily-report_daily-report#Vsq\0~\0\rt\0&daily-report_drilling-string-section#Csq\0~\0\rt\0&daily-report_drilling-string-section#Esq\0~\0\rt\0&daily-report_drilling-string-section#Vsq\0~\0\rt\0\"daily-report_fluid-param-section#Csq\0~\0\rt\0\"daily-report_fluid-param-section#Esq\0~\0\rt\0\"daily-report_fluid-param-section#Vsq\0~\0\rt\0#daily-report_fluid-volume-section#Csq\0~\0\rt\0#daily-report_fluid-volume-section#Esq\0~\0\rt\0#daily-report_fluid-volume-section#Vsq\0~\0\rt\0#daily-report_general-info-section#Csq\0~\0\rt\0#daily-report_general-info-section#Esq\0~\0\rt\0#daily-report_general-info-section#Vsq\0~\0\rt\0daily-report_incident-section#Csq\0~\0\rt\0daily-report_incident-section#Esq\0~\0\rt\0daily-report_incident-section#Vsq\0~\0\rt\0daily-report_machine-section#Csq\0~\0\rt\0daily-report_machine-section#Esq\0~\0\rt\0daily-report_machine-section#Vsq\0~\0\rt\0daily-report_material-section#Csq\0~\0\rt\0daily-report_material-section#Esq\0~\0\rt\0daily-report_material-section#Vsq\0~\0\rt\0 daily-report_operation-section#Csq\0~\0\rt\0 daily-report_operation-section#Esq\0~\0\rt\0 daily-report_operation-section#Vsq\0~\0\rt\0daily-report_pump-section#Csq\0~\0\rt\0daily-report_pump-section#Esq\0~\0\rt\0daily-report_pump-section#Vsq\0~\0\rt\0daily-report_survey-section#Csq\0~\0\rt\0daily-report_survey-section#Esq\0~\0\rt\0daily-report_survey-section#Vsq\0~\0\rt\0daily-report_weather-section#Csq\0~\0\rt\0daily-report_weather-section#Esq\0~\0\rt\0daily-report_weather-section#Vsq\0~\0\rt\0(daily-report_well-construction-section#Csq\0~\0\rt\0(daily-report_well-construction-section#Esq\0~\0\rt\0(daily-report_well-construction-section#Vsq\0~\0\rt\0	e_nodes#Csq\0~\0\rt\0	e_nodes#Esq\0~\0\rt\0	e_nodes#Vsq\0~\0\rt\0e_sensors#Csq\0~\0\rt\0e_sensors#Esq\0~\0\rt\0e_sensors#Vsq\0~\0\rt\0\nm_events#Csq\0~\0\rt\0\nm_events#Esq\0~\0\rt\0\nm_events#Vsq\0~\0\rt\0m_reports#Csq\0~\0\rt\0m_reports#Esq\0~\0\rt\0m_reports#Vsq\0~\0\rt\0m_rigs#Csq\0~\0\rt\0m_rigs#Esq\0~\0\rt\0m_rigs#Vsq\0~\0\rt\0(pipe-tally-report_general-info-section#Csq\0~\0\rt\0(pipe-tally-report_general-info-section#Esq\0~\0\rt\0(pipe-tally-report_general-info-section#Vsq\0~\0\rt\0%pipe-tally-report_pipe-tally-report#Csq\0~\0\rt\0%pipe-tally-report_pipe-tally-report#Esq\0~\0\rt\0%pipe-tally-report_pipe-tally-report#Vsq\0~\0\rt\0&pipe-tally-report_pipe-tally-section#Csq\0~\0\rt\0&pipe-tally-report_pipe-tally-section#Esq\0~\0\rt\0&pipe-tally-report_pipe-tally-section#Vsq\0~\0\rt\0planned-report_casing-section#Csq\0~\0\rt\0planned-report_casing-section#Esq\0~\0\rt\0planned-report_casing-section#Vsq\0~\0\rt\0\"planned-report_cementing-section#Csq\0~\0\rt\0\"planned-report_cementing-section#Esq\0~\0\rt\0\"planned-report_cementing-section#Vsq\0~\0\rt\0(planned-report_drilling-string-section#Csq\0~\0\rt\0(planned-report_drilling-string-section#Esq\0~\0\rt\0(planned-report_drilling-string-section#Vsq\0~\0\rt\0$planned-report_fluid-param-section#Csq\0~\0\rt\0$planned-report_fluid-param-section#Esq\0~\0\rt\0$planned-report_fluid-param-section#Vsq\0~\0\rt\0%planned-report_general-info-section#Csq\0~\0\rt\0%planned-report_general-info-section#Esq\0~\0\rt\0%planned-report_general-info-section#Vsq\0~\0\rt\0!planned-report_material-section#Csq\0~\0\rt\0!planned-report_material-section#Esq\0~\0\rt\0!planned-report_material-section#Vsq\0~\0\rt\0\"planned-report_operation-section#Csq\0~\0\rt\0\"planned-report_operation-section#Esq\0~\0\rt\0\"planned-report_operation-section#Vsq\0~\0\rt\0planned-report_planned-report#Csq\0~\0\rt\0planned-report_planned-report#Esq\0~\0\rt\0planned-report_planned-report#Vsq\0~\0\rt\0*planned-report_well-construction-section#Csq\0~\0\rt\0*planned-report_well-construction-section#Esq\0~\0\rt\0*planned-report_well-construction-section#Vsq\0~\0\rt\0\nr_events#Csq\0~\0\rt\0\nr_events#Esq\0~\0\rt\0\nr_events#Vsq\0~\0\rt\0rating#Csq\0~\0\rt\0rating#Esq\0~\0\rt\0rating#Vxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~>xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~<L\0scopeq\0~>xpt\0	rig-spacesr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~<xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0redirect_urit\0http://qa.rig.space/admin/logint\0statet\0cgsxCBt\0	client_idq\0~Axsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0updatet\0 createt\0 deletet\0 selectt\0\n user_infot\0\n service_1t\0\n service_2xsq\0~Pw\0\0\0?@\0\0\0\0\0\0xsq\0~D?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~Ipsq\0~Pw\0\0\0?@\0\0\0\0\0\0xsq\0~Pw\0\0\0?@\0\0\0\0\0q\0~Gxsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0�w\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#q\0~\0%q\0~\0\'q\0~\0)q\0~\0+q\0~\0-q\0~\0/q\0~\01q\0~\03q\0~\05q\0~\07q\0~\09q\0~\0;q\0~\0=q\0~\0?q\0~\0Aq\0~\0Cq\0~\0Eq\0~\0Gq\0~\0Iq\0~\0Kq\0~\0Mq\0~\0Oq\0~\0Qq\0~\0Sq\0~\0Uq\0~\0Wq\0~\0Yq\0~\0[q\0~\0]q\0~\0_q\0~\0aq\0~\0cq\0~\0eq\0~\0gq\0~\0iq\0~\0kq\0~\0mq\0~\0oq\0~\0qq\0~\0sq\0~\0uq\0~\0wq\0~\0yq\0~\0{q\0~\0}q\0~\0q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~q\0~q\0~q\0~q\0~	q\0~q\0~\rq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~!q\0~#q\0~%q\0~\'q\0~)q\0~+q\0~-q\0~/q\0~1q\0~3q\0~5q\0~7q\0~9xq\0~`ppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0�\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiesq\0~>L\0passwordq\0~\0L\0usernameq\0~\0xpsq\0~Msr\0java.util.TreeSetݘP���[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0�\0\0xpw\0\0\0�q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0#q\0~\0%q\0~\0\'q\0~\0)q\0~\0+q\0~\0-q\0~\0/q\0~\01q\0~\03q\0~\05q\0~\07q\0~\09q\0~\0;q\0~\0=q\0~\0?q\0~\0Aq\0~\0Cq\0~\0Eq\0~\0Gq\0~\0Iq\0~\0Kq\0~\0Mq\0~\0Oq\0~\0Qq\0~\0Sq\0~\0Uq\0~\0Wq\0~\0Yq\0~\0[q\0~\0]q\0~\0_q\0~\0aq\0~\0cq\0~\0eq\0~\0gq\0~\0iq\0~\0kq\0~\0mq\0~\0oq\0~\0qq\0~\0sq\0~\0uq\0~\0wq\0~\0yq\0~\0{q\0~\0}q\0~\0q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~\0�q\0~q\0~q\0~q\0~q\0~	q\0~q\0~\rq\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~q\0~!q\0~#q\0~%q\0~\'q\0~)q\0~+q\0~-q\0~/q\0~1q\0~3q\0~5q\0~7q\0~9xt\0<$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6uit\0admin');
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `metrage` double DEFAULT NULL,
  `incident_id` bigint(20) DEFAULT NULL,
  `activity_type_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `description` mediumtext,
  `operation_type_id` bigint(20) DEFAULT NULL,
  `depth_from` double DEFAULT NULL,
  `depth_to` double DEFAULT NULL,
  `work_depth_from` double DEFAULT NULL,
  `work_depth_to` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_type_id_operation_index` (`activity_type_id`),
  KEY `incident_id_operation_index` (`incident_id`),
  KEY `operation_stage_type_index` (`stage_type_id`),
  KEY `operation_type_id_operation_index` (`operation_type_id`),
  KEY `operation_event_daily_report` (`event_id`,`daily_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_mode_type`
--

DROP TABLE IF EXISTS `operation_mode_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_mode_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_mode_type`
--

LOCK TABLES `operation_mode_type` WRITE;
/*!40000 ALTER TABLE `operation_mode_type` DISABLE KEYS */;
INSERT INTO `operation_mode_type` VALUES (1,'Бурение с вращением',NULL,'\0'),(2,'Направленное бурение',NULL,'\0'),(3,'РЦС и оснастки ОК',NULL,'\0'),(4,'Проработка',NULL,'\0'),(5,'Промывка',NULL,'\0'),(6,'Спуск',NULL,'\0'),(7,'Подъем',NULL,'\0');
/*!40000 ALTER TABLE `operation_mode_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_type`
--

DROP TABLE IF EXISTS `operation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `with_metrage` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_type`
--

LOCK TABLES `operation_type` WRITE;
/*!40000 ALTER TABLE `operation_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_token`
--

LOCK TABLES `password_reset_token` WRITE;
/*!40000 ALTER TABLE `password_reset_token` DISABLE KEYS */;
INSERT INTO `password_reset_token` VALUES (1,'2020-11-19 10:24:44','48b9fbb4-6b00-4ef6-83c8-51b6c9f359d1',1);
/*!40000 ALTER TABLE `password_reset_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `personnel_position_id` bigint(20) DEFAULT NULL,
  `date_arrived` date DEFAULT NULL,
  `date_departed` date DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `lifeboat_number` varchar(255) DEFAULT NULL,
  `nationality_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_personnel_index` (`event_id`),
  KEY `position_event_personnel_index` (`position_in_list`,`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_position`
--

DROP TABLE IF EXISTS `personnel_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_personnel_position_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_position`
--

LOCK TABLES `personnel_position` WRITE;
/*!40000 ALTER TABLE `personnel_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pin_box_config`
--

DROP TABLE IF EXISTS `pin_box_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin_box_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `top` varchar(255) DEFAULT NULL,
  `bottom` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pin_box_config`
--

LOCK TABLES `pin_box_config` WRITE;
/*!40000 ALTER TABLE `pin_box_config` DISABLE KEYS */;
INSERT INTO `pin_box_config` VALUES (1,'x','Муфта','\0','2020-04-16 12:33:04'),(2,'x','Ниппель','\0','2020-04-16 12:33:04'),(3,'Муфта','x','\0','2020-04-16 12:33:04'),(4,'Ниппель','x','\0','2020-04-16 12:33:04'),(5,'Муфта','Муфта','\0','2020-04-16 12:33:04'),(6,'Муфта','Ниппель','\0','2020-04-16 12:33:04'),(7,'Ниппель','Ниппель','\0','2020-04-16 12:33:04'),(8,'Ниппель','Муфта','\0','2020-04-16 12:33:04');
/*!40000 ALTER TABLE `pin_box_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pipe_tally`
--

DROP TABLE IF EXISTS `pipe_tally`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipe_tally` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pipe_tally_report_id` bigint(20) NOT NULL,
  `remark` text,
  `instrument_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pipe_tally_report_index_1` (`pipe_tally_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipe_tally`
--

LOCK TABLES `pipe_tally` WRITE;
/*!40000 ALTER TABLE `pipe_tally` DISABLE KEYS */;
/*!40000 ALTER TABLE `pipe_tally` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pipe_tally_report`
--

DROP TABLE IF EXISTS `pipe_tally_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipe_tally_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `number` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `pipe_tally_report_general_info_id` bigint(20) NOT NULL,
  `column_is_lowered` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_event_pipe_tally_report_uniq` (`number`,`event_id`),
  KEY `pipe_tally_report_event_id_index` (`event_id`),
  KEY `pipe_tally_report_date_index` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipe_tally_report`
--

LOCK TABLES `pipe_tally_report` WRITE;
/*!40000 ALTER TABLE `pipe_tally_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `pipe_tally_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pipe_tally_report_general_info`
--

DROP TABLE IF EXISTS `pipe_tally_report_general_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pipe_tally_report_general_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext,
  `performer` text,
  `measured_depth` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `tubular_assembly_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pipe_tally_report_general_info`
--

LOCK TABLES `pipe_tally_report_general_info` WRITE;
/*!40000 ALTER TABLE `pipe_tally_report_general_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pipe_tally_report_general_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pit`
--

DROP TABLE IF EXISTS `pit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(512) NOT NULL,
  `dead_volume` double DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `remarks` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `rig_owner_id` bigint(20) DEFAULT NULL,
  `pit_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pit_type_id_index_pit` (`pit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pit`
--

LOCK TABLES `pit` WRITE;
/*!40000 ALTER TABLE `pit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pit_and_rig_relation`
--

DROP TABLE IF EXISTS `pit_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pit_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `pit_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_daily_report_pit_and_rig_relation_index` (`position_in_list`,`rig_id`),
  KEY `pit_id_index_pit_and_rig_relation` (`pit_id`),
  KEY `rig_id_index_pit_and_rig_relation` (`rig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pit_and_rig_relation`
--

LOCK TABLES `pit_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `pit_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pit_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pit_status`
--

DROP TABLE IF EXISTS `pit_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pit_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pit_volume` double DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `density` double DEFAULT NULL,
  `viscosity` double DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `fluid_type_id` bigint(20) DEFAULT NULL,
  `pit_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pit_status_daily_report_id_pit_id_uniq` (`daily_report_id`,`pit_id`),
  KEY `event_daily_report_pit_status_index` (`event_id`,`daily_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pit_status`
--

LOCK TABLES `pit_status` WRITE;
/*!40000 ALTER TABLE `pit_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `pit_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pit_type`
--

DROP TABLE IF EXISTS `pit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pit_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pit_type`
--

LOCK TABLES `pit_type` WRITE;
/*!40000 ALTER TABLE `pit_type` DISABLE KEYS */;
INSERT INTO `pit_type` VALUES (1,'Доливная','2020-11-18 12:53:35','\0');
/*!40000 ALTER TABLE `pit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_bha_operation`
--

DROP TABLE IF EXISTS `planned_bha_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_bha_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_bha_run_id` bigint(20) NOT NULL,
  `operation_mode_type_id` bigint(20) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `interval_from` double DEFAULT NULL,
  `interval_to` double DEFAULT NULL,
  `rotary_per_minute_min` double DEFAULT NULL,
  `rotary_per_minute_max` double DEFAULT NULL,
  `rotary_torque_min` double DEFAULT NULL,
  `rotary_torque_max` double DEFAULT NULL,
  `weight_on_bit_min` double DEFAULT NULL,
  `weight_on_bit_max` double DEFAULT NULL,
  `pump_flow_rate_min` double DEFAULT NULL,
  `pump_flow_rate_max` double DEFAULT NULL,
  `stand_pipe_pressure_min` double DEFAULT NULL,
  `stand_pipe_pressure_max` double DEFAULT NULL,
  `metrage` double DEFAULT NULL,
  `comment` text,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bha_run_position_in_list_plan_bha_operation_index` (`planned_bha_run_id`,`position_in_list`),
  KEY `event_report_run_plan_bha_operation_index` (`event_id`,`planned_report_id`,`planned_bha_run_id`),
  KEY `operation_mode_type_id_plan_bha_operation_index` (`operation_mode_type_id`),
  KEY `planned_report_id_plan_bha_operation_index` (`planned_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_bha_operation`
--

LOCK TABLES `planned_bha_operation` WRITE;
/*!40000 ALTER TABLE `planned_bha_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_bha_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_bha_run`
--

DROP TABLE IF EXISTS `planned_bha_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_bha_run` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext,
  `planned_tubular_assembly_id` bigint(20) NOT NULL,
  `objective_bha` varchar(255) DEFAULT NULL,
  `run_number` varchar(255) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `wellbore_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_position_in_list_planned_bha_run_index` (`event_id`,`position_in_list`),
  KEY `event_tubular_assembly_planned_bha_run_index` (`event_id`,`planned_tubular_assembly_id`),
  KEY `tubular_assembly_id_planned_bha_run_index` (`planned_tubular_assembly_id`),
  KEY `wellbore_planned_bha_run_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_bha_run`
--

LOCK TABLES `planned_bha_run` WRITE;
/*!40000 ALTER TABLE `planned_bha_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_bha_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_casing_run`
--

DROP TABLE IF EXISTS `planned_casing_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_casing_run` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remarks` mediumtext,
  `casing_run_number` bigint(20) DEFAULT NULL,
  `planned_tubular_assembly_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_casing_run_number_planned_casing_run` (`event_id`,`casing_run_number`),
  KEY `event_position_planned_casing_run_index` (`position_in_list`,`event_id`),
  KEY `event_report_planned_casing_run_index` (`event_id`,`planned_report_id`),
  KEY `stage_type_planned_casing_run_index` (`stage_type_id`),
  KEY `tubular_assembly_planned_casing_run_index` (`planned_tubular_assembly_id`),
  KEY `wellbore_planned_casing_run_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_casing_run`
--

LOCK TABLES `planned_casing_run` WRITE;
/*!40000 ALTER TABLE `planned_casing_run` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_casing_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_casing_run_trip_in`
--

DROP TABLE IF EXISTS `planned_casing_run_trip_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_casing_run_trip_in` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remarks` mediumtext,
  `measured_depth_from` double DEFAULT NULL,
  `measured_depth_to` double DEFAULT NULL,
  `min_trip_in_speed` double DEFAULT NULL,
  `max_trip_in_speed` double DEFAULT NULL,
  `planned_casing_run_id` bigint(20) NOT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_casing_run_trip_in_index` (`event_id`,`planned_report_id`,`planned_casing_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_casing_run_trip_in`
--

LOCK TABLES `planned_casing_run_trip_in` WRITE;
/*!40000 ALTER TABLE `planned_casing_run_trip_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_casing_run_trip_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_cement_composition`
--

DROP TABLE IF EXISTS `planned_cement_composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_cement_composition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_cementing_fluid_id` bigint(20) NOT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `material_id` bigint(20) NOT NULL,
  `comment` mediumtext,
  `mass_concentration` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `is_liq` bit(1) NOT NULL DEFAULT b'0',
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_fluid_plan_cementing_composition_index` (`event_id`,`planned_report_id`,`planned_cementing_fluid_id`),
  KEY `material_plan_cementing_composition_index` (`material_id`),
  KEY `planned_report_cementing_composition_index` (`planned_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_cement_composition`
--

LOCK TABLES `planned_cement_composition` WRITE;
/*!40000 ALTER TABLE `planned_cement_composition` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_cement_composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_cementing`
--

DROP TABLE IF EXISTS `planned_cementing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_cementing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_tubular_assembly_id` bigint(20) DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `cement_job_type_id` bigint(20) DEFAULT NULL,
  `wellbore_id` bigint(20) DEFAULT NULL,
  `wellbore_diameter` double DEFAULT NULL,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `with_rotation` bit(1) NOT NULL DEFAULT b'0',
  `with_reciprocation` bit(1) NOT NULL DEFAULT b'0',
  `measured_depth` double DEFAULT NULL,
  `comment` mediumtext,
  `cementing_method_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cement_job_type_planned_cementing_index` (`cement_job_type_id`),
  KEY `cementing_method_planned_cementing_index` (`cementing_method_id`),
  KEY `event_report_planned_cementing_index` (`event_id`,`planned_report_id`),
  KEY `planned_tubular_assembly_planned_cementing_index` (`planned_tubular_assembly_id`),
  KEY `stage_type_planned_cementing_index` (`stage_type_id`),
  KEY `wellbore_planned_cementing_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_cementing`
--

LOCK TABLES `planned_cementing` WRITE;
/*!40000 ALTER TABLE `planned_cementing` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_cementing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_cementing_fluid`
--

DROP TABLE IF EXISTS `planned_cementing_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_cementing_fluid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_cementing_id` bigint(20) NOT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `cementing_fluid_type_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` mediumtext,
  `volume` double DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cementing_fluid_type_plan_cementing_fluid_index` (`cementing_fluid_type_id`),
  KEY `event_report_cementing_plan_cementing_fluid_index` (`event_id`,`planned_report_id`,`planned_cementing_id`),
  KEY `planned_position_cementing_plan_cementing_fluid_index` (`planned_cementing_id`,`position_in_list`),
  KEY `planned_report_plan_cementing_fluid_index` (`planned_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_cementing_fluid`
--

LOCK TABLES `planned_cementing_fluid` WRITE;
/*!40000 ALTER TABLE `planned_cementing_fluid` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_cementing_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_cementing_operation`
--

DROP TABLE IF EXISTS `planned_cementing_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_cementing_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_cementing_stage_id` bigint(20) NOT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `measured_depth_from` double DEFAULT NULL,
  `measured_depth_to` double DEFAULT NULL,
  `performance_min` double DEFAULT NULL,
  `performance_max` double DEFAULT NULL,
  `pressure_min` double DEFAULT NULL,
  `pressure_max` double DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `planned_cementing_fluid_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cementing_fluid_type_plan_cementing_operation_index` (`planned_cementing_fluid_id`),
  KEY `event_report_stage_plan_cementing_operation_index` (`event_id`,`planned_report_id`,`planned_cementing_stage_id`),
  KEY `planned_report_plan_cementing_operation_index` (`planned_report_id`),
  KEY `position_cementing_plan_cementing_operation_index` (`planned_cementing_stage_id`,`position_in_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_cementing_operation`
--

LOCK TABLES `planned_cementing_operation` WRITE;
/*!40000 ALTER TABLE `planned_cementing_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_cementing_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_cementing_stage`
--

DROP TABLE IF EXISTS `planned_cementing_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_cementing_stage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_cementing_id` bigint(20) NOT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `woc` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_cementing_plan_cementing_stage_index` (`event_id`,`planned_report_id`,`planned_cementing_id`),
  KEY `planned_position_cementing_plan_cementing_stage_index` (`planned_cementing_id`,`position_in_list`),
  KEY `planned_report_plan_cementing_stage_index` (`planned_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_cementing_stage`
--

LOCK TABLES `planned_cementing_stage` WRITE;
/*!40000 ALTER TABLE `planned_cementing_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_cementing_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_intermediate_flushing`
--

DROP TABLE IF EXISTS `planned_intermediate_flushing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_intermediate_flushing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `duration` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `depth` double DEFAULT NULL,
  `planned_casing_run_id` bigint(20) NOT NULL,
  `min_pump_performance` double DEFAULT NULL,
  `max_pump_performance` double DEFAULT NULL,
  `min_riser_pressure` double DEFAULT NULL,
  `max_riser_pressure` double DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `casing_position_intermediate_flushing_index` (`position_in_list`,`planned_casing_run_id`),
  KEY `event_report_casing_intermediate_flushing_index` (`event_id`,`planned_report_id`,`planned_casing_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_intermediate_flushing`
--

LOCK TABLES `planned_intermediate_flushing` WRITE;
/*!40000 ALTER TABLE `planned_intermediate_flushing` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_intermediate_flushing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_material_requirement`
--

DROP TABLE IF EXISTS `planned_material_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_material_requirement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contingency_quantity` double DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `material_id` bigint(20) NOT NULL,
  `package_quantity` double DEFAULT NULL,
  `comment` mediumtext,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `material_stage_type_report_planned_material_uniq` (`stage_type_id`,`material_id`,`planned_report_id`),
  KEY `event_planned_report_planned_material_r_index` (`event_id`,`planned_report_id`),
  KEY `material_id_planned_material_requirement_index` (`material_id`),
  KEY `planned_material_requirement_planned_report_id_index` (`planned_report_id`),
  KEY `stage_type_id_planned_material_requirement_index` (`stage_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_material_requirement`
--

LOCK TABLES `planned_material_requirement` WRITE;
/*!40000 ALTER TABLE `planned_material_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_material_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_mud_property`
--

DROP TABLE IF EXISTS `planned_mud_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_mud_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `fluid_type_id` bigint(20) DEFAULT NULL,
  `measured_depth_top` double DEFAULT NULL,
  `measured_depth_bottom` double DEFAULT NULL,
  `true_vertical_depth_top` double DEFAULT NULL,
  `true_vertical_depth_bottom` double DEFAULT NULL,
  `mud_weight_min` double DEFAULT NULL,
  `mud_weight_max` double DEFAULT NULL,
  `funnel_viscosity_min` double DEFAULT NULL,
  `funnel_viscosity_max` double DEFAULT NULL,
  `fluid_loss_min` double DEFAULT NULL,
  `fluid_loss_max` double DEFAULT NULL,
  `ten_seconds_gel_min` double DEFAULT NULL,
  `ten_seconds_gel_max` double DEFAULT NULL,
  `one_minute_gel_min` double DEFAULT NULL,
  `one_minute_gel_max` double DEFAULT NULL,
  `ten_minutes_gel_min` double DEFAULT NULL,
  `ten_minutes_gel_max` double DEFAULT NULL,
  `ph_min` double DEFAULT NULL,
  `ph_max` double DEFAULT NULL,
  `sand_min` double DEFAULT NULL,
  `sand_max` double DEFAULT NULL,
  `solids_min` double DEFAULT NULL,
  `solids_max` double DEFAULT NULL,
  `lube_min` double DEFAULT NULL,
  `lube_max` double DEFAULT NULL,
  `cake_min` double DEFAULT NULL,
  `cake_max` double DEFAULT NULL,
  `plastic_viscosity_min` double DEFAULT NULL,
  `plastic_viscosity_max` double DEFAULT NULL,
  `yield_point_min` double DEFAULT NULL,
  `yield_point_max` double DEFAULT NULL,
  `cake_friction_factor_min` double DEFAULT NULL,
  `cake_friction_factor_max` double DEFAULT NULL,
  `mbt_min` double DEFAULT NULL,
  `mbt_max` double DEFAULT NULL,
  `chlorides_min` double DEFAULT NULL,
  `chlorides_max` double DEFAULT NULL,
  `electrical_stability_min` double DEFAULT NULL,
  `electrical_stability_max` double DEFAULT NULL,
  `oil_water_ratio_min` varchar(255) DEFAULT NULL,
  `oil_water_ratio_max` varchar(255) DEFAULT NULL,
  `property1_min` double DEFAULT NULL,
  `property1_max` double DEFAULT NULL,
  `property2_min` double DEFAULT NULL,
  `property2_max` double DEFAULT NULL,
  `property3_min` double DEFAULT NULL,
  `property3_max` double DEFAULT NULL,
  `comment` text,
  `modification_time` datetime DEFAULT NULL,
  `density_min` double DEFAULT NULL,
  `density_max` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `planned_mud_property_fluid_type` (`fluid_type_id`),
  KEY `planned_mud_property_event_report` (`event_id`,`planned_report_id`),
  KEY `wellbore_planned_mud_property_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_mud_property`
--

LOCK TABLES `planned_mud_property` WRITE;
/*!40000 ALTER TABLE `planned_mud_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_mud_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_operation`
--

DROP TABLE IF EXISTS `planned_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wellbore_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `operation_type_id` bigint(20) DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `description` mediumtext,
  `drilled_depth` double DEFAULT NULL,
  `depth_from` double DEFAULT NULL,
  `stage_type_id` bigint(20) DEFAULT NULL,
  `activity_type_id` bigint(20) DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_type_id_index` (`activity_type_id`),
  KEY `event_planned_report_planned_operation_index` (`event_id`,`planned_report_id`),
  KEY `operation_type_id_index` (`operation_type_id`),
  KEY `report_position_in_list_planned_operation_index` (`planned_report_id`,`position_in_list`),
  KEY `stage_type_id_index` (`stage_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_operation`
--

LOCK TABLES `planned_operation` WRITE;
/*!40000 ALTER TABLE `planned_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_report`
--

DROP TABLE IF EXISTS `planned_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_report_general_info_id` bigint(20) NOT NULL,
  `number` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_event_id_planned_report` (`number`,`event_id`),
  KEY `event_planned_report_general_info_id_index` (`planned_report_general_info_id`,`event_id`),
  KEY `planned_report_date_index` (`date`),
  KEY `planned_report_event_id_index` (`event_id`),
  KEY `planned_report_well_id_index` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_report`
--

LOCK TABLES `planned_report` WRITE;
/*!40000 ALTER TABLE `planned_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_report_general_info`
--

DROP TABLE IF EXISTS `planned_report_general_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_report_general_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `document_type_id` bigint(20) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active_event_planned_report_general_info_index` (`active`,`event_id`),
  KEY `planned_report_general_info_event_index` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_report_general_info`
--

LOCK TABLES `planned_report_general_info` WRITE;
/*!40000 ALTER TABLE `planned_report_general_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_report_general_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_rheological_mechanical_property`
--

DROP TABLE IF EXISTS `planned_rheological_mechanical_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_rheological_mechanical_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planned_cementing_fluid_id` bigint(20) NOT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `temperature` double DEFAULT NULL,
  `density` double DEFAULT NULL,
  `viscosity` double DEFAULT NULL,
  `fluid_loss_vol` double DEFAULT NULL,
  `thickening_time` bigint(20) DEFAULT NULL,
  `initial_setting_time` bigint(20) DEFAULT NULL,
  `final_setting_time` bigint(20) DEFAULT NULL,
  `bend_strength` double DEFAULT NULL,
  `compressive_strength` double DEFAULT NULL,
  `permeability` double DEFAULT NULL,
  `plastic_viscosity` double DEFAULT NULL,
  `yield_point` double DEFAULT NULL,
  `fluid_loss` double DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_fluid_plan_mechanical_property_index` (`event_id`,`planned_report_id`,`planned_cementing_fluid_id`),
  KEY `planned_report_plan_mechanical_property_index` (`planned_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_rheological_mechanical_property`
--

LOCK TABLES `planned_rheological_mechanical_property` WRITE;
/*!40000 ALTER TABLE `planned_rheological_mechanical_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_rheological_mechanical_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planned_tubular_assembly`
--

DROP TABLE IF EXISTS `planned_tubular_assembly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planned_tubular_assembly` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_class_id` bigint(20) DEFAULT NULL,
  `is_combined` bit(1) DEFAULT NULL,
  `previous_planned_tubular_assembly_id` bigint(20) DEFAULT NULL,
  `assembly_nominal_size` double DEFAULT NULL,
  `measured_depth_top` double DEFAULT NULL,
  `measured_depth_bottom` double DEFAULT NULL,
  `planned_report_id` bigint(20) NOT NULL,
  `string_type_id` bigint(20) NOT NULL,
  `top_to_bottom` bit(1) NOT NULL DEFAULT b'0',
  `name` varchar(255) DEFAULT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `hole_diameter` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_calculate_from_top` bit(1) DEFAULT b'0',
  `correction` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_string_type_plan_tubular_assembly_index` (`event_id`,`planned_report_id`,`string_type_id`),
  KEY `previous_planned_tubular_assembly_index` (`previous_planned_tubular_assembly_id`),
  KEY `wellbore_planned_tubular_assembly_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planned_tubular_assembly`
--

LOCK TABLES `planned_tubular_assembly` WRITE;
/*!40000 ALTER TABLE `planned_tubular_assembly` DISABLE KEYS */;
/*!40000 ALTER TABLE `planned_tubular_assembly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precipitation_type`
--

DROP TABLE IF EXISTS `precipitation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precipitation_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_precipitation_type_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precipitation_type`
--

LOCK TABLES `precipitation_type` WRITE;
/*!40000 ALTER TABLE `precipitation_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `precipitation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pull_reason`
--

DROP TABLE IF EXISTS `pull_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pull_reason` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pull_reason`
--

LOCK TABLES `pull_reason` WRITE;
/*!40000 ALTER TABLE `pull_reason` DISABLE KEYS */;
INSERT INTO `pull_reason` VALUES (1,'BHA','\0','2020-04-16 12:33:13'),(2,'CM','\0','2020-04-16 12:33:13'),(3,'CP','\0','2020-04-16 12:33:13'),(4,'DMF','\0','2020-04-16 12:33:13'),(5,'DP','\0','2020-04-16 12:33:13'),(6,'DST','\0','2020-04-16 12:33:13'),(7,'DTF','\0','2020-04-16 12:33:13'),(8,'FM','\0','2020-04-16 12:33:13'),(9,'HP','\0','2020-04-16 12:33:13'),(10,'HR','\0','2020-04-16 12:33:13'),(11,'LOG','\0','2020-04-16 12:33:13'),(12,'PP','\0','2020-04-16 12:33:13'),(13,'PR','\0','2020-04-16 12:33:13'),(14,'RIG','\0','2020-04-16 12:33:13'),(15,'TD','\0','2020-04-16 12:33:13'),(16,'TQ','\0','2020-04-16 12:33:13'),(17,'TW','\0','2020-04-16 12:33:13'),(18,'WC','\0','2020-04-16 12:33:13'),(19,'DSF','\0','2020-04-16 12:33:13'),(20,'WO','\0','2020-04-16 12:33:13'),(21,'RS','\0','2020-04-16 12:33:13'),(22,'LIH','\0','2020-04-16 12:33:13');
/*!40000 ALTER TABLE `pull_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump`
--

DROP TABLE IF EXISTS `pump`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rig_owner_id` bigint(20) DEFAULT NULL,
  `pump_type_id` bigint(20) DEFAULT NULL,
  `pump_number` varchar(255) DEFAULT NULL,
  `pump_model_id` bigint(20) DEFAULT NULL,
  `is_double_acting` bit(1) NOT NULL DEFAULT b'0',
  `number_of_cylinders` bigint(20) DEFAULT NULL,
  `stroke_length` double DEFAULT NULL,
  `efficiency` double DEFAULT NULL,
  `rod_outside_diameter` double DEFAULT NULL,
  `remarks` mediumtext,
  `aggregate_manufacturer_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pump_type_pump_index` (`pump_type_id`),
  KEY `pump_model_pump_index` (`pump_model_id`),
  KEY `manufacturer_model_pump_index` (`aggregate_manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump`
--

LOCK TABLES `pump` WRITE;
/*!40000 ALTER TABLE `pump` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump_and_rig_relation`
--

DROP TABLE IF EXISTS `pump_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `pump_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_pump_and_rig_relation_index` (`rig_id`),
  KEY `pump_pump_and_rig_relation_index` (`pump_id`),
  KEY `pos_pump_pump_and_rig_relation_index` (`position_in_list`,`pump_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_and_rig_relation`
--

LOCK TABLES `pump_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `pump_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump_model`
--

DROP TABLE IF EXISTS `pump_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_model`
--

LOCK TABLES `pump_model` WRITE;
/*!40000 ALTER TABLE `pump_model` DISABLE KEYS */;
INSERT INTO `pump_model` VALUES (1,'УНБТ 1180L1','2020-11-18 12:52:25','\0');
/*!40000 ALTER TABLE `pump_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump_operation`
--

DROP TABLE IF EXISTS `pump_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pump_id` bigint(20) NOT NULL,
  `inside_diameter_liner` double DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `flow_rate` double DEFAULT NULL,
  `spm` double DEFAULT NULL,
  `operation_time` time DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_pump_pump_operation_index` (`event_id`,`daily_report_id`,`pump_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_operation`
--

LOCK TABLES `pump_operation` WRITE;
/*!40000 ALTER TABLE `pump_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pump_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pump_type`
--

DROP TABLE IF EXISTS `pump_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pump_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pump_type`
--

LOCK TABLES `pump_type` WRITE;
/*!40000 ALTER TABLE `pump_type` DISABLE KEYS */;
INSERT INTO `pump_type` VALUES (1,'Центробежный','2020-08-19 21:05:03','\0'),(2,'Дуплекс','2020-08-19 21:05:03','\0'),(3,'Триплекс','2020-08-19 21:05:03','\0');
/*!40000 ALTER TABLE `pump_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `number` bigint(20) NOT NULL,
  `report_type_id` bigint(20) NOT NULL,
  `event_type_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `modifier_id` bigint(20) NOT NULL,
  `is_ready` bit(1) DEFAULT NULL,
  `remarks` mediumtext,
  `is_valid` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_id_report_type_id_report_uniq` (`report_id`,`report_type_id`),
  KEY `date_report_index` (`date`),
  KEY `event_report_index` (`event_id`),
  KEY `event_type_id_report_index` (`event_type_id`),
  KEY `modifier_report_index` (`modifier_id`),
  KEY `report_number_index` (`number`),
  KEY `report_type_id_report_index` (`report_type_id`),
  KEY `well_report_index` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_form`
--

DROP TABLE IF EXISTS `report_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unmodifiable` bit(1) NOT NULL DEFAULT b'0',
  `report_type_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_form`
--

LOCK TABLES `report_form` WRITE;
/*!40000 ALTER TABLE `report_form` DISABLE KEYS */;
INSERT INTO `report_form` VALUES (1,'',1,'Форма суточного рапорта',NULL,'2020-04-16 12:26:31'),(2,'',2,'Форма рапорта по планированию',NULL,'2020-04-16 12:26:31'),(3,'',3,'Форма рапорта по цементированию',NULL,'2020-04-16 12:28:43'),(4,'',4,'Форма рапорта по креплениям',NULL,'2020-04-16 12:28:55'),(5,'',5,'Форма рапорта \'Мера\'',NULL,'2020-08-19 21:10:52');
/*!40000 ALTER TABLE `report_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_section`
--

DROP TABLE IF EXISTS `report_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unmodifiable` bit(1) NOT NULL DEFAULT b'0',
  `report_form_id` bigint(20) NOT NULL,
  `report_section_dictionary_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  `simple` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_report_form_id_report_section` (`name`,`report_form_id`),
  KEY `dictionary_report_section_index` (`report_section_dictionary_id`),
  KEY `report_form_report_section_index` (`report_form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_section`
--

LOCK TABLES `report_section` WRITE;
/*!40000 ALTER TABLE `report_section` DISABLE KEYS */;
INSERT INTO `report_section` VALUES (1,'',1,1,'Конструкция скважины','\0','2020-04-16 12:26:31','\0'),(2,'',1,2,'Материалы','\0','2020-04-16 12:26:31','\0'),(3,'',1,3,'Операции','\0','2020-04-16 12:26:31','\0'),(4,'',1,4,'Инциденты','\0','2020-04-16 12:26:31','\0'),(5,'',2,5,'Конструкция скважины','\0','2020-04-16 12:26:31','\0'),(6,'',2,6,'Расход материалов','\0','2020-04-16 12:26:31','\0'),(7,'',2,7,'Операции','\0','2020-04-16 12:26:31','\0'),(8,'',1,8,'Персонал подрядчика','\0','2020-04-16 12:26:55','\0'),(9,'',1,9,'Объемы','\0','2020-04-16 12:27:40','\0'),(10,'',1,10,'Бурильные колонны','\0','2020-04-16 12:27:56','\0'),(11,'',2,11,'Бурильные колонны','\0','2020-04-16 12:27:56','\0'),(12,'',1,12,'Инструменты','\0','2020-04-16 12:28:00','\0'),(13,'',1,13,'Общие сведения','\0','2020-04-16 12:28:24','\0'),(14,'',2,14,'Общие сведения','\0','2020-04-16 12:28:24','\0'),(15,'',1,15,'Параметры промывочной жидкости','\0','2020-04-16 12:28:25','\0'),(16,'',2,16,'Параметры промывочной жидкости','\0','2020-04-16 12:28:25','\0'),(17,'',3,17,'Общие сведения','\0','2020-04-16 12:28:54','\0'),(18,'',2,18,'Крепления','\0','2020-04-16 12:28:38','\0'),(19,'',4,19,'Общие сведения','\0','2020-04-16 12:28:56','\0'),(20,'',2,20,'Цементирование','\0','2020-04-16 12:28:46','\0'),(21,'',1,21,'Инклинометрия','\0','2020-04-16 12:29:04','\0'),(22,'',5,22,'Общие сведения','\0','2020-08-19 21:10:52','\0'),(23,'',5,23,'Мера','\0','2020-08-19 21:10:52','\0'),(24,'',1,24,'Буровые насосы','\0','2020-08-19 21:12:46','\0'),(25,'',1,25,'Погода','\0','2020-08-19 21:12:49','\0'),(26,'',1,26,'Работа системы очистки','\0','2020-08-19 21:12:51','\0'),(27,'',1,27,'Работа спецтехники','\0','2020-08-19 21:14:36','\0'),(28,'',1,28,'Интервалы освоения','\0','2020-08-19 21:14:42','\0');
/*!40000 ALTER TABLE `report_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_section_dictionary`
--

DROP TABLE IF EXISTS `report_section_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_section_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_type_id` bigint(20) NOT NULL,
  `route_alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_report_type_id_report_section_dictionary` (`name`,`report_type_id`),
  UNIQUE KEY `report_type_id_route_alias_report_section_dictionary` (`report_type_id`,`route_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_section_dictionary`
--

LOCK TABLES `report_section_dictionary` WRITE;
/*!40000 ALTER TABLE `report_section_dictionary` DISABLE KEYS */;
INSERT INTO `report_section_dictionary` VALUES (1,1,'well-construction-section','Конструкция скважины','\0','2020-04-16 12:26:31'),(2,1,'material-section','Материалы','\0','2020-04-16 12:26:31'),(3,1,'operation-section','Операции','\0','2020-04-16 12:26:31'),(4,1,'incident-section','Инциденты','\0','2020-04-16 12:26:31'),(5,2,'well-construction-section','Конструкция скважины','\0','2020-04-16 12:26:31'),(6,2,'material-section','Материалы','\0','2020-04-16 12:26:31'),(7,2,'operation-section','Операции','\0','2020-04-16 12:26:31'),(8,1,'contractor-staff-section','Персонал подрядчика','\0','2020-04-16 12:26:55'),(9,1,'fluid-volume-section','Объемы','\0','2020-04-16 12:27:40'),(10,1,'drilling-string-section','Бурильные колонны','\0','2020-04-16 12:27:56'),(11,2,'drilling-string-section','Бурильные колонны','\0','2020-04-16 12:27:56'),(13,1,'general-info-section','Общие сведения','\0','2020-04-16 12:28:24'),(14,2,'general-info-section','Общие сведения','\0','2020-04-16 12:28:24'),(15,1,'fluid-param-section','Параметры промывочной жидкости','\0','2020-04-16 12:28:25'),(16,2,'fluid-param-section','Параметры промывочной жидкости','\0','2020-04-16 12:28:25'),(17,3,'general-info-section','Общие сведения','\0','2020-04-16 12:28:54'),(18,2,'casing-section','Крепления','\0','2020-04-16 12:28:38'),(19,4,'general-info-section','Общие сведения','\0','2020-04-16 12:28:56'),(20,2,'cementing-section','Цементирование','\0','2020-04-16 12:28:46'),(21,1,'survey-section','Инклинометрия','\0','2020-04-16 12:29:04'),(22,5,'general-info-section','Общие сведения','\0','2020-08-19 21:10:52'),(23,5,'pipe-tally-section','Мера','\0','2020-08-19 21:10:52'),(24,1,'pump-section','Буровые насосы','\0','2020-08-19 21:12:46'),(25,1,'weather-section','Погода','\0','2020-08-19 21:12:49'),(26,1,'cleaning-system-operation-section','Работа системы очистки','\0','2020-08-19 21:12:51'),(27,1,'machine-section','Работа спецтехники','\0','2020-08-19 21:14:36'),(28,1,'completion-section','Интервалы освоения','\0','2020-08-19 21:14:41');
/*!40000 ALTER TABLE `report_section_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_type`
--

DROP TABLE IF EXISTS `report_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  `route_alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `route_alias` (`route_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_type`
--

LOCK TABLES `report_type` WRITE;
/*!40000 ALTER TABLE `report_type` DISABLE KEYS */;
INSERT INTO `report_type` VALUES (1,'#37b2ff','daily-report','Суточный','\0','2020-04-16 12:26:31'),(2,'#577d8f','planned-report','Планирование','\0','2020-04-16 12:26:31'),(3,'#9c27b0','cementing-report','Цементирование','\0','2020-04-16 12:28:43'),(4,'#00bcd4','casing-report','Крепление','\0','2020-04-16 12:28:55'),(5,'#ff0766','pipe-tally-report','Мера','\0','2020-08-19 21:10:52');
/*!40000 ALTER TABLE `report_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsible_party`
--

DROP TABLE IF EXISTS `responsible_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsible_party` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `incident_id` bigint(20) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `lost_time` bigint(20) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responsible_party_index_1` (`incident_id`),
  KEY `responsible_party_index_2` (`event_id`,`incident_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsible_party`
--

LOCK TABLES `responsible_party` WRITE;
/*!40000 ALTER TABLE `responsible_party` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsible_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rig`
--

DROP TABLE IF EXISTS `rig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rig` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) NOT NULL,
  `rig_type_id` int(11) DEFAULT NULL,
  `rig_owner_id` int(11) DEFAULT NULL,
  `carrying_capacity` float DEFAULT NULL,
  `top_drive` bit(1) DEFAULT NULL,
  `rig_status_id` int(11) DEFAULT NULL,
  `stand_length` double DEFAULT NULL,
  `external_id` bigint(20) DEFAULT NULL,
  `empty_hook_weight` float DEFAULT NULL,
  `description` text,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rig_unique_constraint_1` (`serial_number`,`rig_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rig`
--

LOCK TABLES `rig` WRITE;
/*!40000 ALTER TABLE `rig` DISABLE KEYS */;
/*!40000 ALTER TABLE `rig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rig_and_drilling_crew_relation`
--

DROP TABLE IF EXISTS `rig_and_drilling_crew_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rig_and_drilling_crew_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `drilling_crew_id` bigint(20) DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_and_drilling_crew_relation_rig_id_index` (`rig_id`),
  KEY `rig_and_drilling_crew_relation_drilling_crew_id_index` (`drilling_crew_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rig_and_drilling_crew_relation`
--

LOCK TABLES `rig_and_drilling_crew_relation` WRITE;
/*!40000 ALTER TABLE `rig_and_drilling_crew_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `rig_and_drilling_crew_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rig_committed_and_uncommitted_ids`
--

DROP TABLE IF EXISTS `rig_committed_and_uncommitted_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rig_committed_and_uncommitted_ids` (
  `entity_name` varchar(255) DEFAULT NULL,
  `committed_id` bigint(20) DEFAULT NULL,
  `uncommitted_id` bigint(20) DEFAULT NULL,
  KEY `rig_committed_and_uncommitted_ids_index_1` (`entity_name`,`uncommitted_id`),
  KEY `rig_committed_and_uncommitted_ids_index_2` (`entity_name`,`committed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rig_committed_and_uncommitted_ids`
--

LOCK TABLES `rig_committed_and_uncommitted_ids` WRITE;
/*!40000 ALTER TABLE `rig_committed_and_uncommitted_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `rig_committed_and_uncommitted_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rig_owner`
--

DROP TABLE IF EXISTS `rig_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rig_owner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rig_owner`
--

LOCK TABLES `rig_owner` WRITE;
/*!40000 ALTER TABLE `rig_owner` DISABLE KEYS */;
INSERT INTO `rig_owner` VALUES (1,'COSL Drilling','\0','2020-11-18 12:51:39');
/*!40000 ALTER TABLE `rig_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rig_status`
--

DROP TABLE IF EXISTS `rig_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rig_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rig_status`
--

LOCK TABLES `rig_status` WRITE;
/*!40000 ALTER TABLE `rig_status` DISABLE KEYS */;
INSERT INTO `rig_status` VALUES (1,'Активна','\0','2020-04-16 12:26:10'),(2,'Неактивна','\0','2020-04-16 12:26:10'),(3,'Выведена из эксплутации','\0','2020-04-16 12:26:10');
/*!40000 ALTER TABLE `rig_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rig_type`
--

DROP TABLE IF EXISTS `rig_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rig_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rig_type`
--

LOCK TABLES `rig_type` WRITE;
/*!40000 ALTER TABLE `rig_type` DISABLE KEYS */;
INSERT INTO `rig_type` VALUES (1,'Наземная','\0','2020-11-18 12:51:32');
/*!40000 ALTER TABLE `rig_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `right_dictionary`
--

DROP TABLE IF EXISTS `right_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right_dictionary` (
  `id` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right_dictionary`
--

LOCK TABLES `right_dictionary` WRITE;
/*!40000 ALTER TABLE `right_dictionary` DISABLE KEYS */;
INSERT INTO `right_dictionary` VALUES ('admin','Admin\'s Console'),('analytics','Analytics'),('dictionaries','Dictionaries'),('equipment','Equipment'),('monitoring','Monitoring'),('rating','Rating'),('reporting','Reporting');
/*!40000 ALTER TABLE `right_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `right_dictionary_item`
--

DROP TABLE IF EXISTS `right_dictionary_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right_dictionary_item` (
  `description` text,
  `name` varchar(255) NOT NULL,
  `dictionary_id` varchar(255) NOT NULL,
  `specific_protected_object_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_right_dictionary_item_id` bigint(20) DEFAULT NULL,
  `permission_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_id_specific_protected_object_id` (`permission_id`,`specific_protected_object_id`),
  KEY `FKdfcauh7erbk74i0r4be10rf03` (`dictionary_id`),
  KEY `permission_id_index` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right_dictionary_item`
--

LOCK TABLES `right_dictionary_item` WRITE;
/*!40000 ALTER TABLE `right_dictionary_item` DISABLE KEYS */;
INSERT INTO `right_dictionary_item` VALUES (NULL,'Пользователи','admin',NULL,1,NULL,'a_users'),(NULL,'Скважины','admin',NULL,2,NULL,'a_wells'),(NULL,'Роли','admin',NULL,3,NULL,'a_roles'),(NULL,'Буровые установки','admin',NULL,4,NULL,'a_rig'),(NULL,'Буровые бригады','admin',NULL,5,NULL,'a_drilling_crew'),(NULL,'Группа безопасности','admin',NULL,6,NULL,'a_security_group'),(NULL,'Аналитика','analytics',NULL,7,NULL,'analytics'),(NULL,'Загрузка данных','analytics',NULL,8,NULL,'analytical_updater'),(NULL,'Справочники','dictionaries',NULL,9,NULL,'d_dictionaries'),(NULL,'Сенсоры','equipment',NULL,10,NULL,'e_sensors'),(NULL,'Узлы','equipment',NULL,11,NULL,'e_nodes'),(NULL,'Рапорт по обследованию','monitoring',NULL,12,NULL,'m_rigs'),(NULL,'Мероприятия','monitoring',NULL,13,NULL,'m_events'),(NULL,'Отчеты','monitoring',NULL,14,NULL,'m_reports'),(NULL,'Все типы мероприятий','reporting',NULL,15,NULL,'r_events'),(NULL,'Суточный рапорт','reporting',NULL,16,15,'daily-report_daily-report'),(NULL,'Секции скважины','reporting',NULL,17,16,'daily-report_well-construction-section'),(NULL,'Материалы','reporting',NULL,18,16,'daily-report_material-section'),(NULL,'Инциденты','reporting',NULL,19,16,'daily-report_incident-section'),(NULL,'Операции','reporting',NULL,20,16,'daily-report_operation-section'),(NULL,'Персонал подрядчика','reporting',NULL,21,16,'daily-report_contractor-staff-section'),(NULL,'Рапорт по планированию','reporting',NULL,22,15,'planned-report_planned-report'),(NULL,'Секции скважины','reporting',NULL,23,22,'planned-report_well-construction-section'),(NULL,'Материалы','reporting',NULL,24,22,'planned-report_material-section'),(NULL,'Операции','reporting',NULL,25,22,'planned-report_operation-section'),(NULL,'Стволы','admin',NULL,26,NULL,'a_wellbore'),(NULL,'Объемы','reporting',NULL,27,16,'daily-report_fluid-volume-section'),(NULL,'Бурильные колонны','reporting',NULL,28,16,'daily-report_drilling-string-section'),(NULL,'Бурильные колонны','reporting',NULL,29,22,'planned-report_drilling-string-section'),(NULL,'Оборудование','admin',NULL,30,4,'a_equipment'),(NULL,'Общие сведения','reporting',NULL,33,16,'daily-report_general-info-section'),(NULL,'Общие сведения','reporting',NULL,34,22,'planned-report_general-info-section'),(NULL,'Параметры промывочной жидкости','reporting',NULL,35,16,'daily-report_fluid-param-section'),(NULL,'Параметры промывочной жидкости','reporting',NULL,36,22,'planned-report_fluid-param-section'),(NULL,'Крепления','reporting',NULL,38,22,'planned-report_casing-section'),(NULL,'Цементирование','reporting',NULL,40,22,'planned-report_cementing-section'),(NULL,'Цементирование','reporting',NULL,41,15,'cementing-report_cementing-report'),(NULL,'Общие сведения','reporting',NULL,42,41,'cementing-report_general-info-section'),(NULL,'Крепление','reporting',NULL,43,15,'casing-report_casing-report'),(NULL,'Общие сведения','reporting',NULL,44,43,'casing-report_general-info-section'),(NULL,'Инклинометрия','reporting',NULL,45,16,'daily-report_survey-section'),(NULL,'Рапорт \"Мера\"','reporting',NULL,46,15,'pipe-tally-report_pipe-tally-report'),(NULL,'Общие сведения','reporting',NULL,47,46,'pipe-tally-report_general-info-section'),(NULL,'Мера','reporting',NULL,48,46,'pipe-tally-report_pipe-tally-section'),(NULL,'Буровые насосы','reporting',NULL,49,16,'daily-report_pump-section'),(NULL,'Погода','reporting',NULL,50,16,'daily-report_weather-section'),(NULL,'Рейтинг','rating',NULL,51,NULL,'rating'),(NULL,'Работа системы очистки','reporting',NULL,52,16,'daily-report_cleaning-system-operation-section'),(NULL,'Работа спецтехники','reporting',NULL,53,16,'daily-report_machine-section'),(NULL,'Интервалы освоения','reporting',NULL,54,16,'daily-report_completion-section'),(NULL,'Состав ОК','reporting',NULL,55,43,'casing-report_casing-composition-section'),(NULL,'Спуск ОК','reporting',NULL,56,43,'casing-report_casing-lowering-section'),(NULL,'Наружная тех. оснастка','reporting',NULL,57,43,'casing-report_external-assembly-attachment-section'),(NULL,'Промывки','reporting',NULL,58,43,'casing-report_casing-circulation-section'),(NULL,'Операции','reporting',NULL,59,41,'cementing-report_operation-section'),(NULL,'Возможные осложнения','reporting',NULL,60,22,'planned-report_risk-section'),(NULL,'ОТ, ПБ и ООС','reporting',NULL,61,16,'daily-report_pressure-section'),(NULL,'Плановая траектория','reporting',NULL,62,22,'planned-report_survey-section'),(NULL,'Геологические характеристики разреза','reporting',NULL,63,22,'planned-report_wellbore-geology-section'),(NULL,'Жидкости','reporting',NULL,64,41,'cementing-report_cementing-fluid-section');
/*!40000 ALTER TABLE `right_dictionary_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(7) DEFAULT NULL,
  `description` text,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'#009624','','Администратор','2020-11-18 12:53:48'),(2,'#4184f3',NULL,'All','2020-11-18 12:53:48');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_and_security_groups`
--

DROP TABLE IF EXISTS `roles_and_security_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_and_security_groups` (
  `role_id` bigint(20) NOT NULL,
  `security_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`security_group_id`),
  KEY `roles_and_security_groups_index_1` (`security_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_and_security_groups`
--

LOCK TABLES `roles_and_security_groups` WRITE;
/*!40000 ALTER TABLE `roles_and_security_groups` DISABLE KEYS */;
INSERT INTO `roles_and_security_groups` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `roles_and_security_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `module_id` varchar(255) NOT NULL,
  `module_name_ru` varchar(255) NOT NULL,
  `module_name_en` varchar(255) DEFAULT NULL,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss_model`
--

DROP TABLE IF EXISTS `rss_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rss_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rss_model`
--

LOCK TABLES `rss_model` WRITE;
/*!40000 ALTER TABLE `rss_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `rss_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_id` varchar(255) NOT NULL,
  `create_action` bit(1) NOT NULL,
  `dictionary_id` varchar(255) NOT NULL,
  `specific_protected_object_id` bigint(20) DEFAULT NULL,
  `edit_action` bit(1) NOT NULL,
  `view_action` bit(1) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_id_specific_protected_object_id_rule` (`permission_id`,`specific_protected_object_id`,`role_id`),
  KEY `FKnme9gfi0vlwejxpgkfgrjsbv6` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (20,'a_security_group','','admin',NULL,'','',1),(21,'a_users','','admin',NULL,'','',1),(22,'a_roles','','admin',NULL,'','',1),(133,'a_users','','admin',NULL,'','',2),(134,'a_wells','','admin',NULL,'','',2),(135,'a_roles','','admin',NULL,'','',2),(136,'a_rig','','admin',NULL,'','',2),(137,'a_equipment','','admin',NULL,'','',2),(138,'a_drilling_crew','','admin',NULL,'','',2),(139,'a_security_group','','admin',NULL,'','',2),(140,'analytics','','analytics',NULL,'','',2),(141,'analytical_updater','','analytics',NULL,'','',2),(142,'d_dictionaries','','dictionaries',NULL,'','',2),(143,'e_sensors','','equipment',NULL,'','',2),(144,'e_nodes','','equipment',NULL,'','',2),(145,'m_rigs','','monitoring',NULL,'','',2),(146,'m_events','','monitoring',NULL,'','',2),(147,'m_reports','','monitoring',NULL,'','',2),(148,'r_events','','reporting',NULL,'','',2),(149,'daily-report_daily-report','','reporting',NULL,'','',2),(150,'daily-report_well-construction-section','','reporting',NULL,'','',2),(151,'daily-report_material-section','','reporting',NULL,'','',2),(152,'daily-report_incident-section','','reporting',NULL,'','',2),(153,'daily-report_operation-section','','reporting',NULL,'','',2),(154,'daily-report_contractor-staff-section','','reporting',NULL,'','',2),(155,'daily-report_fluid-volume-section','','reporting',NULL,'','',2),(156,'daily-report_drilling-string-section','','reporting',NULL,'','',2),(157,'daily-report_general-info-section','','reporting',NULL,'','',2),(158,'daily-report_fluid-param-section','','reporting',NULL,'','',2),(159,'daily-report_survey-section','','reporting',NULL,'','',2),(160,'daily-report_pump-section','','reporting',NULL,'','',2),(161,'daily-report_weather-section','','reporting',NULL,'','',2),(162,'daily-report_cleaning-system-operation-section','','reporting',NULL,'','',2),(163,'daily-report_machine-section','','reporting',NULL,'','',2),(164,'daily-report_completion-section','','reporting',NULL,'','',2),(165,'daily-report_pressure-section','','reporting',NULL,'','',2),(166,'planned-report_planned-report','','reporting',NULL,'','',2),(167,'planned-report_well-construction-section','','reporting',NULL,'','',2),(168,'planned-report_material-section','','reporting',NULL,'','',2),(169,'planned-report_operation-section','','reporting',NULL,'','',2),(170,'planned-report_drilling-string-section','','reporting',NULL,'','',2),(171,'planned-report_general-info-section','','reporting',NULL,'','',2),(172,'planned-report_fluid-param-section','','reporting',NULL,'','',2),(173,'planned-report_casing-section','','reporting',NULL,'','',2),(174,'planned-report_cementing-section','','reporting',NULL,'','',2),(175,'planned-report_risk-section','','reporting',NULL,'','',2),(176,'planned-report_survey-section','','reporting',NULL,'','',2),(177,'planned-report_wellbore-geology-section','','reporting',NULL,'','',2),(178,'cementing-report_cementing-report','','reporting',NULL,'','',2),(179,'cementing-report_general-info-section','','reporting',NULL,'','',2),(180,'cementing-report_operation-section','','reporting',NULL,'','',2),(181,'cementing-report_cementing-fluid-section','','reporting',NULL,'','',2),(182,'casing-report_casing-report','','reporting',NULL,'','',2),(183,'casing-report_general-info-section','','reporting',NULL,'','',2),(184,'casing-report_casing-composition-section','','reporting',NULL,'','',2),(185,'casing-report_casing-lowering-section','','reporting',NULL,'','',2),(186,'casing-report_external-assembly-attachment-section','','reporting',NULL,'','',2),(187,'casing-report_casing-circulation-section','','reporting',NULL,'','',2),(188,'pipe-tally-report_pipe-tally-report','','reporting',NULL,'','',2),(189,'pipe-tally-report_general-info-section','','reporting',NULL,'','',2),(190,'pipe-tally-report_pipe-tally-section','','reporting',NULL,'','',2),(191,'a_wellbore','','admin',NULL,'','',2),(192,'rating','','rating',NULL,'','',2);
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_source`
--

DROP TABLE IF EXISTS `sample_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_source` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_source`
--

LOCK TABLES `sample_source` WRITE;
/*!40000 ALTER TABLE `sample_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_name`
--

DROP TABLE IF EXISTS `section_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_name`
--

LOCK TABLES `section_name` WRITE;
/*!40000 ALTER TABLE `section_name` DISABLE KEYS */;
INSERT INTO `section_name` VALUES (1,'Направление','\0','2020-04-16 12:26:46'),(2,'Кондуктор','\0','2020-04-16 12:26:46'),(3,'Техническая колонна','\0','2020-04-16 12:26:46'),(4,'Промежуточная колонна','\0','2020-04-16 12:26:46'),(5,'1-я Промежуточная колонна','\0','2020-04-16 12:26:46'),(6,'2-я Промежуточная колонна','\0','2020-04-16 12:26:46'),(7,'3-я Промежуточная колонна','\0','2020-04-16 12:26:46'),(8,'Потайная колонна','\0','2020-04-16 12:26:46'),(9,'Эксплуатационная колонна','\0','2020-04-16 12:26:46'),(10,'Эксплуатационный хвостовик','\0','2020-04-16 12:26:46'),(11,'Хвостовик','\0','2020-04-16 12:26:46');
/*!40000 ALTER TABLE `section_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_order`
--

DROP TABLE IF EXISTS `section_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `report_form_id` bigint(20) DEFAULT NULL,
  `report_section_dictionary_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_order_index_1` (`user_id`,`report_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_order`
--

LOCK TABLES `section_order` WRITE;
/*!40000 ALTER TABLE `section_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `section_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_status`
--

DROP TABLE IF EXISTS `section_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `report_section_dictionary_id` bigint(20) NOT NULL,
  `report_id` bigint(20) NOT NULL,
  `is_ready` bit(1) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `report_section_dictionary_id_section_status_uniq` (`report_id`,`report_section_dictionary_id`),
  KEY `section_status_dictionary_index` (`report_section_dictionary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_status`
--

LOCK TABLES `section_status` WRITE;
/*!40000 ALTER TABLE `section_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `section_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_event`
--

DROP TABLE IF EXISTS `security_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `event_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `security_event_index_1` (`module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_event`
--

LOCK TABLES `security_event` WRITE;
/*!40000 ALTER TABLE `security_event` DISABLE KEYS */;
INSERT INTO `security_event` VALUES (1,'EQUIPMENT','admin',0),(2,'RATING','admin',0),(3,'NOTIFICATION','admin',0),(5,'MONITORING','admin',0),(6,'REPORTING','admin',0),(7,'ES_FILLER','admin',0),(8,'ANALYTICS','admin',0),(9,'AUTH','admin',0);
/*!40000 ALTER TABLE `security_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_filter`
--

DROP TABLE IF EXISTS `security_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_filter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `security_group_id` bigint(20) NOT NULL,
  `entity_name_id` bigint(20) NOT NULL,
  `entity_field_name` varchar(255) DEFAULT NULL,
  `entity_field_value` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `four_fields_security_filter_uniq` (`security_group_id`,`entity_name_id`,`entity_field_name`,`entity_field_value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_filter`
--

LOCK TABLES `security_filter` WRITE;
/*!40000 ALTER TABLE `security_filter` DISABLE KEYS */;
INSERT INTO `security_filter` VALUES (1,1,3,NULL,NULL,NULL),(2,1,2,NULL,NULL,'2020-08-19 22:14:56'),(3,1,1,NULL,NULL,'2020-08-19 22:14:58');
/*!40000 ALTER TABLE `security_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_group`
--

DROP TABLE IF EXISTS `security_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unchangeable` bit(1) NOT NULL DEFAULT b'0',
  `description` text,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_group`
--

LOCK TABLES `security_group` WRITE;
/*!40000 ALTER TABLE `security_group` DISABLE KEYS */;
INSERT INTO `security_group` VALUES (1,'Группа безопасности для админа','',NULL,'2020-04-16 12:26:49');
/*!40000 ALTER TABLE `security_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_service_type_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shaker`
--

DROP TABLE IF EXISTS `shaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shaker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cascade_level` bigint(20) DEFAULT NULL,
  `model_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `number_of_decks` bigint(20) DEFAULT NULL,
  `flow_capacity` double DEFAULT NULL,
  `is_mud_cleaner` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_shaker_index` (`type_id`),
  KEY `model_shaker_index` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shaker`
--

LOCK TABLES `shaker` WRITE;
/*!40000 ALTER TABLE `shaker` DISABLE KEYS */;
/*!40000 ALTER TABLE `shaker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shaker_and_rig_relation`
--

DROP TABLE IF EXISTS `shaker_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shaker_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `start_time` date NOT NULL,
  `finish_time` date DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `shaker_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rig_shaker_and_rig_relation_index` (`rig_id`),
  KEY `shaker_shaker_and_rig_relation_index` (`shaker_id`),
  KEY `pos_shaker_and_rig_relation_index` (`position_in_list`,`shaker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shaker_and_rig_relation`
--

LOCK TABLES `shaker_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `shaker_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `shaker_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shaker_model`
--

DROP TABLE IF EXISTS `shaker_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shaker_model` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shaker_model`
--

LOCK TABLES `shaker_model` WRITE;
/*!40000 ALTER TABLE `shaker_model` DISABLE KEYS */;
INSERT INTO `shaker_model` VALUES (1,'Falcon 4','2020-11-18 12:52:31','\0');
/*!40000 ALTER TABLE `shaker_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shaker_operation`
--

DROP TABLE IF EXISTS `shaker_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shaker_operation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shaker_id` bigint(20) NOT NULL,
  `screen_covered` double DEFAULT NULL,
  `mesh_size` varchar(255) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `equipment_condition_id` bigint(20) DEFAULT NULL,
  `remarks` mediumtext,
  `operation_time` time DEFAULT NULL,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_pump_shaker_operation_index` (`event_id`,`daily_report_id`,`shaker_id`),
  KEY `operation_time_shaker_operation_index` (`operation_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shaker_operation`
--

LOCK TABLES `shaker_operation` WRITE;
/*!40000 ALTER TABLE `shaker_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `shaker_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shaker_type`
--

DROP TABLE IF EXISTS `shaker_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shaker_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shaker_type`
--

LOCK TABLES `shaker_type` WRITE;
/*!40000 ALTER TABLE `shaker_type` DISABLE KEYS */;
INSERT INTO `shaker_type` VALUES (1,'Осушающее вибросито','2020-11-18 12:53:21','\0');
/*!40000 ALTER TABLE `shaker_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharing_status`
--

DROP TABLE IF EXISTS `sharing_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharing_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharing_status`
--

LOCK TABLES `sharing_status` WRITE;
/*!40000 ALTER TABLE `sharing_status` DISABLE KEYS */;
INSERT INTO `sharing_status` VALUES (1,'Индивидуальный','\0','2020-04-16 12:26:24'),(2,'Общий','\0','2020-04-16 12:26:24'),(3,'Закрытый','\0','2020-04-16 12:26:24');
/*!40000 ALTER TABLE `sharing_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_protected_object`
--

DROP TABLE IF EXISTS `specific_protected_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specific_protected_object` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_name_id` bigint(20) NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id_name_specific_protected_object_uniq` (`entity_id`,`entity_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_protected_object`
--

LOCK TABLES `specific_protected_object` WRITE;
/*!40000 ALTER TABLE `specific_protected_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `specific_protected_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_type`
--

DROP TABLE IF EXISTS `stage_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_in_list` bigint(20) DEFAULT NULL,
  `section_related` bit(1) NOT NULL DEFAULT b'0',
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_type`
--

LOCK TABLES `stage_type` WRITE;
/*!40000 ALTER TABLE `stage_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string_class`
--

DROP TABLE IF EXISTS `string_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `string_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_string_class_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string_class`
--

LOCK TABLES `string_class` WRITE;
/*!40000 ALTER TABLE `string_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `string_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `string_type`
--

DROP TABLE IF EXISTS `string_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `string_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string_type`
--

LOCK TABLES `string_type` WRITE;
/*!40000 ALTER TABLE `string_type` DISABLE KEYS */;
INSERT INTO `string_type` VALUES (1,'Бурильная',NULL,'\0'),(2,'Обсадная',NULL,'\0'),(3,'Хвостовик',NULL,'\0'),(4,'Потайная',NULL,'\0'),(5,'НК',NULL,'\0'),(6,'ГИС',NULL,'\0');
/*!40000 ALTER TABLE `string_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsoil_user`
--

DROP TABLE IF EXISTS `subsoil_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsoil_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsoil_user`
--

LOCK TABLES `subsoil_user` WRITE;
/*!40000 ALTER TABLE `subsoil_user` DISABLE KEYS */;
INSERT INTO `subsoil_user` VALUES (1,'Газпром ПАО',NULL,'\0','2020-11-18 12:50:55');
/*!40000 ALTER TABLE `subsoil_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_depth` double DEFAULT NULL,
  `finish_depth` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `survey_tool_id` bigint(20) DEFAULT NULL,
  `contractor_id` bigint(20) DEFAULT NULL,
  `north_reference_id` bigint(20) DEFAULT NULL,
  `survey_tie_in_type_id` bigint(20) DEFAULT NULL,
  `previous_survey_id` bigint(20) DEFAULT NULL,
  `engineer` varchar(255) DEFAULT NULL,
  `comment` mediumtext,
  `is_definitive` bit(1) NOT NULL DEFAULT b'0',
  `wellbore_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contractor_survey_index` (`contractor_id`),
  KEY `finish_time_well_survey_index` (`finish_time`,`well_id`),
  KEY `prev_survey_index` (`previous_survey_id`),
  KEY `start_time_well_survey_index` (`start_time`,`well_id`),
  KEY `survey_tool_survey_index` (`survey_tool_id`),
  KEY `well_survey_index` (`well_id`),
  KEY `wellbore_survey_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_station`
--

DROP TABLE IF EXISTS `survey_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext,
  `survey_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `measured_depth` double DEFAULT NULL,
  `incl` double DEFAULT NULL,
  `azimuth` double DEFAULT NULL,
  `true_vertical_depth` double DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `survey_station_type_id` bigint(20) DEFAULT NULL,
  `north` double DEFAULT NULL,
  `east` double DEFAULT NULL,
  `build_rate` double DEFAULT NULL,
  `dls` double DEFAULT NULL,
  `toolface` double DEFAULT NULL,
  `turn_rate` double DEFAULT NULL,
  `vertical_section` double DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `measured_depth_survey_id_survey_station_uniq` (`measured_depth`,`survey_id`),
  KEY `date_survey_station_index` (`date`),
  KEY `position_in_list_survey_station_index` (`survey_id`,`position_in_list`),
  KEY `survey_station_type_survey_station_index` (`survey_station_type_id`),
  KEY `well_survey_station_index` (`well_id`,`survey_id`),
  KEY `wellbore_survey_station_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_station`
--

LOCK TABLES `survey_station` WRITE;
/*!40000 ALTER TABLE `survey_station` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_station_type`
--

DROP TABLE IF EXISTS `survey_station_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_station_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_station_type`
--

LOCK TABLES `survey_station_type` WRITE;
/*!40000 ALTER TABLE `survey_station_type` DISABLE KEYS */;
INSERT INTO `survey_station_type` VALUES (1,'Точка привязки','\0','2020-04-16 12:29:03'),(2,'Глубина-Зенит-Азимут','\0','2020-04-16 12:29:03');
/*!40000 ALTER TABLE `survey_station_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_tie_in_type`
--

DROP TABLE IF EXISTS `survey_tie_in_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_tie_in_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_tie_in_type`
--

LOCK TABLES `survey_tie_in_type` WRITE;
/*!40000 ALTER TABLE `survey_tie_in_type` DISABLE KEYS */;
INSERT INTO `survey_tie_in_type` VALUES (1,'От поверхности','\0','2020-04-16 12:29:03'),(2,'Пользовательская','\0','2020-04-16 12:29:03'),(3,'От замеров','\0','2020-04-16 12:29:03');
/*!40000 ALTER TABLE `survey_tie_in_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_tool`
--

DROP TABLE IF EXISTS `survey_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_tool` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_tool`
--

LOCK TABLES `survey_tool` WRITE;
/*!40000 ALTER TABLE `survey_tool` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_kpi`
--

DROP TABLE IF EXISTS `target_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_kpi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(255) DEFAULT NULL,
  `entity_id` bigint(20) DEFAULT NULL,
  `target_kpi_id` bigint(20) DEFAULT NULL,
  `target_kpi_value` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `target_kpi_index_1` (`entity_name`),
  KEY `target_kpi_index_2` (`entity_id`,`entity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_kpi`
--

LOCK TABLES `target_kpi` WRITE;
/*!40000 ALTER TABLE `target_kpi` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target_kpi_operation_types`
--

DROP TABLE IF EXISTS `target_kpi_operation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target_kpi_operation_types` (
  `target_kpi_id` bigint(20) NOT NULL,
  `operation_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`target_kpi_id`,`operation_type_id`),
  KEY `target_kpi_operation_types_index_1` (`target_kpi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target_kpi_operation_types`
--

LOCK TABLES `target_kpi_operation_types` WRITE;
/*!40000 ALTER TABLE `target_kpi_operation_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `target_kpi_operation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_bar_chart_properties`
--

DROP TABLE IF EXISTS `term_bar_chart_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_bar_chart_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_by_field` varchar(255) NOT NULL,
  `diagram_target_kpi_value` double DEFAULT NULL,
  `filter` text,
  `decor` text,
  `sharing_status_id` int(11) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_bar_chart_properties`
--

LOCK TABLES `term_bar_chart_properties` WRITE;
/*!40000 ALTER TABLE `term_bar_chart_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_bar_chart_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_bar_charts_and_users`
--

DROP TABLE IF EXISTS `term_bar_charts_and_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_bar_charts_and_users` (
  `term_bar_chart_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`term_bar_chart_id`,`user_id`),
  KEY `term_bar_charts_and_users_index_2` (`user_id`),
  KEY `term_bar_charts_and_users_index_1` (`term_bar_chart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_bar_charts_and_users`
--

LOCK TABLES `term_bar_charts_and_users` WRITE;
/*!40000 ALTER TABLE `term_bar_charts_and_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_bar_charts_and_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_chart_kpies`
--

DROP TABLE IF EXISTS `term_chart_kpies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_chart_kpies` (
  `chart_id` bigint(20) NOT NULL,
  `kpi_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`chart_id`,`kpi_type_id`),
  KEY `term_chart_kpies_index_1` (`chart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_chart_kpies`
--

LOCK TABLES `term_chart_kpies` WRITE;
/*!40000 ALTER TABLE `term_chart_kpies` DISABLE KEYS */;
/*!40000 ALTER TABLE `term_chart_kpies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread_connection_type`
--

DROP TABLE IF EXISTS `thread_connection_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thread_connection_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `thread_connection_type_tag_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type_tag_id_thread_connection_type` (`thread_connection_type_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread_connection_type`
--

LOCK TABLES `thread_connection_type` WRITE;
/*!40000 ALTER TABLE `thread_connection_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `thread_connection_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread_connection_type_tag`
--

DROP TABLE IF EXISTS `thread_connection_type_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thread_connection_type_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread_connection_type_tag`
--

LOCK TABLES `thread_connection_type_tag` WRITE;
/*!40000 ALTER TABLE `thread_connection_type_tag` DISABLE KEYS */;
INSERT INTO `thread_connection_type_tag` VALUES (1,'КНБК',NULL,'\0'),(2,'OK','2020-08-19 21:11:16','\0');
/*!40000 ALTER TABLE `thread_connection_type_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_manufacturer`
--

DROP TABLE IF EXISTS `tool_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tool_manufacturer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_manufacturer`
--

LOCK TABLES `tool_manufacturer` WRITE;
/*!40000 ALTER TABLE `tool_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubular_assembly`
--

DROP TABLE IF EXISTS `tubular_assembly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubular_assembly` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tfa` double DEFAULT NULL,
  `below_jar_in_mud` double DEFAULT NULL,
  `below_jar_in_air` double DEFAULT NULL,
  `weight_in_mud` double DEFAULT NULL,
  `weight_in_air` double DEFAULT NULL,
  `previous_tubular_assembly_id` bigint(20) DEFAULT NULL,
  `assembly_nominal_size` double DEFAULT NULL,
  `measured_depth_top` double DEFAULT NULL,
  `measured_depth_bottom` double DEFAULT NULL,
  `top_to_bottom` bit(1) NOT NULL DEFAULT b'0',
  `name` varchar(255) DEFAULT NULL,
  `string_type_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `hole_diameter` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `is_calculate_from_top` bit(1) DEFAULT b'0',
  `correction` double DEFAULT NULL,
  `is_combined` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_string_type_tubular_assembly_index` (`event_id`,`string_type_id`),
  KEY `previous_tubular_assembly_index` (`previous_tubular_assembly_id`),
  KEY `wellbore_tubular_assembly_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubular_assembly`
--

LOCK TABLES `tubular_assembly` WRITE;
/*!40000 ALTER TABLE `tubular_assembly` DISABLE KEYS */;
/*!40000 ALTER TABLE `tubular_assembly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubular_assembly_element`
--

DROP TABLE IF EXISTS `tubular_assembly_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubular_assembly_element` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pin_box_config_id` bigint(20) DEFAULT NULL,
  `number_of_joints` bigint(20) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `outside_diameter` double DEFAULT NULL,
  `inside_diameter` double DEFAULT NULL,
  `grade_id` bigint(20) DEFAULT NULL,
  `tubular_assembly_element_subtype_id` bigint(20) DEFAULT NULL,
  `tubular_assembly_element_type_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `make_up_torque` double DEFAULT NULL,
  `bend_angle` double DEFAULT NULL,
  `normative_document` varchar(512) DEFAULT NULL,
  `tubular_assembly_id` bigint(20) DEFAULT NULL,
  `planned_tubular_assembly_id` bigint(20) DEFAULT NULL,
  `thread_connection_type_top_id` bigint(20) DEFAULT NULL,
  `thread_connection_type_bottom_id` bigint(20) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `remarks` mediumtext,
  PRIMARY KEY (`id`),
  KEY `assembly_position_in_list_element_index` (`tubular_assembly_id`,`position_in_list`),
  KEY `element_type_tubular_assembly_element_index` (`tubular_assembly_element_type_id`),
  KEY `planned_assembly_position_in_list_element_index` (`planned_tubular_assembly_id`,`position_in_list`),
  KEY `planned_tubular_assembly_event_element_element_index` (`event_id`,`planned_tubular_assembly_id`),
  KEY `tubular_assembly_event_element_element_index` (`event_id`,`tubular_assembly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubular_assembly_element`
--

LOCK TABLES `tubular_assembly_element` WRITE;
/*!40000 ALTER TABLE `tubular_assembly_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `tubular_assembly_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubular_assembly_element_subtype`
--

DROP TABLE IF EXISTS `tubular_assembly_element_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubular_assembly_element_subtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `tubular_assembly_element_type_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `element_type_id_tubular_assembly_element_subtype` (`tubular_assembly_element_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubular_assembly_element_subtype`
--

LOCK TABLES `tubular_assembly_element_subtype` WRITE;
/*!40000 ALTER TABLE `tubular_assembly_element_subtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tubular_assembly_element_subtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubular_assembly_element_type`
--

DROP TABLE IF EXISTS `tubular_assembly_element_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubular_assembly_element_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subtypes_count` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `grade_tag_id` bigint(20) DEFAULT NULL,
  `thread_connection_type_tag_id` bigint(20) DEFAULT NULL,
  `software_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `short_name` (`short_name`),
  KEY `connection_type_tag_tubular_assembly_element_type` (`thread_connection_type_tag_id`),
  KEY `grade_tag_id_tubular_assembly_element_type` (`grade_tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubular_assembly_element_type`
--

LOCK TABLES `tubular_assembly_element_type` WRITE;
/*!40000 ALTER TABLE `tubular_assembly_element_type` DISABLE KEYS */;
INSERT INTO `tubular_assembly_element_type` VALUES (1,0,'Долото','ДОЛ',1,1,1,'2020-04-16 12:29:08','\0'),(2,0,'Обсадная труба','ОБС',2,2,2,'2020-08-19 21:11:09','\0'),(4,NULL,'Бурильная труба','БТ',1,1,3,'2020-08-19 21:13:15','\0');
/*!40000 ALTER TABLE `tubular_assembly_element_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tubular_assembly_elements_and_instruments`
--

DROP TABLE IF EXISTS `tubular_assembly_elements_and_instruments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tubular_assembly_elements_and_instruments` (
  `tubular_assembly_element_id` bigint(20) NOT NULL,
  `instrument_id` bigint(20) NOT NULL,
  PRIMARY KEY (`tubular_assembly_element_id`,`instrument_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tubular_assembly_elements_and_instruments`
--

LOCK TABLES `tubular_assembly_elements_and_instruments` WRITE;
/*!40000 ALTER TABLE `tubular_assembly_elements_and_instruments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tubular_assembly_elements_and_instruments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activated` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `only_rig_authentication` bit(1) NOT NULL DEFAULT b'0',
  `temp_password` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `email_user_index` (`email`),
  KEY `username_user_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'','a.stupin@tetra-soft.ru','$2a$04$pO.jO361zgv4ig7s4jC8aOEVnpDOYShTkukPoskbY2VpCUCFR/6ui','admin','','','','Супер','Администратор системы','Администратор','','','2020-09-06 18:05:34','\0','\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_configuration`
--

DROP TABLE IF EXISTS `user_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_configuration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shared` bit(1) NOT NULL,
  `name` varchar(170) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `data` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_configuration_index_1` (`name`,`user_id`),
  KEY `user_configuration_index_2` (`name`,`shared`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_configuration`
--

LOCK TABLES `user_configuration` WRITE;
/*!40000 ALTER TABLE `user_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_and_security_groups`
--

DROP TABLE IF EXISTS `users_and_security_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_and_security_groups` (
  `user_id` bigint(20) NOT NULL,
  `security_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`security_group_id`),
  KEY `users_and_security_groups_index_1` (`user_id`),
  KEY `users_and_security_groups_index_2` (`security_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_and_security_groups`
--

LOCK TABLES `users_and_security_groups` WRITE;
/*!40000 ALTER TABLE `users_and_security_groups` DISABLE KEYS */;
INSERT INTO `users_and_security_groups` VALUES (1,1);
/*!40000 ALTER TABLE `users_and_security_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `daily_report_id` bigint(20) NOT NULL,
  `well_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `check_time` time DEFAULT NULL,
  `atmospheric_pressure` double DEFAULT NULL,
  `temp_current` double DEFAULT NULL,
  `temp_min` double DEFAULT NULL,
  `temp_max` double DEFAULT NULL,
  `wind_chill` double DEFAULT NULL,
  `sea_temp` double DEFAULT NULL,
  `visibility` double DEFAULT NULL,
  `wave_azi` double DEFAULT NULL,
  `wave_height` double DEFAULT NULL,
  `wave_period` double DEFAULT NULL,
  `wind_azi` double DEFAULT NULL,
  `wind_speed` double DEFAULT NULL,
  `wind_gust_azi` double DEFAULT NULL,
  `wind_gust_speed` double DEFAULT NULL,
  `precipitation_type_id` bigint(20) DEFAULT NULL,
  `precipitation_amount` double DEFAULT NULL,
  `ceiling_height` double DEFAULT NULL,
  `comment` mediumtext,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_report_weather_index` (`event_id`,`daily_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well`
--

DROP TABLE IF EXISTS `well`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `well_fluid_id` bigint(20) DEFAULT NULL,
  `formation_id` bigint(20) DEFAULT NULL,
  `well_category_id` bigint(20) DEFAULT NULL,
  `uwi` varchar(32) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `purpose_id` bigint(20) DEFAULT NULL,
  `license_area_id` bigint(20) DEFAULT NULL,
  `liquidated_well_category_id` bigint(20) DEFAULT NULL,
  `field_id` bigint(20) DEFAULT NULL,
  `place_id` bigint(20) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `subsoil_user_id` int(11) DEFAULT NULL,
  `well_status_id` int(11) DEFAULT NULL,
  `well_type_id` int(11) DEFAULT NULL,
  `description` text,
  `cluster_id` int(11) DEFAULT NULL,
  `position_in_cluster` varchar(255) DEFAULT NULL,
  `coordinate_description` varchar(512) DEFAULT NULL,
  `offshore` bit(1) DEFAULT NULL,
  `has_liner` bit(1) DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `timezone_offset` int(11) DEFAULT NULL,
  `alias` varchar(512) DEFAULT NULL,
  `external_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uwi` (`uwi`),
  KEY `cluster_index` (`cluster_id`),
  KEY `rig_id_index` (`rig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well`
--

LOCK TABLES `well` WRITE;
/*!40000 ALTER TABLE `well` DISABLE KEYS */;
/*!40000 ALTER TABLE `well` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_and_rig_relation`
--

DROP TABLE IF EXISTS `well_and_rig_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_and_rig_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `well_id` bigint(20) DEFAULT NULL,
  `rig_id` bigint(20) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `well_and_rig_relation_rig_id_index` (`rig_id`),
  KEY `well_id_index` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_and_rig_relation`
--

LOCK TABLES `well_and_rig_relation` WRITE;
/*!40000 ALTER TABLE `well_and_rig_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `well_and_rig_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_category`
--

DROP TABLE IF EXISTS `well_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_category`
--

LOCK TABLES `well_category` WRITE;
/*!40000 ALTER TABLE `well_category` DISABLE KEYS */;
INSERT INTO `well_category` VALUES (1,'Тестовая категория','2020-11-18 12:51:14','\0');
/*!40000 ALTER TABLE `well_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_fluid`
--

DROP TABLE IF EXISTS `well_fluid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_fluid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_fluid`
--

LOCK TABLES `well_fluid` WRITE;
/*!40000 ALTER TABLE `well_fluid` DISABLE KEYS */;
INSERT INTO `well_fluid` VALUES (1,'Тестовый флюид','2020-11-18 12:51:21','\0');
/*!40000 ALTER TABLE `well_fluid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_license_area`
--

DROP TABLE IF EXISTS `well_license_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_license_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subsoil_user_license_finish` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_license_area`
--

LOCK TABLES `well_license_area` WRITE;
/*!40000 ALTER TABLE `well_license_area` DISABLE KEYS */;
INSERT INTO `well_license_area` VALUES (1,'Ковыктинский',NULL,'\0','2020-11-18 12:50:28');
/*!40000 ALTER TABLE `well_license_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_place`
--

DROP TABLE IF EXISTS `well_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_place` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_place`
--

LOCK TABLES `well_place` WRITE;
/*!40000 ALTER TABLE `well_place` DISABLE KEYS */;
INSERT INTO `well_place` VALUES (1,'Ковыктинская','\0','2020-11-18 12:49:47');
/*!40000 ALTER TABLE `well_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_project`
--

DROP TABLE IF EXISTS `well_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `color` varchar(7) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `cell_number` varchar(255) DEFAULT NULL,
  `user_full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `path_to_logo` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_project`
--

LOCK TABLES `well_project` WRITE;
/*!40000 ALTER TABLE `well_project` DISABLE KEYS */;
INSERT INTO `well_project` VALUES (1,'Восточная Сибирь','\0',NULL,'2020-11-18 12:50:40',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `well_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_purpose`
--

DROP TABLE IF EXISTS `well_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_purpose` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_purpose`
--

LOCK TABLES `well_purpose` WRITE;
/*!40000 ALTER TABLE `well_purpose` DISABLE KEYS */;
INSERT INTO `well_purpose` VALUES (1,'Разведочная','\0','2020-11-18 12:50:46');
/*!40000 ALTER TABLE `well_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_section`
--

DROP TABLE IF EXISTS `well_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `next_casing_tvd` double DEFAULT NULL,
  `next_casing_md` double DEFAULT NULL,
  `next_casing_od` double DEFAULT NULL,
  `is_liner` bit(1) DEFAULT b'0',
  `pilot` bit(1) DEFAULT NULL,
  `measured_depth_from` double DEFAULT NULL,
  `measured_depth_to` double DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `note` varchar(512) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `true_vertical_depth_from` double DEFAULT NULL,
  `true_vertical_depth_to` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `wellbore_id` bigint(20) DEFAULT NULL,
  `well_section_name_id` bigint(20) DEFAULT NULL,
  `planned_report_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `well_planned_report_well_section_index` (`well_id`,`planned_report_id`),
  KEY `wellbore_well_section_index` (`wellbore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_section`
--

LOCK TABLES `well_section` WRITE;
/*!40000 ALTER TABLE `well_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `well_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_section_and_attachment_stages`
--

DROP TABLE IF EXISTS `well_section_and_attachment_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_section_and_attachment_stages` (
  `well_section_id` bigint(20) NOT NULL,
  `attachment_stages_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`well_section_id`,`attachment_stages_type_id`),
  KEY `well_section_and_attachment_stages_index_2` (`attachment_stages_type_id`),
  KEY `well_section_and_attachment_stages_index_1` (`well_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_section_and_attachment_stages`
--

LOCK TABLES `well_section_and_attachment_stages` WRITE;
/*!40000 ALTER TABLE `well_section_and_attachment_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `well_section_and_attachment_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_section_and_drilling_stages`
--

DROP TABLE IF EXISTS `well_section_and_drilling_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_section_and_drilling_stages` (
  `well_section_id` bigint(20) NOT NULL,
  `drilling_stage_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`well_section_id`,`drilling_stage_type_id`),
  KEY `well_section_and_drilling_stages_index_1` (`well_section_id`),
  KEY `well_section_and_drilling_stages_index_2` (`drilling_stage_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_section_and_drilling_stages`
--

LOCK TABLES `well_section_and_drilling_stages` WRITE;
/*!40000 ALTER TABLE `well_section_and_drilling_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `well_section_and_drilling_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_section_element`
--

DROP TABLE IF EXISTS `well_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_section_element` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `remarks` mediumtext,
  `capacity` double DEFAULT NULL,
  `bit_size_id` bigint(20) DEFAULT NULL,
  `cavernosity_rate` double DEFAULT NULL,
  `od_casing` double DEFAULT NULL,
  `well_section_id` bigint(20) NOT NULL,
  `well_section_element_type_id` bigint(20) DEFAULT NULL,
  `position_in_list` bigint(20) DEFAULT NULL,
  `diameter` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `inside_diameter` double DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `unchangeable` bit(1) DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_position_in_list_well_section_element_index` (`well_section_id`,`position_in_list`),
  KEY `well_section_element_type_id_index` (`well_section_element_type_id`),
  KEY `well_section_well_section_element_index` (`well_id`,`well_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_section_element`
--

LOCK TABLES `well_section_element` WRITE;
/*!40000 ALTER TABLE `well_section_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `well_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_section_element_type`
--

DROP TABLE IF EXISTS `well_section_element_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_section_element_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_section_element_type`
--

LOCK TABLES `well_section_element_type` WRITE;
/*!40000 ALTER TABLE `well_section_element_type` DISABLE KEYS */;
INSERT INTO `well_section_element_type` VALUES (1,'Райзер',NULL,'\0'),(2,'Открытый ствол',NULL,'\0'),(3,'Обсаженный ствол',NULL,'\0');
/*!40000 ALTER TABLE `well_section_element_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_section_name`
--

DROP TABLE IF EXISTS `well_section_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_section_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_section_name`
--

LOCK TABLES `well_section_name` WRITE;
/*!40000 ALTER TABLE `well_section_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `well_section_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_status`
--

DROP TABLE IF EXISTS `well_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_status`
--

LOCK TABLES `well_status` WRITE;
/*!40000 ALTER TABLE `well_status` DISABLE KEYS */;
INSERT INTO `well_status` VALUES (1,'В бурении','\0','2020-04-16 12:26:10'),(2,'Закончена бурением','\0','2020-04-16 12:26:10'),(3,'Законсервирована','\0','2020-04-16 12:26:10'),(4,'Испытание','\0','2020-04-16 12:26:10'),(5,'Освоение','\0','2020-04-16 12:26:10'),(6,'Мобилизация','\0','2020-04-16 12:26:10'),(7,'Демобилизация','\0','2020-04-16 12:26:10');
/*!40000 ALTER TABLE `well_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_type`
--

DROP TABLE IF EXISTS `well_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `well_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_type`
--

LOCK TABLES `well_type` WRITE;
/*!40000 ALTER TABLE `well_type` DISABLE KEYS */;
INSERT INTO `well_type` VALUES (1,'Вертикальная','\0','2020-04-16 12:26:10'),(2,'Наклонно-направленная','\0','2020-04-16 12:26:10'),(3,'Горизонтальная','\0','2020-04-16 12:26:10');
/*!40000 ALTER TABLE `well_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wellbore`
--

DROP TABLE IF EXISTS `wellbore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `index_number` bigint(20) NOT NULL,
  `parent_wellbore_id` bigint(20) DEFAULT NULL,
  `planned_true_vertical_depth` double DEFAULT NULL,
  `planned_measured_depth` double DEFAULT NULL,
  `actual_measured_depth` double DEFAULT NULL,
  `wellbore_purpose_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `planned` bit(1) NOT NULL DEFAULT b'1',
  `modification_time` datetime DEFAULT NULL,
  `well_id` bigint(20) NOT NULL,
  `external_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `well_id_index_number_wellbore_uniq` (`well_id`,`index_number`),
  KEY `well_wellbore_index` (`well_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wellbore`
--

LOCK TABLES `wellbore` WRITE;
/*!40000 ALTER TABLE `wellbore` DISABLE KEYS */;
/*!40000 ALTER TABLE `wellbore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wellbore_purpose`
--

DROP TABLE IF EXISTS `wellbore_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wellbore_purpose` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text,
  `name` varchar(255) NOT NULL,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `modification_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wellbore_purpose`
--

LOCK TABLES `wellbore_purpose` WRITE;
/*!40000 ALTER TABLE `wellbore_purpose` DISABLE KEYS */;
INSERT INTO `wellbore_purpose` VALUES (1,NULL,'Разведка','\0','2020-11-18 12:50:50');
/*!40000 ALTER TABLE `wellbore_purpose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-18 16:05:51
