$(document).ready(function(){
	var userin=[];
	$.ajax({
        url : 'Userinclass',
        data : {
            idclass:$('#idclass').val()
        },
        success : function(responseJson) {
        	$.each(responseJson, function(index, item) {
                   userin.push(item);
            });
        }
    });
	$('.btn').click(function(){
		var obj=$(this);
		var iduser=$(obj.parent().parent().children().first()).text();
		if(obj.val()==0){
			obj.text('Đã Thêm');
			obj.attr("class","btn btn-danger btn-md");
			userin.push(iduser);
			obj.val(1);
		}else{
			obj.text('Thêm vào');
			obj.attr("class","btn btn-success btn-md");
			var index=userin.indexOf(iduser);
			userin.splice(index, 1);
			obj.val(0);
		}
	});
	$('#submit').click(function(){
		$.ajax({
			url : 'Userinclass',
			type:'POST',
			dataType:'json',
			data : {
				listuser:userin
			},
			success : function(responseJson) {
				$.each(responseJson, function(index, item) {
					userin.push(item);
				});
			},
			
		});
	});
	
	 $('#table').DataTable();
});