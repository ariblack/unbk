<?php include "config/cbt_con_i.php";
error_reporting(0);
// ===============================
// Status Ujian XStatusUjian = 1 Aktif
// Status Ujian XStatusUjian = 0 BelumAktif
// Status Ujian XStatusUjian = 9 Selesai

$tgl = date("H:i:s");
$user = $_COOKIE['PESERTA'];

$sql = mysqli_query($sqlconn_i, "Update cbt_siswa_ujian set XLastUpdate = '$tgl' where XNomerUjian = '$user' and XStatusUjian = '1'");

//cek data siswa ujian
  $sqluser = mysqli_query($sqlconn_i, "SELECT * FROM  `cbt_siswa` s LEFT JOIN cbt_ujian u ON s.XKodeKelas = u.XKodeKelas WHERE XNomerUjian = 
  '$user' and u.XStatusUjian = '1'");
  $s = mysqli_fetch_array($sqluser);
  $val_siswa = $s['XNamaSiswa'];
  $xkodesoal = $s['XKodeSoal'];
  $xkodemapel = $s['XKodeMapel'];
  $xjumlahsoal = $s['XJumSoal'];
  $xtokenujian = $s['XTokenUjian'];  
  
$sqlceksiswa = mysqli_query($sqlconn_i, "select * from cbt_siswa_ujian where XNomerUjian = '$user' and XKodeSoal = '$xkodesoal' and XTokenUjian = '$xtokenujian'"); 
$s2 = mysqli_fetch_array($sqlceksiswa);

  $xjumlahjam = $s2['XLamaUjian'];
  $xjam = substr($xjumlahjam,0,2);
  $xmnt = substr($xjumlahjam,3,2);
  $xdtk = substr($xjumlahjam,6,2);
  $xstatusujian = $s2['XStatusUjian'];
 // echo "$xstatusujian<br>";
  
$jatahjam = $xjam;
$jatahmnt = $xmnt;
$menit = $jatahmnt+($jatahjam*60);
$timestamp = strtotime($s2['XMulaiUjian']) + $menit*60;
$tjam = date('H', $timestamp);
$tmnt = date('i', $timestamp);
$tdtk = date('s', $timestamp);
$jamterakhirlogout = "$tjam:$tmnt:$tdtk";
if($tgl>$jamterakhirlogout){
//echo "<br>$user : $tjam:$tmnt:$tdtk | $jamterakhirlogout";//jam harus berakhir
$sql = mysqli_query($sqlconn_i, "Update cbt_siswa_ujian set XStatusUjian = '9' where XNomerUjian = '$user' and XStatusUjian = '1'  and XTokenUjian = '$xtokenujian'");

} else {
//echo "Lanjut";
}


$sql = mysqli_query($sqlconn_i, "Update cbt_siswa_ujian set XStatusUjian = '9' where XNomerUjian = '$user' and XStatusUjian = '1'  and XTokenUjian = '$xtokenujian'");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
</head>

<body>
    <header>
        <nav class="navbar">
            <div class="container">
                <a class="navbar-brand" href="http://smkpembangunansby.sch.id">CBT ONLINE | APLIKASI</a>
                <div class="pull-right bg-dark">
                    <div class="access-panel">
                        <div class="ac-avatar"></div>
                        <div class="ac-info">
                            <span class="ac-welcome">Selamat Datang</span>

                            <span class="ac-name"><?php echo "$val_siswa"; ?></span>
                            <a href="logout.php" class="logout">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>


    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/main.css" rel="stylesheet">
    <div class="main-content">


        <div class="page-column">


            <div class="page-col-small col-centered login-wrapper">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title page-label">Konfirmasi Tes</h1>
                    </div>
                    <?php
                    //include "config/cbt_con_i.php";
                    $sqltoken = mysqli_query($sqlconn_i, "SELECT * FROM cbt_siswa_ujian where XNomerUjian = '$user' and XStatusUjian = '1'");
                    $t = mysqli_fetch_array($sqltoken);
                    $tokenujian = $t['XTokenUjian'];


                    $sql = mysqli_query($sqlconn_i, "SELECT *,u.XStatusUjian as ujsta,c.XTokenUjian as tokenz,u.XNomerUjian as noujian
FROM cbt_siswa s
LEFT JOIN `cbt_siswa_ujian` u ON u.XNomerUjian = s.XNomerUjian
LEFT JOIN cbt_ujian c ON (u.XKodeSoal = c.XKodeSoal and u.XTokenUjian = c.XTokenUjian)
WHERE u.XTokenUjian='$tokenujian'");

                    $s = mysqli_fetch_array($sql);
                    $nama = str_replace("  ", "", $s['XNamaSiswa']);
                    $nouji = str_replace("  ", "", $s['noujian']);
                    $kodekelas = str_replace("  ", "", $s['XKodeKelas']);
                    $kodeNIK = str_replace("  ", "", $s['XNIK']);
                    $KodeMapel = str_replace("  ", "", $s['XKodeMapel']);
                    $staujian = str_replace("  ", "", $s['ujsta']);
                    $token = str_replace("  ", "", $s['tokenz']);
                    $soaluji = str_replace("  ", "", $s['XKodeSoal']);
                    $kkm = '75';
                    $sqldijawab = mysqli_num_rows(mysqli_query($sqlconn_i, " SELECT * FROM `cbt_jawaban` WHERE XTokenUjian = '$token' and XJawaban != '' and XUserJawab = '$user'"));
                    $sqljawaban = mysqli_query($sqlconn_i, " SELECT count( XNilai ) AS HasilUjian FROM `cbt_jawaban` WHERE XNilai = '10' and XTokenUjian = '$token' and XUserJawab = '$user'");
                    $sqlsalah = mysqli_query($sqlconn_i, " SELECT count( XNilai ) AS HasilUjian FROM `cbt_jawaban` WHERE XNilai = '0' and XTokenUjian = '$token' and XUserJawab = '$user'");
                    $sqj = mysqli_fetch_array($sqljawaban);
                    $sqs = mysqli_fetch_array($sqlsalah);
                    $jumbenar = $sqj['HasilUjian'];
                    $jumsalah = $sqs['HasilUjian'];
                    $jumsoal = $jumbenar + $jumsalah;
                    $nilai = ($jumbenar * 100) / ($jumsoal);

                    ?>
                    <div class="panel-body">
                        <div class="inner-content">
                            <div class="wysiwyg-content">
                                <center>
                                    <p>Terima Kasih telah mengikuti ujian dengan Tertib.
                                        <br />
                                        <strong>
                                            <H1>NILAI <?php echo $nilai; ?></H1>
                                        </strong>
                                        Silahkan klik tombol LOGOUT untuk mengakhiri test.
                                    </p>
                                </center>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-xs-offset-3 col-xs-6"><a href="logout.php">
                                        <button type="submit" class="btn btn-success btn-block" data-dismiss="modal">LOGOUT</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

</body>

</html>