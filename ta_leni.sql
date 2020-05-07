/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.32-MariaDB : Database - ta_leni
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ta_leni` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ta_leni`;

/*Table structure for table `absensi` */

DROP TABLE IF EXISTS `absensi`;

CREATE TABLE `absensi` (
  `nik` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `start_hour` time DEFAULT NULL,
  `end_hour` time DEFAULT NULL,
  `duration` int(5) DEFAULT NULL,
  `activiy` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nik`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `absensi` */

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` varchar(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`id`,`name`,`address`,`phone`,`npwp`) values 
('01','CV. Maju Mundur','Jakarta','021-31264587','12.345.645.9-412.000'),
('02','PT Maju Terus','Jakarta','021-31264588','12.345.645.9-412.001'),
('03','PT Anugrah','Jakarta','021-31264589','12.345.645.9-412.002'),
('04','PT Sejahtera','Jakarta','021-31264590','12.345.645.9-412.003'),
('05','PT Raya Insan','Jakarta','021-31264591','12.345.645.9-412.004'),
('06','Bank ABC','Jakarta','021-31264592','12.345.645.9-412.005'),
('07','Bank BUO','Jakarta','021-31264593','12.345.645.9-412.006'),
('08','Bank Kota','Jakarta','021-31264594','12.345.645.9-412.007'),
('09','PT Satu Dua Tiga','Jakarta','021-31264595','12.345.645.9-412.008'),
('10','PT Sehat Terus','Jakarta','021-31264596','12.345.645.9-412.009'),
('11','PT Panjang Umur','Jakarta','021-31264597','12.345.645.9-412.010'),
('12','PT Adi Karya','Jakarta','021-31264598','12.345.645.9-412.011'),
('13','PT Lancar Jaya','Jakarta','021-31264599','12.345.645.9-412.012'),
('14','PT Makmur Sentosa','Jakarta','021-31264600','12.345.645.9-412.013');

/*Table structure for table `jabatan` */

DROP TABLE IF EXISTS `jabatan`;

CREATE TABLE `jabatan` (
  `id` varchar(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jabatan` */

insert  into `jabatan`(`id`,`name`) values 
('01','IT Software Quality Assurance');

/*Table structure for table `karyawan` */

DROP TABLE IF EXISTS `karyawan`;

CREATE TABLE `karyawan` (
  `nik` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_client` varchar(5) NOT NULL,
  `position` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_type` varchar(2) DEFAULT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `religion` varchar(10) DEFAULT NULL,
  `citizenship` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_type` varchar(10) DEFAULT NULL,
  `id_number` varchar(50) DEFAULT NULL,
  `card_expired` varchar(20) DEFAULT NULL,
  `street` varchar(150) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `original_street` varchar(150) DEFAULT NULL,
  `original_city` varchar(20) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `ptkp_code` varchar(10) DEFAULT NULL,
  `ptkp_name` varchar(30) DEFAULT NULL,
  `name_of_bank` varchar(20) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `salary` varchar(10) DEFAULT NULL,
  `allowance` varchar(20) DEFAULT NULL,
  `overtime_allowance` varchar(20) DEFAULT NULL,
  `education_level` varchar(5) DEFAULT NULL,
  `education_major` varchar(30) DEFAULT NULL,
  `institution_name` varchar(30) DEFAULT NULL,
  `graduation_year` year(4) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `contract_of_period` int(5) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `billing_rate` varchar(10) DEFAULT NULL,
  `employee_status` varchar(20) DEFAULT NULL,
  `inactived_date` date DEFAULT NULL,
  `inactive_reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nik`,`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `karyawan` */

insert  into `karyawan`(`nik`,`name`,`id_client`,`position`,`birth_date`,`birth_place`,`gender`,`blood_type`,`marital_status`,`religion`,`citizenship`,`phone`,`email`,`id_type`,`id_number`,`card_expired`,`street`,`city`,`country`,`state`,`original_street`,`original_city`,`npwp`,`ptkp_code`,`ptkp_name`,`name_of_bank`,`bank_account`,`salary`,`allowance`,`overtime_allowance`,`education_level`,`education_major`,`institution_name`,`graduation_year`,`join_date`,`contract_of_period`,`end_date`,`billing_rate`,`employee_status`,`inactived_date`,`inactive_reason`) values 
('2020001','Leny Andriani','001','IT Software Quality Assurance','0000-00-00','Jakarta','Female','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 75, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 75, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456789','50000000','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2021','50000000','0000-00-00',''),
('2020002','Rida Sinta','002','IT Software Quality Assurance','0000-00-00','Jakarta','Female','O','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 76, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 76, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456790','50000001','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2022','50000001','0000-00-00',''),
('2020003','Zaza Nur','003','IT Software Quality Assurance','0000-00-00','Jakarta','Female','A','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 77, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 77, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456791','50000002','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2023','50000002','0000-00-00',''),
('2020004','Anissa','004','IT Software Quality Assurance','0000-00-00','Jakarta','Female','A','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 78, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 78, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456792','50000003','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2024','50000003','0000-00-00',''),
('2020005','Dewi Utami','005','IT Software Quality Assurance','0000-00-00','Jakarta','Female','A','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 79, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 79, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456793','50000004','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2025','50000004','0000-00-00',''),
('2020006','Aisyah Sholehah','006','IT Software Quality Assurance','0000-00-00','Bogor','Female','A','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 80, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 80, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456794','50000005','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2026','50000005','0000-00-00',''),
('2020007','Dara Lestari','007','IT Software Quality Assurance','0000-00-00','Bandung','Female','A','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 81, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 81, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456795','50000006','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2027','50000006','0000-00-00',''),
('2020008','Oki','008','IT Software Quality Assurance','0000-00-00','Medan','Male','A','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 82, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 82, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456796','50000007','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2028','50000007','0000-00-00',''),
('2020009','Eko','009','IT Software Quality Assurance','0000-00-00','Jakarta','Male','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 83, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 83, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456797','50000008','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2029','50000008','0000-00-00',''),
('2020010','oka','010','IT Software Quality Assurance','0000-00-00','Jakarta','Male','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 84, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 84, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456798','50000009','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2030','50000009','0000-00-00',''),
('2020011','Dita','011','IT Software Quality Assurance','0000-00-00','Jakarta','Female','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 85, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 85, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456799','50000010','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2031','50000010','0000-00-00',''),
('2020012','Dinda','012','IT Software Quality Assurance','0000-00-00','Jakarta','Female','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 86, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 86, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456800','50000011','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2032','50000011','0000-00-00',''),
('2020013','Dini','013','IT Software Quality Assurance','0000-00-00','Jakarta','Female','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 87, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 87, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456801','50000012','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2033','50000012','0000-00-00',''),
('2020014','Tika','014','IT Software Quality Assurance','0000-00-00','Jakarta','Female','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 88, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 88, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456802','50000013','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2034','50000013','0000-00-00',''),
('2020015','Tiwi','015','IT Software Quality Assurance','0000-00-00','Jakarta','Female','B','Single','Islam','Indonesia','+6287885422990','nonlenyandriani@gmail.com','KTP','327601610920003','Depok','Seumur Hidup','Jl. Salak 3 No. 89, ','Depok','Indonesia','Jawa Barat','Jl. Salak 3 No. 89, ','Depok','12.345.678','TK/0','TIDAK KAWIN, 0 ANAK','ABC','123456803','50000014','','','S1','TI',0000,'0000-00-00',1,'0000-00-00','31/3/2035','50000014','0000-00-00','');

/*Table structure for table `spl` */

DROP TABLE IF EXISTS `spl`;

CREATE TABLE `spl` (
  `nik` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `overtime_date` date DEFAULT NULL,
  `clock_in` time DEFAULT NULL,
  `clock_out` time DEFAULT NULL,
  `total_hour` int(11) DEFAULT NULL,
  `convertion_hour` varchar(20) DEFAULT NULL,
  `activity` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `spl` */

/*Table structure for table `user_login` */

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `nik` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `level` enum('user','manager','admin') DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_login` */

insert  into `user_login`(`nik`,`name`,`level`,`password`) values 
('2020','Leni','admin','admin'),
('2021','Wahyudi','user','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
