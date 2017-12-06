<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        background: #2b669a;
    }
    a{
        color: white;
    }
    .canhan-menu{
        margin-top: 30px;
        background: #419641;
        height: 50px;
        text-align: center;
        padding: 15px;
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
                    <button id="userinfor">Quan Lí Thông Tin Cá Nhân</button>
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
                        <label class="control-label col-sm-2" for="pwd">Password:</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="Name">Email:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="Name" placeholder="Enter your Name" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="SDT">SDT:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="SDT" placeholder="Enter your phone number" name="phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="NS">Birthday:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="NS" placeholder="Enter your birthday " name="brthday">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label><input type="checkbox" name="remember"> Remember me</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Submit</button>
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
<script src="jquery-3.2.1.min.js"></script>
<script src="JSfile.js"></script>
</body>
</html>