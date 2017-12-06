<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>TranQuanLi</title>
</head>
<style>
    a{
        z-index: 2;
        color: white;
        font-family: "Adobe Heiti Std R";
        font-size: 30px;
        ;
    }
    button{
        margin-top: 30px;
        height: 100px;
        font-size: 30px;
    }
    form{
        margin-top: 20px;
    }
    .form-control{
        height: 50px !important;
    }
</style>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-offset-3 col-md-6">
            <form action="" class="form-horizontal">
                <button class="form-control btn-primary"><a href="QuanLiCacUser.jsp"> Quản Lí Nhân Sự</a></button>
                <button class="form-control btn-success"><a href="TrangQuanLiTinTuc.jsp">Quan Lí Tin Tức</a></button>
                <button class="form-control btn-primary"><a href="TrangQuanLiNhomMonHoc.jsp">Quản Lí Nhóm môn học</a></button>
                <button class="form-control btn-success"><a href="TrangQuanLiMonHoc.jsp">Quan Lí Môn học</a></button>
                <button class="form-control btn-success"><a href="TrangQuanLiClass.jsp">Quan Lí Lớp Học</a></button>
            </form>
        </div>
    </div>
</div>

</body>
</html>