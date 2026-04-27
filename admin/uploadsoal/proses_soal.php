<link href="css/w3.css" rel="stylesheet">
<?php
// menggunakan class phpExcelReader
// menggunakan class phpExcelReader
include "excel_reader2.php";

// koneksi ke mysql
include "../../config/cbt_con_i.php";
$xkodemapel = "$_REQUEST[txt_mapel]";
$xkodesoal = "$_REQUEST[txt_ujian]";
//$xkodekelas = "$_REQUEST[txt_level]";
// membaca file excel yang diupload
$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);

// membaca jumlah baris dari data excel
$baris = $data->rowcount($sheet_index=0);

// nilai awal counter untuk jumlah data yang sukses dan yang gagal diimport
$sukses = 0;
$gagal = 0;

// import data excel mulai baris ke-2 (karena baris pertama adalah nama kolom)
for ($i=2; $i<=$baris; $i++)
{
  // membaca data soalid (kolom ke-1 FIELD)
  $fieldz = $data->val($i, 1);
  // membaca data pertanyaan (kolom ke-2 R)
  $xnomer = $data->val($i, 1);
  $xtanya = $data->val($i, 2);
  $xjawab1 = $data->val($i, 3);
  $xjawab2 = $data->val($i, 4);
  $xjawab3 = $data->val($i, 5);
  $xjawab4 = $data->val($i, 6);
  $xjawab5 = $data->val($i, 7);
  $xaudio = $data->val($i, 8);
  $xvideo = $data->val($i, 9);
  $xgambar = $data->val($i, 10);
  $xgjwba = $data->val($i, 11);
  $xgjwbb = $data->val($i, 12);
  $xgjwbc = $data->val($i, 13);
  $xgjwbd = $data->val($i, 14);
  $xgjwbe = $data->val($i, 15);
  $xjwban = $data->val($i, 16);
  $xacak = $data->val($i, 17);
 
		  // setelah data dibaca, sisipkan ke dalam tabel mhs
		  $query = "INSERT INTO cbt_soal (XNomerSoal, XKodeMapel, XKodeSoal, XTanya, XJawab1, XJawab2, XJawab3, XJawab4, XJawab5, XGambarJawab1, XGambarJawab2, XGambarJawab3, XGambarJawab4, XGambarJawab5,
		  XAudioTanya, XVideoTanya, XGambarTanya, XKunciJawaban, Xidacak) VALUES ('$xnomer', '$xkodemapel', '$xkodesoal' ,'$xtanya','$xjawab1',
		  '$xjawab2','$xjawab3','$xjawab4','$xjawab5', '$xgjwba', '$xgjwbb', '$xgjwbc', '$xgjwbd', '$xgjwbe','$xaudio','$xvideo','$xgambar','$xjwban','0')";
		  $hasil = mysqli_query($sqlconn_i, $query);
  if ($hasil) $sukses++;
  else $gagal++;
  }
  // jika proses insert data sukses, maka counter $sukses bertambah
  // jika gagal, maka counter $gagal yang bertambah


// tampilan status sukses dan gagal

echo "<h3>Proses import data selesai.</h3>";
echo "<p>Jumlah data yang sukses diimport : ".$sukses."<br>";
echo "Jumlah data yang gagal diimport : ".$gagal."</p>";
echo "<a href='http://localhost/unbk/admin/index.php?page=buat_soal'><b>Ke Admin Panel</b></a></p>";
?>