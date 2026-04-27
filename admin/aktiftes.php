<?php
include("../config/cbt_con_i.php"); 
$token = $_POST['token'];
$status = $_POST['status'];

if(isset($_POST['hapus'])){
	$query = "delete from cbt_ujian WHERE XTokenUjian = '$token'";
$result = mysqli_query($sqlconn_i, $query);
header("location:index.php?page=status_tes");
	}elseif(isset($_POST['aktifkan'])){
		$query0 = "UPDATE cbt_ujian SET XStatusUjian = '1' WHERE XTokenUjian = '$token'";
$result0 = mysqli_query($sqlconn_i, $query0);
header("location:index.php?page=status_tes");
	}else{$query1 = "UPDATE cbt_ujian SET XStatusUjian = '0' WHERE XTokenUjian = '$token'";
$result1 = mysqli_query($sqlconn_i, $query1);
header("location:index.php?page=status_tes");
	
}
	?>

