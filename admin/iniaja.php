<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table border="1" cellspacing="0">

										
  <tr>
    <td>No</td>
    <td>Nama</td>
    <td>No Peserta</td>

 <?php
 include "../config/cbt_con_i.php";
										    $no = 1;
										    $sql = "select * from cbt_siswa_ujian where XTokenUjian = 'IZBOI'";
											$result = mysqli_query($sqlconn_i, $sql);
											$mhs = mysqli_fetch_array($result) ;
											while ($mhs) { 											
											$sis = $mhs['XNomerUjian'];
										    $sql1 = "select * from cbt_jawaban where XUserJawab = '$sis' and XTokenUjian = 'IZBOI'";
											$result1 = mysqli_query($sqlconn_i, $sql1);
											while ($mhs1 = mysqli_fetch_array($result1)){ 
											?>
    <td><? echo $mhs1['XNomerSoal']; ?></td>
<?php } ?>  </tr>
  <tr>
    <td><?php echo $no++ ?></td>
    <td>  <?php
										    $sqlx = "select * from cbt_siswa where XNomerUjian = '$mhs[XNomerUjian]'";
											$resultx = mysqli_query($sqlconn_i, $sqlx);
											$mhsx = mysqli_fetch_array($resultx);
											echo $mhsx['XNamaSiswa'];
											?></td>
    <td><? echo $mhs['XNomerUjian']; ?></td>
        <?php
 											$sis = $mhs['XNomerUjian'];
										    $sql1 = "select * from cbt_jawaban where XUserJawab = '$sis' and XTokenUjian = 'IZBOI'";
											$result1 = mysqli_query($sqlconn_i, $sql1);
											while ($mhs1 = mysqli_fetch_array($result1)){ 
											?>
    <td><? echo $mhs1['XJawaban']; ?></td>
<? }} ?> 
  </tr>
</table>
</body>
</html>
