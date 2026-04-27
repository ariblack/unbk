<?php
include("../config/cbt_con_i.php");
$query = "delete from cbt_kelas where Urut = '$_GET[id]'";
$result = mysqli_query($sqlconn_i, $query);

if ($result) {
	header("location:index.php?page=pengaturan_kelas");
}
else {
	echo "proses hapus gagal !.";
}
?>
