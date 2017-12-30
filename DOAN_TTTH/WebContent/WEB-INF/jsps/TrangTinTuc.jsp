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
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html"><span class="glyphicon glyphicon-log-in" id="bnt-login"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="top-new">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="item active">
                <img src="http://csc.edu.vn/data/images/slider/lap-trinh/tong-khai-giang2-k235.png" alt="Chicago">
            </div>
            <div class="item">
                <img src="http://csc.edu.vn/data/images/trang-chu/banner-web1(1).png" alt="New York">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="tin-tuc">
            <c:forEach items="${listnews}" var="n">
            	<div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="imgnews/${n.img}"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7 tile">
                            <tile><h3><a href="Xemnoidungtin?id=${n.id}">${n.title}</a>
                            </h3>
                            </tile>
                            <span>${n.descri}</span>
                            <a href="Xemnoidungtin?id=${n.id}" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
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
<div class="btn-chuyentrang">
    <div class="bnt-group">
        <button type="button"> <<</button>
        <button type="button" id="btn-next"> >></button>
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
<script src="js/JSfile.js"></script>
</body>
</html>