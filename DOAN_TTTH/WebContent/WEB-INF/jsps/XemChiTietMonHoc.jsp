<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styleMonHoc.css">
    <link rel="stylesheet" href="css/magic.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Title</title>
</head>
<body>
<nav class=" navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Trangchu"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="nav navbar-nav">
                <li><a href="TrangXemMonHoc">Chương trình dào tạo</a></li>
                <li><a href="XemTinTuc">Tin tức</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="login.html"><span class="glyphicon glyphicon-log-in" id="bnt-login"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
	${infor}
</div>
<div class="footer">
    <div class="jumbotron">
        
            <div class="row">
            <div class="col-md-1">
            </div>
                <div class="col-md-3">
                    <h3>Trụ sở chính</h3>
                    <div>---------------------------------------</div>
                    <span class="glyphicon glyphicon-map-marker"></span>
                    227 Nguyễn Văn Cừ, Quận 5, Tp HCM
                    <span class="glyphicon glyphicon-phone"></span>
                    (028)38.351.056
                </div>
                <div class="col-md-3">
                    <h3>Cơ sở 2</h3>
                    <div>---------------------------------------</div>
                    <span class="glyphicon glyphicon-map-marker"></span>
                    137E Nguyễn Chí Thanh, P9, Q.5, Tp HCM
                    <span class="glyphicon glyphicon-phone"></span>
                    (028)38.351.056
                </div>
                <div class="col-md-3">
                    <h3>Cơ sở 3</h3>
                    <div>---------------------------------------</div>
                    <span class="glyphicon glyphicon-map-marker"></span>
                    Nhà Điều Hành ĐH KHTN - Linh Trung, Thủ Đức
                    <span class="glyphicon glyphicon-phone"></span>
                    (028)38.351.056
                </div>
            </div>
        </div>
        <div class="row">
            <div class=" col-md-10 col-ms-10 col-md-offset-1">
                Copyright © Trung Tâm Tin Học
            </div>
        </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/JSfile.js"></script>
</body>
</html>