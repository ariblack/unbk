<?php
/* Simple script to upload a zip file to the webserver and have it unzipped
   Saves tons of time, think only of uploading Wordpress to the server
   Thanks to c.bavota (www.bavotasan.com)
   I have modified the script a little to make it more convenient
   Modified by: Johan van de Merwe (12.02.2013)
*/   
 
function rmdir_recursive($dir) {
    foreach(scandir($dir) as $file) {
       if ('.' === $file || '..' === $file) continue;
       if (is_dir("$dir/$file")) rmdir_recursive("$dir/$file");
       else unlink("$dir/$file");
   }
 
}
 
if($_FILES["zip_file"]["name"]) {
	$filename = $_FILES["zip_file"]["name"];
	$source = $_FILES["zip_file"]["tmp_name"];
	$type = $_FILES["zip_file"]["type"];
 
	$name = explode(".", $filename);
	$accepted_types = array('application/zip', 'application/x-zip-compressed', 'multipart/x-zip', 'application/x-compressed');
	foreach($accepted_types as $mime_type) {
		if($mime_type == $type) {
			$okay = true;
			break;
		} 
	}
 
	$continue = strtolower($name[1]) == 'zip' ? true : false;
	if(!$continue) {
		$message = "The file you are trying to upload is not a .zip file. Please try again.";
	}
 
  /* PHP current path */
  $path = dirname(__FILE__).'/';  // absolute path to the directory where zipper.php is in
  $filenoext = basename ($filename, '.zip');  // absolute path to the directory where zipper.php is in (lowercase)
  $filenoext = basename ($filenoext, '.ZIP');  // absolute path to the directory where zipper.php is in (when uppercase)
 
  $targetdir = $path . $filenoext; // target directory
  $targetzip = $path . $filename; // target zip file
 
  /* here it is really happening */
 
	if(move_uploaded_file($source, $targetzip)) {
		$zip = new ZipArchive();
		$x = $zip->open($targetzip);  // open the zip file to extract
		if ($x === true) {
			$zip->extractTo($targetdir); // place in the directory with same name  
			$zip->close();
 
			unlink($targetzip);
		}
		$message = "File .zip anda berhasil terupload dan terestrak.<a href='/unbk/admin/index.php?page=buat_soal'>Back</a>";
	} else {	
		$message = "There was a problem with the upload. Please try again.";
	}
}
 
 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Unzip a zip file to the webserver</title>
<style type="text/css">
#ee {
	color: #F00;
}
</style>
</head>
 
<body>
<?php if($message) echo "<p>$message</p>"; ?>
<form enctype="multipart/form-data" method="post" action="">
<label>Pilih File Untuk di Upload : 
  <input type="file" name="zip_file" /></label>
<br />
<input type="submit" name="submit" value="Upload" />
</form><br />
<span id="ee"><strong>Perhatian !! :</strong></span><strong><br />
</strong>- 
Pastikan nama file gambar anda sudah unik, Jika Nama file gambar dengan file gambar yang sudah ada , file akan tertimpah otomatis ;<br />
- Jika anda ragu ,, anda bisa extract manual gambar zip ke folder /xampplite/htdocs/unbk/pictures/ 
<br />
<br />
</body>
</html>