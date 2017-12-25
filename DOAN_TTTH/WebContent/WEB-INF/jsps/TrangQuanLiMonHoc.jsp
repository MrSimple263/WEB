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
    <title>Trang Quản Lí Môn Học</title>
</head>
<body>
<div class="head">TRANG QUẢN LÍ CÁC MÔN HỌC</div>
<div class="wrap-table">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover" id="table">
                    <thead>
                    <tr>
                        <th>Mã Môn</th>
                        <th>Tên Môn</th>
                        <th>Nhóm Môn</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td ></td>
                        <td ></td>
                        <td ><a href="SubjectAdd"><span class="glyphicon glyphicon-plus"></span> </a></td>
                    </tr>
                 <c:forEach items="${subject}" var="sb">
                 	<tr>
                        <td>${sb.idsubject}</td>
                        <td>${sb.name}</td>
                        <td>${sb.namegroup}</td>
                        <td > <a href="SubjectEdit?id=${sb.idsubject}"><span class="glyphicon glyphicon-pencil"></span></a></td>
                        <td ><a  class="glyphicon glyphicon-remove" ></a></td>
                       <td ><a href="SubjectAdd"><span class="glyphicon glyphicon-plus"></span> </a></td>
                    </tr>
                 </c:forEach> 
                   </tbody>
                </table>
            </div>
        </div>

    </div>
 </div>

<div class="notification">
    <div id="myDel" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn muốn xóa chứ</p>
                </div>
                <form method="post" class="frm-del">
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary frm-del" >Yes</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/subject_jsfile.js"></script>
</body>
</html>