<?php
include "../config/cbt_con_i.php";
$uploaddir = '../images/'; 

$namafile1 = basename($_FILES['uploadfile1']['name']);
$file1 = $uploaddir . basename($_FILES['uploadfile1']['name']); 
 if (move_uploaded_file($_FILES['uploadfile1']['tmp_name'], $file1)) { 
$sql = mysqli_query($sqlconn_i,"update cbt_skul set XBanner = '$namafile1'");
  echo "success"; 
} else {
	echo "error";
}

?>