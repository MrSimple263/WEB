<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body>
<div><strong>Thông Tin Chi tiết</strong></div>
<div><strong>Ảnh Học Viên:</strong></div>
<img src="imguser/${u.img }" alt="not source img" style="height="150px";weight="150px";/>
<div><strong>Họ tên:</strong></div>
<div>${u.fullname}</div>
<div><strong>Địa chỉ:</strong></div>
<div>${u.add}</div>
<div><strong>Địa Chỉ Email:</strong></div>
<div>${u.email}</div>
<div><strong>Số Điện Thoại:</strong></div>
<div>${u.phone}</div>
</body>
</html>