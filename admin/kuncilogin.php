 <?php                    
include "../config/cbt_con_i.php";
$sql = mysqli_query($sqlconn_i, "update cbt_siswa_ujian set XStatusUjian = '9' where XNomerUjian = '$_REQUEST[nompes]'");     
?>
