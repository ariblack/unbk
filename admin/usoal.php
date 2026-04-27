<?php
include("../config/cbt_con_i.php");

isset($_POST['soal']) ? $soal = $_POST['soal'] : $soal = '';

isset($_POST['audio']) ? $ausoal = $_POST['audio'] : $ausoal = '';
isset($_POST['videosoal']) ? $vsoal = $_POST['videosoal'] : $vsoal = '';
isset($_POST['gambarsoal']) ? $gsoal = $_POST['gambarsoal'] : $gsoal = '';

/* $gsoal = $_POST['gambarsoal'];
		$ausoal = $_POST['audio'];
		$vsoal = $_POST['videosoal']; */
/* ;
$j2 = $_POST['b'];
$j3 = $_POST['c'];
$j4 = $_POST['d'];
$j5 = $_POST['e']; */

isset($_POST['a']) ? $j1 = $_POST['a'] : $j1 = '';
isset($_POST['b']) ? $j2 = $_POST['b'] : $j2 = '';
isset($_POST['c']) ? $j3 = $_POST['c'] : $j3 = '';
isset($_POST['d']) ? $j4 = $_POST['d'] : $j4 = '';
isset($_POST['e']) ? $j5 = $_POST['e'] : $j5 = '';

isset($_POST['ga']) ? $gj1 = $_POST['ga'] : $gj1 = '';
isset($_POST['gb']) ? $gj2 = $_POST['gb'] : $gj2 = '';
isset($_POST['gc']) ? $gj3 = $_POST['gc'] : $gj3 = '';
isset($_POST['gd']) ? $gj4 = $_POST['gd'] : $gj4 = '';
isset($_POST['ge']) ? $gj5 = $_POST['ge'] : $gj5 = '';
/* $gj1 = $_POST['ga'];
$gj2 = $_POST['gb'];
$gj3 = $_POST['gc'];
$gj4 = $_POST['gd'];
$gj5 = $_POST['ge']; */
isset($_POST['kunci']) ? $kj = $_POST['kunci'] : $kj = '';
isset($_POST['urut']) ? $urut = $_POST['urut'] : $urut = '';
isset($_POST['kose']) ? $kose = $_POST['kose'] : $kose = '';	
/* $kj = $_POST['kunci'];
$urut = $_POST['urut'];
$kose = $_POST['kose']; */

$query = "UPDATE cbt_soal SET XTanya='$soal', XAudioTanya='$ausoal', XVideoTanya='$vsoal', XGambarTanya='$gsoal', XJawab1='$j1', XJawab2='$j2', XJawab3='$j3', XJawab4='$j4', XJawab5='$j5', XGambarJawab1='$gj1', XGambarJawab2='$gj2', XGambarJawab3='$gj3', XGambarJawab4='$gj4', XGambarJawab5='$gj5', XKunciJawaban='$kj' where Urut = '$urut'";
$result = mysqli_query($sqlconn_i, $query);

if ($result) {
	header("location:index.php?page=list_soal&id=$kose");
} else {
	echo "proses simpan gagal !.";
}
