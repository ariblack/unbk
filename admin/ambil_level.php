<?php
include "../config/cbt_con_i.php";
$level = $_GET['txt_level'];
$mapel = $_GET['txt_mapel'];

echo "<option selected>-- Pilih Soal --</option>\n";
//$soal = mysqli_query("select * from cbt_ujian where  XKodeKelas = '$level' and XKodeMapel = '$mapel' order by XKodeSoal");
$soal = mysqli_query($sqlconn_i,"select DISTINCT XKodeSoal from cbt_soal ");  
while($k = mysqli_fetch_array($soal)){
echo "<option value=\"".$k['XKodeSoal']."\">".$k['XKodeSoal']."</option>\n";
}

?>