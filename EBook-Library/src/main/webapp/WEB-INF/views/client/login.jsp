<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
    <link rel="stylesheet" href="/assets/css/login.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-up">
			<form action="register" method="post">
				<h1>Đăng Ký</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<input id="userName" type="text" name="userName" placeholder="Tên Đăng Nhập"> 
				<input type="email" name="gmail" placeholder="Email">
				<input type="password" name="password" placeholder="Mật Khẩu">
				
				<span style="color: red;">${errorR}</span>				
					<button >Đăng Ký</button>				
			</form>
		</div>
		<div class="form-container sign-in">
			<form action="/login" method="post" >
				<h1>Đăng Nhập</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<input type="text" name="userName" placeholder="Tên Đăng Nhập">
							 	
				<input type="password" name="password" placeholder="Mật Khẩu"> 
					<span style="color: red;">${error}</span>	
				<a href="#" class="fp" id="forgotPassword">Quên mật khẩu?</a>				
				<button>Xác Nhận</button>
			</form>
		</div>
		<div class="form-container forgotPassword">	
			<form action="/otp"  method="post">
				<h1>Quên Mật Khẩu</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<input type="email" placeholder="Email" name="gmail">
				
						<span style="color: red;">${error}</span>	
					<button>Xác
						Nhận</button>
					
			</form>
		</div>


		<div class="toggle-container">
			<div class="toggle">
				<div class="toggle-panel toggle-left">
					<h1>Chào mừng bạn quay trở lại!</h1>
					<p>Hãy nhập thông tin cá nhân của bạn để sử dụng tất cả các
						tính năng của trang web</p>
					<button class="hidden" id="login">Đăng Nhập</button>
				</div>
				<div class="toggle-panel toggle-right">
					<h1>Xin chào!</h1>
					<p>Hãy đăng ký với thông tin cá nhân của bạn để sử dụng tất cả
						các tính năng của trang web</p>
					<button class="hidden" id="register">Đăng Ký</button>
				</div>
			</div>
		</div>
	</div>
	<script src="/assets/js/login.js"></script>

</body>
</html>