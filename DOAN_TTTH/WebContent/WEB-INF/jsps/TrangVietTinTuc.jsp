<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang Viet Tin</title>
    <script src="ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <br>
            <label for="tile">TIÊU ĐỀ</label>
            <input type="text" name="Tile" class="form-control" id="tile"/>
            <br/>
            <label for="editor1">NÔI DUNG:</label>
            <textarea name="editor1" id="editor1" rows="10" cols="80">
                This is my textarea to be replaced with CKEditor.
            </textarea>
            <br/>
            <button type="submit" name="publish" class="btn btn-primary"> Publish</button>
        </div>

    </div>
</div>
<script>
    CKEDITOR.replace( 'editor1' );
    CKEDITOR.config.height=500;
</script>
</body>
</html>