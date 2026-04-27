<div class="row>">
  <!-- TinyMCE 4.x -->

  <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
  <script type="text/javascript">
    tinymce.init({
      selector: "textarea",

      // ===========================================
      // INCLUDE THE PLUGIN
      // ===========================================

      plugins: [
        "eqneditor advlist lists charmap anchor",
        "code fullscreen",
        "table contextmenu paste jbimages"
      ],

      // ===========================================
      // PUT PLUGIN'S BUTTON on the toolbar
      // ===========================================

      toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image jbimages",

      // ===========================================
      // SET RELATIVE_URLS to FALSE (This is required for images to display properly)
      // ===========================================

      relative_urls: false,
      forced_root_block: "",
      force_br_newlines: true,
      force_p_newlines: false,
    });
  </script>
  <!-- /TinyMCE -->




  <center><strong>
      <h2>Formulir Pembuatan Soal</h2>
    </strong></center>
  <form method="post" action="multi_insert.php">
    <?php
    $no = 1;
    for ($i = 0; $i < $_POST['angka']; $i++) {
    ?>
      <table width="806" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="87" height="29" align="center">&nbsp;</td>
          <td width="719"><strong>Soal No.<?php echo $ns = $no++ ?> <input type="text" style="display:none" name="nomor<?php echo $i ?>" value="<?php echo $ns ?>" /></strong></td>
        </tr>
        <tr>
          <td height="66" align="center">&nbsp;</td>
          <td><textarea name="soal<?php echo $i ?>"></textarea></td>
        </tr>
        <tr>
          <td height="29" align="center">&nbsp;</td>
          <td>Jawaban 1.
            <textarea name="a<?php echo $i ?>" type="text" id="textfield9" size="50" /></textarea>
          </td>
        </tr>
        <tr>
          <td height="32" align="center">&nbsp;</td>
          <td>Jawaban 2.
            <textarea name="b<?php echo $i ?>" type="text" size="50" /></textarea>
          </td>
        </tr>
        <tr>
          <td height="31" align="center">&nbsp;</td>
          <td>Jawaban 3.
            <textarea name="c<?php echo $i ?>" type="text" size="50" /></textarea>
          </td>
        </tr>
        <tr>
          <td height="32" align="center">&nbsp;</td>
          <td>Jawaban 4.
            <textarea name="d<?php echo $i ?>" type="text" size="50" /></textarea>
            </textarea>
          </td>
        </tr>
        <tr>
          <td height="32" align="center">&nbsp;</td>
          <td>Jawaban 5.
            <textarea name="e<?php echo $i ?>" type="text" size="50" /></textarea>
            </textarea>
          </td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
          <td><label for="select"></label>
            File Audio
            <select name="audio<?php echo $i ?>">
              <option value="">pilih</option>
              <?php
              $dir = "/xampp_lite_7_2/www/unbk/audio";

              // Membuka direktori dan membaca dan menampilkan isinya
              if (is_dir($dir)) {
                if ($dh = opendir($dir)) {
                  while (($file = readdir($dh)) !== false) {
                    if ($file != ".." && $file != ".") {
                      //echo "filename: $file : filetype: " . filetype($dir . $file) . "<br>";
              ?>

                      <option value="<?php echo $file; ?>"><?php echo $file; ?></option>


              <?php
                    }
                  }
                  closedir($dh);
                }
              }
              ?>
            </select>
          </td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
          <td>Kunci
            <select name="kunci<?php echo $i ?>" id="select">
              <option value="1">A</option>
              <option value="2">B</option>
              <option value="3">C</option>
              <option value="4">D</option>
              <option value="5">E</option>
            </select>
          </td>
        </tr>
      </table>
      <hr size="1" />
      <p><br />
      <?php
    }
      ?>
      Pegaturan Tambahan : Acak Soal
      <label for="select2"></label>
      <select name="acak" id="select2">
        <option value="1">YA</option>
        <option value="0">TIDAK</option>
      </select>
      </p>
      Mata Uji
      <select name="mapel" id="txt_mapel">
        <?php
        include "../../config/cbt_con_i.php";
        $sqlkelas = mysqli_query($sqlconn_i, "select * from cbt_mapel order by XNamaMapel");
        while ($sk = mysqli_fetch_array($sqlkelas)) {
          echo "<option value='$sk[XKodeMapel]'>$sk[XNamaMapel]</option>";
        }
        ?>
      </select>
      Nama Paket Soal
      <label for="textfield14"></label>
      <input type="text" name="grup" />
      <p>
        <input type="submit" value="Post" />
        <input type="hidden" name="jumlah" value="<?php echo $_POST['angka'] ?>" />
      </p>
  </form>
</div>