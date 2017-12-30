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
                	<a href="User"> 
                		Quản Lí Nhân Sự
                	</a>
                </div>
         </div>
         <div class="col-md-4">
                <div class="wrap" style="background-color:Orange;">
                	<div class="glyphicon glyphicon-list-alt"></div>
                	<a href="News"> 
                		Quản Lí Tin Tức
                	</a>
                </div>
         </div>
          <div class="col-md-4">
                <div class="wrap" style="background-color:MediumSeaGreen;">
                	<div class="glyphicon glyphicon-list" ></div>
                	<a href="Groupsubject"> 
                		Quản Lí Nhóm Học
                	</a>
                	</div>
         </div>
	</div>
	<div class="row">
		<div class="col-md-4" >
                <div class="wrap" style="background-color:SlateBlue;">
                	<div class="glyphicon glyphicon-edit" ></div>
                	<a href="Subject"> 
                		Quản Lí Môn Học
                	</a>
                </div>
         </div>
         
         <div class="col-md-4" >
                <div class="wrap" style="background-color:Red;">
                	<div class="glyphicon glyphicon-leaf" ></div>
                	<a href="Class"> 
                		Quản Lí Nhóm Lớp Học
                	</a>
                </div>
         </div>
	</div>
			</div>
		</div>
    		 
</div>
</body>
</html>