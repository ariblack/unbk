<?php
include "config/cbt_con_i.php";
if (isset($_COOKIE['PESERTA']) && isset($_COOKIE['KUNCI'])) {
    $user = "$_COOKIE[PESERTA]";
    $pass = "$_COOKIE[KUNCI]";
    $txtuser = $user;
    $txtpass = $pass;
} else {
    //$user = "$_REQUEST[UserName]";
    $txtuser = str_replace(" ", "", $_REQUEST['UserName']);
    $txtpass = str_replace(" ", "", $_REQUEST['Password']);
    setcookie('PESERTA', $txtuser);
    setcookie('KUNCI', $txtpass);
    $user = "$txtuser";
    $pass = "$txtpass";
}

// echo "SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass' $_COOKIE[PESERTA] | $_COOKIE[KUNCI]";

$sqllogin = mysqli_query($sqlconn_i, "SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass'");
$sis = mysqli_fetch_array($sqllogin);
$val_siswa = $sis['XNamaSiswa'];
$xjeniskelamin = $sis['XJenisKelamin'];
if ($xjeniskelamin == "L") {
    $jekel = "LAKI-LAKI";
} else {
    $jekel = "PEREMPUAN";
}
//echo "SELECT * FROM  `cbt_siswa` WHERE XNomerUjian = '$txtuser' and XPassword = '$txtpass'";
$jmlsqllogin = mysqli_num_rows($sqllogin);
if ($jmlsqllogin < 1) {
    //header('Location:login.php?salah=1');
?>
    
    <script> location.replace("login.php?salah=1"); </script>
<?php    
}

$tglujian = date("Y-m-d");
$xjam1 = date("H:i:s");

isset($_COOKIE['PESERTA']) ? $user = $_COOKIE['PESERTA'] : setcookie('PESERTA', $user);

$sqluser = mysqli_query($sqlconn_i, "SELECT *,s.XNamaKelas as kelas,s.XKodeKelas as kelassiswa FROM  `cbt_siswa` s LEFT JOIN cbt_ujian u ON s.XKodeKelas = u.XKodeKelas
  left join cbt_mapel m on  m.XKodeMapel = u.XKodeMapel
  WHERE XNomerUjian = '$user' and u.XStatusUjian = '1'");
$s = mysqli_fetch_array($sqluser);
$xkodesoal = $s['XKodeSoal'];
$xkelas = $s['kelas'];
$xkodekelas = $s['kelassiswa'];
$xtglujian = $s['XTglUjian'];
$xkodemapel = $s['XKodeMapel'];
$xjumlahsoal = $s['XJumSoal'];
$xtokenujian = $s['XTokenUjian'];
$xlamaujian = $s['XLamaUjian'];
$xjamujian = $s['XJamUjian'];
$xbatasmasuk = $s['XBatasMasuk'];
$xnamamapel = $s['XNamaMapel'];



?>

<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>CBT ONLINE | APLIKASI</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
    </script>

    <style>
        .no-close .ui-dialog-titlebar-close {
            display: none;
        }
    </style>

    <link href="css/fonts.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

    <script src="js/inline.js"></script>

<body class="font-medium">


    <main>

        <!-- <header>
            <nav class="navbar">
                <div class="container">
                    <a class="navbar-brand" href="#">CBT ONLINE | APLIKASI</a>
                    <div class="pull-right bg-dark">
                        <div class="access-panel">
                            <div class="ac-avatar"></div>
                            <div class="ac-info">
                                <span class="ac-welcome">Selamat Datang</span>

                                <span class="ac-name"><?php echo "$val_siswa"; ?></span>
                                <a href="akhir.php" class="logout">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header> -->
        <div id="myerror" class="alert alert-danger" role="alert" style="font-size: 13px; font-style:normal; font-weight:normal">
            <ul>
                <li style="display:contents">
                    <?php
                    if (($_REQUEST['salah'] ?? 0) == 1) {
                        echo "<b><ul><li>Kode TOKEN Tidak sesuai</li></ul></b>";
                    }
                    ?>
                </li>
            </ul>
        </div>

        <div class="container">
            <div class="main-content">


                <form action="mulai.php" method="post">
                    <div class="page-column">

                        <div class="alert alert-danger" role="alert" style="font-size: 16px;">
                            <div class="validation-summary-valid" data-valmsg-summary="true">
                                <ul>
                                    <li style="display:none"></li>
                                </ul>
                            </div>

                        </div>
                        <div class="page-col-middle col-centered">
                            <div class="list-group">
                                <div class="list-group-item top-heading">
                                    <h1 class="list-group-item-heading page-label">Konfirmasi Data Peserta</h1>
                                </div>
                                <div class="list-group-item">
                                    <label class="list-group-item-heading">NISN</label>
                                    <p class="list-group-item-text"><?php echo "$user"; ?></p>
                                    <!--<input id="KodeNik" name="KodeNik" type="hidden" value="<?php echo "$user"; ?>">!-->
                                    <input id="KodeNik" name="KodeNik" type="hidden" value="<?php echo "$user"; ?>">
                                </div>
                                <div class="list-group-item">
                                    <label class="list-group-item-heading">Nama Peserta</label>
                                    <p class="list-group-item-text"><?php echo "$val_siswa ($xkelas - $xkodekelas)"; ?></p>
                                    <input id="NamaPeserta" name="NamaPeserta" type="hidden" value="glyphicon-warning-sign">
                                </div>
                                <div class="list-group-item">
                                    <label class="list-group-item-heading">Jenis Kelamin</label>
                                    <p class="list-group-item-text"><?php echo "$jekel"; ?></p>
                                    <input id="Gender" name="Gender" type="hidden" value="Pria">
                                </div>

                                <?php
                                $sqlada = mysqli_query($sqlconn_i, "SELECT * FROM  `cbt_siswa_ujian` WHERE XNomerUjian = '$txtuser' and XTokenUjian = '$xtokenujian'");
                                $ad = mysqli_fetch_array($sqlada);
                                $jumsis = $ad['XStatusUjian'];

                                $ada = mysqli_num_rows($sqlada);

                                $sqlcekujian = mysqli_num_rows(mysqli_query($sqlconn_i, "SELECT * FROM cbt_ujian where XKodeKelas = '$xkodekelas' and XStatusUjian = '1'"));
                                if ($sqlcekujian > 0) { ?>

                                    <div class="list-group-item">
                                        <label class="list-group-item-heading">Mata Pelajaran </label>
                                        <p class="list-group-item-text"><?php echo "$xnamamapel"; ?></p>
                                        <input id="KodePaket" name="KodePaket" type="hidden" value="IPA - SMP">
                                    </div>

                                    <?php
                                    if (($xjam1 <= $xbatasmasuk && $xjam1 >= $xjamujian) && ($tglujian == $xtglujian) && ($jumsis !== '9')) {
                                        $sqlout = mysqli_query($sqlconn_i, "Update cbt_siswa_ujian set XStatusUjian = '9' where XNomerUjian = '$user' and XStatusUjian = '1'");
                                        //header('location:logout.php');
                                    ?>
                                        <!-- <script> location.replace("logout.php"); </script> -->

                                        <div class="list-group-item">
                                            <label class="list-group-item-heading">Token <?php // echo "$jumsis = $ada"; 
                                                                                            ?></label>
                                            <?php $sqluji = mysqli_query($sqlconn_i, "select *,u.XKodeSoal as koso,u.XKodeKelas as koke from cbt_ujian u left join cbt_mapel m on m.XKodeMapel = u.XKodeMapel where u.XStatusUjian = '1'");
                                            $su = mysqli_fetch_array($sqluji);
                                            $val_kmapel = str_replace("  ", "", $su['XKodeMapel']);
                                            $val_nmapel = str_replace("  ", "", $su['XNamaMapel']);
                                            $val_kelas = str_replace("  ", "", $su['koke']);
                                            $val_soal = str_replace("  ", "", $su['koso']);
                                            $val_tgl = str_replace("  ", "", $su['XTglUjian']);
                                            $val_jam = str_replace("  ", "", $su['XJamUjian']);
                                            $val_durasi = str_replace("  ", "", $su['XLamaUjian']);
                                            $val_late = str_replace("  ", "", $su['XBatasMasuk']);
                                            $val_jumsoal = str_replace("  ", "", $su['XJumSoal']);
                                            $val_token = str_replace("  ", "", $su['XTokenUjian']);

                                            $jumsoal = mysqli_num_rows(mysqli_query($sqlconn_i, "select * from cbt_soal where  XKodeSoal = '$val_soal'"));
                                            $val_banksoal =  "$jumsoal";

                                            ?>

                                            <div class="list-group-item-text">
                                                <input autocomplete="off" class="input-token form-control field-xs" data-val="true" data-val-required="Kode 	
                    token wajib diisi" id="KodeToken" maxlength="20" name="KodeToken" placeholder="masukan token" type="text" value="<?php echo $val_token; ?>">
                                            </div>
                                        </div>
                                        <div class="list-group-item">
                                            <div class="row">
                                                <div class="col-xs-push-9 col-xs-3"><br>
                                                    <button type="submit" class="btn btn-success btn-block doblockui">SUBMIT</button>
                                                </div>
                                            </div>
                                        </div>

                                    <?php
                                    } else {
                                    ?>
                                        <div class="list-group-item">
                                            <label class="list-group-item-heading">Status Ujian <?php // echo "$jumsis = $ada"; 
                                                                                                ?></label>
                                            <div class="list-group-item-text">
                                                <?php if ($jumsis == '9') { ?>
                                                    <p class="list-group-item-text">Status Tes sudah SELESAI</p>
                                                <?php } elseif ($xjam1 < $xjamujian || $tglujian !== $xtglujian) { ?>
                                                    <p class="list-group-item-text">Tidak Ada Jadwal Ujian</p>
                                                <?php } elseif ($xjam1 >= $xjamujian && $xjam1 > $xbatasmasuk) { ?>
                                                    <p class="list-group-item-text">Terlambat Untuk Mengikuti Ujian</p>
                                                <?php } ?>

                                            </div>
                                        </div>
                                    <?php } ?>

                                <?php } else { ?>
                                    <div class="list-group-item">
                                        <label class="list-group-item-heading">Status Ujian<?php // echo "$jumsis / $ada"; 
                                                                                            ?> </label>
                                        <div class="list-group-item-text">
                                            <p class="list-group-item-text">Tidak ada Mata Uji AKTIF</p>
                                        </div>
                                    </div>

                                <?php } ?>


                            </div>
                        </div>
                    </div>
                </form>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="panel-default">
                                <div class="panel-heading">
                                    <h1 class="panel-title page-label">Konfirmasi Tes</h1>
                                </div>
                                <div class="panel-body">
                                    <div class="inner-content">
                                        <div class="wysiwyg-content">
                                            <p>
                                                Terimakasih telah berpartisipasi dalam tes ini.<br>
                                                Silahkan klik tombol LOGOUT untuk mengakhiri test.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <div class="row">
                                        <div class="col-xs-offset-3 col-xs-6">
                                            <button type="submit" class="btn btn-success btn-block" data-dismiss="modal">LOGOUT</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>
    <footer>
        <div class="container">
            <p>SMK Pembangunan Surabaya | SKEMBA JUARA !</p>
        </div>
    </footer>


    <script src="js/jquery.cookie.js"></script>
    <script src="js/common.js"></script>
    <script src="js/main.js"></script>
    <script src="js/cookieList.js"></script>
    <script src="js/backend.js"></script>




    <div id="cboxOverlay" style="display: none;"></div>
    <div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
        <div id="cboxWrapper">
            <div>
                <div id="cboxTopLeft" style="float: left;"></div>
                <div id="cboxTopCenter" style="float: left;"></div>
                <div id="cboxTopRight" style="float: left;"></div>
            </div>
            <div style="clear: left;">
                <div id="cboxMiddleLeft" style="float: left;"></div>
                <div id="cboxContent" style="float: left;">
                    <div id="cboxTitle" style="float: left;"></div>
                    <div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button>
                    <div id="cboxLoadingOverlay" style="float: left;"></div>
                    <div id="cboxLoadingGraphic" style="float: left;"></div>
                </div>
                <div id="cboxMiddleRight" style="float: left;"></div>
            </div>
            <div style="clear: left;">
                <div id="cboxBottomLeft" style="float: left;"></div>
                <div id="cboxBottomCenter" style="float: left;"></div>
                <div id="cboxBottomRight" style="float: left;"></div>
            </div>
        </div>
        <div style="position: absolute; width: 9999px; visibility: hidden; display: none; max-width: none;"></div>
    </div>
</body>

</html>