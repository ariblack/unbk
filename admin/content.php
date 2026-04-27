 <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        DASHBOARD
                                    </div>
                                    
                                </div>
                                <div class="portlet-body">
                                    <div class="row">
                                   
                                        <div class="col-md-6"> <H3><FONT class="font-green" ><strong>AKTIF</strong></FONT></H3>
                                            <div class="form-group">
                                                <label class="control-label" for="title"><div class="alert alert-success">
                                        WokaAdminCBT V.20.26 Siap digunakan</div>
                                        <div class="alert alert-info">
                                        <font color="#333333">Server ID :</font> 
                                        <label for="textfield"></label>
                                        <FONT style="background-color:#32C5D2" color="#FFFFFF" >F4609467-MD</FONT>
                                        </div><div class="alert alert-danger">
                                       
<form action="index.php" method="post" >
<label for="select"> Pilih Hapus</label>
<select name="pilih" id="select">
  <option value="1">Tabel Siswa</option>
  <option value="2">Tabel Kelas</option>
  <option value="3">Tabel Mapel</option>
  <option value="4">Tabel Soal</option>
  <option value="5">Tabel Jadwal</option>
</select>
<input class="btn red" type="submit" name="hapusx" id="button" value="Hapus"  onclick="return confirm('Anda yakin akan mengosongkan tabel ini ?')">
</form>


<?php
include("../config/cbt_con_i.php");

if(isset($_POST['hapusx'])){
	$nn = $_POST['pilih'];
	if ($nn==1){
	$query = "TRUNCATE TABLE cbt_siswa";
	$querya = "TRUNCATE TABLE cbt_siswa_ujian";
	$hasil = mysqli_query($sqlconn_i, $query);
	$hasila = mysqli_query($sqlconn_i, $querya);
	header("location:../admin");
	}elseif($nn==2){$query2 = "TRUNCATE TABLE cbt_kelas";
	$hasil2 = mysqli_query($sqlconn_i, $query2);
	header("location:../admin");
	}elseif($nn==3){$query3 = "TRUNCATE TABLE cbt_mapel";
	$hasil3 = mysqli_query($sqlconn_i, $query3);
	header("location:../admin");
	}elseif($nn==4){
	$query4 = "TRUNCATE TABLE cbt_soal";
	$query4a = "TRUNCATE TABLE cbt_jawaban";
	$hasil = mysqli_query($sqlconn_i, $query4);
	$hasila = mysqli_query($sqlconn_i, $query4a);
	header("location:../admin");
	}else{$query5 = "TRUNCATE TABLE cbt_ujian";
	$hasil5 = mysqli_query($sqlconn_i, $query5);
	header("location:../admin");}
	
}
	?>
                                        </div></div>
                                            <div class="form-group"></div>
                                        </div>
                                    </div>
                                    <div class="row margin-top-30">
                                      <div class="col-md-12"> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                   