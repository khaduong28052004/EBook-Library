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
			<form action="/register" method="post">
				<h1>Đăng Ký</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
                <p style="color: red">${errorR}</p>
				<input name="userName" type="text" placeholder="Tên Đăng Nhập">
				<input name="fullName" type="text" placeholder="Họ và tên">
				<input name="gmail" type="email" placeholder="Email">
				<input name="password" type="password" placeholder="Mật Khẩu">
				<button>Đăng Ký</button>
			</form>
		</div>
		<div class="form-container sign-in">
			<form action="/login" method="post">
				<h1>Đăng Nhập</h1>

				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<p style="color: red">${error}</p>
				<input type="text" placeholder="Tên Đăng Nhập" name="userName">
				<input type="password" placeholder="Mật Khẩu" name="password">
				<a href="#" class="fp" id="forgotPassword">Quên mật khẩu?</a>
				<button>Xác Nhận</button>
			</form>
		</div>
		<div class="form-container forgotPassword">
			<form action="/forgotpassword" method="post">
				<h1>Quên Mật Khẩu</h1>
				<div class="social-icons">
					<a href="#" class="icon"><i class='bx bxl-facebook'></i></a> <a
						href="#" class="icon"><i class='bx bxl-google'></i></a> <a
						href="#" class="icon"><i class='bx bxl-linkedin'></i></a> <a
						href="#" class="icon"><i class='bx bxl-github'></i></a>
				</div>
				<p style="color: red">${errorF}</p>
				<input type="email" placeholder="Email" name="email"><button>Xác
						Nhận</button></a>
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
	<script>
	const container = document.getElementById('container');
	const registerBtn = document.getElementById('register');
	const loginBtn = document.getElementById('login');
	const forgotPassBtn = document.getElementById('forgotPassword');

	

	registerBtn.addEventListener('click', () => {
	    container.classList.add("active");
	});
	loginBtn.addEventListener('click', () => {
	    container.classList.remove("active");
	});

	forgotPassBtn.addEventListener('click', () => {
	    container.classList.add("show-forgot-password");
	});
	loginBtn.addEventListener('click', () => {
	    container.classList.remove("show-forgot-password");
	});

	document.addEventListener("DOMContentLoaded",function(){
		let page =  "${page}";
 		if("ft" == page.toString()){
 		    container.classList.add("show-forgot-password");
		}else if( "rg" === page.toString()){
		
			container.classList.add("active");
		}else{
		    container.classList.remove("active");  
		}

	});
	
	</script>

</body>
</html>