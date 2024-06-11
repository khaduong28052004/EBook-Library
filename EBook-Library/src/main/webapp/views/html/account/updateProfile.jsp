<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateProfile</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet" href="/views/css/updateProfile.css"">
</head>
<body>
	<%@include file="/views/layout/account/header.jsp"%>
	<main class="container" style="margin: 0px; max-width: 2000px;">
		<div class="row">
			<article class="col-md-2">
				<nav class="vertical-menu">
					<div class="menu-item">
						<a class="text-nav" href="javascript:void(0);"
							onclick="toggleSubmenu()">Thông Tin Cá Nhân</a>
						<div class="submenu">
							<a class=" activeMenuCon" href="/Ebook/account/updateProfile">Xem
								Hồ Sơ</a> <a class="text-subnav" href="/Ebook/account/banks">Ngân
								Hàng</a>
						</div>
					</div>
					<a class="text-nav" href="/Ebook/account/bill">Đơn Hàng</a>
				</nav>
			</article>
			<aside class="col-md-10 row">
				<article class="col-md-8">
					<div class="title">
						<p>Hồ sơ của tôi</p>
						<p style="font-size: 1rem; padding: 0px; margin: 0px;"
							class="text-secondary">Quản lý thông tin hồ sơ để bảo mật tài
							khoản</p>
						<hr>
					</div>
					<div class="body">
						<form cl action="/Ebook/account/updateProfile/user" method="post" enctype="multipart/form-data">
							<div class="form-group mb-3">
  <label for="tenShop" class="form-label">Tên shop</label>
  <input type="text" class="form-control" id="tenShop" name="shopname" value="${account.shopname}">
  <div class="form-text text-danger">${error}</div>
  <input type="hidden" class="form-control" id="tenShop" name="id" value="${account.id}">
</div>
							<div class="form-group row g-3">
								<div class="col">
									<label for="username" class="form-label">Username</label> <input
										type="text" class="form-control" id="username"
										value="${account.username}" name="username">
								</div>
								<div class="col">
									<label for="password" class="form-label">Password</label> <input
										type="password" class="form-control" id="password" readonly
										value="${account.password}" name="password">
								</div>
							</div>
							<div class="form-group row g-3">
								<div class="col">
									<label for="fullname" class="form-label">Họ và tên</label> <input
										type="text" class="form-control" id="fullname"
										value="${account.fullname}" name="fullname">
								</div>
								<div class="col">
									<label for="email" class="form-label">Email</label> <input
										type="email" class="form-control" id="email"
										value="${account.email}" name="email">
								</div>
							</div>
							<div class=" form-group row g-3">
								<div class="col">
									<label for="birthday" class="form-label">Ngày sinh</label> <input
										type="date" class="form-control" id="birthday"
										value="${account.birthday}" name="birthday">
								</div>
								<div class="col">
									<label for="sdt" class="form-label">Số điện thoại</label> <input
										type="text" class="form-control" id="sdt"
										value="${account.phone}" name="phone">
								</div>
							</div>
							
							<span class="span">${error}</span>
							<div class="form-group md-3 d-flex justify-content-center">
								<button style="width: 100px;" class="register btn btn-outline-success"
									type="submit">Lưu</button>
							</div>
					</div>
				</article>
				<aside class="col-md-4">
					<div class="showImgBia">
						<img id="displayedBia" src="/img/account/${account.background}">

					</div>
					<div class="showImgAvt">
						<img id="displayeAvt" src="/img/account/${account.avatar}">
					</div>
					<div class="title-TenShop">
						<p>${account.shopname}</p>
					</div>
					<div class="uploadImg">
						<div class="form-group row g-3">
							<div class="col">
								<label for="ImgAvt" class="form-label">Ảnh đại diện</label> <input
									type="file" class="form-control" id="ImgAvt" name="avatar"
									value="${account.avatar}">
							</div>
							<div class="col">
								<label for="ImgBia" class="form-label">Ảnh bìa</label> <input
									type="file" class="form-control" id="ImgBia" name="background"
									value="${account.background}">
							</div>
						</div>
					</div>
				</aside>
			</aside>
			</form>
		</div>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
	<script>   
	
	const container = document.getElementById('container');
	const registerBtn = document.getElementById('register');


	
   // ngăn submit
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
		
 		const registerForm = document.querySelector('.sign-up form');
 	    const errorSpan = document.getElementById('span');
 	

 	    // Thêm sự kiện submit cho form Đăng Ký
 	    registerForm.addEventListener('submit', function (event) {
 	        // Lấy giá trị từ các trường input
 	        const userName = document.getElementById('userName').value;
 	   
 	       // const fullName = document.queryselector('.sign-up input[name="fullName"]').value;
           const name = document.getElementById('fullName').value;
 	        // Xóa thông báo lỗi trước khi kiểm tra
 	        errorSpan.textContent = '';
              
 	        // Kiểm tra các điều kiện
 	        
 	        if (!name.trim()) {
 	            errorSpan.textContent = 'Vui lòng nhập Tên đầy đủ.';
 	            event.preventDefault(); // Ngăn chặn việc submit form
 	            return;
 	        }

 	        
 	        if (!userName.trim()) {
 	            errorSpan.textContent = 'Vui lòng nhập Tên Đăng Nhập.';
 	            event.preventDefault(); // Ngăn chặn việc submit form
 	            return;
 	        }

 	        if (!email.trim()) {
 	            errorSpan.textContent = 'Vui lòng nhập Email.';
 	            event.preventDefault(); // Ngăn chặn việc submit form
 	            return;
 	        }

 	        if (!password.trim()) {
 	            errorSpan.textContent = 'Vui lòng nhập Mật Khẩu.';
				event.preventDefault(); // Ngăn chặn việc submit form
			     return;
			 }
			
			 // Kiểm tra email hợp lệ
			 const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			 if (!emailPattern.test(email)) {
			     errorSpan.textContent = 'Email không hợp lệ.';
			     event.preventDefault(); // Ngăn chặn việc submit form
			     return;
			 }
			
			 // Kiểm tra mật khẩu có ít nhất 6 ký tự
			//    if (password.length < 6) {
			//       errorSpan.textContent = 'Mật khẩu phải chứa ít nhất 6 ký tự.';
			//       event.preventDefault(); // Ngăn chặn việc submit form
			//       return;
			//    }
			});
			
			
   </script>
</body>
</html>