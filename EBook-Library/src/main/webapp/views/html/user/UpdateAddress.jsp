<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
.card {
	padding: 20px
}
</style>
<body>
	<br>
	<div class="container">
		<!-- Modal thêm địa chỉ mới -->
		<div class="card">
			<div class="card-header">
				<h1 style="font-family: serif;">CẬP NHẬT ĐỊA CHỈ</h1>
			</div>

			<div class="card-body">
				<form action="/Ebook/user/update" method="post">
					<div class="col-md-12">
						<div class="form-floating mb-3">
							<input name="nameaddress" value="${address.nameaddress}" type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput">Tên
								Địa Chỉ</label>
<%-- 								<input name="id" type="hidden" value="${account.id }" class="form-control" id="floatingInput" --%>
<!-- 								placeholder=""> -->
								<input name="id" type="hidden" value="${address.id }" class="form-control" id="floatingInput"
								placeholder="">
						</div>
						<div class="form-floating mb-3">
							<input value="${address.phone}" name="phone" type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput"> Số
								điện thoại </label>
						</div>
						<div class="form-floating">
							<input value="${address.fullnameaddress}" name="fullnameaddress" type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput">Địa
								chỉ (tùy chọn)</label>
						</div>

<!-- 						<div style="padding-top: 20px;"> -->
<!-- 							<select name="province" class="form-select" -->
<!-- 								aria-label="Default select example" -->
<!-- 								onchange="this.form.submit()"> -->
<!-- 								<option value="">Chọn tỉnh</option> -->
<%-- 								<c:forEach var="province" items="${provinces}"> --%>
<%-- 									<option value="${province.id}" --%>
<%-- 										${province.id eq province ? 'selected' : ''}>${province.name}</option> --%>
<%-- 								</c:forEach> --%>
<!-- 							</select> -->
<!-- 						</div> -->

<!-- 						<div style="padding-top: 20px;"> -->
<!-- 							<select name="district" class="form-select" -->
<!-- 								aria-label="Default select example" -->
<!-- 								onchange="this.form.submit()"> -->
<!-- 								<option value="">Chọn quận/huyện</option> -->
<%-- 								<c:forEach var="district" items="${districts}"> --%>
<%-- 									<option value="${district.id}" --%>
<%-- 										${district.id eq district ? 'selected' : ''}>${district.name}</option> --%>
<%-- 								</c:forEach> --%>
<!-- 							</select> -->
<!-- 						</div> -->

<!-- 						<div style="padding-top: 20px;"> -->
<!-- 							<select name="commune" class="form-select" -->
<!-- 								aria-label="Default select example"> -->
<!-- 								<option value="">Chọn xã/phường</option> -->
<%-- 								<c:forEach var="commune" items="${communes}"> --%>
<%-- 									<option value="${commune.id}">${commune.name}</option> --%>
<%-- 								</c:forEach> --%>
<!-- 							</select> -->
<!-- 						</div> -->

						<div class="form-floating mb-3" style="padding-top: 20px;">
							<textarea class="form-control" placeholder="Leave a comment here"
								id="floatingTextarea2" style="height: 100px"></textarea>
							<label for="floatingTextarea2">Ghi chú (nếu có)</label>
						</div>
					</div>

					<div class="card-footer">
						<button type="submit" class="btn btn-outline-success">Hoàn
							Thành</button>

					</div>
				</form>
			</div>
		</div>


	</div>
</body>
</html>