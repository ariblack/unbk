<?php
include "../../config/cbt_con_i.php";

for ($i = 0; $i < $_POST['jumlah']; $i++) {
    $koma = $_POST['mapel'];
    $soal = $_POST['soal' . $i];
    $a = $_POST['a' . $i];
    $b = $_POST['b' . $i];
    $c = $_POST['c' . $i];
    $d = $_POST['d' . $i];
    $e = $_POST['e' . $i];
    $kunci = $_POST['kunci' . $i];
    $acak = $_POST['acak'];
    $grup = $_POST['grup'];
    $noso = $_POST['nomor' . $i];
    $audio = $_POST['audio' . $i];


    $query = "insert into cbt_soal(XKodeMapel,XKodeSoal,XNomerSoal,XTanya,XAudioTanya,XJawab1,XJawab2,XJawab3,XJawab4,XJawab5,XKunciJawaban,Xidacak)
values
('$koma','$grup','$noso','$soal','$audio','$a','$b','$c','$d','$e','$kunci','$acak')";
$result = mysqli_query($sqlconn_i, $query);

if ($result)
    {
        header("location:../index.php?page=buat_soal");
}
else
    {
        echo "proses simpan gagal !.";
    }
}
?>