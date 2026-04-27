<?php
include("../config/cbt_con_i.php");
$query = "delete from cbt_soal where Urut = '$_GET[id]'";
$result = mysqli_query($sqlconn_i, $query);

if ($result) {
	header("location:index.php?page=buat_soal");
}
else {
	echo "proses hapus gagal !.";
}
?>
