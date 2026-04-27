 <?php
include("../config/cbt_con_i.php"); 
$kodelevel = $_POST['kodelevel'];
$namalevel = $_POST['namalevel'];
$kodekelas = $_POST['kodekelas'];

$query = "INSERT INTO `cbt_kelas` (`XKodeLevel`, `XLevelKelas`, `XKodeKelas`, `XStatusKelas`) VALUES ('$kodelevel', '$namalevel', '$kodekelas','1')";
$result = mysqli_query($sqlconn_i, $query);

if ($result) {
header("location:index.php?page=pengaturan_kelas");
}
else {
	echo "proses simpan gagal !.";
}
?>