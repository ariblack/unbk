<table width="480" border=0>
	<tr>
		<?php
		//koneksi database
		include('../config/cbt_con_i.php');

		include "plugins/qr_code/qrlib.php";

		$tempdir = "plugins/img-qrcode/";
		if (!file_exists($tempdir))
			mkdir($tempdir, 0755);

		$BatasAwal = 50;

		if (!empty($_GET['page'])) {
			$hal = $_GET['page'] - 1;
			$MulaiAwal = $BatasAwal * $hal;
		} else if (!empty($_GET['page']) and $_GET['page'] == 1) {
			$MulaiAwal = 0;
		} else if (empty($_GET['page'])) {
			$MulaiAwal = 0;
		} //tampil data
		$kolom = 2;
		$i = 0;
		$query = mysqli_query($sqlconn_i, "SELECT * FROM cbt_siswa, cbt_skul LIMIT $MulaiAwal , $BatasAwal");
		while ($record = mysqli_fetch_array($query)) {
			if ($i >= $kolom) {
				echo "<tr></tr>";
				$i = 0;
			}
			$file_name = $record['XNIK'] . ".png";
			$file_path = $tempdir . $file_name;

			QRcode::png($record['XNIK'], $file_path, "H", 4, 2);
			$i++;
		?>
			<td width="370">
				<table width="410">
					<table style="width:10.2cm;border:1px solid black; padding-top:3px; font-family:Arial, Helvetica, sans-serif; font-size:12px" class="kartu" border="0">
						<tbody>
							<tr>
								<td colspan="3" style="padding:0px" align="center">
									<table width="98%" class="kartu" cellpadding="0px">
										<tbody>
											<tr>
												<td style="border-bottom:1px solid black"><img style="margin-top:-2px;margin-bottom:5px" src="../images/<?php echo $record['XLogo']; ?>" height="48"></td>
												<td style="text-align:center;valign:top;font-weight:bold;border-bottom:1px solid black">
													KARTU PESERTA<BR><?php echo $record['XTes']; ?>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr height="10px">
								<td width="90">&nbsp;Nama Peserta</td>
								<td width="8">:</td>
								<td width="226" style="font-size:12px;font-weight:normal;"><?php echo $record['XNamaSiswa']; ?></td>
							</tr>
							<tr height="10px">
								<td width="90">&nbsp;Nomor NISN</td>
								<td width="8">:</td>
								<td width="226" style="font-size:12px;font-weight:normal;"><?php echo $record['XNIK']; ?></td>
							</tr>
							<tr height="10px">
								<td>&nbsp;Kelas/Jurusan</td>
								<td>:</td>
								<td style="font-size:12px;font-weight:normal;"><?php echo $record['XNamaKelas'] . ' - ' . $record['XKodeKelas']; ?></td>
							</tr>
							<tr height="10px">
								<td>&nbsp;Username</td>
								<td>:</td>
								<td style="font-size:12px;font-weight:normal;"><?php echo $record['XNomerUjian']; ?></td>
							</tr>
							<tr height="10px">
								<td>&nbsp;Password</td>
								<td>:</td>
								<td style="font-size:12px;font-weight:normal;"><?php echo $record['XPassword']; ?></td>
							</tr>
							<tr height="10px">
								<td rowspan="3" align="center"><img alt="testing" src="<?php echo $file_path ?>" /></td>
								<td colspan="2" valign="top" align="center"><br><?php echo $record['XSekolah']; ?></td>
							</tr>
							<td style="font-size:12px;font-weight:bold;" colspan="2" align="center" height="45"></td>
	</tr>
	<tr>
		<td colspan="2" align="center" height="45"><u><b><?php echo $record['XKepSek']; ?></b></u><br><br><br></td>
	</tr>
	</tbody>
</table>
<br>
<?php
		}
?>
</tr>
</table>
<br>
<?php
$cekQuery = mysqli_query($sqlconn_i, "SELECT * FROM cbt_siswa");
$jumlahData = mysqli_num_rows($cekQuery);
if ($jumlahData > $BatasAwal) {
	echo '<br/><center><div style="font-size:10pt;">Page : ';
	$a = explode(".", $jumlahData / $BatasAwal);
	$b = $a[0];
	$c = $b + 1;
	for ($i = 1; $i <= $c; $i++) {
		echo '<a style="text-decoration:none;';
		if ($_GET['page'] == $i) {
			echo 'color:red';
		}
		echo '" href="?page=' . $i . '">' . $i . '</a>, ';
	}
	echo '</div><button onclick="window.print()">Cetak Halaman Web</button></center>';
}
?>