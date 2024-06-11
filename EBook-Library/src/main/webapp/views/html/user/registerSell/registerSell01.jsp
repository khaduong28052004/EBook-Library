<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet" href="/views/css/registerSell/registerSell01.css">

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

	<main class="container">
		<div class="container-steps">
			<div class="step1">
				<div class="step-dot">
					<span class="dot"></span>
				</div>
				<div class="step-content">Thông tin shop</div>
				<div class="step-tail">
					<div class="tail"></div>
				</div>
			</div>
			<div class="step2">
				<div class="step-dot">
					<span class="dot"></span>
				</div>
				<div class="step-content">Thông tin thuế</div>
				<div class="step-tail">
					<div class="tail"></div>
				</div>
			</div>
			<div class="step3">
				<div class="step-dot">
					<span class="dot"></span>
				</div>
				<div class="step-content">Thông tin định danh</div>
				<div class="step-tail">
					<div class="tail"></div>
				</div>
			</div>
			<div class="step4">
				<div class="step-dot">
					<span class="dot"></span>
				</div>
				<div class="step-content">Chờ xác nhận</div>
				<div class="step-tail">
					<div class="tail"></div>
				</div>
			</div>
			<div class="step5">
				<div class="step-dot">
					<span class="dot"></span>
				</div>
				<div class="step-content">Hoàn tất</div>
				<div class="step-tail">
					<div class="tail-end"></div>
				</div>
			</div>
		</div>

		<div class="container-form">
			<form class="row" action="/admin/products/update" method="post">
				<div class="md-12 form">
					<label for="ten-shop" class="label-control"><span
						style="color: red;">*</span> Tên shop</label> <input type="text"
						class="form-control" value="${product.name}">
				</div>
				<div class="md-12 form">
					<label for="diachi-shop" class="label-control"
						style="width: 250px;"><span style="color: red;">*</span>
						Địa chỉ lấy hàng</label> <input type="text" class="form-control">
				</div>
				<div class="md-12 form">
					<label for="email-shop" class="label-control" style="width: 250px;"><span
						style="color: red;">*</span> Email</label> <input type="text"
						class="form-control">
				</div>
				<div class="md-12 form">
					<label for="sodienthoai-shop" class="label-control"
						style="width: 250px;"><span style="color: red;">*</span>
						Số điện thoại</label> <input type="text" class="form-control">
				</div>
				<hr>
				<div class="md-12 form-btn">
					<a href="./registerSell02" type="submit"
						class="btn btn-success btn-tieptheo">Tiếp theo</a>
				</div>
			</form>
			<!-- 			<form class="row" action="/Ebook/user/registerSell/registerSell01" -->
			<!-- 				method="get"> -->
			<!-- 				<div class="md-12 form"> -->
			<!-- 					<label for="ten-shop" class="label-control"> <span -->
			<!-- 						style="color: red;">*</span> Tên shop -->
			<!-- 					</label> <input type="text" id="ten-shop" name="shopName" -->
			<!-- 						class="form-control" required> -->
			<!-- 				</div> -->
			<!-- 				<div class="md-12 form"> -->
			<!-- 					<div class="col-md-2"></div> -->
			<!-- 										<div class="col-md-3"> -->
			<!-- 											<select name="selectedProvinceId" class="form-select" -->
			<!-- 												aria-label="Default select example" onchange="this.form.submit()"> -->
			<!-- 												<option value="">Chọn tỉnh</option> -->
			<%-- 												<c:forEach var="province" items="${provinces}"> --%>
			<%-- 													<option value="${province.id}" --%>
			<%-- 														${province.id eq selectedProvinceId ? 'selected' : ''}>${province.name}</option> --%>
			<%-- 												</c:forEach> --%>
			<!-- 											</select> -->
			<!-- 										</div> -->
			<!-- 										<div class="col-md-3"> -->
			<!-- 											<select name="selectedDistrictsId" class="form-select" -->
			<!-- 												aria-label="Default select example" onchange="this.form.submit()"> -->
			<!-- 												<option value="">Chọn quận/huyện</option> -->
			<%-- 												<c:forEach var="district" items="${districts}"> --%>
			<%-- 													<option value="${district.id}" --%>
			<%-- 														${district.id eq selectedDistrictsId ? 'selected' : ''}>${district.name}</option> --%>
			<%-- 												</c:forEach> --%>
			<!-- 											</select> -->
			<!-- 										</div> -->
			<!-- 										<div class="col-md-3"> -->
			<!-- 											<select name="communeId" class="form-select" -->
			<!-- 												aria-label="Default select example"> -->
			<!-- 												<option value="">Chọn xã/phường</option> -->
			<%-- 												<c:forEach var="commune" items="${communes}"> --%>
			<%-- 													<option value="${commune.id}">${commune.name}</option> --%>
			<%-- 												</c:forEach> --%>
			<!-- 											</select> -->
			<!-- 										</div> -->

			<!-- 					<div class="col-md-3"> -->
			<!-- 						<select name="selectedProvinceId" class="form-select" -->
			<!-- 							aria-label="Default select example" onchange="this.form.submit()"> -->
			<!-- 							<option value="">Chọn tỉnh</option> -->
			<%-- 							<c:forEach var="province" items="${provinces}"> --%>
			<%-- 								<option value="${province.id}" --%>
			<%-- 									${province.id eq selectedProvinceId ? 'selected' : ''}>${province.name}</option> --%>
			<%-- 							</c:forEach> --%>
			<!-- 						</select> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-md-3"> -->
			<!-- 						<select name="selectedDistrictsId" class="form-select" -->
			<!-- 							aria-label="Default select example" onchange="this.form.submit()"> -->
			<!-- 							<option value="">Chọn quận/huyện</option> -->
			<%-- 							<c:forEach var="district" items="${districts}"> --%>
			<%-- 								<option value="${district.id}" --%>
			<%-- 									${district.id eq selectedDistrictsId ? 'selected' : ''}>${district.name}</option> --%>
			<%-- 							</c:forEach> --%>
			<!-- 						</select> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-md-3"> -->
			<!-- 						<select name="communeId" class="form-select" -->
			<!-- 							aria-label="Default select example"> -->
			<!-- 							<option value="">Chọn xã/phường</option> -->
			<%-- 							<c:forEach var="commune" items="${communes}"> --%>
			<%-- 								<option value="${commune.id}">${commune.name}</option> --%>
			<%-- 							</c:forEach> --%>
			<!-- 						</select> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 				<div class="md-12 form"> -->
			<!-- 					<label for="diachi-shop" class="label-control"> <span -->
			<!-- 						style="color: red;">*</span> Địa chỉ lấy hàng -->
			<!-- 					</label> <input type="text" id="addresses" name="addresses" -->
			<!-- 						class="form-control" required> -->
			<!-- 				</div> -->
			<!-- 				<div class="md-12 form"> -->
			<!-- 					<label for="email-shop" class="label-control"> <span -->
			<!-- 						style="color: red;">*</span> Email -->
			<!-- 					</label> <input type="email" id="email" name="email" class="form-control" -->
			<!-- 						required> -->
			<!-- 				</div> -->
			<!-- 				<div class="md-12 form"> -->
			<!-- 					<label for="sodienthoai-shop" class="label-control"> <span -->
			<!-- 						style="color: red;">*</span> Số điện thoại -->
			<!-- 					</label> <input type="text" id="sodienthoai-shop" name="phone" -->
			<!-- 						class="form-control" required> -->
			<!-- 				</div> -->
			<!-- 				<hr> -->
			<!-- 				<div class="md-2 form-btn"> -->
			<!-- 					<a href="./registerSell02"> -->
			<!-- 						<button type="submit" class="btn btn-success btn-tieptheo">Tiếp -->
			<!-- 							theo</button> -->
			<!-- 					</a> -->
			<!-- 				</div> -->
			<!-- 			</form> -->
		</div>
	</main>
</body>
</html>
