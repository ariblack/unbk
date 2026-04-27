<?php
include "../config/cbt_con_i.php";
$uploaddir = '../images/'; 

$namafile = basename($_FILES['uploadfile']['name']);
$file = $uploaddir . basename($_FILES['uploadfile']['name']); 
 if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $file)) { 
$sql = mysqli_query($sqlconn_i,"update cbt_skul set XLogo = '$namafile'");
  echo "success"; 
} else {
	echo "error";
}

?>