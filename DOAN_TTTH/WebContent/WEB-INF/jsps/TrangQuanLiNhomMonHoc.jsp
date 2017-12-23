<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/StyleQLTT.css">
    <title>Trang Quan Li Nhom Mon Hoc</title>
</head>
<body>
<div class="head">TRANG QUẢN LÍ CÁC NHÓM MÔN HỌC</div>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Mã Nhóm Môn</th>
            <th>Tên Nhóm Môn</th>
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
            <td ><a href="#"class="glyphicon glyphicon-plus"></a></td>
        </tr>
	<c:forEach items="${group}" var="group">
		<tr>
            <td>${group.idsubject}</td>
            <td><a href="#">${group.name}</a></td>
            <td ><a href="#" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="#"class="glyphicon glyphicon-plus"></a></td>
       </tr>
	</c:forEach>
       
        </tbody>
    </table>
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
<div class="add">
    <div id="myAdd" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <span>From Add</span>
                </div>
                <form action="GroupsubjectAdd" method="post"
                enctype="multipart/form-data">
                <div class="modal-body form-group">
                    <label>Tên Nhóm Môn Học</label>
                    <input type="text" class="form-control" name="namegroup" />
                    <label>Chọn Ảnh</label>
                    <input type="file" class="form-control" name="file" accept="image/*" >
                </div>
                <div class="modal-footer form-group">
                    <button type="submit" class="btn btn-primary">Yes</button>
                </div>
                </form>
            </div>
				
        </div>
    </div>
</div> 
<div class="edit">
    <div id="myEdit" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <span>From Add</span>
                </div>
                <form action="GroupsubjectEdit" method="post"
                enctype="multipart/form-data">
                <div class="modal-body form-group">
                	<input type="hidden" class="form-control" name="id" />
                    <label>Tên Nhóm Môn Học</label>
                    <input type="text" class="form-control frmname" name="namegroup" />
                    <div>Ảnh:</div>
                    <div ><img alt="not" class="frmimg" style="width: 75px;height: 75px"></div>
                    <label>Chọn Ảnh</label>
                    <input type="file" class="form-control" name="file" accept="image/*" >
                </div>
                <div class="modal-footer form-group">
                    <button type="submit" class="btn btn-primary">Yes</button>
                </div>
                </form>
            </div>
				
        </div>
    </div>
</div> 
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/JSfile.js"></script>
</body>
</html>