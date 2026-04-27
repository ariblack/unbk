<table class="table table-bordered" cellpadding="30px" width="100%" border="0">
								<tr height="50px" bgcolor="#E4E6DD">
                                    <th>&nbsp;No.</th>
                                    <th>Nomer Peserta</th>
                                    <th>Nama Siswa</th>
                                    <th>Kelas</th>
                                    <th>NIK</th>
                                    <th>Grup Soal</th>
                                    <th>Status Tes Peserta</th>
                                </tr>
 <?php                    
include "../config/cbt_con_i.php";
$sql = mysqli_query($sqlconn_i, "SELECT *,u.XStatusUjian as ujsta
FROM cbt_siswa s
LEFT JOIN `cbt_siswa_ujian` u ON u.XNomerUjian = s.XNomerUjian
LEFT JOIN cbt_ujian c ON (u.XKodeSoal = c.XKodeSoal and u.XTokenUjian = c.XTokenUjian)
WHERE c.XStatusUjian = '1'"); 
$nom = 1;								
while($s= mysqli_fetch_array($sql)){ 
$nama = str_replace("  ","",$s['XNamaSiswa']); 
$nouji = str_replace("  ","",$s['XNomerUjian']); 
$kodekelas = str_replace("  ","",$s['XKodeKelas']); 
$kodeNIK = str_replace("  ","",$s['XNIK']); 
$grupsoal = str_replace("  ","",$s['XKodeSoal']); 
$staujian = str_replace("  ","",$s['ujsta']); 
if($staujian =='0'){$staujian = "Belum Login";}
elseif($staujian =='1'){$staujian = "Sedang Dikerjakan";}
elseif($staujian =='9'){$staujian = "Tes SELESAI";}
?>
                                <tr height="40px">
                                    <td width="5%">&nbsp;<?php echo $nom ; ?></td>
                                    <td width="15%"><?php echo $nouji; ?></td>
                                    <td width="25%"><?php echo $nama; ?></td>
                                    <td width="5%"><center><?php echo $kodekelas; ?></center></td>
                                    <td width="5%"><?php echo $grupsoal; ?></td>
                                    <td width="5%"><?php echo $kodeNIK; ?></td>
                                    <td width="20%"><?php echo "$staujian"; ?></td>
                                    </td>
                                </tr>
                                
                                <?php $nom++; } ?>
                                </table>