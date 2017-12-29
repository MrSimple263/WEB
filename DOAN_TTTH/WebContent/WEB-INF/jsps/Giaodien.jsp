<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"></script>
  <link rel="stylesheet" href="Giaodien.css"/>
  <script type="text/javascript" src="Giaodien.js"></script>
</head>
<script>
$(document).ready(function() {
	   

    $("#formlogin").validate({
        rules: {
            taikhoan: "required",
            matkhau: "required", 
            taikhoan: {
                required: true,
                minlength: 5
            },
            matkhau: {
                required: true,
                minlength: 8
            },

        },
        messages: {
            taikhoan: "Vui lòng nhập tài khoản",
            matkhau: "Vui lòng nhập mật khẩu",
            taikhoan: {
                required: "Vui lòng nhập tài khoản",
                minlength: "Nên nhập từ 5-20 kí tự"
            },
            matkhau: {
                required: "Vui lòng nhập mật khẩu",
                minlength: "Ít Nhất 8 kí tự "
            },
        }
    });
    $( "button" ).click(function() {
        if($("#formlogin").valid()==true)
     alert( "Đăng nhập thành công !!!!"  );
   });
});
</script>
<style>
	.main-nav{
    background-color:none;
}
.navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Tahoma, Geneva, sans-serif;
}
/*==Style cho menu===*/
#menu a:hover {
    background: #F1F1F1;
    color: #333;
  }
#menu{
    background-color:dodgerblue;
}
#text{
    color: #FFF;
}
#top{
    margin-top: 0px;
}
.glyphicon{
    opacity: 1;
}
.tieu-de-ngay-khai-giang{
    font-size: 12px;
}
/*chương trình đào tạo*/
.tieu-de-muc {
    color: #FD6504;
    font-size: 38px;
    font-family: Tahoma, Geneva, sans-serif;
    margin: 30px 0px 14px 0px;
}
.khung .canh-noi-dung {
    padding: 0px;
}
.khung {
    position: relative;
    background-image: url(images/daotao.jpg);
    margin: auto;
    padding: 30px 0px;
    width: 100%;
    height: 100%;
    text-align: center;
    background-size: cover;
    background-position: bottom center;
}
.khung .nganh {
    display: block;
    padding-top: 100%;
    opacity: 0.9;
}
.khung .title {
    position: absolute;
    left: 0%;
    top: 20%;
    text-align: center;
    width: 100%;
    font-family: Helvetica, Arial, sans-serif;
    color: #FFF;
    font-size: 20px;
    padding: 3px;
    line-height: 24px;
}
.khung .bieu-tuong {
    width: 60px;
    margin-top: 10px;
}
img {
    border: 0 none;
    max-width: 100%;
}
img {
    vertical-align: middle;
}
.container {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;

}
a {
    color: #337ab7;
    text-decoration: none;
}
a {
    background-color: transparent;
}
/*tien ich*/
.canh-le,h4{
    text-align: left;
    color: rgb(146, 115, 96);
}
.canh-le h4:hover{
    color:red;
}
.canh-le a{
    text-decoration: none;
}
.responsive{
        display: block;
        max-width: 100%;
        height: auto;
}
/*tin tuc*/
h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
}
h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
}
.row{
    margin-left: 100px;
    margin-top: 100px;
    margin-right: 50px;
    float: left;
}
/*liên hệ*/
.bg-grey {
    background-color: #f6f6f6;
}
/*footer*/
.footer {
    background-color: #0077B8;
    width:100%;
    
}
/* đăng nhập*/
/*
*   LOG-IN BOX
*/
div.overlay {
    background-color: rgba(0,0,0,.25);
    bottom: 0;
    display: flex;
    justify-content: center;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;
}
 
    div.overlay > div.login-wrapper {
        align-self: center;
        background-color: rgba(0,0,0,.25);
        border-radius: 2px;
        padding: 6px;
        width: 450px;
    }
     
        div.overlay > div.login-wrapper > div.login-content {
            background-color: rgb(255,255,255);
            border-radius: 2px;
            padding: 24px;  
            position: relative;
        }
         
            div.overlay > div.login-wrapper > div.login-content > h3 {
                color: rgb(0,0,0);
                font-family: 'Varela Round', sans-serif;
                font-size: 1.8em;
                margin: 0 0 1.25em;
                padding: 0;
            }
/*
*   FORM
*/
form label {
    color: rgb(0,0,0);
    display: block;
    font-family: 'Varela Round', sans-serif;
    font-size: 1.25em;
    margin: .75em 0;    
}
 
    form input[type="text"],
    form input[type="email"],
    form input[type="number"],
    form input[type="search"],
    form input[type="password"],
    form textarea {
        background-color: rgb(255,255,255);
        border: 1px solid rgb( 186, 186, 186 );
        border-radius: 1px;
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.08);
        display: block;
        font-size: .65em;
        margin: 6px 0 12px 0;
        padding: .8em .55em;    
        text-shadow: 0 1px 1px rgba(255, 255, 255, 1);
        transition: all 400ms ease;
        width: 90%;
    }
     
    form input[type="text"]:focus,
    form input[type="email"]:focus,
    form input[type="number"]:focus,
    form input[type="search"]:focus,
    form input[type="password"]:focus,
    form textarea:focus,
    form select:focus { 
        border-color: #4195fc;
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px #4195fc;
    }
     
        form input[type="text"]:invalid:focus,
        form input[type="email"]:invalid:focus,
        form input[type="number"]:invalid:focus,
        form input[type="search"]:invalid:focus,
        form input[type="password"]:invalid:focus,
        form textarea:invalid:focus,
        form select:invalid:focus { 
            border-color: rgb(248,66,66);
            box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1), 0 0 8px rgb(248,66,66);
        }
     
form button {
    background-color: #50c1e9;
    border: 1px solid rgba(0,0,0,.1);
    color: rgb(255,255,255);
    font-family: 'Varela Round', sans-serif;
    font-size: .85em;
    padding: .55em .9em;
    transition: all 400ms ease; 
}
 
    form button:hover {
        background-color: #1bc5b3;
        cursor: pointer;
    }
/*login*/
.error{
    color: red;
    
}
</style>
<body>
  <header>
    <div class="main-header">
        <div class="container">
          <div class="row">
            <div class="col-sm-4 search-w"><!-- form search-->
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-search" ></i></button>
                    </span>
                </div>
            </div>
            <div class="col-sm-4"><!--logo-->
                <div class="logo text-center">
                    <a href="#"><img src="images\logo.png" alt="Logo" style="width:20%"/></a>
                </div>
            </div>
            <div class="col-sm-4"><!--nut-->
                <div class="pull-right">
                    <div class="bg-anh"><a href="#"><img src="images/ttth.png" /></a></div>   
                        </div>
                    </div>
                </div>
            </div> 
          </div>
        </div>
    </div><!-- end. header-content-->
   <nav id="menu"  class="navbar navbar-default " style="color:#E65527">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">HCMUTE</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" >
      <ul class="nav navbar-nav" >
                <li><a href="TrangXemMonHoc" id="text">Chương trình đào tạo</a></li>
                <li><a href="TrangTinTuc.jsp" id="text">Tin tức</a></li>
                <li><a href="#" id="text">Liên hệ</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Dangki.jsp"id="text"><span class="glyphicon glyphicon-user" id="text"></span> Sign Up</a></li>
        <li><a href="#" class="overlayLink" data-action="login-form.html" style="color:#FFF">   
             <span  class="glyphicon glyphicon-log-in"  data-toggle="modal" data-target="#myModal">Login</span>
               <!-- Modal -->
               <div class="modal fade" id="myModal" role="dialog">
                 <div class="modal-dialog" style="margin-top:300px;" >
                 
                   <!-- Modal content-->
                   <div class="modal-content">
                     <div class="modal-header" style="background-color:#eb26f1">
                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                       <h4 class="modal-title" >Đăng nhập</h4>
                     </div>
                     <div class="modal-body" style="background-color:#0ae0f0">
                       <form id="formlogin" action="Login" method="post" >
                           <div class="user" >
                                <label style="display:inline; font-size:20px;"><span style="display:block">Tài khoản</span></label>
                                <input class ="form-control"  type="text" placeholder="Nhập tài khoản" name="taikhoan" required>
                           </div>
                           <div class="psw" >
                                <label style="display:inline; font-size:20px;"><span style="display:block">Mật khẩu </span></label>
                                <input class ="form-control"  type="password" placeholder="Nhập mật khẩu" name="matkhau" required>
                           </div>
                           <div class="submit">
                                <button type="submit" class="login" style="background-color:#E65527" >Đăng nhập </button>
                           </div>
                       </form>
                     </div>
                   </div>
                   
                 </div>
               </div>
           <li><a href="TrangQuanLi.jsp"id="text"><span class="glyphicon glyphicon-pencil"></span> Admin</a></li>            
        </ul>
    </div>
  </div>
</nav><!-- end.menu-navbar-->
  </header>
  <!--slider-->
  <section class="slider" >
      <div class="container">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                   <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                   <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                   <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                   <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                   <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox" >
                   <div class="item active">
                    <img src="images/banner1.png" alt="slider 1">
                    <div class="carousel-caption">
                         <h4>Demo</h4>
                    </div>
                </div>
                <div class="item">
                    <img src="images/banner2.png" alt="slider 2">
                </div>
                <div class="item">
                    <img src="images/banner3.png" alt="slider 3">
                </div>
                <div class="item">
                        <img src="images/banner4.png" alt="slider 4">
                </div>
                <div class="item">
                        <img src="images/banner5.png" alt="slider 5">
                </div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
        </div>
    </div>
    <div class="call-to-action">
            <marquee><!-- chạy chữ -->
                <h3><b style="color:#3c7cdb">Cảm ơn các bạn đã tin tưởng và đồng hành cùng chúng tôi!!!</b></h3>
            </marquee>
    </div><!--.call-to-action-->
    </section><!--end.slider-->
    <!--Chương trinh dao tao-->
    <div id="chuong-trinh-dao-tao" class="container" style="text-align:center">
        <h1 class="tieu-de-muc">Chương trình đào tạo</h1>
        <img src="images/ngoisao_cam.png" width="250px">
    </div>
    <section class="khung">
        <div class="container">
            <div class="col-xs-4 col-sm-2 col-sm-offset-1 canh-noi-dung">
                <a href="XemInforMonHoc?id=${id[0]}">
                    <span class="nganh" style="background-color:#706D3C">
                        <span class="title"> 
                            ${subject[0]}
                            <br />
                            <img src="images/do_hoa_da_truyen_thong.png" class="bieu-tuong">
                        </span>
                    </span>
                </a>
            </div>
            <div class="col-xs-4 col-sm-2  canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[1]}">
                        <span class="nganh" style="background-color:#E65527">
                            <span class="title">
                                 ${subject[1]}
                                <br />
                                <img src="images/thiet_ke_website.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2 canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[2]}">
                        <span class="nganh" style="background-color:#37A5B3">
                            <span class="title">
                                 ${subject[2]}
                                <br />
                                <img src="images/Lap_trinh_va_CSDL.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2  canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[3]}">
                        <span class="nganh" style="background-color:#363948">
                            <span class="title">
                                ${subject[3]}
                                <br />
                                <img src="images/lap_trinh_di_dong.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-xs-offset4 col-sm-2 col-sm-offset-0 canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[4]}">
                        <span class="nganh" style="background-color:#716384">
                            <span class="title">
                                 ${subject[4]}
                                <br />
                                <img src="images/Kiem_thu_phan_mem.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2 col-sm-offset-1 canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[5]}">
                        <span class="nganh" style="background-color:#f0b906">
                            <span class="title">
                                ${subject[5]}
                                <br />
                                <img src="images/Mang_may_tinh.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2 col-sm-offset-4 col-sm-2 col-sm-offset-0 canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[6]}">
                        <span class="nganh" style="background-color:#66e986">
                            <span class="title">
                                 ${subject[6]}
                                <br />
                                <img src="images/Internet_Marketing.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2 canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[7]}">
                        <span class="nganh" style="background-color:#3c7cdb">
                            <span class="title">
                            ${subject[7]}
                                <br />
                                <img src="images/logo-prokids.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2  canh-noi-dung">
                    <a href="XemInforMonHoc?id=${id[8]}">
                        <span class="nganh" style="background-color:#0b6879">
                            <span class="title">
                             ${subject[8]}
                                <br />
                                <img src="images/Tin_hoc_van_phong.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
            <div class="col-xs-4 col-sm-2  canh-noi-dung">
                    <a href="#">
                        <span class="nganh" style="background-color:#eb26f1">
                            <span class="title">
                            Tin học văn phòng chuẩn quốc tế(MOS)
                                <br />
                                <img src="images/Chung_chi_MOS.png" class="bieu-tuong">
                            </span>
                        </span>
                    </a>
            </div>
        </div>
    </section><!--end Chuong trinh daotao-->
    <!--tien ich-->
    <div id="tin-tuc" class="container" style="text-align:center">
            <h1 class="tieu-de-muc">Tin tức sự kiện</h1>
            <img src="images/ngoisao_cam.png" width="250px">
    </div>
    <section class="tin-tuc">
        <div class="bao-cao" class="container-fluid">
            <div class="row">
                <div class="col-md-9">
                <div class="col-sm-8">
                    <h2>Báo cáo thường niên</h2>
                    <h4> Một Báo cáo thường niên có thể là một tập sách phong cách mang đâm dấu ấn của doanh nghiệp,
                        một bảng tin trên website hoặc thậm chí là một ứng dụng di động, có thể được thể hiện dưới dạng in ấn hoặc định dạng kỹ thuật số. <br>
                        Hãy thuyết phục Sếp của bạn rằng việc lượt bớt văn bản
                         không có nghĩa là diễn đạt thiếu các thông tin trong Báo cáo thường niên, bạn chỉ phân tích và diễn đạt các con số ở một góc nhìn trực quan hơn và dễ hiểu hơn mà thôi.</h4>
                </div>
                <div class="col-sm-4">
                    <a href="#">
                        <img src="images/bao-cao.png" >
                    </a>
                </div>
            </div>
            <div class="col-md-3">
                sdfdsfsfd
            </div>
            </div>
            <div class="row">
                    <div class="col-sm-4">
                        <a href="#">
                            <img src="images/viec-lam.png" >
                        </a>
                    </div>
                    <div class="col-sm-8">
                        <h2>Tuyển dụng Nhân viên chuyên môn</h2>
                        <h4>Trung Tâm Tin Học còn là đơn vị uy tín chuyên cung cấp các dịch vụ:
                             Đào tạo theo yêu cầu, Hợp tác đào tạo, Dịch vụ trực tuyến, Dịch vụ phần mềm,
                              Dịch vụ tư vấn giải pháp CNTT và các dịch vụ Chuyển giao công nghệ cho các đối tác trong và ngoài nước
                        </h4>
                        <b>Số lượng : 02</b>
                        <p> <b>Mô tả công việc:</b><br>- Tham gia vào các dự án công nghệ thông tin thực tế của Trung Tâm <br>
                            - Nghiên cứu,giảng dạy và thực hiện các công việc khác theo sự phân công, 
                            điều động của phụ trách bộ phận, ban giám đốc.
                        </p>
                    </div>
            </div>
            <div class="row">
                    <div class="col-sm-8">
                            <h2>Ưu đãi 20%++ học phí khi đăng kí </h2>
                            <h4>Mức ưu đãi KHỦNG nhất từ đầu năm đến nay với giá trị đến
                                hơn 20%++ <b>vào 1 ngày DUY NHẤT 13/10/2017</b>.Bạn không cần phải "cực khổ" xếp cả
                                    hàng dài chờ đợi hay chen chúc để có được mức giá tốt nhất.
                                
                                <br>
                                <p>Bạn có thể <a href="#">đăng kí Online</a> hoặc đăng kí trực tiếp tại Trung Tâm.</p>
                            </h4>
                    </div>
                    <div class="col-sm-4">
                        <a href="#">
                            <img src="images/friday-13.jfif" >
                        </a>
                    </div>
            </div>
            <div class="row">
                    <div class="col-sm-4">
                        <a href="#">
                            <img src="images/sense.png" >
                        </a>
                    </div>
                    <div class="col-sm-8">
                        <h2>Hội thảo Sense</h2>
                        <h4><b>Chia sẻ từ trải nghiệm thực tế </b><br>
                            - Đó là những gì bạn có thể "mắt thấy - tai nghe – tay chạm" <br>
                            khi tham gia buổi workshop "pfSense Load Balancing Giải pháp cân bằng tải hiệu quả". Bạn sẽ được trải nghiệm việc cấu hình,
                            giám sát hệ thống cùng những chia sẻ thực tế trong quá trình triển khai tại các đơn vị, doanh nghiệp. <br>
                            - Chúng tôi hy vọng những kiến thức hữu ích từ buổi workshop sẽ mang lại cho bạn nhiều điều bổ ích và đây cũng là món quà mà Trung Tâm Tin Học dành tặng đến tất cả các bạn học viên đam mê CNTT. 
                            Để công tác chuẩn bị được chu đáo, các bạn vui lòng đăng ký <a href="#">tại đây</a>.</h4>
                    </div>
            </div>
        </div>
    </section><!--end.tin tức-->
    <!--liên hệ-->
    <div id="tin-tuc" class="container" style="text-align:center">
            <h1 class="tieu-de-muc">Liên hệ</h1>
            <img src="images/ngoisao_cam.png" width="250px">
    </div>
    <div id="contact" class="container-fluid bg-grey">
            <div class="row">
              <div class="col-sm-5">
                <p>Mọi thắc mắc xin liên hệ với chúng tôi.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span> Thủ Đức, TP.HCM</p>
                <p><span class="glyphicon glyphicon-phone"></span> +84 1515151515</p>
                <p><span class="glyphicon glyphicon-envelope"></span> myeverything@gmail.com</p>
              </div>
              <div class="col-sm-7 slideanim" style="margin-top:-100px;">
                <div class="row">
                  <div class="col-sm-6 form-group">
                    <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                  </div>
                  <div class="col-sm-6 form-group">
                    <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                  </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                <div class="row">
                  <div class="col-sm-12 form-group">
                    <button class="btn btn-default pull-right" type="submit" style="margin-top:-100px">Send</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
</body>
<div class="footer">
    <div class="container" style="min-height:30px">
        <div class="col-sm-9">
                <img src="images/facebook.png" style="margin-top:10px;border-radius:10px;">
        </div>
        <div style="color:#FFF; font-style:italic;font-size:14px;padding:10px 0 15px; margin-left:100px">
            Copyright@2017 Trung tâm tin học HCMUTE
        </div>
    </div>
</div>
</html>
