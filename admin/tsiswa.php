 <?php
	include("../config/cbt_con_i.php");
	$nomer = $_POST['nomor'];
	$nik = $_POST['nik'];
	$nama = $_POST['nama'];
	$kodekelas = $_POST['kelas'];
	$namakelas = $_POST['level'];
	$jk = $_POST['jk'];
	$password = $_POST['password'];

	//echo "$nomer, $nik, $nama, $kodekelas, $namakelas, $jk, $password";

	$query = "INSERT INTO `cbt_siswa` (`XNomerUjian`, `XNIK`, `XNamaSiswa`, `XKodeKelas`, `XNamaKelas`, `XJenisKelamin`, `XPassword`, `XFoto`) 
	VALUES ('$nomer', '$nik', '$nama', '$kodekelas', '$namakelas', '$jk', '$password', '');";
	$result = mysqli_query($sqlconn_i, $query);

	if ($result) {
		header("location:index.php?page=daftar_peserta");
	} else {
		echo "proses simpan gagal !.";
	}
	?>