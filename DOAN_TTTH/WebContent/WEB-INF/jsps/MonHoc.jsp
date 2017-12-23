<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="ckeditor/ckeditor.js"></script>
<title>Mon Học</title>
<style type="text/css">
	input{
	margin-top:20px;
	}
	label{
	margin-top:10px;
	}
	.form-control{
	width: 60%;
	margin-left:30px;
	}
	
	
</style>
</head>
<body>
<form method="post" action="SubjectAdd"  enctype="multipart/form-data">
	<label for="sel1">Nhóm Môn học:</label>
 	<select class="form-control" id="sel" name="select">
 	<c:forEach items="${select}" var="sl">
 	 	<option value="${sl.idsubject}">${sl.name}</option>
 	</c:forEach>
  	</select>
  	<div class="form-group">
  		<label for="usr">Tên Môn Học:</label>
  		<input type="text" class="form-control" name="name">
	</div>
	<label>Chọn Ảnh</label>
    <input type="file" class="form-control" name="file" accept="image/*" >
    <label>Nội Dung</label>
    <div>
    	<textarea name="infor" id="editor" rows="10" cols="80" style="margin-left:50px">
           This is my textarea to be replaced with CKEditor.
    </textarea>
    </div>
    <script>
    	CKEDITOR.replace( 'infor' );
    	CKEDITOR.config.height=400;
    	
	</script>
  <button class="btn btn-primary btn-md" type="submit" style="margin:10px auto auto 50px">Thay Đổi</button>
</form>
</body>
</html>