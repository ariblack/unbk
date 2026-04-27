<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ANALISIS JAWABAN | CBT APLIKASI</title>
</head>
    <link href="css/nedna.css" rel="stylesheet">
    <Link rel="shortcut icon" href="images/icon.ico">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body style="width:90%; margin:0 auto;margin-top:50px; ">
<?php
include "../config/cbt_con_i.php";

$var_soal = "$_REQUEST[ujian]";
$var_siswa = "$_REQUEST[nomer]";

$sqlujian = mysqli_query($sqlconn_i, "select * from cbt_ujian c left join cbt_mapel m on m.XKodeMapel = c.XKodeMapel where c.XKodeSoal = '$var_soal' and c.XStatusUjian = '1'"); 
$u = mysqli_fetch_array($sqlujian);
$namamapel = $u['XNamaMapel'];
$xtokenujian = $u['XTokenUjian'];

$nom = 1;								

$sqlsiswa = mysqli_query($sqlconn_i, "SELECT * FROM `cbt_siswa` WHERE XNomerUjian= '$var_siswa'");
$s = mysqli_fetch_array($sqlsiswa);
$namsis = $s['XNamaSiswa'];
$namkel = $s['XNamaKelas'];
$nomsis = $s['XNIK'];

?>
 <div class="panel panel-default">
                              <div class="panel-heading">
                                <h3 class="panel-title">Data Peserta Ujian : </h3>
                              </div>
                              <div class="panel-body">
                              	<table>
                                <tr><td rowspan="6" width="200px"><img src="fotosiswa/nouser.png" /></td></tr>
                                	<tr><td width="30%">Nomer Ujian </td><td>: <?php echo $var_siswa; ?></td></tr>
                                	<tr><td>Nomer Induk (NIK)</td><td>: <?php echo $nomsis; ?></td></tr>
                                	<tr><td>Nama Lengkap </td><td>: <?php echo $namsis; ?></td></tr>
                                	<tr><td>Kelas</td><td>: <?php echo $var_siswa; ?></td></tr>
                                	<tr><td>Mata Pelajaran</td><td>: <?php echo $namamapel; ?></td></tr>
                                </table>    
                              </div>
</div>

<link href="../dist/skin/blue.monday/css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../lib/jquery.min.js"></script>
<script type="text/javascript" src="../dist/jplayer/jquery.jplayer.min.js"></script>



 <div class="panel panel-default">
                              <div class="panel-heading">
                                <h3 class="panel-title">Hasil CBT Online Siswa : </h3>
                              </div>

                              <div class="panel-body">
<?php
$nomer = 1;
$sql = mysqli_query($sqlconn_i, "
SELECT * FROM `cbt_jawaban` j left join cbt_soal s on s.XNomerSoal = j.XNomerSoal WHERE j.XKodeSoal = '$var_soal' and  s.XKodeSoal = '$var_soal' and  j.XUserJawab = '$var_siswa'
and j.XTokenUjian = '$xtokenujian' order by j.Urut");
while($r = mysqli_fetch_array($sql)){

$audiofile = $r['XAudioTanya']; 

echo "<table width=90%><tr><td width=50px>$nomer.</td><td>$r[XTanya] </td></tr>
<tr><td width=50px colspan=2>&nbsp;</td></tr>
";

if(str_replace("  ","",$audiofile!=="")){
echo "<tr><td width=50px colspan=2>File Listening : $audiofile</td></tr>";
}

if(str_replace("  ","",$r['XGambarTanya']!=="")){
 echo "$vidfile"; 
echo "
<tr><td width=50px colspan=2>&nbsp; </td></tr>
<tr><td colspan=2><img src=../Pictures/$r[XGambarTanya] width=50%></td></tr>";}

echo "<tr><td width=50px colspan=2>&nbsp;</td></tr>";

$PilA = $r['XA'];
$PilJwb = "XJawab$PilA";
echo "<tr><td width=50px align=center> A. </td>"; 
	$sqlpil = mysqli_query($sqlconn_i, "SELECT $PilJwb as pilsoal FROM `cbt_soal` WHERE XKodeSoal = '$var_soal' and XNomerSoal = '$r[XNomerSoal]'");
	$jwb = mysqli_fetch_array($sqlpil);
	$jawab = $jwb['pilsoal'];
echo "<td>$jawab</td></tr>";	
$PilB = $r['XB'];
$PilJwb = "XJawab$PilB";
echo "<tr><td width=50px align=center> B. </td>"; 
	$sqlpil = mysqli_query($sqlconn_i, "SELECT $PilJwb as pilsoal FROM `cbt_soal` WHERE XKodeSoal = '$var_soal' and XNomerSoal = '$r[XNomerSoal]'");
	$jwb = mysqli_fetch_array($sqlpil);
	$jawab = $jwb['pilsoal'];
echo "<td>$jawab</td></tr>";	
$PilC = $r['XC'];
$PilJwb = "XJawab$PilC";
echo "<tr><td width=50px align=center> C. </td>"; 
	$sqlpil = mysqli_query($sqlconn_i, "SELECT $PilJwb as pilsoal FROM `cbt_soal` WHERE XKodeSoal = '$var_soal' and XNomerSoal = '$r[XNomerSoal]'");
	$jwb = mysqli_fetch_array($sqlpil);
	$jawab = $jwb['pilsoal'];
echo "<td>$jawab</td></tr>";	
$PilD = $r['XD'];
$PilJwb = "XJawab$PilD";
echo "<tr><td width=50px align=center> D. </td>"; 
	$sqlpil = mysqli_query($sqlconn_i, "SELECT $PilJwb as pilsoal FROM `cbt_soal` WHERE XKodeSoal = '$var_soal' and XNomerSoal = '$r[XNomerSoal]'");
	$jwb = mysqli_fetch_array($sqlpil);
	$jawab = $jwb['pilsoal'];
echo "<td>$jawab</td></tr>";	
$PilE = $r['XE'];
$PilJwb = "XJawab$PilE";
echo "<tr><td width=50px align=center> E. </td>"; 
	$sqlpil = mysqli_query($sqlconn_i, "SELECT $PilJwb as pilsoal FROM `cbt_soal` WHERE XKodeSoal = '$var_soal' and XNomerSoal = '$r[XNomerSoal]'");
	$jwb = mysqli_fetch_array($sqlpil);
	$jawab = $jwb['pilsoal'];
echo "<td>$jawab</td></tr>";

	if($r['XKunciJawaban']==$r['XA']){$jwbsiswa = "A";}
	if($r['XKunciJawaban']==$r['XB']){$jwbsiswa = "B";}	
	if($r['XKunciJawaban']==$r['XC']){$jwbsiswa = "C";}
	if($r['XKunciJawaban']==$r['XD']){$jwbsiswa = "D";}	
	if($r['XKunciJawaban']==$r['XE']){$jwbsiswa = "E";}
	
	if($jwbsiswa==$r['XJawaban']){$ikon = "images/benar.gif";}else{$ikon = "images/salah.gif";}
echo "<tr><td colspan=2><br>Kunci Jawaban : $jwbsiswa, Jawaban Siswa : $r[XJawaban] <img src=$ikon></td></tr>";	
echo "<tr><td colspan=2><hr></td></tr>";

echo "<table>";	

$nomer++;
}
?>
                              </div>                           
         </div>

</body>
</html>

