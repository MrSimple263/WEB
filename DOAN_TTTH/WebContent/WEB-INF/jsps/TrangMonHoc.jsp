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
                <li><a href="TinTuc">Tin tức</a></li>
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
	<c:forEach items="${groups}" var="gr">
	<div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-heading"><h2>${gr.name}</h2></div>
                <div class="panel-body">
                    <div class="container">
                        <div class="row">
                        	<c:forEach items="${gr.subjects}" var="sb">
                        		<div class="col-md-3 col-xs-4 magictime ">
                                <div class="panel panel-child">
                                    <div class="panel-body">
                                    <a href="XemInforMonHoc?id=${sb.idsubject}">
                                    	<img src="imgsubject/${sb.img}" alt="image not found" class="img-responsive">
                                    </a>
                                    </div>
                                    <div class="panel-footer" style="text-align: center">${sb.name}</div>
                                </div>
                            </div>
                        	</c:forEach>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
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