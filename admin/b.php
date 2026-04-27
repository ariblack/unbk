<?php
error_reporting(0);
require_once 'plugins/excel/PHPExcel.php';
// 1. Connect ke database
include "../config/cbt_con_i.php";
// 2. Pilih database
date_default_timezone_set("Asia/Jakarta");
//mysqli_select_db("cbt", $sqlconn_i);
$tahun = date("Y");
$bulan = date("m");
$tanggal = date("d");
if($bulan<12){
	if($bulan>6&&$tanggal>25){
	$tahun=$tahun;}
	else {
    $tahun=$tahun-1;}
}	

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();
$ksol = $_GET['id'];
//$var_soal = "$_REQUEST[ujian]";
$hasil = mysqli_query($sqlconn_i,"SELECT * from cbt_soal where XKodeSoal = '$_GET[id]' order by XNomerSoal asc");


// Set properties
$objPHPExcel->getProperties()->setCreator("Rahman Ardi Saputra")
      ->setLastModifiedBy("Rahman Ardi Saputra")
      ->setTitle("Office 2007 XLSX Test Document")
      ->setSubject("Office 2007 XLSX Test Document")
       ->setDescription("Salary Report")
       ->setKeywords("office 2007 openxml php")
       ->setCategory("Export Soal :");
 
// Add some data
$objPHPExcel->setActiveSheetIndex(0)
       	->setCellValue('A1', 'NO')
       	->setCellValue('B1', 'SOAL')
       	->setCellValue('C1', 'JAWAB1')
       	->setCellValue('D1', 'JAWAB2')
       	->setCellValue('E1', 'JAWAB3')
		->setCellValue('F1', 'JAWAB4')
       	->setCellValue('G1', 'JAWAB5')
       	->setCellValue('H1', 'AUDIO')
		->setCellValue('I1', 'VIDEO')
		->setCellValue('J1', 'GMBRSOAL')
		->setCellValue('K1', 'GMBRJWB1')
		->setCellValue('L1', 'GMBRJWB2')
		->setCellValue('M1', 'GMBRJWB3')
		->setCellValue('N1', 'GMBRJWB4')
		->setCellValue('O1', 'GMBRJWB5')
		->setCellValue('P1', 'KUNCI');
		

$baris = 2;
$no = 0;		

while($p = mysqli_fetch_array($hasil)){
    $t = "$p[XTanya]";
	$a = "$p[XJawab1]";
	$b = "$p[XJawab2]";
	$c = "$p[XJawab3]";
	$d = "$p[XJawab4]";
	$e = "$p[XJawab5]";
	$audio = "$p[XAudioTanya]";
	$video = "$p[XVideoTanya]";
	$gambar ="$p[XGambarTanya]";
	$ga = "$p[XGambarJawab1]";
	$gb = "$p[XGambarJawab2]";
	$gc = "$p[XGambarJawab3]";
	$gd= "$p[XGambarJawab4]";
	$ge = "$p[XGambarJawab5]";
	$kunci = "$p[XKunciJawaban]";

	

//----- php excel 

$no = $no +1;


$objPHPExcel->setActiveSheetIndex(0)
     	->setCellValue("A$baris", $no)
     	->setCellValue("B$baris", $t)
     	->setCellValue("C$baris", $a)
     	->setCellValue("D$baris", $b)
     	->setCellValue("E$baris", $c)
		->setCellValue("F$baris", $d)
     	->setCellValue("G$baris", $e)
     	->setCellValue("H$baris", $audio)
		->setCellValue("I$baris", $audio)
		->setCellValue("J$baris", $audio)
		->setCellValue("K$baris", $ga)
		->setCellValue("L$baris", $gb)
		->setCellValue("M$baris", $gc)
		->setCellValue("N$baris", $gd)
		->setCellValue("O$baris", $ge)
		->setCellValue("P$baris", $kunci);				

$baris = $baris + 1;
}
 
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('transaksi');
 
// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);
 
// Redirect output to a client's web browser (Excel5)
header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="Woka-Soal-'.$ksol.'.xls"');
header('Cache-Control: max-age=0');
 
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$objWriter->save('php://output');
exit;
?>