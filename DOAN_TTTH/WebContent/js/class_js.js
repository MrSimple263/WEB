$(document).ready(function(){
	$('#table').DataTable();
});
$(".glyphicon-remove").click(function () {
	    var obj=$(this);
	    obj.attr("data-toggle","modal");
	    obj.attr("data-target","#myDell");
	    var str=$(obj.parent().parent().children().first()).text();
	    alert($(obj.parent().parent().children().first()).text());
	    $(".frm-del").attr("action","ClassDell?id="+str.trim()+"");    
	});