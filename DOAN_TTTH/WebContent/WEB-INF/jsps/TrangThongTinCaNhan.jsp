<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Trang Ca nhân</title>
</head>
<style>
    .wrap-menu{
        position: fixed;
        height: 100%;
        background: #000;
    }
    a{
        color: white;
    }
    .canhan-menu{
        margin-top: 30px;
        background:transparent ;
        height: 50px;
        text-align: center;
        padding: 15px;
        color:#ffff
    }
    .form-group{
        margin-top: 20px;
    }
    .infor{
        display: none;
    }
    .class{
        display: none;
    }
    .panel{
        margin-top: 30px;
    }
    button{
        background: transparent;
        border: none;
    }
</style>
<body>
<div class="row">
        <div class="col-md-2">
            <div class="wrap-menu">
                <div>
                    <img src="image/user.jpg" alt="" style="border-radius: 50%" class="img-responsive">
                </div>
                <div class="canhan-menu">
                    <button id="userinfor">Quản Lí Thông Tin Cá Nhân</button>
                </div>
                <div class="canhan-menu">
                    <button id="inclass">Các Lớp đang học</button>
                </div>

            </div>
        </div>
        <div class="col-md-8" id="infor">
            <div class="wrap-content">
                <form class="form-horizontal" action="">
                <div class="form-group">
                        <label class="control-label col-sm-2" for="fullname">Fullname:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="fullname" placeholder="Enter you name" 
                            name="fullname" value="${user.fullname}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pwd" 
                            placeholder="Enter password" name="pass" 
                            value="${user.pass}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Username:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" placeholder="Enter your username" 
                            name="username" value="${user.username}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="Name">Email:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="Name" placeholder="Enter your email" 
                            name="email" value="${user.email}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="SDT">SDT:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="SDT" placeholder="Enter your phone number" 
                            name="phone" value="${user.phone}">
                        </div>
                    </div>
        
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="AD">Address:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="AD" placeholder="Enter your address " 
                            name="address" value="${user.add}">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Cập nhật</button>
                        </div>
                    </div>
                </form>
            </div>
            </div>
        <div class="col-md-8 class" id="class" >
        <div class="wrap-content">
            <div class="panel panel-default">
                <div class="panel-body">Lập trình PHP</div>
                <div class="panel-footer">Lớp AB001</div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">Lập trình C#</div>
                <div class="panel-footer"><a href="trangxemvideo.html" style="color: black">Lớp BC002</a></div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/JSfile.js"></script>
</body>
</html>