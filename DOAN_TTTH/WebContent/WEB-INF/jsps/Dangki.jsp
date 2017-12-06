<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="Signin.css"/>
    <script type="text/javascript" src="Signin.js"></script>
</head>
<script>
$(document).ready(function() {
    
    $("#myform").validate({
        rules: {
            taikhoan: "required",
            matkhau: "required",
            nhapdiachimail:"email",
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
            nhaplaimatkhau: "Vui lòng nhập lại mật khẩu",
            firstname: "Vui lòng nhập họ và tên lót ",
            lastname: "Vui lòng nhập tên",
            nhapdiachimail: "Vui lòng nhập địa chỉ mail",
        }
    });
    $( "button" ).click(function() {
     if($("#myform").valid()==true)
  alert( "Đăng kí thành công !!!!"  );
});
});
</script>
<style>
	form {
    width: 100%;

}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: rgb(44, 148, 233);
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}
.login{
    display: block;
    border-radius: 15px;
}
button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    border-radius: 20px;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 10%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}


.error{
    color: red;
    
}
</style>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-2 col-xs-6">
                        <a href="#"><img class ="img-reponsive" src="images\logo.png" alt="Logo" style="width:70%; margin-top:20px"/></a>   
            </div>
            <div class="col-sm-10">
                <div class="bg-anh"><a href="#"><img src="images/ttth.png" style="width:80%; "/></a></div>
            </div>
        </div>
    </div>
    <form  id="myform" >
        <div class="container" style="background-color:plum;">
                <h2>Đăng kí <span class="glyphicon glyphicon-pencil"> </span></h2>    
        </div>
        <div class="container" style="background-color:aqua">
                <div class="imgcontainer">
                        <img src="images/avatar.png" alt="Avatar" class="avatar">
                      </div>  
          <div class="row">
                <div class="col-sm-3">
                    <label style="display:inline;font-size:20px;"><span style="display:block">Tài khoản</span></label>
                </div>
                <div class="col-sm-9">
                    <input class ="form-control" type="text" placeholder="Nhập tài khoản "  name="taikhoan" required>
                </div>   
                <div class="col-sm-3">
                    <label style="display:inline; font-size:20px;"><span style="display:block"> Mật khẩu</span></label>
                </div>
                <div class="col-sm-9">
                    <input class ="form-control" type="password" placeholder="Nhập mật khẩu" name="matkhau" required>
                </div>
                <div class="col-sm-3">
                        <label style="display:inline; font-size:20px;"><span style="display:block">Nhập lại mật khẩu</span></label>
                </div>
                <div class="col-sm-9">
                        <input class ="form-control" type="password" placeholder="Nhập lại mật khẩu" name="nhaplaimatkhau" required>
                </div>
                <div class="col-sm-3">
                        <label style="display:inline; font-size:20px;"><span style="display:block">Họ và Tên</span></label>
                </div>
                <div class="col-sm-9">
                    <div class="row">
                    <div class="col-sm-6">
                        <input  class ="form-control" type="text" placeholder="Họ và Tên lót" name="firstname" required>
                    </div>
                    <div class="col-sm-4">
                            <input class ="form-control"  type="text" placeholder="Tên" name="lastname" required>
                    </div>
                    <div class="col-sm-2">
                            <select name="gioitinh" style="padding:6px; margin-top:9px" required> 
                                    <option value="male">Nam</option> 
                                    <option value="female">Nữ</option>
                                    <option value="other">Khác</option> 
                            </select> 
                    </div>
                </div>
                        
                </div>
                <div class="col-sm-3">
                        <label style="display:inline; font-size:20px;"><span style="display:block">Địa chỉ Mail</span></label>
                </div>
                <div class="col-sm-9">
                        <input type="text" placeholder=" Nhập địa chỉ Mail " name="nhapdiachimail" required>
                </div>
                <div class="col-sm-3">
                        <label style="display:inline; font-size:20px;"><span style="display:block">Lớp</span></label>
                </div>
                <div class="col-sm-9">
                   <select  name="lop" class=""style="padding:6px">
                       <option value="classA" >Lớp A</option>
                       <option value="classB" >Lớp B</option>
                       <option value="classC" >Lớp C</option>
                       <option value="classD" >Lớp D</option>
                   </select>
                </div>
            </div>  
            <div class="row">
                <div class="col-sm-7"></div>
                <div class="col-sm-5">
                        <button type="submit" class="signin" >Đăng ký </button>
                </div>   
            </div> 
    </form>
      
</body>
</html>