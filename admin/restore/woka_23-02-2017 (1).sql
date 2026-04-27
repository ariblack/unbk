DROP TABLE cbt_admin;

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XSekolah` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `XStatus` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `user` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(150) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_admin VALUES("2","","","admin","adminwoka");



DROP TABLE cbt_jawaban;

CREATE TABLE `cbt_jawaban` (
  `Urutan` int(11) NOT NULL AUTO_INCREMENT,
  `Urut` int(11) NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XKodeSoal` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XTokenUjian` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XA` int(11) NOT NULL,
  `XB` int(11) NOT NULL,
  `XC` int(11) NOT NULL,
  `XD` int(11) NOT NULL,
  `XE` int(11) NOT NULL,
  `XJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XEssay` text COLLATE latin1_general_ci NOT NULL,
  `XKodeJawab` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `XNilaiJawab` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XNilai` int(2) NOT NULL,
  `XRagu` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTglJawab` date NOT NULL,
  `XJamJawab` time NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XUserJawab` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `Campur` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Urutan`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_jawaban VALUES("1","1","1","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");
INSERT INTO cbt_jawaban VALUES("2","2","2","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");
INSERT INTO cbt_jawaban VALUES("3","3","3","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");
INSERT INTO cbt_jawaban VALUES("4","4","4","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");
INSERT INTO cbt_jawaban VALUES("5","5","5","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","4","20061994","");
INSERT INTO cbt_jawaban VALUES("6","6","6","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:27","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("7","7","7","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:28","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("8","8","8","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:29","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("9","9","9","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:29","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("10","10","10","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:30","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("11","11","11","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:31","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("12","12","12","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:31","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("13","13","13","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:32","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("14","14","14","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:32","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("15","15","15","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:33","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("16","16","16","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:34","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("17","17","17","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:35","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("18","18","18","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:35","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("19","19","19","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:36","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("20","20","20","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:36","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("21","21","21","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:36","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("22","22","22","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:37","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("23","23","23","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:37","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("24","24","24","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:38","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("25","25","25","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:38","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("26","26","26","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:38","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("27","27","27","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:40","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("28","28","28","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:41","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("29","29","29","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:41","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("30","30","30","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:42","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("31","31","31","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:43","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("32","32","32","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:44","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("33","33","33","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:44","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("34","34","34","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:45","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("35","35","35","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:46","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("36","36","36","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:46","4","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("37","37","37","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:48","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("38","38","38","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","10","","2017-02-23","21:28:54","1","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("39","39","39","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","4","20061994","");
INSERT INTO cbt_jawaban VALUES("40","40","40","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:57","2","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("41","41","41","BINDO","WDDTE","1","2","3","4","5","A","","XA","1","0","","2017-02-23","21:28:58","3","20061994","WDDTE");
INSERT INTO cbt_jawaban VALUES("42","42","42","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");
INSERT INTO cbt_jawaban VALUES("43","43","43","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","2","20061994","");
INSERT INTO cbt_jawaban VALUES("44","44","44","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","3","20061994","");
INSERT INTO cbt_jawaban VALUES("45","45","45","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","2","20061994","");
INSERT INTO cbt_jawaban VALUES("46","46","46","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","2","20061994","");
INSERT INTO cbt_jawaban VALUES("47","47","47","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");
INSERT INTO cbt_jawaban VALUES("48","48","48","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","2","20061994","");
INSERT INTO cbt_jawaban VALUES("49","49","49","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","2","20061994","");
INSERT INTO cbt_jawaban VALUES("50","50","50","BINDO","WDDTE","1","2","3","4","5","","","","","0","","2017-02-23","00:00:00","1","20061994","");



DROP TABLE cbt_kelas;

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XKodeLevel` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XLevelKelas` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_kelas VALUES("1","SD","I","a","1");
INSERT INTO cbt_kelas VALUES("2","SMP","IX","A","1");



DROP TABLE cbt_mapel;

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_mapel VALUES("1","","1","AGAMA ISLAM ","");
INSERT INTO cbt_mapel VALUES("2","","IPA","ILMU PENGETAHUAN ALAM","");
INSERT INTO cbt_mapel VALUES("5","","TKJ","PRODUKTIF TKJ ","");
INSERT INTO cbt_mapel VALUES("4","","BINDO","BAHASA INDONESIA","");



DROP TABLE cbt_siswa;

CREATE TABLE `cbt_siswa` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XNomerUjian` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `XNIK` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaSiswa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XNamaKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJenisKelamin` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XPassword` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `XFoto` varchar(250) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa VALUES("1","1","1","Rahman Ardi Saputra yang selalu setia","a","I","","1","");
INSERT INTO cbt_siswa VALUES("2","20061994","20061994","DEWI KURNIASIH","A","IX","P","A","");



DROP TABLE cbt_siswa_ujian;

CREATE TABLE `cbt_siswa_ujian` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XNomerUjian` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `XJamUjian` time NOT NULL,
  `XMulaiUjian` time NOT NULL,
  `XLastUpdate` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XTargetUjian` time NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XSelesaiUjian` time NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa_ujian VALUES("1","20061994","A","BINDO","BINDO","50","2017-02-23 22:31:13","20:46:00","20:46:57","22:31:13","","03:59:3","00:00:00","WDDTE","00:00:00","1");



DROP TABLE cbt_soal;

CREATE TABLE `cbt_soal` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `XNomerSoal` int(11) NOT NULL,
  `XRagu` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XTanya` text COLLATE latin1_general_ci NOT NULL,
  `XAudioTanya` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XVideoTanya` text COLLATE latin1_general_ci NOT NULL,
  `XGambarTanya` text COLLATE latin1_general_ci NOT NULL,
  `XJawab1` text COLLATE latin1_general_ci NOT NULL,
  `XJawab2` text COLLATE latin1_general_ci NOT NULL,
  `XJawab3` text COLLATE latin1_general_ci NOT NULL,
  `XJawab4` text COLLATE latin1_general_ci NOT NULL,
  `XJawab5` text COLLATE latin1_general_ci NOT NULL,
  `XGambarJawab1` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XGambarJawab2` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XGambarJawab3` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XGambarJawab4` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XGambarJawab5` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `XKunciJawaban` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `Xidacak` int(1) NOT NULL,
  `XTypeSoal` int(1) NOT NULL,
  `XKkm` int(3) NOT NULL,
  `XPilSoal` int(1) NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_soal VALUES("61","1","PAI","","10","","FSFSD,GNSGK","","","","MDFNGBD","DFNGBDMN","DFNGB","CNGBM","KDJBGK","","","","","","2","1","1","75","5");
INSERT INTO cbt_soal VALUES("60","1","PAI","","9","","SDFDLGL","","","","DFJGHDKJ","KDFJGHKJ","KDJFGHDK","KFDJGDFKJ","KDFJGHDFK","","","","","","3","1","1","75","5");
INSERT INTO cbt_soal VALUES("59","1","PAI","","8","","SDFSDJFSKJ","","","","LDFGKJ","KDFJGH","DFJGDFKJ","DKFJGHDFKJ","KDFJGHDK","","","","","","2","1","1","75","5");
INSERT INTO cbt_soal VALUES("58","1","PAI","","7","","<strong>SIAPAKAH ORANG YANG PALING TAMPAN DI DUNIA INI . ?</strong>","","","","KDFJGKDJH","KDFJGHDKJ","DFKJGDK","FKDJGHDFKJ","DFJGHDKJ","","","","","","3","1","1","75","5");
INSERT INTO cbt_soal VALUES("57","1","PAI","","6","","berapakah jumalh hasil dari jumlah semuanya&nbsp;<br /><br /><img src=\"/unbk/pictures//095006aab4ea8bd3fc58f2b4ae40f2211.PNG\" width=\"247\" height=\"107\" />","","","","KDFJGDK","DFGHSJ","KDFJGHDFKJG","DFJGHDKJH","KJDGFHDKGJH","","","","","","4","1","1","75","5");
INSERT INTO cbt_soal VALUES("56","1","PAI","","5","","Sebutkan peralatan apa saja yg dibutuhkan saat membangun jaringan wireless lan dan apa fungsinya","","","","DKFJGH","DKFJG","KDFJG","KJG","QQ","","","","","","3","1","1","75","5");
INSERT INTO cbt_soal VALUES("55","1","PAI","","4","","Jelaskan tentang ram,rom,cache memory, register, alu,cu,file,record,field,database","","","","DKFJH","KDJFHG","KDJFHG","KDJHGF","DKJFGH","","","","","","1","1","1","75","5");
INSERT INTO cbt_soal VALUES("54","1","PAI","","3","","Apa fungsi SO? Sebut dan jelaskan!","","","","SJBKDB","KJGB","KDJFGB","KDFJG","KJFG","","","","","","1","1","1","75","5");
INSERT INTO cbt_soal VALUES("53","1","PAI","","2","","Bagaimana langkah langkah setting AP untuk hotspot?","","","","ASFAS","FDLKJH","DFGKJHDFK","DFKGJH","DKGJH","","","","","","1","1","0","75","5");
INSERT INTO cbt_soal VALUES("52","1","PAI","","1","","Secara kata dan dan istilah apa itu komputer? Jelaskan!","","","","JAWABAN 1","JAWAB 2","JAWAB 3","JAWAB 4","JAWAB 5","","","","","","2","1","0","75","5");
INSERT INTO cbt_soal VALUES("140","BINDO","BINDO","","38","","Gerhana matahari total pertama yang melintasi Indonesia pada abad ke-21 ini disambut meriah di berbagai daerah.Layaknya merayakan ulang tahun kota,sejumlah pemerintah daerah menggelar pesta.Pemerintah Provinsi Sumatra Selatan misalnya,bakal menggelar pesta kulinar,festival budaya,lomba lari Glowing Nite Run,dan selfie alias swafoto ketika gerhana berlangsung.Jembatan Ampera pun akan ditutup karena dijadikan panggung terbuka.<br /><br />Pernyataan yang sesuai dengan isi teks tersebut adalah...","","","","Gerhana matahari total disambut layaknya hari ulang tahun di beberapa daerah.","Pemerintah Provinsi Sumatra Selatan menggelar lomba kuliner dan budaya","Tidak semua daerah menggelar pesta menyambut gerhana matahari total.","Jembatan Ampera dipenuhi lautan manusia untuk menyambut gerhana matahari total.","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("141","BINDO","BINDO","","39","","Puncak Jaya atau dikenal juga dengan nama Cartenz Pyramid adalah merupakan puncak tertinggi di Indonesia dan Osenia. Puncak Jaya memiliki ketinggian 4.884 mdpl, tergabungdalam barisan Sudirman dengan beberapa puncak-puncak tinggi lainnya, yakni Puncak Cartenz Timur ((4.808 mdpl), Sumantri (4.870 mdpl ), dan Ngga Pulu (4.863mdpl ). Puncak tertinggi Indonesia ini terletak di Papua semua.<br /><br />Kata-kata yang membuat kalimat tersebut tidak efektif adalah...","","","","adalah,yakni,puncak","yakni,puncak,semua","adalah,semua,yakni","adalah,puncak-puncak,semua","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("142","BINDO","BINDO","","40","","Pagi ini ayah membaca koransambil menyeruput kopi.<br /><br />Penggunaan tanda baca yang tepat pada kalimat tersebut adalah...","","","","Pagi ini! ayah membaca koran sambil menyeruput kopi","Pagi ini, ayah membaca koran sambil menyeruput kopi","Pagi ini ayah membaca, koran sambil menyeruput kopi","Pagi ini ayah, membaca koran sambil menyeruput kopi","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("143","BINDO","BINDO","","41","","<p>Pernyataan berikut yang merupakan bagian dari definisi umum adalah....</p>","","","","Taman Nasional berfungsi sebagai tempat pelestarian.","Taman Nasional didirikan dengan tujuan untuk melestari&nbsp;lingkungan alam dan mengembangkan pengetahuan.","Taman Nasional adalah kawasan pelestarian alam yang&nbsp;yang mempunyai ekosistem asli dan dikelola dengan bersistem untuk perkembangan ilmu pengetahuan,pendidikan,&nbsp;dan pariwisata.","Taman Nasional ini berguna sebagai tempat penelitian&nbsp;dan pengembangan ilmu pengetahuan.","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("139","BINDO","BINDO","","37","","(1) Pastikan wadah untuk mengocok putih telur bersih dan kering,tidak ada sisa minyak.<br />(2) [...]<br />(3) Kocok putih telur,lalu tambahkan dua sendok makan gula pasir halus dan cream of tartar.<br />(4) Jangan berhenti sebelum hasil kocokan menjadi kaku.<br /><br />Kalimat yang tepat melengkapi cara mengocok putih telur tersebut adalah...","","","","Siapkan alat pengocok telur.","Bersihkan alat pengocok telur.","Pastikan putih telur dalam suhu ruangan.","Cucilah telur terlebih dahulu.","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("135","BINDO","BINDO","","33","","Teknologi tepat guna merupakan teknologi yang telah dikembangkan secara tradisional.Pengenalannya banyak ditentukan keadaan lingkungan dan mata pencariaan pokok masyarakat setempat.Dengan adanya penerapan ini,diharapkan masyarakat berubah dan mengerti manfaat teknologi tepat guna.Mereka jua mampu menggunakan teknologi tepat guna tersebut dengan sebaik-baiknya.<br /><br />Simpulan isi teks tersebut adalah...","","","","Teknologi tepat guna dikembangkan secara tradisional.","Pengenalan teknologi tepat guna ditentukan lingkungan dan mata pencarian masyarakat.","manfaat teknologi tepat guna untuk mengubag kehidupan masyarakat menjadi lebih baik dan sejahtera.","Masyarakat diharapkan dapat mengerti dan menggunakan teknologi tepat guna sebaik-baiknya.","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("136","BINDO","BINDO","","34","","Indonesia &nbsp;patut berbangga karena memiliki pembalap dengan segudang prestasi.Dia adalah Rio Haryanto,pembalap muda Indonesia yang dilahirkan di Solo, 22 Januari 1993.Rio Haryanto menjadi pembalap pertama Asia yang berhasil tampil di ajang F1.Hal ini tentu menjadi kebanggaan bagi masyarakat Indonesia.Rio Haryanto tumbuh besar di lingkungan pembalap.Sikap rendah hati,disiplin,dan dermawan ditanamkan sang ayah kepada diri Rio sejak kecil.<br /><br />Hal yang patut diteladani dari tokoh tesebut adalah...","","","","Pembalap dengan segudang prestasi","Rendah hati,disiplin,dan dermawan.","Tumbuh di lingkungan pembalap.","Pekerja keras dan pantang menyerah.","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("137","BINDO","BINDO","","35","","Keistimewaan tokoh tersebut adalah..","","","","Pembalap dengan segudang prestasi.","Kebanggaan masyarakat Indonesia.","Pembalap pertama Asia yang tampil di F1.","Pembalap muda yang rendah hati dan disiplin.","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("138","BINDO","BINDO","","36","","(1) Haluskan stroberi menggunakan blender lalu sisihkan.<br />(2) Masak hingga mendidih dan kental.<br />(3) Campurkan gula<em>,cream of tartar,</em>stroberi yang telah dihaluskan,dan air.Aduk sampai gula larut.<br />(4) Tuang adonana ke dalam cetakan yang telah dilapisi minyak.Pasang stik<em> lolipop.</em>Jika sudah mulai mengeras dan stik kuat,lepaskan dari cetakan.<br />(5) Angkat,tambahkan esens stroberi.<br />(6) Masukkan ke frezer,biarkan hingga keras.Permen<em> lolipop</em> siap dinikmati.<br /><br />Urutan petunjuk pembuatan permen lilipop stroberi yang tepat adalah...","","","","(1)-(2)-(3)-(4)-(5)-(6)","(1)-(2)-(3)-(5)-(4)-(6)","(1)-(3)-(2)-(4)-(5)-(6)","(1)-(3)-(2)-(5)-(4)-(6)","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("134","BINDO","BINDO","","32","","Kartu Indonesia Pintar (KIP) merupakan kartu bagi keluarga miskin dan rentan miskin yang ingin menyekolahkan anaknya secara gratis.Program KIP sendiri akan ditujukan kepada 15,5 juta keluarga kurang mampu di seluruh Indonesia yang memiliki anak usia sekolah7 hingga 18 tahun,baik yang telah terdaftar maupun yang belum terdaftar di sekolah ataupun madrasah .DEngan program KIP ini, diharapkan angka putus sekolah bisa turun dengan dratis.<br />Pernyataan yang sesuai dengan teks tesebut adalah...","","","","Keluarga miskin yang memiliki anak berusia 7-19 tahun berhak mendapat KIP.","Seluruh anak Indonesia tidak bisa sekolah gratis dengan menggunakan KIP.","Angka putus sekolah meningkat drastis sejak diluncurkan program &nbsp;KIP","KIP dibagikan bagi keluarga miskin dan rentan miskin.","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("133","BINDO","BINDO","","31","","(1)Akhir-akhir ini banyak remaja yang terlibat tawuran dan terjerumus dalam pergaulan bebas.(2)Usia remaja berkisar antara usia 10 tahun sampai 21 tahun.(3)Pada usia itulah,kebanyakan remaja sedang mencari identitas diri mereka.(4)Pada masa inilah,remaja memerlukan pendidikan karakter untuk mengarahkan mereka dan minat yang mereka miliki ke arah yang positif.<br /><br />Perbaikan paragraf yang tidak padu tersebut tersebut adalah dengan menghilangkan kalimat nomo...&nbsp;","","","","(1)","(2)","(3)","(4)","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("132","BINDO","BINDO","","30","","Inilah yang menjadi kendala &nbsp;ketika pengelolaan kawasan karst ditetapkan dengan data yang sepotong.Penetapan suatu kawasan justru menjadi permasalahan bukan penyelesaian penataan pemanfaatan.Di sisni ,peran penelusur gua menjadi penting dalam melakukan eksplorasi dan pendataan sehingga mampu mengungkap keberadaan sungai bawah tanah di dalam gua.<br /><br />Ringkasan teks tersebut adalah...","","","","Penelusur terkendala ketika pengelola kawasan karst hanya memiliki data sepotong.","Pemerintah daerah sebagai pengelola kawasan karst bisa memanfaatkan jasa penelusur.","Penelusur gua bisa berperan melengkapi data bagi pengelola kaawasan karst.","Penetapan suatu kawasan denga data sepotong bisa menimbulkan masalah.","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("131","BINDO","BINDO","","29","","Suatu hari seekor rusa jantan meminjamkan segenggam terigu.Sang domba kurang yakin terhadap kejujuran sang rusa lalu bertanya,apakah sang rusa mengenal hewan lain yang bisa menjamin kejujuran sang rusa.\"Ya,sang serigala bisa menjamin kejujuran saya.\"<br />\"Apakah kamu berfikir bahwa saya akan percaya dengan jaminan seperti itu?Serigala mengambil semua yang dia mau kemudian lari tampa membayar.Kamu juga mungkin seperti dia,kamu dapat berlari dengan kencang sehingga saya tidak memiliki kesempatan untuk menagih &nbsp;utangmu!\"<br /><br />Nilai moral yang terdapat pada teks tersebut adalah...","","","","Lebih baik menghindari masalah yang bisa saja terjadi.","Jangan mudah percaya kepada orang lain.","Kita harus jujur kepada orang lain.","Kepada sesama kita harus saling tolong.","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("130","BINDO","BINDO","","28","","Gadis kecil itu memucat,bibirnya membiru karena dingin.Hujan belum juga reda sejak sore tadi.Jalanan basah dan sebagiannya menampakkan genangan pekat seperti menandakan begitu kelamnya kehidupan kota ini.<br />\"Ini,pakai jaket,\"kata ayahnya.Lelaki itu menyentuh kening Nalea,dan memang terasa hangat.\"Sepertinya kamu masuk angin.\"<br /><br />Watak tokoh ayah dalam cuplikan cerita tersebut adalah...","","","","pemberani","penyayang","mudah khawatir","rau-ragu","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("129","BINDO","BINDO","","27","","(1)Aku segera mengambil tas dan memakai sepatu.(2)Aku keluar dari kamar,buru-buru menuruni anak tangga.(3)Di bawah,ibuku sudah menyiapkan sarapan pagi di meja makan.(4)kulihat ayah dan ibu sedang sarapan bersama.(5)\"Selamat pagi Ayah dan Ibu!\"sapaku kepada Ayah dan Ibu.(6)\"Pagi anak Ibu yang cantik,\"jawab Ibu sambil tersenyum manis.<br /><br />Kalimat yang membuktikan tokoh ibu perhatian ditunjukkan nomor...","","","","(3)","(4)","(5)","(6)","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("128","BINDO","BINDO","","26","","Dengan mudahnya mereka berucap jika aku \"PELIT\".Dalam hati,seakan aku tidak terima dengan ucapan mereka,tetapi aku memang mengakui pelit.Aku seperti itu karena ingin menjerumuskan temanku pada sumur kebodohan.Semakin hari semakin terasa mereka tidak menyukaiku karena masalah seperti itu.Ya ada rasa bersalah di ujung ruang hati ini,tetapi ini untuk kebaikan mereka.Aku tak ingin mereka bersahabat dengan kebodohan.Hanya segelintir orang yang masih mendukung argumenku,tapi sebagian lagi menyangkaku buruk.Semakin hari kebiasaan menyontek membuat mereka menjadi malas belajar.Hingga ku beranikan diri memperingatkan mereka dengan tegas.<br /><br />Nilai moral yang terdapat pada teks tersebut adalah...","","","","tetaplah berpegang teguh pada kejujuran.","Keteggan diperlukan dalam beberapa hal.","jangan pelit kepada siapapun.","Jangan membenci kepada teman.","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("127","BINDO","BINDO","","25","","Ayam yang dilepas bebas lebih rentan terkena penyakit,terluka,dan mati lebih cepat.Di Inggris,ayam yang hidup bebas tingkat kematiannya mencapai 8-10 persen,sedangkan ayam yang hidup dikandang hanya 2-4 persen.Ayam yang dilepas bebas juga sering berhubungan dengan unggas lain yang bisa menularkan flu burung.[...]<br /><br />Kalimat yang tepat untuk melengkapi teks tersebut adalah...","","","","Unggas itu bisa memakan apa saja yang tidak sehat di luar kandang.","Selain itu, unggas tersebut bisa mati akibat terlalu banyak memakan rumput.","Unggas itu juga bisa membuang kotoran dimana saja di kandang","Kita juga kesulitan memberikan pakan kepada unggas yang hidup di kandang","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("126","BINDO","BINDO","","24","","\"Maaf pak,apakah anda telah mendaftar?\"tanya petugas berseragam biru itu.<br /><br />Penulisan huruf kapital yang tepat pada kalimat tersebut adalah...","","","","\"Maaf Pak, apakah anda telah mendaftar?\"tanya petugas berseragam biru itu.","\"Maaf Pak,apakah Anda telah mendaftar?\"tanya Petugas berseragam biru itu.","\"Maaf Pak,apakah anda telah mendaftar?\"tanya petugas berseragam biru itu.","\"Maaf Pak,apakah Anda telah mendaftar?\" tanya petugas berseragam biru itu.","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("125","BINDO","BINDO","","23","","Bu Maziyyah Ulya,sedang&nbsp;membacakan sejarah perang dunia II dalam buku <em>di balik peristiwa-peristiwa sejarah dunia<br /><br /></em>Perbaikan kesalahan penggunaan huruf kapital dan tanda baca dalam kalimat tersebut adalah...","","","","Bu Maziyyah Ulya sedang membacakan sejarah Perang Dunia II dalam buku<em> Di Balik Peristiwa-Peristiwa Sejarah Dunia</em>.","Bu Maziyyah Ulya sedang membacakan sejarah Perang Dunia II dalam buku D<em>i Balik Peristiwa-Peristiwa Sejarah Dunia</em>","Bu Maziyyah Ulya,sedang membacakan sejarah Perang Dunia II dalam buku Di Balik Peristiwa-Peristiwa Sejarah Dunia.","Bu Maziyyah Ulya,sedan membacakan sejarah perang dunia II dalam buku di Balik Peristiwa-Peristiwa Sejarah Dunia","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("123","BINDO","BINDO","","21","","JCC,SenayanAnda ingin mengoleksi barang-barang unik,bisa datang ke pameran Sepatu ,Kulit,dan Fashion di ,Jakarta.Pameran tersebut menampilkan produk jaket cantik berbahan kertas antiair.Jaket yang terbuat dari bahan kertas tyvek itu dibuat sekumpulan mahasiswa Institut Teknologi Bandung(ITB),produk jaket itu diberi nama Svectra.<br /><br />Pernyataan yang sesuai dsengan fakta tersebut adalah...","","","","Anda ingin mengoleksi barang unik bisa membeli di pameran di JCC Jakarta.","Pameran itu menampilkan jaket unik berbahan kertas tyvek antiair","Jaket itu pada awalnya merupakan tugas kuliah para mahasiswa ITB","Pengunjung harus membeli jaket unik antiair Svekta tersebut","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("124","BINDO","BINDO","","22","","Selama ini dikenal ada tiga jenis penyakit hepatitis,hepatitis A,hepatitis B,hepatitis C.<br /><br />Penggunaan tanda baca yang tepat pada kalimat tersebut adalah...","","","","Selama ini dikenal ada tiga jenis penyakit hepatitis,hepatitis A,hepatitis B,dan hepatitis C","Selama ini dikenal ada tiga jenis penyakit hepatitis:hepatitis A,hepatitis B dan hepatitis C","Selama ini dikenal tiga jenis penyakit hepatitis:hepatitis A,hepatitis B,dan hepatitis C","Selama ini dikenal ada tiga jenis penyakit hepatitis;hepatitis A,hepatitis B,dan hepatitis C","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("122","BINDO","BINDO","","20","","\"Dengan siapa Mak ke situ?\" lontarnya.Ada keinginan yang menyeruak seketika &nbsp;didada Mak Inang.Keinginan yang sejatinya sudah lama terpendam.Telah lama ia ingin melihat Jakarta.Ibukota yang sudah dikunjungi karib-karibnya.Tapi,ia selalu tak punya alasan ke sana,walau anak lanangnya,yang cuma satu-satunya ia miliki selain dua gadisnya yang telah diboyong suami mereka di kampung sebelah,merantau ke kota itu.Belum pernah Jamal menawarinya ke sana.Tak heran,ketika petang itu Jamal memintanya datang,ia lekas-lekas menanggapinya.<br />Tema teks cerita tersebut adalah....","","","","Persahabatan","Keluarga","Kasih sayang","Pendidikan","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("117","BINDO","BINDO","","15","","<em>Dengan</em> ini saya lampirkan berkas-berkas sebagai berikut.<br /><br />Perbaikan kata <em>dengan</em> pada kalimat tersebut adalah...","","","","Bersama","Bersamaan","Teriring","<strong></strong>Berikut","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("118","BINDO","BINDO","","16","","Bangunan itu akan direnovasi agar dapat dimanfaatkan untuk sekolah anak-anak di kampung ini.Para anak-anak nanti akan dapat meningkatkan pengetahuannya dengan bersekolah.<br /><br />Perbaikan kalimat terakhir pada teks tersebut adalah dengan...","","","","Kata \"akan\"diganti \"pasti\"","Kata\" para\" diganti\" banyak\"","Kata \"anak-anak\"ditambah \"sekalian\"","Kata \"para\"dihilangkan","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("119","BINDO","BINDO","","17","","Demikian pembaca Kompas yang bijaksan,paparan yang disampaikan penulis hanya bersifat masukan pasif tampa memiliki [...]negatif apa pun.Penulis berharap agar dalam proyek infrastruktur yang mendatang,pemerintah segera melibatkan rakyat Indonesia dan meminimalkan utang dari luar negeri.<br /><br />Kata yang baku untuk melengkapi teks rumpang tersebut adalah...","","","","Tendensius","Tendensifikasi","Tendensi","Tendens","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("120","BINDO","BINDO","","18","","(1)Meminta maaf dan memberikan pemahaman kepada anak bahwa mereka melakukan kesalahan dan menyakiti orang lain merupakan bagian dari melatih sikap.(2)Merasa menyesal akan mengajarkan mereka bagaimana memperbaiki kesalahan dan menjadikannya bertanggungjawab.(3)Di sinilah orang tua berperan.(4)Ya,tanpa pemahaman psikologis dan peran orang tua maka pembelajaran meminta maaf ini menjadi sia-sia.<br />Kalimat yang menyatakan persetujuan ditunjukkan nomor....","","","","(1)","(2)","(3)","(4)","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("121","BINDO","BINDO","","19","","Novel <em>Laskar Pelangi&nbsp;</em>yang ditulis oleh Andrea Hirata,tidak hanya populer di Indonesia,tetapi juga di luar Indonesia.Bahkan hingga ke Amerika Serikat dan mendapatkan penghargaan dari penerbit sebagai pemenang nobel sastra.Hingga Desember 2012,ada 36 negara yang memopulerkan novel<em> Laskar Pelangi</em> ini dan menjadikan <em>bestseller</em> serta <em></em>diterjemahkan ke dalam 18 bahasa.<br /><br />Kalimat berisi keunggulan buku untuk melengkapi teks tersebut adalah...","","","","Tokoh-tokoh novel Andrea adalah tokoh-tokoh yang membumi","Alur cerita novel-novel Andrea juga tidak berbelit-belit","Popularitas novel<em> Laskar Pelangi</em> menjadi fenomena dalam dunia sastra Indonesia","Cara penceritaan <em>Laskar Pelangi </em>dianggap kurang lazim.","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("116","BINDO","BINDO","","14","","Sebelum kuliah,sehabis pilang sekolah,aku bekerja di sebuah supermarket.Gajinya lumayan untuk membantu ayah dan ibuku supaya mereka tidak terlalu terbebani dan jika ada sisanya,uanghasil kerjaku,kutabung.Tak dapat kupungkiri,niatku untuk kuliah semakin besar.Aku berkeinginan menjadi orang sukses agar dapat meraih cita-cita kelak.<br /><br />Watak tokoh Aku dalam kutipan cerpen tersebut adalah...","","","","pekerja keras","ramah","bertanggung jawab","rendah hati","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("115","BINDO","BINDO","","13","","Lalu katanya,\"Kalau Nyonya melarangku datang kemari,itu hak nyonya.Tapi menyambutku dengan semburan begini,rasanya nyonya telah membuat kekeliruan bertamu.Nyonya harus mempersilakan tamu masuk,bukan memakinya<br /><br />Nilai moral yang terdapat pada kutipan novel tersebut adalah...","","","","Nyonya bertindak benar","Setiap orang berbeda kepribadiannya","Kita harus menghargai tamu","kita harus senantiasa berkorban","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("114","BINDO","BINDO","","12","","Sebelum duduk di bawah tugu,sebagai orang kota sejati aku beberkan sapu tanganku kerumput,biar pantalon tropikal yang kupakai tidak kotor.Kemudian,aku memendang pada makam sambil menyalakan sigaret lagi.Di sekitar tempat rindang itu,matahari memanas terik.<br /><br />Latar waktu dalam kutipan cerpen tersebut adalah...","","","","malam hari","siang hari","sore hari","senja hari","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("113","BINDO","BINDO","","11","","\"Sersan Kasim tinggal.Lainnya bubar,\" kata komandan menembus kesepian.Kepala regu lainnya kembali kepada anak buahnya.<br />Lagi-lagi kasim merasa pandangan komandan tertuju kepadanay dan anak buahnya.Kasim tahu arti pandangan itu.Ya,ia tahu apa maknanya.<br /><br />Sudut pandang pengarang dalam cuplikan novel tersebut adalah...","","","","orang pertama pelaku utama","orang pertama pelaku sampingan","orang ketiga di luar cerita","orang ketiga pelaku utama","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("112","BINDO","BINDO","","10","","\"Ini\" katanya sambil menyerahkan satu bungkus pada Badrun.\"Aku tadi beli dua bungkus.Sama-sama pakai rendang,limpa,otak.Pokoknya kita harus makan enak.biar kita makin bersyukur dan bisa menuntaskan perjuangan kita ini,\"<br />Badrun menerima sebungkus nasi yang diberikan Rozi,tapi ia tak juga membukanya.Rozi tak peduli, Ia makan nasi itu dengan tangannya,begitu lahap seolah tak ada kerisauan sedikit pun di dalam hatinya.<br />Ucapan yang membuktikan tokoh Rozi merupakan orang yang pandai bersyukur adalah..","","","","\"Aku tadi beli dua bungkus\"","\"Biar kita makin bersyukur dan bisa menuntaskan perjuangan perjuangan kita ini.\"","\"Pokoknya kita harus makan enak.\"","\"Sama-sama pakai rendang,limpa,otak.\"","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("111","BINDO","BINDO","","9","","Bisnis kulinar bisa dibilang cukup berisiko.Sama sekali tak ada jaminan apakah bisnis ini dapat bertahan lama atau tidak.Tak sedikit bisnis kuliner yang buka,kemudian gulung tikar dalam waktu singkat.Ada banyak faktor yang membuat bisnis kuliner menjadi tak bertahan lama.Banyak pebisnis makanan seperti latah,mengira bisnis makanan itu mudah dan untungnya bisa tiga kali lipat.Namun,mereka tidak sadar biayanya tidak hanya sekadar membeli bahan,tetapi ada juga salah perencanaan.<br />Ringkasan isi teks tersebut yang tepat adalah...","","","","Banyak bisnis kuliner yang buka,kemudian gulung tikar dalam waktu singkat","Bisnis kuliner cukup berisiko dan banayk faktor membuat bisnis ini tidak bertahan lama","Banyak pebisnis makanan latah","Mereka tidak sadar biaya bukan sekadar membeli bahan","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("110","BINDO","BINDO","","8","","(1).Kopi tubruk memberikan waktu cukup lama bagi penikmatnya untuk berbincang.(2).Pertama,semua bubuk kopi itu harus dibiarkan dulu mengapung,lalu pelan-pelan bubuk itu akan jatuh kedasar cangkir.(3).Setelah beberapa menit bolehlah sambil berbincang memaiakan sendok di permukaan kopi,membantu perputaran buubuk dari yang mengapung jadi tenggelam.(4).Dalam ritual mini itu,kami berbincang panjang.<br /><br />Kalimat yang tidak padu dalam teks ulasan &nbsp;tersebut adalah nomor...","","","","(1)","(2)","(3)","(4)","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("108","BINDO","BINDO","","6","","(1) Menurut Sugarin,pada umunnya cuaaca di wilayah Riau saat ini diprediksi cerah hingga berawan.(2)Sebagian wilayah utara dan tengah telah diselimuti kabut asap. (3)Asap berasal dari beberapa titik di Riau bagian Timur. (4)Peluang hujan dengan intensitas ringan hingga sedang disertai petir dan angin kencang diperkirakan terjadi di wilayah Riau bagian barat,utara,dan pesisir timur.<br />Perbaikan teks tersebut agar lebih padu dengan cara menghilangkan kalimat nomor...","","","","(1)","(2)","(3)","(4)","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("109","BINDO","BINDO","","7","","(1).Dia ingin tinggal di tempat itu untuk <em>mensucikan</em> diri.<br />(2).Wanita tua itu kini tidak <em>mempunyai</em> tempat tinggal lagi.<br />(3).Dia tidak<em> mengacuhkan</em> nasihat orang tuanya sehinga mendapatkan celaka<br />(4).Para siswa <em>menglasifikasikan</em> topik laporan hasil observasi mereka.<br />(5).Dia tidak<em> memerhatikan</em> pelajaran dengan baik<br /><br />Penulisan kata bercetak miring yang tidak sesuai dengan ejaan adalah kalimat nomor..","","","","(1),(2),(3)","(1),(2),(4)","(1),(3),(4)","(1),(4),(5)","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("107","BINDO","BINDO","","5","","Banyak pihak berupaya mencegah dan mensiasati agar perilaku ini tak muncul ke permukaan. Untuk mencegah terjadi anarki, Pemprov Kalbar melalui Badan Kesatuan Bangsa dan Politik, Kamis (28/3) di Grand Kartika Hotel, menggelar dialog kemitraan yang melibatkan organisasi masyarakat (LSM) yang ada di provinsi ini. Menghadirkan pakar hukum tata negara, Turiman Faturahman Nur sebagai narasumber, dialog kemitraan dihadiri perwakilan 40 ormas dan 35 LSM.<br />Kata yang salah ejaannya pada kalimat tersebut adalah..","","","","pakar","anarki","mensiasati","provinsi","","","","","","","4","1","0","75","4");
INSERT INTO cbt_soal VALUES("106","BINDO","BINDO","","4","","Sebagai perencana, kita harus bisa menentukan <em>prioritas&nbsp;</em>dalam pelaksanaan proyek tersebut. Dengan begitu, perencanaan kita akan menjadi ideal.<br /><br />Makna kata prioritas yang tepat pada kalimat tersebut adalah ...","","","","yang didahulukan daripada yang lain.","yang lebih dicermati daripada yang lain.","yang lebih dipikirkan daripada yang lain","yang lebih diwujudkan daripada yang lain","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("103","BINDO","BINDO","","1","","Salah satu manfaat yang sangat signifikan dari bangun pagi adalah tingkat stres berkurang.Ketika bangun pagi, Anda akan tidak perlu terburu- buru melakukan pekerjaan. Anda dapat memulai hari dengan santai dan terencana. Anda pun bisa menikmati sarapan dengan tenang.<br /><br />Gagasan utama teks tersebut adalah ...","","","","Salah satu manfaat bangun pagi","Tingkat stres berkurang saat kita bangun pagi","Saat bangun pagi ,tidak perlu terburu-buru","Mulailah hari dengan santai dan terencana","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("104","BINDO","BINDO","","2","","Simpulan teks tersebut adalah ...","","","","Bangun pagi memiliki manfaat yang sangat signifikan, yaitu dapat mengurangi tingkat stres.","Anda bisa menikmati sarapan dengan tenang saat bangun pagi.","Anda tidak perlu teruru-buru melakukan pekerjaan pada pagi hari.","Tingkat stres berkurang, Anda pun tenang","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("105","BINDO","BINDO","","3","","(1)Ikan cupang merupakan salah satu ikan hias yang cukup populer di Indonesia. (2)ikan hias ini mempunyai tubuh yang cantik sehingga banyak yang mengoleksinya di akuarium. (3)Ikan cupang termasuk dalam ikan hias air tawar yang sangat mudah untuk dipelihara. (4)Ikan cupang,yaitu jenis ikan air tawar dari daerah yang tropis.<br />Kalimat utama teks tersebut ditunjukkan nomor...","","","","(1)","(2)","(3)","(4)","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("144","BINDO","BINDO","","42","","<p>Seperti biasanya,anak muda itu pergi ke hutan bersama ayahnya.Di hutan,mereka mencari kayu yang akan dijual ke kota.Selama ini ,tak pernah sekalipun anak muda itu membiarkan ayahnya pergi sendiri ke hutan.Apalagi ketika ia tahu ayahnya semakin tua.Kekuatannya tak lagi seperti dulu.Anak muda itu seakan mulai merasakan bahwa pada gilirannya nanti,ia harus menggantikan ayahnya.<br />Dongeng di atas mempunyai keterkaitan dengan kehidupan manusia saat ini,yaitu...</p>","","","","Ketaatan anak terhadap orang tua","Kehidupan orang di hutan","Hidup sengsara orang zaman dulu","Kehidupan anak yang hidup di tepi hutan","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("145","BINDO","BINDO","","43","","<p>Diki mengikuti lomba Cipta Puisi dan Cipta Cerpen.<em>Mendampingi </em>(1) sekolahnya pada FLS2N tahun 2015.FLS2N<em>,pernah</em> (2) dilakukan setiap tahun oleh Kementrian Pendidikan dan Kebudayaan.Hanya tekad dan keberanian <em>cikal</em> (3) utamanya.<br />Kata yang tepat untuk menggatikan kata yang tercetak miring adalah ...</p>\n<p>&nbsp;</p>","","","","1) Mengirim; (2) kadang-kadang; (3) niat","(1) Mewakili; (2) rutin; (3) niat","(1) Mengutus; (2) biasanya; (3) niat","(1) Mengirim; (2)jarang; (3) niat","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("146","BINDO","BINDO","","44","","<p>Ayah mengamati aku dari atas kebawah.Ia berdiri dan menjangkau tangan kananku.Katanya:</p>\n<p>&ldquo;Untuk apa bunga ini,heh.&rdquo;</p>\n<p>Aku tidak tahu karena apa ,telah mencintai bunga ditanganku ini.</p>\n<p>Ayah meraih. Merenggutnya dari tanganku.Kulihat bungkah otot tangan ayah menggenggam bunga kecil-kecil itu.Aku menahan untuk tidak berteriak.</p>\n<p>&ldquo;Laki-laki tidak perlu bunga Buyung.Kalau perempuan, bolehlah.Tetapi kamu laki-laki.&rdquo;</p>\n<p>&nbsp;&nbsp; Ayah melemparkan bunga itu.Aku menjerit.Ayah pergi.Ibu masih berdiri.Aku membungkuk,mengambil bunga itu,membawanya ke kamar&nbsp;</p>\n<p>Makna simbol kata <em>bunga</em> dalam kutipan tersebut adalah....</p>","","","","Bunga melambangkan keindahan sehingga tidak boleh dipetik.","Bunga melambangkan kesucian hanya boleh dipandang.","Bunga melambangkan kelembutan sehingga identik dengan perempuan.","Bunga melambangkan kemurnian yang harus dilindungi.<br />\n<p>&nbsp;</p>","","","","","","","3","1","0","75","4");
INSERT INTO cbt_soal VALUES("147","BINDO","BINDO","","45","","<p>Perhatikan data buku berikut!</p>\n<table width=\"568\">\n<tbody>\n<tr>\n<td width=\"40\">\n<p>No</p>\n</td>\n<td width=\"95\">\n<p>Data</p>\n</td>\n<td width=\"434\">\n<p>Uraian</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>1.</p>\n</td>\n<td width=\"95\">\n<p>Judul</p>\n</td>\n<td width=\"434\">\n<p>Alam semesta yang menakjubkan</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>2.</p>\n</td>\n<td width=\"95\">\n<p>Penulis</p>\n</td>\n<td width=\"434\">\n<p>Firman Sujadi</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>3.</p>\n</td>\n<td width=\"95\">\n<p>Penerbit</p>\n</td>\n<td width=\"434\">\n<p>Bee Media Indonesia</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>4.</p>\n</td>\n<td width=\"95\">\n<p>Tahun</p>\n</td>\n<td width=\"434\">\n<p>2009</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>5.</p>\n</td>\n<td width=\"95\">\n<p>Kota</p>\n</td>\n<td width=\"434\">\n<p>Jakarta</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>6.</p>\n</td>\n<td width=\"95\">\n<p>Kelemahan</p>\n</td>\n<td width=\"434\">\n<p>Tulisannya terlalu kecil</p>\n</td>\n</tr>\n<tr>\n<td width=\"40\">\n<p>7.</p>\n</td>\n<td width=\"95\">\n<p>Kelebihan</p>\n</td>\n<td width=\"434\">\n<p>Gambar-gambarnya menarik dan uraian-</p>\n<p>nya mudah dipahami</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;Paragraf resensi yang sesuai dengan data tersebut adalah ...</p>","","","","Buku yang disusun oleh Firman Sujadi ini mengupas masalah alam semesta. Buku ini diterbitkan <em>&nbsp;Bee Media Indonesia</em>, tahun 2009. Alam semesta khususnya angkasa raya dijelaskan pada buku&nbsp; tersebut dengan uraian-uraian yang sederhana. Gambar-gambar dalam buku tersebut samar&nbsp; karena tulisannya kecil-kecil.","Buku yang menyingkap angkasa raya ini ditulis oleh Firman Sujadi. Buku yang diterbitkan oleh <em>&nbsp;Bee Media Indonesia</em> ini mulai diedarkan di Jakarta tahun 2009. Alam semesta yang maha luas ini dilukiskan dengan gambar yang menarik. Uraiannya pun sangat mudah dipahami. Hanya sayang tulisannya terlalu kecil sehingga merepotkan pembaca.","Buku ini mengungkapkan rahasia&nbsp; alam semesta. Buku yang diterbitkan oleh <em>Bee Media</em><em> Indonesia</em> Jakarta tahun 2009 tidak menyertakan gambar di dalamnya. Walaupun uraian &nbsp;sangat sederhana sehingga mudah dipahami tetapi kurang menarik. Hal ini diperparah lagi dengan tulisannya yang terlalu kecil.","Jarang dijumpai buku yang mengungkapkan ruang angkasa semendetail ini. Gambarnya berwarna seolah-olah pembaca diajak melihat yang aslinya. Uraiannya pun tidak terlalu sulit dipahami. Buku yang diterbitkan <em>Bee Media Indonesia</em> ini sudah habis terjula sejak tahun 2009. Memang buku ini tidak cacatnya.","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("148","BINDO","BINDO","","46","","<p>Para pemenang lomba,waktu dan tempat kami persilakan naik ke atas panggung<br />Perbaikan kalimat tersebut adalah....</p>","","","","Pemenang lomba silakan naik diatas!","Para pemenang lomba dipersilakan menaiki panggung","Para pemenang lomba&nbsp;anda naik keatas&nbsp; panggung! kami persilakan menaiki panggung!","Para pemenang lomba,silakan naik.","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("149","BINDO","BINDO","","47","","<p>Petunjuk memasak pepes ikan teri</p>\n<ul>\n<li>Keluarkan kotoran ikan teri.</li>\n<li>[......]</li>\n<li>Setelah bersih,campurkan bumbu yang telah hingga dihaluskan!</li>\n<li>[.......]</li>\n<li>Kukus dalam panci yang sudah diberi air!&nbsp;</li>\n</ul>\n<p>Kalimat petunjuk yang tepat untuk melengkapi petunjuk tersebut adalah....</p>","","","","(2) Cuci ikan teri hingga bersih!<br />(4) Bungkus dengan daun pisang!","(2) Cuci ikan teri hingga bersih!<br />(4) Angkatlah bila sudah masak!","(2) Bungkus dengan daun pisang!<br />(4) Cuci ikan teri hingga bersih!","(2) Cuci ikan teri hingga bersih!<br />(4) Sajikan selagi hangat!","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("150","BINDO","BINDO","","48","","<p>Kartika memang Cuma seorang guru bantu, tetapi dia telah membawa suasana baru ke sekolah itu. Dia selalu menyelipkan kelakar untuk menyingkirkan suasana serius yang selama ini merajai ruang belajar. Kedudukannya sebagai guru tidak mengungkungnya untuk menjaga jarak dari murid. Dia memperlakukan murid layaknya anak sendiri. Teman malah.</p>\n<p>Terkadang dia memberi tanda mata berupa manisan atau alat tulis kepada murid, yang menurutnya, pada hari itu telah menunjukkan upaya yang lebih besardibandingkan kemarin. Dengan begitu, penghargaan itu tidak hanya monopoli murid yang paling pandai, tetapi juga menjadi sumber kepercayaan bagi mereka yang telah berusaha untuk menyayangi diri sendiri dengan berbuat lebih baik. Untuk menghidupkan suasana kebebasan, tak jarang dia mengajak murid-murid keluar kelas dan belajar bergerombol mengelilingi hariara di pekarangan belakang.</p>\n<p>&nbsp;Amanat kutipan cerita tersebut adalah ...</p>","","","","Sayangilah semua murid dengan memberi hadiah kecil.","Berilah penghargaan kepada murid yang telah berusaha lebih baik.","Yakinlah bahwa hari esok akan lebih baik daripada hari ini.","Pemimpin yang baik harus dapat mengayomi anak buahnya","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("151","BINDO","BINDO","","49","","<p>Seekor beruang mengelilingi hutan mencari buah-buahan.Ia menemukan pohon <em>tumbang</em>.Pohon tersebut terdapat sarang tempat lebah menyimpan madu.Beruang itu mulai mengendus &ndash;endus dengan hati-hati disekitar pohon tumbang tersebut.Ia ingin mencari tahu apakah lebah-lebah sedang berada di dalam sarang tersebut.Tepat pada saat itu .sekumpulan kecil lebah terbang pulang dengan membawa banyak madu.Lebah tersebut tahu maksud sang beruang.Merekaterbang mendekati sang beruanglalu menyengatnya dengan tajam.Kemudian .mereka terbang ke dalam lubang batang pohon.<br /><br />Kata yang tercetak miring tersebut mengandung makna...</p>","","","","Rebah","Jatuh","Patah","Runtuh","","","","","","","2","1","0","75","4");
INSERT INTO cbt_soal VALUES("152","BINDO","BINDO","","50","","<p>Selama ujian berlangsung;Dudi terlihat gelisah.Dia khawatir tidak bisa menjawabsemua soal.Akan tetapi-berkat keuletannya semua terselesaikan sesuai waktu ujian.</p>\n<p>Perbaikan tanda baca yang tepat dalam paragraf tersebut &nbsp;adalah....</p>","","","","<p>tanda koma(,)setelah kata berlangsung<br />tanda koma(,)setelah kata Akan tetapi&nbsp; &nbsp;</p>","<p>tanda titik (.) setelah kata berlangsung<br />tanda titik (.) setelah kata Akan tetapi</p>","<p>tanda titik dua (:) setelah kata berlangsung<br />tanda titik dua (:) setelah kata Akan tetapi</p>","<p>tanda koma (,) setelah kata berlangsung<br />tanda titik (.) setelah kata Akan tetapi</p>","","","","","","","1","1","0","75","4");
INSERT INTO cbt_soal VALUES("228","TKJ","PROTKJ","","36","","Partisi swap dalam sistem operasi UNIX atau Linux digunakan untuk …","2","","","Cache memory","Virtual memory","System memory","Main memory","Accelerator","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("226","TKJ","PROTKJ","","34","","Hardware yang berfungsi merubah sinyal analog menjadi sinyal digital adalah","3","","","Switch","Bridge","Modem","Router","Hub","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("225","TKJ","PROTKJ","","33","","Setiap peralatan yang aktif yang digunakan di dalam jaringan memiliki identitas yang diberikan oleh pabrik pembuatnya disebut :","2","","","IP Address","MAC Address","DNS Address","Logical address","SSID","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("224","TKJ","PROTKJ","","32","","Sebuah jaringan LAN mempunyai alamat IP 192.169.20.36/29, maka alamat broadcast-nya ada pada IP....","4","","","192.168.20.40","192.168.20.0","192.168.20.31","192.168.20.39","192.168.20.225","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("223","TKJ","PROTKJ","","31","","LILO atau Linux loader adalah program yang pertama dijalankan setelah BIOS. Jika di dalam harddisk terdapat lebih dari satu sistem operasi maka LILO diinstal di ....","5","","","Boot sector","Partisi pertama","Partisi home","Partisi kedua","Master boot record","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("221","TKJ","PROTKJ","","29","","Pada saat proses booting , komputer menampilkan pesan kesalahan “Keyboard  error  or  no  keyboardpresent”,  tindakan yang perlu dilakukan seperti di bawah ini, kecuali……","3","","","Matikan kembali komputer dan cek apakah kabel keyboard telah terpasang dengan benar","Lepas dan tancapkan kembali kembali kabel keyboard","Bersihkan keyboard dari debu","Gantikan dengan keyboard yang lain","Cek port keyboard di motherboard�","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("219","TKJ","PROTKJ","","27","","Hasil konversi dari bilangan biner 111011 ke bilngan decimal adalah …","4","","","56","57","58","59","60","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("220","TKJ","PROTKJ","","28","","Setelah sistem operasi diinstal, ternyata resolusi monitor hanya bisa disetting pada resolusi 640x480 yang harus dilakukan agar resolusi berubah adalah…","3","","","Mengganti monitor","Merubah posisi monitor","Menginstal�driver�VGA","Mengganti kabel VGA","Manginstal ulang system operasi","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("218","TKJ","PROTKJ","","26","","Cara memegang komponen yang disarankan adalah...","1","","","Memegang pada sisi atau ujung komponen","Memegang menggunakan tang","Memegang di bagian tengah","Memegang di bagian yang tidak berkilai","Memegang di bagian plastik","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("216","TKJ","PROTKJ","","24","","Ketika akan mengambil baut yang jatuh didalam computer menggunakan obeng bermagnet adalah","2","","","Matikan computer (OFF)","Cabut kabel power dari listrik yang terpasang","Backup computer untuk menghindari kehilangan data","Pastikan ada karet� pada obeng ketika dipegang","Melepas monitor dari komputer","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("215","TKJ","PROTKJ","","23","","Perintah untuk membuat direktori di linux adalah","4","","","mddir","cd","rm","mkdir","mv","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("214","TKJ","PROTKJ","","22","","Sebuah peralatan USB 1.0 akan dipasang pada port USB 2.0. yang terjadi adalah","3","","","Peralatan tersebut tidak berfungsi","Peralatan dapat berfungsi dan kecepatannya USB 2.0","Peralatan dapat berfungsi dan kecepatannya USB 1.0","Peralatan akan rusak","Kecepatan Peralatan akan menyesuaikan dengan USB port yang terpasang","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("213","TKJ","PROTKJ","","21","","Mengubah/mengatur kecepatan dari processor/CPU diatas kecepatan normal disebut…","2","","","Up grade","Over clocking","Over Processor","Over Speed","Over CPU","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("212","TKJ","PROTKJ","","20","","Dua macam topologi wireless yang menggunakan Access Point (AP) dinamakan dengan …?","4","","","Topologi BUS dan Tree","Topologi insfrastructure dan star","Topologi adhoc dan star","Topologi Insfrastructure dan adhoc�","Topologi Mesh dan adhoc","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("211","TKJ","PROTKJ","","19","","Host Dibawah ini adalah yang sistem operasi jaringan berbasis GUI…?","2","","","Ms. Windows 98","Ms.Windows 2003 Server�","Ms. Windows XP","Ms. Windows Vista","Ms. Windows Milenium","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("209","TKJ","PROTKJ","","17","","Pada Ms. Windows 2003 Server untuk mengkonfigurasi Web Server kita pilih menu…?","2","","","Cluster Administrator","Internet Information Services (IIS) Manager","Routing and Remote Access","DNS","Data Sources (ODBC)","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("207","TKJ","PROTKJ","","15","","Untuk menguatkan sinyal pada kabel jaringan lokal diperlukan alat…?","3","","","Bridge","Gateway","Repeater","Amplifier","Router","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("206","TKJ","PROTKJ","","14","","Untuk memeriksa hasil pemasangan konektor RJ 45 pada kabel UTP kita gunakan…?","3","","","Tang krimping","Multitester","LAN Tester","POE","Konektor","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("205","TKJ","PROTKJ","","13","","Antar muka yang bertugas menerjemahkan satuan informasi terkecil di layer fisik adalah.....?","2","","","USB","LAN Card","Kabel UTP","Firewire","RJ 45","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("204","TKJ","PROTKJ","","12","","Lihat gambar di atas, pada Device Manager muncul tanda seperti di atas, hal inimenunjukkan ….?","3","","","Driver komponen komputer berhasil di install","Driver komponen komputer tidak sesuai dengan spesifikasi yang diharapkan","Driver komponen komputer belum di install�","Komponen komputer di non aktifkan","Komponen komputer Plug and Play","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("203","TKJ","PROTKJ","","11","","Apabila dari perintah ping muncul keterangan “Request timed out” berarti…?","2","","","Hubungan kedua komputer berjalan secara normal.","Hubungan kedua komputer terputus","Topologi jaringan tidak sesuai","Internet tidak terhubung","Masalah pada server","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("201","TKJ","PROTKJ","","9","",".  Perintah linux untuk melihat isi dalam suatu direktori adalah…?","3","","","Dir","Chdir","Ls","Ifconfig","Cp","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("200","TKJ","PROTKJ","","8","","Windows adalah salah satu contoh sistem operasi berbasis GUI, kepanjangan dari GUI adalah…?","4","","","Graphical User Input","Graphical User Instruction","Graphical User Interconection","Graphical User Interface�","Graphical User Interactive","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("199","TKJ","PROTKJ","","7","","Nama / identity dari Access Point disebut …?","4","","","WEP","WAP","WPA","SSID�","MAC Address","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("198","TKJ","PROTKJ","","6","","Pada waktu komputer dinyalakan muncul bunyi beep 1 kali panjang dan 3 kali pendek maka terdapat masalah pada pemasangan komponen …?","3","","","Prosesor","RAM","VGA Card","Motherboard","Power Suplly","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("197","TKJ","PROTKJ","","5","","DirectX merupakan tool bawaan windows yang digunakan untuk mendiagnosa semua hardware yang berhubungan dengan …?","1","","","Grafis, network dan multimedia","Prosesor","RAM","Keyboard, mouse, printer","Power supply","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("195","TKJ","PROTKJ","","3","","Dalam log sheet perawatan dan perbaikan komputer yang perlu dilaporkan meliputi, kecuali…?","3","","","Tindakan korektif yang dilakukan untuk melakukan perbaikan terhadap periferal.","Gejala kerusakan","Toko di mana periferal di beli�","Tanggal dan waktu kapan dilakukan maintenance","Nama periferal dan spesifikasi","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("194","TKJ","PROTKJ","","2","","Pada sebuah PC yang mempunyai VGA Card Onboard dapat diaktifkan maupun di non aktifkan melalui …?","4","","","Software Aplikasi","Sistem Operasi","Saklar Mekanik","BIOS","Power Supply","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("227","TKJ","PROTKJ","","35","","Dua buah jaringan dihubungkan dengan switch tapi tidak ada koneksi, pada switch lampu indikator tidak menyala pada salah satunya. Penyebabnya adalah …","5","","","Protokol jaringan tidak cocok","Switch terlalu sibuk","Switch tidak bekerja","Switch tidak cocok","Kesalahan koneksi kabel","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("222","TKJ","PROTKJ","","30","","Partisi untuk swap pada linux disarankan minimal adalah","2","","","1 kali memori computer","2 kali memori computer","3 kali memori computer","4 kali memori computer","5 kali memori komputer","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("217","TKJ","PROTKJ","","25","","Komponen elektronika yang berfungsi untuk mengatur kuat arus yang mengalir adalah …","1","","","Resistor","Kapasitor","Induktor","Transformator","Transistor","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("210","TKJ","PROTKJ","","18","","Setelah system operasi diinstall, ternyata Sound untuk Audio speaker tidak bisa disetting high sound or equalizer. Selalu saja default,  yang harus dilakukan agar equalizer berubah adalah …?","3","","","Mengganti Mainboard","Merubah posisi Speaker�","Menginstall driver Sound-nya�","Mengganti Speaker","Menginstall ulang system operasi","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("208","TKJ","PROTKJ","","16","","Perintah untuk menunjukkan rute yang dilewati paket untuk mencapai suatu tujuan adalah…?","1","","","Tracert","Ping","Netstat","Looklan","Host","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("202","TKJ","PROTKJ","","10","","Kelebihan dari topologi STAR adalah, kecuali?","4","","","Penambahan atau pengurangan terminal sangat mudah dan tidak mengganggu bagian jaringan yang lain","Paling fleksibel karena pemasangan kabel mudah","Kemudahan dalam isolasi kesalahan serta memudahkan pengelolaan jaringan","Boros kabel","Kontrol terpusat sehingga memudahkan dalam deteksi kesalahan","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("196","TKJ","PROTKJ","","4","","Jika terjadi muncul peringatan pada monitor printer “paper jam”, disebabkan karena…?","4","","","Kertas pada printer habis","Roller printer aus","Tinta arsober pada printer penuh","Kertas masuk tidak simetris�","Tinta pada inktank habis","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("193","TKJ","PROTKJ","","1","","Terjadinya tabrakan pengiriman data pada suatu jaringan komputer dikenal dengan istilah…?","4","","","Fusion","Broken","Attacking","Collision","Explode","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("229","TKJ","PROTKJ","","37","","Pada sistem operasi berbasis Linux, nama file yang mengatur permberian layanan IP secara otomatis adalah…","1","","","Dhcpd.conf","Interfaces","Squid.conf","Dhcp3-server","Dhcp","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("230","TKJ","PROTKJ","","38","","Yang tidak termasuk ke dalam Routing Protocol adalah","1","","","PPP","OSPF","EIGRP","BGP","RIP","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("231","TKJ","PROTKJ","","39","","Repeater pada OSI layer terletak di…","2","","","Physical","Datalink","Network","Persentation","Transport","","","","","","","1","0","78","4");
INSERT INTO cbt_soal VALUES("232","TKJ","PROTKJ","","40","","MAC atau Media Acces Control di OSI Layer ada pada layer ...","4","","","Physical","Networki","Transport","Data link","Session","","","","","","","1","0","78","4");



DROP TABLE cbt_tabel_data;

CREATE TABLE `cbt_tabel_data` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `ukuran` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tgl_upload` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;




DROP TABLE cbt_ujian;

CREATE TABLE `cbt_ujian` (
  `Urut` int(11) NOT NULL AUTO_INCREMENT,
  `XKodeKelas` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `XJumSoal` int(11) NOT NULL,
  `XTglUjian` date NOT NULL,
  `XJamUjian` time NOT NULL,
  `XBatasMasuk` time NOT NULL,
  `XSisaWaktu` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XLamaUjian` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `XTokenUjian` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `XStatusUjian` varchar(1) COLLATE latin1_general_ci NOT NULL,
  `XNilai` int(1) NOT NULL,
  PRIMARY KEY (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_ujian VALUES("4","A","BINDO","BINDO","50","2017-02-23","20:46:00","23:46:00","","04:00:00","WDDTE","1","1");



