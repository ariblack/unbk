<?php
ob_start();
session_start();
include "../../config/cbt_con_i.php";

$user		= $_POST['user'];
$password	= $_POST['password'];
$_SESSION['user'] = $user;

$sql = "SELECT * FROM cbt_admin where user='$user'";
$qry = mysqli_query($sqlconn_i, $sql);
$num = mysqli_num_rows($qry);
$row = mysqli_fetch_array($qry);

if ($num==0 OR $password!=$row['password']) {
?>
<script language="JavaScript">
	alert('Username atau Password tidak sesuai !');
	document.location='../login.php';
	</script>
	<?php
}
else {
	$_SESSION['login']=1;
	header("Location: ../index.php");
	}//Tutup koneksi engine MySQL
?>