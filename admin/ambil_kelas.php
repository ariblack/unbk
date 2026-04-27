<?php

include "../config/cbt_con_i.php";

$id_kelas = $_GET['id'];

?>

 <div class="form-group">
                                                            <label class="control-label col-md-4">Tingkat</label>
                                                            <div class="col-md-4">

<select name="kelas" class="bs-select form-control" data-width="75%" tabindex="-98" >

	<option value="">--Pilih Kelas--</option>

	<?php

		$sql_kota = mysqli_query($sqlconn_i, "SELECT * FROM cbt_kelas WHERE XLevelKelas='$id_kelas' ORDER by XKodeKelas ASC");

		while ( $r = mysqli_fetch_array($sql_kota)){

	?>
			<option value="<?php echo $r['XKodeKelas']; ?>"> <?php echo $r['XKodeKelas']; ?> </option>

	<?php } /* end while */	?>

</select></div></div>

      