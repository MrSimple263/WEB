<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>them lop</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <br>
            <form method="post" action="ClassAdd" >
            	 <label for="tile">Môn Học</label>
            	<select class="form-control" id="sel-monhoc" name="monhoc">
 					<c:forEach items="${subject}" var="sl">
 	 					<option value="${sl.idsubject}">${sl.name}</option>
 					</c:forEach>
  				</select>
            	<br/>
            	<label for="tile">Tên Lớp</label>
            	<input type="text" name="name" class="form-control" value="${name}"/>
            	<br/>
            	<label >Giáo Viên</label>
            	<select class="form-control" id="sel-gv" name="gv">
 					<c:forEach items="${teacher}" var="sl">
 	 					<option value="${sl.id}">${sl.fullname}</option>
 					</c:forEach>
  				</select>
            	<br/>
        <button type="submit" name="publish" class="btn btn-primary">Thêm</button>
    </form>       
        </div>
    </div>
</div>
</body>
</html>