<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/assets/css/login.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<div class="container" id="container">
		<div class="form-container sign-in">
			<form action="/changPassword" method="post">
				<h1>Quên Mật Khẩu</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a>
					<a href="#" class="icon"><i class='bx bxl-google'></i></a>
					<a href="#" class="icon"><i class='bx bxl-linkedin'></i></a>
					<a href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<div class="password-container">
					<div class="password-field">
						<input name="password" type="password" placeholder="Mật Khẩu" id="password">
						<i class='bx bx-show-alt' id="togglePassword1" style="cursor: pointer;"></i>
					</div>
					<div class="password-field">
						<input name="re-password" type="password" placeholder="Xác Nhận Mật Khẩu" id="re-password">
						<i class='bx bx-show-alt' id="togglePassword2" style="cursor: pointer;"></i>
					</div>
				</div>
				<button id="xacNhan">Xác Nhận</button>
			</form>
		</div>

		<div class="toggle-container">
			<div class="toggle">
				<div class="toggle-panel toggle-right">
					<h1>Chào mừng bạn quay trở lại!</h1>
					<p>Hãy nhập thông tin cá nhân của bạn để sử dụng tất cả các
						tính năng của trang web</p>
					<button class="hidden" id="login">Đăng Nhập</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		document.getElementById('togglePassword1').addEventListener('click', function () {
			var passwordInput = document.getElementById('password');
			var passwordType = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
			passwordInput.setAttribute('type', passwordType);
			this.classList.toggle('bx-show-alt');
			this.classList.toggle('bx-hide');
		});

		document.getElementById('togglePassword2').addEventListener('click', function () {
			var passwordInput = document.getElementById('re-password');
			var passwordType = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
			passwordInput.setAttribute('type', passwordType);
				
			var passwordInput = document.getElementById('password');
			var passwordType = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
			passwordInput.setAttribute('type', passwordType);
			
			this.classList.toggle('bx-show-alt');
			this.classList.toggle('bx-hide');
		});
	</script>
</body>
</html>
