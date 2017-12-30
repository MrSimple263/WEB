<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/StyleQLTT.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
</head>
<body>
<div class="head">TRANG QUẢN LÍ CÁC USER</div>
<div class="wrap-table">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover" id="table">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Ten</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th></th>
                        <th></th>
                       <td ><a href="UserAdd"class="glyphicon glyphicon-plus"></a></td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${user}"  var="u">
                    <tr>
                        <td>${u.id}</td>
                        <td>${u.fullname}</td>
                        <td>${u.username}</td>
                        <td>${u.email}</td>
                        <td ><a href="UserEdit?id=${u.id}" class="glyphicon glyphicon-pencil"></a></td>
                        <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
                        <td ><a href="UserAdd"class="glyphicon glyphicon-plus"></a></td>
                    </tr>
                    </c:forEach>
                    
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    </div>
<div class="notification">
    <div id="myDell" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn muốn xóa chứ</p>
                </div>
                <div class="modal-footer">
                    <form class="frm-del" method="post">
                    	<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    	<button type="submit" class="btn btn-primary">Yes</button>
                    </form>     
                </div>
            </div>

        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#table').DataTable();
});
$(".glyphicon-remove").click(function () {
	    var obj=$(this);
	    obj.attr("data-toggle","modal");
	    obj.attr("data-target","#myDell");
	    var str=$(obj.parent().parent().children().first()).text();
	    $(".frm-del").attr("action","UserDell?id="+str.trim()+"");    
	});
</script>
</body>
</html>