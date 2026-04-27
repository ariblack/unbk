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
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_jawaban VALUES("1","1","1","IPA","SVHJR","1","2","3","4","5","B","","XB","2","0","","2017-02-17","11:04:33","4","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("2","2","2","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("3","3","3","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("4","4","4","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("5","5","5","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("6","6","6","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("7","7","7","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("8","8","8","IPA","SVHJR","1","2","3","4","5","E","","XE","5","0","","2017-02-17","11:07:29","4","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("9","9","9","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:07:35","3","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("10","10","10","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("11","11","11","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:07:37","2","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("12","12","12","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:07:39","3","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("13","13","13","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:07:41","2","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("14","14","14","IPA","SVHJR","1","2","3","4","5","C","","XC","3","10","","2017-02-17","11:07:44","3","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("15","15","15","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","0","2017-02-17","11:07:50","3","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("16","16","16","IPA","SVHJR","1","2","3","4","5","C","","XC","3","0","","2017-02-17","11:07:52","1","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("17","17","17","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:07:55","2","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("18","18","18","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("19","19","19","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:07:59","2","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("20","20","20","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("21","21","21","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("22","22","22","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("23","23","23","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("24","24","24","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("25","25","25","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("26","26","26","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("27","27","27","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("28","28","28","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("29","29","29","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("30","30","30","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("31","31","31","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","5","a1","");
INSERT INTO cbt_jawaban VALUES("32","32","32","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("33","33","33","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("34","34","34","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("35","35","35","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","5","a1","");
INSERT INTO cbt_jawaban VALUES("36","36","36","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("37","37","37","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("38","38","38","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("39","39","39","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("40","40","40","IPA","SVHJR","1","2","3","4","5","A","","XA","1","0","","2017-02-17","11:06:51","4","a1","SVHJR");
INSERT INTO cbt_jawaban VALUES("41","1","1","IPA","SVHJR","1","2","3","4","5","C","","XC","3","0","","2017-02-17","11:23:32","4","A2","SVHJR");
INSERT INTO cbt_jawaban VALUES("42","2","2","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("43","3","3","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("44","4","4","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("45","5","5","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","A2","");
INSERT INTO cbt_jawaban VALUES("46","6","6","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("47","7","7","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("48","8","8","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("49","9","9","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("50","10","10","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("51","11","11","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("52","12","12","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("53","13","13","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("54","14","14","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("55","15","15","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("56","16","16","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","A2","");
INSERT INTO cbt_jawaban VALUES("57","17","17","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("58","18","18","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("59","19","19","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("60","20","20","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("61","21","21","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("62","22","22","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("63","23","23","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("64","24","24","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("65","25","25","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","A2","");
INSERT INTO cbt_jawaban VALUES("66","26","26","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","A2","");
INSERT INTO cbt_jawaban VALUES("67","27","27","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("68","28","28","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("69","29","29","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("70","30","30","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("71","31","31","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","5","A2","");
INSERT INTO cbt_jawaban VALUES("72","32","32","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("73","33","33","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("74","34","34","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","3","A2","");
INSERT INTO cbt_jawaban VALUES("75","35","35","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","5","A2","");
INSERT INTO cbt_jawaban VALUES("76","36","36","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("77","37","37","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","A2","");
INSERT INTO cbt_jawaban VALUES("78","38","38","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","1","A2","");
INSERT INTO cbt_jawaban VALUES("79","39","39","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","2","A2","");
INSERT INTO cbt_jawaban VALUES("80","40","40","IPA","SVHJR","1","2","3","4","5","","","","","0","","2017-02-17","00:00:00","4","A2","");
INSERT INTO cbt_jawaban VALUES("81","1","1","IPA","LTXST","1","2","3","4","5","A","","XA","1","0","","2017-02-18","11:19:27","4","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("82","2","2","IPA","LTXST","1","2","3","4","5","C","","XC","3","0","","2017-02-18","11:19:30","4","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("83","3","3","IPA","LTXST","1","2","3","4","5","B","","XB","2","0","","2017-02-18","11:19:32","3","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("84","4","4","IPA","LTXST","1","2","3","4","5","A","","XA","1","0","","2017-02-18","11:19:34","4","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("85","5","5","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("86","6","6","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("87","7","7","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("88","8","8","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("89","9","9","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("90","10","10","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("91","11","11","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("92","12","12","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("93","13","13","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("94","14","14","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("95","15","15","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("96","16","16","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("97","17","17","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("98","18","18","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("99","19","19","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("100","20","20","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("101","21","21","IPA","LTXST","1","2","3","4","5","B","","XB","2","10","","2017-02-18","11:19:42","2","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("102","22","22","IPA","LTXST","1","2","3","4","5","C","","XC","3","10","","2017-02-18","11:19:56","3","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("103","23","23","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("104","24","24","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("105","25","25","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("106","26","26","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("107","27","27","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("108","28","28","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("109","29","29","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("110","30","30","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("111","31","31","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","5","a1","");
INSERT INTO cbt_jawaban VALUES("112","32","32","IPA","LTXST","1","2","3","4","5","C","","XC","3","0","","2017-02-18","11:19:38","4","a1","LTXST");
INSERT INTO cbt_jawaban VALUES("113","33","33","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("114","34","34","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","3","a1","");
INSERT INTO cbt_jawaban VALUES("115","35","35","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","5","a1","");
INSERT INTO cbt_jawaban VALUES("116","36","36","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("117","37","37","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("118","38","38","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","1","a1","");
INSERT INTO cbt_jawaban VALUES("119","39","39","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","2","a1","");
INSERT INTO cbt_jawaban VALUES("120","40","40","IPA","LTXST","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","4","a1","");
INSERT INTO cbt_jawaban VALUES("121","1","1","BING","ASDPP","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","5","a1","");
INSERT INTO cbt_jawaban VALUES("122","2","2","BING","ASDPP","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("123","3","3","BING","ASDPP","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("124","4","4","BING","ASDPP","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("125","5","5","BING","ASDPP","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("126","1","1","BING","HQCPT","1","2","3","4","5","O","yesysyy","X","","10","","2017-02-18","20:46:30","5","a1","");
INSERT INTO cbt_jawaban VALUES("127","2","2","BING","HQCPT","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("128","3","3","BING","HQCPT","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("129","4","4","BING","HQCPT","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");
INSERT INTO cbt_jawaban VALUES("130","5","5","BING","HQCPT","1","2","3","4","5","","","","","0","","2017-02-18","00:00:00","","a1","");



DROP TABLE cbt_kelas;

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeLevel` varchar(5) collate latin1_general_ci NOT NULL,
  `XLevelKelas` varchar(5) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_kelas VALUES("9","SMA","XII","IPS2","1");
INSERT INTO cbt_kelas VALUES("8","SMA","XII","IPA2","1");
INSERT INTO cbt_kelas VALUES("7","SMA","XII","IPA1","1");
INSERT INTO cbt_kelas VALUES("6","SMA","XII","IPA","1");



DROP TABLE cbt_mapel;

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_mapel VALUES("1","","BINDO","BAHASA INDONESIA","");
INSERT INTO cbt_mapel VALUES("2","","MTK","MATEMATIKA","");
INSERT INTO cbt_mapel VALUES("3","","IPA","ILMU PENGETAHUAN ALAM","");
INSERT INTO cbt_mapel VALUES("8","","BING","BAHASA INGGRIS","");
INSERT INTO cbt_mapel VALUES("7","","FIS","FISIKA","");



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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa VALUES("1","1432","1297644","ardi","IPA1","XII","L","ardi","");
INSERT INTO cbt_siswa VALUES("2","A1","SMK00101","SOKRAN","IPA1","XII","L","A1","");
INSERT INTO cbt_siswa VALUES("3","A2","SMK00102","KARTOLO","IPA1","XII","L","A2","");
INSERT INTO cbt_siswa VALUES("4","A3","SMK00103","BASMAN","IPA1","XII","L","A3","");
INSERT INTO cbt_siswa VALUES("5","A4","SMK00104","SAPARI","IPA1","XII","L","A4","");
INSERT INTO cbt_siswa VALUES("6","A5","SMK00105","TINI","IPA1","XII","L","A5","");
INSERT INTO cbt_siswa VALUES("7","A6","SMK00106","KASPARI","IPA1","XII","P","A6","");
INSERT INTO cbt_siswa VALUES("8","A7","SMK00107","BAMBANG GENTOLET","IPA1","XII","L","A7","");
INSERT INTO cbt_siswa VALUES("9","A8","SMK00108","SHOLEH","IPA1","XII","L","A8","");
INSERT INTO cbt_siswa VALUES("10","A9","SMK00109","WONOKAIRUN","IPA1","XII","L","A9","");
INSERT INTO cbt_siswa VALUES("12","A11","SMK00111","LUMUT","IPA1","XII","P","A11","");
INSERT INTO cbt_siswa VALUES("13","A12","SMK00112","KIRUN","IPA1","XII","L","A12","");
INSERT INTO cbt_siswa VALUES("14","A13","SMK00113","SIDIK","IPA1","XII","L","A13","");
INSERT INTO cbt_siswa VALUES("15","A14","SMK00114","WAKIDI","IPA1","XII","L","A14","");
INSERT INTO cbt_siswa VALUES("16","A15","SMK00115","MUKIDI","IPA1","XII","L","A15","");
INSERT INTO cbt_siswa VALUES("17","A16","SMK00116","GUNDALA PUTRAPETIR","IPA1","XII","L","A16","");
INSERT INTO cbt_siswa VALUES("18","A17","SMK00117","MATBUKRI","IPA1","XII","L","A17","");
INSERT INTO cbt_siswa VALUES("19","A18","SMK00118","BUNALI","IPA2","XII","L","A18","");
INSERT INTO cbt_siswa VALUES("20","A19","SMK00119","EKO LONDHO","IPA2","XII","L","A19","");
INSERT INTO cbt_siswa VALUES("21","A20","SMK00120","DIDIK MANGKUPROJO","IPA2","XII","L","A20","");
INSERT INTO cbt_siswa VALUES("22","A21","SMK00121","PARTO","IPA2","XII","L","A21","");
INSERT INTO cbt_siswa VALUES("23","A22","SMK00122","DONO","IPA2","XII","L","A22","");
INSERT INTO cbt_siswa VALUES("24","A23","SMK00123","KASINO","IPA2","XII","L","A23","");
INSERT INTO cbt_siswa VALUES("25","A24","SMK00124","INDRO","IPA2","XII","L","A24","");
INSERT INTO cbt_siswa VALUES("26","A25","SMK00125","TESSY RIWAYATI","IPA2","XII","L","A25","");
INSERT INTO cbt_siswa VALUES("27","A26","SMK00126","SUSSY","IPA2","XII","P","A26","");
INSERT INTO cbt_siswa VALUES("28","A27","SMK00127","ISYE","IPA2","XII","P","A27","");
INSERT INTO cbt_siswa VALUES("29","A28","SMK00128","BOGEL","IPA2","XII","P","A28","");
INSERT INTO cbt_siswa VALUES("30","A29","SMK00129","KUCRIT","IPA2","XII","L","A29","");
INSERT INTO cbt_siswa VALUES("31","A30","SMK00130","GEBOL","IPA2","XII","L","A30","");



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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa_ujian VALUES("1","a1","IPA1","IPA","IPA","40","2017-02-18 20:46:30","11:03:00","11:04:28","20:46:30","","01:58:32","00:00:00","SVHJR","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("2","A2","IPA1","IPA","IPA","40","2017-02-17 11:23:32","11:03:00","11:23:11","11:23:32","","01:39:49","00:00:00","SVHJR","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("3","a1","","","","0","2017-02-18 20:46:30","00:00:00","10:39:14","20:46:30","","-10:-39:","00:00:00","","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("4","a1","IPA1","","IPA","40","2017-02-18 20:46:30","10:37:00","10:44:40","20:46:30","","01:52:20","00:00:00","LTXST","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("5","a1","IPA1","BINDO","BING","5","2017-02-18 20:46:30","20:35:00","20:43:33","20:46:30","","01:51:27","00:00:00","ASDPP","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("6","a1","IPA1","BINDO","BING","5","2017-02-18 20:46:30","20:45:00","20:45:17","20:46:30","","01:59:43","00:00:00","HQCPT","00:00:00","1");



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
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_soal VALUES("121","BINDO","dfsdfs","","1","","","","","","","","","","","","","","","","","1","0","75");
INSERT INTO cbt_soal VALUES("122","BINDO","dfsdfs","","2","","","","","","","","","","","","","","","","","1","0","75");
INSERT INTO cbt_soal VALUES("120","BING","BING","","5","","","","","","","","","","","","","","","","","0","0","75");
INSERT INTO cbt_soal VALUES("119","BING","BING","","4","","","","","","","","","","","","","","","","","0","0","75");
INSERT INTO cbt_soal VALUES("116","BING","BING","","1","","cxvcbvfvcxvc","","","","","","","","","","","","","","5","0","1","75");
INSERT INTO cbt_soal VALUES("117","BING","BING","","2","","","","","","","","","","","","","","","","","0","0","75");
INSERT INTO cbt_soal VALUES("118","BING","BING","","3","","","","","","","","","","","","","","","","","0","0","75");
INSERT INTO cbt_soal VALUES("115","BINDO","BINDO","","5","","","","","","","","","","","","","","","","","1","0","78");
INSERT INTO cbt_soal VALUES("111","BINDO","BINDO","","1","","<img src=\"/unbk/pictures//7.PNG\" width=\"302\" height=\"131\" /><br /><br />fdsfsdfdsf","","","","","","","","","","","","","","5","1","1","78");
INSERT INTO cbt_soal VALUES("112","BINDO","BINDO","","2","","","","","","","","","","","","","","","","","1","0","78");
INSERT INTO cbt_soal VALUES("113","BINDO","BINDO","","3","","","","","","","","","","","","","","","","","1","0","78");
INSERT INTO cbt_soal VALUES("114","BINDO","BINDO","","4","","","","","","","","","","","","","","","","","1","0","78");
INSERT INTO cbt_soal VALUES("71","IPA","IPA","","1","","Terjadinya tabrakan pengiriman data pada suatu jaringan komputer dikenal dengan istilah&hellip;?","1234567890.mp3","","","Fusion","Broken","Attacking","Collision","Explode","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("72","IPA","IPA","","2","","Pada sebuah PC yang mempunyai VGA Card Onboard dapat diaktifkan maupun di non aktifkan melalui …?","","","","Software Aplikasi","Sistem Operasi","Saklar Mekanik","BIOS","Power Supply","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("73","IPA","IPA","","3","","Dalam log sheet perawatan dan perbaikan komputer yang perlu dilaporkan meliputi, kecuali…?","","","","Tindakan korektif yang dilakukan untuk melakukan perbaikan terhadap periferal.","Gejala kerusakan","Toko di mana periferal di beli�","Tanggal dan waktu kapan dilakukan maintenance","Nama periferal dan spesifikasi","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("74","IPA","IPA","","4","","Jika terjadi muncul peringatan pada monitor printer “paper jam”, disebabkan karena…?","","","","Kertas pada printer habis","Roller printer aus","Tinta arsober pada printer penuh","Kertas masuk tidak simetris�","Tinta pada inktank habis","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("75","IPA","IPA","","5","","DirectX merupakan tool bawaan windows yang digunakan untuk mendiagnosa semua hardware yang berhubungan dengan …?","","","","Grafis, network dan multimedia","Prosesor","RAM","Keyboard, mouse, printer","Power supply","","","","","","1","0","0","0");
INSERT INTO cbt_soal VALUES("76","IPA","IPA","","6","","Pada waktu komputer dinyalakan muncul bunyi beep 1 kali panjang dan 3 kali pendek maka terdapat masalah pada pemasangan komponen …?","","","","Prosesor","RAM","VGA Card","Motherboard","Power Suplly","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("77","IPA","IPA","","7","","Nama / identity dari Access Point disebut …?","","","","WEP","WAP","WPA","SSID�","MAC Address","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("78","IPA","IPA","","8","","Windows adalah salah satu contoh sistem operasi berbasis GUI, kepanjangan dari GUI adalah…?","","","","Graphical User Input","Graphical User Instruction","Graphical User Interconection","Graphical User Interface�","Graphical User Interactive","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("79","IPA","IPA","","9","",".  Perintah linux untuk melihat isi dalam suatu direktori adalah…?","","","","Dir","Chdir","Ls","Ifconfig","Cp","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("80","IPA","IPA","","10","","Kelebihan dari topologi STAR adalah, kecuali?","","","","Penambahan atau pengurangan terminal sangat mudah dan tidak mengganggu bagian jaringan yang lain","Paling fleksibel karena pemasangan kabel mudah","Kemudahan dalam isolasi kesalahan serta memudahkan pengelolaan jaringan","Boros kabel","Kontrol terpusat sehingga memudahkan dalam deteksi kesalahan","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("81","IPA","IPA","","11","","Apabila dari perintah ping muncul keterangan “Request timed out” berarti…?","","","","Hubungan kedua komputer berjalan secara normal.","Hubungan kedua komputer terputus","Topologi jaringan tidak sesuai","Internet tidak terhubung","Masalah pada server","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("82","IPA","IPA","","12","","Lihat gambar di atas, pada Device Manager muncul tanda seperti di atas, hal inimenunjukkan ….?","","","","Driver komponen komputer berhasil di install","Driver komponen komputer tidak sesuai dengan spesifikasi yang diharapkan","Driver komponen komputer belum di install�","Komponen komputer di non aktifkan","Komponen komputer Plug and Play","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("83","IPA","IPA","","13","","Antar muka yang bertugas menerjemahkan satuan informasi terkecil di layer fisik adalah.....?","","","","USB","LAN Card","Kabel UTP","Firewire","RJ 45","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("84","IPA","IPA","","14","","Untuk memeriksa hasil pemasangan konektor RJ 45 pada kabel UTP kita gunakan…?","","","","Tang krimping","Multitester","LAN Tester","POE","Konektor","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("85","IPA","IPA","","15","","Untuk menguatkan sinyal pada kabel jaringan lokal diperlukan alat…?","","","","Bridge","Gateway","Repeater","Amplifier","Router","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("86","IPA","IPA","","16","","Perintah untuk menunjukkan rute yang dilewati paket untuk mencapai suatu tujuan adalah…?","","","","Tracert","Ping","Netstat","Looklan","Host","","","","","","1","0","0","0");
INSERT INTO cbt_soal VALUES("87","IPA","IPA","","17","","Pada Ms. Windows 2003 Server untuk mengkonfigurasi Web Server kita pilih menu…?","","","","Cluster Administrator","Internet Information Services (IIS) Manager","Routing and Remote Access","DNS","Data Sources (ODBC)","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("88","IPA","IPA","","18","","Setelah system operasi diinstall, ternyata Sound untuk Audio speaker tidak bisa disetting high sound or equalizer. Selalu saja default,  yang harus dilakukan agar equalizer berubah adalah …?","","","","Mengganti Mainboard","Merubah posisi Speaker�","Menginstall driver Sound-nya�","Mengganti Speaker","Menginstall ulang system operasi","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("89","IPA","IPA","","19","","Host Dibawah ini adalah yang sistem operasi jaringan berbasis GUI…?","","","","Ms. Windows 98","Ms.Windows 2003 Server�","Ms. Windows XP","Ms. Windows Vista","Ms. Windows Milenium","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("90","IPA","IPA","","20","","Dua macam topologi wireless yang menggunakan Access Point (AP) dinamakan dengan …?","","","","Topologi BUS dan Tree","Topologi insfrastructure dan star","Topologi adhoc dan star","Topologi Insfrastructure dan adhoc�","Topologi Mesh dan adhoc","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("91","IPA","IPA","","21","","Mengubah/mengatur kecepatan dari processor/CPU diatas kecepatan normal disebut…","","","","Up grade","Over clocking","Over Processor","Over Speed","Over CPU","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("92","IPA","IPA","","22","","Sebuah peralatan USB 1.0 akan dipasang pada port USB 2.0. yang terjadi adalah","","","","Peralatan tersebut tidak berfungsi","Peralatan dapat berfungsi dan kecepatannya USB 2.0","Peralatan dapat berfungsi dan kecepatannya USB 1.0","Peralatan akan rusak","Kecepatan Peralatan akan menyesuaikan dengan USB port yang terpasang","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("93","IPA","IPA","","23","","Perintah untuk membuat direktori di linux adalah","","","","mddir","cd","rm","mkdir","mv","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("94","IPA","IPA","","24","","Ketika akan mengambil baut yang jatuh didalam computer menggunakan obeng bermagnet adalah","","","","Matikan computer (OFF)","Cabut kabel power dari listrik yang terpasang","Backup computer untuk menghindari kehilangan data","Pastikan ada karet� pada obeng ketika dipegang","Melepas monitor dari komputer","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("95","IPA","IPA","","25","","Komponen elektronika yang berfungsi untuk mengatur kuat arus yang mengalir adalah …","","","","Resistor","Kapasitor","Induktor","Transformator","Transistor","","","","","","1","0","0","0");
INSERT INTO cbt_soal VALUES("96","IPA","IPA","","26","","Cara memegang komponen yang disarankan adalah...","","","","Memegang pada sisi atau ujung komponen","Memegang menggunakan tang","Memegang di bagian tengah","Memegang di bagian yang tidak berkilai","Memegang di bagian plastik","","","","","","1","0","0","0");
INSERT INTO cbt_soal VALUES("97","IPA","IPA","","27","","Hasil konversi dari bilangan biner 111011 ke bilngan decimal adalah …","","","","56","57","58","59","60","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("98","IPA","IPA","","28","","Setelah sistem operasi diinstal, ternyata resolusi monitor hanya bisa disetting pada resolusi 640x480 yang harus dilakukan agar resolusi berubah adalah…","","","","Mengganti monitor","Merubah posisi monitor","Menginstal�driver�VGA","Mengganti kabel VGA","Manginstal ulang system operasi","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("99","IPA","IPA","","29","","Pada saat proses booting , komputer menampilkan pesan kesalahan “Keyboard  error  or  no  keyboardpresent”,  tindakan yang perlu dilakukan seperti di bawah ini, kecuali……","","","","Matikan kembali komputer dan cek apakah kabel keyboard telah terpasang dengan benar","Lepas dan tancapkan kembali kembali kabel keyboard","Bersihkan keyboard dari debu","Gantikan dengan keyboard yang lain","Cek port keyboard di motherboard�","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("100","IPA","IPA","","30","","Partisi untuk swap pada linux disarankan minimal adalah","","","","1 kali memori computer","2 kali memori computer","3 kali memori computer","4 kali memori computer","5 kali memori komputer","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("101","IPA","IPA","","31","","LILO atau Linux loader adalah program yang pertama dijalankan setelah BIOS. Jika di dalam harddisk terdapat lebih dari satu sistem operasi maka LILO diinstal di ....","","","","Boot sector","Partisi pertama","Partisi home","Partisi kedua","Master boot record","","","","","","5","0","0","0");
INSERT INTO cbt_soal VALUES("102","IPA","IPA","","32","","Sebuah jaringan LAN mempunyai alamat IP 192.169.20.36/29, maka alamat broadcast-nya ada pada IP....","","","","192.168.20.40","192.168.20.0","192.168.20.31","192.168.20.39","192.168.20.225","","","","","","4","0","0","0");
INSERT INTO cbt_soal VALUES("103","IPA","IPA","","33","","Setiap peralatan yang aktif yang digunakan di dalam jaringan memiliki identitas yang diberikan oleh pabrik pembuatnya disebut :","","","","IP Address","MAC Address","DNS Address","Logical address","SSID","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("104","IPA","IPA","","34","","Hardware yang berfungsi merubah sinyal analog menjadi sinyal digital adalah","","","","Switch","Bridge","Modem","Router","Hub","","","","","","3","0","0","0");
INSERT INTO cbt_soal VALUES("105","IPA","IPA","","35","","Dua buah jaringan dihubungkan dengan switch tapi tidak ada koneksi, pada switch lampu indikator tidak menyala pada salah satunya. Penyebabnya adalah …","","","","Protokol jaringan tidak cocok","Switch terlalu sibuk","Switch tidak bekerja","Switch tidak cocok","Kesalahan koneksi kabel","","","","","","5","0","0","0");
INSERT INTO cbt_soal VALUES("106","IPA","IPA","","36","","Partisi swap dalam sistem operasi UNIX atau Linux digunakan untuk …","","","","Cache memory","Virtual memory","System memory","Main memory","Accelerator","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("107","IPA","IPA","","37","","Pada sistem operasi berbasis Linux, nama file yang mengatur permberian layanan IP secara otomatis adalah…","","","","Dhcpd.conf","Interfaces","Squid.conf","Dhcp3-server","Dhcp","","","","","","1","0","0","0");
INSERT INTO cbt_soal VALUES("108","IPA","IPA","","38","","Yang tidak termasuk ke dalam Routing Protocol adalah","","","","PPP","OSPF","EIGRP","BGP","RIP","","","","","","1","0","0","0");
INSERT INTO cbt_soal VALUES("109","IPA","IPA","","39","","Repeater pada OSI layer terletak di…","","","","Physical","Datalink","Network","Persentation","Transport","","","","","","2","0","0","0");
INSERT INTO cbt_soal VALUES("110","IPA","IPA","","40","","MAC atau Media Acces Control di OSI Layer ada pada layer ...","","","","Physical","Networki","Transport","Data link","Session","","","","","","4","0","0","0");



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

INSERT INTO cbt_tabel_data VALUES("21","1234567890.mp3","358288","./htdocs/unbk/audio/1234567890.mp3","2017-02-17","NO1");



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
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_ujian VALUES("10","IPA1","BINDO","BING","5","2017-02-18","20:45:00","22:45:00","","02:00:00","HQCPT","1");



