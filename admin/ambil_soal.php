<?php 
//Here you specify how many characters the returning string must have 
include "../config/cbt_con_i.php";
$soal = $_GET['txt_ujian'];
$jumsoal = mysqli_num_rows(mysqli_query($sqlconn_i,"select * from cbt_soal where  XKodeSoal = '$soal'"));
echo "Maks. : $jumsoal"; 
?>