<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Lich khai giảng</a></li>
                <li><a href="#">Chương trình dào tạo</a></li>
                <li><a href="#">Dịch vụ</a></li>
                <li><a href="#">Tin tức</a></li>
                <li><a href="#">Hướng dẫn thanh toán </a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
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
                <img src="http://csc.edu.vn/data/images/slider/lap-trinh/slide-tkg-ltdd-k235.png" alt="Los Angeles">
            </div>
            <div class="item">
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
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="http://csc.edu.vn/data/images/tin-tuc/tin-hoc-van-phong/tin%20tuc%20hoat%20dong/Donxuan1702_280x210.png"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7 tile">
                            <tile><h3><a href="http://csc.edu.vn/tin-tuc/tin-tuc-trung-tam-tin-hoc/thong-bao-nghi-le-quoc-khanh-2-9-910">Đón xuân rộn ràng - Ngập tràn niềm vui với khóa khai giảng đầu năm</a>
                            </h3>
                            </tile>
                            <span>Trong dịp Xuân Đinh Dậu 2017, khi đăng ký khóa học khai giảng 17/02/2016
                    bạn sẽ có cơ hội nhận được những quà tặng hấp dẫn.
                </span>
                            <a href="#" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="http://csc.edu.vn/data/images/tin-tuc/lap-trinh-csdl/tin-tuc-hoat-dong-lap-trinh/trung-tam-tin-hoc-tong-khai-giang-khoa-he-1.png"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7">
                            <tile><h3><a href="#">Trung Tâm Tin Học Tổng khai giảng các khóa học hè 2017 –
                                28/07/2017</a></h3>
                            </tile>
                            <span>
                    Ngày 28/07/2017, Trung Tâm Tin Học Tổng khai giảng các khóa học Lập
                    trình viên, Kỹ thuật viên và các lớp chuyên đề với lịch học Sáng – chiều – tối và cuối tuần.
                </span>
                            <a href="#" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="http://csc.edu.vn/data/images/tin-tuc/tin-tuc-chung-trung-tam/Ki-niem-30-nam/t3h-noi-day-toi-biet-the-nao-la-code-thumbnail-small.jpg"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7">
                            <tile><h3><a href="#">Thư cảm ơn quý Thầy Cô nhân ngày 20/11</a></h3></tile>
                            <span>
		            "Tôn sư, trọng đạo" từ xa xưa đã là đạo lý, là nét đẹp văn hóa của người Việt chúng ta.
                    Trong không khí chào mừng ngày truyền thống Nhà giáo Việt Nam 20-11,
                </span>
                            <a href="#" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="http://csc.edu.vn/data/images/tin-tuc/do-hoa/hoc-thu-hoi-thao/hoc-thu-13-2-2017/Hocthu_13_2_2017_avatar_01.png"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7">
                            <tile><h3><a href="#"> 30 suất học Thiết kế Đồ họa miễn phí </a></h3></tile>
                            <span>
                    Thiết kế Đồ họa không còn quá xa lạ, thậm chí hiện hữu rất nhiều ở xung
                    quanh chúng ta hàng ngày. Vấn đề ở đây là chúng ta vẫn chưa hình dung được hết cái hay,
                    cái đẹp của Đồ họa cũng như lợi ích mà nghề Thiết kế đem lại
                </span>
                            <a href="#" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
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
            <div class="top-news">
                <div class="wrap-topnews">
                    <div class="content">
                        <div class="header">Top News</div>
                        <div class="content-link">
                            <ul>
                                <li><a href="#">Tin mot</a></li>
                                <li><a href="#">tin hai</a></li>
                                <li><a href="">tin ba</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="btn-chuyentrang">
    <div class="bnt-group">
        <button type="button" class="btn-primary"> Trang đầu</button>
        <button type="button"> <<</button>
        <button type="button" class="btn-number"> 1</button>
        <button type="button" class="btn-number"> 2</button>
        <button type="button" class="btn-number"> 3</button>
        <button type="button"> ...</button>
        <button type="button" id="btn-next"> >></button>
        <button type="button" class="btn-primary"> Trang cuối</button>
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