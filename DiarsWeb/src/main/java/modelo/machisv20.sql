-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: machis
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
-- Table structure for table `caja_chica`
--

DROP TABLE IF EXISTS `caja_chica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `caja_chica` (
  `IDCAJA` varchar(7) NOT NULL,
  `VENTA_TOTAL` decimal(10,2) DEFAULT NULL,
  `APERTURA` decimal(10,2) DEFAULT NULL,
  `TARJETAS` decimal(10,2) DEFAULT NULL,
  `EFECTIVO` decimal(10,2) DEFAULT NULL,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `FECHA_FIN` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `IDEMPLEADO` varchar(7) NOT NULL,
  PRIMARY KEY (`IDCAJA`),
  KEY `CAJA_EMPL_FK` (`IDEMPLEADO`),
  CONSTRAINT `CAJA_EMPL_FK` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_chica`
--

LOCK TABLES `caja_chica` WRITE;
/*!40000 ALTER TABLE `caja_chica` DISABLE KEYS */;
INSERT INTO `caja_chica` VALUES ('CC00001',180.00,500.00,180.00,500.00,'2019-06-21 05:52:06',NULL,1,'EM00001');
/*!40000 ALTER TABLE `caja_chica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cargo` (
  `IDCARGO` varchar(7) NOT NULL,
  `CARGO` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDCARGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES ('CA00001','Administrador'),('CA00002','Cajero'),('CA00003','Mozo'),('CA00004','Maitre');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_plato`
--

DROP TABLE IF EXISTS `categoria_plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria_plato` (
  `IDCATEGORIA_PLATO` varchar(7) NOT NULL,
  `CATEGORIA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCATEGORIA_PLATO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_plato`
--

LOCK TABLES `categoria_plato` WRITE;
/*!40000 ALTER TABLE `categoria_plato` DISABLE KEYS */;
INSERT INTO `categoria_plato` VALUES ('CP00001','Parrilla'),('CP00002','licores'),('CP00003','carnes');
/*!40000 ALTER TABLE `categoria_plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `IDCLIENTE` varchar(7) NOT NULL,
  `IDPERSONA` varchar(7) NOT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  KEY `CLIE_PERS_FK` (`IDPERSONA`),
  CONSTRAINT `CLIE_PERS_FK` FOREIGN KEY (`IDPERSONA`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('CL00001','PE00002'),('CL00002','PE00003'),('CL00003','PE00004'),('CL00004','PE00005');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobante_pago`
--

DROP TABLE IF EXISTS `comprobante_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comprobante_pago` (
  `IDCOMPROBANTE` varchar(7) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCOMPROBANTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_pago`
--

LOCK TABLES `comprobante_pago` WRITE;
/*!40000 ALTER TABLE `comprobante_pago` DISABLE KEYS */;
INSERT INTO `comprobante_pago` VALUES ('CP00001','FACTURA',1),('CP00002','BOLETA',1);
/*!40000 ALTER TABLE `comprobante_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departamento` (
  `IDDEPARTAMENTO` varchar(7) NOT NULL,
  `DEPARTAMENTO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDDEPARTAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES ('DE00001','Amazonas'),('DE00002','Ancash'),('DE00003','Apurimac'),('DE00004','Arequipa'),('DE00005','Ayacucho'),('DE00006','Cajamarca'),('DE00007','Callao'),('DE00008','Cusco'),('DE00009','Huancavelica'),('DE00010','Huanuco'),('DE00011','Ica'),('DE00012','Junin'),('DE00013','La Libertad'),('DE00014','Lambayeque'),('DE00015','Lima'),('DE00016','Loreto'),('DE00017','Madre de Dios'),('DE00018','Moquegua'),('DE00019','Pasco'),('DE00020','Piura'),('DE00021','Puno'),('DE00022','San Martin'),('DE00023','Tacna'),('DE00024','Tumbes'),('DE00025','Ucayali');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_pedido` (
  `IDDETALLE_PEDIDO` varchar(7) NOT NULL,
  `IDPEDIDO` varchar(7) NOT NULL,
  `IDPLATO` varchar(7) NOT NULL,
  `IDEMPLEADO` varchar(7) NOT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDDETALLE_PEDIDO`,`IDPEDIDO`,`IDPLATO`,`IDEMPLEADO`),
  KEY `EXISTE2` (`IDPLATO`),
  KEY `EXISTE3` (`IDPEDIDO`),
  KEY `GENERA` (`IDEMPLEADO`),
  CONSTRAINT `EXISTE2` FOREIGN KEY (`IDPLATO`) REFERENCES `plato` (`idplato`),
  CONSTRAINT `EXISTE3` FOREIGN KEY (`IDPEDIDO`) REFERENCES `pedido` (`idpedido`),
  CONSTRAINT `GENERA` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES ('DP00001','PD00001','PL00001','EM00004',3,1,'ssss'),('DP00002','PD00001','PL00006','EM00004',3,1,'wawaw'),('DP00003','PD00001','PL00002','EM00004',1,1,'aaaa'),('DP00004','PD00001','PL00006','EM00004',1,1,'aaaa'),('DP00005','PD00002','PL00006','EM00004',2,1,'sdaad'),('DP00006','PD00003','PL00003','EM00004',2,1,'ssss'),('DP00007','PD00003','PL00002','EM00004',2,1,'ssss'),('DP00008','PD00003','PL00001','EM00004',2,1,''),('DP00009','PD00004','PL00006','EM00004',2,1,'AAAAA'),('DP10','PD00004','PL00006','EM00004',1,1,'aaaaa');
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_plato`
--

DROP TABLE IF EXISTS `detalle_plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detalle_plato` (
  `IDDETALLE_PLATO` varchar(7) NOT NULL,
  `IDPRODUCTOS` varchar(7) NOT NULL,
  `IDPLATO` varchar(7) NOT NULL,
  `CANTIDAD` decimal(10,3) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDDETALLE_PLATO`,`IDPRODUCTOS`,`IDPLATO`),
  KEY `EXISTE` (`IDPRODUCTOS`),
  KEY `EXISTE1` (`IDPLATO`),
  CONSTRAINT `EXISTE` FOREIGN KEY (`IDPRODUCTOS`) REFERENCES `producto` (`idproductos`),
  CONSTRAINT `EXISTE1` FOREIGN KEY (`IDPLATO`) REFERENCES `plato` (`idplato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_plato`
--

LOCK TABLES `detalle_plato` WRITE;
/*!40000 ALTER TABLE `detalle_plato` DISABLE KEYS */;
INSERT INTO `detalle_plato` VALUES ('DL00001','PR00002','PL00003',1.000,0),('DL00002','PR00002','PL00003',5.000,1),('DL00003','PR00005','PL00004',4.000,1),('DL00004','PR00001','PL00004',5.000,1),('DL00005','PR00004','PL00003',40.000,1),('DL00006','PR00005','PL00003',4.000,1),('DL00007','PR00005','PL00003',4.000,1),('DL00008','PR00002','PL00006',2.250,1);
/*!40000 ALTER TABLE `detalle_plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `direccion` (
  `IDDIRECCION` varchar(7) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `IDDISTRITO` varchar(7) NOT NULL,
  `IDPERSONA` varchar(7) NOT NULL,
  PRIMARY KEY (`IDDIRECCION`),
  KEY `DIRE_DIST_FK` (`IDDISTRITO`),
  KEY `DIRE_PERS_FK` (`IDPERSONA`),
  CONSTRAINT `DIRE_DIST_FK` FOREIGN KEY (`IDDISTRITO`) REFERENCES `distrito` (`iddistrito`),
  CONSTRAINT `DIRE_PERS_FK` FOREIGN KEY (`IDPERSONA`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `distrito` (
  `IDDISTRITO` varchar(7) NOT NULL,
  `DISTRITO` varchar(50) DEFAULT NULL,
  `IDPROVINCIA` varchar(7) NOT NULL,
  PRIMARY KEY (`IDDISTRITO`),
  KEY `DIST_PROV_FK` (`IDPROVINCIA`),
  CONSTRAINT `DIST_PROV_FK` FOREIGN KEY (`IDPROVINCIA`) REFERENCES `provincia` (`idprovincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES ('DI00001','Chachapoyas','PR00001'),('DI00002','Asuncion','PR00001'),('DI00003','Balsas','PR00001'),('DI00004','Cheto','PR00001'),('DI00005','Chiliquin','PR00001'),('DI00006','Chuquibamba','PR00001'),('DI00007','Granada','PR00001'),('DI00008','Huancas','PR00001'),('DI00009','La Jalca','PR00001'),('DI00010','Leimebamba','PR00001'),('DI00011','Levanto','PR00001'),('DI00012','Magdalena','PR00001'),('DI00013','Mariscal Castilla','PR00001'),('DI00014','Molinopampa','PR00001'),('DI00015','Montevideo','PR00001'),('DI00016','Olleros','PR00001'),('DI00017','Quinjalca','PR00001'),('DI00018','San Francisco de Daguas','PR00001'),('DI00019','San Isidro de Maino','PR00001'),('DI00020','Soloco','PR00001'),('DI00021','Sonche','PR00001'),('DI00022','Bagua','PR00002'),('DI00023','Aramango','PR00002'),('DI00024','Copallin','PR00002'),('DI00025','El Parco','PR00002'),('DI00026','Imaza','PR00002'),('DI00027','La Peca','PR00002'),('DI00028','Jumbilla','PR00003'),('DI00029','Chisquilla','PR00003'),('DI00030','Churuja','PR00003'),('DI00031','Corosha','PR00003'),('DI00032','Cuispes','PR00003'),('DI00033','Florida','PR00003'),('DI00034','Jazan','PR00003'),('DI00035','Recta','PR00003'),('DI00036','San Carlos','PR00003'),('DI00037','Shipasbamba','PR00003'),('DI00038','Valera','PR00003'),('DI00039','Yambrasbamba','PR00003'),('DI00040','Nieva','PR00004'),('DI00041','El Cenepa','PR00004'),('DI00042','Rio Santiago','PR00004'),('DI00043','Lamud','PR00005'),('DI00044','Camporredondo','PR00005'),('DI00045','Cocabamba','PR00005'),('DI00046','Colcamar','PR00005'),('DI00047','Conila','PR00005'),('DI00048','Inguilpata','PR00005'),('DI00049','Longuita','PR00005'),('DI00050','Lonya Chico','PR00005'),('DI00051','Luya','PR00005'),('DI00052','Luya Viejo','PR00005'),('DI00053','Maria','PR00005'),('DI00054','Ocalli','PR00005'),('DI00055','Ocumal','PR00005'),('DI00056','Pisuquia','PR00005'),('DI00057','Providencia','PR00005'),('DI00058','San Cristobal','PR00005'),('DI00059','San Francisco del Yeso','PR00005'),('DI00060','San Jeronimo','PR00005'),('DI00061','San Juan de Lopecancha','PR00005'),('DI00062','Santa Catalina','PR00005'),('DI00063','Santo Tomas','PR00005'),('DI00064','Tingo','PR00005'),('DI00065','Trita','PR00005'),('DI00066','San Nicolas','PR00006'),('DI00067','Chirimoto','PR00006'),('DI00068','Cochamal','PR00006'),('DI00069','Huambo','PR00006'),('DI00070','Limabamba','PR00006'),('DI00071','Longar','PR00006'),('DI00072','Mariscal Benavides','PR00006'),('DI00073','Milpuc','PR00006'),('DI00074','Omia','PR00006'),('DI00075','Santa Rosa','PR00006'),('DI00076','Totora','PR00006'),('DI00077','Vista Alegre','PR00006'),('DI00078','Bagua Grande','PR00007'),('DI00079','Cajaruro','PR00007'),('DI00080','Cumba','PR00007'),('DI00081','El Milagro','PR00007'),('DI00082','Jamalca','PR00007'),('DI00083','Lonya Grande','PR00007'),('DI00084','Yamon','PR00007'),('DI00085','Huaraz','PR00008'),('DI00086','Cochabamba','PR00008'),('DI00087','Colcabamba','PR00008'),('DI00088','Huanchay','PR00008'),('DI00089','Independencia','PR00008'),('DI00090','Jangas','PR00008'),('DI00091','La Libertad','PR00008'),('DI00092','Olleros','PR00008'),('DI00093','Pampas','PR00008'),('DI00094','Pariacoto','PR00008'),('DI00095','Pira','PR00008'),('DI00096','Tarica','PR00008'),('DI00097','Aija','PR00009'),('DI00098','Coris','PR00009'),('DI00099','Huacllan','PR00009'),('DI00100','La Merced','PR00009'),('DI00101','Succha','PR00009'),('DI00102','Llamellin','PR00010'),('DI00103','Aczo','PR00010'),('DI00104','Chaccho','PR00010'),('DI00105','Chingas','PR00010'),('DI00106','Mirgas','PR00010'),('DI00107','San Juan de Rontoy','PR00010'),('DI00108','Chacas','PR00011'),('DI00109','Acochaca','PR00011'),('DI00110','Chiquian','PR00012'),('DI00111','Abelardo Pardo Lezameta','PR00012'),('DI00112','Antonio Raymondi','PR00012'),('DI00113','Aquia','PR00012'),('DI00114','Cajacay','PR00012'),('DI00115','Canis','PR00012'),('DI00116','Colquioc','PR00012'),('DI00117','Huallanca','PR00012'),('DI00118','Huasta','PR00012'),('DI00119','Huayllacayan','PR00012'),('DI00120','La Primavera','PR00012'),('DI00121','Mangas','PR00012'),('DI00122','Pacllon','PR00012'),('DI00123','San Miguel de Corpanqui','PR00012'),('DI00124','Ticllos','PR00012'),('DI00125','Carhuaz','PR00013'),('DI00126','Acopampa','PR00013'),('DI00127','Amashca','PR00013'),('DI00128','Anta','PR00013'),('DI00129','Ataquero','PR00013'),('DI00130','Marcara','PR00013'),('DI00131','Pariahuanca','PR00013'),('DI00132','San Miguel de Aco','PR00013'),('DI00133','Shilla','PR00013'),('DI00134','Tinco','PR00013'),('DI00135','Yungar','PR00013'),('DI00136','San Luis','PR00014'),('DI00137','San Nicolas','PR00014'),('DI00138','Yauya','PR00014'),('DI00139','Casma','PR00015'),('DI00140','Buena Vista Alta','PR00015'),('DI00141','Comandante Noel','PR00015'),('DI00142','Yautan','PR00015'),('DI00143','Corongo','PR00016'),('DI00144','Aco','PR00016'),('DI00145','Bambas','PR00016'),('DI00146','Cusca','PR00016'),('DI00147','La Pampa','PR00016'),('DI00148','Yanac','PR00016'),('DI00149','Yupan','PR00016'),('DI00150','Huari','PR00017'),('DI00151','Anra','PR00017'),('DI00152','Cajay','PR00017'),('DI00153','Chavin de Huantar','PR00017'),('DI00154','Huacachi','PR00017'),('DI00155','Huacchis','PR00017'),('DI00156','Huachis','PR00017'),('DI00157','Huantar','PR00017'),('DI00158','Masin','PR00017'),('DI00159','Paucas','PR00017'),('DI00160','Ponto','PR00017'),('DI00161','Rahuapampa','PR00017'),('DI00162','Rapayan','PR00017'),('DI00163','San Marcos','PR00017'),('DI00164','San Pedro de Chana','PR00017'),('DI00165','Uco','PR00017'),('DI00166','Huarmey','PR00018'),('DI00167','Cochapeti','PR00018'),('DI00168','Culebras','PR00018'),('DI00169','Huayan','PR00018'),('DI00170','Malvas','PR00018'),('DI00171','Caraz','PR00019'),('DI00172','Huallanca','PR00019'),('DI00173','Huata','PR00019'),('DI00174','Huaylas','PR00019'),('DI00175','Mato','PR00019'),('DI00176','Pamparomas','PR00019'),('DI00177','Pueblo Libre','PR00019'),('DI00178','Santa Cruz','PR00019'),('DI00179','Santo Toribio','PR00019'),('DI00180','Yuracmarca','PR00019'),('DI00181','Piscobamba','PR00020'),('DI00182','Casca','PR00020'),('DI00183','Eleazar Guzman Barron','PR00020'),('DI00184','Fidel Olivas Escudero','PR00020'),('DI00185','Llama','PR00020'),('DI00186','Llumpa','PR00020'),('DI00187','Lucma','PR00020'),('DI00188','Musga','PR00020'),('DI00189','Ocros','PR00021'),('DI00190','Acas','PR00021'),('DI00191','Cajamarquilla','PR00021'),('DI00192','Carhuapampa','PR00021'),('DI00193','Cochas','PR00021'),('DI00194','Congas','PR00021'),('DI00195','Llipa','PR00021'),('DI00196','San Cristobal de Rajan','PR00021'),('DI00197','San Pedro','PR00021'),('DI00198','Santiago de Chilcas','PR00021'),('DI00199','Cabana','PR00022'),('DI00200','Bolognesi','PR00022'),('DI00201','Conchucos','PR00022'),('DI00202','Huacaschuque','PR00022'),('DI00203','Huandoval','PR00022'),('DI00204','Lacabamba','PR00022'),('DI00205','Llapo','PR00022'),('DI00206','Pallasca','PR00022'),('DI00207','Pampas','PR00022'),('DI00208','Santa Rosa','PR00022'),('DI00209','Tauca','PR00022'),('DI00210','Pomabamba','PR00023'),('DI00211','Huayllan','PR00023'),('DI00212','Parobamba','PR00023'),('DI00213','Quinuabamba','PR00023'),('DI00214','Recuay','PR00024'),('DI00215','Catac','PR00024'),('DI00216','Cotaparaco','PR00024'),('DI00217','Huayllapampa','PR00024'),('DI00218','Llacllin','PR00024'),('DI00219','Marca','PR00024'),('DI00220','Pampas Chico','PR00024'),('DI00221','Pararin','PR00024'),('DI00222','Tapacocha','PR00024'),('DI00223','Ticapampa','PR00024'),('DI00224','Chimbote','PR00025'),('DI00225','Caceres del Peru','PR00025'),('DI00226','Coishco','PR00025'),('DI00227','Macate','PR00025'),('DI00228','Moro','PR00025'),('DI00229','Nepeña','PR00025'),('DI00230','Samanco','PR00025'),('DI00231','Santa','PR00025'),('DI00232','Nuevo Chimbote','PR00025'),('DI00233','Sihuas','PR00026'),('DI00234','Acobamba','PR00026'),('DI00235','Alfonso Ugarte','PR00026'),('DI00236','Cashapampa','PR00026'),('DI00237','Chingalpo','PR00026'),('DI00238','Huayllabamba','PR00026'),('DI00239','Quiches','PR00026'),('DI00240','Ragash','PR00026'),('DI00241','San Juan','PR00026'),('DI00242','Sicsibamba','PR00026'),('DI00243','Yungay','PR00027'),('DI00244','Cascapara','PR00027'),('DI00245','Mancos','PR00027'),('DI00246','Matacoto','PR00027'),('DI00247','Quillo','PR00027'),('DI00248','Ranrahirca','PR00027'),('DI00249','Shupluy','PR00027'),('DI00250','Yanama','PR00027'),('DI00251','Abancay','PR00028'),('DI00252','Chacoche','PR00028'),('DI00253','Circa','PR00028'),('DI00254','Curahuasi','PR00028'),('DI00255','Huanipaca','PR00028'),('DI00256','Lambrama','PR00028'),('DI00257','Pichirhua','PR00028'),('DI00258','San Pedro de Cachora','PR00028'),('DI00259','Tamburco','PR00028'),('DI00260','Andahuaylas','PR00029'),('DI00261','Andarapa','PR00029'),('DI00262','Chiara','PR00029'),('DI00263','Huancarama','PR00029'),('DI00264','Huancaray','PR00029'),('DI00265','Huayana','PR00029'),('DI00266','Kishuara','PR00029'),('DI00267','Pacobamba','PR00029'),('DI00268','Pacucha','PR00029'),('DI00269','Pampachiri','PR00029'),('DI00270','Pomacocha','PR00029'),('DI00271','San Antonio de Cachi','PR00029'),('DI00272','San Jeronimo','PR00029'),('DI00273','San Miguel de Chaccrampa','PR00029'),('DI00274','Santa Maria de Chicmo','PR00029'),('DI00275','Talavera','PR00029'),('DI00276','Tumay Huaraca','PR00029'),('DI00277','Turpo','PR00029'),('DI00278','Kaquiabamba','PR00029'),('DI00279','José María Arguedas','PR00029'),('DI00280','Antabamba','PR00030'),('DI00281','El Oro','PR00030'),('DI00282','Huaquirca','PR00030'),('DI00283','Juan Espinoza Medrano','PR00030'),('DI00284','Oropesa','PR00030'),('DI00285','Pachaconas','PR00030'),('DI00286','Sabaino','PR00030'),('DI00287','Chalhuanca','PR00031'),('DI00288','Capaya','PR00031'),('DI00289','Caraybamba','PR00031'),('DI00290','Chapimarca','PR00031'),('DI00291','Colcabamba','PR00031'),('DI00292','Cotaruse','PR00031'),('DI00293','Huayllo','PR00031'),('DI00294','Justo Apu Sahuaraura','PR00031'),('DI00295','Lucre','PR00031'),('DI00296','Pocohuanca','PR00031'),('DI00297','San Juan de Chacña','PR00031'),('DI00298','Sañayca','PR00031'),('DI00299','Soraya','PR00031'),('DI00300','Tapairihua','PR00031'),('DI00301','Tintay','PR00031'),('DI00302','Toraya','PR00031'),('DI00303','Yanaca','PR00031'),('DI00304','Tambobamba','PR00032'),('DI00305','Cotabambas','PR00032'),('DI00306','Coyllurqui','PR00032'),('DI00307','Haquira','PR00032'),('DI00308','Mara','PR00032'),('DI00309','Challhuahuacho','PR00032'),('DI00310','Chincheros','PR00033'),('DI00311','Anco_Huallo','PR00033'),('DI00312','Cocharcas','PR00033'),('DI00313','Huaccana','PR00033'),('DI00314','Ocobamba','PR00033'),('DI00315','Ongoy','PR00033'),('DI00316','Uranmarca','PR00033'),('DI00317','Ranracancha','PR00033'),('DI00318','Rocchacc','PR00033'),('DI00319','El Porvenir','PR00033'),('DI00320','Los Chankas','PR00033'),('DI00321','Chuquibambilla','PR00034'),('DI00322','Curpahuasi','PR00034'),('DI00323','Gamarra','PR00034'),('DI00324','Huayllati','PR00034'),('DI00325','Mamara','PR00034'),('DI00326','Micaela Bastidas','PR00034'),('DI00327','Pataypampa','PR00034'),('DI00328','Progreso','PR00034'),('DI00329','San Antonio','PR00034'),('DI00330','Santa Rosa','PR00034'),('DI00331','Turpay','PR00034'),('DI00332','Vilcabamba','PR00034'),('DI00333','Virundo','PR00034'),('DI00334','Curasco','PR00034'),('DI00335','Arequipa','PR00035'),('DI00336','Alto Selva Alegre','PR00035'),('DI00337','Cayma','PR00035'),('DI00338','Cerro Colorado','PR00035'),('DI00339','Characato','PR00035'),('DI00340','Chiguata','PR00035'),('DI00341','Jacobo Hunter','PR00035'),('DI00342','La Joya','PR00035'),('DI00343','Mariano Melgar','PR00035'),('DI00344','Miraflores','PR00035'),('DI00345','Mollebaya','PR00035'),('DI00346','Paucarpata','PR00035'),('DI00347','Pocsi','PR00035'),('DI00348','Polobaya','PR00035'),('DI00349','Quequeña','PR00035'),('DI00350','Sabandia','PR00035'),('DI00351','Sachaca','PR00035'),('DI00352','San Juan de Siguas','PR00035'),('DI00353','San Juan de Tarucani','PR00035'),('DI00354','Santa Isabel de Siguas','PR00035'),('DI00355','Santa Rita de Siguas','PR00035'),('DI00356','Socabaya','PR00035'),('DI00357','Tiabaya','PR00035'),('DI00358','Uchumayo','PR00035'),('DI00359','Vitor','PR00035'),('DI00360','Yanahuara','PR00035'),('DI00361','Yarabamba','PR00035'),('DI00362','Yura','PR00035'),('DI00363','Jose Luis Bustamante y Rivero','PR00035'),('DI00364','Camana','PR00036'),('DI00365','Jose Maria Quimper','PR00036'),('DI00366','Mariano Nicolas Valcarcel','PR00036'),('DI00367','Mariscal Caceres','PR00036'),('DI00368','Nicolas de Pierola','PR00036'),('DI00369','Ocoña','PR00036'),('DI00370','Quilca','PR00036'),('DI00371','Samuel Pastor','PR00036'),('DI00372','Caraveli','PR00037'),('DI00373','Acari','PR00037'),('DI00374','Atico','PR00037'),('DI00375','Atiquipa','PR00037'),('DI00376','Bella Union','PR00037'),('DI00377','Cahuacho','PR00037'),('DI00378','Chala','PR00037'),('DI00379','Chaparra','PR00037'),('DI00380','Huanuhuanu','PR00037'),('DI00381','Jaqui','PR00037'),('DI00382','Lomas','PR00037'),('DI00383','Quicacha','PR00037'),('DI00384','Yauca','PR00037'),('DI00385','Aplao','PR00038'),('DI00386','Andagua','PR00038'),('DI00387','Ayo','PR00038'),('DI00388','Chachas','PR00038'),('DI00389','Chilcaymarca','PR00038'),('DI00390','Choco','PR00038'),('DI00391','Huancarqui','PR00038'),('DI00392','Machaguay','PR00038'),('DI00393','Orcopampa','PR00038'),('DI00394','Pampacolca','PR00038'),('DI00395','Tipan','PR00038'),('DI00396','Uñon','PR00038'),('DI00397','Uraca','PR00038'),('DI00398','Viraco','PR00038'),('DI00399','Chivay','PR00039'),('DI00400','Achoma','PR00039'),('DI00401','Cabanaconde','PR00039'),('DI00402','Callalli','PR00039'),('DI00403','Caylloma','PR00039'),('DI00404','Coporaque','PR00039'),('DI00405','Huambo','PR00039'),('DI00406','Huanca','PR00039'),('DI00407','Ichupampa','PR00039'),('DI00408','Lari','PR00039'),('DI00409','Lluta','PR00039'),('DI00410','Maca','PR00039'),('DI00411','Madrigal','PR00039'),('DI00412','San Antonio de Chuca','PR00039'),('DI00413','Sibayo','PR00039'),('DI00414','Tapay','PR00039'),('DI00415','Tisco','PR00039'),('DI00416','Tuti','PR00039'),('DI00417','Yanque','PR00039'),('DI00418','Majes','PR00039'),('DI00419','Chuquibamba','PR00040'),('DI00420','Andaray','PR00040'),('DI00421','Cayarani','PR00040'),('DI00422','Chichas','PR00040'),('DI00423','Iray','PR00040'),('DI00424','Rio Grande','PR00040'),('DI00425','Salamanca','PR00040'),('DI00426','Yanaquihua','PR00040'),('DI00427','Mollendo','PR00041'),('DI00428','Cocachacra','PR00041'),('DI00429','Dean Valdivia','PR00041'),('DI00430','Islay','PR00041'),('DI00431','Mejia','PR00041'),('DI00432','Punta de Bombon','PR00041'),('DI00433','Cotahuasi','PR00042'),('DI00434','Alca','PR00042'),('DI00435','Charcana','PR00042'),('DI00436','Huaynacotas','PR00042'),('DI00437','Pampamarca','PR00042'),('DI00438','Puyca','PR00042'),('DI00439','Quechualla','PR00042'),('DI00440','Sayla','PR00042'),('DI00441','Tauria','PR00042'),('DI00442','Tomepampa','PR00042'),('DI00443','Toro','PR00042'),('DI00444','Ayacucho','PR00043'),('DI00445','Acocro','PR00043'),('DI00446','Acos Vinchos','PR00043'),('DI00447','Carmen Alto','PR00043'),('DI00448','Chiara','PR00043'),('DI00449','Ocros','PR00043'),('DI00450','Pacaycasa','PR00043'),('DI00451','Quinua','PR00043'),('DI00452','San Jose de Ticllas','PR00043'),('DI00453','San Juan Bautista','PR00043'),('DI00454','Santiago de Pischa','PR00043'),('DI00455','Socos','PR00043'),('DI00456','Tambillo','PR00043'),('DI00457','Vinchos','PR00043'),('DI00458','Jesus Nazareno','PR00043'),('DI00459','Andrés Avelino Cáceres Dorregaray','PR00043'),('DI00460','Cangallo','PR00044'),('DI00461','Chuschi','PR00044'),('DI00462','Los Morochucos','PR00044'),('DI00463','Maria Parado de Bellido','PR00044'),('DI00464','Paras','PR00044'),('DI00465','Totos','PR00044'),('DI00466','Sancos','PR00045'),('DI00467','Carapo','PR00045'),('DI00468','Sacsamarca','PR00045'),('DI00469','Santiago de Lucanamarca','PR00045'),('DI00470','Huanta','PR00046'),('DI00471','Ayahuanco','PR00046'),('DI00472','Huamanguilla','PR00046'),('DI00473','Iguain','PR00046'),('DI00474','Luricocha','PR00046'),('DI00475','Santillana','PR00046'),('DI00476','Sivia','PR00046'),('DI00477','Llochegua','PR00046'),('DI00478','Canayre','PR00046'),('DI00479','Uchuraccay','PR00046'),('DI00480','Pucacolpa','PR00046'),('DI00481','Chaca','PR00046'),('DI00482','San Miguel','PR00047'),('DI00483','Anco','PR00047'),('DI00484','Ayna','PR00047'),('DI00485','Chilcas','PR00047'),('DI00486','Chungui','PR00047'),('DI00487','Luis Carranza','PR00047'),('DI00488','Santa Rosa','PR00047'),('DI00489','Tambo','PR00047'),('DI00490','Samugari','PR00047'),('DI00491','Anchihuay','PR00047'),('DI00492','Oronccoy','PR00047'),('DI00493','Puquio','PR00048'),('DI00494','Aucara','PR00048'),('DI00495','Cabana','PR00048'),('DI00496','Carmen Salcedo','PR00048'),('DI00497','Chaviña','PR00048'),('DI00498','Chipao','PR00048'),('DI00499','Huac-Huas','PR00048'),('DI00500','Laramate','PR00048'),('DI00501','Leoncio Prado','PR00048'),('DI00502','Llauta','PR00048'),('DI00503','Lucanas','PR00048'),('DI00504','Ocaña','PR00048'),('DI00505','Otoca','PR00048'),('DI00506','Saisa','PR00048'),('DI00507','San Cristobal','PR00048'),('DI00508','San Juan','PR00048'),('DI00509','San Pedro','PR00048'),('DI00510','San Pedro de Palco','PR00048'),('DI00511','Sancos','PR00048'),('DI00512','Santa Ana de Huaycahuacho','PR00048'),('DI00513','Santa Lucia','PR00048'),('DI00514','Coracora','PR00049'),('DI00515','Chumpi','PR00049'),('DI00516','Coronel Castañeda','PR00049'),('DI00517','Pacapausa','PR00049'),('DI00518','Pullo','PR00049'),('DI00519','Puyusca','PR00049'),('DI00520','San Francisco de Ravacayco','PR00049'),('DI00521','Upahuacho','PR00049'),('DI00522','Pausa','PR00050'),('DI00523','Colta','PR00050'),('DI00524','Corculla','PR00050'),('DI00525','Lampa','PR00050'),('DI00526','Marcabamba','PR00050'),('DI00527','Oyolo','PR00050'),('DI00528','Pararca','PR00050'),('DI00529','San Javier de Alpabamba','PR00050'),('DI00530','San Jose de Ushua','PR00050'),('DI00531','Sara Sara','PR00050'),('DI00532','Querobamba','PR00051'),('DI00533','Belen','PR00051'),('DI00534','Chalcos','PR00051'),('DI00535','Chilcayoc','PR00051'),('DI00536','Huacaña','PR00051'),('DI00537','Morcolla','PR00051'),('DI00538','Paico','PR00051'),('DI00539','San Pedro de Larcay','PR00051'),('DI00540','San Salvador de Quije','PR00051'),('DI00541','Santiago de Paucaray','PR00051'),('DI00542','Soras','PR00051'),('DI00543','Huancapi','PR00052'),('DI00544','Alcamenca','PR00052'),('DI00545','Apongo','PR00052'),('DI00546','Asquipata','PR00052'),('DI00547','Canaria','PR00052'),('DI00548','Cayara','PR00052'),('DI00549','Colca','PR00052'),('DI00550','Huamanquiquia','PR00052'),('DI00551','Huancaraylla','PR00052'),('DI00552','Huaya','PR00052'),('DI00553','Sarhua','PR00052'),('DI00554','Vilcanchos','PR00052'),('DI00555','Vilcas Huaman','PR00053'),('DI00556','Accomarca','PR00053'),('DI00557','Carhuanca','PR00053'),('DI00558','Concepcion','PR00053'),('DI00559','Huambalpa','PR00053'),('DI00560','Independencia','PR00053'),('DI00561','Saurama','PR00053'),('DI00562','Vischongo','PR00053'),('DI00563','Cajamarca','PR00054'),('DI00564','Asuncion','PR00054'),('DI00565','Chetilla','PR00054'),('DI00566','Cospan','PR00054'),('DI00567','Encañada','PR00054'),('DI00568','Jesus','PR00054'),('DI00569','Llacanora','PR00054'),('DI00570','Los Baños del Inca','PR00054'),('DI00571','Magdalena','PR00054'),('DI00572','Matara','PR00054'),('DI00573','Namora','PR00054'),('DI00574','San Juan','PR00054'),('DI00575','Cajabamba','PR00055'),('DI00576','Cachachi','PR00055'),('DI00577','Condebamba','PR00055'),('DI00578','Sitacocha','PR00055'),('DI00579','Celendin','PR00056'),('DI00580','Chumuch','PR00056'),('DI00581','Cortegana','PR00056'),('DI00582','Huasmin','PR00056'),('DI00583','Jorge Chavez','PR00056'),('DI00584','Jose Galvez','PR00056'),('DI00585','Miguel Iglesias','PR00056'),('DI00586','Oxamarca','PR00056'),('DI00587','Sorochuco','PR00056'),('DI00588','Sucre','PR00056'),('DI00589','Utco','PR00056'),('DI00590','La Libertad de Pallan','PR00056'),('DI00591','Chota','PR00057'),('DI00592','Anguia','PR00057'),('DI00593','Chadin','PR00057'),('DI00594','Chiguirip','PR00057'),('DI00595','Chimban','PR00057'),('DI00596','Choropampa','PR00057'),('DI00597','Cochabamba','PR00057'),('DI00598','Conchan','PR00057'),('DI00599','Huambos','PR00057'),('DI00600','Lajas','PR00057'),('DI00601','Llama','PR00057'),('DI00602','Miracosta','PR00057'),('DI00603','Paccha','PR00057'),('DI00604','Pion','PR00057'),('DI00605','Querocoto','PR00057'),('DI00606','San Juan de Licupis','PR00057'),('DI00607','Tacabamba','PR00057'),('DI00608','Tocmoche','PR00057'),('DI00609','Chalamarca','PR00057'),('DI00610','Contumaza','PR00058'),('DI00611','Chilete','PR00058'),('DI00612','Cupisnique','PR00058'),('DI00613','Guzmango','PR00058'),('DI00614','San Benito','PR00058'),('DI00615','Santa Cruz de Toled','PR00058'),('DI00616','Tantarica','PR00058'),('DI00617','Yonan','PR00058'),('DI00618','Cutervo','PR00059'),('DI00619','Callayuc','PR00059'),('DI00620','Choros','PR00059'),('DI00621','Cujillo','PR00059'),('DI00622','La Ramada','PR00059'),('DI00623','Pimpingos','PR00059'),('DI00624','Querocotillo','PR00059'),('DI00625','San Andres de Cutervo','PR00059'),('DI00626','San Juan de Cutervo','PR00059'),('DI00627','San Luis de Lucma','PR00059'),('DI00628','Santa Cruz','PR00059'),('DI00629','Santo Domingo de La Capilla','PR00059'),('DI00630','Santo Tomas','PR00059'),('DI00631','Socota','PR00059'),('DI00632','Toribio Casanova','PR00059'),('DI00633','Bambamarca','PR00060'),('DI00634','Chugur','PR00060'),('DI00635','Hualgayoc','PR00060'),('DI00636','Jaen','PR00061'),('DI00637','Bellavista','PR00061'),('DI00638','Chontali','PR00061'),('DI00639','Colasay','PR00061'),('DI00640','Huabal','PR00061'),('DI00641','Las Pirias','PR00061'),('DI00642','Pomahuaca','PR00061'),('DI00643','Pucara','PR00061'),('DI00644','Sallique','PR00061'),('DI00645','San Felipe','PR00061'),('DI00646','San Jose del Alto','PR00061'),('DI00647','Santa Rosa','PR00061'),('DI00648','San Ignacio','PR00062'),('DI00649','Chirinos','PR00062'),('DI00650','Huarango','PR00062'),('DI00651','La Coipa','PR00062'),('DI00652','Namballe','PR00062'),('DI00653','San Jose de Lourdes','PR00062'),('DI00654','Tabaconas','PR00062'),('DI00655','Pedro Galvez','PR00063'),('DI00656','Chancay','PR00063'),('DI00657','Eduardo Villanueva','PR00063'),('DI00658','Gregorio Pita','PR00063'),('DI00659','Ichocan','PR00063'),('DI00660','Jose Manuel Quiroz','PR00063'),('DI00661','Jose Sabogal','PR00063'),('DI00662','San Miguel','PR00064'),('DI00663','Bolivar','PR00064'),('DI00664','Calquis','PR00064'),('DI00665','Catilluc','PR00064'),('DI00666','El Prado','PR00064'),('DI00667','La Florida','PR00064'),('DI00668','Llapa','PR00064'),('DI00669','Nanchoc','PR00064'),('DI00670','Niepos','PR00064'),('DI00671','San Gregorio','PR00064'),('DI00672','San Silvestre de Cochan','PR00064'),('DI00673','Tongod','PR00064'),('DI00674','Union Agua Blanca','PR00064'),('DI00675','San Pablo','PR00065'),('DI00676','San Bernardino','PR00065'),('DI00677','San Luis','PR00065'),('DI00678','Tumbaden','PR00065'),('DI00679','Santa Cruz','PR00066'),('DI00680','Andabamba','PR00066'),('DI00681','Catache','PR00066'),('DI00682','Chancaybaños','PR00066'),('DI00683','La Esperanza','PR00066'),('DI00684','Ninabamba','PR00066'),('DI00685','Pulan','PR00066'),('DI00686','Saucepampa','PR00066'),('DI00687','Sexi','PR00066'),('DI00688','Uticyacu','PR00066'),('DI00689','Yauyucan','PR00066'),('DI00690','Callao','PR00067'),('DI00691','Bellavista','PR00067'),('DI00692','Carmen de La Legua','PR00067'),('DI00693','La Perla','PR00067'),('DI00694','La Punta','PR00067'),('DI00695','Ventanilla','PR00067'),('DI00696','Mi Peru','PR00067'),('DI00697','Cusco','PR00068'),('DI00698','Ccorca','PR00068'),('DI00699','Poroy','PR00068'),('DI00700','San Jeronimo','PR00068'),('DI00701','San Sebastian','PR00068'),('DI00702','Santiago','PR00068'),('DI00703','Saylla','PR00068'),('DI00704','Wanchaq','PR00068'),('DI00705','Acomayo','PR00069'),('DI00706','Acopia','PR00069'),('DI00707','Acos','PR00069'),('DI00708','Mosoc Llacta','PR00069'),('DI00709','Pomacanchi','PR00069'),('DI00710','Rondocan','PR00069'),('DI00711','Sangarara','PR00069'),('DI00712','Anta','PR00070'),('DI00713','Ancahuasi','PR00070'),('DI00714','Cachimayo','PR00070'),('DI00715','Chinchaypujio','PR00070'),('DI00716','Huarocondo','PR00070'),('DI00717','Limatambo','PR00070'),('DI00718','Mollepata','PR00070'),('DI00719','Pucyura','PR00070'),('DI00720','Zurite','PR00070'),('DI00721','Calca','PR00071'),('DI00722','Coya','PR00071'),('DI00723','Lamay','PR00071'),('DI00724','Lares','PR00071'),('DI00725','Pisac','PR00071'),('DI00726','San Salvador','PR00071'),('DI00727','Taray','PR00071'),('DI00728','Yanatile','PR00071'),('DI00729','Yanaoca','PR00072'),('DI00730','Checca','PR00072'),('DI00731','Kunturkanki','PR00072'),('DI00732','Langui','PR00072'),('DI00733','Layo','PR00072'),('DI00734','Pampamarca','PR00072'),('DI00735','Quehue','PR00072'),('DI00736','Tupac Amaru','PR00072'),('DI00737','Sicuani','PR00073'),('DI00738','Checacupe','PR00073'),('DI00739','Combapata','PR00073'),('DI00740','Marangani','PR00073'),('DI00741','Pitumarca','PR00073'),('DI00742','San Pablo','PR00073'),('DI00743','San Pedro','PR00073'),('DI00744','Tinta','PR00073'),('DI00745','Santo Tomas','PR00074'),('DI00746','Capacmarca','PR00074'),('DI00747','Chamaca','PR00074'),('DI00748','Colquemarca','PR00074'),('DI00749','Livitaca','PR00074'),('DI00750','Llusco','PR00074'),('DI00751','Quiñota','PR00074'),('DI00752','Velille','PR00074'),('DI00753','Espinar','PR00075'),('DI00754','Condoroma','PR00075'),('DI00755','Coporaque','PR00075'),('DI00756','Ocoruro','PR00075'),('DI00757','Pallpata','PR00075'),('DI00758','Pichigua','PR00075'),('DI00759','Suyckutambo','PR00075'),('DI00760','Alto Pichigua','PR00075'),('DI00761','Santa Ana','PR00076'),('DI00762','Echarate','PR00076'),('DI00763','Huayopata','PR00076'),('DI00764','Maranura','PR00076'),('DI00765','Ocobamba','PR00076'),('DI00766','Quellouno','PR00076'),('DI00767','Kimbiri','PR00076'),('DI00768','Santa Teresa','PR00076'),('DI00769','Vilcabamba','PR00076'),('DI00770','Pichari','PR00076'),('DI00771','Inkawasi','PR00076'),('DI00772','Villa Virgen','PR00076'),('DI00773','Villa Kintiarina','PR00076'),('DI00774','Megantoni','PR00076'),('DI00775','Paruro','PR00077'),('DI00776','Accha','PR00077'),('DI00777','Ccapi','PR00077'),('DI00778','Colcha','PR00077'),('DI00779','Huanoquite','PR00077'),('DI00780','Omacha','PR00077'),('DI00781','Paccaritambo','PR00077'),('DI00782','Pillpinto','PR00077'),('DI00783','Yaurisque','PR00077'),('DI00784','Paucartambo','PR00078'),('DI00785','Caicay','PR00078'),('DI00786','Challabamba','PR00078'),('DI00787','Colquepata','PR00078'),('DI00788','Huancarani','PR00078'),('DI00789','Kosñipata','PR00078'),('DI00790','Urcos','PR00079'),('DI00791','Andahuaylillas','PR00079'),('DI00792','Camanti','PR00079'),('DI00793','Ccarhuayo','PR00079'),('DI00794','Ccatca','PR00079'),('DI00795','Cusipata','PR00079'),('DI00796','Huaro','PR00079'),('DI00797','Lucre','PR00079'),('DI00798','Marcapata','PR00079'),('DI00799','Ocongate','PR00079'),('DI00800','Oropesa','PR00079'),('DI00801','Quiquijana','PR00079'),('DI00802','Urubamba','PR00080'),('DI00803','Chinchero','PR00080'),('DI00804','Huayllabamba','PR00080'),('DI00805','Machupicchu','PR00080'),('DI00806','Maras','PR00080'),('DI00807','Ollantaytambo','PR00080'),('DI00808','Yucay','PR00080'),('DI00809','Huancavelica','PR00081'),('DI00810','Acobambilla','PR00081'),('DI00811','Acoria','PR00081'),('DI00812','Conayca','PR00081'),('DI00813','Cuenca','PR00081'),('DI00814','Huachocolpa','PR00081'),('DI00815','Huayllahuara','PR00081'),('DI00816','Izcuchaca','PR00081'),('DI00817','Laria','PR00081'),('DI00818','Manta','PR00081'),('DI00819','Mariscal Caceres','PR00081'),('DI00820','Moya','PR00081'),('DI00821','Nuevo Occoro','PR00081'),('DI00822','Palca','PR00081'),('DI00823','Pilchaca','PR00081'),('DI00824','Vilca','PR00081'),('DI00825','Yauli','PR00081'),('DI00826','Ascension','PR00081'),('DI00827','Huando','PR00081'),('DI00828','Acobamba','PR00082'),('DI00829','Andabamba','PR00082'),('DI00830','Anta','PR00082'),('DI00831','Caja','PR00082'),('DI00832','Marcas','PR00082'),('DI00833','Paucara','PR00082'),('DI00834','Pomacocha','PR00082'),('DI00835','Rosario','PR00082'),('DI00836','Lircay','PR00083'),('DI00837','Anchonga','PR00083'),('DI00838','Callanmarca','PR00083'),('DI00839','Ccochaccasa','PR00083'),('DI00840','Chincho','PR00083'),('DI00841','Congalla','PR00083'),('DI00842','Huanca-Huanca','PR00083'),('DI00843','Huayllay Grande','PR00083'),('DI00844','Julcamarca','PR00083'),('DI00845','San Antonio de Antaparco','PR00083'),('DI00846','Santo Tomas de Pata','PR00083'),('DI00847','Secclla','PR00083'),('DI00848','Castrovirreyna','PR00084'),('DI00849','Arma','PR00084'),('DI00850','Aurahua','PR00084'),('DI00851','Capillas','PR00084'),('DI00852','Chupamarca','PR00084'),('DI00853','Cocas','PR00084'),('DI00854','Huachos','PR00084'),('DI00855','Huamatambo','PR00084'),('DI00856','Mollepampa','PR00084'),('DI00857','San Juan','PR00084'),('DI00858','Santa Ana','PR00084'),('DI00859','Tantara','PR00084'),('DI00860','Ticrapo','PR00084'),('DI00861','Churcampa','PR00085'),('DI00862','Anco','PR00085'),('DI00863','Chinchihuasi','PR00085'),('DI00864','El Carmen','PR00085'),('DI00865','La Merced','PR00085'),('DI00866','Locroja','PR00085'),('DI00867','Paucarbamba','PR00085'),('DI00868','San Miguel de Mayocc','PR00085'),('DI00869','San Pedro de Coris','PR00085'),('DI00870','Pachamarca','PR00085'),('DI00871','Cosme','PR00085'),('DI00872','Huaytara','PR00086'),('DI00873','Ayavi','PR00086'),('DI00874','Cordova','PR00086'),('DI00875','Huayacundo Arma','PR00086'),('DI00876','Laramarca','PR00086'),('DI00877','Ocoyo','PR00086'),('DI00878','Pilpichaca','PR00086'),('DI00879','Querco','PR00086'),('DI00880','Quito-Arma','PR00086'),('DI00881','San Antonio de Cusicancha','PR00086'),('DI00882','San Francisco de Sangayaico','PR00086'),('DI00883','San Isidro','PR00086'),('DI00884','Santiago de Chocorvos','PR00086'),('DI00885','Santiago de Quirahuara','PR00086'),('DI00886','Santo Domingo de Capillas','PR00086'),('DI00887','Tambo','PR00086'),('DI00888','Pampas','PR00087'),('DI00889','Acostambo','PR00087'),('DI00890','Acraquia','PR00087'),('DI00891','Ahuaycha','PR00087'),('DI00892','Colcabamba','PR00087'),('DI00893','Daniel Hernandez','PR00087'),('DI00894','Huachocolpa','PR00087'),('DI00895','Huaribamba','PR00087'),('DI00896','Ñahuimpuquio','PR00087'),('DI00897','Pazos','PR00087'),('DI00898','Quishuar','PR00087'),('DI00899','Salcabamba','PR00087'),('DI00900','Salcahuasi','PR00087'),('DI00901','San Marcos de Rocchac','PR00087'),('DI00902','Surcubamba','PR00087'),('DI00903','Tintay Puncu','PR00087'),('DI00904','Quichuas','PR00087'),('DI00905','Andaymarca','PR00087'),('DI00906','Roble','PR00087'),('DI00907','Pichos','PR00087'),('DI00908','Santiago de Túcuma','PR00087'),('DI00909','Huanuco','PR00088'),('DI00910','Amarilis','PR00088'),('DI00911','Chinchao','PR00088'),('DI00912','Churubamba','PR00088'),('DI00913','Margos','PR00088'),('DI00914','Quisqui','PR00088'),('DI00915','San Francisco de Cayran','PR00088'),('DI00916','San Pedro de Chaulan','PR00088'),('DI00917','Santa Maria del Valle','PR00088'),('DI00918','Yarumayo','PR00088'),('DI00919','Pillco Marca','PR00088'),('DI00920','Yacus','PR00088'),('DI00921','San Pablo de Pillao','PR00088'),('DI00922','Ambo','PR00089'),('DI00923','Cayna','PR00089'),('DI00924','Colpas','PR00089'),('DI00925','Conchamarca','PR00089'),('DI00926','Huacar','PR00089'),('DI00927','San Francisco','PR00089'),('DI00928','San Rafael','PR00089'),('DI00929','Tomay Kichwa','PR00089'),('DI00930','La Union','PR00090'),('DI00931','Chuquis','PR00090'),('DI00932','Marias','PR00090'),('DI00933','Pachas','PR00090'),('DI00934','Quivilla','PR00090'),('DI00935','Ripan','PR00090'),('DI00936','Shunqui','PR00090'),('DI00937','Sillapata','PR00090'),('DI00938','Yanas','PR00090'),('DI00939','Huacaybamba','PR00091'),('DI00940','Canchabamba','PR00091'),('DI00941','Cochabamba','PR00091'),('DI00942','Pinra','PR00091'),('DI00943','Llata','PR00092'),('DI00944','Arancay','PR00092'),('DI00945','Chavin de Pariarca','PR00092'),('DI00946','Jacas Grande','PR00092'),('DI00947','Jircan','PR00092'),('DI00948','Miraflores','PR00092'),('DI00949','Monzon','PR00092'),('DI00950','Punchao','PR00092'),('DI00951','Puños','PR00092'),('DI00952','Singa','PR00092'),('DI00953','Tantamayo','PR00092'),('DI00954','Rupa-Rupa','PR00093'),('DI00955','Daniel Alomias Robles','PR00093'),('DI00956','Hermilio Valdizan','PR00093'),('DI00957','Jose Crespo y Castillo','PR00093'),('DI00958','Luyando','PR00093'),('DI00959','Mariano Damaso Beraun','PR00093'),('DI00960','Pucayacu','PR00093'),('DI00961','Castillo Grande','PR00093'),('DI00962','Pueblo Nuevo','PR00093'),('DI00963','Santo Domingo de Anda','PR00093'),('DI00964','Huacrachuco','PR00094'),('DI00965','Cholon','PR00094'),('DI00966','San Buenaventura','PR00094'),('DI00967','La Morada','PR00094'),('DI00968','Santa Rosa de Alto Yanajanca','PR00094'),('DI00969','Panao','PR00095'),('DI00970','Chaglla','PR00095'),('DI00971','Molino','PR00095'),('DI00972','Umari','PR00095'),('DI00973','Puerto Inca','PR00096'),('DI00974','Codo del Pozuzo','PR00096'),('DI00975','Honoria','PR00096'),('DI00976','Tournavista','PR00096'),('DI00977','Yuyapichis','PR00096'),('DI00978','Jesus','PR00097'),('DI00979','Baños','PR00097'),('DI00980','Jivia','PR00097'),('DI00981','Queropalca','PR00097'),('DI00982','Rondos','PR00097'),('DI00983','San Francisco de Asis','PR00097'),('DI00984','San Miguel de Cauri','PR00097'),('DI00985','Chavinillo','PR00098'),('DI00986','Cahuac','PR00098'),('DI00987','Chacabamba','PR00098'),('DI00988','Aparicio Pomares','PR00098'),('DI00989','Jacas Chico','PR00098'),('DI00990','Obas','PR00098'),('DI00991','Pampamarca','PR00098'),('DI00992','Choras','PR00098'),('DI00993','Ica','PR00099'),('DI00994','La Tinguiña','PR00099'),('DI00995','Los Aquijes','PR00099'),('DI00996','Ocucaje','PR00099'),('DI00997','Pachacutec','PR00099'),('DI00998','Parcona','PR00099'),('DI00999','Pueblo Nuevo','PR00099'),('DI01000','Salas','PR00099'),('DI01001','San Jose de los Molinos','PR00099'),('DI01002','San Juan Bautista','PR00099'),('DI01003','Santiago','PR00099'),('DI01004','Subtanjalla','PR00099'),('DI01005','Tate','PR00099'),('DI01006','Yauca del Rosario','PR00099'),('DI01007','Chincha Alta','PR00100'),('DI01008','Alto Laran','PR00100'),('DI01009','Chavin','PR00100'),('DI01010','Chincha Baja','PR00100'),('DI01011','El Carmen','PR00100'),('DI01012','Grocio Prado','PR00100'),('DI01013','Pueblo Nuevo','PR00100'),('DI01014','San Juan de Yanac','PR00100'),('DI01015','San Pedro de Huacarpana','PR00100'),('DI01016','Sunampe','PR00100'),('DI01017','Tambo de Mora','PR00100'),('DI01018','Nazca','PR00101'),('DI01019','Changuillo','PR00101'),('DI01020','El Ingenio','PR00101'),('DI01021','Marcona','PR00101'),('DI01022','Vista Alegre','PR00101'),('DI01023','Palpa','PR00102'),('DI01024','Llipata','PR00102'),('DI01025','Rio Grande','PR00102'),('DI01026','Santa Cruz','PR00102'),('DI01027','Tibillo','PR00102'),('DI01028','Pisco','PR00103'),('DI01029','Huancano','PR00103'),('DI01030','Humay','PR00103'),('DI01031','Independencia','PR00103'),('DI01032','Paracas','PR00103'),('DI01033','San Andres','PR00103'),('DI01034','San Clemente','PR00103'),('DI01035','Tupac Amaru Inca','PR00103'),('DI01036','Huancayo','PR00104'),('DI01037','Carhuacallanga','PR00104'),('DI01038','Chacapampa','PR00104'),('DI01039','Chicche','PR00104'),('DI01040','Chilca','PR00104'),('DI01041','Chongos Alto','PR00104'),('DI01042','Chupuro','PR00104'),('DI01043','Colca','PR00104'),('DI01044','Cullhuas','PR00104'),('DI01045','El Tambo','PR00104'),('DI01046','Huacrapuquio','PR00104'),('DI01047','Hualhuas','PR00104'),('DI01048','Huancan','PR00104'),('DI01049','Huasicancha','PR00104'),('DI01050','Huayucachi','PR00104'),('DI01051','Ingenio','PR00104'),('DI01052','Pariahuanca','PR00104'),('DI01053','Pilcomayo','PR00104'),('DI01054','Pucara','PR00104'),('DI01055','Quichuay','PR00104'),('DI01056','Quilcas','PR00104'),('DI01057','San Agustin','PR00104'),('DI01058','San Jeronimo de Tunan','PR00104'),('DI01059','Saño','PR00104'),('DI01060','Sapallanga','PR00104'),('DI01061','Sicaya','PR00104'),('DI01062','Santo Domingo de Acobamba','PR00104'),('DI01063','Viques','PR00104'),('DI01064','Concepcion','PR00105'),('DI01065','Aco','PR00105'),('DI01066','Andamarca','PR00105'),('DI01067','Chambara','PR00105'),('DI01068','Cochas','PR00105'),('DI01069','Comas','PR00105'),('DI01070','Heroinas Toledo','PR00105'),('DI01071','Manzanares','PR00105'),('DI01072','Mariscal Castilla','PR00105'),('DI01073','Matahuasi','PR00105'),('DI01074','Mito','PR00105'),('DI01075','Nueve de Julio','PR00105'),('DI01076','Orcotuna','PR00105'),('DI01077','San Jose de Quero','PR00105'),('DI01078','Santa Rosa de Ocopa','PR00105'),('DI01079','Chanchamayo','PR00106'),('DI01080','Perene','PR00106'),('DI01081','Pichanaqui','PR00106'),('DI01082','San Luis de Shuaro','PR00106'),('DI01083','San Ramon','PR00106'),('DI01084','Vitoc','PR00106'),('DI01085','Jauja','PR00107'),('DI01086','Acolla','PR00107'),('DI01087','Apata','PR00107'),('DI01088','Ataura','PR00107'),('DI01089','Canchayllo','PR00107'),('DI01090','Curicaca','PR00107'),('DI01091','El Mantaro','PR00107'),('DI01092','Huamali','PR00107'),('DI01093','Huaripampa','PR00107'),('DI01094','Huertas','PR00107'),('DI01095','Janjaillo','PR00107'),('DI01096','Julcan','PR00107'),('DI01097','Leonor Ordoñez','PR00107'),('DI01098','Llocllapampa','PR00107'),('DI01099','Marco','PR00107'),('DI01100','Masma','PR00107'),('DI01101','Masma Chicche','PR00107'),('DI01102','Molinos','PR00107'),('DI01103','Monobamba','PR00107'),('DI01104','Muqui','PR00107'),('DI01105','Muquiyauyo','PR00107'),('DI01106','Paca','PR00107'),('DI01107','Paccha','PR00107'),('DI01108','Pancan','PR00107'),('DI01109','Parco','PR00107'),('DI01110','Pomacancha','PR00107'),('DI01111','Ricran','PR00107'),('DI01112','San Lorenzo','PR00107'),('DI01113','San Pedro de Chunan','PR00107'),('DI01114','Sausa','PR00107'),('DI01115','Sincos','PR00107'),('DI01116','Tunan Marca','PR00107'),('DI01117','Yauli','PR00107'),('DI01118','Yauyos','PR00107'),('DI01119','Junin','PR00108'),('DI01120','Carhuamayo','PR00108'),('DI01121','Ondores','PR00108'),('DI01122','Ulcumayo','PR00108'),('DI01123','Satipo','PR00109'),('DI01124','Coviriali','PR00109'),('DI01125','Llaylla','PR00109'),('DI01126','Mazamari','PR00109'),('DI01127','Pampa Hermosa','PR00109'),('DI01128','Pangoa','PR00109'),('DI01129','Rio Negro','PR00109'),('DI01130','Rio Tambo','PR00109'),('DI01131','Vizcatán del Ene','PR00109'),('DI01132','Tarma','PR00110'),('DI01133','Acobamba','PR00110'),('DI01134','Huaricolca','PR00110'),('DI01135','Huasahuasi','PR00110'),('DI01136','La Union','PR00110'),('DI01137','Palca','PR00110'),('DI01138','Palcamayo','PR00110'),('DI01139','San Pedro de Cajas','PR00110'),('DI01140','Tapo','PR00110'),('DI01141','La Oroya','PR00111'),('DI01142','Chacapalpa','PR00111'),('DI01143','Huay-Huay','PR00111'),('DI01144','Marcapomacocha','PR00111'),('DI01145','Morococha','PR00111'),('DI01146','Paccha','PR00111'),('DI01147','Santa Barbara de Carhuacayan','PR00111'),('DI01148','Santa Rosa de Sacco','PR00111'),('DI01149','Suitucancha','PR00111'),('DI01150','Yauli','PR00111'),('DI01151','Chupaca','PR00112'),('DI01152','Ahuac','PR00112'),('DI01153','Chongos Bajo','PR00112'),('DI01154','Huachac','PR00112'),('DI01155','Huamancaca Chico','PR00112'),('DI01156','San Juan de Yscos','PR00112'),('DI01157','San Juan de Jarpa','PR00112'),('DI01158','Tres de Diciembre','PR00112'),('DI01159','Yanacancha','PR00112'),('DI01160','Trujillo','PR00113'),('DI01161','El Porvenir','PR00113'),('DI01162','Florencia de Mora','PR00113'),('DI01163','Huanchaco','PR00113'),('DI01164','La Esperanza','PR00113'),('DI01165','Laredo','PR00113'),('DI01166','Moche','PR00113'),('DI01167','Poroto','PR00113'),('DI01168','Salaverry','PR00113'),('DI01169','Simbal','PR00113'),('DI01170','Victor Larco Herrera','PR00113'),('DI01171','Ascope','PR00114'),('DI01172','Chicama','PR00114'),('DI01173','Chocope','PR00114'),('DI01174','Magdalena de Cao','PR00114'),('DI01175','Paijan','PR00114'),('DI01176','Razuri','PR00114'),('DI01177','Santiago de Cao','PR00114'),('DI01178','Casa Grande','PR00114'),('DI01179','Bolivar','PR00115'),('DI01180','Bambamarca','PR00115'),('DI01181','Condormarca','PR00115'),('DI01182','Longotea','PR00115'),('DI01183','Uchumarca','PR00115'),('DI01184','Ucuncha','PR00115'),('DI01185','Chepen','PR00116'),('DI01186','Pacanga','PR00116'),('DI01187','Pueblo Nuevo','PR00116'),('DI01188','Julcan','PR00117'),('DI01189','Calamarca','PR00117'),('DI01190','Carabamba','PR00117'),('DI01191','Huaso','PR00117'),('DI01192','Otuzco','PR00118'),('DI01193','Agallpampa','PR00118'),('DI01194','Charat','PR00118'),('DI01195','Huaranchal','PR00118'),('DI01196','La Cuesta','PR00118'),('DI01197','Mache','PR00118'),('DI01198','Paranday','PR00118'),('DI01199','Salpo','PR00118'),('DI01200','Sinsicap','PR00118'),('DI01201','Usquil','PR00118'),('DI01202','San Pedro de Lloc','PR00119'),('DI01203','Guadalupe','PR00119'),('DI01204','Jequetepeque','PR00119'),('DI01205','Pacasmayo','PR00119'),('DI01206','San Jose','PR00119'),('DI01207','Tayabamba','PR00120'),('DI01208','Buldibuyo','PR00120'),('DI01209','Chillia','PR00120'),('DI01210','Huancaspata','PR00120'),('DI01211','Huaylillas','PR00120'),('DI01212','Huayo','PR00120'),('DI01213','Ongon','PR00120'),('DI01214','Parcoy','PR00120'),('DI01215','Pataz','PR00120'),('DI01216','Pias','PR00120'),('DI01217','Santiago de Challas','PR00120'),('DI01218','Taurija','PR00120'),('DI01219','Urpay','PR00120'),('DI01220','Huamachuco','PR00121'),('DI01221','Chugay','PR00121'),('DI01222','Cochorco','PR00121'),('DI01223','Curgos','PR00121'),('DI01224','Marcabal','PR00121'),('DI01225','Sanagoran','PR00121'),('DI01226','Sarin','PR00121'),('DI01227','Sartimbamba','PR00121'),('DI01228','Santiago de Chuco','PR00122'),('DI01229','Angasmarca','PR00122'),('DI01230','Cachicadan','PR00122'),('DI01231','Mollebamba','PR00122'),('DI01232','Mollepata','PR00122'),('DI01233','Quiruvilca','PR00122'),('DI01234','Santa Cruz de Chuca','PR00122'),('DI01235','Sitabamba','PR00122'),('DI01236','Cascas','PR00123'),('DI01237','Lucma','PR00123'),('DI01238','Compin','PR00123'),('DI01239','Sayapullo','PR00123'),('DI01240','Viru','PR00124'),('DI01241','Chao','PR00124'),('DI01242','Guadalupito','PR00124'),('DI01243','Chiclayo','PR00125'),('DI01244','Chongoyape','PR00125'),('DI01245','Eten','PR00125'),('DI01246','Eten Puerto','PR00125'),('DI01247','Jose Leonardo Ortiz','PR00125'),('DI01248','La Victoria','PR00125'),('DI01249','Lagunas','PR00125'),('DI01250','Monsefu','PR00125'),('DI01251','Nueva Arica','PR00125'),('DI01252','Oyotun','PR00125'),('DI01253','Picsi','PR00125'),('DI01254','Pimentel','PR00125'),('DI01255','Reque','PR00125'),('DI01256','Santa Rosa','PR00125'),('DI01257','Saña','PR00125'),('DI01258','Cayalti','PR00125'),('DI01259','Patapo','PR00125'),('DI01260','Pomalca','PR00125'),('DI01261','Pucala','PR00125'),('DI01262','Tuman','PR00125'),('DI01263','Ferreñafe','PR00126'),('DI01264','Cañaris','PR00126'),('DI01265','Incahuasi','PR00126'),('DI01266','Manuel Antonio Mesones Muro','PR00126'),('DI01267','Pitipo','PR00126'),('DI01268','Pueblo Nuevo','PR00126'),('DI01269','Lambayeque','PR00127'),('DI01270','Chochope','PR00127'),('DI01271','Illimo','PR00127'),('DI01272','Jayanca','PR00127'),('DI01273','Mochumi','PR00127'),('DI01274','Morrope','PR00127'),('DI01275','Motupe','PR00127'),('DI01276','Olmos','PR00127'),('DI01277','Pacora','PR00127'),('DI01278','Salas','PR00127'),('DI01279','San Jose','PR00127'),('DI01280','Tucume','PR00127'),('DI01281','Lima','PR00128'),('DI01282','Ancon','PR00128'),('DI01283','Ate','PR00128'),('DI01284','Barranco','PR00128'),('DI01285','Breña','PR00128'),('DI01286','Carabayllo','PR00128'),('DI01287','Chaclacayo','PR00128'),('DI01288','Chorrillos','PR00128'),('DI01289','Cieneguilla','PR00128'),('DI01290','Comas','PR00128'),('DI01291','El Agustino','PR00128'),('DI01292','Independencia','PR00128'),('DI01293','Jesus Maria','PR00128'),('DI01294','La Molina','PR00128'),('DI01295','La Victoria','PR00128'),('DI01296','Lince','PR00128'),('DI01297','Los Olivos','PR00128'),('DI01298','Lurigancho','PR00128'),('DI01299','Lurin','PR00128'),('DI01300','Magdalena del Mar','PR00128'),('DI01301','Pueblo Libre','PR00128'),('DI01302','Miraflores','PR00128'),('DI01303','Pachacamac','PR00128'),('DI01304','Pucusana','PR00128'),('DI01305','Puente Piedra','PR00128'),('DI01306','Punta Hermosa','PR00128'),('DI01307','Punta Negra','PR00128'),('DI01308','Rimac','PR00128'),('DI01309','San Bartolo','PR00128'),('DI01310','San Borja','PR00128'),('DI01311','San Isidro','PR00128'),('DI01312','San Juan de Lurigancho','PR00128'),('DI01313','San Juan de Miraflores','PR00128'),('DI01314','San Luis','PR00128'),('DI01315','San Martin de Porres','PR00128'),('DI01316','San Miguel','PR00128'),('DI01317','Santa Anita','PR00128'),('DI01318','Santa Maria del Mar','PR00128'),('DI01319','Santa Rosa','PR00128'),('DI01320','Santiago de Surco','PR00128'),('DI01321','Surquillo','PR00128'),('DI01322','Villa El Salvador','PR00128'),('DI01323','Villa Maria del Triunfo','PR00128'),('DI01324','Barranca','PR00129'),('DI01325','Paramonga','PR00129'),('DI01326','Pativilca','PR00129'),('DI01327','Supe','PR00129'),('DI01328','Supe Puerto','PR00129'),('DI01329','Cajatambo','PR00130'),('DI01330','Copa','PR00130'),('DI01331','Gorgor','PR00130'),('DI01332','Huancapon','PR00130'),('DI01333','Manas','PR00130'),('DI01334','Canta','PR00131'),('DI01335','Arahuay','PR00131'),('DI01336','Huamantanga','PR00131'),('DI01337','Huaros','PR00131'),('DI01338','Lachaqui','PR00131'),('DI01339','San Buenaventura','PR00131'),('DI01340','Santa Rosa de Quives','PR00131'),('DI01341','San Vicente de Cañete','PR00132'),('DI01342','Asia','PR00132'),('DI01343','Calango','PR00132'),('DI01344','Cerro Azul','PR00132'),('DI01345','Chilca','PR00132'),('DI01346','Coayllo','PR00132'),('DI01347','Imperial','PR00132'),('DI01348','Lunahuana','PR00132'),('DI01349','Mala','PR00132'),('DI01350','Nuevo Imperial','PR00132'),('DI01351','Pacaran','PR00132'),('DI01352','Quilmana','PR00132'),('DI01353','San Antonio','PR00132'),('DI01354','San Luis','PR00132'),('DI01355','Santa Cruz de Flores','PR00132'),('DI01356','Zuñiga','PR00132'),('DI01357','Huaral','PR00133'),('DI01358','Atavillos Alto','PR00133'),('DI01359','Atavillos Bajo','PR00133'),('DI01360','Aucallama','PR00133'),('DI01361','Chancay','PR00133'),('DI01362','Ihuari','PR00133'),('DI01363','Lampian','PR00133'),('DI01364','Pacaraos','PR00133'),('DI01365','San Miguel de Acos','PR00133'),('DI01366','Santa Cruz de Andamarca','PR00133'),('DI01367','Sumbilca','PR00133'),('DI01368','Veintisiete de Noviembre','PR00133'),('DI01369','Matucana','PR00134'),('DI01370','Antioquia','PR00134'),('DI01371','Callahuanca','PR00134'),('DI01372','Carampoma','PR00134'),('DI01373','Chicla','PR00134'),('DI01374','Cuenca','PR00134'),('DI01375','Huachupampa','PR00134'),('DI01376','Huanza','PR00134'),('DI01377','Huarochiri','PR00134'),('DI01378','Lahuaytambo','PR00134'),('DI01379','Langa','PR00134'),('DI01380','Laraos','PR00134'),('DI01381','Mariatana','PR00134'),('DI01382','Ricardo Palma','PR00134'),('DI01383','San Andres de Tupicocha','PR00134'),('DI01384','San Antonio','PR00134'),('DI01385','San Bartolome','PR00134'),('DI01386','San Damian','PR00134'),('DI01387','San Juan de Iris','PR00134'),('DI01388','San Juan de Tantaranche','PR00134'),('DI01389','San Lorenzo de Quinti','PR00134'),('DI01390','San Mateo','PR00134'),('DI01391','San Mateo de Otao','PR00134'),('DI01392','San Pedro de Casta','PR00134'),('DI01393','San Pedro de Huancayre','PR00134'),('DI01394','Sangallaya','PR00134'),('DI01395','Santa Cruz de Cocachacra','PR00134'),('DI01396','Santa Eulalia','PR00134'),('DI01397','Santiago de Anchucaya','PR00134'),('DI01398','Santiago de Tuna','PR00134'),('DI01399','Santo Domingo de los Olleros','PR00134'),('DI01400','Surco','PR00134'),('DI01401','Huacho','PR00135'),('DI01402','Ambar','PR00135'),('DI01403','Caleta de Carquin','PR00135'),('DI01404','Checras','PR00135'),('DI01405','Hualmay','PR00135'),('DI01406','Huaura','PR00135'),('DI01407','Leoncio Prado','PR00135'),('DI01408','Paccho','PR00135'),('DI01409','Santa Leonor','PR00135'),('DI01410','Santa Maria','PR00135'),('DI01411','Sayan','PR00135'),('DI01412','Vegueta','PR00135'),('DI01413','Oyon','PR00136'),('DI01414','Andajes','PR00136'),('DI01415','Caujul','PR00136'),('DI01416','Cochamarca','PR00136'),('DI01417','Navan','PR00136'),('DI01418','Pachangara','PR00136'),('DI01419','Yauyos','PR00137'),('DI01420','Alis','PR00137'),('DI01421','Ayauca','PR00137'),('DI01422','Ayaviri','PR00137'),('DI01423','Azangaro','PR00137'),('DI01424','Cacra','PR00137'),('DI01425','Carania','PR00137'),('DI01426','Catahuasi','PR00137'),('DI01427','Chocos','PR00137'),('DI01428','Cochas','PR00137'),('DI01429','Colonia','PR00137'),('DI01430','Hongos','PR00137'),('DI01431','Huampara','PR00137'),('DI01432','Huancaya','PR00137'),('DI01433','Huangascar','PR00137'),('DI01434','Huantan','PR00137'),('DI01435','Huañec','PR00137'),('DI01436','Laraos','PR00137'),('DI01437','Lincha','PR00137'),('DI01438','Madean','PR00137'),('DI01439','Miraflores','PR00137'),('DI01440','Omas','PR00137'),('DI01441','Putinza','PR00137'),('DI01442','Quinches','PR00137'),('DI01443','Quinocay','PR00137'),('DI01444','San Joaquin','PR00137'),('DI01445','San Pedro de Pilas','PR00137'),('DI01446','Tanta','PR00137'),('DI01447','Tauripampa','PR00137'),('DI01448','Tomas','PR00137'),('DI01449','Tupe','PR00137'),('DI01450','Viñac','PR00137'),('DI01451','Vitis','PR00137'),('DI01452','Iquitos','PR00138'),('DI01453','Alto Nanay','PR00138'),('DI01454','Fernando Lores','PR00138'),('DI01455','Indiana','PR00138'),('DI01456','Las Amazonas','PR00138'),('DI01457','Mazan','PR00138'),('DI01458','Napo','PR00138'),('DI01459','Punchana','PR00138'),('DI01460','Torres Causana','PR00138'),('DI01461','Belen','PR00138'),('DI01462','San Juan Bautista','PR00138'),('DI01463','Yurimaguas','PR00139'),('DI01464','Balsapuerto','PR00139'),('DI01465','Jeberos','PR00139'),('DI01466','Lagunas','PR00139'),('DI01467','Santa Cruz','PR00139'),('DI01468','Teniente Cesar Lopez Rojas','PR00139'),('DI01469','Nauta','PR00140'),('DI01470','Parinari','PR00140'),('DI01471','Tigre','PR00140'),('DI01472','Trompeteros','PR00140'),('DI01473','Urarinas','PR00140'),('DI01474','Ramon Castilla','PR00141'),('DI01475','Pebas','PR00141'),('DI01476','Yavari','PR00141'),('DI01477','San Pablo','PR00141'),('DI01478','Requena','PR00142'),('DI01479','Alto Tapiche','PR00142'),('DI01480','Capelo','PR00142'),('DI01481','Emilio San Martin','PR00142'),('DI01482','Maquia','PR00142'),('DI01483','Puinahua','PR00142'),('DI01484','Saquena','PR00142'),('DI01485','Soplin','PR00142'),('DI01486','Tapiche','PR00142'),('DI01487','Jenaro Herrera','PR00142'),('DI01488','Yaquerana','PR00142'),('DI01489','Contamana','PR00143'),('DI01490','Inahuaya','PR00143'),('DI01491','Padre Marquez','PR00143'),('DI01492','Pampa Hermosa','PR00143'),('DI01493','Sarayacu','PR00143'),('DI01494','Vargas Guerra','PR00143'),('DI01495','Barranca','PR00144'),('DI01496','Cahuapanas','PR00144'),('DI01497','Manseriche','PR00144'),('DI01498','Morona','PR00144'),('DI01499','Pastaza','PR00144'),('DI01500','Andoas','PR00144'),('DI01501','Putumayo','PR00145'),('DI01502','Rosa Panduro','PR00145'),('DI01503','Teniente Manuel Clavero','PR00145'),('DI01504','Yaguas','PR00145'),('DI01505','Tambopata','PR00146'),('DI01506','Inambari','PR00146'),('DI01507','Las Piedras','PR00146'),('DI01508','Laberinto','PR00146'),('DI01509','Manu','PR00147'),('DI01510','Fitzcarrald','PR00147'),('DI01511','Madre de Dios','PR00147'),('DI01512','Huepetuhe','PR00147'),('DI01513','Iñapari','PR00148'),('DI01514','Iberia','PR00148'),('DI01515','Tahuamanu','PR00148'),('DI01516','Moquegua','PR00149'),('DI01517','Carumas','PR00149'),('DI01518','Cuchumbaya','PR00149'),('DI01519','Samegua','PR00149'),('DI01520','San Cristobal','PR00149'),('DI01521','Torata','PR00149'),('DI01522','Omate','PR00150'),('DI01523','Chojata','PR00150'),('DI01524','Coalaque','PR00150'),('DI01525','Ichuña','PR00150'),('DI01526','La Capilla','PR00150'),('DI01527','Lloque','PR00150'),('DI01528','Matalaque','PR00150'),('DI01529','Puquina','PR00150'),('DI01530','Quinistaquillas','PR00150'),('DI01531','Ubinas','PR00150'),('DI01532','Yunga','PR00150'),('DI01533','Ilo','PR00151'),('DI01534','El Algarrobal','PR00151'),('DI01535','Pacocha','PR00151'),('DI01536','Chaupimarca','PR00152'),('DI01537','Huachon','PR00152'),('DI01538','Huariaca','PR00152'),('DI01539','Huayllay','PR00152'),('DI01540','Ninacaca','PR00152'),('DI01541','Pallanchacra','PR00152'),('DI01542','Paucartambo','PR00152'),('DI01543','San Francisco de Asis de Yarusyacan','PR00152'),('DI01544','Simon Bolivar','PR00152'),('DI01545','Ticlacayan','PR00152'),('DI01546','Tinyahuarco','PR00152'),('DI01547','Vicco','PR00152'),('DI01548','Yanacancha','PR00152'),('DI01549','Yanahuanca','PR00153'),('DI01550','Chacayan','PR00153'),('DI01551','Goyllarisquizga','PR00153'),('DI01552','Paucar','PR00153'),('DI01553','San Pedro de Pillao','PR00153'),('DI01554','Santa Ana de Tusi','PR00153'),('DI01555','Tapuc','PR00153'),('DI01556','Vilcabamba','PR00153'),('DI01557','Oxapampa','PR00154'),('DI01558','Chontabamba','PR00154'),('DI01559','Huancabamba','PR00154'),('DI01560','Palcazu','PR00154'),('DI01561','Pozuzo','PR00154'),('DI01562','Puerto Bermudez','PR00154'),('DI01563','Villa Rica','PR00154'),('DI01564','Constitución','PR00154'),('DI01565','Piura','PR00155'),('DI01566','Castilla','PR00155'),('DI01567','Catacaos','PR00155'),('DI01568','Cura Mori','PR00155'),('DI01569','El Tallan','PR00155'),('DI01570','La Arena','PR00155'),('DI01571','La Union','PR00155'),('DI01572','Las Lomas','PR00155'),('DI01573','Tambo Grande','PR00155'),('DI01574','26 de Octubre','PR00155'),('DI01575','Ayabaca','PR00156'),('DI01576','Frias','PR00156'),('DI01577','Jilili','PR00156'),('DI01578','Lagunas','PR00156'),('DI01579','Montero','PR00156'),('DI01580','Pacaipampa','PR00156'),('DI01581','Paimas','PR00156'),('DI01582','Sapillica','PR00156'),('DI01583','Sicchez','PR00156'),('DI01584','Suyo','PR00156'),('DI01585','Huancabamba','PR00157'),('DI01586','Canchaque','PR00157'),('DI01587','El Carmen de La Frontera','PR00157'),('DI01588','Huarmaca','PR00157'),('DI01589','Lalaquiz','PR00157'),('DI01590','San Miguel de El Faique','PR00157'),('DI01591','Sondor','PR00157'),('DI01592','Sondorillo','PR00157'),('DI01593','Chulucanas','PR00158'),('DI01594','Buenos Aires','PR00158'),('DI01595','Chalaco','PR00158'),('DI01596','La Matanza','PR00158'),('DI01597','Morropon','PR00158'),('DI01598','Salitral','PR00158'),('DI01599','San Juan de Bigote','PR00158'),('DI01600','Santa Catalina de Mossa','PR00158'),('DI01601','Santo Domingo','PR00158'),('DI01602','Yamango','PR00158'),('DI01603','Paita','PR00159'),('DI01604','Amotape','PR00159'),('DI01605','Arenal','PR00159'),('DI01606','Colan','PR00159'),('DI01607','La Huaca','PR00159'),('DI01608','Tamarindo','PR00159'),('DI01609','Vichayal','PR00159'),('DI01610','Sullana','PR00160'),('DI01611','Bellavista','PR00160'),('DI01612','Ignacio Escudero','PR00160'),('DI01613','Lancones','PR00160'),('DI01614','Marcavelica','PR00160'),('DI01615','Miguel Checa','PR00160'),('DI01616','Querecotillo','PR00160'),('DI01617','Salitral','PR00160'),('DI01618','Pariñas','PR00161'),('DI01619','El Alto','PR00161'),('DI01620','La Brea','PR00161'),('DI01621','Lobitos','PR00161'),('DI01622','Los Organos','PR00161'),('DI01623','Mancora','PR00161'),('DI01624','Sechura','PR00162'),('DI01625','Bellavista de La Union','PR00162'),('DI01626','Bernal','PR00162'),('DI01627','Cristo Nos Valga','PR00162'),('DI01628','Vice','PR00162'),('DI01629','Rinconada Llicuar','PR00162'),('DI01630','Puno','PR00163'),('DI01631','Acora','PR00163'),('DI01632','Amantani','PR00163'),('DI01633','Atuncolla','PR00163'),('DI01634','Capachica','PR00163'),('DI01635','Chucuito','PR00163'),('DI01636','Coata','PR00163'),('DI01637','Huata','PR00163'),('DI01638','Mañazo','PR00163'),('DI01639','Paucarcolla','PR00163'),('DI01640','Pichacani','PR00163'),('DI01641','Plateria','PR00163'),('DI01642','San Antonio','PR00163'),('DI01643','Tiquillaca','PR00163'),('DI01644','Vilque','PR00163'),('DI01645','Azangaro','PR00164'),('DI01646','Achaya','PR00164'),('DI01647','Arapa','PR00164'),('DI01648','Asillo','PR00164'),('DI01649','Caminaca','PR00164'),('DI01650','Chupa','PR00164'),('DI01651','Jose Domingo Choquehuanca','PR00164'),('DI01652','Muñani','PR00164'),('DI01653','Potoni','PR00164'),('DI01654','Saman','PR00164'),('DI01655','San Anton','PR00164'),('DI01656','San Jose','PR00164'),('DI01657','San Juan de Salinas','PR00164'),('DI01658','Santiago de Pupuja','PR00164'),('DI01659','Tirapata','PR00164'),('DI01660','Macusani','PR00165'),('DI01661','Ajoyani','PR00165'),('DI01662','Ayapata','PR00165'),('DI01663','Coasa','PR00165'),('DI01664','Corani','PR00165'),('DI01665','Crucero','PR00165'),('DI01666','Ituata','PR00165'),('DI01667','Ollachea','PR00165'),('DI01668','San Gaban','PR00165'),('DI01669','Usicayos','PR00165'),('DI01670','Juli','PR00166'),('DI01671','Desaguadero','PR00166'),('DI01672','Huacullani','PR00166'),('DI01673','Kelluyo','PR00166'),('DI01674','Pisacoma','PR00166'),('DI01675','Pomata','PR00166'),('DI01676','Zepita','PR00166'),('DI01677','Ilave','PR00167'),('DI01678','Capazo','PR00167'),('DI01679','Pilcuyo','PR00167'),('DI01680','Santa Rosa','PR00167'),('DI01681','Conduriri','PR00167'),('DI01682','Huancane','PR00168'),('DI01683','Cojata','PR00168'),('DI01684','Huatasani','PR00168'),('DI01685','Inchupalla','PR00168'),('DI01686','Pusi','PR00168'),('DI01687','Rosaspata','PR00168'),('DI01688','Taraco','PR00168'),('DI01689','Vilque Chico','PR00168'),('DI01690','Lampa','PR00169'),('DI01691','Cabanilla','PR00169'),('DI01692','Calapuja','PR00169'),('DI01693','Nicasio','PR00169'),('DI01694','Ocuviri','PR00169'),('DI01695','Palca','PR00169'),('DI01696','Paratia','PR00169'),('DI01697','Pucara','PR00169'),('DI01698','Santa Lucia','PR00169'),('DI01699','Vilavila','PR00169'),('DI01700','Ayaviri','PR00169'),('DI01701','Antauta','PR00169'),('DI01702','Cupi','PR00169'),('DI01703','Llalli','PR00169'),('DI01704','Macari','PR00169'),('DI01705','Nuñoa','PR00169'),('DI01706','Orurillo','PR00169'),('DI01707','Santa Rosa','PR00169'),('DI01708','Umachiri','PR00169'),('DI01709','Moho','PR00170'),('DI01710','Conima','PR00170'),('DI01711','Huayrapata','PR00170'),('DI01712','Tilali','PR00170'),('DI01713','Putina','PR00171'),('DI01714','Ananea','PR00171'),('DI01715','Pedro Vilca Apaza','PR00171'),('DI01716','Quilcapuncu','PR00171'),('DI01717','Sina','PR00171'),('DI01718','Juliaca','PR00172'),('DI01719','Cabana','PR00172'),('DI01720','Cabanillas','PR00172'),('DI01721','Caracoto','PR00172'),('DI01722','San Miguel','PR00172'),('DI01723','Sandia','PR00173'),('DI01724','Cuyocuyo','PR00173'),('DI01725','Limbani','PR00173'),('DI01726','Patambuco','PR00173'),('DI01727','Phara','PR00173'),('DI01728','Quiaca','PR00173'),('DI01729','San Juan del Oro','PR00173'),('DI01730','Yanahuaya','PR00173'),('DI01731','Alto Inambari','PR00173'),('DI01732','San Pedro de Putina Punco','PR00173'),('DI01733','Yunguyo','PR00174'),('DI01734','Anapia','PR00174'),('DI01735','Copani','PR00174'),('DI01736','Cuturapi','PR00174'),('DI01737','Ollaraya','PR00174'),('DI01738','Tinicachi','PR00174'),('DI01739','Unicachi','PR00174'),('DI01740','Moyobamba','PR00175'),('DI01741','Calzada','PR00175'),('DI01742','Habana','PR00175'),('DI01743','Jepelacio','PR00175'),('DI01744','Soritor','PR00175'),('DI01745','Yantalo','PR00175'),('DI01746','Bellavista','PR00176'),('DI01747','Alto Biavo','PR00176'),('DI01748','Bajo Biavo','PR00176'),('DI01749','Huallaga','PR00176'),('DI01750','San Pablo','PR00176'),('DI01751','San Rafael','PR00176'),('DI01752','San Jose de Sisa','PR00177'),('DI01753','Agua Blanca','PR00177'),('DI01754','San Martin','PR00177'),('DI01755','Santa Rosa','PR00177'),('DI01756','Shatoja','PR00177'),('DI01757','Saposoa','PR00178'),('DI01758','Alto Saposoa','PR00178'),('DI01759','El Eslabon','PR00178'),('DI01760','Piscoyacu','PR00178'),('DI01761','Sacanche','PR00178'),('DI01762','Tingo de Saposoa','PR00178'),('DI01763','Lamas','PR00179'),('DI01764','Alonso de Alvarado','PR00179'),('DI01765','Barranquita','PR00179'),('DI01766','Caynarachi','PR00179'),('DI01767','Cuñumbuqui','PR00179'),('DI01768','Pinto Recodo','PR00179'),('DI01769','Rumisapa','PR00179'),('DI01770','San Roque de Cumbaza','PR00179'),('DI01771','Shanao','PR00179'),('DI01772','Tabalosos','PR00179'),('DI01773','Zapatero','PR00179'),('DI01774','Juanjui','PR00180'),('DI01775','Campanilla','PR00180'),('DI01776','Huicungo','PR00180'),('DI01777','Pachiza','PR00180'),('DI01778','Pajarillo','PR00180'),('DI01779','Picota','PR00181'),('DI01780','Buenos Aires','PR00181'),('DI01781','Caspisapa','PR00181'),('DI01782','Pilluana','PR00181'),('DI01783','Pucacaca','PR00181'),('DI01784','San Cristobal','PR00181'),('DI01785','San Hilarion','PR00181'),('DI01786','Shamboyacu','PR00181'),('DI01787','Tingo de Ponasa','PR00181'),('DI01788','Tres Unidos','PR00181'),('DI01789','Rioja','PR00182'),('DI01790','Awajun','PR00182'),('DI01791','Elias Soplin Vargas','PR00182'),('DI01792','Nueva Cajamarca','PR00182'),('DI01793','Pardo Miguel','PR00182'),('DI01794','Posic','PR00182'),('DI01795','San Fernando','PR00182'),('DI01796','Yorongos','PR00182'),('DI01797','Yuracyacu','PR00182'),('DI01798','Tarapoto','PR00183'),('DI01799','Alberto Leveau','PR00183'),('DI01800','Cacatachi','PR00183'),('DI01801','Chazuta','PR00183'),('DI01802','Chipurana','PR00183'),('DI01803','El Porvenir','PR00183'),('DI01804','Huimbayoc','PR00183'),('DI01805','Juan Guerra','PR00183'),('DI01806','La Banda de Shilcayo','PR00183'),('DI01807','Morales','PR00183'),('DI01808','Papaplaya','PR00183'),('DI01809','San Antonio','PR00183'),('DI01810','Sauce','PR00183'),('DI01811','Shapaja','PR00183'),('DI01812','Tocache','PR00184'),('DI01813','Nuevo Progreso','PR00184'),('DI01814','Polvora','PR00184'),('DI01815','Shunte','PR00184'),('DI01816','Uchiza','PR00184'),('DI01817','Tacna','PR00185'),('DI01818','Alto de La Alianza','PR00185'),('DI01819','Calana','PR00185'),('DI01820','Ciudad Nueva','PR00185'),('DI01821','Inclan','PR00185'),('DI01822','Pachia','PR00185'),('DI01823','Palca','PR00185'),('DI01824','Pocollay','PR00185'),('DI01825','Sama','PR00185'),('DI01826','Coronel Gregorio Albarracin Lanchipa','PR00185'),('DI01827','La Yarada-Los Palos','PR00185'),('DI01828','Candarave','PR00186'),('DI01829','Cairani','PR00186'),('DI01830','Camilaca','PR00186'),('DI01831','Curibaya','PR00186'),('DI01832','Huanuara','PR00186'),('DI01833','Quilahuani','PR00186'),('DI01834','Locumba','PR00187'),('DI01835','Ilabaya','PR00187'),('DI01836','Ite','PR00187'),('DI01837','Tarata','PR00188'),('DI01838','Heroes Albarracin','PR00188'),('DI01839','Estique','PR00188'),('DI01840','Estique-Pampa','PR00188'),('DI01841','Sitajara','PR00188'),('DI01842','Susapaya','PR00188'),('DI01843','Tarucachi','PR00188'),('DI01844','Ticaco','PR00188'),('DI01845','Tumbes','PR00189'),('DI01846','Corrales','PR00189'),('DI01847','La Cruz','PR00189'),('DI01848','Pampas de Hospital','PR00189'),('DI01849','San Jacinto','PR00189'),('DI01850','San Juan de La Virgen','PR00189'),('DI01851','Zorritos','PR00190'),('DI01852','Casitas','PR00190'),('DI01853','Canoas de Punta Sal','PR00190'),('DI01854','Zarumilla','PR00191'),('DI01855','Aguas Verdes','PR00191'),('DI01856','Matapalo','PR00191'),('DI01857','Papayal','PR00191'),('DI01858','Calleria','PR00192'),('DI01859','Campoverde','PR00192'),('DI01860','Iparia','PR00192'),('DI01861','Masisea','PR00192'),('DI01862','Yarinacocha','PR00192'),('DI01863','Nueva Requena','PR00192'),('DI01864','Manantay','PR00192'),('DI01865','Raymondi','PR00193'),('DI01866','Sepahua','PR00193'),('DI01867','Tahuania','PR00193'),('DI01868','Yurua','PR00193'),('DI01869','Padre Abad','PR00194'),('DI01870','Irazola','PR00194'),('DI01871','Curimana','PR00194'),('DI01872','Neshuya','PR00194'),('DI01873','Alexander von Humboldt','PR00194'),('DI01874','Purus','PR00195');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egresos`
--

DROP TABLE IF EXISTS `egresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `egresos` (
  `IDEGRESO` varchar(7) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `FECHA` datetime DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `IDCAJA` varchar(7) NOT NULL,
  PRIMARY KEY (`IDEGRESO`),
  KEY `EGRE_CAJA_FK` (`IDCAJA`),
  CONSTRAINT `EGRE_CAJA_FK` FOREIGN KEY (`IDCAJA`) REFERENCES `caja_chica` (`idcaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egresos`
--

LOCK TABLES `egresos` WRITE;
/*!40000 ALTER TABLE `egresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `egresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleado` (
  `IDEMPLEADO` varchar(7) NOT NULL,
  `IDPERSONA` varchar(7) NOT NULL,
  `IDCARGO` varchar(7) NOT NULL,
  PRIMARY KEY (`IDEMPLEADO`),
  KEY `EMPL_PERS_FK` (`IDPERSONA`),
  KEY `EMPL_CARG_FK` (`IDCARGO`),
  CONSTRAINT `EMPL_CARG_FK` FOREIGN KEY (`IDCARGO`) REFERENCES `cargo` (`idcargo`),
  CONSTRAINT `EMPL_PERS_FK` FOREIGN KEY (`IDPERSONA`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('EM00001','PE00001','CA00002'),('EM00002','PE00005','CA00002'),('EM00003','PE00003','CA00004'),('EM00004','PE00004','CA00003'),('EM00005','PE00003','CA00003');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mesa` (
  `IDMESA` varchar(7) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDMESA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES ('ME00001','MESA 1',1,1),('ME00002','MESA 2',1,1),('ME00003','MESA 3',1,1),('ME00004','DELIVERY',1,0);
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido` (
  `IDPEDIDO` varchar(7) NOT NULL,
  `FECHA` datetime DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `IDMESA` varchar(7) NOT NULL,
  PRIMARY KEY (`IDPEDIDO`),
  KEY `PEDI_MESA_FK` (`IDMESA`),
  CONSTRAINT `PEDI_MESA_FK` FOREIGN KEY (`IDMESA`) REFERENCES `mesa` (`idmesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES ('PD00001','2019-07-08 07:21:19',2,'ME00001'),('PD00002','2019-07-08 11:29:31',1,'ME00001'),('PD00003','2019-07-08 12:53:46',1,'ME00002'),('PD00004','2019-07-08 13:09:47',1,'ME00003');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persona` (
  `IDPERSONA` varchar(7) NOT NULL,
  `NOMBRE_RS` varchar(50) DEFAULT NULL,
  `APELLIDOP` varchar(50) DEFAULT NULL,
  `APELLIDOM` varchar(50) DEFAULT NULL,
  `CORREO` varchar(50) DEFAULT NULL,
  `TELEFONO` decimal(12,0) DEFAULT NULL,
  `DNI_RUC` decimal(12,0) DEFAULT NULL,
  `FECHA_NACI` date DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('PE00001','bruce','salas','sullcaray','brucesalas38@gmail.com',953261650,75922766,'1997-07-12',1),('PE00002','brandon','salas','sullcaray','ssasasassasasas',654654650,65465467,'2000-07-09',1),('PE00003','emily','sullcaray','salas','4654654654sas@',454654531,13543543,'2006-07-09',1),('PE00004','pastor','pastor','pastor','pastor@pastor.com',123456789,987654321,'2000-08-03',1),('PE00005','pastor2','pastor2','pastor2','pastor2@pastor.com',123456789,963258741,'2002-05-08',1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plato`
--

DROP TABLE IF EXISTS `plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plato` (
  `IDPLATO` varchar(7) NOT NULL,
  `PLATO` varchar(50) DEFAULT NULL,
  `PRECIO` decimal(10,2) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `IDCATEGORIA_PLATO` varchar(7) NOT NULL,
  PRIMARY KEY (`IDPLATO`),
  KEY `PLAT_CATE_FK` (`IDCATEGORIA_PLATO`),
  CONSTRAINT `PLAT_CATE_FK` FOREIGN KEY (`IDCATEGORIA_PLATO`) REFERENCES `categoria_plato` (`idcategoria_plato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plato`
--

LOCK TABLES `plato` WRITE;
/*!40000 ALTER TABLE `plato` DISABLE KEYS */;
INSERT INTO `plato` VALUES ('PL00001','PORCION DE PAPA',25.00,1,'CP00001'),('PL00002','PORCION DE ENSALADA',45.00,1,'CP00001'),('PL00003','POLLO3/4',15.00,1,'CP00002'),('PL00004','POLLO1/2',45.00,1,'CP00001'),('PL00005','POLLO1',45.00,1,'CP00001'),('PL00006','POLLITO BROASTER',15.00,1,'CP00001');
/*!40000 ALTER TABLE `plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `IDPRODUCTOS` varchar(7) NOT NULL,
  `PRODUCTO` varchar(100) DEFAULT NULL,
  `STOCK_MIN` decimal(10,3) DEFAULT NULL,
  `STOCK_ACTU` decimal(10,3) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPRODUCTOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES ('PR00001','PAPA',5.000,31.000,0),('PR00002','LECHUGA',5.000,228.000,0),('PR00003','POLLO',5.000,150.000,1),('PR00004','TOMATE',5.000,40.000,1),('PR00005','PALTA',4.000,39.000,1),('PR00006','CEBOLLA',4.000,39.000,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provincia` (
  `IDPROVINCIA` varchar(7) NOT NULL,
  `PROVINCIA` varchar(50) DEFAULT NULL,
  `IDDEPARTAMENTO` varchar(7) NOT NULL,
  PRIMARY KEY (`IDPROVINCIA`),
  KEY `PROV_DEPA_FK` (`IDDEPARTAMENTO`),
  CONSTRAINT `PROV_DEPA_FK` FOREIGN KEY (`IDDEPARTAMENTO`) REFERENCES `departamento` (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES ('PR00001','Chachapoyas','DE00001'),('PR00002','Bagua','DE00001'),('PR00003','Bongara','DE00001'),('PR00004','Condorcanqui','DE00001'),('PR00005','Luya','DE00001'),('PR00006','Rodriguez de Mendoza','DE00001'),('PR00007','Utcubamba','DE00001'),('PR00008','Huaraz','DE00002'),('PR00009','Aija','DE00002'),('PR00010','Antonio Raymondi','DE00002'),('PR00011','Asuncion','DE00002'),('PR00012','Bolognesi','DE00002'),('PR00013','Carhuaz','DE00002'),('PR00014','Carlos Fermin Fitzca','DE00002'),('PR00015','Casma','DE00002'),('PR00016','Corongo','DE00002'),('PR00017','Huari','DE00002'),('PR00018','Huarmey','DE00002'),('PR00019','Huaylas','DE00002'),('PR00020','Mariscal Luzuriaga','DE00002'),('PR00021','Ocros','DE00002'),('PR00022','Pallasca','DE00002'),('PR00023','Pomabamba','DE00002'),('PR00024','Recuay','DE00002'),('PR00025','Santa','DE00002'),('PR00026','Sihuas','DE00002'),('PR00027','Yungay','DE00002'),('PR00028','Abancay','DE00003'),('PR00029','Andahuaylas','DE00003'),('PR00030','Antabamba','DE00003'),('PR00031','Aymaraes','DE00003'),('PR00032','Cotabambas','DE00003'),('PR00033','Chincheros','DE00003'),('PR00034','Grau','DE00003'),('PR00035','Arequipa','DE00004'),('PR00036','Camana','DE00004'),('PR00037','Caraveli','DE00004'),('PR00038','Castilla','DE00004'),('PR00039','Caylloma','DE00004'),('PR00040','Condesuyos','DE00004'),('PR00041','Islay','DE00004'),('PR00042','La Union','DE00004'),('PR00043','Huamanga','DE00005'),('PR00044','Cangallo','DE00005'),('PR00045','Huanca Sancos','DE00005'),('PR00046','Huanta','DE00005'),('PR00047','La Mar','DE00005'),('PR00048','Lucanas','DE00005'),('PR00049','Parinacochas','DE00005'),('PR00050','Paucar del Sara Sara','DE00005'),('PR00051','Sucre','DE00005'),('PR00052','Victor Fajardo','DE00005'),('PR00053','Vilcas Huaman','DE00005'),('PR00054','Cajamarca','DE00006'),('PR00055','Cajabamba','DE00006'),('PR00056','Celendin','DE00006'),('PR00057','Chota','DE00006'),('PR00058','Contumaza','DE00006'),('PR00059','Cutervo','DE00006'),('PR00060','Hualgayoc','DE00006'),('PR00061','Jaen','DE00006'),('PR00062','San Ignacio','DE00006'),('PR00063','San Marcos','DE00006'),('PR00064','San Miguel','DE00006'),('PR00065','San Pablo','DE00006'),('PR00066','Santa Cruz','DE00006'),('PR00067','Callao','DE00007'),('PR00068','Cusco','DE00008'),('PR00069','Acomayo','DE00008'),('PR00070','Anta','DE00008'),('PR00071','Calca','DE00008'),('PR00072','Canas','DE00008'),('PR00073','Canchis','DE00008'),('PR00074','Chumbivilcas','DE00008'),('PR00075','Espinar','DE00008'),('PR00076','La Convencion','DE00008'),('PR00077','Paruro','DE00008'),('PR00078','Paucartambo','DE00008'),('PR00079','Quispicanchi','DE00008'),('PR00080','Urubamba','DE00008'),('PR00081','Huancavelica','DE00009'),('PR00082','Acobamba','DE00009'),('PR00083','Angaraes','DE00009'),('PR00084','Castrovirreyna','DE00009'),('PR00085','Churcampa','DE00009'),('PR00086','Huaytara','DE00009'),('PR00087','Tayacaja','DE00009'),('PR00088','Huanuco','DE00010'),('PR00089','Ambo','DE00010'),('PR00090','Dos de Mayo','DE00010'),('PR00091','Huacaybamba','DE00010'),('PR00092','Huamalies','DE00010'),('PR00093','Leoncio Prado','DE00010'),('PR00094','Marañon','DE00010'),('PR00095','Pachitea','DE00010'),('PR00096','Puerto Inca','DE00010'),('PR00097','Lauricocha','DE00010'),('PR00098','Yarowilca','DE00010'),('PR00099','Ica','DE00011'),('PR00100','Chincha','DE00011'),('PR00101','Nazca','DE00011'),('PR00102','Palpa','DE00011'),('PR00103','Pisco','DE00011'),('PR00104','Huancayo','DE00012'),('PR00105','Concepcion','DE00012'),('PR00106','Chanchamayo','DE00012'),('PR00107','Jauja','DE00012'),('PR00108','Junin','DE00012'),('PR00109','Satipo','DE00012'),('PR00110','Tarma','DE00012'),('PR00111','Yauli','DE00012'),('PR00112','Chupaca','DE00012'),('PR00113','Trujillo','DE00013'),('PR00114','Ascope','DE00013'),('PR00115','Bolivar','DE00013'),('PR00116','Chepen','DE00013'),('PR00117','Julcan','DE00013'),('PR00118','Otuzco','DE00013'),('PR00119','Pacasmayo','DE00013'),('PR00120','Pataz','DE00013'),('PR00121','Sanchez Carrion','DE00013'),('PR00122','Santiago de Chuco','DE00013'),('PR00123','Gran Chimu','DE00013'),('PR00124','Viru','DE00014'),('PR00125','Chiclayo','DE00014'),('PR00126','Ferreñafe','DE00014'),('PR00127','Lambayeque','DE00014'),('PR00128','Lima','DE00015'),('PR00129','Barranca','DE00015'),('PR00130','Cajatambo','DE00015'),('PR00131','Canta','DE00015'),('PR00132','Cañete','DE00015'),('PR00133','Huaral','DE00015'),('PR00134','Huarochiri','DE00015'),('PR00135','Huaura','DE00015'),('PR00136','Oyon','DE00015'),('PR00137','Yauyos','DE00015'),('PR00138','Maynas','DE00016'),('PR00139','Alto Amazonas','DE00016'),('PR00140','Loreto','DE00016'),('PR00141','Mariscal Ramon Castilla','DE00016'),('PR00142','Requena','DE00016'),('PR00143','Ucayali','DE00016'),('PR00144','Datem del Marañon','DE00016'),('PR00145','Tambopata','DE00017'),('PR00146','Manu','DE00017'),('PR00147','Tahuamanu','DE00017'),('PR00148','Mariscal Nieto','DE00018'),('PR00149','General Sanchez Cerr','DE00018'),('PR00150','Ilo','DE00018'),('PR00151','Pasco','DE00019'),('PR00152','Daniel Alcides Carri','DE00019'),('PR00153','Oxapampa','DE00019'),('PR00154','Piura','DE00020'),('PR00155','Ayabaca','DE00020'),('PR00156','Huancabamba','DE00020'),('PR00157','Morropon','DE00020'),('PR00158','Paita','DE00020'),('PR00159','Sullana','DE00020'),('PR00160','Talara','DE00020'),('PR00161','Sechura','DE00020'),('PR00162','Puno','DE00021'),('PR00163','Azangaro','DE00021'),('PR00164','Carabaya','DE00021'),('PR00165','Chucuito','DE00021'),('PR00166','El Collao','DE00021'),('PR00167','Huancane','DE00021'),('PR00168','Lampa','DE00021'),('PR00169','Melgar','DE00021'),('PR00170','Moho','DE00021'),('PR00171','San Antonio de Putin','DE00021'),('PR00172','San Roman','DE00021'),('PR00173','Sandia','DE00021'),('PR00174','Yunguyo','DE00021'),('PR00175','Moyobamba','DE00022'),('PR00176','Bellavista','DE00022'),('PR00177','El Dorado','DE00022'),('PR00178','Huallaga','DE00022'),('PR00179','Lamas','DE00022'),('PR00180','Mariscal Caceres','DE00022'),('PR00181','Picota','DE00022'),('PR00182','Rioja','DE00022'),('PR00183','San Martin','DE00022'),('PR00184','Tocache','DE00022'),('PR00185','Tacna','DE00023'),('PR00186','Candarave','DE00023'),('PR00187','Jorge Basadre','DE00023'),('PR00188','Tarata','DE00023'),('PR00189','Tumbes','DE00024'),('PR00190','Contralmirante Villa','DE00024'),('PR00191','Zarumilla','DE00024'),('PR00192','Coronel Portillo','DE00025'),('PR00193','Atalaya','DE00025'),('PR00194','Padre Abad','DE00025'),('PR00195','Purus','DE00025');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_pago` (
  `IDTIPO` varchar(7) NOT NULL,
  `NOMBRE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDTIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
INSERT INTO `tipo_pago` VALUES ('TP00001','EFECTIVO'),('TP00002','TARJETA VISA'),('TP00003','TARJETA MASTER');
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `IDUSUARIO` varchar(7) NOT NULL,
  `USUARIO` varchar(50) DEFAULT NULL,
  `CONTRASEÑA` varchar(50) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `SESION` int(11) DEFAULT NULL,
  `IDEMPLEADO` varchar(7) NOT NULL,
  PRIMARY KEY (`IDUSUARIO`),
  KEY `USUA_EMPL_FK` (`IDEMPLEADO`),
  CONSTRAINT `USUA_EMPL_FK` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('US00001','johan','123456',1,2,'EM00001'),('US00002','jsjsjsjs','123456',1,0,'EM00001');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venta` (
  `IDVENTA` varchar(7) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `NUMERACION` varchar(20) DEFAULT NULL,
  `MONTO` decimal(10,2) DEFAULT NULL,
  `IGV` decimal(10,2) DEFAULT NULL,
  `SUB_TOTAL` decimal(10,2) DEFAULT NULL,
  `ESTADO` int(11) DEFAULT NULL,
  `IDCOMPROBANTE` varchar(7) NOT NULL,
  `IDPEDIDO` varchar(7) NOT NULL,
  `IDTIPO` varchar(7) NOT NULL,
  `IDEMPLEADO` varchar(7) NOT NULL,
  `IDCLIENTE` varchar(7) NOT NULL,
  `IDCAJA` varchar(7) NOT NULL,
  PRIMARY KEY (`IDVENTA`),
  KEY `VENT_COMP_FK` (`IDCOMPROBANTE`),
  KEY `VENT_PEDI_FK` (`IDPEDIDO`),
  KEY `VENT_TIPO_FK` (`IDTIPO`),
  KEY `VENT_EMPL_FK` (`IDEMPLEADO`),
  KEY `VENT_CLIE_FK` (`IDCLIENTE`),
  KEY `VENT_CAJA_FK` (`IDCAJA`),
  CONSTRAINT `VENT_CAJA_FK` FOREIGN KEY (`IDCAJA`) REFERENCES `caja_chica` (`idcaja`),
  CONSTRAINT `VENT_CLIE_FK` FOREIGN KEY (`IDCLIENTE`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `VENT_COMP_FK` FOREIGN KEY (`IDCOMPROBANTE`) REFERENCES `comprobante_pago` (`idcomprobante`),
  CONSTRAINT `VENT_EMPL_FK` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `empleado` (`idempleado`),
  CONSTRAINT `VENT_PEDI_FK` FOREIGN KEY (`IDPEDIDO`) REFERENCES `pedido` (`idpedido`),
  CONSTRAINT `VENT_TIPO_FK` FOREIGN KEY (`IDTIPO`) REFERENCES `tipo_pago` (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES ('VE00001','2019-07-08','N001-000001',180.00,27.46,152.54,1,'CP00002','PD00001','TP00002','EM00001','CL00002','CC00001');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'machis'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_busca_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_busca_id`(nm_plato varchar(50)) RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE IDP VARCHAR(7);
    
    select IDPLATO into IDP from PLATO WHERE PLATO =nm_plato ;

    return IDP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_detalle_plato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_detalle_plato`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE det VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from detalle_plato;
    
    if id < 9 then
    set det=concat("DL0000",id+1);
    ELSEIF id between 10 and 100 then
    set det=concat("DL000",id+1);
    ELSEIF id between 100 and 1000 then
    set det=concat("DL00",id+1);
    ELSEIF id between 1000 and 10000 then
    set det=concat("DL0",id+1);
    ELSE
    set det=concat("DL",id+1);
    end if;
    
    
    return det;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idCajachica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idCajachica`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE cachi VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from caja_chica;
    
    if id < 9 then
    set cachi=concat("CC0000",id+1);
    ELSEIF id between 10 and 100 then
    set cachi=concat("CC000",id+1);
    ELSEIF id between 100 and 1000 then
    set cachi=concat("CC00",id+1);
    ELSEIF id between 1000 and 10000 then
    set cachi=concat("CC0",id+1);
    ELSE
    set cachi=concat("CC",id+1);
    end if;
    
    
    return cachi;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idcargo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idcargo`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE car VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from cargo;
    
    if id < 9 then
    set car=concat("CA0000",id+1);
    ELSEIF id between 10 and 100 then
    set car=concat("CA000",id+1);
    ELSEIF id between 100 and 1000 then
    set car=concat("CA00",id+1);
    ELSEIF id between 1000 and 10000 then
    set car=concat("CA0",id+1);
    ELSE
    set car=concat("CA",id+1);
    end if;
    
    
    return car;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idcategoria_plato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idcategoria_plato`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE pla VARCHAR(7);
    DECLARE id int;
    
    select count(IDCATEGORIA_PLATO) into id from categoria_plato;
    
    if id < 9 then
    set pla=concat("CP0000",id+1);
    ELSEIF id between 10 and 100 then
    set pla=concat("CP000",id+1);
    ELSEIF id between 100 and 1000 then
    set pla=concat("CP00",id+1);
    ELSEIF id between 1000 and 10000 then
    set pla=concat("CP0",id+1);
    ELSE
    set pla=concat("CP",id+1);
    end if;
    
    
    return pla;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idcliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idcliente`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE cli VARCHAR(7);
    DECLARE id int;
    
    select count(IDCLIENTE) into id from cliente;
    
    if id < 9 then
    set cli=concat("CL0000",id+1);
    ELSEIF id between 10 and 100 then
    set cli=concat("CL000",id+1);
    ELSEIF id between 100 and 1000 then
    set cli=concat("CL00",id+1);
    ELSEIF id between 1000 and 10000 then
    set cli=concat("CL0",id+1);
    ELSE
    set cli=concat("CL",id+1);
    end if;
    
    
    return cli;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_iddetaPedi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_iddetaPedi`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE det VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from detalle_pedido;
    
    if id < 9 then
    set det=concat("DP0000",id+1);
    ELSEIF id between 10 and 100 then
    set det=concat("DP000",id+1);
    ELSEIF id between 100 and 1000 then
    set det=concat("DP00",id+1);
    ELSEIF id between 1000 and 10000 then
    set det=concat("DP0",id+1);
    ELSE
    set det=concat("DP",id+1);
    end if;
    
    
    return det;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idegresos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idegresos`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE egr VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from egresos;
    
    if id < 9 then
    set egr=concat("EG0000",id+1);
    ELSEIF id between 10 and 100 then
    set egr=concat("EG000",id+1);
    ELSEIF id between 100 and 1000 then
    set egr=concat("EG00",id+1);
    ELSEIF id between 1000 and 10000 then
    set egr=concat("EG0",id+1);
    ELSE
    set egr=concat("EG",id+1);
    end if;
    
    
    return egr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idempleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idempleado`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
DECLARE emple VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from empleado;
    
    if id < 9 then
    set emple=concat("EM0000",id+1);
    ELSEIF id between 10 and 100 then
    set emple=concat("EM000",id+1);
    ELSEIF id between 100 and 1000 then
    set emple=concat("EM00",id+1);
    ELSEIF id between 1000 and 10000 then
    set emple=concat("EM0",id+1);
    ELSE
    set emple=concat("EM",id+1);
    end if;
    
    
    return emple;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idpedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idpedido`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE PED VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from pedido;
    
    if id < 9 then
    set PED=concat("PD0000",id+1);
    ELSEIF id between 10 and 100 then
    set PED=concat("PD000",id+1);
    ELSEIF id between 100 and 1000 then
    set PED=concat("PD00",id+1);
    ELSEIF id between 1000 and 10000 then
    set PED=concat("PD0",id+1);
    ELSE
    set PED=concat("PD",id+1);
    end if;
    
    
    return PED;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idpersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idpersona`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE PER VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from PERSONA;
    
    if id < 9 then
    set PER=concat("PE0000",id+1);
    ELSEIF id between 10 and 100 then
    set PER=concat("PE000",id+1);
    ELSEIF id between 100 and 1000 then
    set PER=concat("PE00",id+1);
    ELSEIF id between 1000 and 10000 then
    set PER=concat("PE0",id+1);
    ELSE
    set PER=concat("PE",id+1);
    end if;
    
    
    return PER;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idproducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idproducto`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE PRO VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from producto;
    
    if id < 9 then
    set PRO=concat("PR0000",id+1);
    ELSEIF id between 10 and 100 then
    set PRO=concat("PR000",id+1);
    ELSEIF id between 100 and 1000 then
    set PRO=concat("PR00",id+1);
    ELSEIF id between 1000 and 10000 then
    set PRO=concat("PR0",id+1);
    ELSE
    set PRO=concat("PR",id+1);
    end if;
    
    
    return PRO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idusuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idusuario`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE USU VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from usuario;
    
    if id < 9 then
    set USU=concat("US0000",id+1);
    ELSEIF id between 10 and 100 then
    set USU=concat("US000",id+1);
    ELSEIF id between 100 and 1000 then
    set USU=concat("US00",id+1);
    ELSEIF id between 1000 and 10000 then
    set USU=concat("US0",id+1);
    ELSE
    set USU=concat("US",id+1);
    end if;
    
    
    return USU;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_idventa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_idventa`() RETURNS varchar(7) CHARSET utf8mb4
BEGIN
	DECLARE VEN VARCHAR(7);
    DECLARE id int;
    
    select count(*) into id from venta;
    
    if id < 9 then
    set VEN=concat("VE0000",id+1);
    ELSEIF id between 10 and 100 then
    set VEN=concat("VE000",id+1);
    ELSEIF id between 100 and 1000 then
    set VEN=concat("VE00",id+1);
    ELSEIF id between 1000 and 10000 then
    set VEN=concat("VE0",id+1);
    ELSE
    set VEN=concat("VE",id+1);
    end if;
    
    
    return VEN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numeracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numeracion`(co_con varchar(7)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
    DECLARE NUM VARCHAR(20);
    DECLARE id int;
    
    select count(*) into id from venta where idcomprobante=co_con;
    
    if id < 9 then
    set NUM=concat("N001-00000",id+1);
    ELSEIF id between 10 and 100 then
    set NUM=concat("N001-0000",id+1);
    ELSEIF id between 100 and 1000 then
    set NUM=concat("N001-000",id+1);
    ELSEIF id between 1000 and 10000 then
    set NUM=concat("N001-00",id+1);
    ELSE
    set NUM=concat("N001-0",id+1);
    end if;
    
    
    return NUM;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_abrir_caja` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_abrir_caja`(nom varchar(100),aper decimal(10,2))
BEGIN
	DECLARE NOMBRE VARCHAR(100);
    DECLARE ID VARCHAR(7);
	SELECT IDEMPLEADO INTO ID FROM EMPLEADO AS E
    INNER JOIN PERSONA AS P ON E.IDPERSONA=P.IDPERSONA WHERE concat(P.NOMBRE_RS,' ',P.APELLIDOP,' ',P.APELLIDOM)=nom;
    
    INSERT INTO caja_chica (`IDCAJA`, `VENTA_TOTAL`, `APERTURA`, `TARJETAS`, `EFECTIVO`, `FECHA_INICIO`, `ESTADO`, `IDEMPLEADO`) VALUES (fn_idCajachica(),0,aper,0,0,now(),1,ID);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cerrar_caja` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cerrar_caja`()
BEGIN
    DECLARE ID VARCHAR(7);
	SELECT IDCAJA INTO ID FROM CAJA_CHICA WHERE FECHA_FIN IS NULL;
   
	update caja_chica set fecha_fin = now() where idcaja=ID; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteCategoriaPlato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteCategoriaPlato`(
cp_IDCATEGORIA_PLATO varchar(7)
)
BEGIN
delete from categoria_plato where IDCATEGORIA_PLATO = cp_IDCATEGORIA_PLATO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteCliente`(
c_IDPERSONA varchar(7)
)
BEGIN
update persona set ESTADO = 0 where IDPERSONA = c_IDPERSONA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteUsuario`(
c_IDUSUARIO varchar(7)
)
BEGIN
update usuario set ESTADO = 0 where IDUSUARIO = c_IDUSUARIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_editCategoriaPlato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editCategoriaPlato`(
cp_IDCATEGORIA_PLATO varchar(7),
cp_CATEGORIA varchar(50)
)
BEGIN
 update categoria_plato
 set CATEGORIA = cp_CATEGORIA where IDCATEGORIA_PLATO = cp_IDCATEGORIA_PLATO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_editCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editCliente`(

c_IDPERSONA varchar(7),
c_NOMBRE_RS varchar(50),
c_APELLIDOP varchar(50),
c_APELLIDOM varchar(50),
c_CORREO varchar(50),
c_TELEFONO decimal(12,0),
c_DNI_RUC decimal(12,0),
c_FECHA_NACI date,
c_ESTADO int(11)
)
BEGIN
update persona set NOMBRE_RS = c_NOMBRE_RS , APELLIDOP = c_APELLIDOP , APELLIDOM = c_APELLIDOM , CORREO = c_CORREO , TELEFONO = c_TELEFONO , DNI_RUC = c_DNI_RUC , FECHA_NACI = c_FECHA_NACI , ESTADO = c_ESTADO where IDPERSONA = c_IDPERSONA ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_editPlato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editPlato`(

c_IDPLATO varchar(7),
c_PLATO varchar(50),
c_PRECIO decimal(10,2),
c_ESTADO int(11),
c_IDCATEGORIA_PLATO varchar(7)
)
BEGIN
update plato set PLATO = c_PLATO , PRECIO = c_PRECIO , ESTADO = c_ESTADO , IDCATEGORIA_PLATO = c_IDCATEGORIA_PLATO where IDPLATO = c_IDPLATO ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_editUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editUsuario`(
cp_IDUSUARIO varchar(7),
cp_CONTRASEÑA varchar(50)
)
BEGIN
update usuario
 set CONTRASEÑA = cp_CONTRASEÑA where IDUSUARIO = cp_IDUSUARIO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_detalle_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_detalle_pedido`(mesa varchar(20),pla varchar(20),descri varchar(100),cantid  int)
BEGIN

declare idme varchar(7);
declare idpedi varchar(7);
declare idpl varchar(7);
select idmesa into idme from mesa where nombre=mesa;
select idpedido into idpedi from pedido where idmesa=idme and estado=1 order by idpedido desc limit 1;
select idplato into idpl from plato where plato=pla;


update detalle_pedido set estado=0 where idpedido=idpedi and idplato=idpl and  decripcion = descri and cantidad= cantid;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertCategoriaPlato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertCategoriaPlato`(
cp_IDCATEGORIA_PLATO varchar(7),
cp_CATEGORIA varchar(50)
)
BEGIN 
insert into categoria_plato(IDCATEGORIA_PLATO,CATEGORIA)
values(cp_IDCATEGORIA_PLATO,cp_CATEGORIA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertCliente`(

c_IDCLIENTE varchar(7),
c_IDPERSONA varchar(7),
c_NOMBRE_RS varchar(50),
c_APELLIDOP varchar(50),
c_APELLIDOM varchar(50),
c_CORREO varchar(50),
c_TELEFONO decimal(12,0),
c_DNI_RUC decimal(12,0),
c_FECHA_NACI date,
c_ESTADO int(11)
)
BEGIN
insert into persona(IDPERSONA,NOMBRE_RS,APELLIDOP,APELLIDOM,CORREO,TELEFONO,DNI_RUC,FECHA_NACI,ESTADO)

values(c_IDPERSONA,c_NOMBRE_RS,c_APELLIDOP,c_APELLIDOM,c_CORREO,c_TELEFONO,c_DNI_RUC,c_FECHA_NACI,c_ESTADO);
insert into cliente
(IDCLIENTE,IDPERSONA)
values
(c_IDCLIENTE,c_IDPERSONA);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertPlato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertPlato`(
c_IDPLATO varchar(7),
c_PLATO varchar(50),
c_PRECIO decimal(10,2),
c_ESTADO int(11),
c_IDCATEGORIA_PLATO varchar(7)
)
BEGIN
insert into plato(IDPLATO,
PLATO,
PRECIO,
ESTADO,
IDCATEGORIA_PLATO)

values(c_IDPLATO,
c_PLATO,
c_PRECIO,
c_ESTADO,
c_IDCATEGORIA_PLATO);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertUsuario`(
c_IDUSUARIO varchar(7),
c_USUARIO varchar(50),
c_CONTRASEÑA varchar(50),
c_IDEMPLEADO varchar(7)
)
BEGIN
insert into usuario(IDUSUARIO,
USUARIO,
CONTRASEÑA,
ESTADO,
IDEMPLEADO)

values(c_IDUSUARIO ,
c_USUARIO ,
c_CONTRASEÑA ,
1 ,
c_IDEMPLEADO );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inser_deta_pedi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inser_deta_pedi`(cod_ped varchar(7),nm_plato varchar(50), idemple varchar(7),cant int, descri varchar(100) )
BEGIN
declare idpla,idproduc varchar(7);
declare cantid int;
DECLARE fin INTEGER DEFAULT 0;
declare restar decimal(10,3);
declare recorre cursor for select dt.idproductos, dt.cantidad from detalle_plato as dt
inner join plato as pl on dt.idplato=pl.idplato 
inner join producto as p on p.idproductos= dt.idproductos where pl.idplato=fn_busca_id(nm_plato);
DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;
select IDPLATO into idpla from plato where PLATO=nm_plato;


insert into detalle_pedido values (fn_iddetapedi(),cod_ped,idpla,idemple,cant,1,descri);


open recorre;
read_loop:LOOP fetch recorre into  idproduc,cantid;
    if fin =1 then 
		LEAVE read_loop;
	end if;
set restar=cantid*truncate(cant,3);
    update producto set stock_actu=stock_actu-restar where idproductos=idproduc;
select cant,cantid;
end loop read_loop;
close recorre;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inser_pedi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inser_pedi`(in nm_mesa varchar(50),out idpedi varchar(7))
BEGIN
declare id varchar(7);
select idmesa into id from mesa where nombre = nm_mesa;
set idpedi=fn_idpedido();
insert into pedido values (idpedi,now(),1,id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inse_pedi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inse_pedi`(in nm_mesa varchar(50), out idpedi varchar(7))
BEGIN
declare id varchar(7);
declare idpe varchar(7);
declare conteo int;
select IDMESA into id from mesa where nombre = nm_mesa;
select count(pe.idpedido),pe.idpedido into conteo,idpe from pedido as pe inner join mesa as m on m.idmesa = pe.idmesa where pe.idmesa=id and m.color>=1;
	if  conteo=0 then
		set idpedi=fn_idpedido();
		insert into pedido values (idpedi,now(),1,id);
        update mesa set color = 1 where idmesa=id;
	elseif conteo!=0 then
		set idpedi=idpe;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta`(monto DECIMAL(10,2),comprobante varchar(20),nm_mesa varchar(20),tipo varchar(20),idemp varchar(7),idcli varchar(7))
BEGIN

	declare idco varchar(7);
    declare idme varchar(7);
    declare idpe varchar(7);
    declare idti varchar(7);
    declare idcaj varchar(7);
    declare igv DECIMAL(10,2);
    declare sub_mon DECIMAL(10,2);
    
    select idcomprobante into  idco from comprobante_pago where nombre=comprobante;
    select idmesa into idme from mesa where nombre=nm_mesa;
    select idpedido into idpe from pedido where idmesa = idme and estado=1 order by idpedido desc  limit 1;
    select idtipo into idti from tipo_pago where nombre=tipo;
    select idcaja into idcaj from caja_chica where fecha_fin is null;
    set sub_mon=monto/1.18;
    set igv=monto-sub_mon;
    insert into venta values(fn_idventa(),now(),fn_numeracion(idco),monto,igv,sub_mon,1,idco,idpe,idti,idemp,idcli,idcaj);
    
	update mesa set color = 0 where idmesa=idme;
    update pedido set estado=2 where idpedido=idpe;
    
    if tipo='EFECTIVO' then
		update caja_chica set efectivo= efectivo+monto, venta_total=venta_total+monto where idcaja=idcaj;	
    elseif tipo='TARJETA VISA' then 
		update caja_chica set tarjetas= tarjetas+monto, venta_total=venta_total+monto where idcaja=idcaj;
	elseif tipo='TARJETA MASTER' then
		update caja_chica set tarjetas= tarjetas+monto, venta_total=venta_total+monto where idcaja=idcaj;
	end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-08 13:53:45
