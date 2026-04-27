<?php
include("../config/cbt_con_i.php");

if (isset($_GET['id'])) {
  $kodesoal = $_GET['id'];
} else {
  die("Kesalahan. Tidak Ada Soal Terpilih! ");
}

$query = "SELECT * FROM cbt_soal WHERE XKodeSoal='$kodesoal'";
$sql = mysqli_query($sqlconn_i, $query);
$hasil = mysqli_fetch_array($sql);
$kodesoal = $hasil['XKodeSoal'];
$kodemapel = $hasil['XKodeMapel'];
$kkm =  $hasil['XKkm'];
$pil =  $hasil['XPilSoal'];
?>

<div class="row">
  <div class="col-md-6">
    <div class="portlet light bordered">
      <div class="portlet-title">
        <div class="caption">
          <i class="icon-edit font-dark"></i>
          <span class="caption-subject font-red bold uppercase">Edit Identitas Soal</span>
        </div>
      </div>

      <!-- start form edit  -->
      <form method="POST">
        <div class="form-group">
          <span class="caption-subject font-dark bold uppercase">Nama Mapel </span>

          <select name="kodemapel" class="form-control input-medium">
            <?php
            $sqlko = mysqli_query($sqlconn_i, "select * from cbt_mapel where XKodeMapel = '$kodemapel'");
            $skol = mysqli_fetch_array($sqlko);
            echo "<option value='$skol[XKodeMapel]'>$skol[XNamaMapel]</option>";

            $sqlkelas = mysqli_query($sqlconn_i, "select * from cbt_mapel order by XNamaMapel");
            while ($sk = mysqli_fetch_array($sqlkelas)) {
              echo "<option value='$sk[XKodeMapel]'>$sk[XNamaMapel]</option>";
            }
            ?>
          </select>

        </div>
        <div class="form-group">
          <span class="caption-subject font-dark bold uppercase">Kode Soal</span>

          <input name="kodesoal" class="form-control input-medium " size="16" type="text" value="<?php echo $kodesoal; ?>">

        </div>
        <div class="form-group">
          <span class="caption-subject font-dark bold uppercase">KKM</span>

          <input name="xkkm" class="form-control input-medium " size="16" type="text" value="<?php echo $kkm; ?>">

        </div>
        <div class="form-group">
          <span class="caption-subject font-dark bold uppercase">Pilhan </span>

          <select name="pil" class="form-control input-medium">
            <?php
            if ($pil == "4") {
              echo "<option selected>4</option>
            <option>5</option>\n
			";
            } elseif ($pil == "5") {
              echo "<option selected>5</option>
            <option>4</option>\n
			";
            } else {
              echo "<option>4</option>
            <option>5</option>\n";
            }
            echo "</select><p>";

            ?>
          </select>

        </div>
        <button type="submit" name="update" class="btn btn-primary"><i class="fa fa-pencil"></i>Ubah</button>
        <button type="submit" name="close" class="btn btn-danger" href="index.php?page=buat_soal"><i class="fa fa-pencil"></i>Close</button>
      </form>
      <!-- end form edit  -->


    </div>
  </div>
</div>


<?php
if (isset($_POST['update'])) {
  $xkodesoal = $_POST['kodesoal'];
  $xkodemapel = $_POST['kodemapel'];
  $xkkm = $_POST['xkkm'];
  $xpil = $_POST['pil'];
  $query = "UPDATE cbt_soal SET XKodeSoal='$xkodesoal',XKodeMapel='$xkodemapel',XKkm='$xkkm',XPilSoal='$xpil' WHERE XKodeSoal='$kodesoal'";
  $sql = mysqli_query($sqlconn_i, $query);
  if ($sql) {
    echo "<h2><font color=blue>Edit Berhasil</font></h2>";
    header("location:index.php?page=buat_soal");
  } else {
    echo "<h2><font color=red>Edit Gagal</font></h2>";
  }
  //echo "<script>alert(Data telah berubah);</script>";
  //echo "<script>window.location='index.php?halaman=download';</script>";
} elseif (isset($_POST['close'])) {
  header("location:index.php?page=buat_soal");
}
?>