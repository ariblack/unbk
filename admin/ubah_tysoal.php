<?php
include("../config/cbt_con_i.php"); 
$urut = $_GET['id'];
$sql013 = "select * from cbt_soal where Urut = '$urut' ";
$result013 = mysqli_query($sqlconn_i, $sql013);
$mhs013 = mysqli_fetch_array($result013);
$ts = $mhs013['XTypeSoal'];
$ks = $mhs013['XKodeSoal'];
if($ts =='0'){
	$query = "update cbt_soal set XTypeSoal='1' WHERE Urut = '$urut'";
$result = mysqli_query($sqlconn_i, $query);
header("location:index.php?page=list_soal&id=$ks");
}else{
	$query1 = "update cbt_soal set XTypeSoal='0' WHERE Urut = '$urut'";
$result1 = mysqli_query($sqlconn_i, $query1);
header("location:index.php?page=list_soal&id=$ks");
}
?>