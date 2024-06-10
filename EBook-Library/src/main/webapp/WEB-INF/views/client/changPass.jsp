<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body>
	<link rel="stylesheet" href="/assets/css/changPass.css">
	<main>
		<div class="body">
		
			<form action="/Ebook/account/changePass" method="post">
				<h1>Đổi Mật Khẩu</h1>
				<h2 style="color: white;">Chào bạn :${fullname}</h2>
				<div class="inputbox">
					<ion-icon name="mail-outline"></ion-icon>
					<input value="" name="password" type="password" required> <label for="">Mật
						khẩu cũ</label>
				</div>
				<div class="inputbox">
					<ion-icon name="passnew-outline"></ion-icon>
					<input type="password" name="repassword" required> <label for="">Mật
						khẩu mới</label>
				</div>
				<div class="inputbox">
					<ion-icon name="xn-outline"></ion-icon>
					<input name="re1password" type="password" required> <label for="">Xác
						nhận mật khẩu</label>
					
				</div>
				<span>${error}</span>
				 <br>
				<button>Xác nhận</button>
			</form>
		</div>
	</main>

</body>
</html>