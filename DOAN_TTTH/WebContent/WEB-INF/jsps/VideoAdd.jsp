<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Thêm Video</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <br>
            <form method="post" action="VideoAdd">
            	<label for="tile">Tên:</label>
            	<input type="text" name="name" class="form-control" />
            	<br/>
            	<label for="tile">MIÊU TẢ</label>
            	<input type="text" name="des" class="form-control" />
            	<br/>
            	<label for="tile">LINK</label>
            	<input type="text" name="link" class="form-control" />
            	<br/>
            	<input type="hidden" name="idclass" class="form-control" value='${param["idclass"]}'/>
            	<button type="submit" name="publish" class="btn btn-primary"> Publish</button>
            </form>
           
        </div>

    </div>
</div>
</body>
</html>