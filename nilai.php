KKM untuk Ujian ini adalah <?php echo $kkm; ?><br />
<?php  if ($nilai>=$kkm){echo 'Selamat anda <b>LULUS </b>Ujian';}else{ echo 'Maaf anda <b>TIDAK LULUS</b> Ujian' ;}?> 
								<br />
                              <strong><H1>NILAI <?php if ($nilai>=$kkm){ echo '<font color="#00FF00">' ; echo $nilai ; echo  '</font>'; }
							  	else { echo '<font color="##FF0000">' ; echo $nilai ; echo  '</font>'; } ?></H1></strong>
                                   Silahkan klik tombol LOGOUT untuk mengakhiri test.