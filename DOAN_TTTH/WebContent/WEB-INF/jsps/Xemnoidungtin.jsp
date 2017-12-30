<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" >
    <title>Trang Tin Tuc</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/magic.min.css">

</head>
<body>
<div class="Header">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="http://lichdaotao.net/Static/Upload/Cover/14_11_2013_08_10_24_LOGO-T3H.jpg" alt="imgnotfound"
                     id="img-logo">
            </div>
            <div class="col-md-offset-6 col-md-3">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="tin-tuc">
            	${news}
            </div>
        </div>
        <div class="col-md-offset-1 col-md-3 hidden-sm hidden-xs ">
            <div id="fb-root">
                <script>(function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10';
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>
                <div class="fb-page" data-href="https://www.facebook.com/Trungtamtinhockhtn/"
                     data-tabs="timeline"
                     data-small-header="false"
                     data-adapt-container-width="true"
                     data-hide-cover="false"
                     data-show-facepile="true"
                     data-width="300"
                     data-height="400">
                    <blockquote cite="https://www.facebook.com/Trungtamtinhockhtn/" class="fb-xfbml-parse-ignore">
                        <a href="https://www.facebook.com/Trungtamtinhockhtn/">Trung Tâm Tin Học - ĐH Khoa Học Tự Nhiên
                            TPHCM</a>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
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
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>