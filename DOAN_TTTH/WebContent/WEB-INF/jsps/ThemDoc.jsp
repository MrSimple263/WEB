<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Thêm tài liệu</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <br>
            <form method="post" action="DocumentAdd" enctype="multipart/form-data">
            	<label>File:</label>
            	<input type="file" class="form-control" name="file" >
            	 <label for="tile">Miêu tả</label>
            	<input type="text" name="des" class="form-control" id="tile"/>
            	<br/>
            	<br/>
            	<button type="submit" name="publish" class="btn btn-primary"> Upload</button>
            </form>
           
        </div>
    </div>
</div>
</body>
</html>