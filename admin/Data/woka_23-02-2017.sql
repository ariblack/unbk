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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_jawaban VALUES("1","1","1","PAI","KAQMH","1","2","3","4","5","B","","XB","2","10","","2017-02-22","23:28:15","2","1","KAQMH");
INSERT INTO cbt_jawaban VALUES("2","2","2","PAI","KAQMH","1","2","3","4","5","E","","XE","5","0","","2017-02-22","23:28:18","2","1","KAQMH");
INSERT INTO cbt_jawaban VALUES("3","3","3","PAI","KAQMH","1","2","3","4","5","O","allo rekan dunia maya :), sempatkan lagi saya berbagi tips trik php jquery yang sebelumnya saya telah membagikan tips Auto Load dan Refresh Div setiap 10 Detik dengan jQuery\nSekarang saya berbagi mengenai insert data sekaligus load data tanpa merefresh halaman php, tentunya sangat me","X","","10","0","2017-02-23","00:08:46","2","1","");
INSERT INTO cbt_jawaban VALUES("4","4","4","PAI","KAQMH","1","2","3","4","5","O","test ubahdsfsdf","X","","0","","2017-02-22","23:56:11","2","1","");
INSERT INTO cbt_jawaban VALUES("5","5","5","PAI","KAQMH","1","2","3","4","5","O","Mohon maaf, karena ada kesalahan, maka kodenya penulis potong sebagian, untuk lengkapnya, penulis sudah meyediakan link downloadnya ...\n\nSecara keseluruhan skrip diatas adalah berfungsi untuk membackup semua tabel pada database MySQL.. pada variabel $a, cukup kita masukkan saja info mengenai username dan password, serta  nama database PHPmYadmin kita..\n\nSo.. ini merupakan trik penting yang harus ada dalam sebuah sistem, namun minim khususnya pemula yang bingung bikinnya.. :)\n\nSemoga postingan ini bisa memberikan manfaat untuk Anda..","X","","10","","2017-02-23","00:02:06","2","1","");
INSERT INTO cbt_jawaban VALUES("6","6","6","PAI","KAQMH","1","2","3","4","5","O","allo rekan dunia maya :), sempatkan lagi saya berbagi tips trik php jquery yang sebelumnya saya telah membagikan tips Auto Load dan Refresh Div setiap 10 Detik dengan jQuery\nSekarang saya berbagi mengenai insert data sekaligus load data tanpa merefresh halaman php, tentunya sangat me","X","","10","","2017-02-23","00:08:25","1","1","");
INSERT INTO cbt_jawaban VALUES("7","7","7","PAI","KAQMH","1","2","3","4","5","D","","XD","4","0","","2017-02-23","00:01:55","2","1","KAQMH");
INSERT INTO cbt_jawaban VALUES("8","8","8","PAI","KAQMH","1","2","3","4","5","O","asfasfasfasf","X","","10","","2017-02-23","00:08:31","3","1","");
INSERT INTO cbt_jawaban VALUES("9","9","9","PAI","KAQMH","1","2","3","4","5","O","sfafasfasf","X","","10","","2017-02-23","00:08:36","4","1","");
INSERT INTO cbt_jawaban VALUES("10","10","10","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","5","1","");
INSERT INTO cbt_jawaban VALUES("11","11","11","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("12","12","12","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("13","13","13","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","3","1","");
INSERT INTO cbt_jawaban VALUES("14","14","14","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","4","1","");
INSERT INTO cbt_jawaban VALUES("15","15","15","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","5","1","");
INSERT INTO cbt_jawaban VALUES("16","16","16","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("17","17","17","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("18","18","18","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("19","19","19","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("20","20","20","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("21","21","21","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("22","22","22","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("23","23","23","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("24","24","24","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("25","25","25","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("26","26","26","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("27","27","27","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("28","28","28","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("29","29","29","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("30","30","30","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("31","31","31","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("32","32","32","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","2","1","");
INSERT INTO cbt_jawaban VALUES("33","33","33","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","3","1","");
INSERT INTO cbt_jawaban VALUES("34","34","34","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","4","1","");
INSERT INTO cbt_jawaban VALUES("35","35","35","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","5","1","");
INSERT INTO cbt_jawaban VALUES("36","36","36","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("37","37","37","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("38","38","38","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("39","39","39","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");
INSERT INTO cbt_jawaban VALUES("40","40","40","PAI","KAQMH","1","2","3","4","5","","","","","0","","2017-02-22","00:00:00","1","1","");



DROP TABLE cbt_kelas;

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeLevel` varchar(5) collate latin1_general_ci NOT NULL,
  `XLevelKelas` varchar(5) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_kelas VALUES("1","SD","I","a","1");



DROP TABLE cbt_mapel;

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_mapel VALUES("1","","1","AGAMA ISLAM ","");



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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa VALUES("1","1","1","1","a","I","L","1","");



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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa_ujian VALUES("1","1","a","1","PAI","40","2017-02-23 07:36:57","23:26:00","23:27:05","07:36:57","","03:58:55","00:00:00","KAQMH","00:00:00","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_soal VALUES("61","1","PAI","","10","","FSFSD,GNSGK","","","","MDFNGBD","DFNGBDMN","DFNGB","CNGBM","KDJBGK","","","","","","2","0","0","75");
INSERT INTO cbt_soal VALUES("60","1","PAI","","9","","SDFDLGL","","","","DFJGHDKJ","KDFJGHKJ","KDJFGHDK","KFDJGDFKJ","KDFJGHDFK","","","","","","3","0","0","75");
INSERT INTO cbt_soal VALUES("59","1","PAI","","8","","SDFSDJFSKJ","","","","LDFGKJ","KDFJGH","DFJGDFKJ","DKFJGHDFKJ","KDFJGHDK","","","","","","2","0","0","75");
INSERT INTO cbt_soal VALUES("58","1","PAI","","7","","FFGDFKJHGKJ","","","","KDFJGKDJH","KDFJGHDKJ","DFKJGDK","FKDJGHDFKJ","DFJGHDKJ","","","","","","3","0","0","75");
INSERT INTO cbt_soal VALUES("57","1","PAI","","6","","DSFLDHGKJ","","","","KDFJGDK","DFGHSJ","KDFJGHDFKJG","DFJGHDKJH","KJDGFHDKGJH","","","","","","4","0","0","75");
INSERT INTO cbt_soal VALUES("56","1","PAI","","5","","DGDFKGJH","","","","DKFJGH","DKFJG","KDFJG","KJG","QQ","","","","","","3","0","0","75");
INSERT INTO cbt_soal VALUES("55","1","PAI","","4","","GDFJGHK","","","","DKFJH","KDJFHG","KDJFHG","KDJHGF","DKJFGH","","","","","","1","0","0","75");
INSERT INTO cbt_soal VALUES("54","1","PAI","","3","","SFBSD","","","","SJBKDB","KJGB","KDJFGB","KDFJG","KJFG","","","","","","1","0","0","75");
INSERT INTO cbt_soal VALUES("53","1","PAI","","2","","<img src=\"/unbk/pictures/f8d1b532e406db5a8a3a3b83e2ac83b3.jpg\" width=\"153\" height=\"198\" /><br />INI SOAL GAMBAR&nbsp;","","","","ASFAS","FDLKJH","DFGKJHDFK","DFKGJH","DKGJH","","","","","","1","0","0","75");
INSERT INTO cbt_soal VALUES("52","1","PAI","","1","","SOAL NOMOR 1","","","","JAWABAN 1","JAWAB 2","JAWAB 3","JAWAB 4","JAWAB 5","","","","","","2","0","0","75");



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
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_ujian VALUES("1","a","1","PAI","40","2017-02-22","23:26:00","24:00:00","","04:00:00","KAQMH","1");



