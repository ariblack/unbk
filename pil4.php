<script type="text/javascript">
$(document).ready(function() {

	$.post( "getsoal4.php?kode=<?php echo $xkodesoal; ?>", { pic: "1"}, function( data ) {
	  $("#picture").html( data );
	  $("#soal").html(1);
	});
	
	$("#picture").on("click",".get_pic", function(e){
		var picture_id = $(this).attr('data-id');
		$("#picture").html("<div style=\"margin:50px auto;width:50px;\"><img src=\"loader.gif\" /></div>");
		$("#soal").html(picture_id);
		$.post( "getsoal4.php", { pic: picture_id}, function( data ) {
			$("#picture").html( data );
		});
		return false;
	});
	
});
</script>