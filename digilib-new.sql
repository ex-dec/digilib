mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: digilib
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
mysqldump: Error: 'Access denied; you need (at least one of) the PROCESS privilege(s) for this operation' when trying to dump tablespaces

--
-- Table structure for table `tb_buku`
--

DROP TABLE IF EXISTS `tb_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_buku` (
  `kodeBuku` int NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `kodePenerbit` int NOT NULL,
  `kodePengarang` int NOT NULL,
  `tahun` int NOT NULL,
  `edisi` varchar(20) NOT NULL,
  `issn_isbn` varchar(30) NOT NULL,
  `seri` varchar(10) NOT NULL,
  `abstraksi` text NOT NULL,
  `kodeKategori` int NOT NULL,
  `tglInput` datetime NOT NULL,
  `tglUpdate` datetime NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `lastUpdateBy` int NOT NULL,
  PRIMARY KEY (`kodeBuku`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_buku`
--

LOCK TABLES `tb_buku` WRITE;
/*!40000 ALTER TABLE `tb_buku` DISABLE KEYS */;
INSERT INTO `tb_buku` VALUES (1,'Lord of The Rings',1,2,2006,'2010','','17','Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.',1,'2013-03-22 00:00:00','2013-03-30 00:26:36','',1),(2,'Angels and Demons',1,1,2006,'5','','','',1,'2013-03-22 00:00:00','2013-03-22 00:00:00','',1),(6,'The Hobbit',1,2,2000,'1','1','1','adadasd',1,'2013-03-30 00:46:46','2013-03-30 00:46:46','',1),(11,'Uwu',1,5,123,'1','asd','asd','asd',6,'2023-06-07 08:47:15','2023-06-07 08:47:15',NULL,1),(12,'Saman',1,7,2022,'1','asd','12','saman tere liye',1,'2023-06-07 10:42:01','2023-06-07 10:42:11',NULL,1);
/*!40000 ALTER TABLE `tb_buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dosen`
--

DROP TABLE IF EXISTS `tb_dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dosen` (
  `kodeDosen` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateInput` datetime NOT NULL,
  `dateUpdate` datetime NOT NULL,
  `tempatLahir` varchar(40) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` text NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`kodeDosen`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dosen`
--

LOCK TABLES `tb_dosen` WRITE;
/*!40000 ALTER TABLE `tb_dosen` DISABLE KEYS */;
INSERT INTO `tb_dosen` VALUES (1,'dosen','ce28eed1511f631af6b2a7bb0a85d636','Pak Dosen','dosen@eepis-its.edu','2013-03-22 00:00:00','2013-03-22 00:00:00','Surabaya','1980-10-08','Surabaya','');
/*!40000 ALTER TABLE `tb_dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kategori`
--

DROP TABLE IF EXISTS `tb_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_kategori` (
  `kodeKategori` int NOT NULL AUTO_INCREMENT,
  `namaKategori` varchar(50) NOT NULL,
  PRIMARY KEY (`kodeKategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kategori`
--

LOCK TABLES `tb_kategori` WRITE;
/*!40000 ALTER TABLE `tb_kategori` DISABLE KEYS */;
INSERT INTO `tb_kategori` VALUES (1,'Novel'),(8,'Fiksi');
/*!40000 ALTER TABLE `tb_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mahasiswa`
--

DROP TABLE IF EXISTS `tb_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mahasiswa` (
  `kodeMhs` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateInput` datetime NOT NULL,
  `dateUpdate` datetime NOT NULL,
  `tempatLahir` varchar(40) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` text NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `jurusan` varchar(100) NOT NULL,
  PRIMARY KEY (`kodeMhs`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mahasiswa`
--

LOCK TABLES `tb_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;
INSERT INTO `tb_mahasiswa` VALUES (1,'deny','05afb6ce69b9cef1bd6ece7e4745f96c','Deny Herianto','deny.hrnt@gmail.com','2013-03-22 00:00:00','2013-03-22 00:00:00','Surabaya','1993-10-06','Surabaya','','Teknik Informatika');
/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_penerbit`
--

DROP TABLE IF EXISTS `tb_penerbit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_penerbit` (
  `kodePenerbit` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`kodePenerbit`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_penerbit`
--

LOCK TABLES `tb_penerbit` WRITE;
/*!40000 ALTER TABLE `tb_penerbit` DISABLE KEYS */;
INSERT INTO `tb_penerbit` VALUES (1,'Gramedia','Jl. Jakarta','0899','office@gramedia.com'),(6,'Pustaka Harapan Sejati','Jalan Raya Mawar No. 456, Bandung, Jawa Barat, Indonesia',' +62987654321','pustakaharapansejati@gmail.com');
/*!40000 ALTER TABLE `tb_penerbit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pengarang`
--

DROP TABLE IF EXISTS `tb_pengarang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pengarang` (
  `kodePengarang` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`kodePengarang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pengarang`
--

LOCK TABLES `tb_pengarang` WRITE;
/*!40000 ALTER TABLE `tb_pengarang` DISABLE KEYS */;
INSERT INTO `tb_pengarang` VALUES (1,'Dan Brown'),(2,'J.R.R. Tolkien'),(4,'Deny Herianto'),(5,'Andrea Hirata'),(7,'Tere Liye');
/*!40000 ALTER TABLE `tb_pengarang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_petugas`
--

DROP TABLE IF EXISTS `tb_petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_petugas` (
  `kodePetugas` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `dateInput` datetime NOT NULL,
  `dateUpdate` datetime NOT NULL,
  `tempatLahir` varchar(40) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `alamat` text NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`kodePetugas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_petugas`
--

LOCK TABLES `tb_petugas` WRITE;
/*!40000 ALTER TABLE `tb_petugas` DISABLE KEYS */;
INSERT INTO `tb_petugas` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin','admin@eepis-its.edu','2013-03-22 00:00:00','2013-03-22 00:00:00','Surabaya','1990-10-06','Surabaya','');
/*!40000 ALTER TABLE `tb_petugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pinjam`
--

DROP TABLE IF EXISTS `tb_pinjam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pinjam` (
  `kodePinjam` int NOT NULL,
  `kodePetugas` int DEFAULT NULL,
  `kodePeminjam` int NOT NULL,
  `tipePeminjam` int NOT NULL,
  `tglPinjam` datetime NOT NULL,
  `tglKembali` datetime DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`kodePinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pinjam`
--

LOCK TABLES `tb_pinjam` WRITE;
/*!40000 ALTER TABLE `tb_pinjam` DISABLE KEYS */;
INSERT INTO `tb_pinjam` VALUES (2013033021,0,1,2,'2013-03-30 10:16:36','0000-00-00 00:00:00','',1),(2013033031,1,1,3,'2013-03-30 10:17:47','0000-00-00 00:00:00','',2);
/*!40000 ALTER TABLE `tb_pinjam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pinjamdetail`
--

DROP TABLE IF EXISTS `tb_pinjamdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pinjamdetail` (
  `kodePinjamDetail` int NOT NULL AUTO_INCREMENT,
  `kodePinjam` int NOT NULL,
  `kodeBuku` int NOT NULL,
  PRIMARY KEY (`kodePinjamDetail`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pinjamdetail`
--

LOCK TABLES `tb_pinjamdetail` WRITE;
/*!40000 ALTER TABLE `tb_pinjamdetail` DISABLE KEYS */;
INSERT INTO `tb_pinjamdetail` VALUES (17,2013033021,2),(18,2013033021,1),(19,2013033031,2);
/*!40000 ALTER TABLE `tb_pinjamdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  3:49:53
