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
INSERT INTO `act_ge_bytearray` VALUES ('10002',1,'process/oa-leave.png','10001',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0\�\0\0\0M\�o\0\066IDATx^\�xT\���\�\�eբR\�B��\�̙1\n�\�\�E��\�n�t\�m�\�\�tW\�\�V�`[+*V\�*��\�\�+\"\"�V�;Q1	�r	4(\��� \��\���Nf�\�{r�\\fΙ\�\�\�<\�gf\�y眓yϙ�\�=\�yOF\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���dtQQ\�O\�\�eeek\�c�\�w����\�\�\�\n/\�\�\�=\���\0\0\0<Kqqq��\�\�cGEEEsuu�jhhPMMM����ę��\����zUUUu���|�\�v��\�_�j\�q\�g\0\0\0\�rrrF��\�i�����C}�\�\�d�\�\�ڪ6o\�ܮe�I\�\�\�\0\0\0�u֬Ysliii\�ƍ[\�\�\�BC�.�������E\�\�\\�\�H�.\0\0\0\0\\A�\�Q%%%�[�n\�u09�V\�\�\�r[\��\0\0\0\0p-�\�TTT��\�BCi1\�T2\0\0\0�NAA��\�\�v��8ӡ\�\�ޢv\�Xm?\�kgҟȩd-\�\����Ǜu\0\0\0��R#������\�!+f\�ZՖ�GԺ\�7D�e\�#\�t�,\�_\�\���Ǭ\0\0\0��PXXx�ڵk�LI\�.�\�v\�Hd�Y�\�/r\Z�����q\0\0����\�WVV4%ř�\�[B(�\�F|dC-\�\�2\�\0\0\0 ᔔ�T\�\0˦��\�\�hW\�_�\�!��.\�\�\���E�֒��YG\0\0\0\0	���\�@|�|�6\�?\�B\�悇eI�#w>)++\�3\�\0\0\0 �\�`\�r;SNzJ\�\�*�\�\�Y]�P^\�t�,\��\�V\�l\�\0\0\0@B\�\�\�WVV\�l\�Ioikޫ�+^U\�Kڏm-{e\��\"\�J\�R�Ǭ\'\0\0\0��RPP0��RH�\0\0\0\\�?Rؼ�\�n\�V��\�C���\�-�w9\�C��\0\0\0\\!>)찥o���L�\\��b��\�\��]޹O�B\0\0\0p�x��\�7\�[j>xӱ_�B\0\0\0p�����iw�c\�)\�ڴǱ,\�w�B\0\0\0p����vs�C�\�I\�w\�\"})\0\0\0W\�K\n{�\�q_�\\�̱,\�w�B\0\0\0p���p\�\��s]N�#\�3�E�R\0\0\0�З�\�)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\�m)|z\�3���\�1=�\�n�\�~ܿ�\�\�\Z�\0\0\0\\�7)ܷo��\��׫�\'}U}\�{��6}\�At�/t$2���M͹\�\��o\\��v\�y\�\�9\�\�\�\"\�\�?O�^]h\�\�?��^��\�\�^|\�.SUUm��\�\�\�\�\�g�3o��\�\�W^Q\�W�\�\�\�\��\0\0\0\\�7)�\�\�\�\�\�W\�B�`�\�\�\��\�y�h\�O=lK\�={lɹo\�<\�\��d\�kkoW\��\�\�h\�\�\�\�\�֭[\�\�UU�eϿ`��uvtt�;\�۞y|\�\�mY�e\�|sݩ�\0\0\0\\�7)��)�\�\�w\�\�E\�֬]�כ~\�/S��u\�כ6mRO�f\�u}C�\�}\�][\�\�{�Z�|��<\'g�-��˺q\�L\�\�{�Ԭ[oSKrrl9\�\�\�W3o�����p�;Ճ\0\0�+\�&��3\�RMMM�\�\�\�q�$�y\�D\�#w---*�}v\�\��]�\���\�AiQ�H\�Ϳ�%Z���T\�>�u��n�_Ƕλ���;,�\�)H!\0\0\0�BoR8\�Զ\�\�\�\�ҿ\�\�\��\�뭥p\�\�\�\�\�ݻ���\�\�/��\�U[�<�\�~���%\�\�\�{\�-�c\��E��\�\�\�:�K�B\0\0\0p�ޤPNپ\�\�[���\�n��\�\�_D\�\�&�\�xЖ8\�\�\'���w��\�?�\�SK\�o~{�cY=I��fn\�3��\0\0�+\�&�\�\�\�\���R�u\�$\���\�n��\�3O�W�ʕ\�y.b�\�\�\�\��\�\�\�-�ek\�D\�\�\�3\"�r\nY^�\�\��\�BƦ��ܱͩ�\0\0\0\\�7)LF�.{^UVV:��E�~�\�W^u�*,*Rk׮�[0E�\�\��R=H!\0\0\0��\�Roz�\�e�)\0\0\0WH)L� �\0\0\0\�\nH���\0\0�+ �\�\nR\0\0\0��z+H!\0\0\0�R\� �\0\0\0\�\nH���\0\0�+ �\�\nR\0\0\0��z+H!\0\0\0�R\� �\0\0\0\�\nH���\0\0�+ �\�\nR\0\0\0��z+H!\0\0\0�R\� �\0\0\0\�\nH���\0\0�+ �\�\nR\0\0\0��z+H!\0\0\0�R\� �\0\0\0\�\nH��\"RXT\\�gʔ)G�u\0\0\0�0�-[\�\�+W��rB܉H\�n��\��Ƙ\�\0\0\00Ԍ\�[֏�Й-Z\�l�)\'ĝ쪭U��~�ߴ*�\Z�?t�Yq\0\0\0\0CB�eM\�Bk\�\�\�~�mZ\n=i)|뭷\Z��\�\�p�\�\�[כu\0\0\00`|�\�\�>+�fD%�\��\�\�)\�N��L�>\�ީ\�\�ԓ?`-�0a\�\�\�:\0\0\0��3��Ӵ`,�FlBg��)\�N̫��\�?\�z\����\�[�u\0\0\0\�\'g�1qt�?t����M�d\�W\�y	)\�NL),\�:=\�t�\���\0\0\0\�+����Ͳ�O�\"�s\���yH�wҝ\nc\'O>�K]��?��\�r\0\0\0\0=ⳬ\��\�S%�\\r\�H�wғF\�BW\�zk\�?�P�\�\�2\0\0\0\0=�%\��J�\�\�L\�4Icc�H\�Gf�\�b_0\�n�ឬ����e\0\0\0\0Hk�/|�B�|F?�F�0{ʔcvtt8�$?\r\r\r����ĬC�`0x���W\�\����@\�wz\�H�@ڡ��\Z]TT\�S��lYY\�\Z�X-\�\�$\�l\�_B�\�1�\�pYnn\�\�\�g\�6�M�m��\�m\�\�\�\�AzNu�\�x6|��6?c��\�Ґk˃?��L8#\�үKtj\�\�\�崥)($����)\\ֵ\n{d��\�\�\�|b ���\�x�@ZP\\\\���\�^ӏ\�\�\�\�\�YMMMv�_\�\�߯\�\�\�UUUա\�\�\��Z\Z\�\�\�:ժUǙ�y��m�m�m�m�m�m�m6�\�s䘐cC�9V\�	;�\�g\���!ܚT#W#G�O�8\�H_ \�}y�\��-#�LA!ɏ�\�[�\��\�^�\�wwg=�vdZ\�$���%\'\'g���N���O8\�1�immU�7on\�\�Ф��\\�@\�-\� \�\"\�dn\'x䘑cG�!9�\�2?H}���Z:t���K\��\n��q\�\�Fs?!\�M{{�\�\�y\�Oy�[\�C�\�X�,�С\��J���c͚5ǖ��\�\�/����6\�AE�.\�Ṭ��EI\�UJ%����K\�)\�m0��]\��cI�)9�̺�\�e	�ҒP��\���\�\�\�����}�\�9\�����Q{ͬ�x�\�_ �@�\�\�\"�z\�ߙ\�\0��\�\�(}��nݺ��\��\�DZ\�\�\�\�m14\�#QȺd��&\'r,\�1%ǖcf}@j��\�>-	2Ɲ9ߤ��\��\r604�K�\�;}�E���@\��\�\�r�\�\�\���Y \�\�\�3�\��D���V�d�J�uȺ\�\�G�-9\�\�:�\�\�\�M\�2\�7�Y�\�Ds~w��\�߹s\�s\� �O�\���^J \�\�?a1\�/cU�e\0R����)\"\�\�\�<��\�P�woQ�w��嵳\�O\�cg5\�\�\�\'\�\�6Y��#�S\�\�\�PG�-9\�\�X3\�R�$+�Ȗ+\�s~o\�\�\�\�\�\�{\�\�\�\�$���z\�\�1\�}{\�6>pIX��֜)S�a�H)�R#\��\�_\��\�`2\�\�ڨ�<�\�-�!�-����eI�\"|\�E	f��lY��^3\�q\�\"ǘkr̙\���/`-\�<mz?c�\�~K\�\�իCZ\�i1L|\��p}i\"�\���k�\�8,�\��1f�����\���k\�6�Tw�\\���,D\"\�Ͳ��S�EEEm�\�P�)ˎ\�1u�\�ȱ&ǜYG\�}��\�\�?�Mg���\�\�EZ\�T�\�1\�\�\�D���y鲡s�YCMf \�u�_T�\��\Z�?\�1����u~ee\�A\�r�Cmx\��,Hd:�+P÷\�:\Z,�LY��>g�\�DG�59\�\�:o{\�-�?3\�\�9�)�ha\�+\�\�\��2ޥ����\"��\"\�;w\�<(�xI�|��jX�u�?ZÃY~\�z��\�\�O�Vldf::\�\��WorȂD�\�|\�=�����0<n\�\�`�eʲ\�\����9\�\�3\�<�\�%CE�nB\�\��D�>Nk\�\�C�ykYYY3�/�s\�(**: Ǖ\�<W[\�O\�\��\�\��e&L��Y��\��\�&�\��9dA��\�aGY\��\�\�D\��\\�YG�E�)\�6\�\�]�\�\�F�59\�\�:\�\�\�]K�\�?\��\'\�%��J ��H˲\�>_\�2\�\0x9�\�,󇫧4\�Rߜ\�E\�L7˒�\'܊�ͬ��\"ˌ�5XB\'>r\�y\��\�{\�\0˲N\�Bk\�b\�ⷬ�;0(\�\�\�\�I\���\�[ښ\��\�W\�\�҅\�c[\�^G2�\�}t��\�1\�i�\�2e\�\��z\nu�\�\�1\'ǞYO\�-�s\��ͳ�\�\�}H��֟\�?\Zb\�D�\��+�$q\��\�F�99\�\�zo\�\�\�]K\0z\�]�\��\�N9�\n\�\�%��\�\�G\n�\�\�حF\�J\��\�\"�\�2�e�.\�{H�\�R\�\�	R\�}r\��\�\��Bg���ma1ܓ8\����\�\'���_1\�q\�Al֯��j6�n�w.�\�\���:Nf�Bo3���\0\�\�[z�z%|:�oz?���<\�,\�\n\�Ha\�o8䠷\�|\�c$��%�\�qr�z��޵�F\��\�:�\�~�\�\�\�@ ��[�\�M_R\�ڴ�\�q\�z��om\�\�X\�;nH!u�� �\�e�\�Z\�>_\�\"��\�\�\�\�B;2-k�Y �\�%���sBOj��\�X\�;nH!u�� �\�d�\�Z\��Ph�\�\n��\�\��ݕf��ї\�tܾR�n�cY�\�!�\�q\�z��ݵ�7&N�x�?| ,�r\�=\�\�\�r\0	�/)ܽ�@\�\\�\�\�\��\�e��\�R\�\�RؕY�f���ӓI�\�Z`��@\�\�\��p�ϗ�e�@B\�K\nIr\��\�)<\�ԩS\'_t\�E��iӦ�k\�Oܵ��\��2.fX\��,\�f���z+Haz)\�\�\�/<W\�`��\n�)\�b\�]K�kdff~\�\�.	|~kΔ)S��-#���\�;c�\Z�\�[A\n\�#H�Cׅ�t1\�q\�\�(�@\�Z�o\�\�;�@`Ld^�|\�\�o��sb\�\�1+cd\�Ҍ\�3r2\�\�\�\�|�\��<�is\�2R6�A\n��0=�\�Rh\nᥗ^z�$\�b\�]K�\�d_\��gUXk\�>{��\��_\�f���\�\���1R\�|�9:�:\�4�#\�e�̓2)\�HOf��$c��:5\"g��\�ßUc\���x\�\��_�Wco�F\�;Z�\�(%e\�\�yo\Z�z+Haz$���;!�\�K�r\�H,\�:\���\�A���\��>�\�{�C\�\�:3t\�tT\�G��NP/�z�z\�\�\�\�S:KǍS��G�\�#�TR&\\Vޓb��$\�{Z\�*E\�>\�\�g�\��|\�\��F��J�9\�\�αe\�EG�V\�\�H3�Bo)L���\�&��%�ܵR\n����ּ<p�Y\�DK\�\�t*��\�;\�DuݤIj\�ԩ/�\�=ﺉ\�ʓNR\�\�\�\�2\�\�z�1B\�l��O-�����\�E_��\\6E��קN��Du\�Ǩύ�[E\0?��ϪSg��&�d�]V\�\�[OQZ\n�\�l{�iR\� �\�t�\�x�0B�Ő��@\n2\�g_tag��\ne�o�\�i�ɘ-�~\�;N]>y�C\0�\�\�\�{6{l�\�P�\�QGy[��Xd\���ǫo|�\�K/�O�Z4*rz�\�|�\�O�\�g\���W��F=;J\�pq��!R\� �\�t�\��a����g\�Đ��@*�\�\����\�<e�\',��\�N;MM\�F�⍴*>\�/E\�p�7\�0\�Bxҝ\'��Ӧ����W\�VAS�\�\�)���.�v��\�\�I�b(\�N�Bo)L���\�#�Z�N��\� �ܵR��`\��ξ��\�\�@VV\��\�\�I��\�>�C\�\"�X\�g瞫~5q��q\�\�vKbo��\�\�T�LYv\�ܧ�\�!i!!\��YvD\��\�\�\�y[�\�P��}�Bo)L���\�#���W-1�C)�ܵR�\�\�G\�\�$Ҳ�\�ݯ\�\�|���CE\�\"��t=1a�C\�$?\�\"���cU\�\�J�i\�\�^9\�\���\�\�>ɒq\�\�!YG\�f��\\)��Q)}唱�V#�C��\�>�r\�\�0�*�/)�\�-��\�\�FU�a�Z��\�\�sK��\�\�V{~mm]t�\�O<�^�\�\�\�ג�\�\�s,S\�\�\�gTMM�cz$�\�~�����.�\�=nK\�[oS\�\�\�\�\�֫\�\��{\��\�\�[o��\Z\Z\Z�O:Ha�B(\��usz��C\�ZÌ>_\�\n\���볂\�\�\�ݙ�g��:�2�,��\�\��X��x\�T�*\�#G:d\�\�A]\�3\�p,CZ\�}\�\�8\�ҌE\�\�\�C8\�S\�=%�\�l�\���dY\�0�7)ܰq�Z�\�Y[�\�\�٣\�\�\�ma�;\��h���6�o\�>u\�}s\�\�\"�\"	\"�\��.y����D��\�\�믿}�/\�e���\�\�\�\\{�Z�\�\"5c\�M�(��\�+j��W\�8\�\�^\�\�W��\�b\�t�H\��y�u�ēO�G{��._�s\��	\�\�w��\�G���P�r\�Hd\0v-j7�\��\�h\��{邏\�\�W�E1v9�+\�9\'rU�ˎ$�M\�d\�ʰ3r\�\\TbJ\�`\�G:�-\�\�\�׵\�y�랤���C-X\���7��Y}�\�f[\n�\�\�_���zǏ\\D��\�\�\�\�\�C?\�\�M\�=�7Z^\�b\�֭\�󏪪Բ\�_�ˈdʺ\�\�n{^\�\�\�^�%B\�T\�\�.q[\n�\�\��Vo�\��cz$��\�\�\�[�rs߱�\�z\�\�\�:��\�\�p�\��\n��\nCw-�4AuL]�\�γ����ML\�7�~�ˎ\�\�v\nf�ru�뜌\�Dܲ�7\�v&ޫ���F\�1�>\�܌T�\�\�O0��\�$�\�b#?\�\"y+W\�ڧ\0\�y�\�g?�=y-?\�7Θi�R�\�\�\�HK\�{�]��\�}\�]{�]w\�Q˗���\�\�,�E!v��<9��$\'\�Լ�|5\�_���\nǏ\�pI�0\n�?~|�\�\�\�J\�UW�®_sz$\"�fK\�\r7\�\�R�z\�;^�\�x�7zb B(\�+�BŐ��@:�\�<��_|\��]\�\'\�i\�P>9\�\��\�_�}vd����4\��S��ޕqM��\�8�\�Zh\��D�\�܌T@�W��/Z\�\��ٜ�\')�\�\�\�\�rX]]��.{>z\nP~\�\�4cSS�}J9\�\����\�cD\Z�/bdy�v\�Rw��Ψ,Fd\�\�\�\�-SRR�n�}���W7دc[�\�\�?_\�\�\�9�s8��R��D�\�\�\�Y�kz�\�x�p˖-j\��WO-X\�m\�>i)�S��\�\�A{�#\�\�\�i)�\�{�;*�B�P�W�k	�Z\�\�i�ԧ�\0��r�C\���W�\�\�2\�M�\�\'.:RNF�ܺN6\�\�9\':dn�\"\\\�:\�xr�\��\�\�=reR\�_\�=I��\"�S\�\"�\�ǬQ�\���x��H�\�C���`D\�\�Ғ�\�\�\�\�\�\�-Q۷\�\�\�^Ɏ;얦�N+�\�n�F�>\�Q\�\�G{L�����>�H=�\�\�z�TVV���\�\�\�+Rx\�/�W<�\�\�ib\�\�x_\n{�\�0�\n��B!1\�%�nhA\�-8\���\�;\�(�\�\�7-G\�\�\�\�y�\�v$���Mc~?\�ޘc\�Lb#�\�:\�^\��\�&s3R��_\�\�\�\�$�i\�Y�v�\�wLZe�)�\�\�Kʈ@��\�{\�E)r�0\�R��Z��ϢY�\'Y�e���\�K)�=\�a_R(}�D\�#����\�룯\�3�.R�ʩ\�\�eQ\�}\'u���\�X+�\�@�P\�M�k	�#Z\�6\�\�E\�䴯)x�\�\�$v\�˾�E�\�#\�d4\� �1#�鐹!˒�\�Y��3ϓ\�T��/y�\�˽\�|ORXP�ھ\"tua�}Z1\"��\�z�Q�m\��W[��\\8�n\��h�HK�_SXTd/SN?F��\�{\"-Hek\�D\�+�-EP\�Ԣ�Y��\�\�^��IwC����=\�̢�f]\�]Ǐ:\�6��\�&�򙋼\�^@$�x\���\�+�[ZZ\�i\"j{\�\�[�\�z�m�ߠL�\�o$\�s\�Y�bE\�ŗ\\z�Y�^H<\���\�Y�f�\�\�Żz/��\�\�\�\�%�\�1�ǦN�e.\�\�Z\�&\�Z\���Ǎ�	e`jS\�\Z\�G�lQOo2�#yhA��񶰅\�U��R\��ϩ�P\�\�e�V�j1�b#?\�C�\��x��\�\�rJҜ.\�\"c\�\�iJy}\�UW\�ұv\�:�b��\�_x�\�\���/�\�?\�\�z\Zdv-[�l_wR(���%��yҗ\�\�[f9\�L���\�\�\�\�\�\�����\�}\�\�\�:Nn�`Avv\���N�2\�1 t��\�\�\��\�\�\�\'yWX\n\�\�m\\\�]K \�A3�J)���\�.[T�,��\�\�\�\�\�x\�\�#�27D1O�,\�r\�T��\�\�\��2?�Q�{\�m�}���B�D.f1�\r\�,\�}\�=\�f]\��\�[u\�\�\�dvo-�^H�\�\�\�.n�\�\�s��\�\�\�\�!\��J�:u\�\�bNw\'�}!\�\'1�\��!��r*;v�ĉ�.\�5�pGڦ\�\�y65�+&Ov\�\�@c^��\���s\�vt�1�\�\�;dn�2�.4\��K��\�\�ĝQ�¨F\�y]\n\�-�ק\�)��V\"�}	!@:�-�h\�\�.\�&w1	_%<�\�=\�(\�}�e]\�\�M�f\�s\�\�#\�ԋ��q�琹�\�\���\�/u�\�[�\Z2)\�VRH\n��\�\���a�!\�-h\��\0^b\�\�k\'�쐼�\�SO\�L{H�#��y.:Rx\�\�I�1I�\��\�\�\�C�a1xu\�{�_\�H��2`)\�A# �\�J\nHa�\�=1P1\�\"�\0=�WK?\�X���\�\�\�A^-�\��\�\�\�\�L\�_�\�#�os\��;�`o\�\�s�w\�`3\\ns糬\���RG\n���Ja�eM\�M# �ފ��0�\�\��\�+�!@\�\�m\�\�9\�.\'Y��/9d/\�<\�\�m\�\�\�\�m7�xn�:\�{窯�\�׆|h�\�˳\�;�\�\�&�.s\�\�	�\�[\�\�R\�xY\n����a<R�ć��\�v?3.\n�S\�+ǌq__y\�\�wH�\�sԡΖG8ғGky�<n\�qv�^\�5��hN��\�&ҧ\�z����\�5�A\n��0=2ܥP\�\�%�!@�hQ;Z�r\�q\�9dN.y\�\�\�\��8N%K��N;�\�e�?\�X)S)\�2\�\�K2���\�\�i3N�7򴙧9�����/�v�:\�3\�\�!{\��\�[A\n\�#\� �B�b�\�UK\�\�B\�;c\'O>&˲�\�\�\��\�\�4-k\�\�9\��1fa$?>\�\\\���c����\�\�n\�)��ˍ��D��\�4\�!Y��-1[�μ6\�\�P�\�~5j\�(�\�\�i!!�\�\�IjԳ\�2f��� �\�\nR�I)\�\�iӦ�(1�#�\0\�cY\�I~\��yV ��/l�/8\��\�Y#\"e��\�>�\�\nb�\\A,c\�E#7\��\�׾fac��\���,%˔e\�l�GP��_��X�n\�oǩ�Ӧ�\�{��{#K�CS��˧��\��y��\�J�-��LYv\Z�z+Haz$��P�GMB��h\�e����\0\�\�\�2Ygn�-�\�M�P\�b\��\�\�\�;N\�\'\"�r\�9,��eٱ\�\�\"oҪ�\�9\�\�W~\��8\�\�Sg\\�=�\�\�O�D�xD\�\�8�2\�\�I��J\�>���͛�.B( �\�\nR�I7)�#�!�a��\�q>+XލvIf(�i�7,��\�p\�\�ǫ��ē�M��\�w\\\�\��,+���a���S�2�.�\�\��P����2�\��AB�\�[A\n\�#\�(�B<b�8	B\�\�\�\��)��c�\�E��\�T9R�5f��\�I���\�FZ�\�e\�8�\�\���rQI�9�\\)�$c��:�Ci�\�?�dLC��\�o\�\�XZ\�;�t�B��\�3̯2\�	�\�[A\n\�#\�*�Bob�\�LV \�=-��BT~�\��fy\�yU\��:i\�����=Z��\�SՓ����v�\�7N\�irK�pˠ��\���#\�`\�K3\�\�\�7\'C\�[��\�Ns8\�\\�ͱˤ\��\�CR\� �\�t�B�;1Dz\'\n}Z\�zSuL8\�\�\�=�:�>_g�N�·:\�\�\�s�&\�LZ;Rځz+Haz$ݥP0\�!\�\�\�\�c��\�%����^6\��\�[A\n\�#Ha\'�\"�\0\� ��Z�\�\��ݲ�\�\�\�Q)��3\�0 �Bo)L� ��	�\�.�Zyn\�Hg23\�:Y�\�_\��)\n��\�ӯo\�i���c\�0`�Bo)L� �]�5k\�H�9 �\���\���f�k�:x\����\�\0R\� �\��Љt��8q\�\�t�t\�`0K\�`U��p��Uh�r�Bo)L� �N��\��\�\��/��\�<�t\"dg�ua!\�կ?c�HH����G�®L�2\��\�\�p\��\�r�/�\�f9�\�\���>\�F��BRA\n��0=�:\�\�е�\�p_X?\���9&L��Y`8�\\�\��\�p¥t����z+Haz)\�3Θ8\��\�?�\�\�.��ӌ��\�*��\�Y\�ez_o\�\�OeL�>\�,�p�Bo)L� �}\�\�\�\�B\�GO)����\�9f9�T\�\�N\��\��\��\��c�\0�[ �\�\nR�A\n\�G�`�\�w�*\�C�@\�\�@ 0\�,��H+�ޯ?	\�\�w�\��\nR\� �\���t\�\�՚�4;\�?��>+t}� �\�\��\�\�&a�~c\�H:H����G�qF0x�\�\n�sJ�!l %\�\ngFZ��^c\�p�����0��?Zĝ466�~d\�\�`�eʲ\�\�w\"ǜ{f=A|\�]|�o�\�6�Rd��;\��\�\'>˺ܜ\�\ZJ����;::?\\$�ihhP���%f=\rY�,\�\\I~\�X�cN�=�� ~\�R�YVp~x=�\�\�\�\0\\�����S�\�HMM�H\�2���,S�m��$?\�.\�f��`H	�O\�\�\�\�Y�з\�\"\0�@�@\�ha8d�x�䧢�����\�f\rY�,\�\\I~\�X�cά#a^E.�\�B�$�_�\��r�Y�3~g\�ƍ�\�In\�\�\�Uqqq��\�f\rY�,[\�a��$7r�\�1g\�\ra^b��\�G���\��\�,\�:\�,\�)\�\�\�\�\�аo\�>\�I^���>\�\�\��Y?C�,[\�a��$/r�ɱ&ǜY?0t0�\rx\����\��\�ni\�6\�\0x�\�\�\�+6l\��\�E�\�\�\�*�\�Z�0d�u3TȲe�.s�$9�cL�5�n 10�\r�Evv\��z\�\�wՖe�\�2\0�%\'\'g��\�;w\�<`���\�g\�ƍ-����\�2\�\�:d]\��I\�#ǖcr��\��%���.\�X?>[VV�F?V\�\�!qg���+Џ�\�\�.\�\�\�=\���ń�\�:A\�ge\��m�\�\�\�2\0�G<_(..\�SWW\�E\'I\�֭[;\��W^2dA\�!\�u�\�A9�\�ؒc̬H�2�M�E�5�\�!�UWW\�CU555\�W�����~U__/\�r���\�ׂ-��\�Z�\�8\�3J23\�:9\��M�Ph�Y eX�zuH\�\�b��\�E�K�UQ��Y�\�X�.��K\�)\�\�\�G�%9�\�\�2\���W��	����\�&};vh#\�f6o\�ܮ�\�&-�?2?�� 3��?\�*��ާ\�j!d�zH}�5Cg�\�\�\�Ĥ��Nnu֢?\�gt�\��]\�)\�m�m1��>r\�\�1$\�-�\�\�KC\�\�?j҂/];\�\�\���ȝ�\�{O\�\�\\�\�H�.\��`�\�\�U遲�`B[$���\�*\�\��\�^BCNa\�\�\�\0#\�EZ\�Dv\�\�yp\�ڵM�s�kAA�\�sO6�\r�-�M�m���<r�ȱ\"ǌ;r%�[\0���\��\�Q\�r/]:hLN�հ��\�C�>�\�_����\�>��_\�,0,�ι��\��K+G@����۪�\�j&\�E�\�E�:\�\�gx��9��l�l�l�l�l��w��#Ǆr�ȱ\"\�L2;�\�\�psi������\�F\�P�-�=�\�󅾦\���\�~c���<�\� �\�ј���\�$�$��\�P!\�l��\�\�1a~��z${�\�L1��u�C\�߽E\�ޱ\�~�\�\�2�?�S\�Zʛ\�\�\�7\�&2�\�>\�,�JV �4�D\0\0\0@I\�6J�\�u#�>�m��jK�#j\�\��ٲ�{�Y�\�/r񉮇�f�\�ϲ.\��F[xyJ\�ml�\0\0�a@����.җה�\�R�ni!�D��eI�\"�����\��\�\�\�\�N\��Á\��\��c�\�W�\0\0@H\�6\�\�\�\�+++��\�L�\�\�\�-!�\�tN#>2���\�o�u\�R\�z�$�/\�m\�\0\0�a�o������d�eSP\�tt��\��\�\�B�L��\�{H�\"\\kIܬ#�,\���X�ߘ\�\0\0 �\�\�6z�Q�@\�\�\�\\\�\�&�\��9�P��\�aGY\��ȝO\�\�\�\�\�:�%+��s-�ט\�\0\0 \r�w=�F�gY֩�\�\�\�~\�ɔ��Ҽ�Jm|sV!�\�2\�,K�i�-))\�[G�d��;\�\���ϲ.7\�\0\0@�\�\�6\�z�_7����}_^^\�8\�Ҕ�\�\�ּWUW����.�\�Z\�:ʐ�E�pOl��e\�\�\��/��Y\0\0\0\0 J�C\����E�Џ#\�el\��J!I\\��\�\�\�G���\�\�\�מ}�\�|\0\0\0�\�\�f3\r�����\�\�}5v\�ඒv\�H\�Loٿ\�\�ҿ�R(\�\0�.	\�[�\��z��\0\0\0\� \n�س���2\�Ia�-}\�W\�p\\`\�\�\n\�3Uͦ\�\�\�\�e�x+�\�Ǐ?Z\�\�\�\�:ۗeY\�v�a\0\0\0�8�c׍v\�\��K<RX\��\�-5�\�X�/)��t����\�2�Y�\0\0\0\0}\"w;\�2�\�A#�w\�y\�Y�Iak\�\�\�&\�)R��i�cY�\���\�\��n\�\�uTmY�Ϭ_\0\0\0��\�[�_w#��L�t΋�Ia\�\�\\�\�œ\�-\�8�E�NUU��\�\�K�\�g�\�\�ͺ\0\0\0\�7\�iȬ\�\�Y�`0˲�\�\0\�Y�\�O\�B�,�u\�W\'��7\�z�Ŕ�Hz�\�q_�\\�̱,\�w\�\�ݫ�\�_�\�c-��tݍ5\�\0\0\0 !\�էp\�\��s]N�#\�3�E���>\�/(��p\�Y\'�u\0\0\0�0��B�ܘC\�\0\0\0\0$�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0�\�_y%��\�\�nWm\�\�2��\�V\�\�ب\�7lP�W\�yn\�\�\�\�jϯ���N��\'\�Ky9�Zr\�\�y�eJ�^�����qL�\�\�\�\�\�\�\�\�1U�\0\0�+\�#�=��*..Q�6mR���\�1\�ƍjѢgm\�۳g�j\�\�X^^�\�λ?Z���M\�۷O\�{\�\\��H�ȠȤ<F�K\�?/*�/��%\��\�oD_�\�\�v���j�\�5\�^�>�H͘y�-T\"�\�W�\�\�\�T	R\0\0\0�З\�\�\�\�b�����\�C\�\"�t\�\�\��j���\�\��\�\�\�\�7���\�\��R\�\�\�;��?Y�<�p\�>J+\�=�7Z���<�u\�V��GUUj\�\�/\�eD2e\�w\�u�=/\��\�k�\�\�(r*\�\�\�{=H!\0\0\0�B_Rx\�\�\�tL��DZ\�D\�D\�V�̵O\�\�\�z-�\�.~.*{\�Zd\�\�3\�\�\�\�ؖ\�9\��!�L)��λ\�\���/_a?\�\�Y\�8u-\�{\�Uj֭��%99���\�μ\�ת��±\�^R\0\0\0�З\�2�S\�b#\"[���֖\�\�\�j�1RNd\���Z555٧�cO��\�cD\Z�/bdy�v\�e4\"�)��w�D˔���\�gߡ��\�\r\�\�ؖ\�y\�\�Wuuu��%�\0\0�+\�%��\�G�0dǎ\�\�u\�\�G\�\�)b9U,2XT\\�\Z�\0\�\�%�����H�\�C�m)|j��h�]Z2<�\�~���%j�\�\�\�\�\�;�m�ŞN�\�M� �\0\0\0\�\n�I\�_^~پ�X�\0�~��>\��}�VZ�\�?\�`���ڭY�\�\�w(��2͔B\�\�\'eD \�}\�=��YV��06=�J�E�lOR(\�A5\�{=H!\0\0\0�BOR�u\�6�Ա�Ul�\\\�!�trů\\\�QP�ھ\�WZ�l\�=u�\�뮷��\�ƍ��P�\�{��1\�T�<\�\�5�EE\�:D@#�\�=��²5k�\�!C\�\�\�$r\nY^�\�\��\�\�^�\�m�+�Ϳ\�\�A\n\0\0�z�\�H�/\���\�5v��\�g\�CĘ\�$\"j�q	{\�޽{\�2XNKWVV:��<\�z�l\�\�\�+\�\�W^u�-�k׮�/:Y|��\�\�z�B\0\0\0p���0U\"��\�R1H!\0\0\0�\�p�\�\��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p�\�[A\n\0\0��Bo)\0\0\0W@\n��\0\0\0\\)\�V�B\0\0\0p��������rB\�Icc�H\�Gf=\0\0\0$�Ԉ\�\�A!\�OCC�*---1\�	\0\0\0 ᔔ�\�\�iKSPH\�SSS#R�̬#\0\0\0����0G\�\�!SPH\�SQQ\�\\TT\�S��\0\0\0\0Naa\�w6n\�\�h\n\nIn\�\�\�Uqqq��\�\�f\0\0\0$����c��4\�۷\�!*$y����D\�kf�\0\0\0\0$�\�\�\�+6l\��\�4.���U�:n\�r�i\�\r\0\0\0@\�\�\�\���d�Ν;�\�B��7����>`\�\0\0\0@\�\�R��\�\�\�=uuu\\t�\�lݺ�Ca���Y\'\0\0\0\0��z\�\�\�zZ������U\�x\�5k�5\�\0\0\0�U�\�PN%KC.>IL\�\�\�TYYY����\�9Ҭ\0\0\0\0O �2\�\�-,{e��\�\�j\�\�\�\�_�UP{\�Ν׮]ۤ?׿L1?w\0\0\0\0O���{��\�\�\�\0\�\�\�ŵ��!�J�����\���uП[�\�<��o~\�\0\0\0\0)��1\�I|�� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@j\�����\��4\�\0\0\0\0IEND�B`�',0),('10003',1,'process/oa-leave.bpmn20.xml','10001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\r\n  <process id=\"oa-leave\" name=\"oa-leave\" isExecutable=\"true\">\r\n    <startEvent id=\"sid-2250b950-16b5-47f4-ba0d-1b6578759e19\" name=\"开始事件\">\r\n      <documentation>开始</documentation>\r\n    </startEvent>\r\n    <endEvent id=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\" name=\"流程结束\">\r\n      <documentation>流程结束</documentation>\r\n    </endEvent>\r\n    <userTask id=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\" name=\"经理审批\"/>\r\n    <userTask id=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\" name=\"人事审批\"/>\r\n    <parallelGateway id=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\"/>\r\n    <userTask id=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\" name=\"CEO审批\"/>\r\n    <userTask id=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\" name=\"总经理审批\"/>\r\n    <sequenceFlow id=\"sid-8b40cfb0-7521-42e9-b95c-16deecb9487e\" sourceRef=\"sid-2250b950-16b5-47f4-ba0d-1b6578759e19\" targetRef=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\"/>\r\n    <sequenceFlow id=\"sid-e1be5a57-365a-4a6a-94d7-e2c49d56c8ee\" sourceRef=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\" targetRef=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\"/>\r\n    <sequenceFlow id=\"sid-18c3dfcb-1d20-4051-9c4f-9465defb8d5c\" sourceRef=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\" targetRef=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\"/>\r\n    <sequenceFlow id=\"sid-f310abaf-6a65-4676-ab74-9f5976c1d5ef\" sourceRef=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\" targetRef=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"/>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-075ddb5d-f9e2-4225-96af-c556b63c4a6b\" sourceRef=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\" targetRef=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"/>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1e82c493-bc42-4460-a376-d0fbc5a5b205\" sourceRef=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\" targetRef=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\"/>\r\n    <sequenceFlow id=\"sid-455dff2f-6509-4b24-9f92-706f5254c68a\" sourceRef=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\" targetRef=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\"/>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_oa-leave\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"oa-leave\" id=\"BPMNPlane_oa-leave\">\r\n      <bpmndi:BPMNShape id=\"shape-04770140-1faa-44fc-90ea-5d1171473f1a\" bpmnElement=\"sid-2250b950-16b5-47f4-ba0d-1b6578759e19\">\r\n        <omgdc:Bounds x=\"-190.0\" y=\"-15.0\" width=\"30.0\" height=\"30.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-92d8de3d-9563-4556-8a1a-f73c853b016c\" bpmnElement=\"sid-05e32e4b-bf68-462d-bd29-65f88c054bd4\">\r\n        <omgdc:Bounds x=\"395.0\" y=\"-15.0\" width=\"30.0\" height=\"30.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-5bb5cef1-ce53-4b35-aed4-f0b226c5dd8f\" bpmnElement=\"sid-d1ca3cb5-2939-446e-b632-354f60c7b695\">\r\n        <omgdc:Bounds x=\"-105.0\" y=\"-40.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"sid-26fcafbf-bb53-4534-a5bb-8411c866fa54\" bpmnElement=\"sid-d069226f-faab-475c-9890-62df1f11c8d5\">\r\n        <omgdc:Bounds x=\"16.25\" y=\"-40.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-f3b74a59-8a5d-4403-830c-ad7227206a65\" bpmnElement=\"sid-df19fd57-4765-4ff7-a562-0e718c777dde\">\r\n        <omgdc:Bounds x=\"165.0\" y=\"-20.0\" width=\"40.0\" height=\"40.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-edbd1505-e7a2-43f6-8093-f0c70b023d87\" bpmnElement=\"sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a\">\r\n        <omgdc:Bounds x=\"240.0\" y=\"-110.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape id=\"shape-34bedc74-4d25-49b8-b7e0-9828e1a074e3\" bpmnElement=\"sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4\">\r\n        <omgdc:Bounds x=\"245.0\" y=\"35.0\" width=\"100.0\" height=\"80.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge id=\"edge-effd07a6-75f8-4ed7-b718-f181ece2fa24\" bpmnElement=\"sid-8b40cfb0-7521-42e9-b95c-16deecb9487e\">\r\n        <omgdi:waypoint x=\"-160.0\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"-105.0\" y=\"0.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-15293722-3763-4dc5-bbaf-a1b8f3a46d92\" bpmnElement=\"sid-e1be5a57-365a-4a6a-94d7-e2c49d56c8ee\">\r\n        <omgdi:waypoint x=\"-5.0\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"16.25\" y=\"0.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-99121846-85e5-4caa-9660-53529f7d690b\" bpmnElement=\"sid-18c3dfcb-1d20-4051-9c4f-9465defb8d5c\">\r\n        <omgdi:waypoint x=\"116.25\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"165.0\" y=\"0.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-4bd5b63b-84c2-43be-a31d-df3e530c3967\" bpmnElement=\"sid-f310abaf-6a65-4676-ab74-9f5976c1d5ef\">\r\n        <omgdi:waypoint x=\"205.0\" y=\"0.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"-50.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-082d40e9-379e-466d-a6a4-234611adf402\" bpmnElement=\"sid-075ddb5d-f9e2-4225-96af-c556b63c4a6b\">\r\n        <omgdi:waypoint x=\"185.0\" y=\"20.0\"/>\r\n        <omgdi:waypoint x=\"245.0\" y=\"55.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-5c19deb2-15f0-42b7-8d65-1bdd7269e11d\" bpmnElement=\"sid-1e82c493-bc42-4460-a376-d0fbc5a5b205\">\r\n        <omgdi:waypoint x=\"340.0\" y=\"-50.0\"/>\r\n        <omgdi:waypoint x=\"395.0\" y=\"-7.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge id=\"edge-05673dfb-105a-4ef8-91c8-3818edcb66cc\" bpmnElement=\"sid-455dff2f-6509-4b24-9f92-706f5254c68a\">\r\n        <omgdi:waypoint x=\"345.0\" y=\"55.0\"/>\r\n        <omgdi:waypoint x=\"395.0\" y=\"7.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>\r\n',0),('112502',1,'process/task/ExcutionListener.bpmn20.xml','112501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"ExcutionListener\" name=\"ExcutionListener\" isExecutable=\"true\">\n    <documentation>ExcutionListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"财务季报开始\"></startEvent>\n    <endEvent id=\"sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\" name=\"财务季报结束\"></endEvent>\n    <userTask id=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\" name=\"财务审批\">\n      <extensionElements>\n        <activiti:executionListener event=\"start\" class=\"com.atlucky.activitystudy.task.listener.FundExecutionListener\"></activiti:executionListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\" name=\"财务总监审批\">\n      <extensionElements>\n        <activiti:executionListener event=\"end\" class=\"com.atlucky.activitystudy.task.listener.CFOExecutionListener\"></activiti:executionListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-060847C2-0B0F-4D2A-A9CB-C475395F9845\" sourceRef=\"startEvent1\" targetRef=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\"></sequenceFlow>\n    <sequenceFlow id=\"sid-84DC8956-7205-49F6-B4A5-EDEBB7B945C9\" sourceRef=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\" targetRef=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\"></sequenceFlow>\n    <sequenceFlow id=\"sid-14803610-1638-4ABC-976B-EFE1909C0C6C\" sourceRef=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\" targetRef=\"sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ExcutionListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"ExcutionListener\" id=\"BPMNPlane_ExcutionListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.0\" y=\"163.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\" id=\"BPMNShape_sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"675.0\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\" id=\"BPMNShape_sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"225.0\" y=\"138.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-30434163-6BDC-456B-87E9-7F3C8F531B65\" id=\"BPMNShape_sid-30434163-6BDC-456B-87E9-7F3C8F531B65\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"465.0\" y=\"138.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-060847C2-0B0F-4D2A-A9CB-C475395F9845\" id=\"BPMNEdge_sid-060847C2-0B0F-4D2A-A9CB-C475395F9845\">\n        <omgdi:waypoint x=\"130.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"225.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-14803610-1638-4ABC-976B-EFE1909C0C6C\" id=\"BPMNEdge_sid-14803610-1638-4ABC-976B-EFE1909C0C6C\">\n        <omgdi:waypoint x=\"565.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"675.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-84DC8956-7205-49F6-B4A5-EDEBB7B945C9\" id=\"BPMNEdge_sid-84DC8956-7205-49F6-B4A5-EDEBB7B945C9\">\n        <omgdi:waypoint x=\"325.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"465.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('125002',1,'process/task/VariableListener.bpmn20.xml','125001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"VariableListener\" name=\"VariableListener\" isExecutable=\"true\">\n    <documentation>VariableListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"请年假流程开始\"></startEvent>\n    <userTask id=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" name=\"部门经理审批\"></userTask>\n    <userTask id=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" name=\"总经理审批\"></userTask>\n    <userTask id=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" name=\"CEO审批\"></userTask>\n    <userTask id=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" name=\"审批结果\"></userTask>\n    <endEvent id=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" name=\"请年假流程结束\"></endEvent>\n    <sequenceFlow id=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" sourceRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" sourceRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" sourceRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" sourceRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" targetRef=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" sourceRef=\"startEvent1\" targetRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day<=5}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" sourceRef=\"startEvent1\" targetRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${5<day<=15}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" sourceRef=\"startEvent1\" targetRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day>15}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_VariableListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"VariableListener\" id=\"BPMNPlane_VariableListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"171.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" id=\"BPMNShape_sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" id=\"BPMNShape_sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" id=\"BPMNShape_sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"298.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" id=\"BPMNShape_sid-BA1D843F-902A-493E-86E4-98A020B991A1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" id=\"BPMNShape_sid-A9992A74-F656-4FAF-A7E4-E7770F371726\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"1049.5\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" id=\"BPMNEdge_sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\">\n        <omgdi:waypoint x=\"520.0\" y=\"77.98245614035088\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"163.01754385964912\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" id=\"BPMNEdge_sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\">\n        <omgdi:waypoint x=\"135.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" id=\"BPMNEdge_sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\">\n        <omgdi:waypoint x=\"520.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" id=\"BPMNEdge_sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\">\n        <omgdi:waypoint x=\"134.04823390652146\" y=\"180.7419467378448\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"73.71428571428572\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" id=\"BPMNEdge_sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\">\n        <omgdi:waypoint x=\"805.0\" y=\"187.13452188006482\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"1049.5036026006542\" y=\"192.6824156181672\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" id=\"BPMNEdge_sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\">\n        <omgdi:waypoint x=\"520.0\" y=\"311.3333333333333\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"212.66666666666666\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" id=\"BPMNEdge_sid-029AF906-F71A-409B-990A-F7117603DFC9\">\n        <omgdi:waypoint x=\"133.75854949220872\" y=\"191.97514149375922\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"316.2857142857143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('132502',1,'process/task/VariableListener.bpmn20.xml','132501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"VariableListener\" name=\"VariableListener\" isExecutable=\"true\">\n    <documentation>VariableListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"请年假流程开始\"></startEvent>\n    <userTask id=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" name=\"部门经理审批\"></userTask>\n    <userTask id=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" name=\"总经理审批\"></userTask>\n    <userTask id=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" name=\"CEO审批\"></userTask>\n    <userTask id=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" name=\"审批结果\"></userTask>\n    <endEvent id=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" name=\"请年假流程结束\"></endEvent>\n    <sequenceFlow id=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" sourceRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" sourceRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" sourceRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" sourceRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" targetRef=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" sourceRef=\"startEvent1\" targetRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day<=5}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" sourceRef=\"startEvent1\" targetRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day>15}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" sourceRef=\"startEvent1\" targetRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${5<day&&day<=15}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_VariableListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"VariableListener\" id=\"BPMNPlane_VariableListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"171.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" id=\"BPMNShape_sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" id=\"BPMNShape_sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" id=\"BPMNShape_sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"298.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" id=\"BPMNShape_sid-BA1D843F-902A-493E-86E4-98A020B991A1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" id=\"BPMNShape_sid-A9992A74-F656-4FAF-A7E4-E7770F371726\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"1049.5\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" id=\"BPMNEdge_sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\">\n        <omgdi:waypoint x=\"520.0\" y=\"77.98245614035088\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"163.01754385964912\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" id=\"BPMNEdge_sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\">\n        <omgdi:waypoint x=\"135.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" id=\"BPMNEdge_sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\">\n        <omgdi:waypoint x=\"520.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" id=\"BPMNEdge_sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\">\n        <omgdi:waypoint x=\"134.04823390652146\" y=\"180.7419467378448\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"73.71428571428572\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" id=\"BPMNEdge_sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\">\n        <omgdi:waypoint x=\"805.0\" y=\"187.13452188006482\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"1049.5036026006542\" y=\"192.6824156181672\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" id=\"BPMNEdge_sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\">\n        <omgdi:waypoint x=\"520.0\" y=\"311.3333333333333\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"212.66666666666666\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" id=\"BPMNEdge_sid-029AF906-F71A-409B-990A-F7117603DFC9\">\n        <omgdi:waypoint x=\"133.75854949220872\" y=\"191.97514149375922\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"316.2857142857143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('137502',1,'process/task/VariableListener.bpmn20.xml','137501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"VariableListener\" name=\"VariableListener\" isExecutable=\"true\">\n    <documentation>VariableListener</documentation>\n    <startEvent id=\"startEvent1\" name=\"请年假流程开始\"></startEvent>\n    <userTask id=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" name=\"部门经理审批\"></userTask>\n    <userTask id=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" name=\"总经理审批\"></userTask>\n    <userTask id=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" name=\"CEO审批\"></userTask>\n    <userTask id=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" name=\"审批结果\">\n      <extensionElements>\n        <activiti:taskListener event=\"complete\" class=\"com.atlucky.activitystudy.task.listener.YearTaskListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" name=\"请年假流程结束\"></endEvent>\n    <sequenceFlow id=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" sourceRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" sourceRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" sourceRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" targetRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\"></sequenceFlow>\n    <sequenceFlow id=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" sourceRef=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" targetRef=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" sourceRef=\"startEvent1\" targetRef=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day<=5}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" sourceRef=\"startEvent1\" targetRef=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${day>15}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" sourceRef=\"startEvent1\" targetRef=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${5<day&&day<=15}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_VariableListener\">\n    <bpmndi:BPMNPlane bpmnElement=\"VariableListener\" id=\"BPMNPlane_VariableListener\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"105.0\" y=\"171.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\" id=\"BPMNShape_sid-4552E1A1-9488-46EB-90AC-024C5E4EB41E\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"15.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\" id=\"BPMNShape_sid-20263E89-9A9C-430C-B031-8AFE7A5A8DF6\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\" id=\"BPMNShape_sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"298.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-BA1D843F-902A-493E-86E4-98A020B991A1\" id=\"BPMNShape_sid-BA1D843F-902A-493E-86E4-98A020B991A1\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"146.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A9992A74-F656-4FAF-A7E4-E7770F371726\" id=\"BPMNShape_sid-A9992A74-F656-4FAF-A7E4-E7770F371726\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"1049.5\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\" id=\"BPMNEdge_sid-7EE8FFC1-E5DA-4E3F-817F-E458F4D6DBD0\">\n        <omgdi:waypoint x=\"520.0\" y=\"77.98245614035088\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"163.01754385964912\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\" id=\"BPMNEdge_sid-480FFA78-7E05-46F8-A06B-040E5DEDAAD5\">\n        <omgdi:waypoint x=\"135.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\" id=\"BPMNEdge_sid-FF90F5D7-7A67-4D14-A0A5-5C183BC37F71\">\n        <omgdi:waypoint x=\"520.0\" y=\"186.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\" id=\"BPMNEdge_sid-8753CE04-B3BA-46D4-9AD2-9BE0684791BC\">\n        <omgdi:waypoint x=\"134.04823390652146\" y=\"180.7419467378448\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"73.71428571428572\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\" id=\"BPMNEdge_sid-FF0390C3-37F4-4E30-BA10-53AFA923D8B9\">\n        <omgdi:waypoint x=\"805.0\" y=\"187.13452188006482\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"1049.5036026006542\" y=\"192.6824156181672\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\" id=\"BPMNEdge_sid-367B6C81-9BA4-4DCD-9B36-F24437C8DF29\">\n        <omgdi:waypoint x=\"520.0\" y=\"311.3333333333333\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"212.66666666666666\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-029AF906-F71A-409B-990A-F7117603DFC9\" id=\"BPMNEdge_sid-029AF906-F71A-409B-990A-F7117603DFC9\">\n        <omgdi:waypoint x=\"133.75854949220872\" y=\"191.97514149375922\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"420.0\" y=\"316.2857142857143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('25002',1,'process/test01.bpmn20.xml','25001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"test01\" name=\"test01\" isExecutable=\"true\">\n    <documentation>流程演示</documentation>\n    <startEvent id=\"startEvent1\" name=\"开始流程\"></startEvent>\n    <endEvent id=\"sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\" name=\"结束流程\"></endEvent>\n    <userTask id=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\" name=\"小组审批\"></userTask>\n    <sequenceFlow id=\"sid-C69925EB-B27F-4992-BEEB-08101DF90969\" sourceRef=\"startEvent1\" targetRef=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\"></sequenceFlow>\n    <sequenceFlow id=\"sid-54CF6AA4-0070-4E06-A085-06763DC8D0B9\" sourceRef=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\" targetRef=\"sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test01\">\n    <bpmndi:BPMNPlane bpmnElement=\"test01\" id=\"BPMNPlane_test01\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"180.0\" y=\"167.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\" id=\"BPMNShape_sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"585.0\" y=\"168.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\" id=\"BPMNShape_sid-6E0AE080-13AF-4417-9BD9-A152374AF10A\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"360.0\" y=\"142.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-54CF6AA4-0070-4E06-A085-06763DC8D0B9\" id=\"BPMNEdge_sid-54CF6AA4-0070-4E06-A085-06763DC8D0B9\">\n        <omgdi:waypoint x=\"460.0\" y=\"182.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"585.0\" y=\"182.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C69925EB-B27F-4992-BEEB-08101DF90969\" id=\"BPMNEdge_sid-C69925EB-B27F-4992-BEEB-08101DF90969\">\n        <omgdi:waypoint x=\"210.0\" y=\"182.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360.0\" y=\"182.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('25003',1,'process/简单流程.png','25001',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0\�\0\0\0_�=�\0\0 IDATx^\�\��\�\�A��Hr\�(I@��b@��9�\�\�R)ͣ.\�RI��\�\�U�D��\'F\�C�&\�%\�]bb\n�Ѽ|+�\�>�E@� �]@\�\�\�%|\�_�\�\�\��\�,\�s\�\�W\���\�\�\�&\�5\�?\��u\�r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����������W\�\�\�\�M\�j\�xS2-HA\�^WWל|n�������x������\0\�NR\\�6)0\�%Ef\�\�/�����9lܸ1lٲ%�\�\�R`Z[[Æ\r\�\�ի\�\�ŋ[�2ݖ|��L>\�\�\�\�\0`�khh��\�\��f͚�r#{��[��W^y�-)�[�|.��\0\�3555o���[�\�\�\�֖Wd�\�\�\�\�\�ϟ�9)���\�n\0��JJ\�[�,_�b\�_�\�E����p\���\���\�\�\0\0(����\'㹁\�\�\"\�M<s޼y����?�\�.\0\0%QUU\�񆆆\�\�\r���M/��eU\�\��<\�M6m\�jkk[�4\0JnѢE%Ed\��\�\�\�JJ6[�l\n/ͽ=4<\���y�\�\�tzv^\�]�.]�-\�7g�\0@QUUU}h\���\�dWil�եv$N\�\�+�\�\�͛\�\��-uuuo\�n#\0������\�\�k�mϖ������^�Wc\�t��\�>\r\r\r�r~nv\0M]]\�\�\�\�\�\�b�M[۶�\�o\���8=��}�\�.������5�\0(�x�`uuu���YZyk^�Y:\���y�\�Y�vm���8��\0\0����\�\�\�\�k͖�\�ҺaeX\�ش.E0>�ӳ\�J\�o[�l��\�\�\0P���\'ϟ?c��\�.[[7�מ(�ZW�w\�\�\ry\�Ȟ%\�����~Yv;\0Ş�A)^�A\0��zS[__�\�	|�\�\�\���\�\�q�捫\�\�#��2\0�Tae�--{�<o\�H�\�N\r��<�Ο�)$\� \0PR���U/<�W�v�U/<��),\� \0PR=��--M\�^[��\����4\�-Kz�2\0�TOep\�\�9ye���y\�ɼeI\�Q��\�vw/\�\�\�po޲�\�(�\0@I\�T�^��7T\�:\�}\�eI\�Q��\�Ji�\0%��W�A\0����\�2ПL\����{o�\"w}�9I^L\�ڞ�8N�>�\'\���2X^Q��_\�\�f\�.O�\�\�$a@ŀ0\�!a�u\�\�;�|GuŨ\�\���\�\�pН�8O:o|O|/��2X^Q\�N\�\�NK2-\�\�I^L\�ڞ�8N����}Pj3s&Ů1�\�n;,��\�p\�\�\�sN�9\�cg�%\��\�\�Rؘ.JD,�(�d%\�$K���A�\�\�\�~>zt�i̘\�ñc\�ϒǏ&\�\�kq�\�y/\�.(����kc	<�΃\�I�?)�s\�9\�}�/��Ҙ0\�C\�!w\��\�	�\�o\�O���O{{x\��ޝ\�K㈫G��\�y�M�	E��W�A:$�\�\�$s��\Z6,|\�\�\�\�v&d\�d�\�ɼM\�\���].P��\�\�\�K\�\�7\��\�\�a\���\�\���\�8�\��mp��\�\��\�KN\r\�K\�=\n!Ŧ�W�A��ĝ��yš��/M��W�zJ,�\����9.+�|���\�\��aa\�yS\�\��xz�0[�\nɈkF�\�\�M>1aG!�ˆ\"R\�+\� \�E\���G.�4)�\��&OqqY\n!ӎs�\�=����\����\�9\�#\�B\�\�e;��bR\�+\�\����\�p\�\r\�2%�\�\�iW�\�5*<v\�\�a\�\�\�af\�8N;?)���\�:\�:d}.���\�5\�s\�\�Gpo�`G\�\��EN\�!��J�2�H\n-�\�}6�\�w\�M\�\�\�\�\\��}\�نPUU�\�����\�B޼1��\�\�aժUy\�;\�k�K�\�r\��o�2��\��-<8| �G\�\�$?\Z3&�;�\��A\"yiN^�q\�ؼB�ɲ\�\�ͮ\�[�r�\�\��\�s\�\�\�pw�\�\�頒t�q\\A�e��aA�g\�̼\�1\�\�\�<�PhjjJ\�5k\�\�w�\�\�\�\�/\�\�駟����\�߅Gyt\�\��\�?�g\�\�\�\�\�_�꿆�~==\\>\�����5�\�Lב]w�2��J\�\�Eq�ȥg�٥\�} \�ݱw��<9lXxf/\�\'N\�w�n�1\��x�\�ܚx��88ɖ��\�a�\�Xv�\�L\�|�SS=��u\�ׇ���v����\�9��>=lݶ-\\��/�e\�\�\'�H\�u\��^x\�\�e\�<\�\�~x\�\�\�<�\�3;�⊕+ý��/�g\�֭���-|\��?H_\���\�Ï�\�lnnN_\���K���WRԖ<~\�\�y{��8\"�\�\��?%�0��\�\�_[�]/��*rg\�\�v\�NL/S\�\�\�&^v&^����Y\�\�θq\�\�\�>\�\�\�\�Tcы{�:\�\��+\�\�\�w\�|=ū�]��x�8\�\�y\�`G��\�rΓJK\�\�p}x\��\�\��\�\"\�y��]>5<\�ԟô��fVT�;\��Ux��2L�\�\��\�\��w\��(��K!\��(츠t�$�W\�\�O8!�\��ǌ\�wp�\�\\�\Z�Ĭ\�\r\�\�\"\�0n��`�\�\�U\�u\�\��\�N%\�:��؝�\�N�w̸�_{\�Iw\����2���%|\�\�W��;\�`|�\�C�\�o�\�\��֮]*fݛ>�pW{cV�^�N��\�\�w��+�\�\�\�\�Շk��.|\�\�\�H�w\�3��ߒ�+�\�\�OQ��B��QRЦ\�\��:��8 dw\�\��\�\�{��PVrH|mZv����\�͉���_��\�\�+q}�xa긎x\�\\��1\�B�Qh\�.�vW\�g\�ν|�\�`\�?}\�\�a�\�\�a��\�\�k߸,�\�\�H\�\�\�n\�\�\�5k\�i\�q\\V\�k7\�t\�\�y�-[�\�A\�\�0q\�\�\�ߢ\�/�|���\�~\�c���\�zW^�\�m�<\�\�.ˌ���鳳\�\�DEn\�\�\�O�\\���o�tN<\�\�e�<w����!\�\�Rwe0�xH�\�y�.^�|z~_<�v̘93}}�e��=�{;��2\�\�Xf\�\�/Q��B��QRЖ\�~�\�]�\�\�\��W\�z�x	�\�\��\�ѣ\�t�%\�\'*r-q`G�r0〼\�g��\�<@�%�\�GO{\�U\"�$�\�Y���.?HϞ}\�\�`\�I�a	\�q(�s\�y}�\�����6=0��·�z\�m;\�\�Ž�\��Ž�E1�F\�\\�\� �x�8>�e��rn�\�\�\�H�/G\�\�s\�\��;�K\���\�rKSv[\��\�\���0)h-7�ץ�\�\�f\�]o\�\�\�;-:r\�رqzK\�\'\r\�I1\��QiQk��pq�-����\"{�\�\�=q\�3\�<�)[J:\'��O\�\�\�ؘ\�ZKKKX�n]�8��\�@�\�2\�\�\�\�ry\�22\�O<1;}G(W\�Ԥ�S\�`�Xs\�}y\�\�/�e\�rKv;I�\�\�q�<\�r����\�u��V�X*rK\�6\�m\�\���\�/q}�\�ab{�7���MI.�>}�\�=\�ܗ�e3;�?Ǟ���B����r\�ठ-�\�\�\�]�ی�#\�\�]osw\�0\�\�\�\�\�C��\�͉���_���\�[\�J\\_\�\0\�F7{�w�\0\�y�;gP\�M�3ؿ\����6�\�\�\0�8�#[\�z����\�e��@_���\�Mw�)L9wJy\�ȼ\�Wqi\�F\�(\�(R\�+\�`�R\�w0J\nڴ�A��\\(�\�\'O\�:(�\����\�eֺ�\��\��NO�\�p\�\�w^�\�\�\�\�\��n�\"e���\�/�|�\�~\�\�/�~z�\�\����\�t\�į�\�4\��\�\�\�}ݎ[~\�\�yEno\�vt\�ƍ����H,�(��K!\��II[o׹����nnG\�\�С]�\�Yב]/�7f\�.0c@xυ\�	g~\�\�>�\�\��ώO\�p�\�ueW}A,�(�����]\�\�\�?�qF�w��I��?q\�QG���;/\�\'�\�;^�(�^`o�\"7()m�o�\�[\�=x\'|儼B��q͈\�<\�\�\�yc�.(e���\�ߒ�6\�\�!C\�[\�u.s\�\\\��xbh\�\�\�\�6tPz/\�\�\�\�|0)�\�Vwq\�\�\�}af\�¤�m?\�\�\�\�/\�qS�\�+v�M�<��\�\�\�KN�Ϸ�\�\"Q\�+\�\��-)l\�&i�3lXz��s��9ʔ\�6u\�G�J�!�x�Y#G�#�ߟ)�1�\��\�Ccl�\�ή\�+�k\�šO�\�	\�o\�Ɔ�\�敼B\�\�\"8\�\���\�e\\�]\�%e���������\�DR\�.\�E�+4\�\�\�����\�\�z��r�2xO,s#�=2L9oJ8\�\�g�x\�\�xNa�\�\�*�o\�f|��{\�\"��\rE��W�A�\�B\��\�!y\��K�\��z\�a{A(�X\�\�^����x\�\�\�yև\�\n\��\�;ӋF�c\�\�r�\��\�u\�\�c\�9�q�Hz�\��\�\�]�R\n\�`yE�C�!\�qP\�#G�%sٙ]%\�x�\�\�{\�{\Z�}a\�9���\�\�\�͜|\�\�a\���򾰝�#/��\Z�\�u� %��W�A��BwQ�%I\�\�A�£Iٻc\�\�p\�ر\�1c\�|Z_;\�Ў�$q^��a��#g\�.O�\�\�X\n\�\��7�\�\�!^�0��QW�J\�5\��w\�q�xm���)1e���ҝ�\�\�\�Ӓ<�\�\�$�퉏\���JCY����{oR\��\�\��\nW\�^L\�ڞ�8N�>�\��\�G��\�2\0��2X^Q��R\�+\� \0PR\�`yE\0JJ,�(�\0@I)�\�e\0()e���\0%��W�A\0����\�2\0��2X^Q��R\�+\� \0PR\�`yE\0JJ,�(�\0@I)�\�e\0(�\�\�\�c\�͛ך-%�o�aÆX�\�n\'\0���3gΠ����ɖ\�7ijj�e\�\�v\0(�\�\�\�\�͛7\�)}V�\\����\�\�\�6\0(����߯Z�*��H\�\�\�s\�m����`v\0MR>>�x\�\�M\�b\"�͖-[B�-�UVV�\�F\0\0ESWWwh�\r���z^A�\�\�W^y���\��\�\�\0(���|n\�F���dl����\�6\0\0E7gΜ\�\�\�\Z�/_�\�٢\"\�Ͷm\�BCC\�\�~=�]\0\0J���jXR�֬Y�=[X�8ikkK�,ٚ|\�3�\�\0�\�jjj\�%\�d\�e\�\�\�\�\�\�#,؜|\�X�t\��\�m\0�Ơ7\����چ��\�\�\�\�\�ٻĽ�+W��KR\�9�\�d?\0��PUU\�\�\�\�\�\�\�>�\�\�\�ƿ\��\�ƽY\�r#=\'Y�n]x饗�%E{K�\�\�Ν;&��\0��8�$)���RxkR`^M�n���ҫĻ�4\'�_}MM\�\�\�\�\�\�\�\�\0\0\0\0\0\0\0\0\0\0\0\0�,�/5���MIe\0\0\0\0IEND�B`�',0),('32502',1,'process/userRole.bpmn20.xml','32501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"用户角色控制流程\" name=\"用户角色控制流程\" isExecutable=\"true\">\n    <documentation>用户角色控制流程</documentation>\n    <startEvent id=\"startEvent1\" name=\"用户角色审批流开始\"></startEvent>\n    <endEvent id=\"sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\" name=\"用户角色审批流结束\"></endEvent>\n    <userTask id=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\" name=\"组长审批\" activiti:assignee=\"组长\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-42F71578-353D-4DFC-B416-3711461382EA\" sourceRef=\"startEvent1\" targetRef=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-1CA89464-9C31-420B-8920-C49C297AB763\" sourceRef=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\" targetRef=\"sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_用户角色控制流程\">\n    <bpmndi:BPMNPlane bpmnElement=\"用户角色控制流程\" id=\"BPMNPlane_用户角色控制流程\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.0\" y=\"163.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\" id=\"BPMNShape_sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"602.25\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-38350259-B7E9-465A-8346-8F99E6FD575D\" id=\"BPMNShape_sid-38350259-B7E9-465A-8346-8F99E6FD575D\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"315.0\" y=\"138.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1CA89464-9C31-420B-8920-C49C297AB763\" id=\"BPMNEdge_sid-1CA89464-9C31-420B-8920-C49C297AB763\">\n        <omgdi:waypoint x=\"415.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"602.25\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-42F71578-353D-4DFC-B416-3711461382EA\" id=\"BPMNEdge_sid-42F71578-353D-4DFC-B416-3711461382EA\">\n        <omgdi:waypoint x=\"130.0\" y=\"178.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"315.0\" y=\"178.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('40002',1,'process/grouper.bpmn20.xml','40001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"grouper\" name=\"grouper\" isExecutable=\"true\">\n    <documentation>grouper</documentation>\n    <startEvent id=\"startEvent1\" name=\"灵活待办人员审批开始\"></startEvent>\n    <endEvent id=\"sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\" name=\"灵活待办人员审批结束\"></endEvent>\n    <userTask id=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\" name=\"组长审批\" activiti:assignee=\"${group}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-AE13B4C9-CCA1-4EAA-B421-A161EAA61353\" sourceRef=\"startEvent1\" targetRef=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\"></sequenceFlow>\n    <sequenceFlow id=\"sid-4ABB4E94-3413-4B50-AE8C-3EDF329ADE04\" sourceRef=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\" targetRef=\"sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_grouper\">\n    <bpmndi:BPMNPlane bpmnElement=\"grouper\" id=\"BPMNPlane_grouper\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"120.0\" y=\"173.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\" id=\"BPMNShape_sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"783.25\" y=\"174.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\" id=\"BPMNShape_sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"412.25\" y=\"148.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-4ABB4E94-3413-4B50-AE8C-3EDF329ADE04\" id=\"BPMNEdge_sid-4ABB4E94-3413-4B50-AE8C-3EDF329ADE04\">\n        <omgdi:waypoint x=\"512.25\" y=\"188.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"783.25\" y=\"188.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-AE13B4C9-CCA1-4EAA-B421-A161EAA61353\" id=\"BPMNEdge_sid-AE13B4C9-CCA1-4EAA-B421-A161EAA61353\">\n        <omgdi:waypoint x=\"150.0\" y=\"188.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"412.25\" y=\"188.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('52502',1,'process/grouperProcess.bpmn20.xml','52501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"grouperProcess\" name=\"grouperProcess\" isExecutable=\"true\">\n    <documentation>灵活审批待办人员，审批流程</documentation>\n    <startEvent id=\"startEvent1\"></startEvent>\n    <endEvent id=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></endEvent>\n    <userTask id=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" name=\"请假流程\"></userTask>\n    <userTask id=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" name=\"灵活组长审批\" activiti:assignee=\"${group}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" sourceRef=\"startEvent1\" targetRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\"></sequenceFlow>\n    <sequenceFlow id=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" sourceRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" targetRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" sourceRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" targetRef=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_grouperProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"grouperProcess\" id=\"BPMNPlane_grouperProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\" id=\"BPMNShape_sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"764.25\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" id=\"BPMNShape_sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"285.0\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" id=\"BPMNShape_sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"520.25\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" id=\"BPMNEdge_sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\">\n        <omgdi:waypoint x=\"385.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"520.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" id=\"BPMNEdge_sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\">\n        <omgdi:waypoint x=\"620.25\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"764.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" id=\"BPMNEdge_sid-7A233D50-B892-48F1-80CD-AAD61F82007D\">\n        <omgdi:waypoint x=\"180.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"285.0\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('75002',1,'process/grouperProcess.bpmn20.xml','75001',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"grouperProcess\" name=\"grouperProcess\" isExecutable=\"true\">\n    <documentation>灵活审批待办人员，审批流程</documentation>\n    <startEvent id=\"startEvent1\"></startEvent>\n    <endEvent id=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></endEvent>\n    <userTask id=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" name=\"请假流程\"></userTask>\n    <userTask id=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" name=\"灵活组长审批\" activiti:assignee=\"${group}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" sourceRef=\"startEvent1\" targetRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\"></sequenceFlow>\n    <sequenceFlow id=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" sourceRef=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" targetRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\"></sequenceFlow>\n    <sequenceFlow id=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" sourceRef=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" targetRef=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_grouperProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"grouperProcess\" id=\"BPMNPlane_grouperProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"179.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\" id=\"BPMNShape_sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"764.25\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\" id=\"BPMNShape_sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"285.0\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\" id=\"BPMNShape_sid-E8B1CDE5-222E-4C42-9334-8040C23F0023\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"520.25\" y=\"154.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\" id=\"BPMNEdge_sid-68E4BE52-C56F-428D-8A64-5B88D1BFFC20\">\n        <omgdi:waypoint x=\"385.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"520.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\" id=\"BPMNEdge_sid-7F83C655-F2AE-4894-B603-7CA28A44BC47\">\n        <omgdi:waypoint x=\"620.25\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"764.25\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7A233D50-B892-48F1-80CD-AAD61F82007D\" id=\"BPMNEdge_sid-7A233D50-B892-48F1-80CD-AAD61F82007D\">\n        <omgdi:waypoint x=\"180.0\" y=\"194.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"285.0\" y=\"194.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('92502',1,'process/claimTask.bpmn20.xml','92501',_binary '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"claimTask\" name=\"claimTask\" isExecutable=\"true\">\n    <documentation>claimTask</documentation>\n    <startEvent id=\"startEvent1\"></startEvent>\n    <endEvent id=\"sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\"></endEvent>\n    <userTask id=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\" name=\"外出考勤\" activiti:candidateUsers=\"test,xiaozhang,xiaowang,liuzi,wanggang\"></userTask>\n    <sequenceFlow id=\"sid-627D9956-34F9-4A95-8EEC-416627EF4C36\" sourceRef=\"startEvent1\" targetRef=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\"></sequenceFlow>\n    <sequenceFlow id=\"sid-482AEA3C-F95F-4AD9-B1F6-D6B28EBA3CB2\" sourceRef=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\" targetRef=\"sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_claimTask\">\n    <bpmndi:BPMNPlane bpmnElement=\"claimTask\" id=\"BPMNPlane_claimTask\">\n      <bpmndi:BPMNShape bpmnElement=\"startEvent1\" id=\"BPMNShape_startEvent1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.0\" y=\"168.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\" id=\"BPMNShape_sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"690.0\" y=\"169.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\" id=\"BPMNShape_sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"345.0\" y=\"143.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-482AEA3C-F95F-4AD9-B1F6-D6B28EBA3CB2\" id=\"BPMNEdge_sid-482AEA3C-F95F-4AD9-B1F6-D6B28EBA3CB2\">\n        <omgdi:waypoint x=\"445.0\" y=\"183.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"690.0\" y=\"183.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-627D9956-34F9-4A95-8EEC-416627EF4C36\" id=\"BPMNEdge_sid-627D9956-34F9-4A95-8EEC-416627EF4C36\">\n        <omgdi:waypoint x=\"130.0\" y=\"183.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"345.0\" y=\"183.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);
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
INSERT INTO `act_hi_actinst` VALUES ('100001','claimTask:1:92503','95001','95002','sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E',NULL,NULL,NULL,'endEvent',NULL,'2023-11-27 11:06:03.887','2023-11-27 11:06:03.887',0,NULL,''),('115003','ExcutionListener:1:112503','115001','115002','startEvent1',NULL,NULL,'财务季报开始','startEvent',NULL,'2023-11-27 12:09:51.184','2023-11-27 12:09:51.185',1,NULL,''),('115004','ExcutionListener:1:112503','115001','115002','sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F','115005',NULL,'财务审批','userTask',NULL,'2023-11-27 12:09:51.187','2023-11-27 12:10:10.152',18965,NULL,''),('117501','ExcutionListener:1:112503','115001','115002','sid-30434163-6BDC-456B-87E9-7F3C8F531B65','117502',NULL,'财务总监审批','userTask',NULL,'2023-11-27 12:10:10.162','2023-11-27 12:10:21.916',11754,NULL,''),('120001','ExcutionListener:1:112503','115001','115002','sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595',NULL,NULL,'财务季报结束','endEvent',NULL,'2023-11-27 12:10:21.924','2023-11-27 12:10:21.924',0,NULL,''),('12503','oa-leave:1:10004','12501','12502','sid-2250b950-16b5-47f4-ba0d-1b6578759e19',NULL,NULL,'开始事件','startEvent',NULL,'2023-11-21 16:31:51.122','2023-11-21 16:31:51.134',12,NULL,''),('12504','oa-leave:1:10004','12501','12502','sid-d1ca3cb5-2939-446e-b632-354f60c7b695','12505',NULL,'经理审批','userTask',NULL,'2023-11-21 16:31:51.135','2023-11-23 10:13:23.198',150092063,NULL,''),('135004','VariableListener:2:132503','135001','135003','startEvent1',NULL,NULL,'请年假流程开始','startEvent',NULL,'2023-11-27 17:26:53.371','2023-11-27 17:26:53.373',2,NULL,''),('135005','VariableListener:2:132503','135001','135003','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','135006',NULL,'CEO审批','userTask',NULL,'2023-11-27 17:26:53.389','2023-11-27 17:32:24.539',331150,NULL,''),('140004','VariableListener:3:137503','140001','140003','startEvent1',NULL,NULL,'请年假流程开始','startEvent',NULL,'2023-11-27 17:32:02.686','2023-11-27 17:32:02.688',2,NULL,''),('140005','VariableListener:3:137503','140001','140003','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','140006',NULL,'CEO审批','userTask',NULL,'2023-11-27 17:32:02.706','2023-11-27 17:32:24.706',22000,NULL,''),('142501','VariableListener:2:132503','135001','135003','sid-BA1D843F-902A-493E-86E4-98A020B991A1','142502',NULL,'审批结果','userTask',NULL,'2023-11-27 17:32:24.596','2023-11-27 17:32:47.697',23101,NULL,''),('142503','VariableListener:3:137503','140001','140003','sid-BA1D843F-902A-493E-86E4-98A020B991A1','142504',NULL,'审批结果','userTask',NULL,'2023-11-27 17:32:24.707','2023-11-27 17:32:47.822',23115,NULL,''),('145001','VariableListener:2:132503','135001','135003','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'请年假流程结束','endEvent',NULL,'2023-11-27 17:32:47.709','2023-11-27 17:32:47.710',1,NULL,''),('145002','VariableListener:3:137503','140001','140003','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'请年假流程结束','endEvent',NULL,'2023-11-27 17:32:47.822','2023-11-27 17:32:47.822',0,NULL,''),('15001','oa-leave:1:10004','12501','12502','sid-d069226f-faab-475c-9890-62df1f11c8d5','15002',NULL,'人事审批','userTask',NULL,'2023-11-23 10:13:23.214','2023-11-23 10:16:50.589',207375,NULL,''),('17501','oa-leave:1:10004','12501','12502','sid-df19fd57-4765-4ff7-a562-0e718c777dde',NULL,NULL,NULL,'parallelGateway',NULL,'2023-11-23 10:16:50.602','2023-11-23 10:16:50.606',4,NULL,''),('17503','oa-leave:1:10004','12501','12502','sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a','17504',NULL,'CEO审批','userTask',NULL,'2023-11-23 10:16:50.608','2023-11-23 10:19:58.511',187903,NULL,''),('17505','oa-leave:1:10004','12501','17502','sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4','17506',NULL,'总经理审批','userTask',NULL,'2023-11-23 10:16:50.620','2023-11-23 10:18:37.108',106488,NULL,''),('20001','oa-leave:1:10004','12501','17502','sid-05e32e4b-bf68-462d-bd29-65f88c054bd4',NULL,NULL,'流程结束','endEvent',NULL,'2023-11-23 10:18:37.121','2023-11-23 10:18:37.121',0,NULL,''),('22501','oa-leave:1:10004','12501','12502','sid-05e32e4b-bf68-462d-bd29-65f88c054bd4',NULL,NULL,'流程结束','endEvent',NULL,'2023-11-23 10:19:58.522','2023-11-23 10:19:58.522',0,NULL,''),('27503','test01:1:25004','27501','27502','startEvent1',NULL,NULL,'开始流程','startEvent',NULL,'2023-11-23 11:14:54.267','2023-11-23 11:14:54.268',1,NULL,''),('27504','test01:1:25004','27501','27502','sid-6E0AE080-13AF-4417-9BD9-A152374AF10A','27505',NULL,'小组审批','userTask',NULL,'2023-11-23 11:14:54.269','2023-11-23 11:16:09.836',75567,NULL,''),('30001','test01:1:25004','27501','27502','sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A',NULL,NULL,'结束流程','endEvent',NULL,'2023-11-23 11:16:09.895','2023-11-23 11:16:09.895',0,NULL,''),('35003','用户角色控制流程:1:32503','35001','35002','startEvent1',NULL,NULL,'用户角色审批流开始','startEvent',NULL,'2023-11-23 11:35:27.999','2023-11-23 11:35:28.000',1,NULL,''),('35004','用户角色控制流程:1:32503','35001','35002','sid-38350259-B7E9-465A-8346-8F99E6FD575D','35005',NULL,'组长审批','userTask','组长','2023-11-23 11:35:28.001','2023-11-23 16:10:03.250',16475249,NULL,''),('37503','用户角色控制流程:1:32503','37501','37502','startEvent1',NULL,NULL,'用户角色审批流开始','startEvent',NULL,'2023-11-23 15:46:51.547','2023-11-23 15:46:51.548',1,NULL,''),('37504','用户角色控制流程:1:32503','37501','37502','sid-38350259-B7E9-465A-8346-8F99E6FD575D','37505',NULL,'组长审批','userTask','组长','2023-11-23 15:46:51.549','2023-11-23 16:10:03.331',1391782,NULL,''),('45004','grouper:1:40003','45001','45003','startEvent1',NULL,NULL,'灵活待办人员审批开始','startEvent',NULL,'2023-11-23 16:05:34.493','2023-11-23 16:05:34.495',2,NULL,''),('45005','grouper:1:40003','45001','45003','sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24','45006',NULL,'组长审批','userTask','JavaC组组长王五','2023-11-23 16:05:34.497','2023-11-23 16:11:12.500',338003,NULL,''),('47501','用户角色控制流程:1:32503','35001','35002','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'用户角色审批流结束','endEvent',NULL,'2023-11-23 16:10:03.265','2023-11-23 16:10:03.265',0,NULL,''),('47502','用户角色控制流程:1:32503','37501','37502','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'用户角色审批流结束','endEvent',NULL,'2023-11-23 16:10:03.331','2023-11-23 16:10:03.331',0,NULL,''),('50001','grouper:1:40003','45001','45003','sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767',NULL,NULL,'灵活待办人员审批结束','endEvent',NULL,'2023-11-23 16:11:12.510','2023-11-23 16:11:12.510',0,NULL,''),('55003','grouperProcess:1:52503','55001','55002','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-23 16:21:23.958','2023-11-23 16:21:23.959',1,NULL,''),('55004','grouperProcess:1:52503','55001','55002','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','55005',NULL,'请假流程','userTask',NULL,'2023-11-23 16:21:23.960','2023-11-23 16:32:44.020',680060,NULL,''),('60002','grouperProcess:1:52503','55001','55002','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','60003',NULL,'灵活组长审批','userTask','灵活待办人员审批请假流程-老六','2023-11-23 16:32:44.023','2023-11-23 16:33:29.316',45293,NULL,''),('62501','grouperProcess:1:52503','55001','55002','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,NULL,'endEvent',NULL,'2023-11-23 16:33:29.330','2023-11-23 16:33:29.330',0,NULL,''),('65003','grouperProcess:1:52503','65001','65002','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-23 17:09:26.371','2023-11-23 17:09:26.372',1,NULL,''),('65004','grouperProcess:1:52503','65001','65002','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','65005',NULL,'请假流程','userTask',NULL,'2023-11-23 17:09:26.373','2023-11-23 17:13:06.842',220469,NULL,''),('70002','grouperProcess:1:52503','65001','65002','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','70003',NULL,'灵活组长审批','userTask','灵活待办人员审批请假流程-老六','2023-11-23 17:13:06.844','2023-11-23 17:13:50.253',43409,NULL,''),('72501','grouperProcess:1:52503','65001','65002','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,NULL,'endEvent',NULL,'2023-11-23 17:13:50.264','2023-11-23 17:13:50.264',0,NULL,''),('77503','grouperProcess:2:75003','77501','77502','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-24 13:55:22.035','2023-11-24 13:55:22.036',1,NULL,''),('77504','grouperProcess:2:75003','77501','77502','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','77505',NULL,'请假流程','userTask',NULL,'2023-11-24 13:55:22.037','2023-11-24 14:12:40.829',1038792,NULL,''),('87505','grouperProcess:2:75003','77501','77502','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','87506',NULL,'灵活组长审批','userTask','灵活待办人员审批请假流程-老六','2023-11-24 14:12:40.831','2023-11-24 14:14:43.448',122617,NULL,''),('90001','grouperProcess:2:75003','77501','77502','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,NULL,'endEvent',NULL,'2023-11-24 14:14:43.458','2023-11-24 14:14:43.458',0,NULL,''),('95003','claimTask:1:92503','95001','95002','startEvent1',NULL,NULL,NULL,'startEvent',NULL,'2023-11-27 10:35:17.807','2023-11-27 10:35:17.809',2,NULL,''),('95004','claimTask:1:92503','95001','95002','sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA','95005',NULL,'外出考勤','userTask','wanggang','2023-11-27 10:35:17.811','2023-11-27 11:06:03.828',1846017,NULL,'');
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
INSERT INTO `act_hi_comment` VALUES ('80001','同意','2023-11-24 14:04:15.760',NULL,'77505','77501','AddComment','备注意见',_binary '备注意见'),('80002','comment','2023-11-24 14:04:15.807',NULL,'77505','77501','AddComment','同意',_binary '同意'),('82501','同意','2023-11-24 14:07:30.887',NULL,'77505','77501','AddComment','备注意见',_binary '备注意见'),('82502','comment','2023-11-24 14:07:30.907',NULL,'77505','77501','AddComment','同意',_binary '同意'),('87501','APPROVE.OK','2023-11-24 14:12:40.739',NULL,'77505','77501','AddComment','近期表现良好，准假',_binary '近期表现良好，准假'),('97501','同意','2023-11-27 10:35:28.265',NULL,'95005','95001','AddComment','备注意见',_binary '备注意见'),('97502','comment','2023-11-27 10:35:28.285',NULL,'95005','95001','AddComment','同意',_binary '同意');
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
INSERT INTO `act_hi_identitylink` VALUES ('35006',NULL,'participant','组长',NULL,'35001'),('37506',NULL,'participant','组长',NULL,'37501'),('45007',NULL,'participant','JavaC组组长王五',NULL,'45001'),('60004',NULL,'participant','灵活待办人员审批请假流程-老六',NULL,'55001'),('70004',NULL,'participant','灵活待办人员审批请假流程-老六',NULL,'65001'),('87507',NULL,'participant','灵活待办人员审批请假流程-老六',NULL,'77501'),('95006',NULL,'candidate','test','95005',NULL),('95007',NULL,'participant','test',NULL,'95001'),('95008',NULL,'candidate','xiaozhang','95005',NULL),('95009',NULL,'participant','xiaozhang',NULL,'95001'),('95010',NULL,'candidate','xiaowang','95005',NULL),('95011',NULL,'participant','xiaowang',NULL,'95001'),('95012',NULL,'candidate','liuzi','95005',NULL),('95013',NULL,'participant','liuzi',NULL,'95001'),('95014',NULL,'candidate','wanggang','95005',NULL),('95015',NULL,'participant','wanggang',NULL,'95001');
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
INSERT INTO `act_hi_procinst` VALUES ('115001','115001',NULL,'ExcutionListener:1:112503','2023-11-27 12:09:51.172','2023-11-27 12:10:21.938',30766,NULL,'startEvent1','sid-67DB70F3-E06C-4B1C-8ED3-85E83E8DD595',NULL,NULL,'',NULL),('12501','12501',NULL,'oa-leave:1:10004','2023-11-21 16:31:51.061','2023-11-23 10:19:58.544',150487483,NULL,'sid-2250b950-16b5-47f4-ba0d-1b6578759e19','sid-05e32e4b-bf68-462d-bd29-65f88c054bd4',NULL,NULL,'',NULL),('135001','135001',NULL,'VariableListener:2:132503','2023-11-27 17:26:53.359','2023-11-27 17:32:47.747',354388,NULL,'startEvent1','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'',NULL),('140001','140001',NULL,'VariableListener:3:137503','2023-11-27 17:32:02.626','2023-11-27 17:32:47.839',45213,NULL,'startEvent1','sid-A9992A74-F656-4FAF-A7E4-E7770F371726',NULL,NULL,'',NULL),('27501','27501',NULL,'test01:1:25004','2023-11-23 11:14:54.258','2023-11-23 11:16:10.116',75858,NULL,'startEvent1','sid-7AF4F2E5-B034-47FC-86B5-F0C6F11D633A',NULL,NULL,'',NULL),('35001','35001',NULL,'用户角色控制流程:1:32503','2023-11-23 11:35:27.989','2023-11-23 16:10:03.290',16475301,NULL,'startEvent1','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'',NULL),('37501','37501',NULL,'用户角色控制流程:1:32503','2023-11-23 15:46:51.529','2023-11-23 16:10:03.351',1391822,NULL,'startEvent1','sid-EF92ADCB-E6A5-41D7-95C8-F75BB5F27120',NULL,NULL,'',NULL),('45001','45001',NULL,'grouper:1:40003','2023-11-23 16:05:34.478','2023-11-23 16:11:12.541',338063,NULL,'startEvent1','sid-DA61FB53-7CE7-4258-AE7A-3ED4ED856767',NULL,NULL,'',NULL),('55001','55001',NULL,'grouperProcess:1:52503','2023-11-23 16:21:23.949','2023-11-23 16:33:29.356',725407,NULL,'startEvent1','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,'',NULL),('65001','65001',NULL,'grouperProcess:1:52503','2023-11-23 17:09:26.309','2023-11-23 17:13:50.284',263975,NULL,'startEvent1','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,'',NULL),('77501','77501',NULL,'grouperProcess:2:75003','2023-11-24 13:55:22.025','2023-11-24 14:14:43.491',1161466,NULL,'startEvent1','sid-A4E58D69-603D-4F6F-9EB0-D55CD9E0B283',NULL,NULL,'',NULL),('95001','95001',NULL,'claimTask:1:92503','2023-11-27 10:35:17.791','2023-11-27 11:06:03.934',1846143,NULL,'startEvent1','sid-7336EF30-DF3B-4E2F-9675-8488FB0DE61E',NULL,NULL,'',NULL);
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
INSERT INTO `act_hi_taskinst` VALUES ('115005','ExcutionListener:1:112503','sid-6CDB9532-CDC7-49B1-8999-AB0F8518C66F','115001','115002','财务审批',NULL,NULL,NULL,NULL,'2023-11-27 12:09:51.200',NULL,'2023-11-27 12:10:10.145',18945,NULL,50,NULL,NULL,NULL,''),('117502','ExcutionListener:1:112503','sid-30434163-6BDC-456B-87E9-7F3C8F531B65','115001','115002','财务总监审批',NULL,NULL,NULL,NULL,'2023-11-27 12:10:10.174',NULL,'2023-11-27 12:10:21.908',11734,NULL,50,NULL,NULL,NULL,''),('12505','oa-leave:1:10004','sid-d1ca3cb5-2939-446e-b632-354f60c7b695','12501','12502','经理审批',NULL,NULL,NULL,NULL,'2023-11-21 16:31:51.226',NULL,'2023-11-23 10:13:23.189',150091963,NULL,50,NULL,NULL,NULL,''),('135006','VariableListener:2:132503','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','135001','135003','CEO审批',NULL,NULL,NULL,NULL,'2023-11-27 17:26:53.390',NULL,'2023-11-27 17:32:24.530',331140,NULL,50,NULL,NULL,NULL,''),('140006','VariableListener:3:137503','sid-5BB79157-AC6E-4380-8C03-7BA22A4DE5C0','140001','140003','CEO审批',NULL,NULL,NULL,NULL,'2023-11-27 17:32:02.706',NULL,'2023-11-27 17:32:24.702',21996,NULL,50,NULL,NULL,NULL,''),('142502','VariableListener:2:132503','sid-BA1D843F-902A-493E-86E4-98A020B991A1','135001','135003','审批结果',NULL,NULL,NULL,NULL,'2023-11-27 17:32:24.606',NULL,'2023-11-27 17:32:47.678',23072,NULL,50,NULL,NULL,NULL,''),('142504','VariableListener:3:137503','sid-BA1D843F-902A-493E-86E4-98A020B991A1','140001','140003','审批结果',NULL,NULL,NULL,NULL,'2023-11-27 17:32:24.707',NULL,'2023-11-27 17:32:47.820',23113,NULL,50,NULL,NULL,NULL,''),('15002','oa-leave:1:10004','sid-d069226f-faab-475c-9890-62df1f11c8d5','12501','12502','人事审批',NULL,NULL,NULL,NULL,'2023-11-23 10:13:23.240',NULL,'2023-11-23 10:16:50.581',207341,NULL,50,NULL,NULL,NULL,''),('17504','oa-leave:1:10004','sid-47a931ef-e176-4d9d-8fb5-718d0b2f1a4a','12501','12502','CEO审批',NULL,NULL,NULL,NULL,'2023-11-23 10:16:50.619',NULL,'2023-11-23 10:19:58.505',187886,NULL,50,NULL,NULL,NULL,''),('17506','oa-leave:1:10004','sid-3ed6e75c-eadd-4b85-81a6-6f0c790a7cb4','12501','17502','总经理审批',NULL,NULL,NULL,NULL,'2023-11-23 10:16:50.620',NULL,'2023-11-23 10:18:37.100',106480,NULL,50,NULL,NULL,NULL,''),('27505','test01:1:25004','sid-6E0AE080-13AF-4417-9BD9-A152374AF10A','27501','27502','小组审批',NULL,NULL,NULL,NULL,'2023-11-23 11:14:54.277',NULL,'2023-11-23 11:16:09.627',75350,NULL,50,NULL,NULL,NULL,''),('35005','用户角色控制流程:1:32503','sid-38350259-B7E9-465A-8346-8F99E6FD575D','35001','35002','组长审批',NULL,NULL,NULL,'组长','2023-11-23 11:35:28.010',NULL,'2023-11-23 16:10:03.240',16475230,NULL,50,NULL,NULL,NULL,''),('37505','用户角色控制流程:1:32503','sid-38350259-B7E9-465A-8346-8F99E6FD575D','37501','37502','组长审批',NULL,NULL,NULL,'组长','2023-11-23 15:46:51.561',NULL,'2023-11-23 16:10:03.325',1391764,NULL,50,NULL,NULL,NULL,''),('45006','grouper:1:40003','sid-DFEFB8B5-EA0A-4770-AD44-1C7A58295A24','45001','45003','组长审批',NULL,NULL,NULL,'JavaC组组长王五','2023-11-23 16:05:34.508',NULL,'2023-11-23 16:11:12.490',337982,NULL,50,NULL,NULL,NULL,''),('55005','grouperProcess:1:52503','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','55001','55002','请假流程',NULL,NULL,NULL,NULL,'2023-11-23 16:21:23.970',NULL,'2023-11-23 16:32:44.015',680045,NULL,50,NULL,NULL,NULL,''),('60003','grouperProcess:1:52503','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','55001','55002','灵活组长审批',NULL,NULL,NULL,'灵活待办人员审批请假流程-老六','2023-11-23 16:32:44.035',NULL,'2023-11-23 16:33:29.307',45272,NULL,50,NULL,NULL,NULL,''),('65005','grouperProcess:1:52503','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','65001','65002','请假流程',NULL,NULL,NULL,NULL,'2023-11-23 17:09:26.384',NULL,'2023-11-23 17:13:06.835',220451,NULL,50,NULL,NULL,NULL,''),('70003','grouperProcess:1:52503','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','65001','65002','灵活组长审批',NULL,NULL,NULL,'灵活待办人员审批请假流程-老六','2023-11-23 17:13:06.868',NULL,'2023-11-23 17:13:50.246',43378,NULL,50,NULL,NULL,NULL,''),('77505','grouperProcess:2:75003','sid-7338B0C4-DD95-4522-8F67-A73BD2DC6629','77501','77502','请假流程',NULL,NULL,NULL,NULL,'2023-11-24 13:55:22.047',NULL,'2023-11-24 14:12:40.822',1038775,NULL,50,NULL,NULL,NULL,''),('87506','grouperProcess:2:75003','sid-E8B1CDE5-222E-4C42-9334-8040C23F0023','77501','77502','灵活组长审批',NULL,NULL,NULL,'灵活待办人员审批请假流程-老六','2023-11-24 14:12:40.842',NULL,'2023-11-24 14:14:43.440',122598,NULL,50,NULL,NULL,NULL,''),('95005','claimTask:1:92503','sid-DC34E6BE-A0FE-4137-B720-6C7FC66248EA','95001','95002','外出考勤',NULL,NULL,NULL,'wanggang','2023-11-27 10:35:17.824','2023-11-27 10:41:09.751','2023-11-27 11:06:03.815',1845991,NULL,50,NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_varinst` VALUES ('135002','135001','135001',NULL,'day','integer',0,NULL,NULL,36,'36',NULL,'2023-11-27 17:26:53.370','2023-11-27 17:26:53.370'),('140002','140001','140001',NULL,'day','integer',0,NULL,NULL,36,'36',NULL,'2023-11-27 17:32:02.685','2023-11-27 17:32:02.685'),('45002','45001','45001',NULL,'group','string',0,NULL,NULL,NULL,'JavaC组组长王五',NULL,'2023-11-23 16:05:34.491','2023-11-23 16:05:34.491'),('60001','55001','55001',NULL,'group','string',0,NULL,NULL,NULL,'灵活待办人员审批请假流程-老六',NULL,'2023-11-23 16:32:43.953','2023-11-23 16:32:43.953'),('70001','65001','65001',NULL,'group','string',0,NULL,NULL,NULL,'灵活待办人员审批请假流程-老六',NULL,'2023-11-23 17:13:06.769','2023-11-23 17:13:06.769'),('87502','77501','77501',NULL,'type','string',0,NULL,NULL,NULL,'APPROVE.OK',NULL,'2023-11-24 14:12:40.760','2023-11-24 14:12:40.760'),('87503','77501','77501',NULL,'comment','string',0,NULL,NULL,NULL,'近期表现良好，准假',NULL,'2023-11-24 14:12:40.761','2023-11-24 14:12:40.761'),('87504','77501','77501',NULL,'group','string',0,NULL,NULL,NULL,'灵活待办人员审批请假流程-老六',NULL,'2023-11-24 14:12:40.761','2023-11-24 14:12:40.761');
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
INSERT INTO `act_re_deployment` VALUES ('10001','请假流程',NULL,NULL,'','2023-11-21 08:10:12.705',NULL),('112501','财务季报',NULL,NULL,'','2023-11-27 04:09:01.884',NULL),('125001','请年假流程',NULL,NULL,'','2023-11-27 09:23:07.308',NULL),('132501','请年假流程',NULL,NULL,'','2023-11-27 09:26:37.064',NULL),('137501','请年假流程',NULL,NULL,'','2023-11-27 09:31:42.376',NULL),('25001','简单流程',NULL,NULL,'','2023-11-23 03:14:01.100',NULL),('32501','用户角色控制流程',NULL,NULL,'','2023-11-23 03:27:52.789',NULL),('40001','灵活待办人员审批',NULL,NULL,'','2023-11-23 08:02:20.974',NULL),('52501','灵活待办人员审批请假流程',NULL,NULL,'','2023-11-23 08:19:54.962',NULL),('75001','灵活待办人员审批请假流程',NULL,NULL,'','2023-11-24 05:52:51.814',NULL),('92501','候选人签收任务',NULL,NULL,'','2023-11-27 02:34:16.081',NULL);
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
INSERT INTO `act_re_procdef` VALUES ('ExcutionListener:1:112503',1,'http://www.activiti.org/processdef','ExcutionListener','ExcutionListener',1,'112501','process/task/ExcutionListener.bpmn20.xml',NULL,'ExcutionListener',0,1,1,'',NULL),('VariableListener:1:125003',1,'http://www.activiti.org/processdef','VariableListener','VariableListener',1,'125001','process/task/VariableListener.bpmn20.xml',NULL,'VariableListener',0,1,1,'',NULL),('VariableListener:2:132503',1,'http://www.activiti.org/processdef','VariableListener','VariableListener',2,'132501','process/task/VariableListener.bpmn20.xml',NULL,'VariableListener',0,1,1,'',NULL),('VariableListener:3:137503',1,'http://www.activiti.org/processdef','VariableListener','VariableListener',3,'137501','process/task/VariableListener.bpmn20.xml',NULL,'VariableListener',0,1,1,'',NULL),('claimTask:1:92503',1,'http://www.activiti.org/processdef','claimTask','claimTask',1,'92501','process/claimTask.bpmn20.xml',NULL,'claimTask',0,1,1,'',NULL),('grouper:1:40003',1,'http://www.activiti.org/processdef','grouper','grouper',1,'40001','process/grouper.bpmn20.xml',NULL,'grouper',0,1,1,'',NULL),('grouperProcess:1:52503',1,'http://www.activiti.org/processdef','grouperProcess','grouperProcess',1,'52501','process/grouperProcess.bpmn20.xml',NULL,'灵活审批待办人员，审批流程',0,1,1,'',NULL),('grouperProcess:2:75003',1,'http://www.activiti.org/processdef','grouperProcess','grouperProcess',2,'75001','process/grouperProcess.bpmn20.xml',NULL,'灵活审批待办人员，审批流程',0,1,1,'',NULL),('oa-leave:1:10004',1,'http://www.activiti.org/processdef','oa-leave','oa-leave',1,'10001','process/oa-leave.bpmn20.xml','process/oa-leave.png',NULL,0,1,1,'',NULL),('test01:1:25004',1,'http://www.activiti.org/processdef','test01','test01',1,'25001','process/test01.bpmn20.xml',NULL,'流程演示',0,1,1,'',NULL),('用户角色控制流程:1:32503',1,'http://www.activiti.org/processdef','用户角色控制流程','用户角色控制流程',1,'32501','process/userRole.bpmn20.xml',NULL,'用户角色控制流程',0,1,1,'',NULL);
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
