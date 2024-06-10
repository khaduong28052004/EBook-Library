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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container">
		<!-- hearder -->
		<div class="row">
			<div class="col-md-12">
				<h5 style="color: green; padding-top: 40px; padding-bottom: 40px;">
					<i class="fa-solid fa-cart-shopping" style="color: #19d10c;"></i> <Strong
						style="font-size: larger; font-family: auto;">Virtual
						Library Website</Strong> | Thanh Toán
				</h5>
			</div>
		</div>
		<!-- body -->
		<main>
			<img src="/assets/img/Pay/gach.png" style="width: 1300px;">
			<h5 style="color: green;">
				<i class="fa-solid fa-location-dot"
					style="color: green; margin-right: 10px;"></i>Địa Chỉ Nhận Hàng
			</h5>
			<div class="row">
				<div class="col-md-9">
					<strong>Truc Ly(+84) 987654321 </strong> Toà nhà FPT Polytechnic,
					đường số 22, phường Thường Thạnh, quận Cái Răng, TP Cần Thơ
				</div>
				<div class="col-md-3">
					<a type="text" data-bs-toggle="modal"
						data-bs-target="#exampleModal"
						style="color: rgb(67, 73, 228); cursor: pointer;";> Thay đổi </a>
				</div>
		</main>
		<!-- modal1 -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel6" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel6">Địa chỉ của
							tôi</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<!-- RADIO -->
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"
								style="display: flex; flex-direction: column;">
								<div class="d-flex align-items-center" style="display: flex;">
									<h6 class="me-3" style="margin-right: 1rem;">
										Hồ Thị Trúc Ly | <strong style="color: #7e847e;">(+84)
											876543219</strong>
									</h6>
									<!-- CẬP NHẬT -->
									<!-- Button trigger modal -->
									<button class="btn" type="text" data-bs-toggle="modal"
										data-bs-target="#exampleModal2"
										style="color: rgb(67, 73, 228); cursor: pointer; margin-left: 90px;">
										Thay đổi</button>
									<!-- Modal -->
									<!-- CẬP NHẬT -->
								</div>
								<p style="color: #7e847e;">Lý Tự Trọng</p>
								<p style="color: #7e847e;">Phường An Cư, Quận Ninh Kiều, Cần
									Thơ</p>
							</label>
						</div>
						<hr>
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"
								style="display: flex; flex-direction: column;">
								<div class="d-flex align-items-center" style="display: flex;">
									<h6 class="me-3" style="margin-right: 1rem;">
										Hồ Thị Trúc Ly |<strong style="color: #7e847e;">
											(+84) 876543219</strong>
									</h6>
									<!-- CẬP NHẬT -->
									<!-- Button trigger modal -->
									<button class="btn" type="text" data-bs-toggle="modal"
										data-bs-target="#exampleModal3"
										style="color: rgb(67, 73, 228); cursor: pointer; margin-left: 90px;">
										Thay đổi</button>
									<!-- Modal -->

									<!-- CẬP NHẬT -->
								</div>
								<p style="color: #7e847e;">Trường Cao Đẳng Fpt Polytechnic
									Cần Thơ, Đường Số 22, Kdc Hoàng Quân</p>
								<p style="color: #7e847e;">Phường Lê Bình , Quận Cái Răng,
									Cần Thơ</p>
							</label>
						</div>
						<button
							style="width: 200px; margin-bottom: 20px; margin-left: 10px;"
							type="button" class="btn btn-outline-success"
							data-bs-toggle="modal" data-bs-target="#exampleModal6">
							Thêm địa chỉ mới</button>
						<!-- RADIO -->
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-secondary"
							data-bs-dismiss="modal">Đóng</button>
						<button type="button" class="btn btn-outline-success">Cập
							nhật</button>

					</div>

				</div>
			</div>

		</div>




		<!-- SẢN PHẨM -->
		<table class="table table-hover"
			style="margin-top: 10px; border-collapse: collapse; border-bottom: white;">
			<tr>
				<td>
					<h5>Sản phẩm</h5>
				</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="color: #7e847e;">Đơn giá</td>
				<td style="color: #7e847e;">Số lượng</td>
				<td></td>
				<td style="color: #7e847e;">Thành tiền</td>
			</tr>
			<c:forEach var="item" items="${listCarts}">

				<tr>
					<td><img
						src="https://png.pngtree.com/png-clipart/20210309/original/pngtree-3d-logo-design-vector-cdr-file-png-image_5883019.jpg"
						style="width: 40px;">LyLyShop</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>


				<tr style="border-bottom: 1px solid gray;">
					<td><img src="${item.product.image}"
						style="height: 70px; width: auto;"></td>
					<td><span style="font-weight: bold; font-size: 18px">[${item.product.name}]</span>
						Mô tả : ${item.product.introduce}</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="color: #7e847e;">Loại:
						${item.product.category.name}</td>
					<td><fmt:formatNumber>${item.product.price-item.product.discount}</fmt:formatNumber><sup>đ</sup></td>
					<td class="text-center">${item.quantity}</td>
					<td></td>
					<td><fmt:formatNumber>${item.quantity*(item.product.price-item.product.discount)}</fmt:formatNumber><sup>đ</sup></td>
				</tr>
			</c:forEach>
		</table>






















		<!-- ĐƠN VỊ VẬN CHUYỂN -->
		<table class="table table-hover"
			style="border-collapse: collapse; border-bottom: white;">
			<tr style="border-top: white;">
				<td>Đơn vị vận chuyển: Nhanh</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<!-- Button trigger modal --> <a type="text" data-bs-toggle="modal"
					data-bs-target="#exampleModa2"
					style="color: rgb(67, 73, 228); cursor: pointer;";> Voucher </a> <!-- Modal -->
					<div class="modal fade" id="exampleModa2" tabindex="-1"
						aria-labelledby="exampleModalLabe2" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabe2">Vận chuyển</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<table class="table ">
										<tbody>
											<tr class="border">
												<td><input class="form-check-input" type="radio"
													name="radio" id="flexRadioDefault1"> <label
													class="form-check-label" for="radio"> Miễn Phí Vận
														Chuyển </label></td>
												<td><img
													src="https://cdn.dutycast.com/dutycast/attachments/r4ffh5hvkhqos58maxzoouo1di6v?max-w=1000"
													width="100px" height="auto"></td>
											</tr>
										</tbody>

									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Đóng</button>
									<button type="button" class="btn btn-primary">Cập nhật</button>
								</div>
							</div>
						</div>
					</div>
				</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="padding-right: 150px;"><fmt:formatNumber>${service_fee}</fmt:formatNumber><sup>đ</sup></td>
			</tr>
			<tbody>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="color: #7e847e;">Giao hàng nhanh trống, tiết kiểm
					hơn thả sức mua sắm không lo về phí vận chuyển.</td>
				<td></td>
				<td></td>
				<td></td>
			</tbody>
			<tbody>
				<td>Được đồng kiểm</td>
			</tbody>
			<tfoot>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td style="color: #7e847e;">Tổng số tiền(${listCarts.size()}
					sản phẩm):</td>
				<td></td>
				<td></td>
				<td></td>
				<c:set var="total" value="0" />
				<c:forEach var="it" items="${listCarts}">
					<c:set var="total"
						value="${total+(it.quantity*(it.product.price-it.product.discount))}" />
				</c:forEach>
				<td><fmt:formatNumber>${total}</fmt:formatNumber><sup>đ</sup></td>
			</tfoot>
		</table>
		<img src="/views/img/Pay/gachDut.png"
			style="height: 5px; width: 1300px;">
		<!-- THANH TOÁN -->

		<table class="table table-hover"
			style="border-collapse: collapse; border-bottom: white;">
			<tr style="border-top: white;">
				<td>
					<h5>Phương thức thanh toán</h5>
				</td>
				<td></td>
				<td></td>

				<td>
					<!-- Button trigger modal --> <a type="text" data-bs-toggle="modal"
					data-bs-target="#exampleModa3"
					style="color: rgb(67, 73, 228); cursor: pointer; margin-right: 10px;">
						Thay đổi </a> <!-- Modal -->
					<div class="modal fade" id="exampleModa3" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Thanh Toán</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Đóng"></button>
								</div>
								<div class="modal-body">
									<table class="table">
										<tbody class="border">
											<tr>
												<td><input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault1"> <label
													class="form-check-label" for="flexRadioDefault1">
														Thanh toán khi nhận hàng </label></td>
												<td></td>
											</tr>
											<tr>
												<td><input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault1"> <label
													class="form-check-label" for="flexRadioDefault1">
														Thanh toán bằng momo </label></td>
												<td><img
													src="https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png"
													style="height: 35px;"></td>
											</tr>

											<tr>
												<td><input class="form-check-input" type="radio"
													name="flexRadioDefault" id="flexRadioDefault1"> <label
													class="form-check-label" for="flexRadioDefault1">
														Thanh toán bằng VNPAY </label></td>
												<td><img
													src="https://cdn.haitrieu.com/wp-content/uploads/2022/10/Icon-VNPAY-QR.png"
													style="height: 30px;"></td>
											</tr>
										</tbody>

									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Đóng</button>
									<button type="button" class="btn btn-primary">Cập nhật</button>
								</div>
							</div>
						</div>
					</div>
				</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<table class="table table-hover"
				style="border-collapse: collapse; border-bottom: white;">
				<thead>
					<tr style="border-top: white;">
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td style="text-align: right; color: #7e847e;">Tổng tiền hàng
						</td>
						<td></td>
						<td></td>
						<td style="text-align: center;"><fmt:formatNumber>${total}</fmt:formatNumber><sup>đ</sup></td>
					</tr>
				</thead>
				<tbody>
					<tr style="border-top: white;">
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td style="text-align: right; color: #7e847e;">Phí vận chuyển
						</td>
						<td></td>
						<td></td>
						<td style="text-align: center;"><fmt:formatNumber>${service_fee}</fmt:formatNumber><sup>đ</sup></td>
					</tr>
				</tbody>
				</tr>
				</tbody>
				<tfoot>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td style="text-align: right; color: #7e847e;">Tổng thanh
							toán</td>
						<td></td>
						<td></td>
						<c:set var ="total" value = "${total+service_fee}"></c:set>
						<td style="color: green; text-align: center;">
							<h4><fmt:formatNumber>${total}</fmt:formatNumber><sup>đ</sup></h4> 
						</td>
						<td></td>
					</tr>
				</tfoot>
			</table>
			<button
				style="background-color: green; color: white; height: 40px; width: 250px; margin-left: 910px; margin-bottom: 60px;">Đặt
				hàng</button>
		</table>
	</div>

	<!-- Modal cập nhật -->
	<div class="modal fade" id="exampleModal2" tabindex="-1"
		aria-labelledby="exampleModalLabel2" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel2">Cập nhật địa
						chỉ</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="col-md-12">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput"> Số
								điện thoại </label>
						</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput">Địa
								chỉ (tùy chọn)</label>
						</div>
						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Tỉnh
										thành </strong></option>
								<option value="1">An Giang</option>
							</select>
						</div>
						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Quận
										huyện (tùy chọn) </strong></option>
								<option value="1">Ninh Kiều</option>
								<option value="2">Cái Răng</option> /
								<select>
						</div>

						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Phường
										xã (tùy chọn) </strong></option>
								<option value="1">An Bình</option>
								<option value="2">An Cư</option> /
								<select>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-secondary"
							data-bs-dismiss="modal">Đóng</button>
						<button type="button" class="btn btn-outline-success">Cập
							nhật</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal cập nhật -->
	<div class="modal fade" id="exampleModal3" tabindex="-1"
		aria-labelledby="exampleModalLabel3" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel3">Cập nhật địa
						chỉ</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="col-md-12">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput"> Số
								điện thoại </label>
						</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput">Địa
								chỉ (tùy chọn)</label>
						</div>
						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Tỉnh
										thành </strong></option>
								<option value="1">An Giang</option>
							</select>
						</div>
						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Quận
										huyện (tùy chọn) </strong></option>
								<option value="1">Ninh Kiều</option>
								<option value="2">Cái Răng</option> /
								<select>
						</div>

						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Phường
										xã (tùy chọn) </strong></option>
								<option value="1">An Bình</option>
								<option value="2">An Cư</option> /
								<select>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-secondary"
							data-bs-dismiss="modal">Đóng</button>
						<button type="button" class="btn btn-outline-success">Cập
							nhật</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal thêm địa chỉ mới -->
	<div class="modal fade" id="exampleModal6" tabindex="-1"
		aria-labelledby="exampleModalLabel6" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel6">Thêm địa chỉ
						mới</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="col-md-12">
						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="floatingInput"
								placeholder="name@example.com"> <label
								for="floatingInput">Email (tùy chọn)</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput">Họ và
								tên</label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput"> Số
								điện thoại </label>
						</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInput"
								placeholder=""> <label for="floatingInput">Địa
								chỉ (tùy chọn)</label>
						</div>

						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Tỉnh
										thành </strong></option>
								<option value="1">An Giang</option>
							</select>
						</div>

						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Quận
										huyện (tùy chọn) </strong></option>
								<option value="1">Ninh Kiều</option>
								<option value="2">Cái Răng</option> /
								<select>
						</div>

						<div style="padding-top: 20px;">
							<select class="form-select" aria-label="Default select example">
								<option selected style="font: 300;"><strong>Phường
										xã (tùy chọn) </strong></option>
								<option value="1">An Bình</option>
								<option value="2">An Cư</option> /
								<select>
						</div>

						<div class="form-floating mb-3" style="padding-top: 20px;">
							<textarea class="form-control" placeholder="Leave a comment here"
								id="floatingTextarea2" style="height: 100px"></textarea>
							<label for="floatingTextarea2">Ghi chú (nếu có)</label>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary"
						data-bs-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-outline-success">Hoàn
						Thành</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>