<?php
include("../config/cbt_con_i.php");
if (isset($_GET['id'])) {
	$token = $_GET['id'];
} else {
	die ("Error. No Nip Selected! ");	
}

$query = "SELECT * FROM cbt_ujian WHERE XTokenUjian ='$token'";
$sql = mysqli_query ($sqlconn_i, $query);
$hasil = mysqli_fetch_array ($sql);
$token2 = $hasil['XTokenUjian'];
$kodemapel2 = $hasil['XKodeMapel'];
$kodekelas2 = $hasil['XKodeKelas'];
$kodesoal2 = $hasil['XKodeSoal'];
$tgl2 = $hasil['XTglUjian'];
$jamm2 = $hasil['XJamUjian'];
$jamb2 = $hasil['XBatasMasuk'];
$n = $hasil['XNilai'];
?>

<div class="row">
<div class="col-md-6">
<div class="portlet light bordered">
<div class="portlet-title"> 
<div class="caption">
<i class="icon-edit font-dark"></i>
<span class="caption-subject font-red bold uppercase">Edit Status Ujian</span>
</div>
</div>

<!-- start form edit  -->
<form method="POST">
<div class="form-group">
  <table border="0" width="90%" align="center">
                        <tr height="40px"><td width="59%"> Mata Uji </td><td width="41%">
							<strong>
                                <?php 
                                $sqlkelas = mysqli_query($sqlconn_i,"select * from cbt_mapel where XKodeMapel = '$kodemapel2'");
                                while($sk = mysqli_fetch_array($sqlkelas)){
                                echo "$sk[XNamaMapel]";
                                }
                                ?>
                            </strong>
                            </td></tr>
                        	<tr height="40px"><td> Kelas </td><td>
								<strong>
                                <?php 
                                $sqlkelas = mysqli_query($sqlconn_i,"select * from cbt_kelas where XKodeKelas = '$kodekelas2'");  
                                while($sk = mysqli_fetch_array($sqlkelas)){
                                echo "$sk[XKodeLevel] - $sk[XLevelKelas] - $sk[XKodeKelas]";
                                }
                                ?>
                                </strong>
                            </td></tr>
                        	                           
                        	<tr height="40px">
                        	  <td> Tanggal Tes </td><td>
                              
                            		<input type="text" name="tgl" value="<?php echo $tgl2 ?>" class="form-control"/> 
                            </td></tr>
                        	<tr height="40px"><td> Waktu Mulai</td><td>
                            	<input type="text" id="txt_durasi" name="jammulai" size="4" value="<?php echo $jamm2 ?>" class="form-control">  
                            </td></tr>
                        	<tr height="40px"><td>Waktu Selesai</td><td>
                                <input type="text" id="txt_telat" name="jambatas" size="4" value="<?php echo $jamb2 ?>" class="form-control"> 
                            </td></tr>
                            <tr height="40px"><td>Tampil Nilai</td><td>
                               <?php echo "<select name='pil'>";
    if($n=="1"){
        echo "<option selected value='1'>YA</option>
			<option value='0'>TIDAK</option>\n";
    }else{
        echo "<option selected value='0'>TIDAK</option>
			<option value='1'>IYA</option>\n"; }
			  echo "</select><p>"; ?>
                            </td></tr>
                        	<tr height="40px"><td> Token </td><td>
                                <input type="hidden" id="txt_token" value="<?php echo $token2 ?>" size="" ><strong><?php echo $token2 ?></strong>
                            </td></tr>
                        	</table>

</div>
<button type="submit" name="update" class="btn btn-primary"><i class="fa fa-pencil"></i>Ubah</button>
<button type="submit" name="close" class="btn btn-danger" href="index.php?page=status_tes"><i class="fa fa-pencil"></i>Close</button>
</form>
<!-- end form edit  -->


</div>
</div>
</div>


<?php
if(isset($_POST['update']))
{
	$xtglujian = $_POST['tgl'];
	$xjammulai = $_POST['jammulai'];
	$xjambatas = $_POST['jambatas'];
	$n = $_POST['pil'];
	$query = "UPDATE cbt_ujian SET XTglUjian='$xtglujian',XJamUjian='$xjammulai',XBatasMasuk='$xjambatas',XNilai='$n' WHERE XTokenUjian='$token2'";
	$sql = mysqli_query ($sqlconn_i, $query);
	if ($sql) {
		echo "<h2><font color=blue>Edit Berhasil</font></h2>";
		header("location:index.php?page=status_tes");		
	} else {
		echo "<h2><font color=red>Edit Gagal</font></h2>";	
	}
	//echo "<script>alert(Data telah berubah);</script>";
	//echo "<script>window.location='index.php?halaman=download';</script>";
}
elseif(isset($_POST['close']))
{
header("location:index.php?page=status_tes");	
}
?>




     
                    