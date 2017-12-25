<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/StyleQLTT.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <title>Trang Quan Li Lop Hoc</title>
</head>
<body>
<div class="head">TRANG QUẢN LÍ CAC LOP HOC</div>
<div class="wrap-table">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover" id="table">
                    <thead>
                    <tr>
                        <th>Mã Lơp</th>
                        <th>Tên Lop</th>
                        <th>Giang Viên</th>
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
                        <td ><a href="ClassAdd"><span class="glyphicon glyphicon-plus"></span></a></td>
                    </tr>
                    <c:forEach items="${lop}" var="l">
                    	<tr>
                        <td>${l.idclass}</td>
                        <td>${l.name}</td>
                        <td>${l.namete}</td>
                        <td ><a href="ClassEdit?idclass=${l.idclass}&idsub=${l.idsubject}&idteacher=${l.idteacher}">
                        <span class="glyphicon glyphicon-pencil"></span></a></td>
                        <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
                        <td ><a href="ClassAdd"><span class="glyphicon glyphicon-plus"></span></a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>
<div class="notification">
    <div id="myDell" class="modal fade" role="dialog">
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
<script src="js/class_js.js"></script>
</body>
</html>