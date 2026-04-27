<script>
window.print();
</script>
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
   <div class="panel-body">
<table width="452" border="0" align="left" cellpadding="0" cellspacing="0">
                                <tr>
                               	  <td>Nomer Ujian </td>
                               	  <td>: <?php echo $var_siswa; ?></td>
                              	  </tr>
                                <tr>
                                  <td>Nama Lengkap </td>
                                  <td>: <?php echo $namsis; ?></td>
                                </tr>
                                	<tr>
                                	  <td width="105">Kelas</td>
                                	  <td width="347">:  <?php echo $var_siswa; ?></td></tr>
                                	<tr><td height="22">Mata Pelajaran</td><td>: <?php echo $namamapel; ?></td></tr>
                                </table>
   </div>
</div>

<link href="../dist/skin/blue.monday/css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../lib/jquery.min.js"></script>
<script type="text/javascript" src="../dist/jplayer/jquery.jplayer.min.js"></script>



<?php
$nomer = 1;
$sql = mysqli_query($sqlconn_i, "
SELECT * FROM `cbt_jawaban` j left join cbt_soal s on s.XNomerSoal = j.XNomerSoal WHERE j.XKodeSoal = '$var_soal' and  s.XKodeSoal = '$var_soal' and  j.XUserJawab = '$var_siswa'
and j.XTokenUjian = '$xtokenujian' and s.XTypeSoal = '1' order by j.XNomerSoal");
while($r = mysqli_fetch_array($sql)){
$ts = $r['XTypeSoal'];
$n = $nomer++;
$PilJwb = $r['XEssay'];
	$sqlpil = mysqli_query($sqlconn_i, "SELECT * FROM `cbt_jawaban` WHERE XKodeSoal = '$var_soal' and XNomerSoal = '$r[XNomerSoal]' and XUserJawab = '$var_siswa'");
	$jwb = mysqli_fetch_array($sqlpil);
	$jawab = $jwb['XEssay'];
	$nn = $jwb['XNilai'];
	$jawab = $jwb['XEssay'];
	$kso = $jwb['XKodeSoal'];
	$nrso = $jwb['XNomerSoal'];
	$urtn = $jwb['Urutan'];
	
echo "$n. ";
echo " $r[XTanya]<br />";	
echo " <span style='margin-left:20px'>$jawab</span><br /><br />";	
 }
?>


</div>
</body>
</html>

