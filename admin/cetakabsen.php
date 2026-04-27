<?php 
error_reporting(0);
include("../config/cbt_con_i.php"); // This file must define $sqlconn_i
require('fpdf16/fpdf.php'); 

// pendefinisian folder font pada FPDF
// seperti sebelunya, kita membuat class anakan dari class FPDF
class PDF extends FPDF{
    public $sqlconn_i;

function Header(){

include("../config/cbt_con_i.php");
$sqlad = mysqli_query($this->sqlconn_i,"SELECT * FROM cbt_skul");
$ad = mysqli_fetch_array($sqlad);
$testsek = strtoupper($ad['xtest']); 
$namsek = strtoupper($ad['XSekolah']);
$kepsek = $ad['XKepSek'];
$logsek = $ad['XLogo'];

  $sqlsiswa = mysqli_query($this->sqlconn_i,"SELECT * FROM cbt_siswa");
  $s = mysqli_fetch_array($sqlsiswa);
  $nk = $s['XNamaKelas'];
  $kk = $s['XKodeKelas'];
  $namkel = $s['XKodeMapel'];
  $nomsis = $s['XNIK'];
  $namamapel = isset($s['XNamaMapel']) ? $s['XNamaMapel'] : ''; // Define $namamapel safely

    // Initialize variables before concatenation
    $column_NIK = '';
    $column_nama = '';
    $column_kelas = '';
    $column_namakel = '';
    $column_namamapel = '';
    $column_dijawab = '';
    $column_benar = '';
    $column_salah = '';
    $column_nilai = '';

    $column_NIK 		= $column_NIK.$nomsis."\n";
    $column_nama 		= $column_nama.$s['XNamaSiswa']."\n";
    $column_kelas 		= $column_kelas.$nk."\n";
    $column_namakel 	= $column_namakel.$kk."\n";
    $column_namamapel 	= $column_namamapel.$namamapel."\n";
    $column_dijawab 	= $column_dijawab."0\n"; // Set to 0 or another default value if not used

    // Initialize $jumbenar, $jumsalah, and $totalnilai with default values
    $jumbenar = 0;
    $jumsalah = 0;
    $totalnilai = 0;

    $column_benar 		= $column_benar.$jumbenar."\n";
    $column_salah 		= $column_salah.$jumsalah."\n";
    $column_nilai 		= $column_nilai.$totalnilai."\n";
  
   $this->SetTextColor(0,0,0); // warna tulisan
   $this->SetFont('Arial','B','12'); // font yang digunakan
   // membuat cell dg panjang 19 dan align center 'C'
   $this->Cell(3,1,''); // cell dengan panjang 1
   $this->Cell(13,1,'DAFTAR HADIR PESERTA   '. $_REQUEST['kelas']. '',0,0,'C');
   $this->Ln(1);
   $this->Cell(3,1,''); // cell dengan panjang 1   
   $this->Cell(13,0,'PENILAIAN SUMATIF AKHIR JENJANG (PSAJ)',0,0,'C');
   $this->Ln(1);
   $this->SetFont('Arial','','10');   
   $this->Cell(3,0,''); // cell dengan panjang 1   
   $this->Cell(13,0,"Tahun Akademik : 2025/2026 ".$_COOKIE['tahun'],0,0,'C');
   $this->Ln(1);
   $this->SetFont('Arial','B','9');
   $this->SetFillColor(192,192,192); // warna isi
     
   $this->SetTextColor(0,0,0); // warna teks untuk th
   $this->Cell(1,1,'No','LTB',0,'C',1); // cell dengan panjang 1
   $this->Cell(2,1,'No. Ujian','LTB',0,'C',1); // cell dengan panjang 1
   $this->Cell(2,1,'NIK','LTB',0,'C',1); // cell dengan panjang 2
   $this->Cell(8,1,'Nama Siswa','LTB',0,'C',1); // cell dengan panjang 3
   $this->Cell(6,1,'Tanda Tangan','LTBR',0,'C',1); // cell dengan panjang 3
   
   // panjang cell bisa disesuaikan
   $this->Ln();
  }

  function Footer(){
    include("../config/cbt_con_i.php");
    
   $this->SetY(-2,5);
   $this->Cell(0,1,'WOKA CBT V.20.26- Halaman : '. $this->PageNo(),0,0,'C');
  } 
 }
if(isset($_REQUEST['iki1'])){ 
 $q = mysqli_query($sqlconn_i,"select * from cbt_siswa  where XKodeKelas = '$_REQUEST[iki1]' and  XKodeJurusan = '$_REQUEST[jur1]'");
 } else {
 $q = mysqli_query($sqlconn_i,"select * from cbt_siswa");
 } 
 $i = 0;
 
 while($d=mysqli_fetch_array($q)){
  $cell[$i][0]=$d[0];
  $cell[$i][1]=$d[1];
  $cell[$i][2]=$d[2];
  $cell[$i][3]=$d[3];  
  $cell[$i][4]=$d[4];    
  $i++;
 }
 // orientasi Potrait
 // ukuran cm
 // kertas A4
 $pdf = new PDF('P','cm','A4');
 $pdf->sqlconn_i = $sqlconn_i; // Pass the connection to the PDF object
 $pdf->Open();
 $pdf->AliasNbPages();
 $pdf->AddPage();

 $pdf->SetFont('Arial','','8');
 //perulangan untuk membuat tabel
 for($j=0;$j<$i;$j++){
  $pdf->Cell(1,1,$j+1,'LB',0,'C');
  $pdf->Cell(2,1,$cell[$j][1],'LB',0,'C');
  $pdf->Cell(2,1,$cell[$j][2],'LB',0,'C');  
  $pdf->Cell(8,1,$cell[$j][3],'LBR',0,'C');
	if ($j % 2 == 0) {
  	$pdf->Cell(3,1,$j+1,'B',0,'L'); 	
	$pdf->Cell(3,1," ",'BR',0,'L');      
  	} else {
  	$pdf->Cell(3,1," ",'B',0,'C'); 	
	$pdf->Cell(3,1,$j+1,'BR',0,'L');      
	}	
  $pdf->Ln();
     
 }
   $pdf->Ln();
 $pdf->Ln();
$pdf->Cell(13,1,'Proktor',0,0,'C');
$pdf->Cell(6,1,'Pengawas',0,'C',1);
$pdf->Ln();
$pdf->Ln();
$pdf->Cell(13,1,'...............',0,0,'C');
$pdf->Cell(6,1,'...............',0,'C',1);

 $pdf->Output(); // ditampilkan

?>