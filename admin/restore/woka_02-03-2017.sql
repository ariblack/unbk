DROP TABLE cbt_admin;

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL auto_increment,
  `XSekolah` varchar(250) collate latin1_general_ci NOT NULL,
  `XStatus` varchar(1) collate latin1_general_ci NOT NULL,
  `user` varchar(150) collate latin1_general_ci NOT NULL,
  `password` varchar(150) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_admin VALUES("2","","","admin","adminwoka");



DROP TABLE cbt_jawaban;

CREATE TABLE `cbt_jawaban` (
  `Urutan` int(11) NOT NULL auto_increment,
  `Urut` int(11) NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  `XTokenUjian` varchar(5) collate latin1_general_ci NOT NULL,
  `XA` int(11) NOT NULL,
  `XB` int(11) NOT NULL,
  `XC` int(11) NOT NULL,
  `XD` int(11) NOT NULL,
  `XE` int(11) NOT NULL,
  `XJawaban` varchar(1) collate latin1_general_ci NOT NULL,
  `XEssay` text collate latin1_general_ci NOT NULL,
  `XKodeJawab` varchar(2) collate latin1_general_ci NOT NULL,
  `XNilaiJawab` varchar(1) collate latin1_general_ci NOT NULL,
  `XNilai` int(2) NOT NULL,
  `XRagu` varchar(1) collate latin1_general_ci NOT NULL,
  `XTglJawab` date NOT NULL,
  `XJamJawab` time NOT NULL,
  `XKunciJawaban` varchar(1) collate latin1_general_ci NOT NULL,
  `XUserJawab` varchar(20) collate latin1_general_ci NOT NULL,
  `Campur` varchar(20) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urutan`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_jawaban VALUES("1","1","2","MTKUS","QKUGL","1","2","3","4","5","B","","XB","2","0","","2017-02-24","11:35:18","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("2","2","3","MTKUS","QKUGL","1","2","3","4","5","O","90","X","","5","","2017-02-24","11:35:46","1","12345","");
INSERT INTO cbt_jawaban VALUES("3","3","4","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:35:57","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("4","4","5","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:35:59","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("5","5","6","MTKUS","QKUGL","1","2","3","4","5","D","","XD","4","0","","2017-02-24","11:36:01","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("6","6","7","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:03","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("7","7","8","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:07","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("8","8","9","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:07","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("9","9","10","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:08","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("10","10","11","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:09","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("11","11","12","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:11","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("12","12","13","MTKUS","QKUGL","1","2","3","4","5","C","","XC","3","0","","2017-02-24","11:36:12","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("13","13","14","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:14","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("14","14","15","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:15","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("15","15","16","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:16","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("16","16","17","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:17","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("17","17","18","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:18","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("18","18","19","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:20","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("19","19","20","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:21","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("20","20","21","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:22","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("21","21","22","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:23","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("22","22","23","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:24","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("23","23","24","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:25","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("24","24","25","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:26","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("25","25","26","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:27","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("26","26","27","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:28","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("27","27","28","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:29","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("28","28","29","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:31","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("29","29","30","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:32","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("30","30","31","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:34","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("31","31","32","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:35","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("32","32","33","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:36","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("33","33","34","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:36","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("34","34","35","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:38","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("35","35","36","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:50","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("36","36","37","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:50","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("37","37","38","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:49","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("38","38","39","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:47","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("39","39","40","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:36:45","1","12345","QKUGL");
INSERT INTO cbt_jawaban VALUES("40","1","2","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:29","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("41","2","3","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("42","3","4","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:32","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("43","4","5","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:32","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("44","5","6","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:33","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("45","6","7","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:34","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("46","7","8","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:35","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("47","8","9","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:36","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("48","9","10","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:42","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("49","10","11","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:42","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("50","11","12","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:44","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("51","12","13","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:54","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("52","13","14","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:55","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("53","14","15","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:56","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("54","15","16","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:57","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("55","16","17","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:46:59","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("56","17","18","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:00","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("57","18","19","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:01","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("58","19","20","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:02","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("59","20","21","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:03","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("60","21","22","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:05","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("61","22","23","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:06","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("62","23","24","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:07","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("63","24","25","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:08","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("64","25","26","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:09","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("65","26","27","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:32","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("66","27","28","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:33","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("67","28","29","MTKUS","QKUGL","1","2","3","4","5","A","","XA","1","10","","2017-02-24","11:47:34","1","12346","QKUGL");
INSERT INTO cbt_jawaban VALUES("68","29","30","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("69","30","31","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("70","31","32","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("71","32","33","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("72","33","34","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("73","34","35","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("74","35","36","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("75","36","37","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("76","37","38","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("77","38","39","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("78","39","40","MTKUS","QKUGL","1","2","3","4","5","","","","","0","","2017-02-24","00:00:00","1","12346","");
INSERT INTO cbt_jawaban VALUES("79","1","40","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:55:19","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("80","2","38","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:55:21","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("81","3","39","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:55:22","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("82","4","35","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:55:24","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("83","5","36","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:55:25","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("84","6","37","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:55:27","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("85","7","34","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:55:29","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("86","8","33","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:55:30","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("87","9","32","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:55:32","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("88","10","30","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:55:33","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("89","11","31","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:55:35","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("90","12","28","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:55:37","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("91","13","26","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:55:40","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("92","14","27","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:55:41","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("93","15","29","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:55:43","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("94","16","25","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:55:45","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("95","17","24","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:55:47","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("96","18","21","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:55:49","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("97","19","22","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:55:53","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("98","20","23","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:55:55","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("99","21","20","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:55:57","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("100","22","18","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:55:58","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("101","23","19","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:56:01","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("102","24","15","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:56:03","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("103","25","16","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:56:07","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("104","26","17","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:56:10","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("105","27","14","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:56:12","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("106","28","13","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:56:14","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("107","29","12","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:56:16","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("108","30","9","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:56:18","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("109","31","10","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:56:20","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("110","32","11","MTKUS","JUKLO","1","2","3","4","5","E","","XE","5","0","","2017-03-02","09:56:23","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("111","33","8","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:56:26","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("112","34","7","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:56:28","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("113","35","5","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:56:30","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("114","36","6","MTKUS","JUKLO","1","2","3","4","5","A","","XA","1","1","","2017-03-02","09:56:32","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("115","37","1","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:56:34","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("116","38","2","MTKUS","JUKLO","1","2","3","4","5","B","","XB","2","0","","2017-03-02","09:56:35","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("117","39","3","MTKUS","JUKLO","1","2","3","4","5","D","","XD","4","0","","2017-03-02","09:56:38","1","12347","JUKLO");
INSERT INTO cbt_jawaban VALUES("118","40","4","MTKUS","JUKLO","1","2","3","4","5","C","","XC","3","0","","2017-03-02","09:56:39","1","12347","JUKLO");



DROP TABLE cbt_kelas;

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeLevel` varchar(5) collate latin1_general_ci NOT NULL,
  `XLevelKelas` varchar(5) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_kelas VALUES("1","SMA","XII","IPA1","1");
INSERT INTO cbt_kelas VALUES("2","SMK","XII","TKJ","1");
INSERT INTO cbt_kelas VALUES("3","SMA","XII","AA","1");
INSERT INTO cbt_kelas VALUES("4","SMA","XII","BB","1");
INSERT INTO cbt_kelas VALUES("5","SMA","XII","CC","1");



DROP TABLE cbt_mapel;

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_mapel VALUES("1","","BINDO","BAHASA INDONESIA","");
INSERT INTO cbt_mapel VALUES("2","","SMK2","IPA","");
INSERT INTO cbt_mapel VALUES("3","","SMK3","BAHASA INGGRIS TEKNIK","");
INSERT INTO cbt_mapel VALUES("4","","SMK4","BAHASA INGGRIS PARIWISATA","");
INSERT INTO cbt_mapel VALUES("5","","SMK5","MATEMATIKA TEKNIK","");
INSERT INTO cbt_mapel VALUES("6","","SMK6","MATEMATIKA PARIWISATA","");
INSERT INTO cbt_mapel VALUES("7","","SMK7","PRODUKTIF TKJ","");
INSERT INTO cbt_mapel VALUES("8","","SMK8","PRODUKTIF RPL","");
INSERT INTO cbt_mapel VALUES("9","","SMK9","PRODUKTIF TB","");
INSERT INTO cbt_mapel VALUES("10","","SMK10","PRODUKTIF MM","");
INSERT INTO cbt_mapel VALUES("11","","SMK11","PRODUKTIF TGB","");
INSERT INTO cbt_mapel VALUES("12","","SMK12","PRODUKTIF TKBB","");
INSERT INTO cbt_mapel VALUES("13","","SMK13","PRODUKTIF TPE","");
INSERT INTO cbt_mapel VALUES("14","","SMK14","PRODUKTIF TITL","");
INSERT INTO cbt_mapel VALUES("15","","SMA99","BAHASA INDONESIA 1","");
INSERT INTO cbt_mapel VALUES("16","","SMA100","IPA 2","");
INSERT INTO cbt_mapel VALUES("17","","SMA101","Bahasa Jerman","");
INSERT INTO cbt_mapel VALUES("18","","SMA102","Bahasa Jepang","");
INSERT INTO cbt_mapel VALUES("19","","SMA103","Matematika priktiwe","");
INSERT INTO cbt_mapel VALUES("20","","SMA104","Matematika Dasar","");



DROP TABLE cbt_siswa;

CREATE TABLE `cbt_siswa` (
  `Urut` int(11) NOT NULL auto_increment,
  `XNomerUjian` varchar(20) collate latin1_general_ci NOT NULL,
  `XNIK` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaSiswa` varchar(255) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XJenisKelamin` varchar(1) collate latin1_general_ci NOT NULL,
  `XPassword` varchar(150) collate latin1_general_ci NOT NULL,
  `XFoto` varchar(250) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa VALUES("1","12345","8637510","RAHMAN ARDI SAPUTRA","IPA1","XII","L","54321*","");
INSERT INTO cbt_siswa VALUES("2","12346","467645234","DEWI KURNIASIH ","IPA1","XII","L","64321*","");
INSERT INTO cbt_siswa VALUES("3","12347","784864827","ADNAN KEREN ","IPA1","XII","P","74321*","");
INSERT INTO cbt_siswa VALUES("4","12348","462736272","BUSTAMI CINGKRANG ","TKJ","XII","P","84321*","");
INSERT INTO cbt_siswa VALUES("5","12349","328472847","SIUHARNINGSIH","TKJ","XII","L","94321*","");



DROP TABLE cbt_siswa_ujian;

CREATE TABLE `cbt_siswa_ujian` (
  `Urut` int(11) NOT NULL auto_increment,
  `XNomerUjian` varchar(15) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `XJamUjian` time NOT NULL,
  `XMulaiUjian` time NOT NULL,
  `XLastUpdate` time NOT NULL,
  `XSisaWaktu` varchar(8) collate latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) collate latin1_general_ci NOT NULL,
  `XTargetUjian` time NOT NULL,
  `XTokenUjian` varchar(60) collate latin1_general_ci NOT NULL,
  `XSelesaiUjian` time NOT NULL,
  `XStatusUjian` varchar(1) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa_ujian VALUES("1","12345","IPA1","SMK5","MTKUS","40","2017-02-24 11:37:01","11:23:00","11:33:22","11:37:01","","01:49:38","00:00:00","QKUGL","00:00:00","9");
INSERT INTO cbt_siswa_ujian VALUES("2","12346","IPA1","SMK5","MTKUS","40","2017-02-24 11:51:17","11:23:00","11:46:22","11:51:17","","01:36:38","00:00:00","QKUGL","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("3","12347","IPA1","SMK2","MTKUS","40","2017-03-02 10:15:08","09:54:00","09:54:41","10:15:08","","01:59:19","00:00:00","JUKLO","00:00:00","9");



DROP TABLE cbt_soal;

CREATE TABLE `cbt_soal` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(5) collate latin1_general_ci NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XRagu` varchar(1) collate latin1_general_ci NOT NULL,
  `XTanya` text collate latin1_general_ci NOT NULL,
  `XAudioTanya` varchar(255) collate latin1_general_ci NOT NULL,
  `XVideoTanya` text collate latin1_general_ci NOT NULL,
  `XGambarTanya` text collate latin1_general_ci NOT NULL,
  `XJawab1` text collate latin1_general_ci NOT NULL,
  `XJawab2` text collate latin1_general_ci NOT NULL,
  `XJawab3` text collate latin1_general_ci NOT NULL,
  `XJawab4` text collate latin1_general_ci NOT NULL,
  `XJawab5` text collate latin1_general_ci NOT NULL,
  `XGambarJawab1` varchar(255) collate latin1_general_ci NOT NULL,
  `XGambarJawab2` varchar(255) collate latin1_general_ci NOT NULL,
  `XGambarJawab3` varchar(255) collate latin1_general_ci NOT NULL,
  `XGambarJawab4` varchar(255) collate latin1_general_ci NOT NULL,
  `XGambarJawab5` varchar(255) collate latin1_general_ci NOT NULL,
  `XKunciJawaban` varchar(1) collate latin1_general_ci NOT NULL,
  `Xidacak` int(1) NOT NULL,
  `XTypeSoal` int(1) NOT NULL,
  `XKkm` int(3) NOT NULL,
  `XPilSoal` int(1) NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_soal VALUES("193","SMK5","MTKUS","","40","","<img src=\"/unbk/pictures//s40-a.JPG\" />","","","","<img src=\"/unbk/pictures//s40-1.JPG\" />","<img src=\"/unbk/pictures//s40-2.JPG\" />","<img src=\"/unbk/pictures//s40-3.JPG\" />","<img src=\"/unbk/pictures//s40-4.JPG\" />","<img src=\"/unbk/pictures//s40-5.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("191","SMK5","MTKUS","","38","","<img src=\"/unbk/pictures//s38-a.JPG\" />","","","","16","15","20","- 16","- 15","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("192","SMK5","MTKUS","","39","","<img src=\"/unbk/pictures//s39-a.JPG\" />","","","","54","18","24","72","64","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("188","SMK5","MTKUS","","35","","Seorang pengelola perusahaan memerlukan 3 staf pengurus, yaitu ketua, sekretaris dan bendahara. Dia memiliki 7 calon. Banyaknya susunan staf pengurus yang mungkin adalah &hellip;","","","","210","105","42","35","30","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("189","SMK5","MTKUS","","36","","<img src=\"/unbk/pictures//s36.JPG\" />","","","","<img src=\"/unbk/pictures//s36-1.JPG\" />","<img src=\"/unbk/pictures//s36-2.JPG\" />","0","<img src=\"/unbk/pictures//s36-3.JPG\" />","<img src=\"/unbk/pictures//s36-4.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("190","SMK5","MTKUS","","37","","<img src=\"/unbk/pictures//s37-a.JPG\" />","","","","y = 2x + 7","y = - 2x + 7","y = 2x - 7","y = - 2x + 3","y = 2x + 3","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("187","SMK5","MTKUS","","34","","Dari angka 1, 2, 3, 4, 5, 6 dan 7 disusun bilangan ratusan genap. Banyaknya bilangan yang dapat disusun jika angka tidak boleh berulang adalah &hellip;","","","","90","120","80","40","20","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("186","SMK5","MTKUS","","33","","Sebuah kantong berisi 8 kelereng merah dan 6 kelereng biru. Jika diambil kelereng satu per satu tanpa pengembalian, maka peluang terambil kedua kelereng merah adalah &hellip;","","","","<img src=\"/unbk/pictures//s33-1.JPG\" />","<img src=\"/unbk/pictures//s33-2.JPG\" />","<img src=\"/unbk/pictures//s33-3.JPG\" />","<img src=\"/unbk/pictures//s33-4.JPG\" />","<img src=\"/unbk/pictures//s33-5.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("185","SMK5","MTKUS","","32","","Simpangan baku dari data 3, 4, 4, 5, 6, 6, 8, 9, 9, adalah &hellip;","","","","<img src=\"/unbk/pictures//s32-1.JPG\" />","<img src=\"/unbk/pictures//s32-2.JPG\" />","6","<img src=\"/unbk/pictures//s32-3.JPG\" />","<img src=\"/unbk/pictures//s32-4.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("183","SMK5","MTKUS","","30","","Kuartil bawah dari data pada tabel distribusi frekuensi di bawah adalah &hellip; <br /><img src=\"/unbk/pictures//s30-a.JPG\" />","","","","154,50","154,75","155,25","153,17","152,25","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("184","SMK5","MTKUS","","31","","Berat badan sekelompok siswa SMK disajikan pada tabel berikut. Modus dari data tersebut adalah ... <br /><img src=\"/unbk/pictures//s31-a.JPG\" />","","","","65,70","65,32","66,42","67,20","66,43","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("181","SMK5","MTKUS","","28","","Diagram disamping menunjukkan jenis olahraga yang disukai siswa di suatu sekolah. Persentase siswa yang menyukai olahraga volley adalah &hellip; <br /><img src=\"/unbk/pictures//s28-a.JPG\" />","","","","22%","26%","32%","33%","34%","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("179","SMK5","MTKUS","","26","","<img src=\"/unbk/pictures//s26-a.JPG\" />","","","","<img src=\"/unbk/pictures//s26-1.JPG\" />","<img src=\"/unbk/pictures//s26-2.JPG\" />","<img src=\"/unbk/pictures//s26-3.JPG\" />","<img src=\"/unbk/pictures//s26-4.JPG\" />","<img src=\"/unbk/pictures//s26-5.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("180","SMK5","MTKUS","","27","","<img src=\"/unbk/pictures//s27-a.JPG\" />","","","","20","40","80","<img src=\"/unbk/pictures//s27-1.JPG\" />","<img src=\"/unbk/pictures//s27-2.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("182","SMK5","MTKUS","","29","","Rata &ndash; rata berat badan sekelompok anak adalah 54 kg. Jika ditambahkan seorang anak yang beratnya 63 kg. Berat rata &ndash; ratanya menjadi 55,5 kg. Jumlah anak semula adalah &hellip; orang.","","","","5","4","6","7","8","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("178","SMK5","MTKUS","","25","","<img src=\"/unbk/pictures//s25-a.JPG\" />","","","","<img src=\"/unbk/pictures//s25-1.JPG\" />","<img src=\"/unbk/pictures//s25-2.JPG\" />","0","- 1","1","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("177","SMK5","MTKUS","","24","","<img src=\"/unbk/pictures//s24-a.JPG\" />","","","","8","<img src=\"/unbk/pictures//s24-1.JPG\" />","<img src=\"/unbk/pictures//s24-2.JPG\" />","16","<img src=\"/unbk/pictures//s24-3.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("174","SMK5","MTKUS","","21","","Diketahui sebuah kubus <em>ABCD.EFGH</em> . Besar sudut yang dibentuk oleh garis <em>BG</em> dengan bidang <em>BDHF</em> adalah &hellip;","","","","30<sup>o</sup>","15<sup>o</sup>","60<sup>o</sup>","90<sup>o</sup>","45<sup>o</sup>","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("175","SMK5","MTKUS","","22","","<img src=\"/unbk/pictures//s22-a.JPG\" />","","","","2x - 3y +17 = 0","2x + 3y +17 = 0","2x - 3y -17 = 0","3x - 2y +17 = 0","3x + 2y +17 = 0","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("176","SMK5","MTKUS","","23","","<img src=\"/unbk/pictures//s23-a.JPG\" />","","","","<img src=\"/unbk/pictures//s23-1.JPG\" />","<img src=\"/unbk/pictures//s23-2.JPG\" />","<img src=\"/unbk/pictures//s23-3.JPG\" />","<img src=\"/unbk/pictures//s23-4.JPG\" />","<img src=\"/unbk/pictures//s23-5.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("173","SMK5","MTKUS","","20","","Panjang rusuk sebuah kubus <em>ABCD.EFGH</em>&nbsp; adalah 6 cm. Jika T adalah titik potong diagonal alas kubus, maka jarak titik C ke garis <em>TG</em> adalah &hellip;&nbsp; cm.","","","","<img src=\"/unbk/pictures//S201.JPG\" />","<img src=\"/unbk/pictures//S202.JPG\" />","<img src=\"/unbk/pictures//S203.JPG\" />","<img src=\"/unbk/pictures//S204.JPG\" />","<img src=\"/unbk/pictures//S205.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("171","SMK5","MTKUS","","18","","<img src=\"/unbk/pictures//s18.JPG\" />","","","","23","30","56","15","16","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("172","SMK5","MTKUS","","19","","Salah satu diagonal rang kubus <em>CDEF.GHIJ</em>&nbsp; adalah &hellip;","","","","DJ","CE","HI","FD","GF","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("168","SMK5","MTKUS","","15","","Diketahui barisan geometri 54, 18, 6, 2, &hellip; . Rumus ke <em>n</em> barisan tersebut adalah &hellip;","","","","<img src=\"/unbk/pictures//s151.JPG\" />","<img src=\"/unbk/pictures//s152.JPG\" />","<img src=\"/unbk/pictures//s153.JPG\" />","<img src=\"/unbk/pictures//s154.JPG\" />","<img src=\"/unbk/pictures//s155.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("169","SMK5","MTKUS","","16","","<img src=\"/unbk/pictures//s16.JPG\" /><img src=\"/unbk/pictures//s16a.JPG\" />","","","","II","I","III","IV","V","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("170","SMK5","MTKUS","","17","","<img src=\"/unbk/pictures//s17.JPG\" />","","","","<img src=\"/unbk/pictures//s171.JPG\" />","<img src=\"/unbk/pictures//s172.JPG\" />","<img src=\"/unbk/pictures//s173.JPG\" />","<img src=\"/unbk/pictures//s174.JPG\" />","<img src=\"/unbk/pictures//s175.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("167","SMK5","MTKUS","","14","","Dalam suatu ruang pertemuan ada 15 baris kursi. Di barisan paling depan ada 20 kursi, di barisan kedua ada 24 kursi, di barisan ketiga ada 28 kursi, begitu seterusnya dengan pertambahan tetap. Banyak kursi dalam ruang pertemuan tersebut adalah &hellip;","","","","720","700","660","650","620","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("166","SMK5","MTKUS","","13","","Diberikan barisan aritmatika 2, 5, 8, 11, &hellip; , 68. Banyaknya suku barisan tersebut adalah &hellip;","","","","23","24","25","21","22","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("165","SMK5","MTKUS","","12","","Gambar grafik berikut adalah grafik dari &hellip;<br /><img src=\"/unbk/pictures//s12.JPG\" width=\"154\" height=\"163\" />","","","","<img src=\"/unbk/pictures//s121.JPG\" />","<img src=\"/unbk/pictures//s122.JPG\" />","<img src=\"/unbk/pictures//s123.JPG\" />","<img src=\"/unbk/pictures//s124.JPG\" />","<img src=\"/unbk/pictures//s125.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("162","SMK5","MTKUS","","9","","Jika akar &ndash; akar persamaan kuadrat adalah &ndash; 2 dan 3, maka persamaan kuadratnya adalah &hellip;","","","","<img src=\"/unbk/pictures//s91.JPG\" />","<img src=\"/unbk/pictures//s92.JPG\" />","<img src=\"/unbk/pictures//s93.JPG\" />","<img src=\"/unbk/pictures//s94.JPG\" />","<img src=\"/unbk/pictures//s95.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("163","SMK5","MTKUS","","10","","<img src=\"/unbk/pictures//s10.JPG\" />","","","","20","10","8","6","4","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("164","SMK5","MTKUS","","11","","<img src=\"/unbk/pictures//s111.JPG\" />","","","","<img src=\"/unbk/pictures//s1111.JPG\" />","<img src=\"/unbk/pictures//s112.JPG\" />","<img src=\"/unbk/pictures//s113.JPG\" />","<img src=\"/unbk/pictures//s114.JPG\" />","<img src=\"/unbk/pictures//s115.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("161","SMK5","MTKUS","","8","","<img src=\"/unbk/pictures//s8.JPG\" />","","","","<img src=\"/unbk/pictures//s81.JPG\" />","<img src=\"/unbk/pictures//s82.JPG\" />","<img src=\"/unbk/pictures//s83.JPG\" />","<img src=\"/unbk/pictures//s84.JPG\" />","<img src=\"/unbk/pictures//s85.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("160","SMK5","MTKUS","","7","","<img src=\"/unbk/pictures//s7.JPG\" />","","","","112","108","116","224","226","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("158","SMK5","MTKUS","","5","","<img src=\"/unbk/pictures//s5.JPG\" />","","","","2 , 2&nbsp; dan 5","2 , - 2&nbsp; dan 7","&ndash; 2 , 2 dan &ndash; 5","5 , 2 dan 2","2 , 5 dan 2","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("159","SMK5","MTKUS","","6","","<img src=\"/unbk/pictures//s6.JPG\" />","","","","<img src=\"/unbk/pictures//s61.JPG\" />","<img src=\"/unbk/pictures//s62.JPG\" />","<img src=\"/unbk/pictures//s63.JPG\" />","<img src=\"/unbk/pictures//s64.JPG\" />","<img src=\"/unbk/pictures//s65.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("154","SMK5","MTKUS","","1","","<img src=\"/unbk/pictures//s11.JPG\" />","","","","4","1","2","8","16","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("155","SMK5","MTKUS","","2","","<img src=\"/unbk/pictures//s21.JPG\" />","","","","<img src=\"/unbk/pictures//s211.JPG\" />","<img src=\"/unbk/pictures//s22.JPG\" />","74","<img src=\"/unbk/pictures//s23.JPG\" />","<img src=\"/unbk/pictures//s24.JPG\" />","","","","","","1","0","0","76","5");
INSERT INTO cbt_soal VALUES("156","SMK5","MTKUS","","3","","<img src=\"/unbk/pictures//s3.JPG\" />","","","","12","16","9","6","3","","","","","","1","0","1","76","5");
INSERT INTO cbt_soal VALUES("157","SMK5","MTKUS","","4","","<img src=\"/unbk/pictures//s4.JPG\" />","","","","Rp. 25.500.000,00","Rp. 24.750.000,00","Rp. 24.250.000,00","Rp. 23.500.000,00","Rp. 23.000.000,00","","","","","","1","0","0","76","5");



DROP TABLE cbt_tabel_data;

CREATE TABLE `cbt_tabel_data` (
  `id` int(5) NOT NULL auto_increment,
  `nama_file` varchar(20) collate latin1_general_ci NOT NULL,
  `ukuran` varchar(10) collate latin1_general_ci NOT NULL,
  `url` varchar(50) collate latin1_general_ci NOT NULL,
  `tgl_upload` varchar(20) collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;




DROP TABLE cbt_ujian;

CREATE TABLE `cbt_ujian` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` date NOT NULL,
  `XJamUjian` time NOT NULL,
  `XBatasMasuk` time NOT NULL,
  `XSisaWaktu` varchar(8) collate latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) collate latin1_general_ci NOT NULL,
  `XTokenUjian` varchar(60) collate latin1_general_ci NOT NULL,
  `XStatusUjian` varchar(1) collate latin1_general_ci NOT NULL,
  `XNilai` int(1) NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_ujian VALUES("2","IPA1","SMK2","MTKUS","40","2017-03-02","09:54:00","10:30:00","","02:00:00","JUKLO","1","1");



