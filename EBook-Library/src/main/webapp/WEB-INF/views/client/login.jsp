<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="/assets/css/login.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>

</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-up">
			<form id="registerForm" action="register" method="post">
				<h1>Đăng Ký</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<input type="text" id="registerUserName" name="userName"
					placeholder="Tên Đăng Nhập"> <input type="email"
					id="registerEmail" name="gmail" placeholder="Email"> <input
					type="password" id="registerPassword" name="password"
					placeholder="Mật Khẩu">
				<button type="submit">Đăng Ký</button>
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
			</form>
		</div>
		<div class="form-container sign-in">
			<form id="loginForm" action="/login" method="post">
				<h1>Đăng Nhập</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<input type="text" id="loginUserName" name="userName"
					placeholder="Tên Đăng Nhập"> <input type="password"
					id="loginPassword" name="password" placeholder="Mật Khẩu">
				<a href="#" class="fp" id="forgotPasswordLink">Quên mật khẩu?</a>
				<button type="submit">Xác Nhận</button>
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
			</form>
		</div>
		<div class="form-container forgotPassword">
			<form id="forgotPasswordForm" action="/otp" method="post">
				<h1>Quên Mật Khẩu</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<input type="email" id="forgotPasswordEmail" name="gmail"
					placeholder="Email">
				<button type="submit">Xác Nhận</button>
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
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