<?php
error_reporting(0);
require_once 'plugins/excel/PHPExcel.php';
// 1. Connect ke database
include "../config/cbt_con_i.php";	

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
		->setCellValue('I1', 'KUNCI');

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
		->setCellValue("I$baris", $kunci);				

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