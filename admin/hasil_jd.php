 <script type="text/javascript" src="jquery-1.4.js"></script>
 <script>    
$(document).ready(function(){
 $("#simpan").click(function(){
 //alert("hai");
 var nompes = $("#nompes").val();
 //alert(nompes);
 $.ajax({
     type:"POST",
     url:"resetlogin.php",    
     data: "aksi=simpan&nompes=" + nompes,
	 success: function(data){
	 $("#info").html(data);
	 tampildata();
	 }
	 });
	 });

});
</script>
<br>
<table class="table table-bordered" cellpadding="30px" width="100%" border="0">
								<tr height="50px" bgcolor="#E4E6DD">
                                    <th>&nbsp;No.</th>
                                    <th>Tanggal Ujian</th>
                                    <th>Waktu</th>
                                    <th>Mata Pelajaran</th>
                                    <th>Kelas</th>
                                    <th>Group Soal</th>
									<th>Jumlah Soal</th>
                                    <th>Token</th>
									<th>Cetak</th>
                              
                                </tr>
 <?php                    
include "../config/cbt_con_i.php";
$sqltoken = mysqli_query($sqlconn_i,"SELECT * FROM cbt_ujian");
$nom = 1;								
while($s= mysqli_fetch_array($sqltoken)){ 
$kodekelas = str_replace("  ","",$s['XKodeKelas']); 
$kodemapel = str_replace("  ","",$s['XKodeMapel']); 
$kodesoal = str_replace("  ","",$s['XKodeSoal']); 
$jumsoal = str_replace("  ","",$s['XJumSoal']); 
$tglujian = str_replace("  ","",$s['XTglUjian']);
$jamujian = str_replace("  ","",$s['XJamUjian']);
$tokenujian = str_replace("  ","",$s['XTokenUjian']);
	
?>
                                <tr height="40px">
                                    <td width="5%">&nbsp;<?php echo $nom ; ?></td>
                                    <td width="15%"><?php echo $tglujian; ?></td>
                                    <td width="5%"><?php echo $jamujian; ?></td>
                                    <td width="25%">

									<?php $sq = mysqli_query($sqlconn_i,"SELECT * FROM cbt_mapel where XKodeMapel = '$kodemapel'");
										$m= mysqli_fetch_array($sq);
                                        echo $m['XNamaMapel']; 
                                    ?>
                                    
                                    </td>
                                    <td width="15%"><?php echo $kodekelas; ?></td>
                                    <td width="15%"><?php echo $kodesoal; ?></td>
									<td width="10%"><?php echo $jumsoal; ?></td>
                                    <td width="5%"><?php echo $tokenujian; ?></td>

                                    <td width="5%" align="center"><a href="ctk_hasilpeserta.php?token=<?php echo $tokenujian; ?>" target="_blank"><img src="images/printer.png"/></a></td>
                                    </td>
                                </tr>
                                
<?php $nom++; } ?>
                                </table>