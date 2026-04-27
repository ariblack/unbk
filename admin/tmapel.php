 <?php
include("../config/cbt_con_i.php"); 
$namamapel = $_POST['namamapel'];
$kodemapel = $_POST['kodemapel'];

$query = "INSERT INTO `cbt_mapel` (`XKodeMapel`, `XNamaMapel`) VALUES ('$kodemapel', '$namamapel')";
$result = mysqli_query($sqlconn_i, $query);

if ($result) {
header("location:index.php?page=pengaturan_mapel");
}
else {
	echo "proses simpan gagal !.";
}
?>