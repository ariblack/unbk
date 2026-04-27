<?php
error_reporting(0);
require_once 'plugins/excel/PHPExcel.php';
include "../config/cbt_con_i.php"; 

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();

//$var_soal = "$_REQUEST[ujian]";

$hasil = mysqli_query($sqlconn_i,"SELECT *,u.XStatusUjian as ujsta
FROM cbt_siswa s
LEFT JOIN `cbt_siswa_ujian` u ON u.XNomerUjian = s.XNomerUjian
LEFT JOIN cbt_ujian c ON (u.XKodeSoal = c.XKodeSoal and u.XTokenUjian = c.XTokenUjian)
WHERE c.XStatusUjian = '1'");

// Set properties
$objPHPExcel->getProperties()->setCreator("Sigit Hariono")
      ->setLastModifiedBy("Sigit Hariono")
      ->setTitle("Office 2007 XLSX Test Document")
      ->setSubject("Office 2007 XLSX Test Document")
       ->setDescription("Salary Report")
       ->setKeywords("office 2007 openxml php")
       ->setCategory("Rekap Hasil Tes :");
 
// Add some data
$objPHPExcel->setActiveSheetIndex(0)
       	->setCellValue('A1', 'NO')
       	->setCellValue('B1', 'NO. PESERTA')
       	->setCellValue('C1', 'NAMA SISWA')
       	->setCellValue('D1', 'KELAS')
       	->setCellValue('E1', 'NIK')
		->setCellValue('F1', 'NAMA MAPEL')
       	->setCellValue('G1', 'JAWAB')
       	->setCellValue('H1', 'BENAR')
		->setCellValue('I1', 'SALAH')
       	->setCellValue('J1', 'NILAI'); 

$baris = 2;
$no = 0;		

while($p = mysqli_fetch_array($hasil)){
    $var_siswa = "$p[XNomerUjian]";
	$var_token = "$p[XTokenUjian]";
	$var_soal = "$p[XKodeSoal]";

	$sqlujian = mysqli_query($sqlconn_i,"SELECT * FROM `cbt_jawaban` j left join cbt_soal s on s.XNomerSoal = j.XNomerSoal WHERE j.XKodeSoal = '$var_soal' and j.XUserJawab = '$var_siswa'
	and XTokenUjian = '$var_token'");
	
	$sqlmapel = mysqli_query($sqlconn_i,"select * from cbt_ujian c left join cbt_mapel m on m.XKodeMapel = c.XKodeMapel where c.XKodeSoal = '$var_soal'"); 
	$u = mysqli_fetch_array($sqlmapel);
	$namamapel = $u['XNamaMapel'];
	
	$sqlsiswa = mysqli_query($sqlconn_i,"SELECT * FROM `cbt_siswa` WHERE XNomerUjian= '$var_siswa'");
	$s = mysqli_fetch_array($sqlsiswa);
	$namsis = $s['XNamaSiswa'];
	$nk = $s['XNamaKelas'];
	$kk = $s['XKodeKelas'];
	$namkel = $nk.$kk;
	$nomsis = $s['XNIK'];

//----- php excel 

$no = $no +1;

	$sqldijawab = mysqli_num_rows(mysqli_query($sqlconn_i," SELECT * FROM `cbt_jawaban` WHERE XKodeSoal = '$var_soal' and XUserJawab = '$var_siswa' and XJawaban != '' and XTokenUjian = '$var_token'"));

	$sqljawaban = mysqli_query($sqlconn_i," SELECT count( XNilai ) AS HasilUjian FROM `cbt_jawaban` WHERE XKodeSoal = '$var_soal' and XUserJawab = '$var_siswa' and XNilai = '10' and XTokenUjian = '$var_token'");
	$sqj = mysqli_fetch_array($sqljawaban);
	$jumbenar = $sqj['HasilUjian'];

	$sqlsalah = mysqli_query($sqlconn_i," SELECT count( XNilai ) AS HasilUjian FROM `cbt_jawaban` WHERE XKodeSoal = '$var_soal' and XUserJawab = '$var_siswa' and XNilai = '0' and XTokenUjian = '$var_token'");
	$sqs = mysqli_fetch_array($sqlsalah);
	$jumsalah = $sqs['HasilUjian'];
	
	$sqljumsoal = mysqli_query($sqlconn_i," SELECT count( XNilai ) AS HasilUjian FROM `cbt_jawaban` WHERE XKodeSoal = '$var_soal' and XUserJawab = '$var_siswa' and XTokenUjian = '$var_token'");
	$sqjsoal = mysqli_fetch_array($sqljumsoal);
	$jumsoal = $sqjsoal['HasilUjian'];

	$totalnilai = ($jumbenar/$jumsoal)*100;



$objPHPExcel->setActiveSheetIndex(0)
     	->setCellValue("A$baris", $no)
     	->setCellValue("B$baris", $p['XNomerUjian'])
     	->setCellValue("C$baris", $namsis)
     	->setCellValue("D$baris", $namkel)
     	->setCellValue("E$baris", $nomsis)
		->setCellValue("F$baris", $namamapel)
     	->setCellValue("G$baris", $sqldijawab)
     	->setCellValue("H$baris", $jumbenar)
		->setCellValue("I$baris", $jumsalah)
     	->setCellValue("J$baris", $totalnilai);				

$baris = $baris + 1;
}
 
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('transaksi');
 
// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);
 
// Redirect output to a client�s web browser (Excel5)
header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="HasilUjian-'.$var_soal.'.xls"');
header('Cache-Control: max-age=0');
 
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save('php://output');
exit;
?>