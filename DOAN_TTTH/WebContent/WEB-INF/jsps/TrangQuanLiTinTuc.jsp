<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="StyleQLTT.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Trang Quan Lí Tin Tức</title>
</head>
<body>
<div class="head">TRANG QUẢN LÍ TIN TỨC</div>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>STT</th>
            <th>Tiêu Đề</th>
            <th>Nội dung</th>
            <th>Ngày đăng</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Đón xuân rộn ràng - Ngập tràn niềm vui với khóa khai giảng đầu năm</td>
            <td><a href="#">link</a></td>
            <td>10/10/2017</td>
            <td ><a href="/TrangVietTin.jsp" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="/TrangVietTin.jsp" class="glyphicon glyphicon-plus"></a></td>
        </tr>
        <tr>
            <td>2</td>
            <td>Thư cảm ơn quý Thầy Cô nhân ngày 20/11</td>
            <td><a href="#">link</a></td>
            <td>10/10/2017</td>
            <td ><a href="TrangVietTin.jsp" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="TrangVietTin.jsp"class="glyphicon glyphicon-plus"></a></td>
        </tr>
        <tr>
            <td>3</td>
            <td>Trung Tâm Tin Học Tổng khai giảng các khóa học hè 2017 – 28/07/2017</td>
            <td><a href="#">link</a></td>
            <td>10/10/2017</td>
            <td ><a href="TrangVietTin.jsp" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="TrangVietTin.jsp"class="glyphicon glyphicon-plus"></a></td>
        </tr>
        </tbody>
    </table>
</div>
<div class="notification">
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn muốn xóa chứ</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="JSfile.js"></script>
</body>
</html>