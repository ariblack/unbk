<?php
include("../config/cbt_con_i.php");
$result = mysqli_query($sqlconn_i, "update cbt_siswa_ujian set XStatusUjian = '1' where XNomerUjian = '$_GET[id]'");

if ($result) {
	header("location:index.php?page=reset");
}
else {
	echo "proses simpan gagal !.";
}
?>
