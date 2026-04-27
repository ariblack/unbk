<?php 
//session_start();
$session_id='1'; //$session id
?>
<html>
<head>
<title>Ajax Image Upload </title>
<script type="text/javascript">
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
</script>
</head>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.wallform.js"></script>
<script>
$.noConflict();
jQuery( document ).ready(function( $ ) {

// $(document).ready(function() { 
		
            $('#photoimg').die('click').live('change', function()			{ 
			           //$("#preview").html('');
			    
				$("#imageform").ajaxForm({target: '#preview', 
				     beforeSubmit:function(){ 
					
					console.log('ttest');
					$("#imageloadstatus").show();
					 $("#imageloadbutton").hide();
					 }, 
					success:function(){ 
				    console.log('test');
					 $("#imageloadstatus").hide();
					 $("#imageloadbutton").show();
					}, 
					error:function(){ 
					console.log('xtest');
					 $("#imageloadstatus").hide();
					$("#imageloadbutton").show();
					} }).submit();
					
		
			});
        }); 
</script>

<style>

body
{
font-family:arial;
}

#preview
{
color:#cc0000;
font-size:12px
}
.imgList 
{
max-height:150px;
margin-left:5px;
border:1px solid #dedede;
padding:4px;	
float:left;	
}

</style>
<body>

<div>

<div id='preview'>
</div>
	
<form id="imageform" method="post" enctype="multipart/form-data" action='ajaxImageUpload.php' style="clear:both">
<h4>Upload File Soal dan Jawaban <em>(*Gambar, Video, Audio)</em></h4> 
<div id='imageloadstatus' style='display:none'><img src="images/loading.gif" alt="Uploading...."/></div>
<div id='imageloadbutton'>
<input type="file" name="photos[]" id="photoimg" multiple="true" />
</div>
</form>


<p>&nbsp;</p>
<h4>Silahkan PIlih Menu Upload :
  <select name="jumpMenu" id="jumpMenu" onChange="MM_jumpMenu('parent',this,0)">
    <option value="#">-- Pilih --</option>
    <option value="uploadsoal/upload_kelas.php">Upload Kelas</option>
    <option value="uploadsoal/upload_siswa.php">Upload Siswa</option>
    <option value="uploadsoal/upload_mapel.php">Upload Mapel</option>
  </select>
</h4>
</div>
</body>
</html>