<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt"%>
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
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


</head>
<body>

	<link rel="stylesheet" href="/assets/css/shoppingCart.css">
	<div class="container-fluid"
		style="background-color: rgba(128, 128, 128, 0.055); padding: 0px; margin: 0px;">
		<div class="row" style="margin: 50px; margin-top: 0px">
			<div class="col-md-12" style="margin-top: 30px;">
				<div class="card " style="border-radius: 0px;">
					<div class="cart-title">
						<div class="row">
							<div class="col-md-4">
								<input class="form-check-input" type="checkbox" id="gridCheck">
								<h3>Sản phẩm</h3>
							</div>
							<div class="col-md-2">
								<h3>Đơn giá</h3>
							</div>
							<div class="col-md-2">
								<h3>Số lượng</h3>
							</div>
							<div class="col-md-2">
								<h3>Tiền</h3>
							</div>
							<div class="col-md-2">
								<h3>Thao tác</h3>
							</div>

						</div>
					</div>

				</div>

			</div>
			<form action="" method="post">
				<c:forEach var="item" items="${listCarts}">
					<div class="col-md-12" style="margin-top: 10px;">
						<div class="card" style="border-radius: 0px;">
							<div class="cart-nameStore">
								<input class="form-check-input" type="checkbox" id="gridCheck">
								<h3>Kha Duong Shop</h3>

							</div>
						</div>
						<div class="card" style="border-radius: 0px;">
							<div class="cart-product">
								<div class="row">
									<div class="col-md-4">
										<input class="form-check-input" name="idProduct"
											value="${item.id}" type="checkbox" id="gridCheck"> <img
											src="${item.product.image}" alt="">
										<div class="title-product" style="margin-left: 10px;">
											<span style="font-weight: bold;">[${item.product.name}]</span>
											${item.product.introduce}
										</div>
									</div>
									<div class="col-md-2" style="display: flex;">

										<h3 style="font-size: 17px; margin-left: 10px;">
											<span style="text-decoration: line-through;"><fmt:formatNumber>${item.product.price}</fmt:formatNumber></span><sup>đ</sup>
											<fmt:formatNumber>${item.product.price - item.product.discount}</fmt:formatNumber>
											<sup>đ</sup>
										</h3>
									</div>
									<div class="col-md-2">
										<p style="text-align: center;">${item.quantity}</p>
									</div>
									<div class="col-md-2">
										<h3
											style="font-size: 17px; margin-left: 10px; text-align: center;">
											<fmt:formatNumber>${item.product.price*item.quantity}</fmt:formatNumber>
											<sup>đ</sup>
										</h3>
									</div>
									<div class="col-md-2"
										style="display: flex; justify-content: center;">
										<a href="/user/shoppingcart/delete/${item.id}" class="btn btn-danger">Xóa</a>
									</div>

								</div>
							</div>
							<div class="card" style="border-radius: 0px;">
								<div class="voucher-cart">
									<i class="fa-solid fa-ticket" style="color: green;"></i>
									<h3>Voucher</h3>
									<a href="">Xem thêm</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

				<!-- Thanh toán -->

				<div class="col-md-12"
					style="margin-bottom: 30px; margin-top: 20px;">
					<div class="card" style="border-radius: 0px;">
						<div class="payment-cart">
							<input class="form-check-input" type="checkbox" id="clickAll">
							<h3>Chọn Tất cả [2]</h3>
							<button class="btn btn-danger"
								formaction="/user/shoppingcart/deleteall">Xóa</button>
							<div class="payment">
								<h3>
									Tổng thanh toán ${quantity} [sản phẩm] : <span><fmt:formatNumber>${total}</fmt:formatNumber><sup>đ</sup></span>
								</h3>
							</div>
							<div class="btn-payment">
								<button class="btn btn-success">Mua hàng</button>
								<a href="/user/home" class="btn btn-primary">Quay lại</a>
							</div>
						</div>
					</div>
				</div>
			</form>







		</div>
	</div>
	</div>
	<script>
		var allChecked = document.querySelectorAll(".form-check-input");
		document.getElementById("clickAll").onclick = click;
		document.getElementById("cboProduct").onclick = click;

		function click() {
			if (this.checked) {

				for (var i = 0; i < allChecked.length; i++) {
					allChecked[i].checked = true;

				}
			} else {
				for (var i = 0; i < allChecked.length; i++) {
					allChecked[i].checked = false;

				}
			}
		};
	</script>
</body>
</html>