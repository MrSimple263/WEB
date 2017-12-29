<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
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
    }
    .glyphicon{
    font-size: 30px;
    color: white;
    }
   .wrap{
    height:130px;
    padding:10px;
    margin-top:30px;
    text-align: center;
    }
</style>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-md-4">
                <div class="wrap" style="background-color:Tomato;">
                	<div class="glyphicon glyphicon-user"></div>
                	<a href="Document?id=${id}"> 
                		Quản Lí Tài Liệu
                	</a>
                </div>
         </div>
         <div class="col-md-4">
                <div class="wrap" style="background-color:Orange;">
                	<div class="glyphicon glyphicon-list-alt"></div>
                	<a href="Video?id=${id}"> 
                		Quản Lí Video
                	</a>
                </div>
         </div>
          <div class="col-md-4">
                <div class="wrap" style="background-color:MediumSeaGreen;">
                	<div class="glyphicon glyphicon-list" ></div>
                	<a href="User?id=${id}"> 
                		Quản Lí Học Viên
                	</a>
                	</div>
         </div>
	</div>
			</div>
		</div>
    		 
</div>
</body>
</html>