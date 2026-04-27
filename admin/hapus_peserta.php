<?php
include("../config/cbt_con_i.php");
$query = "delete from cbt_siswa where XNomerUjian = '$_GET[id]'";
$result = mysqli_query($sqlconn_i, $query);

if ($result) {
	header("location:index.php?page=daftar_peserta");
}
else {
	echo "proses hapus gagal !.";
}
?>
