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
<div class="head">TRANG QUẢN LÍ HỌC VIÊN</div>
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
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${user}"  var="u">
                    <tr>
                        <td>${u.id}</td>
                        <td>${u.fullname}</td>
                        <td>${u.username}</td>
                        <td>${u.email}</td>
                        <td ><a href="UserView?id=${u.id}">View</a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
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
</script>
</body>
</html>