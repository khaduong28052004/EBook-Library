<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="nav">
		<div class="logo">
			<div class="image">
				<img src="/views/img/logo/V.jpg" alt="">
			</div>
			<div class="logo1">
				<a href="#">Virtual Library Web</a>
			</div>
		</div>
		<div class="avatar">
			<div class="container-avatar">
				<img src="/views/img/books/Truyen/NhanGianKhuc.jpg" alt="">
				<p class="username">TeoNV</p>
			</div>
		</div>
	</div>
<jsp:include page="${view}"></jsp:include>
</body>
</html>