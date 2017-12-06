<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="StyleQLTT.css">
    <title>Trang Quan Li Mon Hoc</title>
</head>
<body>

</body>
</html><div class="head">TRANG QUẢN LÍ CAC NHÓM MÔN HOC</div>
<div class="container">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>STT</th>
            <th>Mã Nhóm Môn</th>
            <th>Tên Nhóm Môn</th>
            <th>Cac Môn</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>A-1625</td>
            <td><a href="#">Lâp Trinh .NET</a></td>
            <td>
                <div>A01</div>
                <div>A02</div>
                <div>A03</div>
            </td>
            <td ><a href="#" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="#"class="glyphicon glyphicon-plus"></a></td>
        </tr>
        <tr>
            <td>2</td>
            <td>B-1625</td>
            <td><a href="#">Lâp Trinh JAVA</a></td>
            <td>
                <div>B01</div>
                <div>B02</div>
            </td>
            <td ><a href="#" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="#"class="glyphicon glyphicon-plus"></a></td>
        </tr>
        <tr>
            <td>3</td>
            <td>C-1625</td>
            <td><a href="#">Lâp Trinh PHP</a></td>
            <td>
                <div>C01</div>
            </td>
            <td ><a href="#" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="#"class="glyphicon glyphicon-plus"></a></td>
        </tr>
        <tr>
            <td>4</td>
            <td>D-1625</td>
            <td><a href="#">Lâp Trinh Mobile</a></td>
            <td>
                <div>D01</div>
                <div>D02</div>
            </td>
            <td ><a href="#" class="glyphicon glyphicon-pencil"></a></td>
            <td ><a href="#" class="glyphicon glyphicon-remove" ></a></td>
            <td ><a href="#"class="glyphicon glyphicon-plus"></a></td>
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
<div class="add">
    <div id="myAdd" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <span>From Add</span>
                </div>
                <div class="modal-body">
                    <label>Mã Nhóm Môn Học</label>
                    <input type="text" class="form-control" name="manhommonhoc"/>
                    <label>Tên Nhóm Môn Học</label>
                    <input type="text" class="form-control" name="tennhommonhoc" />
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