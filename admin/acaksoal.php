<?php
include("../config/cbt_con_i.php"); 
$kodesoal = $_POST['kodesoal'];


if(isset($_POST['acak'])){
	$query = "UPDATE cbt_soal SET Xidacak = '1' WHERE XKodeSoal = '$kodesoal'";
$result = mysqli_query($sqlconn_i, $query);
header("location:index.php?page=buat_soal");
	}elseif(isset($_POST['tidak'])){
		$query0 = "UPDATE cbt_soal SET Xidacak = '0' WHERE XKodeSoal = '$kodesoal'";
$result0 = mysqli_query($sqlconn_i, $query0);
header("location:index.php?page=buat_soal");
	}else{
header("location:index.php?page=buat_soal");
	
}
	?>

