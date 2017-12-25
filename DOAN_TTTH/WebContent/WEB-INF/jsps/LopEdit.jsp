<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Class</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/StyleQLTT.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
</head>
<body>
<div class="container">
  <div class="row">
        <div class="col-md-8">
            <br>
            <form method="post" action="ClassEdit" >
            <input type="hidden" name="idclass" value="${param.idclass}" id="idclass">
            	 <label for="tile">Môn Học</label>
            	<select class="form-control" id="sel-monhoc" name="monhoc">
 					<c:forEach items="${subject}" var="sl">
 	 					<option value="${sl.idsubject}">${sl.name}</option>
 					</c:forEach>
  				</select>
            	<br/>
            	<label >Giáo Viên</label>
            	<select class="form-control" id="sel-gv" name="gv">
 					<c:forEach items="${teacher}" var="sl">
 	 					<option value="${sl.id}">${sl.fullname}</option>
 					</c:forEach>
  				</select>
            	<br/>
        <button type="submit" name="publish" class="btn btn-primary" id="submit">Chỉnh sửa</button>
    </form>       
        </div>
    </div>
    <br/>
    <table class="table table-hover" id="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên Học Sinh</th>
            <th>UserName</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
       <c:forEach items="${user}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.fullname}</td>
            <td>${u.username}</td>
            <td ><button type="button" class="btn btn-danger btn-md" value="1">Đã thêm</button></td>
        </tr>
       </c:forEach>
       <c:forEach items="${userout}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.fullname}</td>
            <td>${u.username}</td>
            <td ><button type="button" class="btn btn-success btn-md" value="0">Thêm vào</button></td>
        </tr>
       </c:forEach>
        </tbody>
    </table>
</div>

<script>
document.getElementById("sel-monhoc").value =${param.idsub};
document.getElementById("sel-gv").value =${param.idteacher};
</script>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/class_jsfile.js"></script>
</body>
</html>