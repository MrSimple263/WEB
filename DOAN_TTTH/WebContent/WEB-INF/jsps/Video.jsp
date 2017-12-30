<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/StyleQLTT.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <title>Trang Quan Li Video</title>
</head>
<body>
<div class="head">TRANG QUẢN LÍ VIDEOS</div>
<div class="container">
    <table class="table table-hover" id="table">
        <thead>
        <tr>
            <th>Mã Video</th>
            <th>Tên Video</th>
            <th>Link</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td></td>
            <td></td>
            <td ></td>
            <td ></td>
            <td ></td>
            <td ><a href="VideoAdd?idclass=${idclass}"><span class="glyphicon glyphicon-plus"></span></a></td>
        </tr>
	<c:forEach items="${video}" var="d">
		<tr>
            <td>${d.id}</td>
            <td>${d.name}</td>
            <td><a href="${d.link}">Link</a></td>
            <td ><a href="VideoEdit?id=${d.id}&idclass=${idclass}"><span class="glyphicon glyphicon-pencil"></span></a></td>
            <td ><a class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="VideoAdd?idclass=${idclass}"><span class="glyphicon glyphicon-plus"></span></a></td>
       </tr>
	</c:forEach>
        </tbody>
    </table>
    <div id="idclass" style="display:none;">${idclass}</div>
</div>
<div class="delete">
    <div id="myDel" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn muốn xóa chứ</p>
                </div>
                <div class="modal-footer">
                <form method="post" class="frm-del">
                	<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary" >Yes</button>
                </form>
                    
                </div>
            </div>

        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/video_jsfile.js"></script>
</body>
</html>