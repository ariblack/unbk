<?php

//koneksi ke database mysql
include "../config/cbt_con_i.php";

//simpan data sekolah ke dalam database usbk_skul
$sql = mysqli_query($sqlconn_i, "UPDATE cbt_skul SET Xtes     = '$_REQUEST[txt_tes]',
										XSekolah = '$_REQUEST[txt_nama]',
										XTingkat = '$_REQUEST[txt_ting]',		
										XAlamat  = '$_REQUEST[txt_alam]',
										XTelp    = '$_REQUEST[txt_telp]',
										XFax     = '$_REQUEST[txt_facs]',
										XEmail   = '$_REQUEST[txt_emai]',
										XWeb     = '$_REQUEST[txt_webs]',
										XKepSek  = '$_REQUEST[txt_ip]',
										XNip     = '$_REQUEST[txt_nip]'");
echo "Simpan data berhasil !"; 

?>