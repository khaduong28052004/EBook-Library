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
<style type="text/css">
<%@ include file="/views/css/home.css"%></style>
</head>
<body>
	<%@include file="/views/layout/common/header.jsp" %>
	<main>
    <link rel="stylesheet" href="/views/css/changPass.css">
    <div class="body">
        <form action="">
            <h1>Đổi Mật Khẩu</h1>
            <div class="inputbox">
                <ion-icon name="mail-outline"></ion-icon>
                <input type="password" required>
                <label for="">Mật khẩu cũ</label>
            </div>
            <div class="inputbox">
                <ion-icon name="passnew-outline"></ion-icon>
                <input type="password" required>
                <label for="">Mật khẩu mới</label>
            </div>
            <div class="inputbox">
                <ion-icon name="xn-outline"></ion-icon>
                <input type="password" required>
                <label for="">Xác nhận mật khẩu</label>
            </div>
            <button>Xác nhận</button>
        </form>
    </div>
</main>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>
</html>