<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div>
                <label for="">LỚP</label>
                <select>
                    <option>AB01</option>
                    <option>BB02</option>
                    <option>DD02</option>
                </select>
            </div>
            <label for="tile">Tên Video</label>
            <input type="text" name="Tile" class="form-control" id="tile"/>
            <br/>
            <input type="file" name="choosen ">
            <label for="editor1">CHÚ THICH:</label>
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