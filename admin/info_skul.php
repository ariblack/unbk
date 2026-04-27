<script type="text/javascript" src="js/jquery-1.3.2.js" ></script>
<script type="text/javascript" src="js/ajaxupload.3.5.js" ></script>
<link rel="stylesheet" type="text/css" href="../styles.css" />
<script type="text/javascript" >
	$(function(){
		var btnUpload=$('#upload');
		var status=$('#status');
		new AjaxUpload(btnUpload, {
			action: 'upload-file.php',
			name: 'uploadfile',
			onSubmit: function(file, ext){
				 if (! (ext && /^(jpg|png|jpeg|gif)$/.test(ext))){ 
                    // extension is not allowed 
					status.text('Only JPG, PNG or GIF files are allowed');
					return false;
				}
				status.text('Uploading...');
			},
			onComplete: function(file, response){
				//On completion clear the status
				status.text('');
				//Add uploaded file to list
				
				if(response==="success"){
				$('#upload').html('<img src="../images/'+file+'"  width="200" alt="" />').addClass('success');
//					$('<li></li>').appendTo('#files').html('<img src="./uploads/'+file+'" alt="" /><br />'+file).addClass('success');
				} else{
					$('<li></li>').appendTo('#files').text(file).addClass('error');
				}
			}
		});
		
	});
</script>
<style>
.left {
    float: left;
    width: 25%;
}
.right {
    float: right;
    width: 73%;
}
.group:after {
    content:"";
    display: table;
    clear: both;
}
img {
    max-width: 100%;
    height: auto;
}
@media screen and (max-width: 480px) {
    .left, 
    .right {
        float: none;
        width: auto;
		margin-top:10px;		
    }
	
}
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 	var loading = $("#loading");
	var tampilkan = $("#tampilkan");

	loading.hide()
//apabila terjadi event onchange terhadap object <select id=propinsi>
 $("#simpan").click(function(){

 var txt_tes  = $("#teskul").val();
 var txt_nama = $("#namaskul").val();
 var txt_ting = $("#tingkatskul").val();
 var txt_alam = $("#alamatskul").val();
 var txt_telp = $("#telpskul").val();
 var txt_facs = $("#faxskul").val();
 var txt_emai = $("#emailskul").val();
 var txt_webs = $("#webskul").val();  
 var txt_ip   = $("#kepsek").val();
 var txt_nip  = $("#nipskul").val();

  
 $.ajax({
     type:"POST",
     url:"ubahdata.php",    
     data: "aksi=simpan&txt_nama=" + txt_nama + "&txt_ting=" + txt_ting + "&txt_alam=" + txt_alam + "&txt_telp=" + txt_telp + "&txt_facs=" + txt_facs + "&txt_emai=" + txt_emai + "&txt_webs=" + 
	 txt_webs + "&txt_ip=" + txt_ip + "&txt_tes=" + txt_tes + "&txt_nip=" + txt_nip,
	 success: function(data){
	 	loading.fadeOut();
		$("#info").html(data);
		$("#info").fadeOut(2000);
	 }
	 });
	 });

});
 
</script>
<div id="mainbody" >
<?php include "../config/cbt_con_i.php"; 
$skulpic = '';
$skulban = '';
$skultes = '';
$skulnam = '';
$skultin = '';
$skulala = '';
$skultel = '';
$skulfax = '';
$skulema = '';
$skulweb = '';
$skulkep = '';
$skulnip = '';
if (isset($sqlconn_i)) {
    $sql = mysqli_query($sqlconn_i, "select * from cbt_skul");
    $xadm = mysqli_fetch_array($sql);
    $skulpic = $xadm['XLogo']; 
    $skulban = $xadm['XBanner']; 
    $skultes = $xadm['XTes']; 
    $skulnam = $xadm['XSekolah']; 
    $skultin = $xadm['XTingkat']; 
    $skulala = $xadm['XAlamat']; 
    $skultel = $xadm['XTelp']; 
    $skulfax = $xadm['XFax']; 
    $skulema = $xadm['XEmail']; 
    $skulweb = $xadm['XWeb']; 
    $skulkep = $xadm['XKepSek']; 
    $skulnip = $xadm['XNip'];
} else {
    echo "Database connection error.";
}
?>
<div class="group">
    <div class="left">


				<div class="panel panel-info" style="padding-top:20">
                        <div class="panel-heading" style=" text-align:center">
                            Update Logo Sekolah : 
                        </div>
                        <div class="panel-body">
                          
                        <!-- Upload Button, use any id you wish-->
                        <div id="upload" style="text-align:center"><img src="../images/<?php echo "$skulpic"; ?>" width="200"/></div><span id="status" ></span>
                        <ul id="files"></ul>
           				</div>
               			<div class="panel-footer" style=" text-align:center">Klik Gambar untuk Ganti Logo<br/>Ekstensi File harus JPG
                        </div>
                </div>
    </div>
    <div class="right">
       
    				<div class="panel panel-primary">
                        <div class="panel-heading">
                           <i class="icon-home"></i>  Data Sekolah
                        </div>
                        <div class="panel-body">
                            <table width="100%">
							<tr height="42px"><td width="40%">Nama Ujian &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="teskul" value="<?php echo "$skultes"; ?>"/></td></tr>
                            <tr height="42px"><td width="40%">Nama Sekolah &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="namaskul" value="<?php echo "$skulnam"; ?>"/></td></tr>
                            <tr height="42px"><td>Jenjang Sekolah &nbsp;</td><td>: 
                            <select id="tingkatskul" style="border:none;width:300px;height:30px;background-color:#f0f0f0">
                            <?php if($skultin=="SMK"){echo "Selected";}?>                            
                            <option value="PG">TK</option>
                            <option value="TK">TK</option>                            
                            <option value="SD">SD</option>
                            <option value="MI">MI</option>                            
                            <option value="SMP" <?php if($skultin=="SMP"){echo "Selected";}?>>SMP</option>
                            <option value="MTs" <?php if($skultin=="MTs"){echo "Selected";}?>>MTs</option>                            
                            <option value="SMU" <?php if($skultin=="SMU"){echo "Selected";}?>>SMU</option>
                            <option value="MA" <?php if($skultin=="MA") {echo "Selected";}?>>MA</option>                            
                            <option value="SMK" <?php if($skultin=="SMK"){echo "Selected";}?>>SMK</option>                            
                            <tr height="42px"><td>Alamat Sekolah &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="alamatskul"  value="<?php echo "$skulala"; ?>"/></td></tr>
                            <tr height="42px"><td>No. Telp &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="telpskul"  value="<?php echo "$skultel"; ?>"/></td></tr>
                            <tr height="42px"><td>No. Fax. &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="faxskul"  value="<?php echo "$skulfax"; ?>"/></td></tr>
                            <tr height="42px"><td>Email Sekolah &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="emailskul"  value="<?php echo "$skulema"; ?>"/></td></tr>
                            <tr height="42px"><td>Website Sekolah &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="webskul" value="<?php echo "$skulweb"; ?>" /></td></tr>
                            <tr height="42px"><td>Nama Kepala Sekolah &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="kepsek" value="<?php echo "$skulkep"; ?>" /></td></tr>
							<tr height="42px"><td>NIP Kepala Sekolah &nbsp;</td><td>: <input style="border:none;width:300px;height:30px;background-color:#f0f0f0" type="text" id="nipskul" value="<?php echo "$skulnip"; ?>" /></td></tr>
						</table>
						</div>
                        <div class="panel-footer">
                            <input type="submit"  class="btn btn-info btn-small" id="simpan" name="simpan" value="SIMPAN">
                            <div id="info"></div><div id="loading"><img src="images/loading.gif" height="10"></div>
                        </div>
                    </div>
    
    
    
	</div>
</div>    
</div>                  
</body>