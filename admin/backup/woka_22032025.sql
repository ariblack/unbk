DROP TABLE cbt_admin;

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL auto_increment,
  `XSekolah` varchar(250) collate latin1_general_ci NOT NULL,
  `XStatus` varchar(1) collate latin1_general_ci NOT NULL,
  `user` varchar(150) collate latin1_general_ci NOT NULL,
  `password` varchar(150) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_admin VALUES("2","","","raka","raka");



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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_jawaban VALUES("1","1","1","LOL-01","PCFKI","1","3","4","2","0","","","","","0","","2017-03-28","00:00:00","1","A1000","");
INSERT INTO cbt_jawaban VALUES("2","1","1","LOL-01","HIXLO","5","2","1","4","3","","","","","0","","2017-03-28","00:00:00","1","A999","");



DROP TABLE cbt_kelas;

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeLevel` varchar(5) collate latin1_general_ci NOT NULL,
  `XLevelKelas` varchar(5) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_kelas VALUES("1","SMA","XII","SESI 1 IPA","1");
INSERT INTO cbt_kelas VALUES("2","SMA","XII","SESI 2 IPA","1");
INSERT INTO cbt_kelas VALUES("3","SMA","XII","SESI 2 IPS","1");
INSERT INTO cbt_kelas VALUES("4","SMA","XII","SESI 3 IPS","1");
INSERT INTO cbt_kelas VALUES("5","SMK","XII","TKR","1");
INSERT INTO cbt_kelas VALUES("6","SMK","XII","PPL","1");
INSERT INTO cbt_kelas VALUES("7","SMK","XII","PPS","1");
INSERT INTO cbt_kelas VALUES("8","SMK","XII","PPP","1");



DROP TABLE cbt_mapel;

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_mapel VALUES("23","","SOS_IPS","SOSIOLOGI","");
INSERT INTO cbt_mapel VALUES("22","","BING_ALL","BAHASA INGGRIS","");
INSERT INTO cbt_mapel VALUES("21","","FIS_IPA","FISIKA","");
INSERT INTO cbt_mapel VALUES("20","","KIM_IPA","KIMIA","");
INSERT INTO cbt_mapel VALUES("19","","GEO_IPS","GEOGRAFI","");
INSERT INTO cbt_mapel VALUES("18","","EKO_IPS","EKONOMI","");
INSERT INTO cbt_mapel VALUES("17","","BIO_IPA","BIOLOGI","");
INSERT INTO cbt_mapel VALUES("16","","BIND_ALL","BAHASA INDONESIA","");
INSERT INTO cbt_mapel VALUES("25","","MTK_IPS","MATEMATIKA IPS","");
INSERT INTO cbt_mapel VALUES("24","","MTK_IPA","MATEMATIKA IPA","");
INSERT INTO cbt_mapel VALUES("26",""," TKR_001","PROD.TKR","");
INSERT INTO cbt_mapel VALUES("27","","TES1","TES1","");
INSERT INTO cbt_mapel VALUES("28","","TES2","TES2","");
INSERT INTO cbt_mapel VALUES("29","","TES3","TES3","");
INSERT INTO cbt_mapel VALUES("30","","TES4","TES4","");
INSERT INTO cbt_mapel VALUES("31","","TES5","TES5","");
INSERT INTO cbt_mapel VALUES("32","","TES6","TES6","");
INSERT INTO cbt_mapel VALUES("33","","TES7","TES7","");
INSERT INTO cbt_mapel VALUES("34","","TES8","TES8","");
INSERT INTO cbt_mapel VALUES("35","","TES9","TES9","");
INSERT INTO cbt_mapel VALUES("36","","TES10","TES10","");
INSERT INTO cbt_mapel VALUES("37","","TES11","TES11","");
INSERT INTO cbt_mapel VALUES("38","","TES12","TES12","");
INSERT INTO cbt_mapel VALUES("39","","TES13","TES13","");
INSERT INTO cbt_mapel VALUES("40","","TES14","TES14","");



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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa VALUES("1","A99","A99","A99","SESI 1 IPA","XII","L","A99","");
INSERT INTO cbt_siswa VALUES("2","A100","A100","A100","SESI 2 IPS","XII","L","A100","");
INSERT INTO cbt_siswa VALUES("3","A101","A101","A101","SESI 1 IPA","XII","L","A101","");
INSERT INTO cbt_siswa VALUES("4","A1","SMK00101","SOKRAN","TKJ","XII","L","A1","");
INSERT INTO cbt_siswa VALUES("5","A2","SMK00102","KARTOLO","TKJ","XII","L","A2","");
INSERT INTO cbt_siswa VALUES("6","A3","SMK00103","BASMAN","TKJ","XII","L","A3","");
INSERT INTO cbt_siswa VALUES("7","A4","SMK00104","SAPARI","TKJ","XII","L","A4","");
INSERT INTO cbt_siswa VALUES("8","A5","SMK00105","TINI","TKJ","XII","L","A5","");
INSERT INTO cbt_siswa VALUES("9","A6","SMK00106","KASPARI","TKJ","XII","P","A6","");
INSERT INTO cbt_siswa VALUES("10","A7","SMK00107","BAMBANG GENTOLET","TKJ","XII","L","A7","");
INSERT INTO cbt_siswa VALUES("11","A8","SMK00108","SHOLEH","TKJ","XII","L","A8","");
INSERT INTO cbt_siswa VALUES("12","A9","SMK00109","WONOKAIRUN","TKJ","XII","L","A9","");
INSERT INTO cbt_siswa VALUES("13","A10","SMK00110","BRODIN","TKJ","XII","L","A10","");
INSERT INTO cbt_siswa VALUES("14","A11","SMK00111","LUMUT","TKJ","XII","P","A11","");
INSERT INTO cbt_siswa VALUES("15","A12","SMK00112","KIRUN","TKJ","XII","L","A12","");
INSERT INTO cbt_siswa VALUES("16","A13","SMK00113","SIDIK","TKJ","XII","L","A13","");
INSERT INTO cbt_siswa VALUES("17","A14","SMK00114","WAKIDI","TKJ","XII","L","A14","");
INSERT INTO cbt_siswa VALUES("18","A15","SMK00115","MUKIDI","TKJ","XII","L","A15","");
INSERT INTO cbt_siswa VALUES("19","A16","SMK00116","GUNDALA PUTRAPETIR","TKJ","XII","L","A16","");
INSERT INTO cbt_siswa VALUES("20","A17","SMK00117","MATBUKRI","TKJ","XII","L","A17","");
INSERT INTO cbt_siswa VALUES("21","A18","SMK00118","BUNALI","TKJ","XII","L","A18","");
INSERT INTO cbt_siswa VALUES("22","A19","SMK00119","EKO LONDHO","TKJ","XII","L","A19","");
INSERT INTO cbt_siswa VALUES("23","A20","SMK00120","DIDIK MANGKUPROJO","TPE","XII","L","A20","");
INSERT INTO cbt_siswa VALUES("24","A21","SMK00121","PARTO","TPE","XII","L","A21","");
INSERT INTO cbt_siswa VALUES("25","A22","SMK00122","DONO","TPE","XII","L","A22","");
INSERT INTO cbt_siswa VALUES("26","A23","SMK00123","KASINO","TPE","XII","L","A23","");
INSERT INTO cbt_siswa VALUES("27","A24","SMK00124","INDRO","TPE","XII","L","A24","");
INSERT INTO cbt_siswa VALUES("28","A25","SMK00125","TESSY RIWAYATI","TPE","XII","L","A25","");
INSERT INTO cbt_siswa VALUES("29","A26","SMK00126","SUSSY","TPE","XII","P","A26","");
INSERT INTO cbt_siswa VALUES("30","A27","SMK00127","ISYE","TPE","XII","P","A27","");
INSERT INTO cbt_siswa VALUES("31","A28","SMK00128","BOGEL","TPE","XII","P","A28","");
INSERT INTO cbt_siswa VALUES("32","A29","SMK00129","KUCRIT","TPE","XII","L","A29","");
INSERT INTO cbt_siswa VALUES("33","A30","SMK00130","GEBOL","TPE","XII","L","A30","");
INSERT INTO cbt_siswa VALUES("34","A999","A999","A999","PPP","XII","L","A999","");
INSERT INTO cbt_siswa VALUES("35","A1000","A1000","A1000","PPP","XII","L","A1000","");



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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa_ujian VALUES("1","A99","SESI 1 IPA","BING_ALL","BING-001","30","2017-03-22 20:10:11","16:47:00","16:50:37","20:10:11","","00:36:23","00:00:00","CQYFO","00:00:00","9");
INSERT INTO cbt_siswa_ujian VALUES("2","A99","SESI 1 IPA","BIND_ALL","KIMIA-01","30","2017-03-22 20:10:11","23:43:00","00:00:06","20:10:11","","01:52:25","00:00:00","BLXSK","00:00:00","9");
INSERT INTO cbt_siswa_ujian VALUES("3","A101","SESI 1 IPA","BIND_ALL","KIMIA-01","30","2017-03-22 20:13:14","19:30:00","19:34:40","20:13:14","","01:58:20","00:00:00","BLXSK","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("4","A101","SESI 1 IPA","KIM_IPA","KIMIA-01","30","2017-03-22 20:13:14","20:04:00","20:05:48","20:13:14","","01:30:00","00:00:00","SUJQA","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("5","A99","SESI 1 IPA","KIM_IPA","KIM_IPA","30","2017-03-22 20:10:11","20:07:00","20:07:53","20:10:11","","01:30:00","00:00:00","KOEHC","00:00:00","9");
INSERT INTO cbt_siswa_ujian VALUES("6","A101","SESI 1 IPA","KIM_IPA","KIM_IPA","30","2017-03-22 20:13:14","20:07:00","20:13:14","20:13:14","","01:30:00","00:00:00","KOEHC","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("7","A999","PPP","TES1","TES1","40","2017-03-28 21:49:12","18:45:00","18:46:34","21:49:12","","01:00:00","00:00:00","ZFMJF","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("8","a999","PPP","TES2","TES2","30","2017-03-28 21:49:12","19:42:00","19:43:23","21:49:12","","00:30:00","00:00:00","OJSZJ","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("9","A999","PPP","TES3","TES3","30","2017-03-28 21:49:12","18:57:00","18:58:40","21:49:12","","00:40:00","00:00:00","BFOHJ","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("10","A1000","PPP","TES3","TES3","30","2017-03-28 19:35:00","18:57:00","20:14:40","19:35:00","","00:-37:-","00:00:00","BFOHJ","00:00:00","9");
INSERT INTO cbt_siswa_ujian VALUES("11","A999","PPP","TES1","TES1","30","2017-03-28 21:49:12","20:19:00","20:59:22","21:49:12","","00:56:19","00:00:00","RZSDG","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("12","A1000","PPP","TES4","TES-04","30","2017-03-28 19:35:00","19:25:00","19:30:14","19:35:00","","01:00:00","00:00:00","CHPPE","00:00:00","9");
INSERT INTO cbt_siswa_ujian VALUES("13","A1000","PPP","TES1","LOL-01","1","2017-03-28 21:13:11","21:10:00","21:13:11","21:13:11","","00:05:00","00:00:00","PCFKI","00:00:00","1");
INSERT INTO cbt_siswa_ujian VALUES("14","A999","PPP","TES1","LOL-01","1","2017-03-28 21:49:12","21:29:00","21:49:12","21:49:12","","-1:-2:-9","00:00:00","HIXLO","00:00:00","1");



DROP TABLE cbt_skul;

CREATE TABLE `cbt_skul` (
  `Urut` int(11) NOT NULL,
  `XTes` varchar(100) collate latin1_general_ci NOT NULL,
  `XSekolah` varchar(250) collate latin1_general_ci NOT NULL,
  `XTingkat` varchar(3) collate latin1_general_ci NOT NULL,
  `XIp` varchar(15) collate latin1_general_ci NOT NULL,
  `XAlamat` text collate latin1_general_ci NOT NULL,
  `XTelp` varchar(20) collate latin1_general_ci NOT NULL,
  `XFax` varchar(20) collate latin1_general_ci NOT NULL,
  `XEmail` varchar(250) collate latin1_general_ci NOT NULL,
  `XWeb` varchar(200) collate latin1_general_ci NOT NULL,
  `XLogo` text collate latin1_general_ci NOT NULL,
  `XBanner` varchar(250) collate latin1_general_ci NOT NULL,
  `XKepSek` varchar(100) collate latin1_general_ci NOT NULL,
  `XNip` varchar(50) collate latin1_general_ci NOT NULL,
  `XStatus` varchar(1) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_skul VALUES("1","UJIAN SEKOLAH","WP Indonesia","SMK","127.0.0.1","Indonesia","085855052410","0313984736","support@wokaproject.id","wokaproject.id","logoFTIF.png","banner.png","WokaInc","1967123456789123","1");



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
  `XBobot` int(1) NOT NULL,
  `XKkm` int(3) NOT NULL,
  `XPilSoal` int(1) NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_soal VALUES("2","BIND_ALL","LOL-01","","1","","lol","imey.mp3","","","lol","lol","lol","lol","lol","","","","","","1","1","0","0","75","4");



DROP TABLE cbt_tabel_data;

CREATE TABLE `cbt_tabel_data` (
  `id` int(5) NOT NULL auto_increment,
  `nama_file` varchar(20) collate latin1_general_ci NOT NULL,
  `ukuran` varchar(10) collate latin1_general_ci NOT NULL,
  `url` varchar(50) collate latin1_general_ci NOT NULL,
  `tgl_upload` varchar(20) collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_tabel_data VALUES("26","imey.mp3","3327947","./htdocs/unbk/audio/imey.mp3","2017-03-23","Imey");



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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_ujian VALUES("35","PPP","TES1","LOL-01","1","2017-03-28","21:29:00","21:54:00","","00:05:00","HIXLO","1","0");



