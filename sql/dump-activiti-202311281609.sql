-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: activiti
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('10002',1,'process/oa-leave.png','10001',_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0Ö\0\0\0\Ï\0\0\0M\‹o\0\066IDATx^\ÌùxT\Âùˇ®\’\Ìe’¢R\≈Bïö\ÃÃô1\n≠\≈\ÍE±Æ\Ìn˚t\Ÿm∑\›\ﬁtW\◊\ÓÆV´`[+*V\≈*à∂\Í\ﬂ+\"\"µV¡;Q1	πr	4(\˜òÑ \˜ñ\˜ˇ˛NfÜ\…{rô\\fŒô\Ã\Á\Û<\ﬂgf\ŒyÁúìyœô˘\‰=\ÔyOF\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¶§§dtQQ\—O\ı\„≥eeek\Ùcµ\Œw∂ïññ\Ë\«\«\n/\À\Õ\Õ=\⁄¸å\0\0\0<Kqqq¶ô\◊\ÙcGEEEsuuµjhhPMMM™ππôƒô˝˚\˜´˙˙zUUUu®ºº|ø\Ïv˝π\Œ_µj\’q\Êg\0\0\0\‡rrrFâ¥\Ë¥ië˘§££C}¸\Ò\«dà\“\⁄⁄™6o\ﬁ‹ÆeªI\‚è\Ã\œ\0\0\0¿u÷¨Ysliii\ﬁ∆ç[\⁄\⁄\⁄BCÜ.ççç™¨¨¨E\À\·\\•\‘H≥.\0\0\0\0\\Aã\‡Q%%%•[∑n\Ì†u09ëV\√\Ú\Úr[\Õ˙\0\0\0\0p-Ñ\œTTT¥ö\‚BCi1\‰T2\0\0\0∏NAA¡ì\ˆ\ˆvá¥8”°\ˆ\Ôﬁ¢v\ÔXm?\ kg“ü»©d-\Â\Õ˘˘˘«õu\0\0\0êîR#¥ê¸µÆÆ\Œ!+f\⁄Z’ñÇG‘∫\Â7D≥e\ı#\ˆt≥,\È_\‰\‚π¿«¨\0\0\0Ä§PXXx˛⁄µkõLI\È.ï\Îñv\¬Hd∫Yñ\Ù/r\Zπ®®®çq\0\0¿äãã\ÁWVV4%≈ôµ\·ç[B(ë\ÈúF|dC-\È\ﬂ2\Î\0\0\0 ·îîîT\ \0À¶†ò\È\ËhW\Î_Ω\…!Ñô.\Û\Õ\˜ê˛E∏÷í˛∏YG\0\0\0\0	ß®®\Ë@|ò|¨6\Á?\‰B\…ÊÇáeIˇ#w>)++\À3\Î\0\0\0 °\»`\’r;SNzJ\Û\ﬁ*µ\Ò\ÕY]ÑP^\Àt≥,\È§\≈V\Óïl\÷\0\0\0@B\…\À\ÀWVV\÷l\ Ioikﬁ´™+^U\€K⁄èm-{e\»¿\"\˜J\÷R∏«¨\'\0\0\0ÄÑRPP0æøRH§\0\0\0\\°?RÿºØ\∆n\‹V≤¿\ÓCâºñ\È-˚w9\ﬁC˙§\0\0\0\\!>)Ï∞•o˝äéL∫\\Åºb¶™\Ÿ\Ù∫]ﬁπOêB\0\0\0pÖx§∞\ÊÉ7\ÿ[j>x”±_êB\0\0\0pÖæ§∞µiwèc\ˆ)\ﬂ⁄¥«±,\“wêB\0\0\0pÖæ§∞vsÆC˙\‚I\Ìñw\À\"})\0\0\0W\ËK\n{∫\◊q_©\\∑Ã±,\“wêB\0\0\0pÖæ§p\˜\ˆµs]Nø#\Ô3óE˙R\0\0\0Æ–óí\‰)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\¡m)|z\·3™¶¶\∆1=í\€nø\√~‹øó\«\·\Z§\0\0\0\\°7)‹∑oü∫\ˆó◊´≥\'}U}\˜{ˇ¢6}\Atû/t$2Ø≠≠MÕπ\Á\Í¸o\\†æv\Óy\Í\Ó9\˜\ÿ\”\"\Û\ﬂ?O≠^]h\Á\≈?ø§^˝ç\Ë\Î^|\—.SUUmøæ\Ê\⁄\Î\‘\¬g©3o≤Ö\È\ÂW^Q\ÀWº\Í\ÿ\÷\·§\0\0\0\\°7)º\ı\ˆ\Ÿ\Í\Ì∑W\⁄B∑`¡\”\Í\ﬂ¯\—y±h\ÊO=lK\·û={l…πo\Ó<\ı\‡ˇd\œkkoW\˜¸\·\ﬁh\Ÿ\˜\Û\Ú\‘÷≠[\Ì\ÁUU©eœø`óëuvtt®;\Ô∫€ûy|\Ìµ\◊mYîe\À|s›©§\0\0\0\\°7)¸á)®\Ì\€w\ÿ\œE\“÷¨]ù◊õ~\Û/Sµµu\—◊õ6mRO˚f\Ùu}CÉ\ }\Á][\Ó\Ó∫{éZæ|Ö˝<\'g©-Ñ±À∫q\∆L\ı\ﬁ{´‘¨[oSKrrl9\Õ\À\œW3o˙µ™®®p¨;’É\0\0Ä+\Ù&Ö¡3\œRMMMé\È\Û\‘q¨$ûy\÷D\’#w---*î}v\Ù\ıÆ]ª\‘øø\”AiQåH\·Õøª%Z¶§§T\›>˚u˝Øn∞_«∂Œªæ™´;,ù\√)H!\0\0\0∏BoR8\Â¬ã‘∂\Ì\€\Ì\Á“ø\\—\«è\ŒÎ≠•p\Í\≈\”\‘\Ó›ª£Ø•\’\¢ã/âæ\ﬁU[´<Ω\–~æ¯π%\—\÷\»{\Ôõ-≥c\«ªE±ß\”\«\Ê:áKêB\0\0\0pÖﬁ§PNŸæ\Ò\Ê[™µµ\’nùª\Í\Í_D\Á\ı&Ö\Ûx–ñ8\È\˜\'˘˝ùw©˚\Á?ù\ﬂSK\·o~{≥cY=I°úfn\Ï°3ïÉ\0\0Ä+\Ù&Ö\ı\ı\ı\Íäˇ∫Rùu\ˆ$\ı˝¸\–nΩã\Ã3OõWã ï\«y.bô\ﬂ\–\–\Ì¯\Ï\‚\Á¢-Öek\÷D\À\»\–3\"îr\nY^ã\Ê\Á®\«¬ñB∆¶ºº‹±Õ©§\0\0\0\\°7)LFñ.{^UVV:¶ãEÆ~ñ\◊W^uµ*,*Rk◊Æ≥[0Eü\·\«˚R=H!\0\0\0∏Ç\€Roz∫\‡e∏)\0\0\0WH)Ló Ö\0\0\0\‡\nH°∑Ç\0\0Ä+ Ö\ﬁ\nR\0\0\0ÆÄz+H!\0\0\0∏R\Ë≠ Ö\0\0\0\‡\nH°∑Ç\0\0Ä+ Ö\ﬁ\nR\0\0\0ÆÄz+H!\0\0\0∏R\Ë≠ Ö\0\0\0\‡\nH°∑Ç\0\0Ä+ Ö\ﬁ\nR\0\0\0ÆÄz+H!\0\0\0∏R\Ë≠ Ö\0\0\0\‡\nH°∑Ç\0\0Ä+ Ö\ﬁ\nR\0\0\0ÆÄz+H!\0\0\0∏R\Ë≠ Ö\0\0\0\‡\nH°∑\"RXT\\ºg î)Gòu\0\0\0ê0ñ-[\ˆ\Âï+W∂òrB‹âH\·Øn∏±\Õæ∆ò\ı\0\0\00‘å\[÷è¨–ô-Z\Ùlõ)\'ƒùÏ™≠Uìø~˛ﬂ¥*ù\Zø?tæYq\0\0\0\0CBñeM\ÛBk\¬\‚°\ﬁ~˚mZ\n=i)|Î≠∑\Z¸Å\–\ p˝\Ã\Ú[◊õu\0\0\00`|æ\–\Ÿ>+¯fD%Å\‡ô\Õ\Ù)\ÙN¢öLü>\ ﬁ©\Î\Ëê‘ì?`-õ0a\¬\Á\Ã:\0\0\0àõ3Ç¡”¥`,äFlBgûΩ)\ÙNÃ´èÅ\–?\Èz\⁄ÆØ¥\ÿ[±u\0\0\0\–\'gú1qtñ?tøñâèMåd\“W\Œy	)\ÙNL),\À:=\Êtã\Ùçù\0\0\0\–+ôôôüÕ≤ÇOò\"õs\œ˚áyH°w“ù\nc\'O>¶K]˙≠?Å£\Ãr\0\0\0\0=‚≥¨\Ô˙\÷S%ó\\r\ÈµH°w“ìF\BW\Ëzk\Ô¨?´Pã\·\Õ2\0\0\0\0=¢%\‚¶Jæ\Ûù\ÔL\”¬ê4Icc£H\·Gf˝\≈b_0\‰nã·û¨¿ôóòe\0\0\0\0Hkí/|±Bñ|F?∂F§0{ îcvtt8Ö$?\r\r\r™¥¥¥ƒ¨Cì`0xúÆøW\¬\ı¯∑¨@\wz\ÚH≥@⁄°ˇ´\Z]TT\ÙS˝¯lYY\Ÿ\Z˝X-\Õ\Ô$\Ól\”_B˙\Ò1˝\„pYnn\Ó\—\Êg\Ï6≤M≤m≤ç\·m\›\÷\Õ\ﬂAzNu¯\ÿx6|¨å6?c∂å\‘“êkÀÉ?¯ÇL8#\Ã“ØKtj\Âµ\ﬁ\ÍÂ¥•)($˘©©©)\\÷µ\n{dÑÆ\√\ﬂ\Í|b ¯™˛\‡x≥@ZP\\\\ú©ø\Ã^”è\Õ\’\’\’\ˆYMMMvø_\ˆ\ÔﬂØ\Í\Î\ÎUUU’°\Ú\Ú\Ú˝Z\Z\⁄\ı\Á:’™U«ôüy≤ëmêmëmímìmîmïm6ˇ\“s‰òêcCé9V\‰ò	;ô\Êg\√ü∫!‹öT#W#G¶Oú8\ÒH_ \Ù}yÆ\˜Ö-#áLA!…èü\Úè[¥\„¿\Á^§\Îwwg=ávdZ\÷$≥¿∞%\'\'gîàÇNõñÑO8\Ì1¥immUõ7on\◊\¬–§øú\\˙@\÷-\€ \€\"\€dn\'x‰òëcGé!9ñ\‰ò2?H}Å¿ôZ:t˘˝¡K\Õ˘\nø≥q\„\∆Fs?!\…M{{ª\“\ﬂy\ÚOyø[\ÚC°\–Xü,ˇ–°\Î˚J≥¿∞cÕö5«ñññ\Ê\È/∞ñ∂∂6\«AEÜ.\“·π¨¨¨EI\ÕUJ%≠Øä¨K\÷)\Îñm0∑ã]\‰ícIé)9∂Ã∫Ä\‘e¬Ñ	ü“íPñÑ\Õ˘±\‰\Á\Á£èπÜ}˚\ˆ9\ˆíºÑˇQ{Õ¨üxë\÷_ ¯@∏\Œ\Â\"îz\⁄ﬂô\Â\0Ü˙\«\Î(}¿în›∫µÉ\÷¡\‰DZ\Ë\ \À\Àm14\Î#Q»∫dù¥&\'r,\…1%«ñcf}@j¢•\‡>-	2∆ù9ﬂ§∞∞\ä\r604çKë\Ô;}∂Eóé¨@\Ë∫\Óõ\√r∏\Œ\Á\À˛≤Y \Â\—\Ã3≠\Ê¡D˘≤íVªdúJñu»∫\¬\‰Gé-9\∆\Ã:Å\‘\√\ÔM\’2\7ùY¡\‡Ds~wÑª\Â¨ﬂπs\Ás\ﬂ âO∏\≈˛≥^J \\À?a1\‹/cUöe\0RñÇÇÇ)\"\“\Á\¬<òú\ÈP˚woQªw¨∂Âµ≥\ÈO\¬cg5\Á\Á\Á\'\Ï\ 6Y∂¨#æS\∆\‘\ÒPGé-9\∆\‰X3\ÎR™$+¸»ñ+\Ùs~o\Ë\„\Ô\≈\≈\≈{\Í\Í\Í∏\Ë$âëñz\È\¬1\‘}{\Âé6>pIX˘¸÷ú)S¶añH)îR#\Ùó\’_\ıï\„`2\”\÷⁄®∂<¢\÷-ø!ö-´±ßõeIˇ\"|\»E	f˝≤lYáπ^3\‘q\‚\"«òkrÃô\ı©Å/`-\Ó<mz?c˙\Ù~K\∆\Í’´CZ\Îi1L|\‰±p}i\"˚\Ù˙°k•\’8,á\ÔÅ1fÄî°∞∞\¸µk\◊6ôTw©\\∑¥ã,D\"\”Õ≤§ëS∫EEEmâ\«Pñ)Àé\Á¥1uú\ÿ»±&«úYG\‡}¸˛\‡\√?¸MgÉßô\Û\„EZ\ÂT≤\Ù1\‰\‚ì\ƒD˛ìñyÈ≤°s§YCMf \uΩ_TÖ\˜è\Zø?\ƒ1©â˛Øu~ee\ÂA\Û†r¶Cmx\„á,Hd:ß+P√∑\Ã:\Z,≤LY∂π>g®\„DGé59\Ê\Ã:o{\◊-á?3\Á\˜9ï)üha\Ÿ+\√\’\»ó2ﬁ•πøê¯\"≠Ç\"\ÿ;w\Ó<(ˇxIã|≤ªjXñuí?Z√ÉY~\Îz≥Ä\Á\—O•Vldf::\⁄\’˙Wor»ÇD¶\À|\Û=§ë¡£µ0<n\÷\—`ëe ≤\Õ\ıô°é9\÷\‰ò3\Î<ç\„Æ%CE¯nB\ﬂ\’˚Dé>Nk\ı\ÛC˙ykYYY3â/˙s\Î(**: «ï\Œ<W[\‚ßO\Â\Ô¥˚\⁄\›¨e&L¯úY¿≥\»¡\ﬂ&´\Õ˘9dA≤π\‡aGY\“ˇ\»\›D\Ùó\\ûYGÉEñ)\À6\◊\◊]®\„\ƒFé59\Ê\Ã:\Ô\“\”]KÖ\ﬁ?\∆å\'\Ò%ë˝J ˙ßHÀ≤\Œ>_\»2\À\0x9ò\‰ø,Ûá´ß4\Ô≠Rﬂú\’E\‰µL7Àí˛\'‹ä¥Õ¨ß¡\"Àåß5XB\'>r\Ãy\Òáú\ƒ{\◊\0À≤N\˜Bk\¬b\ÿ‚∑¨Ñ;0(\Ú\Ú\Ú\∆I\Ûª˘£\’[⁄ö\˜™\ÍäW\’\ˆ“Ö\ˆc[\À^G2∞\»}tµ¿\Ì1\Îi∞\»2e\Ÿ\Ê˙z\nuú\ÿ\»1\'«ûYO\‡-˙s\◊ÄÓêÅÕ≥¨\‡\·}H˘¸÷ü\Ù?\Zb\ﬁDö\ﬁ˚+Ö$q\Òäí\ƒFé99\ˆ\Ãzo\·\Î\Á]K\0z\¬]°\˜•\ˆN9¥\n\Â\¬%≥Ä\Î\ÙG\nõ\˜\’ÿ≠F\€J\ÿ˝\À\"ë\◊2Ωeˇ.\«{Hˇ\‚∂R\«\…	R\Ë}r\◊Ä\ﬁ\˘Bg˚¸¡ma1‹ì8\Û≥Ä´\ƒ\'Ö∂¨_1\√q\ÒAl÷Øò©j6Ωnów.É\ƒ\˜§ê:NfêBo3òªñ\0\ÙÜ\Ï[zøz%|:˘oz?˚ùû<\“,\‡\n\ÒHa\Õo8‰†∑\‘|\¶c$æ∏%Ö\‘qrÉzõ¡ﬁµ†F\Ë˝\Î∑:ü\»~¶\≈\\’@ ê∞[ú\ƒM_R\ÿ⁄¥ª\«q\Îzäîom\⁄\„X\È;nH!uú¸ Ö\ﬁe®\ÓZ\–>_\\"Ωü\Ì\Ó\‹\ﬂB;2-kíY ©\Ù%ÖµõsBOj∑º\„X\È;nH!uú¸ Ö\ﬁd®\ÔZ\–°Ph¨\œ\nÑˇ\È\–˚›ïfÄ§—ó\ˆt‹æRπnôcY§\Ô∏!Ö\‘q\ÚÉzíÑ›µ†7&Núx§?| ,Ür\ =\Ì\Ô\Ãr\0	ß/)‹ΩΩ@\Ì\\ó\”\Ô\»˚\Ãeëæ\„ÜR\«\…RÿïY≥fçîò”ìI≤\ÔZ`í˝@\Ô\Õ\·˝pùœó˝e≥@B\ÈK\nIr\„Üí\‰)<\Ã‘©S\'_t\—Eµíi”¶ùk\ŒO‹µºÇ\ﬁ˝2.fX\˜˚,\ÎªfÄÑÅz+Haz)\Ï\‰\¬/<W\À`£é\nß)\Ÿb\»]K¿kdff~\÷\Á.	Ôìá|~kŒî)Séà-#˚≠ñ\«;cß\Z§\–[A\n\”#H°C◊Öìt1\Ùq\◊\(æ@\ËZΩo\À\·;Å@`Ld^ñ|\ÿ\ﬁo˝°sb\ﬂ\›1+cd\∆“å\Û3r2\Ê\Ë\‰\Í|®\”é<óis\Ï2R6çA\nΩ§0=í\ÓRh\n·•ó^zÇ$\Ÿb\»]K¿\Îd_\◊˚gUXk\Ù>{æñ\≈á_\Îf¨øò\Ô\Èïë1R\Á|ù9:π:\Í4á#\œeöÃì2)\ÏHOfù±$cÜæ:5\"gÑ˙\Ï√üUc\Ó£æx\Û\’¯_èWco´F\ﬂ;Zµ\‡(%e\Ï≤\Úyo\ZÇz+Haz$ù•∞;!å\ÃK¶r\◊H,\À:\…≠ã\‡Aù∂à\Íí>±\Ê{∫C\ﬁ\—:3t\ÍtT\ÛG®ºNP/ùz™z\‚\Ù\”\’S:K«çSÖ£G´\Ê#èTR&\\Vﬁìbé¥$\„{Z\*E\Ù>\Û\gî\Ôˇ|\Í\ﬂ˙F§üJ∑9\Á\ﬂŒ±e\ÒàEGàV\⁄\ÀH3êBo)Lè§´\ˆ&Ñí%Ü‹µR\nΩè˙¸÷º<pâY\‹DK\›\˜t*ç°\ﬁ;\ÒDu›§Ij\⁄‘©/ä\‰=Ô∫â\’ ìNR\”\Ôë\˜\ 2\Ã\Âzï1B\›lë¡O-¯î≤Æ≤\‘E_§¶\\6E˘˛◊ßNº˚Du\Ã«®œç∞[E\0?˚ßœ™Sgù™&˛d¢]V\‰\Òî[OQZ\n•\Ãl{ôiR\Ë≠ Ö\Èëtî\¬xÑ0B¢≈êªñ@\n2\¬g_tag˛ñ\neöo¥\»i˘…ò-≠~\Îé;N]>y≤C\0˚\ \œ\Ù{6{l§\ÂPñ\ÂQGy[í±Xd\Ô¯π«´o|˚\ÍÇK/∞OèZ4*rz∏\◊|˙\·O´\Ïüg\€¯ôWú©F=;J\‰pq∫à!R\Ë≠ Ö\Èëtì\¬˛aÑ∞Æøg\»ƒêªñ@*¢\˜\◊ªë¡\ÿ<eæ\',Ñã\ÈßN;MM\ÎF¯‚ç¥*>\Û•/E\ƒp±7\≈0\‹Bx“ù\'©©”¶™Ø˛˚W\ÌVAS¸\‚\…)∑ü¢.úv°ö\Ù\√Iùb(\ÀNêBo)Lè§ì\∆#ÑZ¯Nîò\” Ü‹µRé¨`\æŒæÑ¶\∆\Ê@VV\ˆ¯\ÿ\˜I´û\·Ω>üC\Ú\"πX\ÁgÁû´~5q¢öq\ˆ\ŸvKboßï\Ã\ÃT≤LYv\Ï∫‹ß≥\·!i!!\Ã˛YvD\Êú\œ\ﬂ\˜y[•\≈Pñù}ëBo)Lè§ã\∆#ÑÇûW-1ßC)Ü‹µRí\È\”G\…\≈$“≤ù\Â›Ø\˜\ﬂ|ùá˙CE\ﬁ\"˝ˇt=1aÇC\Ï$?\’\"¯ó±cU\”\·J¢i\‘\”^9\Â\ı£Ø\›\Ò>…íq\„§\‹!YG\Ïf∫á\\)úìQ)}Âî±¥V#ëC˘£\Ì>Ür\Ò\…0ø*π/)¸\›-∑™\∆\∆FUæaÉZΩ∫\–\ŒsKñ®\÷\÷V{~mm]t˙\„O<©^˙\À\À\—◊í˚\Ê\Œs,S\Ú\Ù\¬gTMMçcz$∑\›~á˝∏ˇ˛.è\√=nK\·¨[oS\Â\Â\Âé\È≤\ƒ÷´\‘\ıˇ{\Ù±\Ë\Î[oü≠\Z\Z\ZÔ£ûªO:HaºB(\Ë˘uszÑ°C\ÓZ√å>_\»\n\˜èùÎ≥Ç\Ô\Í\«›ôôgù¨:Ø2Æ,˘¸\Á\Ìñ¿X°ªx\ÍT˚*\„#G:d\–\ÃA]\Ê°3\Œp,CZ\√}\Â\‚8\““åE\‡\‰¢\ÈC8\–S\∆=%˚\Úl˚\‚˚™dY\◊0¶7)‹∞q£Z¥\ËY[¸\ˆ\ÏŸ£\⁄\€\€maò;\Ô˛hô∂∂6µo\ﬂ>u\Ô}s\Ì\◊\"Å\"	\"ì\Úô.yˇ˝º®Dº¯\Áó\‘ÎØø}˝¬ã/\⁄e™™™\Ì\◊\◊\\{ùZ¯\Ã\"5c\ÊM∂(Ω¸\ +j˘äW\€8\‹\‚∂^\ı\ﬂW´¢\‚b\«tâH\ﬂ˚yùu¯ƒìO©G{º≥._¸s\Ùü	\ı\‹wÜª\ˆGÖæ§Pår\◊Hd\0v-j7ä\Ù˝\ÿh\Èô{Ô§ì\Ú\◊W§E1v9í+\œ9\'rU≤Àé$ÉM\Ád\‘ ∞3r\Â∞\\TbJ\›`\ÛôG:ó-\√\’\Ë◊µ\√yÄÎû§∞££C-X\¥˝¸7øΩY}¯\·f[\n˛\Ô\⁄_™˙˙z«è\\D˛˛\Ù\–\√\ˆ\„C?\“\Â±M\Â=∏7Z^\‰b\Î÷≠\ˆÛè™™‘≤\Á_∞Ààd ∫\Ôº\În{^\‰\Òµ\◊^∑%B\‰T\Êõ\Î.q[\nˇ\Î\ ˇVoæ\ıñcz$ëñ\ﬂ\˜\ﬁ[•rsﬂ±ü\ﬂz\€\Ì\—:°û\„\Àpñ\¬˛\n°è\nCw-Å4AuL]ª\‚îŒ≥û±ëãML\·ã7è~˘Àé\Â\Âv\nf≠ruÄÎúå\ÛD‹≤˛7\Àv&ﬁ´å˚ÆF\∆1ø>\œ‹åT¿\Ô\˜O0ßô\Ù$Ö\“b#?\Ó\"y+W\Ê⁄ß\0\ÂyΩ\√g?ï=y-?\‚7ŒòiüRî\˜\»\ÎHK\·ú{˛]¶î\Õ}\Á]{˙]w\œQÀóØ∞ü\Á\‰,µE!v˝≤<9ùπ$\'\«‘º¸|5\Û¶_´ää\n«è\ÏpI•0\nç?~|ü\Õ\˜\ÒJ\·UWˇ¬Æ_sz$\"ÄfK\·\r7\Œ\ÏRÜz\Ó;^ñ\¬xæ7zb B(\ƒ+ÖB≈êªñ@:°\Ì<ë∏_|\ı´]\Ó\'\Áûi\ŸP>9\“\Óáª\Ã_ù}vdæãé¥4\„πSâúﬁïqMô™\»8Ü\“Zh\ﬂ˘DØ\”‹åT@ˇW¸§/Z\„\˜ˇŸú°\')î\‘\÷\÷\⁄rX]]≠ñ.{>z\nP~\ƒ\Â4cSSì}J9\ˆ\Ù±¸†\ÀcD\Z•/bdyªv\ÌRw¸˛Œ®,Fd\·\Ê\ﬂ\›-SRR™nü}á∫˛W7ÿØc[ê\Ê\›?_\’\’\’9∂s8•øRò˝Dˇ\ÿ\Ì\ÚY°kzì\√x§pÀñ-j\ˆøWO-X\–m\ﬂ>i)ñSΩ¶\Œ\‡A{ª#\Â®\Áæ\„i)å\„{£;*ÑB§PàWπk	§Z\–\Ói¯‘ß˝\0óüräC\Ù˙õWå\”\»2\ƒM¯\Œ\'.:RNFÆ‹∫N6\Ë\ƒ9\':dn®\"\\\À:\‰ñxrØ\‰§\Û\À=reR\˜_\Ú=I°ú\"ñS\≈\"É\“«¨Q†\Ùã¸xõâH°\ÙCà¥ä`D\ \Ï“íπ\‡\ÈÖ\ˆ\Û\≈\œ-Q€∑\Ô\Ë\Ú^…é;Ïñ¶ûN+ö\În†FÆ>\ÎQ\„ë\¬G{Lïññ©è>˙H=˘\‘\·zìTVV™¸¸\ı\ˆ\€+Rx\Ì/ØW<¯\«\Ëib\Íπ\Ôx_\n{ˇ\ﬁ0å\n˝ïB!1\‰Æ%ênhA\À-8\·áº\Ì;\Í(á\‰\ı7-G\·\Î∞\\Ûüóyπ\Êv$èúåMc~?\∆ﬁòc\⁄Lb#ô\»:\‰^\…˙\ı&s3RÅÆ_\Ó\›\…\˜$Öi\ÕY≥v≠\›wLZeö)Ö\“\ÔK à@æ˚\ﬁ{\ˆE)rä0\“RõûZê§œ¢Y∂\'Yêeã†ö\ÂáK)Ö=\ a_R(}¯D\‰#Ø•¿˙\ıÎ£Ø\Â3ó.R¶ ©\ﬁ\ÿeQ\œ}\'u§∞˚\ÔçX+Ñ\¬@§P\ËMπk	§#Z\–6\Âå\◊E\‹‰¥Ø)xç\‹\›$v\ŸÀæ¯Eô\Ó¢#\Âd4\… ≤1#üÈêπ!Àíå\ÿYöÅ3œì\‡Tä˛/yï\ÛÀΩ\Îó|ORXP∞⁄æ\"tua°}Z1\"øº\Óz˚Q˙m\‹¯W[•ö\\8∞n\›˙hπHK°_SXTd/SN?F˙â\…{\"-Hek\÷D\◊+ß-EP\‰‘¢ºYê™\«\¬^ûàIwC¶óà∏=\ÛÃ¢˝f]\ˆ]«è:\Î6ö®\ˆ&ÖÚôãº\≈^@$≠x\ﬂˇ¡\Ì+ã[ZZ\Ïi\"j{\˜\Óµ[å\ﬂz˚mªﬂ†Lè\‘o$\‘s\ﬂY±bE\Î≈ó\\zΩYü^H<\ﬂëØ\„Y≥fç\‘\ﬂ≈ªz¬ã/æ¯\‰∞\Ù\Ì\Î%á\¬1ß«¶Nñe.\ﬂ\√Z\Ÿ&\ÓZ\Èä¥¶«ç±	e`jS\Ó\Z\ÈGªlQOo2∑#yhAˇõÒ∂∞Ö\ÔUúòR\ÿ˝œ©üP\ˆ\Ÿe´V≠j1¥b#?\‡±Cé\ÙÜxØï\”\“rJ“ú.\‚\"c\ﬁ\…iJy}\ÂUW\€“±v\Ì:˚bëà\Á_x¡\Òæ\·˘˚/ø\‚?\€\Õz\Zdv-[∂l_wR(ßä•%Øªy“ó\Ù\Ê[f9\‰L˙ç˛\Ù\Áó\€\Û\Õ\˜ò°ûª\œ}\Û\Ó\Í:Nn¨`Avv\ˆ±¶Nô2\≈1 t¢•\\€\ﬂ˛\ˆ\Ëã\ﬂ\'yWX\n\«\Ëm\\\Œ]K \›A3¨J)îªû\ƒ.[Tπ,Öõ\∆\Œ\Í\Ï\Ïx\ƒ\¬#ú27D1O˚,\Îr\√Tä˛\Ú\ﬁ\Ï¯2?˘Qö{\€m∑}•ªñBØD.f1ß\r\Áà,\›}\œ=\Õf]\ˆî\ﬁ[u\Ï\Ô\ıdvo-Ö^H∫\’\Û≥\œ.nõ\Ù\’sñö\ı\ÈÖ\ƒ\ÛΩ!\“˘Jû:u\Í\‰ãbNw\'Ü}!\¬\'1ß\˜Ö!Ñçr*;v˛ƒâˇ.\ˆ5¿pG⁄¶\Áø\ÿy65í+&Ov\»\›@c^Åº\‘ßès\Âvt≤1ˇ\‡\ﬂ;dn®2¸.4\È˛KΩß\”\«ƒùQü¬®F\ y]\n\”-©◊ß\–)É±V\"Ö}	!@:¢-∑h\Ù\Ë.\‚&w1	_%<®\Ï=\Í(\«}ëe]\ \’Mñf\‹s\‰\¬#\’‘ãß™qøÁêπ°\ \í¶\˜/u§\–[¥\Z2)\ÙVRH\nª˝\ﬁ\Ëé¡àa•!\Ë-h\˜à\0^b\»\€k\'üÏêº˛\Ê•SO\Ì≤L{Hö#éêy.:Rx\\ÍIˇ1Iù\Û˝\Ë\‡\“Cûa1xu\Áó{Ø_\ÍH°∑2`)\ÏA# Ö\ﬁJ\nHaØ\ﬂ=1P1\Ïè\"Ñ\0=£¬ÉWK?\¬XÅ˚˘\‰\…\ÍìA^-∑\Õ˚\˜\Û\Œ\Î≤L\È_û\Ô¢#Öos\˜Ö;æ`o\‘\Òsèw\›`3\\nsÁ≥¨\À˙˙RG\nΩï˛Ja¶eM\ÍM# Öﬁäó•0û\Ôç\ﬁà\∆+Ö!@\Ô®\m\Ó\ﬁ9\È§.\'Y¯•/9d/\ﬁ<\‹\Õm\Ó\ﬁ\ı\ƒmÓÑ•7éxnÑ:\˜{Á™Ø˝\Î◊Ü|hö\ÏÀ≥\Ì;¶\»\≈&≤.s\ı\√	§\–[\ÈØ\∆R\Ë≠xY\náÇ˛äa<Ràƒáñ¥\Âñv?3.\nëS\ +«åq__y\ı\‰ìwHπ\Úús‘°ŒñG8“ìGky´<n\ﬁqvã^\Ê5ô±hNπΩ\Û&“ß\‹zäºÆ¥\◊5åA\nΩ§0=2‹•P\Ëè\ˆ%Ö!@¸hQ;Zßr\Ìq\«9dN.y\Í\Ù\”\’¡8N%KôßN;≠\€e¨?\ˆX)S)\Î2\◊\ÔK2æß•\Ì\–i3N≥7Ú¥ôß9Øøë´ö/úv°:\Ûä3\Â\ı!{\√§\–[A\n\”#\È ÖBºb®\ÁUK\Ã\ÈB\–;c\'O>&À≤æ\Â\Ûá\Û˚\œ\»4-k\ﬂ\”9\Ù®1fa$?>\˜\\\ıó±cªΩ˝ù\‹\Œn\≈)ß®ÀçªóD≤®\Û4\Ù!Yáπ-Óíì1[ôŒº6\”\ﬁPˇ\’~5j\—(á\Ï\≈i!!ú\Ù\√Ij‘≥\ˆ2fõ´é Ö\ﬁ\nRòI)\‚\√i”¶ù(1ß#Ñ\0\›cY\÷I~\À˙yV ¯í/lµ/8\Ù∑\ÈY#\"e¥¥\Õ>§\Ó\nbâ\\A,c\ E#7\Ë¸\Á◊æfacñã\‰˛¨,%Àîe\«léGP˙è_í±X§n\‹o«©©”¶™\Ûæ{ûí{#KüCS¸∫Àß˛¥\ ˛y∂˝\«J°-Ñ≤LYv\ZÄz+Haz$ù§PàGMBÄÆh\Ùe˘≠õ¥\0\Ê\È\Í2Ygnè-Ø\≈MãP\∆b\È˚\˜\ƒ\Èß;N\˜\'\"èr\⁄9,ÑãeŸ±\Î\Ú\"o“™ó\”9\‡\ÙW~\Ù˚8\Ôü\œSg\\Ü=¯\Ù\—OïDπxD\ \…8Ñ2\Ïå\ÙIîãJ\Ï>Ñù∑Õõù.B( Ö\ﬁ\nRòI7)˙#Ü!¿aÇ¡\‡q>+XﬁçvIf(îiæ7,Ü≥\Â¥p\È\Ò«´üüƒìüMû¨\÷w\\\‰\Ù≤,+©≥èa•àüSº2®.∏\Ù\«áPÜù±Ø2ñ\˜¶AB§\–[A\n\”#\È(ÖB<bà8	B\ﬂ\‘\‚\˜±)Çácö\ÔâE˙ˇ\ÈT9RΩ5få˙\Â§Iéªì\ƒFZØ\”e\ﬁ8˘\‰\»¯ÜrQIä9í\\)º$cÜº:ëCi¸\‹?ßdLCëø\Òøo\ﬂ\ÀXZ\Ì;ïtûBÆ≥\ﬂ3ÃØ2\Ó	§\–[A\n\”#\È*ÖBobà\ÙLV \Ù=-ÄùBT~ø\ıøfy\’yU\Úù:i\ıìªë¨=Z˝˘\‘S’ìßüÆúvö\ 7N\ÍirKªpÀ†îï\˜§∞#\…`\”K3\Œ\◊\¬7\'C\Ó[úì\Ò°Ns8\Ú\\¶Õ±À§\Ë¿\‘CR\Ë≠ Ö\ÈëtñB°;1Dz\'\n}Z\‡zSuL8\Î¨\Ã\Ú=°:∏>_géNÆŒá:\Õ\·\»sô&\Û§LZ;R⁄Åz+Haz$›•P0\≈!\Ëô\Ï\Ï\Ïcµ¸\Âá%∞°´Ü^6\À§\–[A\n\”#Ha\'Ü\"Ñ\0\› ≠ÄZ˛\ \¬∏›≤¨\”\ı\„çQ)¥¨3\ﬂ0 êBo)Lè Öá	ã\·.ùZyn\ŒHg23\œ:Yã\ﬂ_\√∏)\nçç\Ã”Øo\”iî¡´c\ﬂ0`êBo)Lè Ö]ô5k\÷Hâ9 ù\…Öæ\‰∑äfÇkµ:x\˜˘Çô\”\0R\Ë≠ Ö\È§–ât¢ü8q\‚ë\ÊtÄt\‰å`0K\À`U∏ÖpµåUhñrêBo)Lè ÖN¸Å\‡Ω˙\«\Ôü/¯è\Ê<Ät\"dgÇua!\Ã’Ø?cñHH°∑Ç¶Gê¬ÆLô2\Â˝\„∑\Óp\«˘\‡rü/˚\Àf9Ä\·é\œ˙ö>\ˆFé˙BRA\nΩ§0=Ç:\È\√–µ˙\«p_X?\ˆ˘≠9&L¯úY`8í\\†\˜˚\Êp¬•tßÄ§Éz+Haz)\Ïô3Œò8\⁄∞\’?å\À\·.˝˘”åî∏\ﬂ*¿¿\Y\÷ez_o\Ô\ÛOeLü>\ ,êpêBo)Lè Ö}\„\ÛÖ\Œ\ˆB\ÔGO)Ç´˝˛\–9f9ÄT\«\ÔN\◊˚\˜Å\Œ˝\‹˙cˇ\0Å[ Ö\ﬁ\nRòA\n\„Gˇ`˛\–w¯*\ÃC˛@\\…@ 0\∆,êäH+∏ﬁØ?	\Ô\ﬂwõ\Ûí\nR\Ë≠ Ö\È§∞t\ﬁ\Û’ö≠4;\¬?ûç>+t}Æ ï\…\Úˇ\«\È&aÖ~c\ŒH:H°∑Ç¶Gê¬ÅqF0xö\œ\næsJô!l %\…\ngFZøµ^c\ŒpÖºººµ0¥ô?Zƒù466ä~d\÷\”`ëe ≤\Õ\ıw\"«ú{f=A|\»]|áo˝\≈6êRd˘≠;\¬˚\Ó\'>À∫‹ú\‡\ZJ©ÖÖÖ;::?\\$˘ihhP•••%f=\rY¶,\€\\I~\‰XìcNé=≥û ~\¬RêYVp~x=†\˜\ﬂ\Ôõ\0\\ß§§§ûSã\ﬁHMMçH\·2≥éã,SñmÆè$?\·.\ıf¡¿`H	¶O\Â\Û\Ô£\ÌYÅ–∑\Õ\"\0û@ˇ@\Âha8d˛xë‰ß¢¢¢π®®\Ëßf\rY¶,\€\\I~\‰XìcŒ¨#a^E.à\“B∏$º_∂\Ë˝r™Y¿3~g\„∆çç\ÊèIn\⁄\€\€UqqqªÜ\—f\rY¶,[\÷aÆó$7r¨\…1g\÷\ra^b¸¯\ÒG˚°ó\√˚\„æ,\À:\◊,\‡)\Ú\Û\Ûè\—\¬–∞o\ﬂ>\«I^™™™>\—\Ú\ˆöY?CÖ,[\÷aÆó$/rå…±&«úY?0t0Ñ\rx\Ÿ≥¡∑\√˚\‡ni\Õ6\À\0xí\¬\¬\¬+6l\ÿ¿\ÈEó\“\⁄\⁄*˝\ÃZµ0döu3T»≤e≤.s˝$9ëcLé5≥n 10Ñ\r∏Evv\ˆ±z\À\Ôw’ñe˘\Ã2\0û%\'\'gîÜ\ı;w\Ó<`˛êë\ƒg\„∆ç-•••ò\ı2\‘\»:d]\Ê˙I\‚#«ñcr¨ô\ıâ%á∞ë.\“X?>[VV∂F?V\Î\Ï!qgõ˛æ+–èè\È\ƒ.\À\Õ\Õ=\⁄¸å≈Ñ≥\Œ:A\Ôge\·˝mª\¬\”\Õ2\0ûG<_(..\ﬁSWW\«E\'I\Ã÷≠[;\ÙóW^2dA\÷!\Îíuö\€A9¶\‰ÿícÃ¨H©2ÑM∏Eˇ5˝\ÿ!áUWW\€CU555\ŸWÆì¯≤ˇ~U__/\›rïóó\Ô◊Ç-˝µ\ÁØZµ\Í8\Û3J23\œ:9\ÊêM°Ph¨Y eXΩzuH\’\”bò¯\»E˙KøUQïÆY≥\ÊX≥.Ö¨K\÷)\Î\Ê¬ì\ƒGé%9¶\‰\ÿ2\ÎíèWá∞	ü≠ôØ\”&};vh#\›f6o\ﬁ‹Æè\≈&-à?2?ˇ° 3˙í?\‹*˚ïﬁß\÷j!dÄzH}§5CgΩ\Ù\‚\‚ìƒ§ÆÆNnu÷¢?\Ágtí\ﬁ˘]\÷)\Îñmêm1∑è>r\Ï\»1$\«-Ñ\ﬁ\√KC\ÿ\»?j“Ç/];\⁄\⁄\⁄˚∫»ùù\‰{O\À\·\\•\‘H≥.\ ¡`ñ\Ô\UÔ´É¡`B[$íä¸\◊*\‚\ıè\Ÿ^BCNa\»\È\Û\0#\ÒEZ\‰Dv\Ó\‹yp\Ì⁄µM˙s˝kAA¡\ÛsO6≤\r≤-≤M≤m≤ç¥<rå»±\"«å;r%£[\0∑á∞\—˚\ Q\“r/]:hLN§’∞ºº\‹C≥>Ç\ﬁ_≤≥¡∫\>î´_\∆,0,êŒπ˙á\Ìª˙K+G@µ˙πº€™ˇ\”j&\ÒE˙\…Eï:\Û\Ùgxæ˘9ªçlìlõl£l´l≥˘wêû#«Ñrå»±\"\«L2;∂\√\‡psi±óÆ¶∏ê\ƒF\ƒPª-É=ï\ÏÛÖæ¶\˜óΩ\ˆ~cóèù<ô\·¶ Ω\–—òÇÇÇ\Ò$æ$≥ø\‡P!\€l˛§\Á\»1a~Üêz${Ω\ÔL1âØuæC\ÌﬂΩE\Ìﬁ±\⁄~î\◊\Œ2§?ëS\…Z õ\Û\Û\Ûè7\Î&2Å\Ù>\“,˚JV ∏4ˇD\0\0\0@I\∆6J©\“u#û>Ωm≠çjK¡#j\›\Ú¢Ÿ≤˙{∫Yñ\Ù/rÒâÆá˘f˝\ÙÖœ≤.\”˚F[xyJ\Ómlñ\0\0Äa@¢á∞ë.“ó◊îî\ÓRπni!åD¶õeIˇ\"ßëãää\⁄˙\”\›\√\ÔN\◊˚√Å\Œ˝\¬˙cÜ\ÀWÆ\0\0@H\‘6\≈\≈\≈\Û+++öí\‚Lá\⁄\\∆-!î\»tN#>2é°ñ\Ùoôu\‘R\˜z¯$º/\‹m\Œ\0\0Äaéoàá∞ëã∫dÄeSP\Ãtt¥´\ıØ\ﬁ\‰BâLó˘\Ê{Hˇ\"\\kI‹¨#ì,\¢ˇX°ﬂò\Û\0\0 ç\Ë\œ6z˙QÅ@\Ëü\Ã\ÈÇ\\\Â\ﬂ&´\Õ˘9ÑP≤π\‡aGY\“ˇ»ùO\ \ \ \Ú\Ã:ä%+ú©s-Ñ◊ò\Û\0\0 \râw=˝FôgY÷©±\”\Â\Í~\ˆ…îìû“º∑Jm|sV!î\◊2\›,K˙i±-))\Ÿ[G±d˘≠;\¬\ı¸âœ≤.7\Á\0\0@ö\”\€6\“z®_7ÖßØà}_^^\ﬁ8\ﬂ“îì\ﬁ\“÷ºWUWº™∂ó.¥\€Z\ˆ: êÅEÓï¨•pOlÖëe\Áá\Î\Ä/˙æY\0\0\0\0 J∑C\ÿÇéëEù–è#\Âel\À˛J!I\\∫ï\¬\È\”G˘¸¡\«\√\ı◊û}ª\À|\0\0\0Ä\Ó\Ëf3\rëæá˝ë\¬\Ê}5v\À‡∂ív\¬H\‰µLoŸø\À\Ò“øòR(\›\0¥.	\◊[ã\ﬂöz∏¶\0\0\0\‚ \nùÿ≥Üûó2\ÒIaá-}\ÎW\Ãp\\`\“\Â\n\‰3UÕ¶\◊\Ì\Ú\Œeêx+Ö\„«è?Z\◊\”\À\·:€óeY\Áv≠a\0\0\0Ä8èc◊çv\∆\Ô˝K<RX\Û¡\Ï-5º\ÈXâ/)îàt˝ΩÆ´\›2ëYø\0\0\0\0}\"w;\—2±\ÀA#µw\ﬁy\ÁYΩIak\”\Ó\«&\Ï)RæµiècY§\Ôàæ˚\Óª\ı∫n\Ú\√uTmYñœ¨_\0\0\0Ä∏\[°_w#ÅéLútŒãΩIa\Ì\Ê\\á\Ù≈ì\⁄-\Ô8ñE˙NUUïö\ˆ\ÕKÜ\Îgª\¬\”Õ∫\0\0\0\Ë7\ˆi»¨\Ï\ÒY¡`0À≤¶\»\0\÷YÅ\–O\‰Bî,øu\ÀW\'˝©7\ﬂz´≈îìHz∫\◊q_©\\∑Ã±,\“w\ˆ\Ó›´˛\Â_ˇ\Ìc-Ñõt›ç5\Î\0\0\0 !\Ù’ßp\˜\ˆµs]Nø#\Ô3óE˙éú>\Œ/(®üp\÷Y\'òu\0\0\0ê0˙íBí‹òC\“\0\0\0\0$§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿\‚ë¬ó_y%˙¸\÷\€nWm\Ì\Ìé2øª\ÂV\’\ÿÿ®\ 7lP´W\⁄yn\…\’\⁄\⁄jœØ≠≠ãN¸â\'\’Ky9˙Zr\ﬂ\‹yéeJû^¯å™©©qLè\‰∂\€\Ô∞\˜\Ô\ﬂ\ﬂ\Â1UÉ\0\0Ä+\ƒ#Ö=¸à*..Qõ6mRØº≤\‹1\√∆çj—¢gm\Ò€≥gèj\◊\“X^^Æ\ÊŒª?Z¶≠≠M\Ì€∑O\›{\ﬂ\\˚µH†»†»§<F¶K\ﬁ?/*ã/˛˘%\ı˙\ÎoD_ø\\‚ãvô™™j˚\ı5\◊^ß>≥HÕòyì-T\"∞\ÀWº\Í\ÿ\∆T	R\0\0\0Æ–ó\Ê\Â\Á\€bñõ˚é˙\”C\€\"∂t\Ÿ\Û\—˘j¡Çß\Ì\Áø˘\Ì\Õ\Í\√7´ÜÜ\ı\◊˛R\’\◊\◊;ñë?Yñ<äp\∆>J+\‰=∏7Z˛˝º<µu\ÎV˚˘GUUj\Ÿ\Û/\ÿeD2e\›w\ﬁu∑=/\Ú¯\⁄kØ\€\€(r*\Û\Õ\ı{=H!\0\0\0∏B_Rx\«\Ô\ÔtLãòDZ\ÊD\‚D\ÚVÆÃµO\ı\ \Ûz-Ü\œ.~.*{\ÚZd\Ì\∆3\Ì\”\«\Úûÿñ\¬9\˜¸!∫L)õ˚Œª\ˆ\ÙªÓû£ñ/_a?\œ\…Y\Í8u-\À{\ÔΩUj÷≠∑©%99∂†ä\»Œº\È◊™¢¢¬±\Ì^R\0\0\0Æ–ó\ﬁ2´S\⁄b#\"[¶∂∂÷ñ\√\Í\Íjª1RNd\Ì™ˇæZ555ŸßîcOã∏\…cD\Z•/bdyªv\Ì≤e4\"ã)º˘w∑DÀîîî™\€gﬂ°Æˇ\’\r\ˆ\Îÿñ\¬y\˜\œWuuuéø%Ç\0\0Ä+\Ù%Ö´\ÌGπ0d«é\ˆ\Ûu\Î\÷G\Á\À)b9U,2XT\\¨\Zµ\0\ \≈%±≠â±âH°\ÙCåm)|j¡Çhô]Z2<Ω\–~æ¯π%j˚\ˆ\Œ\ı\∆\ˆ;îmë≈ûNõ\ÎMï Ö\0\0\0\‡\nΩI\·_^~Ÿæ¢XÆ\0ñ~Çè>\ˆò}˙VZ˘\Ê?\`¥ú¥⁄≠Yª\÷\Ów(≠Å2ÕîB\È\ﬂ\'eD \ﬂ}\Ô=˚¢YV§•06=µJüE≥lOR(\ÀA5\À{=H!\0\0\0∏BOR∏u\€6˚‘±àUlù\\\Ù!≠tr≈Ø\\\ÏQP∞⁄æ\ÚWZ∑l\Ÿ=u¸\ÀÎÆ∑•ü\ﬂ∆çµÖP˙\ {§•1\ˆT¥<\ \5ÖEE\ˆ:D@#˝\Â=ëñ¬≤5k¢\€!C\œ\»\≈$r\nY^ã\Ê\Á®\«\¬^û\Ùmî+†Õø\À\ÎA\n\0\0¿zí\¬H§/\‡ˇ¸\Ô5vãû\‰Üg\⁄Cƒò\Â$\"jëq	{\ÀﬁΩ{\„æ2XNKWVV:¶ã<\›z˚l\ı\ˆ\€+\Ì\◊W^uµ-ïk◊Æ≥/:Y|˛Ö\Ô\ÛzêB\0\0\0pÖæ§0U\"≥ò\”R1H!\0\0\0∏\¬pë\¬\·§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0p§\–[A\n\0\0¿êBo)\0\0\0W@\nΩ§\0\0\0\\)\ÙVêB\0\0\0pÖºººµÑ¥ôrB\‹Icc£H\·Gf=\0\0\0$•‘à\¬\¬¬ÉA!\…OCCÉ*---1\Î	\0\0\0 ·îîî\‘\ÀiKSPH\ÚSSS#R∏Ã¨#\0\0\0ÄÑ£•0G\À\»!SPH\ÚSQQ\—\\TT\ÙS≥é\0\0\0\0Naa\·w6n\‹\ÿh\n\nIn\⁄\€\€Uqqqªñ\Ù\—f\0\0\0$ú¸¸¸c¥å4\Ï€∑\œ!*$y©™™˙D\·kf˝\0\0\0\0$ç\¬\¬\¬+6l\ÿ¿\–4.•µµUÆ:n\’rûi\÷\r\0\0\0@\“\»\…\…••d˝Œù;ò\¬Büç7∂îññ>`\÷\0\0\0@\“\—R¯Ö\‚\‚\‚=uuu\\tí\ƒl›∫µCaûàπY\'\0\0\0\0Æ∞z\ı\Íê\√zZπ∞§¢¢¢U\Àx\Èö5ké5\Î\0\0\0¿U§\≈PN%KC.>IL\Í\Í\ÍTYYYã˛úü\—9“¨\0\0\0\0O ß2\Â\‚-,{e∏ö\Í\Íj\’\‘\‘\‰ê_§UP{\ÁŒù◊Æ]€§?◊øL1?w\0\0\0\0Oíõõ{¥ñ\√\Ô\ \0\◊\≈\≈≈µ˙˘!πJ∂¨¨¨ô\ƒ˝πu–ü[•\Œ<˝ûo~\Œ\0\0\0\0)áú1\„I|°ø \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@j\ÒˇûÅô\ˆÜ4\⁄\0\0\0\0IENDÆB`Ç',0),('10003',1,'process/oa-leave.bpmn20.xml','10001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\r\n  <process id=\"oa-leave\" name=\"oa-leave\" isExecutable=\"true\">\r\n    <startEvent id=\"sid-2250b950-16b5-47f4-ba0d-1b6578759e19\" name=\"ÂºÄÂßã‰∫ã‰ª∂\">\r\n      <documentation>ÂºÄÂßã</documentation>\r\n    </startEvent>\r\n    <endEvent id=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\" name=\"ÊµÅÁ®ãÁªìÊùü\">\r\n      <documentation>ÊµÅÁ®ãÁªìÊùü</documentation>\r\n    </endEvent>\r\n    <userTask id=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\" name=\"ÁªèÁêÜÂÆ°Êâπ\"/>\r\n    <userTask id=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\" name=\"‰∫∫‰∫ãÂÆ°Êâπ\"/>\r\n    <parallelGateway id=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\"/>\r\n    <userTask id=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\" name=\"CEOÂÆ°Êâπ\"/>\r\n    <userTask id=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\" name=\"ÊÄªÁªèÁêÜÂÆ°Êâπ\"/>\r\n    <sequenceFlow id=\"sid-8b40cfb0-7521-42e9-b95c-16deecb9487e\" sourceRef=\"sid-2250b950-16b5-47f4-ba0d-1b6578759e19\" targetRef=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\"/>\r\n    <sequenceFlow id=\"sid-e1be5a57-365a-4a6a-94d7-e2c49d56c8ee\" sourceRef=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\" targetRef=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\"/>\r\n    <sequenceFlow id=\"sid-18c3dfcb-1d20-4051-9c4f-9465defb8d5c\" sourceRef=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\" targetRef=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\"/>\r\n    <sequenceFlow id=\"sid-f310abaf-6a65-4676-ab74-9f5976c1d5ef\" sourceRef=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\" targetRef=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"/>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-075ddb5d-f9e2-4225-96af-c556b63c4a6b\" sourceRef=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\" targetRef=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"/>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1e82c493-bc42-4460-a376-d0fbc5a5b205\" sourceRef=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\" targetRef=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\"/>\r\n    <sequenceFlow id=\"sid-455dff2f-6509-4b24-9f92-706f5254c68a\" sourceRef=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\" targetRef=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\"/>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_oa-leave\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"oa-leave\" id=\"BPMNPlane_oa-leave\">\r\n      <bpmndi:BPMNShape id=\"shape-04770140-1faa-44fc-90ea-5d1171473f1a\" bpmnElement=\"sid-2250b950-16b5-47f4-ba0d-1b6578759e19\">\r\n        <omgdc:Bounds x=\"-190.0\" y=\"-15.0\" width=\"30.0\" height=\"30.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-92d8de3d-9563-4556-8a1a-f73c853b016c\" bpmnElement=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\">\r\n        <omgdc:Bounds x=\"395.0\" y=\"-15.0\" width=\"30.0\" height=\"30.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-5bb5cef1-ce53-4b35-aed4-f0b226c5dd8f\" bpmnElement=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\">\r\n        <omgdc:Bounds x=\"-105.0\" y=\"-40.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"sid-26fcafbf-bb53-4534-a5bb-8411c866fa54\" bpmnElement=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\">\r\n        <omgdc:Bounds x=\"16.25\" y=\"-40.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-f3b74a59-8a5d-4403-830c-ad7227206a65\" bpmnElement=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\">\r\n        <omgdc:Bounds x=\"165.0\" y=\"-20.0\" width=\"40.0\" height=\"40.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-edbd1505-e7a2-43f6-8093-f0c70b023d87\" bpmnElement=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\">\r\n        <omgdc:Bounds x=\"240.0\" y=\"-110.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-34bedc74-4d25-49b8-b7e0-9828e1a074e3\" bpmnElement=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\">\r\n        <omgdc:Bounds x=\"245.0\" y=\"35.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"edge-effd07a6-75f8-4ed7-b718-f181ece2fa24\" bpmnElement=\"sid-8b40cfb0-7521-42e9-b95c-16deecb9487e\">\r\n        <omgdi:waypoint x=\"-160.0\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"-105.0\" y=\"0.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-15293722-3763-4dc5-bbaf-a1b8f3a46d92\" bpmnElement=\"sid-e1be5a57-365a-4a6a-94d7-e2c49d56c8ee\">\r\n        <omgdi:waypoint x=\"-5.0\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"16.25\" y=\"0.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-99121846-85e5-4caa-9660-53529f7d690b\" bpmnElement=\"sid-18c3dfcb-1d20-4051-9c4f-9465defb8d5c\">\r\n        <omgdi:waypoint x=\"116.25\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"165.0\" y=\"0.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-4bd5b63b-84c2-43be-a31d-df3e530c3967\" bpmnElement=\"sid-f310abaf-6a65-4676-ab74-9f5976c1d5ef\">\r\n        <omgdi:waypoint x=\"205.0\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"-50.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-082d40e9-379e-466d-a6a4-234611adf402\" bpmnElement=\"sid-075ddb5d-f9e2-4225-96af-c556b63c4a6b\">\r\n        <omgdi:waypoint x=\"185.0\" y=\"20.0\"/>\r\n        <omgdi:waypoint x=\"245.0\" y=\"55.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-5c19deb2-15f0-42b7-8d65-1bdd7269e11d\" bpmnElement=\"sid-1e82c493-bc42-4460-a376-d0fbc5a5b205\">\r\n        <omgdi:waypoint x=\"340.0\" y=\"-50.0\"/>\r\n        <omgdi:waypoint x=\"395.0\" y=\"-7.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-05673dfb-105a-4ef8-91c8-3818edcb66cc\" bpmnElement=\"sid-455dff2f-6509-4b24-9f92-706f5254c68a\">\r\n        <omgdi:waypoint x=\"345.0\" y=\"55.0\"/>\r\n        <omgdi:waypoint x=\"395.0\" y=\"7.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0),('112502',1,'process/task/ExcutionListener.bpmn20.xml','112501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"ExcutionListener\" name=\"ExcutionListener\" isExecutable=\"true\">\n    <documentation>ExcutionListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"Ë¥¢Âä°Â≠£Êä•ÂºÄÂßã\"></startEvent>\n    <endEvent id=\"sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\" name=\"Ë¥¢Âä°Â≠£Êä•ÁªìÊùü\"></endEvent>\n    <userTask id=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\" name=\"Ë¥¢Âä°ÂÆ°Êâπ\">\n      <extensionElements>\n        <activiti:executionListener event=\"start\" class=\"com.atlucky.activitystudy.task.listener.FundExecutionListener\"></activiti:executionListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\" name=\"Ë¥¢Âä°ÊÄªÁõëÂÆ°Êâπ\">\n      <extensionElements>\n        <activiti:executionListener event=\"end\" class=\"com.atlucky.activitystudy.task.listener.CFOExecutionListener\"></activiti:executionListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-060847C2-0B0F-4D2A-A9CB-C475395F9845\" sourceRef=\"startEvent1\" targetRef=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\"></sequenceFlow>\n    <sequenceFlow id=\"sid-84DC8956-7205-49F6-B4A5-EDEBB7B945C9\" sourceRef=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\" targetRef=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\"></sequenceFlow>\n    <sequenceFlow id=\"sid-14803610-1638-4ABC-976B-EFE1909C0C6C\" sourceRef=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\" targetRef=\"sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ExcutionListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"ExcutionListener\" id=\"BPMNPlane_ExcutionListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.0\" y=\"163.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\" id=\"BPMNShape_sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"675.0\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\" id=\"BPMNShape_sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"225.0\" y=\"138.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\" id=\"BPMNShape_sid-30434163-6BDC-456B-87E9-7F3C8F531B65\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"465.0\" y=\"138.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-060847C2-0B0F-4D2A-A9CB-C475395F9845\" id=\"BPMNEdge_sid-060847C2-0B0F-4D2A-A9CB-C475395F9845\">\n        <omgdi:waypoint x=\"130.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"225.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-14803610-1638-4ABC-976B-EFE1909C0C6C\" id=\"BPMNEdge_sid-14803610-1638-4ABC-976B-EFE1909C0C6C\">\n        <omgdi:waypoint x=\"565.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"675.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-84DC8956-7205-49F6-B4A5-EDEBB7B945C9\" id=\"BPMNEdge_sid-84DC8956-7205-49F6-B4A5-EDEBB7B945C9\">\n        <omgdi:waypoint x=\"325.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"465.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('125002',1,'process/task/VariableListener.bpmn20.xml','125001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"VariableListener\" name=\"VariableListener\" isExecutable=\"true\">\n    <documentation>VariableListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÂºÄÂßã\"></startEvent>\n    <userTask id=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" name=\"ÈÉ®Èó®ÁªèÁêÜÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" name=\"ÊÄªÁªèÁêÜÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" name=\"CEOÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" name=\"ÂÆ°ÊâπÁªìÊûú\"></userTask>\n    <endEvent id=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" name=\"ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÁªìÊùü\"></endEvent>\n    <sequenceFlow id=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" sourceRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" sourceRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" sourceRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" sourceRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" targetRef=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" sourceRef=\"startEvent1\" targetRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day<=5}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" sourceRef=\"startEvent1\" targetRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${5<day<=15}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" sourceRef=\"startEvent1\" targetRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day>15}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_VariableListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"VariableListener\" id=\"BPMNPlane_VariableListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"171.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" id=\"BPMNShape_sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" id=\"BPMNShape_sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" id=\"BPMNShape_sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"298.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" id=\"BPMNShape_sid-BA1D843F-902A-493E-86E4-98A020B991A1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" id=\"BPMNShape_sid-A9992A74-F656-4FAF-A7E4-E7770F371726\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"1049.5\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" id=\"BPMNEdge_sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\">\n        <omgdi:waypoint x=\"520.0\" y=\"77.98245614035088\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"163.01754385964912\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" id=\"BPMNEdge_sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\">\n        <omgdi:waypoint x=\"135.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" id=\"BPMNEdge_sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\">\n        <omgdi:waypoint x=\"520.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" id=\"BPMNEdge_sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\">\n        <omgdi:waypoint x=\"134.04823390652146\" y=\"180.7419467378448\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"73.71428571428572\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" id=\"BPMNEdge_sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\">\n        <omgdi:waypoint x=\"805.0\" y=\"187.13452188006482\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"1049.5036026006542\" y=\"192.6824156181672\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" id=\"BPMNEdge_sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\">\n        <omgdi:waypoint x=\"520.0\" y=\"311.3333333333333\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"212.66666666666666\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" id=\"BPMNEdge_sid-029AF906-F71A-409B-990A-F7117603DFC9\">\n        <omgdi:waypoint x=\"133.75854949220872\" y=\"191.97514149375922\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"316.2857142857143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('132502',1,'process/task/VariableListener.bpmn20.xml','132501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"VariableListener\" name=\"VariableListener\" isExecutable=\"true\">\n    <documentation>VariableListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÂºÄÂßã\"></startEvent>\n    <userTask id=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" name=\"ÈÉ®Èó®ÁªèÁêÜÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" name=\"ÊÄªÁªèÁêÜÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" name=\"CEOÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" name=\"ÂÆ°ÊâπÁªìÊûú\"></userTask>\n    <endEvent id=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" name=\"ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÁªìÊùü\"></endEvent>\n    <sequenceFlow id=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" sourceRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" sourceRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" sourceRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" sourceRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" targetRef=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" sourceRef=\"startEvent1\" targetRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day<=5}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" sourceRef=\"startEvent1\" targetRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day>15}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" sourceRef=\"startEvent1\" targetRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${5<day&&day<=15}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_VariableListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"VariableListener\" id=\"BPMNPlane_VariableListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"171.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" id=\"BPMNShape_sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" id=\"BPMNShape_sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" id=\"BPMNShape_sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"298.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" id=\"BPMNShape_sid-BA1D843F-902A-493E-86E4-98A020B991A1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" id=\"BPMNShape_sid-A9992A74-F656-4FAF-A7E4-E7770F371726\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"1049.5\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" id=\"BPMNEdge_sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\">\n        <omgdi:waypoint x=\"520.0\" y=\"77.98245614035088\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"163.01754385964912\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" id=\"BPMNEdge_sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\">\n        <omgdi:waypoint x=\"135.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" id=\"BPMNEdge_sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\">\n        <omgdi:waypoint x=\"520.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" id=\"BPMNEdge_sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\">\n        <omgdi:waypoint x=\"134.04823390652146\" y=\"180.7419467378448\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"73.71428571428572\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" id=\"BPMNEdge_sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\">\n        <omgdi:waypoint x=\"805.0\" y=\"187.13452188006482\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"1049.5036026006542\" y=\"192.6824156181672\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" id=\"BPMNEdge_sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\">\n        <omgdi:waypoint x=\"520.0\" y=\"311.3333333333333\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"212.66666666666666\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" id=\"BPMNEdge_sid-029AF906-F71A-409B-990A-F7117603DFC9\">\n        <omgdi:waypoint x=\"133.75854949220872\" y=\"191.97514149375922\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"316.2857142857143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('137502',1,'process/task/VariableListener.bpmn20.xml','137501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"VariableListener\" name=\"VariableListener\" isExecutable=\"true\">\n    <documentation>VariableListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÂºÄÂßã\"></startEvent>\n    <userTask id=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" name=\"ÈÉ®Èó®ÁªèÁêÜÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" name=\"ÊÄªÁªèÁêÜÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" name=\"CEOÂÆ°Êâπ\"></userTask>\n    <userTask id=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" name=\"ÂÆ°ÊâπÁªìÊûú\">\n      <extensionElements>\n        <activiti:taskListener event=\"complete\" class=\"com.atlucky.activitystudy.task.listener.YearTaskListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" name=\"ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÁªìÊùü\"></endEvent>\n    <sequenceFlow id=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" sourceRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" sourceRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" sourceRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" sourceRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" targetRef=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" sourceRef=\"startEvent1\" targetRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day<=5}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" sourceRef=\"startEvent1\" targetRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day>15}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" sourceRef=\"startEvent1\" targetRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${5<day&&day<=15}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_VariableListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"VariableListener\" id=\"BPMNPlane_VariableListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"171.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" id=\"BPMNShape_sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" id=\"BPMNShape_sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" id=\"BPMNShape_sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"298.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" id=\"BPMNShape_sid-BA1D843F-902A-493E-86E4-98A020B991A1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" id=\"BPMNShape_sid-A9992A74-F656-4FAF-A7E4-E7770F371726\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"1049.5\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" id=\"BPMNEdge_sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\">\n        <omgdi:waypoint x=\"520.0\" y=\"77.98245614035088\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"163.01754385964912\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" id=\"BPMNEdge_sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\">\n        <omgdi:waypoint x=\"135.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" id=\"BPMNEdge_sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\">\n        <omgdi:waypoint x=\"520.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" id=\"BPMNEdge_sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\">\n        <omgdi:waypoint x=\"134.04823390652146\" y=\"180.7419467378448\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"73.71428571428572\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" id=\"BPMNEdge_sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\">\n        <omgdi:waypoint x=\"805.0\" y=\"187.13452188006482\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"1049.5036026006542\" y=\"192.6824156181672\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" id=\"BPMNEdge_sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\">\n        <omgdi:waypoint x=\"520.0\" y=\"311.3333333333333\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"212.66666666666666\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" id=\"BPMNEdge_sid-029AF906-F71A-409B-990A-F7117603DFC9\">\n        <omgdi:waypoint x=\"133.75854949220872\" y=\"191.97514149375922\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"316.2857142857143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('25002',1,'process/test01.bpmn20.xml','25001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"test01\" name=\"test01\" isExecutable=\"true\">\n    <documentation>ÊµÅÁ®ãÊºîÁ§∫</documentation>\n    <startEvent id=\"startEvent1\" name=\"ÂºÄÂßãÊµÅÁ®ã\"></startEvent>\n    <endEvent id=\"sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\" name=\"ÁªìÊùüÊµÅÁ®ã\"></endEvent>\n    <userTask id=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\" name=\"Â∞èÁªÑÂÆ°Êâπ\"></userTask>\n    <sequenceFlow id=\"sid-C69925EB-B27F-4992-BEEB-08101DF90969\" sourceRef=\"startEvent1\" targetRef=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\"></sequenceFlow>\n    <sequenceFlow id=\"sid-54CF6AA4-0070-4E06-A085-06763DC8D0B9\" sourceRef=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\" targetRef=\"sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test01\">\n    <bpmndi:BPMNPlane bpmnElement=\"test01\" id=\"BPMNPlane_test01\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"167.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\" id=\"BPMNShape_sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"585.0\" y=\"168.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\" id=\"BPMNShape_sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"360.0\" y=\"142.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-54CF6AA4-0070-4E06-A085-06763DC8D0B9\" id=\"BPMNEdge_sid-54CF6AA4-0070-4E06-A085-06763DC8D0B9\">\n        <omgdi:waypoint x=\"460.0\" y=\"182.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"585.0\" y=\"182.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C69925EB-B27F-4992-BEEB-08101DF90969\" id=\"BPMNEdge_sid-C69925EB-B27F-4992-BEEB-08101DF90969\">\n        <omgdi:waypoint x=\"210.0\" y=\"182.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360.0\" y=\"182.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('25003',1,'process/ÁÆÄÂçïÊµÅÁ®ã.png','25001',_binary 'âPNG\r\n\Z\n\0\0\0\rIHDR\0\0É\0\0\0\È\0\0\0_û=õ\0\0 IDATx^\Ì\›ê\ÂÅ\Aå¢Hr\Ò(I@£Äb@≠î9®\œ\‰R)Õ£.\ÊRI¨ò\À\ÂUóDââ\'F\ÕC£&\ﬁ%\Í]bb\nã—º|+£\À>¡E@∞ è]@\ÿ\Â±\ﬁ%|\◊_≥\À\Ì\ˆ∞\Ï,\Ïs\À\ÔW\ıØù\È\È\È&\”5\Œ?\›˝u\Ár\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿˛®∫∫˙ùµµµW\‘\◊\◊\œM\Új\ÚxS2-HA\Ÿ^WW◊ú|nãíø¨©©πx˛¸˘ì˝å\0\ NR\\˛6)0\œ%Ef\Û\À/øº≠ππ9l‹∏1lŸ≤%º\Ò\∆R`Z[[√Ü\r\¬\Í’´\√\‚≈ã[í2›ñ|ÆøL>\ﬂ\·\Ÿ\œ\0`ükhhú¿\ﬂ\≈∏fÕöºr#{ó≠[∑ÜW^y•-)Ö[í|.˚˘\0\Ï3555oØ´´[ö\ÿ\⁄\÷÷ñWd§\Ô\“\“\“\Êœüø9)Ñ∑Ö\»n\0ÄíJJ\‡[í,_±b\≈_≤\≈Eäì∏óp\·¬Öõì\œ˝ñ\Ï\ˆ\0\0(ô¬Ä˙˙˙\'„πÅ\Ÿ\¬\"\≈M<sﬁºyõ´´´?ï\›.\0\0%QUU\ıÒÜÜÜ\÷\¬\r∑ÖçM/Ö¶eU\È\ﬂ¯<\ÈM6m\⁄jkk[å4\0Jn—¢E%Ed\ı˙\ı\Î\ÛJJ6[∑l\n/ÕΩ=4<\çùy©\Í\ˆtzv^\È]ñ.]∫-\Ÿ7g∑\0@QUUU}h\·¬Öõ≤\ÂdWilò’•v$N\œ\Œ+Ω\À\ÊÕõ\„\ﬁ¡-uuuo\ n#\0Ä¢©ØØü\Ò\⁄kØmœñì¸¥ÖÖè^ïWc\‚táã\˜>\r\r\rìr~nv\0M]]\›\Î\Ò\¬\»\ŸbíM[€∂∞\‡°o\Ê¡ò8=æû}è\Ù.ççç≠≠≠5≤\0(çxæ`uuu¡óíYZyk^åY:\˜∂ºy•\˜Yªvm®ØØ8ªù\0\0ä¢ÆÆ\Ó\Û\Ê\ÕkÕñí\Ó“∫aeX\Ùÿ¥.E0>è”≥\ÛJ\Ôo[ólìÖ\Ÿ\Ì\0Pïïï\'œü?c∂î\Ï.[[7Ñ◊û(ºZW˙w\Î\Ê\ry\Û»û%\ﬁ˚πææ~Yv;\0≈ûîA)^îA\0†§zS[__ï\Ó	|•\Ó\Œ\Ù¡é\ƒ\Áq˙Êç´\Û\ﬁ#Ωã2\0îTae∞--{º<o\‡Hó\≈N\r´ñ<íŒüø)$\  \0PRÖî¡U/<öW¸vóU/<ñ∑),\  \0PR=ï¡--M\›^[∞ª\ƒ˘∑¥4\Á-Kzé2\0îTOep\Õ\“9yeØê¨y\È…ºeI\œQÄí\Í©vw/\‚û\“\ÿpoﬁ≤§\Á(É\0@I\ıTõ^ùñ7T\Ù:\Ò}\ŸeI\œQÄí\Í©Ji£\0%•ñWîA\0†§î¡\Úä2–üL\Àêõï{oÆ\"w}í9I^L\“⁄û¯8Nª>ù\'\Œ˚Ä2X^Q˙É_\‰\Âf\Ê.Oä\ﬁ\⁄$a@≈Ä0\‰∂!a¯u\√\√;Æ|Gu≈®\∂´\ﬁéº\Ò\»p–ùÖ8O:o|O|/îê2X^Q\ÈN\»\ÂNK2-\…\„I^L\“⁄û¯8NãØùñ}Pj3s&≈Æ1º\√n;,å˘\Úòp\ˆ\Œ\ÁúsN∑9\„cg§%\Ò¿\È\∆Rÿò.JD,Ø(Éd%\Ô¢$KíÑ¶AÉ\¬\√\«~>zt∏iÃò\√±c\√œí«è&\”\‚kqû\ˆy/\ .(∂êêπkc	<¯ŒÉ\√Iü?)ús\Ó9\·}º/å˘“ò0\ÙC\√!w\Ãê\Ó	å\≈o\»OáÑ∑O{{x\˜ßﬁù\ŒK„à´GÑ§\∆yÆMó	E¶ñWîA:$Ö\Ó\ÿ$s∑û\Z6,|\Ò\Ù\”\Ûv&d\ÛÖdû\Ÿ…ºM\ﬁ\ﬂóë].P±¥\Õ\Ã\›K\ﬁ\·7\Œ˛\‡\Ÿa\“˘ì\“\√¡ß\Ï8º\€æmpˇô\Ò\Èó˘\‘KN\r\ÔK\·=\n!≈¶ñWîA¢§ƒùù§y≈°áÜ/MúòW˙zJ,Ö\ÀéÖ∞9.+ª|†Øµ\Ô\ˆΩaa\ yS\¬\Èˇxz∫0[¯\n…àkFÑ\…\ÁM>1aG!åÀÜ\"R\À+\  \ÌE\çπG.ò4)Ø\Ëö&OqqY\n!”és∑\«=Ç±éˇ\Ù¯é∑\«9\‚¶#\“B\˜\∆e;áêbR\À+\ \‡˛≠˝\–p\Ûüá\r\Ôü2%Ø\‡\≈iWå\Ó5*<v\Ù\—a\ˆ\\·af\Ú8N;?)ªöø\Ú®£:\ˆ:d}.é¸≠\»5\∆s\„°\·∏Gpoã`G\‚\¬¯EN\œ!åÉJå2¶H\n-É\Ûü}6¸\‚ów\ÊM\Ô\»\’\◊\\õ˛}\ˆŸÜPUUù\Ê˛˚ñº\Bﬁº1ø∫\Î\◊a’™Uy\”;\ÚùkÆKˇ\∆r\‘˘oè2∏ã\Á˘-<8| ≥G\\‹$?\Z3&¨;¯\‡éA\"yiN^ªq\ÏÿºB¯…≤\⁄\œÕÆ\ÿ[≥ró\≈\‚ã\ƒs\˜\Ù\–pwˇ\Ÿ\ÒÈ†ítîq\\A°e∞°aA∏g\∆Ãº\È1\Û\Ê\œ<¯PhjjJ\„ö5k\”\Èw˛\ÍÆ\\Ú\À/\Ôú\ÔÈßü˘ø¢¯\€ﬂÖGyt\Á\Û˚\Óø?ùg\Â\ \◊\“\Á_˘ÍøÜª~==\\>\ıõ°µµ5¸\·èL◊ë]wã2∏ˇJ\ \⁄Eq∞»•gûŸ•\Ã} \Ó›±wØ†<9lXxf/\·ó\'N\€wºnî1\Ùôxë\Ëä‹öx˘ò88…ñπΩ\Õa∑\ÔXvº\ÏL\Ú|çSS=ï¡u\Î◊áÖãÖvî¡é¢\◊9øû>=l›∂-\\˙˘/§e\\Ò\'ûH\›u\ﬂ˝^x\ı\’e\È<\Ò\ı~x\„\Œ\˜<˝\Ã3;ã‚äï+√Ωøπ/ùg\Î÷≠°≠≠-|\Ô˚?H_\Î¯˚\√è§\ÀlnnN_\œ˛˙Kî¡˝WR‘ñ<~\Ù\—y{´è8\"Ø\\ıî?%Ö0æ∑\Û≤\Ê_[í]/∞ß*rg\≈\¬v\‚óNL/S\Ë®\·\ﬁ&^v&^á∞˝˘Y\Ÿ\ÏŒ∏q\„\∆\Á>\ÚëÅ\Ÿ\Èù\ıTc—ã{¯:\ \‡ä+\¬\Ù\Èw\Ô|=≈´¶]ùΩxà8\Œ\€y\œ`Gåâ\≈rŒìJK\›\˜p}x\‡Å\”\«≥\“\"\ÿyΩó]>5<\ı‘ü√¥´øfVTÑ;\Ô¸Ux¶≤2L˝\Ê\·˘\Áü\œ˚w\ˆó(É˝K!\ﬂ¡(Ï∏†t∏$≥W\\ﬂO8!Ø\Ëö«å\È∫wp¬Ñé\◊\\ò\Z˙ƒ¨\‹\r\Ò\Œ\"\Ò0nºé`∂\ƒ\ıU\‚u\„\ﬁ¡\ÙN%\…:≥ˇÿù±\„N∫wÃ∏ì_{\“Iw\˜É¥ª2∏©•%|\Î\€W¶è;\ `|¸\‡CÖ\Îo¯\·\Œ˘÷Æ]*f›õ>épW{cVØ^ùNãØ\≈\˜wî¡+ˇ\Ì™ù\Û\‘\’’ákÆΩ.|\Ì\Î\ﬂHüw\ﬁ3¯£ﬂíÆ+˚\Ô\ÏOQ˚óBæÉQR–¶\≈\Û˙:ó∑8 dw\Á\ˆî\ı\…{≥ÉPVrH|mZv˝¿û®\»Õâ∑òã_Æ°\◊\Õ+q}ïxaÍ∏éx\Î∫\\ºó1\ÙB˚Qh\œ.êvW\Ôæg\∆ŒΩ|ù\À`\Ã?}\Í\”a˘\Ú\Âa˝˙\ı\·kﬂ∏,¸\Ó\˜H\˜\ÿ\Ìn\œ\‡\Í5k\“i\Òq\\V\«k7\ﬁt\Û\Œyñ-[ñ\ÓA\Ï\Ó0q\ˆ\ﬂ\ÿﬂ¢\ˆ/Ö|£§†\Õ~\òc∫∑©\ÔzW^¡\ÎmÆ<\ı\‘.Àåá°ìÈ≥≥\Î\ˆDEn\…\\ÔOø\\á¸ºoétN<\◊\Ôeú<wÆΩí˘!\⁄\ÂRwe0∑xH∏\„y∂.^¸|z~_<ºvÃò93}}∑e∞õ=É{;ßª2\◊\˜Xf\Á\Ô/Q˚óBæÉQR–ñ\‹~¸\Ò]ä\€\›\«õW\Ózõx	ö\Œ\À¸\œ—£\„tø%\–\'*r-q`G¸r0„Äº\◊gôô\Î<@•%˘\»GO{\“U\"Ö$˘\—Y¥ã¢.?Hœû}\ÍÆ\ `\Á¨Iäa	\‹q(∏s\‚y}˙\Ö°¶∂6=0ñΩŒáâz\Îm;\˜\Ë≈Ωà\Á˚≈ΩéE1éF\Ó\\Ü\‚ ëx®8>èe∞≤rn¯\Ÿ\œ\ÔHó/G\Û\‹s\œ\Â˝;˙K\‚ˇ˛\ﬂrKSv[\ ˇ\œ\Úå•0)h-7å◊•∏\≈\Îf\À]o\Û\ÿ\;-:r\√ÿ±qzK\ˆ\'\r\ÿI1\ı≠QiQkøópqí-Éª˛ô\"{ú\”\ﬁ=q\ﬁ3\œ<≥)[J:\'ñºO\Êí\–\ÿÿò\˜ZKKKX∑n]˙8ñΩ\Ï@ê\Ó2\Î\ﬁ\ﬂ\Ïry\Ò22\ÒöÖO<1;}G(W\◊‘§ÉS\‚`íXs\ﬂ}y\Ô\Î/âe\rKv;Iˇ\Õ\ÿqß<\›r¿≠±®\ıuå•V°X*rK\ﬁ6\Ìm\Èó\Î¿ª\Ã/q}î\Ïab{•7≥˚ΩMI.õ>}˙\È=\Ì‹óâe3;≠?«û¡˛ïBæÉßúr\ ‡§†-˘\Ÿ\Ë\—]ä€åë#\Û\ ]osw\ˆ0\Ò\Ò\«\«\ÈCü®\»Õâ∑çã_Æ∑¸\«[\ÚJ\\_\≈\0\ˆF7{íw˛\0\≈y∫;gP\ˆMú3ÿø\ÚåíÇ6˚\—\Ã\0í8¯#[\Ózõ©ßù\÷eôê@_öïª\·MwΩ)L9wJy\≈»º\◊Wqi\ˆF\Êá(\Ô(R\À+\ `ˇR\»w0J\n⁄¥¶AÉ∫\\(˙\Ô\'O\Î:(Ø\‡ö∏º\Ï•e÷∫¥\Ù°\ˆãNO¯\‰Ñp\∆\«w^∫\œ\„¢\”\Ïç\ˆ¢nÄ\"e∞º¢\ˆ/Ö|£\–~\—\È/û~zó\Ú\ˆìΩ∏\Ët\ˆƒØ∫\Ë4\Ù±\ˆ\€\—}›é[~\Û\·yEno\„vt\Ï≠∆çõ¥ª†H,Ø(É˝K!\ﬂ¡II[o◊π¿ùó§nnG\˜\‘–°]ñ\ÔY◊ë]/∞7f\Â.0c@xœÖ\Ô	g~\Ù\Ã>ø\ƒ\Ã¯œéO\Ôpë\ƒueW}A,Ø(É˚Ø§®]\Ù\◊\¬?üqFów¡§IΩ∫?q\ÂQG•áò;/\„ã\'Ü\Ì;^ø(ª^`o¸\"7()mço˝\—[\”=x\'|ÂÑºB∑ßqÕà\Ù<\‚\Í\Òyc∫.(e∞º¢\Óﬂí≤6\˜\Â!C\“[\—u.s\Ò\\\¬üxbh\⁄\Õ\Ì\È6tPz/\„\Œ\Á\∆|0)ì\ÒVwq\Ÿ\Ÿ\ı}af\Ó¬§¨m?\Ó\Ú\„\“/\›qSè\À+vΩM•<˘º\…\·\‘KNçœ∑ß\ÎÄ\"Q\À+\ \‡˛-)l\«&iû3lXzà∏s©ã9 î\Ù6u\”GçJØ!¯xíY#G¶#èﬂü)ê1ó\Ãˇ\Á°Cclé\ÀŒÆ\Ë+πk\„≈°O¯\Í	\Èóo\Ï∆ÜÅ\”ÊïºB\˜\∆\"8\·\¬¿ª\”e\\õ]\Ù%e∞º¢íî∂≥ìº\ÒDR\Ù.\ÿE¡+4\ÒΩ\Ò\‹¡∏¨∏\Ã\ÏzÄærí2xO,s#ø=2L9oJ8\Î\√gÖx\Ô\‚xNa∂\\Ì*Éo\∆f|˙é{\”\"óó\rE§ñWîA¢\ˆB\ÿ¸\‚ê!y\ÁíKì\˜ºz\ÿa{A(âX\⁄\‚^ºääûx\Ò\ƒ\Ùy÷á\Œ\n\Ô¸\⁄;”ãF∫c\–\ŒrÖ\ƒ˘\‚u\„\Âc\‚9áq∞Hzé\‡é\€\€]´R\n\ `yE§C˚!\„πqP\…#G˛%sŸô]%\«xª\Ì\…{\‚{\ZÜ}a\«9Ñç±\\≈\ÀÕú|\È\…a\“˘ìÚæ∞ùØ#/ìé\Zé\Ôué %§ñWîA≤íBwQí%I\¬\ÍAÉ¬£IŸªc\Ù\Ëp\„ÿ±\·¶1c\¬|Z_;\Ù–é¡$q^£Üaüä#g\Ê.Oä\›\⁄X\n\„\ﬁ¿7ˇ\‰\Õ!^ì0ñæQWåJ\Ô5\˜¶w\Ÿq®xm˙£Ü)1e∞º¢“ù∞\„\¬\‘”í<û\‰\≈$≠Ìâè\„¥¯öJCYââûï{oR\ÙÆ\œ\≈˚\nW\‰^L\“⁄û¯8Nª>ù\«•\ŸGî¡\Úä2\0îî2X^QÄíR\À+\  \0PR\ `yE\0JJ,Ø(É\0@I)É\Âe\0()e∞º¢\0%•ñWîA\0†§î¡\Úä2\0îî2X^QÄíR\À+\  \0PR\ `yE\0JJ,Ø(É\0@I)É\Âe\0(©\Í\Í\Íc\ÁÕõ◊ö-%≤o≤a√ÜXü\œn\'\0Ä¢ò3gŒ†öööˇ…ñ\Ÿ7ijjäe\±\Ïv\0(ö\⁄\⁄\⁄\÷Õõ7\Á)}VÆ\\πΩÆÆ\Ó\÷\Ï6\0(ö˙˙˙ﬂØZµ*ØòH\È\Û\‹s\œm¨©©˘`v\0MR>>∂x\Ò\‚M\Ÿb\"•Õñ-[B≤-∂UVVí\›F\0\0ESWWwhí\rØø˛z^Aë\“\ÂïW^y£∂∂\ˆé\Ï\ˆ\0(∫§Ñ|n\·¬ÖFÔ£¥∂∂Üdl©©©û\›6\0\0E7gŒú\Î\Í\Í\Zñ/_˛\ﬂŸ¢\"\≈Õ∂m\€BCC\√\Ê§~=ª]\0\0J¶™™jXRõ÷¨Y≥=[X§8ikkKñ,Ÿö|\Ó3≥\€\0†\‰jjj\∆%\≈d\Ì≤e\À\ﬁ\»\È\€\ƒ#,ÿú|\ﬁX∫t\È¡\Ÿm\0∞OÃõ7\Ô®˙˙˙⁄ÜÜÜ\÷\ı\Î\◊\ÁïŸªƒΩÅ+WÆ¸KR\„9Ç\◊d?\0Ä≤PUU\ı\Ò\⁄\⁄\⁄\’\œ>˚\Ï¶\∆\∆∆ø\ƒ˚\Ê∆ΩY\Ÿr#=\'Y∑n]xÈ•ó∂%E{Kí\«\ÁŒù;&˚ô\0îï8∞$)ÖìíRxkR`^M˛n™ÆÆ“´ƒªä4\'ü_}MM\Õ\‘\ \ \ \—\Ÿ\œ\0\0\0\0\0\0\0\0\0\0\0\0†,¸/5åøâMIe\0\0\0\0IENDÆB`Ç',0),('32502',1,'process/userRole.bpmn20.xml','32501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã\" name=\"Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã\" isExecutable=\"true\">\n    <documentation>Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã</documentation>\n    <startEvent id=\"startEvent1\" name=\"Áî®Êà∑ËßíËâ≤ÂÆ°ÊâπÊµÅÂºÄÂßã\"></startEvent>\n    <endEvent id=\"sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\" name=\"Áî®Êà∑ËßíËâ≤ÂÆ°ÊâπÊµÅÁªìÊùü\"></endEvent>\n    <userTask id=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\" name=\"ÁªÑÈïøÂÆ°Êâπ\" activiti:assignee=\"ÁªÑÈïø\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-42F71578-353D-4DFC-B416-3711461382EA\" sourceRef=\"startEvent1\" targetRef=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-1CA89464-9C31-420B-8920-C49C297AB763\" sourceRef=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\" targetRef=\"sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã\">\n    <bpmndi:BPMNPlane bpmnElement=\"Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã\" id=\"BPMNPlane_Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.0\" y=\"163.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\" id=\"BPMNShape_sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"602.25\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\" id=\"BPMNShape_sid-38350259-B7E9-465A-8346-8F99E6FD575D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"315.0\" y=\"138.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1CA89464-9C31-420B-8920-C49C297AB763\" id=\"BPMNEdge_sid-1CA89464-9C31-420B-8920-C49C297AB763\">\n        <omgdi:waypoint x=\"415.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"602.25\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-42F71578-353D-4DFC-B416-3711461382EA\" id=\"BPMNEdge_sid-42F71578-353D-4DFC-B416-3711461382EA\">\n        <omgdi:waypoint x=\"130.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"315.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('40002',1,'process/grouper.bpmn20.xml','40001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"grouper\" name=\"grouper\" isExecutable=\"true\">\n    <documentation>grouper</documentation>\n    <startEvent id=\"startEvent1\" name=\"ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπÂºÄÂßã\"></startEvent>\n    <endEvent id=\"sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\" name=\"ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπÁªìÊùü\"></endEvent>\n    <userTask id=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\" name=\"ÁªÑÈïøÂÆ°Êâπ\" activiti:assignee=\"${group}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-AE13B4C9-CCA1-4EAA-B421-A161EAA61353\" sourceRef=\"startEvent1\" targetRef=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\"></sequenceFlow>\n    <sequenceFlow id=\"sid-4ABB4E94-3413-4B50-AE8C-3EDF329ADE04\" sourceRef=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\" targetRef=\"sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_grouper\">\n    <bpmndi:BPMNPlane bpmnElement=\"grouper\" id=\"BPMNPlane_grouper\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"120.0\" y=\"173.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\" id=\"BPMNShape_sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"783.25\" y=\"174.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\" id=\"BPMNShape_sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"412.25\" y=\"148.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4ABB4E94-3413-4B50-AE8C-3EDF329ADE04\" id=\"BPMNEdge_sid-4ABB4E94-3413-4B50-AE8C-3EDF329ADE04\">\n        <omgdi:waypoint x=\"512.25\" y=\"188.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"783.25\" y=\"188.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-AE13B4C9-CCA1-4EAA-B421-A161EAA61353\" id=\"BPMNEdge_sid-AE13B4C9-CCA1-4EAA-B421-A161EAA61353\">\n        <omgdi:waypoint x=\"150.0\" y=\"188.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"412.25\" y=\"188.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('52502',1,'process/grouperProcess.bpmn20.xml','52501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"grouperProcess\" name=\"grouperProcess\" isExecutable=\"true\">\n    <documentation>ÁÅµÊ¥ªÂÆ°ÊâπÂæÖÂäû‰∫∫ÂëòÔºåÂÆ°ÊâπÊµÅÁ®ã</documentation>\n    <startEvent id=\"startEvent1\"></startEvent>\n    <endEvent id=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></endEvent>\n    <userTask id=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" name=\"ËØ∑ÂÅáÊµÅÁ®ã\"></userTask>\n    <userTask id=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" name=\"ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ\" activiti:assignee=\"${group}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" sourceRef=\"startEvent1\" targetRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\"></sequenceFlow>\n    <sequenceFlow id=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" sourceRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" targetRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" sourceRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" targetRef=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_grouperProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"grouperProcess\" id=\"BPMNPlane_grouperProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\" id=\"BPMNShape_sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"764.25\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" id=\"BPMNShape_sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"285.0\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" id=\"BPMNShape_sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"520.25\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" id=\"BPMNEdge_sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\">\n        <omgdi:waypoint x=\"385.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"520.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" id=\"BPMNEdge_sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\">\n        <omgdi:waypoint x=\"620.25\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"764.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" id=\"BPMNEdge_sid-7A233D50-B892-48F1-80CD-AAD61F82007D\">\n        <omgdi:waypoint x=\"180.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"285.0\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('75002',1,'process/grouperProcess.bpmn20.xml','75001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"grouperProcess\" name=\"grouperProcess\" isExecutable=\"true\">\n    <documentation>ÁÅµÊ¥ªÂÆ°ÊâπÂæÖÂäû‰∫∫ÂëòÔºåÂÆ°ÊâπÊµÅÁ®ã</documentation>\n    <startEvent id=\"startEvent1\"></startEvent>\n    <endEvent id=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></endEvent>\n    <userTask id=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" name=\"ËØ∑ÂÅáÊµÅÁ®ã\"></userTask>\n    <userTask id=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" name=\"ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ\" activiti:assignee=\"${group}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" sourceRef=\"startEvent1\" targetRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\"></sequenceFlow>\n    <sequenceFlow id=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" sourceRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" targetRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" sourceRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" targetRef=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_grouperProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"grouperProcess\" id=\"BPMNPlane_grouperProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\" id=\"BPMNShape_sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"764.25\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" id=\"BPMNShape_sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"285.0\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" id=\"BPMNShape_sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"520.25\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" id=\"BPMNEdge_sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\">\n        <omgdi:waypoint x=\"385.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"520.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" id=\"BPMNEdge_sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\">\n        <omgdi:waypoint x=\"620.25\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"764.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" id=\"BPMNEdge_sid-7A233D50-B892-48F1-80CD-AAD61F82007D\">\n        <omgdi:waypoint x=\"180.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"285.0\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('92502',1,'process/claimTask.bpmn20.xml','92501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"claimTask\" name=\"claimTask\" isExecutable=\"true\">\n    <documentation>claimTask</documentation>\n    <startEvent id=\"startEvent1\"></startEvent>\n    <endEvent id=\"sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\"></endEvent>\n    <userTask id=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\" name=\"Â§ñÂá∫ËÄÉÂã§\" activiti:candidateUsers=\"test,xiaozhang,xiaowang,liuzi,wanggang\"></userTask>\n    <sequenceFlow id=\"sid-627D9956-34F9-4A95-8EEC-416627EF4C36\" sourceRef=\"startEvent1\" targetRef=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\"></sequenceFlow>\n    <sequenceFlow id=\"sid-482AEA3C-F95F-4AD9-B1F6-D6B28EBA3CB2\" sourceRef=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\" targetRef=\"sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_claimTask\">\n    <bpmndi:BPMNPlane bpmnElement=\"claimTask\" id=\"BPMNPlane_claimTask\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.0\" y=\"168.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\" id=\"BPMNShape_sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"690.0\" y=\"169.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\" id=\"BPMNShape_sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"345.0\" y=\"143.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-482AEA3C-F95F-4AD9-B1F6-D6B28EBA3CB2\" id=\"BPMNEdge_sid-482AEA3C-F95F-4AD9-B1F6-D6B28EBA3CB2\">\n        <omgdi:waypoint x=\"445.0\" y=\"183.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"690.0\" y=\"183.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-627D9956-34F9-4A95-8EEC-416627EF4C36\" id=\"BPMNEdge_sid-627D9956-34F9-4A95-8EEC-416627EF4C36\">\n        <omgdi:waypoint x=\"130.0\" y=\"183.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"345.0\" y=\"183.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('next.dbid','147501',60),('schema.history','create(7.0.0.0)',1),('schema.version','7.0.0.0',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('100001','claimTask:1:92503','95001','95002','sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E',NULL,NULL,NULL,'endEvent',NULL,'2023-11-27 11:06:03.887','2023-11-27 11:06:03.887',0,NULL,''),('115003','ExcutionListener:1:112503','115001','115002','startEvent1',NULL,NULL,'Ë¥¢Âä°Â≠£Êä•ÂºÄÂßã','startEvent',NULL,'2023-11-27 12:09:51.184','2023-11-27 12:09:51.185',1,NULL,''),('115004','ExcutionListener:1:112503','115001','115002','sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F','115005',NULL,'Ë¥¢Âä°ÂÆ°Êâπ','userTask',NULL,'2023-11-27 12:09:51.187','2023-11-27 12:10:10.152',18965,NULL,''),('117501','ExcutionListener:1:112503','115001','115002','sid-30434163-6BDC-456B-87E9-7F3C8F531B65','117502',NULL,'Ë¥¢Âä°ÊÄªÁõëÂÆ°Êâπ','userTask',NULL,'2023-11-27 12:10:10.162','2023-11-27 12:10:21.916',11754,NULL,''),('120001','ExcutionListener:1:112503','115001','115002','sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595',NULL,NULL,'Ë¥¢Âä°Â≠£Êä•ÁªìÊùü','endEvent',NULL,'2023-11-27 12:10:21.924','2023-11-27 12:10:21.924',0,NULL,''),('12503','oa-leave:1:10004','12501','12502','sid-2250b950-16b5-47f4-ba0d-1b6578759e19',NULL,NULL,'ÂºÄÂßã‰∫ã‰ª∂','startEvent',NULL,'2023-11-21 16:31:51.122','2023-11-21 16:31:51.134',12,NULL,''),('12504','oa-leave:1:10004','12501','12502','sid-d1ca3cb5-2939-446e-b632-354f60c7b695','12505',NULL,'ÁªèÁêÜÂÆ°Êâπ','userTask',NULL,'2023-11-21 16:31:51.135','2023-11-23 10:13:23.198',150092063,NULL,''),('135004','VariableListener:2:132503','135001','135003','startEvent1',NULL,NULL,'ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÂºÄÂßã','startEvent',NULL,'2023-11-27 17:26:53.371','2023-11-27 17:26:53.373',2,NULL,''),('135005','VariableListener:2:132503','135001','135003','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','135006',NULL,'CEOÂÆ°Êâπ','userTask',NULL,'2023-11-27 17:26:53.389','2023-11-27 17:32:24.539',331150,NULL,''),('140004','VariableListener:3:137503','140001','140003','startEvent1',NULL,NULL,'ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÂºÄÂßã','startEvent',NULL,'2023-11-27 17:32:02.686','2023-11-27 17:32:02.688',2,NULL,''),('140005','VariableListener:3:137503','140001','140003','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','140006',NULL,'CEOÂÆ°Êâπ','userTask',NULL,'2023-11-27 17:32:02.706','2023-11-27 17:32:24.706',22000,NULL,''),('142501','VariableListener:2:132503','135001','135003','sid-BA1D843F-902A-493E-86E4-98A020B991A1','142502',NULL,'ÂÆ°ÊâπÁªìÊûú','userTask',NULL,'2023-11-27 17:32:24.596','2023-11-27 17:32:47.697',23101,NULL,''),('142503','VariableListener:3:137503','140001','140003','sid-BA1D843F-902A-493E-86E4-98A020B991A1','142504',NULL,'ÂÆ°ÊâπÁªìÊûú','userTask',NULL,'2023-11-27 17:32:24.707','2023-11-27 17:32:47.822',23115,NULL,''),('145001','VariableListener:2:132503','135001','135003','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÁªìÊùü','endEvent',NULL,'2023-11-27 17:32:47.709','2023-11-27 17:32:47.710',1,NULL,''),('145002','VariableListener:3:137503','140001','140003','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'ËØ∑Âπ¥ÂÅáÊµÅÁ®ãÁªìÊùü','endEvent',NULL,'2023-11-27 17:32:47.822','2023-11-27 17:32:47.822',0,NULL,''),('15001','oa-leave:1:10004','12501','12502','sid-d069226f-faab-475c-9890-62df1f11c8d5','15002',NULL,'‰∫∫‰∫ãÂÆ°Êâπ','userTask',NULL,'2023-11-23 10:13:23.214','2023-11-23 10:16:50.589',207375,NULL,''),('17501','oa-leave:1:10004','12501','12502','sid-df19fd57-4765-4ff7-a562-0e718c777dde',NULL,NULL,NULL,'parallelGateway',NULL,'2023-11-23 10:16:50.602','2023-11-23 10:16:50.606',4,NULL,''),('17503','oa-leave:1:10004','12501','12502','sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a','17504',NULL,'CEOÂÆ°Êâπ','userTask',NULL,'2023-11-23 10:16:50.608','2023-11-23 10:19:58.511',187903,NULL,''),('17505','oa-leave:1:10004','12501','17502','sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4','17506',NULL,'ÊÄªÁªèÁêÜÂÆ°Êâπ','userTask',NULL,'2023-11-23 10:16:50.620','2023-11-23 10:18:37.108',106488,NULL,''),('20001','oa-leave:1:10004','12501','17502','sid-05e32e4b-bf68-462d-bd29-65f88c054bd4',NULL,NULL,'ÊµÅÁ®ãÁªìÊùü','endEvent',NULL,'2023-11-23 10:18:37.121','2023-11-23 10:18:37.121',0,NULL,''),('22501','oa-leave:1:10004','12501','12502','sid-05e32e4b-bf68-462d-bd29-65f88c054bd4',NULL,NULL,'ÊµÅÁ®ãÁªìÊùü','endEvent',NULL,'2023-11-23 10:19:58.522','2023-11-23 10:19:58.522',0,NULL,''),('27503','test01:1:25004','27501','27502','startEvent1',NULL,NULL,'ÂºÄÂßãÊµÅÁ®ã','startEvent',NULL,'2023-11-23 11:14:54.267','2023-11-23 11:14:54.268',1,NULL,''),('27504','test01:1:25004','27501','27502','sid-6E0AE080-13AF-4417-9BD9-A152374AF10A','27505',NULL,'Â∞èÁªÑÂÆ°Êâπ','userTask',NULL,'2023-11-23 11:14:54.269','2023-11-23 11:16:09.836',75567,NULL,''),('30001','test01:1:25004','27501','27502','sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A',NULL,NULL,'ÁªìÊùüÊµÅÁ®ã','endEvent',NULL,'2023-11-23 11:16:09.895','2023-11-23 11:16:09.895',0,NULL,''),('35003','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','35001','35002','startEvent1',NULL,NULL,'Áî®Êà∑ËßíËâ≤ÂÆ°ÊâπÊµÅÂºÄÂßã','startEvent',NULL,'2023-11-23 11:35:27.999','2023-11-23 11:35:28.000',1,NULL,''),('35004','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','35001','35002','sid-38350259-B7E9-465A-8346-8F99E6FD575D','35005',NULL,'ÁªÑÈïøÂÆ°Êâπ','userTask','ÁªÑÈïø','2023-11-23 11:35:28.001','2023-11-23 16:10:03.250',16475249,NULL,''),('37503','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','37501','37502','startEvent1',NULL,NULL,'Áî®Êà∑ËßíËâ≤ÂÆ°ÊâπÊµÅÂºÄÂßã','startEvent',NULL,'2023-11-23 15:46:51.547','2023-11-23 15:46:51.548',1,NULL,''),('37504','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','37501','37502','sid-38350259-B7E9-465A-8346-8F99E6FD575D','37505',NULL,'ÁªÑÈïøÂÆ°Êâπ','userTask','ÁªÑÈïø','2023-11-23 15:46:51.549','2023-11-23 16:10:03.331',1391782,NULL,''),('45004','grouper:1:40003','45001','45003','startEvent1',NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπÂºÄÂßã','startEvent',NULL,'2023-11-23 16:05:34.493','2023-11-23 16:05:34.495',2,NULL,''),('45005','grouper:1:40003','45001','45003','sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24','45006',NULL,'ÁªÑÈïøÂÆ°Êâπ','userTask','JavaCÁªÑÁªÑÈïøÁéã‰∫î','2023-11-23 16:05:34.497','2023-11-23 16:11:12.500',338003,NULL,''),('47501','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','35001','35002','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'Áî®Êà∑ËßíËâ≤ÂÆ°ÊâπÊµÅÁªìÊùü','endEvent',NULL,'2023-11-23 16:10:03.265','2023-11-23 16:10:03.265',0,NULL,''),('47502','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','37501','37502','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'Áî®Êà∑ËßíËâ≤ÂÆ°ÊâπÊµÅÁªìÊùü','endEvent',NULL,'2023-11-23 16:10:03.331','2023-11-23 16:10:03.331',0,NULL,''),('50001','grouper:1:40003','45001','45003','sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767',NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπÁªìÊùü','endEvent',NULL,'2023-11-23 16:11:12.510','2023-11-23 16:11:12.510',0,NULL,''),('55003','grouperProcess:1:52503','55001','55002','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-23 16:21:23.958','2023-11-23 16:21:23.959',1,NULL,''),('55004','grouperProcess:1:52503','55001','55002','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','55005',NULL,'ËØ∑ÂÅáÊµÅÁ®ã','userTask',NULL,'2023-11-23 16:21:23.960','2023-11-23 16:32:44.020',680060,NULL,''),('60002','grouperProcess:1:52503','55001','55002','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','60003',NULL,'ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ','userTask','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠','2023-11-23 16:32:44.023','2023-11-23 16:33:29.316',45293,NULL,''),('62501','grouperProcess:1:52503','55001','55002','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,NULL,'endEvent',NULL,'2023-11-23 16:33:29.330','2023-11-23 16:33:29.330',0,NULL,''),('65003','grouperProcess:1:52503','65001','65002','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-23 17:09:26.371','2023-11-23 17:09:26.372',1,NULL,''),('65004','grouperProcess:1:52503','65001','65002','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','65005',NULL,'ËØ∑ÂÅáÊµÅÁ®ã','userTask',NULL,'2023-11-23 17:09:26.373','2023-11-23 17:13:06.842',220469,NULL,''),('70002','grouperProcess:1:52503','65001','65002','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','70003',NULL,'ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ','userTask','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠','2023-11-23 17:13:06.844','2023-11-23 17:13:50.253',43409,NULL,''),('72501','grouperProcess:1:52503','65001','65002','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,NULL,'endEvent',NULL,'2023-11-23 17:13:50.264','2023-11-23 17:13:50.264',0,NULL,''),('77503','grouperProcess:2:75003','77501','77502','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-24 13:55:22.035','2023-11-24 13:55:22.036',1,NULL,''),('77504','grouperProcess:2:75003','77501','77502','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','77505',NULL,'ËØ∑ÂÅáÊµÅÁ®ã','userTask',NULL,'2023-11-24 13:55:22.037','2023-11-24 14:12:40.829',1038792,NULL,''),('87505','grouperProcess:2:75003','77501','77502','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','87506',NULL,'ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ','userTask','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠','2023-11-24 14:12:40.831','2023-11-24 14:14:43.448',122617,NULL,''),('90001','grouperProcess:2:75003','77501','77502','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,NULL,'endEvent',NULL,'2023-11-24 14:14:43.458','2023-11-24 14:14:43.458',0,NULL,''),('95003','claimTask:1:92503','95001','95002','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-27 10:35:17.807','2023-11-27 10:35:17.809',2,NULL,''),('95004','claimTask:1:92503','95001','95002','sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA','95005',NULL,'Â§ñÂá∫ËÄÉÂã§','userTask','wanggang','2023-11-27 10:35:17.811','2023-11-27 11:06:03.828',1846017,NULL,'');
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
INSERT INTO `act_hi_comment` VALUES ('80001','ÂêåÊÑè','2023-11-24 14:04:15.760',NULL,'77505','77501','AddComment','Â§áÊ≥®ÊÑèËßÅ',_binary 'Â§áÊ≥®ÊÑèËßÅ'),('80002','comment','2023-11-24 14:04:15.807',NULL,'77505','77501','AddComment','ÂêåÊÑè',_binary 'ÂêåÊÑè'),('82501','ÂêåÊÑè','2023-11-24 14:07:30.887',NULL,'77505','77501','AddComment','Â§áÊ≥®ÊÑèËßÅ',_binary 'Â§áÊ≥®ÊÑèËßÅ'),('82502','comment','2023-11-24 14:07:30.907',NULL,'77505','77501','AddComment','ÂêåÊÑè',_binary 'ÂêåÊÑè'),('87501','APPROVE.OK','2023-11-24 14:12:40.739',NULL,'77505','77501','AddComment','ËøëÊúüË°®Áé∞ËâØÂ•ΩÔºåÂáÜÂÅá',_binary 'ËøëÊúüË°®Áé∞ËâØÂ•ΩÔºåÂáÜÂÅá'),('97501','ÂêåÊÑè','2023-11-27 10:35:28.265',NULL,'95005','95001','AddComment','Â§áÊ≥®ÊÑèËßÅ',_binary 'Â§áÊ≥®ÊÑèËßÅ'),('97502','comment','2023-11-27 10:35:28.285',NULL,'95005','95001','AddComment','ÂêåÊÑè',_binary 'ÂêåÊÑè');
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('35006',NULL,'participant','ÁªÑÈïø',NULL,'35001'),('37506',NULL,'participant','ÁªÑÈïø',NULL,'37501'),('45007',NULL,'participant','JavaCÁªÑÁªÑÈïøÁéã‰∫î',NULL,'45001'),('60004',NULL,'participant','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠',NULL,'55001'),('70004',NULL,'participant','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠',NULL,'65001'),('87507',NULL,'participant','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠',NULL,'77501'),('95006',NULL,'candidate','test','95005',NULL),('95007',NULL,'participant','test',NULL,'95001'),('95008',NULL,'candidate','xiaozhang','95005',NULL),('95009',NULL,'participant','xiaozhang',NULL,'95001'),('95010',NULL,'candidate','xiaowang','95005',NULL),('95011',NULL,'participant','xiaowang',NULL,'95001'),('95012',NULL,'candidate','liuzi','95005',NULL),('95013',NULL,'participant','liuzi',NULL,'95001'),('95014',NULL,'candidate','wanggang','95005',NULL),('95015',NULL,'participant','wanggang',NULL,'95001');
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('115001','115001',NULL,'ExcutionListener:1:112503','2023-11-27 12:09:51.172','2023-11-27 12:10:21.938',30766,NULL,'startEvent1','sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595',NULL,NULL,'',NULL),('12501','12501',NULL,'oa-leave:1:10004','2023-11-21 16:31:51.061','2023-11-23 10:19:58.544',150487483,NULL,'sid-2250b950-16b5-47f4-ba0d-1b6578759e19','sid-05e32e4b-bf68-462d-bd29-65f88c054bd4',NULL,NULL,'',NULL),('135001','135001',NULL,'VariableListener:2:132503','2023-11-27 17:26:53.359','2023-11-27 17:32:47.747',354388,NULL,'startEvent1','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'',NULL),('140001','140001',NULL,'VariableListener:3:137503','2023-11-27 17:32:02.626','2023-11-27 17:32:47.839',45213,NULL,'startEvent1','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'',NULL),('27501','27501',NULL,'test01:1:25004','2023-11-23 11:14:54.258','2023-11-23 11:16:10.116',75858,NULL,'startEvent1','sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A',NULL,NULL,'',NULL),('35001','35001',NULL,'Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','2023-11-23 11:35:27.989','2023-11-23 16:10:03.290',16475301,NULL,'startEvent1','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'',NULL),('37501','37501',NULL,'Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','2023-11-23 15:46:51.529','2023-11-23 16:10:03.351',1391822,NULL,'startEvent1','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'',NULL),('45001','45001',NULL,'grouper:1:40003','2023-11-23 16:05:34.478','2023-11-23 16:11:12.541',338063,NULL,'startEvent1','sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767',NULL,NULL,'',NULL),('55001','55001',NULL,'grouperProcess:1:52503','2023-11-23 16:21:23.949','2023-11-23 16:33:29.356',725407,NULL,'startEvent1','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,'',NULL),('65001','65001',NULL,'grouperProcess:1:52503','2023-11-23 17:09:26.309','2023-11-23 17:13:50.284',263975,NULL,'startEvent1','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,'',NULL),('77501','77501',NULL,'grouperProcess:2:75003','2023-11-24 13:55:22.025','2023-11-24 14:14:43.491',1161466,NULL,'startEvent1','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,'',NULL),('95001','95001',NULL,'claimTask:1:92503','2023-11-27 10:35:17.791','2023-11-27 11:06:03.934',1846143,NULL,'startEvent1','sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('115005','ExcutionListener:1:112503','sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F','115001','115002','Ë¥¢Âä°ÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-27 12:09:51.200',NULL,'2023-11-27 12:10:10.145',18945,NULL,50,NULL,NULL,NULL,''),('117502','ExcutionListener:1:112503','sid-30434163-6BDC-456B-87E9-7F3C8F531B65','115001','115002','Ë¥¢Âä°ÊÄªÁõëÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-27 12:10:10.174',NULL,'2023-11-27 12:10:21.908',11734,NULL,50,NULL,NULL,NULL,''),('12505','oa-leave:1:10004','sid-d1ca3cb5-2939-446e-b632-354f60c7b695','12501','12502','ÁªèÁêÜÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-21 16:31:51.226',NULL,'2023-11-23 10:13:23.189',150091963,NULL,50,NULL,NULL,NULL,''),('135006','VariableListener:2:132503','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','135001','135003','CEOÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-27 17:26:53.390',NULL,'2023-11-27 17:32:24.530',331140,NULL,50,NULL,NULL,NULL,''),('140006','VariableListener:3:137503','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','140001','140003','CEOÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-27 17:32:02.706',NULL,'2023-11-27 17:32:24.702',21996,NULL,50,NULL,NULL,NULL,''),('142502','VariableListener:2:132503','sid-BA1D843F-902A-493E-86E4-98A020B991A1','135001','135003','ÂÆ°ÊâπÁªìÊûú',NULL,NULL,NULL,NULL,'2023-11-27 17:32:24.606',NULL,'2023-11-27 17:32:47.678',23072,NULL,50,NULL,NULL,NULL,''),('142504','VariableListener:3:137503','sid-BA1D843F-902A-493E-86E4-98A020B991A1','140001','140003','ÂÆ°ÊâπÁªìÊûú',NULL,NULL,NULL,NULL,'2023-11-27 17:32:24.707',NULL,'2023-11-27 17:32:47.820',23113,NULL,50,NULL,NULL,NULL,''),('15002','oa-leave:1:10004','sid-d069226f-faab-475c-9890-62df1f11c8d5','12501','12502','‰∫∫‰∫ãÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-23 10:13:23.240',NULL,'2023-11-23 10:16:50.581',207341,NULL,50,NULL,NULL,NULL,''),('17504','oa-leave:1:10004','sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a','12501','12502','CEOÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-23 10:16:50.619',NULL,'2023-11-23 10:19:58.505',187886,NULL,50,NULL,NULL,NULL,''),('17506','oa-leave:1:10004','sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4','12501','17502','ÊÄªÁªèÁêÜÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-23 10:16:50.620',NULL,'2023-11-23 10:18:37.100',106480,NULL,50,NULL,NULL,NULL,''),('27505','test01:1:25004','sid-6E0AE080-13AF-4417-9BD9-A152374AF10A','27501','27502','Â∞èÁªÑÂÆ°Êâπ',NULL,NULL,NULL,NULL,'2023-11-23 11:14:54.277',NULL,'2023-11-23 11:16:09.627',75350,NULL,50,NULL,NULL,NULL,''),('35005','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','sid-38350259-B7E9-465A-8346-8F99E6FD575D','35001','35002','ÁªÑÈïøÂÆ°Êâπ',NULL,NULL,NULL,'ÁªÑÈïø','2023-11-23 11:35:28.010',NULL,'2023-11-23 16:10:03.240',16475230,NULL,50,NULL,NULL,NULL,''),('37505','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503','sid-38350259-B7E9-465A-8346-8F99E6FD575D','37501','37502','ÁªÑÈïøÂÆ°Êâπ',NULL,NULL,NULL,'ÁªÑÈïø','2023-11-23 15:46:51.561',NULL,'2023-11-23 16:10:03.325',1391764,NULL,50,NULL,NULL,NULL,''),('45006','grouper:1:40003','sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24','45001','45003','ÁªÑÈïøÂÆ°Êâπ',NULL,NULL,NULL,'JavaCÁªÑÁªÑÈïøÁéã‰∫î','2023-11-23 16:05:34.508',NULL,'2023-11-23 16:11:12.490',337982,NULL,50,NULL,NULL,NULL,''),('55005','grouperProcess:1:52503','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','55001','55002','ËØ∑ÂÅáÊµÅÁ®ã',NULL,NULL,NULL,NULL,'2023-11-23 16:21:23.970',NULL,'2023-11-23 16:32:44.015',680045,NULL,50,NULL,NULL,NULL,''),('60003','grouperProcess:1:52503','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','55001','55002','ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ',NULL,NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠','2023-11-23 16:32:44.035',NULL,'2023-11-23 16:33:29.307',45272,NULL,50,NULL,NULL,NULL,''),('65005','grouperProcess:1:52503','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','65001','65002','ËØ∑ÂÅáÊµÅÁ®ã',NULL,NULL,NULL,NULL,'2023-11-23 17:09:26.384',NULL,'2023-11-23 17:13:06.835',220451,NULL,50,NULL,NULL,NULL,''),('70003','grouperProcess:1:52503','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','65001','65002','ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ',NULL,NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠','2023-11-23 17:13:06.868',NULL,'2023-11-23 17:13:50.246',43378,NULL,50,NULL,NULL,NULL,''),('77505','grouperProcess:2:75003','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','77501','77502','ËØ∑ÂÅáÊµÅÁ®ã',NULL,NULL,NULL,NULL,'2023-11-24 13:55:22.047',NULL,'2023-11-24 14:12:40.822',1038775,NULL,50,NULL,NULL,NULL,''),('87506','grouperProcess:2:75003','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','77501','77502','ÁÅµÊ¥ªÁªÑÈïøÂÆ°Êâπ',NULL,NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠','2023-11-24 14:12:40.842',NULL,'2023-11-24 14:14:43.440',122598,NULL,50,NULL,NULL,NULL,''),('95005','claimTask:1:92503','sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA','95001','95002','Â§ñÂá∫ËÄÉÂã§',NULL,NULL,NULL,'wanggang','2023-11-27 10:35:17.824','2023-11-27 10:41:09.751','2023-11-27 11:06:03.815',1845991,NULL,50,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `REV_` int DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
INSERT INTO `act_hi_varinst` VALUES ('135002','135001','135001',NULL,'day','integer',0,NULL,NULL,36,'36',NULL,'2023-11-27 17:26:53.370','2023-11-27 17:26:53.370'),('140002','140001','140001',NULL,'day','integer',0,NULL,NULL,36,'36',NULL,'2023-11-27 17:32:02.685','2023-11-27 17:32:02.685'),('45002','45001','45001',NULL,'group','string',0,NULL,NULL,NULL,'JavaCÁªÑÁªÑÈïøÁéã‰∫î',NULL,'2023-11-23 16:05:34.491','2023-11-23 16:05:34.491'),('60001','55001','55001',NULL,'group','string',0,NULL,NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠',NULL,'2023-11-23 16:32:43.953','2023-11-23 16:32:43.953'),('70001','65001','65001',NULL,'group','string',0,NULL,NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠',NULL,'2023-11-23 17:13:06.769','2023-11-23 17:13:06.769'),('87502','77501','77501',NULL,'type','string',0,NULL,NULL,NULL,'APPROVE.OK',NULL,'2023-11-24 14:12:40.760','2023-11-24 14:12:40.760'),('87503','77501','77501',NULL,'comment','string',0,NULL,NULL,NULL,'ËøëÊúüË°®Áé∞ËâØÂ•ΩÔºåÂáÜÂÅá',NULL,'2023-11-24 14:12:40.761','2023-11-24 14:12:40.761'),('87504','77501','77501',NULL,'group','string',0,NULL,NULL,NULL,'ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã-ËÄÅÂÖ≠',NULL,'2023-11-24 14:12:40.761','2023-11-24 14:12:40.761');
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('10001','ËØ∑ÂÅáÊµÅÁ®ã',NULL,NULL,'','2023-11-21 08:10:12.705',NULL),('112501','Ë¥¢Âä°Â≠£Êä•',NULL,NULL,'','2023-11-27 04:09:01.884',NULL),('125001','ËØ∑Âπ¥ÂÅáÊµÅÁ®ã',NULL,NULL,'','2023-11-27 09:23:07.308',NULL),('132501','ËØ∑Âπ¥ÂÅáÊµÅÁ®ã',NULL,NULL,'','2023-11-27 09:26:37.064',NULL),('137501','ËØ∑Âπ¥ÂÅáÊµÅÁ®ã',NULL,NULL,'','2023-11-27 09:31:42.376',NULL),('25001','ÁÆÄÂçïÊµÅÁ®ã',NULL,NULL,'','2023-11-23 03:14:01.100',NULL),('32501','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã',NULL,NULL,'','2023-11-23 03:27:52.789',NULL),('40001','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°Êâπ',NULL,NULL,'','2023-11-23 08:02:20.974',NULL),('52501','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã',NULL,NULL,'','2023-11-23 08:19:54.962',NULL),('75001','ÁÅµÊ¥ªÂæÖÂäû‰∫∫ÂëòÂÆ°ÊâπËØ∑ÂÅáÊµÅÁ®ã',NULL,NULL,'','2023-11-24 05:52:51.814',NULL),('92501','ÂÄôÈÄâ‰∫∫Á≠æÊî∂‰ªªÂä°',NULL,NULL,'','2023-11-27 02:34:16.081',NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('ExcutionListener:1:112503',1,'http://www.activiti.org/processdef','ExcutionListener','ExcutionListener',1,'112501','process/task/ExcutionListener.bpmn20.xml',NULL,'ExcutionListener',0,1,1,'',NULL),('VariableListener:1:125003',1,'http://www.activiti.org/processdef','VariableListener','VariableListener',1,'125001','process/task/VariableListener.bpmn20.xml',NULL,'VariableListener',0,1,1,'',NULL),('VariableListener:2:132503',1,'http://www.activiti.org/processdef','VariableListener','VariableListener',2,'132501','process/task/VariableListener.bpmn20.xml',NULL,'VariableListener',0,1,1,'',NULL),('VariableListener:3:137503',1,'http://www.activiti.org/processdef','VariableListener','VariableListener',3,'137501','process/task/VariableListener.bpmn20.xml',NULL,'VariableListener',0,1,1,'',NULL),('claimTask:1:92503',1,'http://www.activiti.org/processdef','claimTask','claimTask',1,'92501','process/claimTask.bpmn20.xml',NULL,'claimTask',0,1,1,'',NULL),('grouper:1:40003',1,'http://www.activiti.org/processdef','grouper','grouper',1,'40001','process/grouper.bpmn20.xml',NULL,'grouper',0,1,1,'',NULL),('grouperProcess:1:52503',1,'http://www.activiti.org/processdef','grouperProcess','grouperProcess',1,'52501','process/grouperProcess.bpmn20.xml',NULL,'ÁÅµÊ¥ªÂÆ°ÊâπÂæÖÂäû‰∫∫ÂëòÔºåÂÆ°ÊâπÊµÅÁ®ã',0,1,1,'',NULL),('grouperProcess:2:75003',1,'http://www.activiti.org/processdef','grouperProcess','grouperProcess',2,'75001','process/grouperProcess.bpmn20.xml',NULL,'ÁÅµÊ¥ªÂÆ°ÊâπÂæÖÂäû‰∫∫ÂëòÔºåÂÆ°ÊâπÊµÅÁ®ã',0,1,1,'',NULL),('oa-leave:1:10004',1,'http://www.activiti.org/processdef','oa-leave','oa-leave',1,'10001','process/oa-leave.bpmn20.xml','process/oa-leave.png',NULL,0,1,1,'',NULL),('test01:1:25004',1,'http://www.activiti.org/processdef','test01','test01',1,'25001','process/test01.bpmn20.xml',NULL,'ÊµÅÁ®ãÊºîÁ§∫',0,1,1,'',NULL),('Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã:1:32503',1,'http://www.activiti.org/processdef','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã','Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã',1,'32501','process/userRole.bpmn20.xml',NULL,'Áî®Êà∑ËßíËâ≤ÊéßÂà∂ÊµÅÁ®ã',0,1,1,'',NULL);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint DEFAULT NULL,
  `IS_CONCURRENT_` tinyint DEFAULT NULL,
  `IS_SCOPE_` tinyint DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint DEFAULT NULL,
  `IS_MI_ROOT_` tinyint DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `CACHED_ENT_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int DEFAULT NULL,
  `TASK_COUNT_` int DEFAULT NULL,
  `JOB_COUNT_` int DEFAULT NULL,
  `TIMER_JOB_COUNT_` int DEFAULT NULL,
  `SUSP_JOB_COUNT_` int DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int DEFAULT NULL,
  `VAR_COUNT_` int DEFAULT NULL,
  `ID_LINK_COUNT_` int DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_integration`
--

DROP TABLE IF EXISTS `act_ru_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_integration` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `FLOW_NODE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `CREATED_DATE_` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_INT_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_INT_PROC_INST` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_INT_PROC_DEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_INT_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_INT_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_INT_PROC_INST` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_integration`
--

LOCK TABLES `act_ru_integration` WRITE;
/*!40000 ALTER TABLE `act_ru_integration` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_integration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PRIORITY_` int DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `RETRIES_` int DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `REV_` int DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8mb3_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'activiti'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-28 16:09:33
