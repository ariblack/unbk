DROP TABLE cbt_admin;

CREATE TABLE `cbt_admin` (
  `Urut` int(11) NOT NULL auto_increment,
  `XSekolah` varchar(250) collate latin1_general_ci NOT NULL,
  `XStatus` varchar(1) collate latin1_general_ci NOT NULL,
  `user` varchar(150) collate latin1_general_ci NOT NULL,
  `password` varchar(150) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_admin VALUES("2","SMK PEMBANGUNAN SURABAYA","1","admin","adminwoka");



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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_jawaban VALUES("1","1","1","PAI","KHKSD","1","2","3","4","5","B","","XB","2","0","","2025-06-09","04:30:40","3","0076450016","KHKSD");
INSERT INTO cbt_jawaban VALUES("2","2","2","PAI","KHKSD","1","2","3","4","5","C","","XC","3","0","","2025-06-09","04:30:44","2","0076450016","KHKSD");
INSERT INTO cbt_jawaban VALUES("3","3","3","PAI","KHKSD","1","2","3","4","5","B","","XB","2","0","","2025-06-09","04:30:50","4","0076450016","KHKSD");
INSERT INTO cbt_jawaban VALUES("4","4","4","PAI","KHKSD","1","2","3","4","5","C","","XC","3","0","","2025-06-09","04:31:17","1","0076450016","KHKSD");
INSERT INTO cbt_jawaban VALUES("5","5","5","PAI","KHKSD","1","2","3","4","5","","","","","0","","2025-06-09","00:00:00","3","0076450016","");



DROP TABLE cbt_kelas;

CREATE TABLE `cbt_kelas` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeLevel` varchar(5) collate latin1_general_ci NOT NULL,
  `XLevelKelas` varchar(5) collate latin1_general_ci NOT NULL,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XStatusKelas` varchar(1) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_kelas VALUES("1","SMK","X","DKV","1");
INSERT INTO cbt_kelas VALUES("2","SMK","X","PH","1");



DROP TABLE cbt_mapel;

CREATE TABLE `cbt_mapel` (
  `Urut` int(11) NOT NULL auto_increment,
  `XKodeKelas` varchar(10) collate latin1_general_ci NOT NULL,
  `XKodeMapel` varchar(10) collate latin1_general_ci NOT NULL,
  `XNamaMapel` varchar(30) collate latin1_general_ci NOT NULL,
  `XKodeSoal` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`Urut`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_mapel VALUES("1","","PAI","PENDIDIKAN AGAMA ISLAM","");
INSERT INTO cbt_mapel VALUES("2","","PAK","PENDIDIKAN AGAMA KRISTEN","");
INSERT INTO cbt_mapel VALUES("3","","SEJIN","SEJARAH INDONESIA","");
INSERT INTO cbt_mapel VALUES("4","","PKN","PENDIDIKAN KEWARGANEGARAAN","");
INSERT INTO cbt_mapel VALUES("5","","BIN","BAHASA INDONESIA","");
INSERT INTO cbt_mapel VALUES("6","","BIG","BAHASA JAWA","");
INSERT INTO cbt_mapel VALUES("7","","MTK","MATEMATIKA","");
INSERT INTO cbt_mapel VALUES("8","","BIG","BAHASA INGGRIS","");
INSERT INTO cbt_mapel VALUES("9","","PJOK","PENDIDIKAN JASMANI, OLAHRAGA D","");
INSERT INTO cbt_mapel VALUES("10","","SENBUD","SENI BUDAYA","");
INSERT INTO cbt_mapel VALUES("11","","IPAS","IPAS","");
INSERT INTO cbt_mapel VALUES("12","","INFOR","INFORMATIKA","");
INSERT INTO cbt_mapel VALUES("13","","KOMGRA","KOMPUTER GRAFIS","");
INSERT INTO cbt_mapel VALUES("14","","PELPRIM","PELAYANAN PRIMA","");
INSERT INTO cbt_mapel VALUES("15","","TIPO","TIPOGRAFI","");
INSERT INTO cbt_mapel VALUES("16","","KEPAR","KEPARIWISATAAN","");
INSERT INTO cbt_mapel VALUES("17","","FOTOENT","FOTOGRAFI & ENTREPRENEUR","");
INSERT INTO cbt_mapel VALUES("18","","HYSAN","HYGENE & SANITASI","");
INSERT INTO cbt_mapel VALUES("19","","SKETSIL","SKETSA & ILUSTRASI","");
INSERT INTO cbt_mapel VALUES("20","","INDKEP","INDUSTRI KEPARIWISATAAN","");
INSERT INTO cbt_mapel VALUES("21","","HSP","HOSPITALITY","");



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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_siswa VALUES("1","3088568690","3088568690","ADI FERDIAN","DKV","X","L","3088568690*","");
INSERT INTO cbt_siswa VALUES("2","0089022992","0089022992","DIMAS IBRAHIM","DKV","X","L","0089022992*","");
INSERT INTO cbt_siswa VALUES("3","0069442492","0069442492","FERRY RAHMAWAN","DKV","X","L","0069442492*","");
INSERT INTO cbt_siswa VALUES("4","0095883991","0095883991","FIONNA GABRIELLA ZHIFFANA CANDRA","DKV","X","P","0095883991*","");
INSERT INTO cbt_siswa VALUES("5","0073831480","0073831480","KRESENSIA EUGINE","DKV","X","P","0073831480*","");
INSERT INTO cbt_siswa VALUES("6","0077272976","0077272976","MOCH. GALANG EKA PUTRA SETIAWAN","DKV","X","L","0077272976*","");
INSERT INTO cbt_siswa VALUES("7","0076450016","0076450016","MOHAMAD SAFARIL ILHAM","DKV","X","L","0076450016*","");
INSERT INTO cbt_siswa VALUES("8","0081171531","0081171531","MUHAMAT RIZAL ADIT PUJIANTO","DKV","X","L","0081171531*","");
INSERT INTO cbt_siswa VALUES("9","3092619020","3092619020","MUHAMMAD BULAN JAKARIA","DKV","X","L","3092619020*","");
INSERT INTO cbt_siswa VALUES("10","0086071878","0086071878","MUHAMMAD IHKSAN ABIMANYU","DKV","X","L","0086071878*","");
INSERT INTO cbt_siswa VALUES("11","0085052084","0085052084","NUR ZUBAIDAH","DKV","X","P","0085052084*","");
INSERT INTO cbt_siswa VALUES("12","0084112980","0084112980","OKTAVIA PUTRI MAHARANI","DKV","X","P","0084112980*","");
INSERT INTO cbt_siswa VALUES("13","0087164030","0087164030","RAKHA FIRJATULLAH FAUZI","DKV","X","L","0087164030*","");
INSERT INTO cbt_siswa VALUES("14","0094780109","0094780109","RIDHO MAULANA","DKV","X","L","0094780109*","");
INSERT INTO cbt_siswa VALUES("15","0077132659","0077132659","SAHWA AULIA NOVATRIANA","DKV","X","P","0077132659*","");
INSERT INTO cbt_siswa VALUES("16","0081863012","0081863012","SEVEN JULIUS LIE","DKV","X","L","0081863012*","");
INSERT INTO cbt_siswa VALUES("17","0089917961","0089917961","SYAMSUL ARIFIN","DKV","X","L","0089917961*","");
INSERT INTO cbt_siswa VALUES("18","0088271076","0088271076","UWAIS","DKV","X","L","0088271076*","");
INSERT INTO cbt_siswa VALUES("19","0083076948","0083076948","VINZA AQILAH INSANI RIZKY","DKV","X","P","0083076948*","");
INSERT INTO cbt_siswa VALUES("20","0086853812","0086853812","YUNITA GENDIS TRIHAPSARI","DKV","X","P","0086853812*","");
INSERT INTO cbt_siswa VALUES("21","0077152805","0077152805","ACHMAD RAMADHONI FARIS","PH","X","L","0077152805*","");
INSERT INTO cbt_siswa VALUES("22","0081905398","0081905398","ANDIKA MAULANA RAMADHANI","PH","X","L","0081905398*","");
INSERT INTO cbt_siswa VALUES("23","0092111029","0092111029","ANISA APRILIA","PH","X","P","0092111029*","");
INSERT INTO cbt_siswa VALUES("24","0083168255","0083168255","AYU WANDIRA","PH","X","P","0083168255*","");
INSERT INTO cbt_siswa VALUES("25","0097572585","0097572585","GALLANT NOVAREZQY AREL","PH","X","L","0097572585*","");
INSERT INTO cbt_siswa VALUES("26","0084608887","0084608887","HANIFAH","PH","X","P","0084608887*","");
INSERT INTO cbt_siswa VALUES("27","0081506765","0081506765","INDAH NASULFA","PH","X","P","0081506765*","");
INSERT INTO cbt_siswa VALUES("28","0083737381","0083737381","LAILA TUZ ZAHRO","PH","X","P","0083737381*","");
INSERT INTO cbt_siswa VALUES("29","0082754776","0082754776","LAILATUL KOMARIYAH","PH","X","P","0082754776*","");
INSERT INTO cbt_siswa VALUES("30","0097752102","0097752102","MARDIANA KIRANI ROSEMALADEWI","PH","X","P","0097752102*","");
INSERT INTO cbt_siswa VALUES("31","0086842801","0086842801","MAULIDIA AINI","PH","X","P","0086842801*","");
INSERT INTO cbt_siswa VALUES("32","0089450834","0089450834","MAYA SAFIRA","PH","X","P","0089450834*","");
INSERT INTO cbt_siswa VALUES("33","0084438522","0084438522","MOCH. AGUNG PURWANTO","PH","X","L","0084438522*","");
INSERT INTO cbt_siswa VALUES("34","0081642874","0081642874","MOCH. WISNU PURWANTO","PH","X","L","0081642874*","");
INSERT INTO cbt_siswa VALUES("35","0091484133","0091484133","MOCHAMMAD RAFFI ERLANGGA","PH","X","L","0091484133*","");
INSERT INTO cbt_siswa VALUES("36","0087412395","0087412395","MUHAMMAD FIRMANSYAH","PH","X","L","0087412395*","");
INSERT INTO cbt_siswa VALUES("37","3084156106","3084156106","MUHAMMAD IQBAL PRASTYO","PH","X","L","3084156106*","");
INSERT INTO cbt_siswa VALUES("38","0098083866","0098083866","NAURA KIRANA LARASATY","PH","X","P","0098083866*","");
INSERT INTO cbt_siswa VALUES("39","0071931817","0071931817","NOUVAL MURDANY","PH","X","L","0071931817*","");
INSERT INTO cbt_siswa VALUES("40","0082222567","0082222567","NOVITA SARI RAHAYU NINGSIH","PH","X","P","0082222567*","");
INSERT INTO cbt_siswa VALUES("41","0089267440","0089267440","NURUL AULIA","PH","X","P","0089267440*","");
INSERT INTO cbt_siswa VALUES("42","0089470519","0089470519","OLIVIA RIZKY RAHMADANI","PH","X","P","0089470519*","");
INSERT INTO cbt_siswa VALUES("43","0087322726","0087322726","PASHYA NIAS IVANDA HAREFA","PH","X","P","0087322726*","");
INSERT INTO cbt_siswa VALUES("44","0084144989","0084144989","RASYA REVANDIKA","PH","X","L","0084144989*","");
INSERT INTO cbt_siswa VALUES("45","0073224019","0073224019","REWVAN AKBAR VIRLANGGA ARDHIXZA","PH","X","L","0073224019*","");
INSERT INTO cbt_siswa VALUES("46","3085055993","3085055993","SARAH APRILLIA RASTY","PH","X","P","3085055993*","");
INSERT INTO cbt_siswa VALUES("47","0094098162","0094098162","SHERLY NUR ARIANTI","PH","X","P","0094098162*","");
INSERT INTO cbt_siswa VALUES("48","0082621525","0082621525","TIARA ANGGELINA","PH","X","P","0082621525*","");
INSERT INTO cbt_siswa VALUES("49","0086300306","0086300306","VIOLITTA OCTAVIA RIBOWO","PH","X","P","0086300306*","");
INSERT INTO cbt_siswa VALUES("50","0084097651","0084097651","YUSUF GHUFRON RAJAB","PH","X","L","0084097651*","");
INSERT INTO cbt_siswa VALUES("51","0085923557","0085923557","ZAHRA RAIHANA","PH","X","P","0085923557*","");



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

INSERT INTO cbt_siswa_ujian VALUES("1","0076450016","DKV","PAI","PAI","5","2025-06-09 04:33:34","03:40:00","04:33:13","04:33:13","","00:58:20","00:00:00","KHKSD","00:00:00","9");



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

INSERT INTO cbt_skul VALUES("1","SUMATIF AKHIR SEMESTER","SMK PEMBANGUNAN SURABAYA","SMK","127.0.0.1","JL. SIMOJAWAR VII/54 SURABAYA","03199142299","","smk.pembangunan.sby@hotmail.com","https://www.smkpembangunansby.sch.id/","logoFTIF.png","banner.png","FREDY IRIANTO, S.Pd","","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO cbt_soal VALUES("1","PAI","PAI","","1","","Harapan kepada Allah SWT disertai ketundukan hati akan menjadikan seseorang … menghadapi cobaan hidup.","","","","Semena-mena","Khawatir","Pesimis","Malas","Optimis","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("2","PAI","PAI","","2","","Bentuk syaja’ah dengan mengakui kesalahan disebut juga dengan …","","","","Kitmanus Sirr","Al I’tiraf bil khata’","Al insaf minan nafs","At tafaul al itmi’nan","As Sarahah fil haq","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("3","PAI","PAI","","3","","Al Kulliyatu al khamsah adalah lima prinsip hukum islam yang bertujuan untuk mewujudkan …","","","","Ketakutan","Mafsadat","Mudarat","Kemaslahatan","Keberanian","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("4","PAI","PAI","","4","","Berikut yang bukan hikmah adanya dakwah wali sanga di Jawa adalah …","","","","Runtuhnya kerajaan Hindu dan Buddha","Tersebarnya agama islam di berbagai lapisan masyarakat","Terjadinya akulturasi budaya","Mengajarkan islam yang penuh dengan keramahan dan kedamaian","Memperkaya bentuk arsitektur bangunan","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("5","PAI","PAI","","5","","Sikap berani yang sebaiknya ditunjukkan kepada teman adalah berani …","","","","Menjahili orang dijalan","Meninggalkan sholat","Menolak Ketika teman mengajak menyontek","Melawan guru disekolah","Bolos pelajaran","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("6","PAI","PAI","","6","","Sunan Kalijaga adalah seorang bangsawan, yakni putra adipati …","","","","Pajang","Tuban","Mataram","Cirebon","Demak","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("7","PAI","PAI","","7","","Rasa takut kepada Allah SWT harus diikuti dengan …","","","","Kesombongan","Kemuliaan","Keikhlasan","Ketaatan","Rendah diri","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("8","PAI","PAI","","8","","Dibawah ini cara yang bisa dilakukan untuk mengontrol diri, kecuali …","","","","Melampiaskan kekesalan pada orang yang membuat marah","Memperbanyak zikir kepada Allah SWT","Memikirkan akibat dari setiap perbuatan","Tidak tergesa-gesa dalam mengambil keputusan","Berdoa memohon perlindungan kepada Allah SWT","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("9","PAI","PAI","","9","","Menjaga harta dalam peringkat al tahsiniyyah dapat dilakukan dengan …","","","","Mencari harta dengan cara yang halal","Diharamkannya mengambil harta milik orang lain","Disyariatkannya tata cara pemilikan","Disyariatkannya jual beli dengan cara salam","Dibuat ketentuan yang jelas dalam berakad","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("10","PAI","PAI","","10","","Wali Sanga berikut yang merupakan saudara kandung adalah …","","","","Sunan Gresik dan Sunan Bonang","Sunan Giri dan Sunan Bonang","Sunan Drajat dan Sunan Bonang","Sunan Kalijaga dan Sunan Muria","Sunan Muria dan Sunan Gunung Jati","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("11","PAI","PAI","","11","","Berikut perilaku yang tidak mencerminkan dakwah islam adalah …","","","","Ikut berpartisipasi dalam kegiatan bakti social","Mengajak teman untuk bolos pramuka","Mengajak teman ikut kajian hari Jum’at","Shalat berjamaah di musala sekolah Ketika jam istirahat","Mengunggah hal-hal baik di social media","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("12","PAI","PAI","","12","","Maulana Malik Ibrahim atau Sunan Gresik dikenal juga dengan nama Maulana Magribi (Syekh Magribi) yang berasal dari Magribi yang berada di …","","","","Asia Barat","Asia Tengah","Afrika Selatan","Eropa Barat","Afrika Utara","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("13","PAI","PAI","","13","","“Sesungguhnya orang-orang yang beriman, orang-orang yang berhijrah dan berjihad dijalan Allah, mereka itu mengharapkan rahmat Allah” …\nAyat diatas merupakan terjemahan dari surat …","","","","Al Baqarah ayat 218","Ali ‘Imran ayat 159","Asy Syura ayat 36","Ali ‘Imran ayat 134","Al Anfal ayat 72","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("14","PAI","PAI","","14","","Menjaga keturunan harus didahulukan daripada menjaga …","","","","Akal","Jiwa","Harta","Keluarga","Agama","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("15","PAI","PAI","","15","","Berikut yang bukan sarana dakwah Sunan Kalijaga adalah …","","","","Candi","Gamelan","Seni ukir","Suluk","Agama","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("16","PAI","PAI","","16","","Upaya menyadarkan manusia dari ambisi jabatan dan kedudukan merupakan pemikiran kesufian yang didakwahkan oleh Sunan …","","","","Ampel","Giri","Muria","Drajat","Kalijaga","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("17","PAI","PAI","","17","","Maksud dari tazkiyah dalam konsep kontrol diri adalah …","","","","Perselisihan antar golongan","Mengasihani diri sendiri yang tidak bisa mengontrol diri","Menyucikan diri dari perbuatan buruk dan akhlak yang tercela","Persaudaraan yang bersifat islami","Berprasangka baik terhadap sesama","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("18","PAI","PAI","","18","","Berikut yang merupakan perbuatan mendekati zina adalah …","","","","Keluar di malam hari tanpa ditemani saudara","Berdua-duaan yang bukan suami istri di tempat sepi","Pergi ke rumah teman untuk mengerjakan tugas kelompok","Jajan sendirian ditempat yang sepi","Laki-laki dan perempuan kakak beradik yang menonton film di bioskop","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("19","PAI","PAI","","19","","Penyebab seseorang memiliki sifat iri dengki yaitu …","","","","Kurangnya rasa syukur","Rasa ingin menang sendiri","Bawaan lahir","Faktor keturunan","Hatinya jelek","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("20","PAI","PAI","","20","","Orang yang perkasa adalah orang yang …","","","","Bisa mengerjakan segala hal","Bisa menyantap banyak makanan","Kuat mengangkat beban berat","Bisa melawan orang banyak","Mampu mengendalikan amarah","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("21","PAI","PAI","","21","","Sunan Gunung Jati mendirikan kesultanan yang diberi nama Kesultanan …","","","","Banten","Cirebon","Bintoro Demak","Pajajaran","Kudus","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("22","PAI","PAI","","22","","Wali Sanga tidak hanya mampu berdakwah, tetapi juga mampu …","","","","Meruntuhkan kerajaan Hindu dan Buddha","Menghasut penduduk agar memeluk Islam","Memberikan keteladanan","Memberikan banyak harta benda","Menguasai seluruh wilayah Jawa","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("23","PAI","PAI","","23","","Lawan dari syaja’ah adalan al jubn yang berarti …","","","","Pendendam","Pemarah","Pemalas","Pantang menyerah","Pengecut","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("24","PAI","PAI","","24","","Lama hukuman pengasingan bagi pelaku zina gairu muhsan adalah …","","","","1 Tahun","2 Tahun","3 Tahun","6 Bulan","9 Bulan","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("25","PAI","PAI","","25","","Perhatikan pernyataan-pernyataan berikut!\n<br> 1) Berduaan dengan lawan jenis ditempat sepi.\n<br> 2) Mengenakan pakaian yang memperlihatkan lekuk tubuh.\n<br> 3) Memilih tayangan atau konten di media sosial dengan selektif.\n<br> 4) Melakukan aktivitas-aktivitas yang dapat merangsang syahwat\n<br> 5) Menahan diri untuk tidak mendatangi tempat-tempat maksiat\n<br> Pernyataan-pernyataan tersebut yang merupakan upaya untuk menghindari pergaulan bebas dan zina ditunjukkan oleh nomor …","","","","1) dan 2)","2) dan 3)","3) dan 5)","4) dan 5)","1) dan 5)","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("26","PAI","PAI","","26","","Dibawah ini yang bukan faktor penyebab seseorang menjadi berani membela kebenaran yaitu …","","","","Mencintai kehidupan akhirat","Tidak materialistis","Tidak ragu-ragu dengan kebenaran","Karena diancam orang","Takut kepada Allah SWT","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("27","PAI","PAI","","27","","Ja’far Shadiq adalah nama lain dari Sunan …","","","","Kudus","Kalijaga","Giri","Muria","Bonang","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("28","PAI","PAI","","28",""," untuk pembelajaran di sekolah hingga saat ini adalah …","","","","Bi’sah","Silaturrahmi","Ekspansi","Diskusi","Keteladanan","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("29","PAI","PAI","","29","","Sikap tawakal paling tepat dilakukan setelah seseorang …","","","","Merencanakan sebuah hasil pekerjaan","Berusaha dan berdo’a","Sudah mendapatkan banyak kemewahan","Puas atas hasil pekerjaannya","Berniat melakukan usaha","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("30","PAI","PAI","","30","","Salah satu kesenian dakwah yang dibuat Sunan Muria yaitu …","","","","Tembang Tamba Ati","Tembang Mijil","Tembang Kinanti","Suluk Wijil","Gamelan Jawa","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("31","PAK","PAK","","1","","Suatu hari, Daniel mengetahui bahwa sahabatnya, Beni, telah menyebarkan rahasia pribadinya kepada teman-teman di sekolah. Daniel merasa sangat marah dan kecewa karena tidak menyangka Beni akan melakukan hal tersebut. Namun, setelah berdoa dan merenungkan firman Tuhan, Daniel memutuskan untuk memaafkan Beni dan tidak membalas perbuatannya.\n<br>Apa nilai Kekristenan yang ditunjukkan oleh Daniel dalam cerita tersebut?","","","","Ketekunan dalam belajar","Pengampunan dan kasih kepada sesama","Kesetiaan kepada teman","Ketegasan dalam menghadapi masalah","Kemampuan nya yang hebat","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("32","PAK","PAK","","2","","Di antara berikut ini, manakah yang bukan termasuk buah-buah Roh?","","","","Kasih","Sukacita","Kekayaan","Kesabaran","Kemakmuran","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("33","PAK","PAK","","3","","Faktor-faktor pertumbuhan itu ada ….","","","","2","3","4","5","6","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("34","PAK","PAK","","4","","Alkitab itu terdiri dari dua yaitu Perajnjian Lama dan Perjanjian Baru senua berjumlah 66 kitab , Alkitab perjanjian lama ada….","","","","29 kitab","39 kitab","27 kitab","37 kitab","33 kitab","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("35","PAK","PAK","","5","","Pertumbuhan otot, tulang, dan organ tubuh lainnya pada anak adalah bagian dari aspek pertumbuhan...","","","","Motorik","Kognitif","Fisik","Emosional","Spiritual","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("36","PAK","PAK","","6","","Ayat manakah dalam Alkitab yang menyebutkan buah-buah Roh?","","","","Yohanes 3:16","Mazmur 23:1","Galatia 5:22-23","Matius 28:19","Lukas 5 : 7","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("37","PAK","PAK","","7","","Apa yang dimaksud dengan \"penguasaan diri\" sebagai buah Roh?","","","","Menahan diri untuk tidak membantu orang lain","Mengatur emosi dan tindakan sesuai kehendak Tuhan","Menguasai orang lain dengan kekuatan","Menyimpan perasaan agar tidak diketahui","Tidak mampu mengendalikan diri","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("38","PAK","PAK","","8","","Mengapa buah-buah Roh penting dalam kehidupan orang percaya?","","","","Untuk menjadi lebih pintar dan sukses","Sebagai tanda hidup yang dipimpin oleh Roh Kudus","Agar disukai banyak orang","Untuk mendapat berkat materi","Untuk menjamin kehidupan ","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("39","PAK","PAK","","9","","Berapa jumlah buah-buah Roh yang disebutkan dalam Galatia 5:22-23?","","","","Tujuh","Delapan","Sembilan","Sepuluh","Dua belas","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("40","PAK","PAK","","10","","Apa arti iman menurut Ibrani 11:1?","","","","Bukti bahwa Tuhan pasti mengabulkan doa kita","Keyakinan akan segala sesuatu yang kita lihat","Dasar dari segala sesuatu yang kita harapkan dan bukti dari segala sesuatu yang tidak kita lihat","Cara untuk mendapatkan semua keinginan","Ke percayaan yang masih samar-samar","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("41","PAK","PAK","","11","","Siapakah yang disebut sebagai \"bapa orang beriman\"?","","","","Musa","Daud","Abraham","Paulus","Yusuf","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("42","PAK","PAK","","12","","Apa yang terjadi pada Petrus saat ia berjalan di atas air menuju Yesus karena iman, lalu mulai tenggelam?","","","","Ia langsung bisa berenang ke kapal","Ia diselamatkan oleh murid lain","Ia berseru kepada Yesus dan Yesus menolongnya","Ia berubah pikiran dan kembali ke kapal","Ia ketakutan","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("43","PAK","PAK","","13","","Menurut Yakobus 2:26, iman tanpa perbuatan adalah…","","","","Tidak lengkap","Tetap menyelamatkan","Dapat dimengerti","Mati","Jadi kuat","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("44","PAK","PAK","","14","","Bagaimana cara menumbuhkan iman menurut Roma 10:17?","","","","Dengan melihat mujizat","Dengan membaca kitab sejarah","Dari pendengaran, dan pendengaran oleh firman Kristus","Dengan banyak berpuasa","Dengan setia membantu Pastor","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("45","PAK","PAK","","15","","Rina melihat temannya, Santi, duduk sendirian dan menangis karena tidak punya teman. Apa yang seharusnya Rina lakukan sebagai anak Kristus?","","","","Membiarkannya sendiri","Mengajak teman lain untuk mengejek Santi","Duduk dan menghibur Santi serta menjadi temannya","Melaporkan Santi ke guru","Membiarkan Santi sendirian","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("46","PAK","PAK","","16","","Andi menemukan dompet di jalan sepulang sekolah. Sebagai anak Kristus, apa yang sebaiknya dilakukan Andi?","","","","Mengambil uangnya sedikit dan membuang dompetnya","Menyimpannya untuk dirinya sendiri","Membawa dompet itu ke kantor polisi atau mencari pemiliknya","Memberikannya ke temannya agar disimpan","Memberikan pada orang tuanya untuk beli makanan","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("47","PAK","PAK","","17","","Beni diejek oleh teman-temannya karena selalu berdoa sebelum makan di kantin. Bagaimana sebaiknya Beni bersikap?","","","","Tidak usah berdoa lagi supaya tidak diejek","Balas mengejek mereka","Tetap berdoa dan mendoakan teman-temannya","Marah dan tidak mau makan di kantin lagi","Dia marah dan dendam, nanti akan membalasnya","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("48","PAK","PAK","","18","","Lia diberi pilihan untuk ikut mencontek saat ujian atau mendapatkan nilai rendah. Sebagai anak Kristus, apa pilihan terbaik?","","","","Ikut mencontek agar tidak dimarahi orang tua","Membiarkan temannya mencontek saja","Menolak mencontek dan percaya Tuhan akan menolong","Mencontek diam-diam agar tidak ketahuan","Bersama temannya juga mencontek","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("49","PAK","PAK","","19","","Setiap hari Minggu pagi, Dito merasa malas pergi ke sekolah minggu karena ingin bermain game. Apa yang sebaiknya Dito lakukan sebagai anak Kristus?","","","","Mematikan game dan memilih datang ke sekolah minggu","Bermain game dulu lalu datang terlambat","Menyuruh orang tua ke gereja tanpa dirinya","Menonton kebaktian lewat internet sambil main game","Ibadah nya ditundah setelah main game","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("50","PAK","PAK","","20","","Alkitab memberikan pengharapan bagi umat Kristen karena:","","","","Menjanjikan kekayaan dan kemakmuran","Menceritakan kisah-kisah orang sukses","Menyampaikan janji keselamatan dan kehidupan kekal melalui Yesus Kristus","Mengajarkan tentang cara hidup yang bahagia","Memberikan kemenangan","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("51","PAK","PAK","","21","","Salah satu alasan pentingnya membaca Alkitab setiap hari adalah:","","","","Agar menjadi lebih pintar dalam sejarah","Untuk mendalami firman Tuhan dan mendekatkan diri kepada-Nya","Untuk mengetahui semua peristiwa yang terjadi di dunia","Agar tidak lupa akan cerita-cerita Alkitab","Biar selalu ingat akan janji Tuhan","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("52","PAK","PAK","","22","","Siapakah Roh Kudus dalam ajaran Kristen?","","","","Malaikat yang menyampaikan pesan dari Tuhan","Roh penolong yang berasal dari Allah","Nabi yang memberitakan Injil","Manusia yang hidup suci","Dia yang punya kuasa untuk melakukan segala perkara","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("53","PAK","PAK","","23","","Roh Kudus diberikan kepada umat Kristen untuk:","","","","Menjadi pemimpin dunia","Memberikan hikmat, kekuatan, dan penghiburan dalam hidup","Membuat mereka terkenal","Menambah kekayaan mereka","Memberikan kepandaian","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("54","PAK","PAK","","24","","Mira adalah seorang siswi kelas 6 yang rajin menabung uang jajannya. Suatu hari, ia melihat seorang anak kecil duduk di pinggir jalan dalam keadaan lapar dan kedinginan. Tanpa ragu, Mira membeli makanan dan minuman untuk anak tersebut dari uang tabungannya, lalu duduk dan menemaninya makan. Tindakan Mira mencerminkan nilai Kekristenan yaitu…","","","","Ketaatan kepada guru","Ketekunan dalam menabung","Kebaikan dan kasih tanpa pamrih","Kedisiplinan dalam belajar","Tolong menolong","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("55","PAK","PAK","","25","","Ayat terkenal tentang kasih adalah…","","","","Yohanes 3:16","Mazmur 23","Kejadian 1:26","Markus 10:45","Amsal 7 : 7","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("56","PAK","PAK","","26","","Kasih terbesar adalah…","","","","Kasih orang tua","Kasih dari pasangan","Kasih Kristus di salib","Kasih guru kepada murid","Kasih teman yang setia","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("57","PAK","PAK","","27","","Kasih tidak melakukan yang tidak sopan, artinya…","","","","Bertindak semaunya","Mempermalukan orang","Menjaga sikap terhadap sesama","Mengolok orang yang berbeda","Selalu suka memberi","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("58","PAK","PAK","","28","","Riko adalah siswa kelas 5 yang sedang menghadapi ujian Matematika. Ketika ujian berlangsung, ia melihat temannya, Anton, membuka buku di bawah meja. Anton kemudian berbisik dan meminta Riko menunjukkan jawabannya. Riko tahu bahwa menyontek adalah perbuatan yang tidak jujur dan bertentangan dengan ajaran yang ia pelajari di sekolah dan gereja. Meski merasa tidak enak, Riko tetap memilih untuk tidak membantu Anton menyontek dan melanjutkan mengerjakan ujiannya dengan jujur.\n<br>Nilai moral apa yang ditunjukkan oleh Riko?","","","","Toleransi terhadap teman","Kepedulian terhadap orang lain","Kejujuran dan tanggung jawab","Kerja sama dalam belajar","Kepedulian dan kebersamaan","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("59","PAK","PAK","","29","","Perubahan fisik yang terjadi pada masa remaja adalah…","","","","Bertambahnya utang","Pertumbuhan tubuh yang cepat","Menurunnya penglihatan","Tidak bisa belajar","Pertumbuhan cara berpikirnya","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("60","PAK","PAK","","30","","Masa remaja sangat penting karena…","","","","Masa paling santai dalam hidup","Masa pertumbuhan menuju kedewasaan","Masa bebas tanpa tanggung jawab","Masa penuh foya-foya","Masa yang penuh dengan gejolak","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("61","SEJIN","SEJIN","","1","","Historiografi merupakan suatu bentyk publikasi, baik itu dalam bentuk lisan maupun juga tulisan mengenai peristiwa kejadian atau kombinasi peristiwa – peristiwa di masa lampau. Pendapat ini dikemukakan oleh ….","","","","Louis Gottschalk","Kuntowijoyo","Prof. Dr. Ismaun, M.Pd","Soejatmoko","Abdurrahman Hamid","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("62","SEJIN","SEJIN","","2","","Urutan perkembangan historiografi Indonesia adalah ….","","","","Historiografi tradisional, modern, dan kolonial","Historiografi kolonial, modern, dan tradisional","Historiografi kolonial, tradisional, dan modern","Historiografi tradisional, kolonial, dan modern","Historiografi modern,tradisional, dan kolonial","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("63","SEJIN","SEJIN","","3","","Berikut faktor pendorong berkembangnya Kerajaan Mataram Kuno, kecuali …","","","","Raja rajanya arif dan bijaksana","Toleransi yang tinggi antara pemeluk agama Hindu dan Buddha","Wilayah yang amat subut","Ada kerja sama yang baik antara raja dan para Brahmana","Semangat kebudayaan raja – raja Mataram Kuno yang rendah","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("64","SEJIN","SEJIN","","4","","Karakteristik historiografi kolonial adalah ….","","","","Menggambarkan perjuangan Indonesia","Bersifat Indonesiasentris","Disusun untuk kepentingan penjajahan Belanja","Disusun para pujangga atau bangsawan keraton","Disusun sejak masa kemerdekaan","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("65","SEJIN","SEJIN","","5","","Historiografi tradisional bersifat istanasentris artinya …..","","","","Karya historiografi hanya boleh dibaca orang – orang istana","Historiografi tentang kehidupan rakyat diseputar istana","Karya sejarah hanya dipusatkan pada kehidupan istana","Karya sejarah yang dihasilkan oleh raja","Karya sejarah menceritakan rakyat jelata namun berpusat di istana","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("66","SEJIN","SEJIN","","6","","Perhatikan pernyataan berikut!\n<br>1) Bersifat istanasentris dan fokusnya ke kehidupan raja\n<br>2) Merupakan sejarah orang Belanda di Hindia Timur (Indonesia)\n<br>3) Penulisan hanya membahas tentang kehidupan bangsawan\n<br>4) Sumber yang digunakan yaitu sumber dari pemerintah Belanda dan tanah jajahan\n<br>Berdasarkan pernyataan diatas, ciri – ciri historiografi kolonial ditunjukkan pada angka ….","","","","1 dan 3","1 dan 4","2 dan 3","2 dan 4","3 dan 4","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("67","SEJIN","SEJIN","","7","","Karya historiografi berupa tulisan yang menjadi tanda dimulainya historiografi tradisional adalah ….","","","","Kitab pararaton","Babad tanah jawa","Kitab negarakertagama","Kitab ramayana","Babad sriwijaya","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("68","SEJIN","SEJIN","","8","","Karya historiografi tradisional yang keseluruhan ceritanya didominasi unsur Islam adalah ….","","","","Babad","Prasasti","Hikayat","Kronik","Naskah","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("69","SEJIN","SEJIN","","9","","Salah satu kelebihan historiografi tradisional adalah ….","","","","Penulisan bertujuan menghormati kedudukan raja","Dari isi penulisannya, raja dianggap memiliki kekuatan gaib atau sakti","Penulisan karya membahasa kehidupan bangsawan","Kehidupan rakyat jelata tidak dijadikan bahan tulisan","Selalu dihubungkan dengan hal hal gaib dan mistis","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("70","SEJIN","SEJIN","","10","","Nama – nama raja yang pernah berkuasa di mataram dapat diketahui dari isi prasasti….","","","","Canggal","Karang Tengah","Kedu","Ratu Boko","Wantil","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("71","SEJIN","SEJIN","","11","","Perpaduan antara agama Hindu-Buddha dengan kepercayaan Yang telah ada dan berkembang di masyarakat Indonesia pada saat itu disebut….","","","","Arkaisme ","Sinkretisme","Anarkisme","Totemisme","Absolutisme","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("72","SEJIN","SEJIN","","12","","Akulturasi seni bangunan antara kebudayaan Hindu dengan kebudayaan asli indonesia terlihat pada Candi Borobudur. Hal yang merupakan kebudayaan asli Indonesia adalah….","","","","Punden berundak","Perahu bercadik","Arca buddha","Bentuk candi","Relief Buddha","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("73","SEJIN","SEJIN","","13","","Salah satu bukti bangsa indonesia telah mendapat pengaruh budaya Hindu-Buddha adalah…","","","","Adanya bangunan agama berbentuk setengah lingkaran","Munculnya animisme dan dinanimisme ","Adanya pemerintahan berbentuk kerajaan","Adanya karya sastra berisi filsafat etika","Adanya pola masyarakat macapat","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("74","SEJIN","SEJIN","","14","","Karya sastra berikut yang dikategorikan historiografi modern adalah…","","","","Mahabrata dan Ramayana ","Prasasti Kedukan Bukit","Kitab Negarakertagama ","Indonesian Trade and Society","Pemberontakan Petani Banten 1888","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("75","SEJIN","SEJIN","","15","","Bagian candi Borobudur yang merupakan tingkat paling rendah atau disebut kaki candi dan berarti tingkatan manusia masih terpengaruh oleh keduniawian dinamakan…","","","","Rajadhatu ","Dewadhatu ","Ampadhatu ","Kamadhatu ","Supadhatu","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("76","SEJIN","SEJIN","","16","","Daerah-daerah yang disebut para sejarawan sebagai daerah asal pengaruh masuknya agama islam di Indonesia adalah…","","","","Gujarat, Irak, dan Tiongkok","Gujarat, Irak, dan Persia","Persia, India, dan Turki","Arab, Mesir, dan India","Arab, Gujarat, dan Persia","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("77","SEJIN","SEJIN","","17","","Islam masuk ke Nusantara dengan berbagai saluran. Berikut yang Bukan merupakan saluran islamisasi di Nusantara adalah….","","","","Perdagangan","Pernikahan ","Pendidikan ","Pemaksaan ","Tasawuf ","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("78","SEJIN","SEJIN","","18","","Persinggungan antara islam dan budaya masyarakat Nusantara melahirkan banyak akulturasi. Berikut merupakan akulturasi budaya Nusantara dan islam dalam bidang kesusatraan, kecuali…","","","","Suluk ","Syair ","Hikayat ","Kaligrafi","Babat","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("79","SEJIN","SEJIN","","19","","Peninggalan sejarah islam di Nusantara berupa teks sastra yang mengandung ajaran tasawuf, suatu aliran mistik dalam islam yang mengungkap tentang jalan spiritual asketis atau mati raga menuju kesatuan dengan Tuhan adalah…","","","","Babad ","Hikayat","Kaligrafi ","Suluk ","Tasawuf","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("80","SEJIN","SEJIN","","20","","Tari seudati merupakan salah satu tarian hasil akulturasi kebudayaan Islam. Tari tersebut berasal dari daerah...","","","","Minangkabau","Aceh","Makassar ","Bima","Banjarmasin ","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("81","SEJIN","SEJIN","","21","","Proses integrasi bangsa Indonesia mulai mengalami kemajuan akibat proses islamisasi pada abad ke-","","","","14","15","16","17","18","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("82","SEJIN","SEJIN","","22","","Bahasa yang digunakan sebagai bahasa dagang dan lambat laun tumbuh menjadi bahasa perantara dan menjadi lingua franca (bahasa pergaulan) di seluruh kepulauan Nusantara pada masa lalu adalah bahasa…","","","","Inggris ","Portugis","Belanda","Melayu","Prancis","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("83","SEJIN","SEJIN","","23","","Kitab Sastra Gending merupakan salah satu hasil kebudayaan pada masa Kerajaan Mataram Islam. Kitab tersebut ditulis oleh….","","","","Fatahillah ","Amangkurat I","Amangkurat II","Mas jolang ","Sultan agung","","","","","","5","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("84","SEJIN","SEJIN","","24","","Dasar teori kedatangan Islam di Indonesia sesuai teori Tiongkok adalah…","","","","Ditemukannya makam Maulana Malik Ibrahim yang berangka tahun 1419 di Gresik","Penggunaan istilah bahasa Iran dalam sistem mengeja huruf Arab untuk  tanda-tanda bunyi harakat","Pelabuhan penting sepanjang abad ke-15 seperti Gresik, menurut catatan-catatan Tiongkok, diduduki pertama-tama oleh para pelaut dan pedagang Tiongkok","Raja-raja Samudra pasai menggunakan gelar al Malik","Kesamaan ajaran sufi yang dianut syekh Siti Jennar dengan ajaran sufi dari Iran, yaitu al Hallaj","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("85","SEJIN","SEJIN","","25","","Agama Hindu dan Buddha masuk ke Indonesia karena….","","","","para pedagang dari India menyebarkannya secara paksa di daerah pesisir","raja-raja di Indonesia mengundang biksu dan brahmana dari India untuk menetap","adanya orang Indonesia yang belajar agama Hindu–Buddha di India, lalu kembali ke Indonesia dan menyebarkannya","bangsa India menjajah wilayah Indonesia dan mewajibkan penduduk memeluk Hindu–Buddha","peperangan antara kerajaan di India dan Indonesia yang menyebabkan penyebaran agama","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("86","SEJIN","SEJIN","","26","","Memasuki abad ke 13, Islam mulai mencapai masa keemasan, yaitu ditandai dengan ….","","","","Munculnya kerajaan bercorak Islam","Banyak terdapat ulama atau wali yang menyebarkan agama Islam","Masyarakat Indonesia melaksanakan ibadah haji","Masuknya budaya Islam di Nusantara","Pedagang muslim banyak yang masuk ke wilayah Nusantara","","","","","","1","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("87","SEJIN","SEJIN","","27","","Islam masuk ke Nusantara dengan berbagai saluran. Berikut yang bukan merupakan saluran islamisasi di Nusantara adalah …..","","","","Perdagangan","Pernikahan","Pendidikan","Pemaksaan ","Tasawuf","","","","","","4","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("88","SEJIN","SEJIN","","28","","Berikut ini adalah beberapa fungsi dari candi pada zaman kerajaan Hindu – Buddha, kecuali …..","","","","Menyimpan abu jenazah","Pusat aktivitas para biksu","Tempat rekreasi keluarga raja","Tempat pemujaan","Simbol kebesaran raja","","","","","","3","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("89","SEJIN","SEJIN","","29","","Pengaruh agama dan kebudayaan Hindu Buddha dalam sistem pemerintahan di Indonesia, yaitu bentuk pemerintahan ….","","","","Rakyat","Kerajaan","Republik","Kepala adat","Demokratis","","","","","","2","0","0","0","0","0");
INSERT INTO cbt_soal VALUES("90","SEJIN","SEJIN","","30","","Bentuk kesenian ukir yang dipahat di dinding Candi Borobudur disebut ….","","","","Patung","Arca","Relief","Gerabah","Nekara","","","","","","3","0","0","0","0","0");



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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;




