<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/bootstrap.min.css">
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
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div id="wrap-videoplayer">
                <iframe width="100%"  height="400" src="${video[0].link}"></iframe>
                <br/>
               	<div><strong>Miêu tả:</strong></div>
               	<div class="des">${video[0].des}</div>
               	<br>
               	<div><strong>Tài Liệu:</strong></div>
               	<c:forEach items="${doc}" var="d">
               		<div><a href="${d.link}">${d.des}</a></div>
               	</c:forEach>
               	
            </div>
        </div>
        <div class="col-md-3">
            <div class="row">
            <c:forEach items="${video}" var="vd">
            	<div class="col-md-12">
                        <div class="wrap-nextvideo">
                            <div class="clearfix">
                                <img src="image/C%23.png" alt="imgae no found" class="img-responsive"
                                     style="width: 15%;float: left;margin-right: 5px">
                                <div class="infor-next">
                                	<div class="des" style="display:none" >${vd.des} </div>
                                	<div class="link" style="display:none">${vd.link}</div> 
                                	<a style="color:white;cursor: pointer;" class="next" style="color:white">${vd.name}</a>
                                </div>
                                
                            </div>
                        </div>
                    </div>
            </c:forEach>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script >
$(".next").click(function () {
    var obj=$(this);
   	var des=obj.parent().children().first().text();
   	var src=obj.parent().children('.link').text();
   	$('iframe').attr("src",src);
   	$('.des').text(des);
});
</script>
</body>
</html>