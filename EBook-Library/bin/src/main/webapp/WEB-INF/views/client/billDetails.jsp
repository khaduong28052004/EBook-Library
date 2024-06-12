<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill Details</title>

</head>

<body>
	<link rel="stylesheet" href="/assets/css/billDetails.css">
	<main class="container" style="margin: 0px; max-width: 2000px;">
		<div class="row">
			<aside class="col-md-2">
				<nav class="vertical-menu">
					<div class="menu-item">
						<a class="text-nav" href="javascript:void(0);"
							onclick="toggleSubmenu()">Thông Tin Cá Nhân</a>
						<div class="submenu">
							<a class="text-subnav" href="/Ebook/account/updateProfile">Xem
								Hồ Sơ</a> <a class="text-subnav" href="/Ebook/account/banks">Ngân
								Hàng</a>
						</div>
					</div>
					<a class="activeMenu2" href="/account/bill">Đơn Hàng</a>
				</nav>
			</aside>
			<aside class="col-md-10">
				<div class="row">
					<div class="col-12 menuNgangNe">
						<div class="nav navbar">
							<div class="card-header headerTrangThai"
								style="background-color: white;">
								<a href="/Ebook/account/bill"><p class="tenNguoiBan"
										style="color: black" /> <img width="24" height="24"
									src="https://img.icons8.com/ios/50/back--v1.png" alt="back--v1"
									alt="left-squared"> Trở lại
									</p></a>
								<p class="noiDungPhai">
									<span class="trangThai">MÃ ĐƠN HÀNG: 2307261DPW87TD</span> | <span
										class="danhGia">ĐƠN HÀNG ĐÃ HOÀN THÀNH</span>
								</p>
							</div>
						</div>
					</div>
				</div>
		<!-- 		<div style="height: 70px;"></div> -->

				<div class="circle-container">
					<div class="circle">
						<img width="36" height="36" src="/assets/img/icon/bill.png"
							alt="bill" />
						<div class="text">
							<p>Đơn Hàng Đã Đặt</p>
							<p class="ngay">12:00 01/01/2024</p>
						</div>
					</div>
					<div class="circle">
						<img width="36" height="36" src="/assets/img/icon/tick.png"
							alt="bill" />
						<div class="text">
							<p>Đang Chờ Đơn Vị Vận Chuyển</p>
							<p class="ngay">13:00 01/01/2024</p>
						</div>
					</div>
					<div class="circle">
						<img width="36" height="36" src="/assets/img/icon/truck.png"
							alt="bill" />
						<div class="text">
							<p>Đã Giao Cho Đơn Vị Vận Chuyển</p>
							<p class="ngay">16:00 01/01/2024</p>
						</div>
					</div>
					<div class="circle">
						<img width="36" height="36" src="/assets/img/icon/box.png"
							alt="bill" />
						<div class="text">
							<p>Đã Nhận Được Hàng</p>
							<p class="ngay">23:00 02/01/2024</p>
						</div>
					</div>
					<div class="circle">
						<img width="36" height="36" src="/assets/img/icon/star.png"
							alt="bill" />
						<div class="text">
							<p>Đơn Hàng Đã Hoàn Thành</p>
							<p class="ngay">6:00 03/01/2024</p>
						</div>
					</div>
				</div>

				<div class="container-muaBanh">
					<div class="card cardMuaBanh">
						<div class="card-body row">
							<div class="col-md-6" style="font-weight: 150;">Cảm ơn bạn
								đã mua sắm tại VirtualLibaryWeb!</div>
							<div class="col-md-6">
								<button type="button" class="btn btn-danger">Mua Lại</button>
							</div>
						</div>
					</div>
					<div class="card cardMuaBanh">
						<div class="card-body row">
							<div class="col-md-6" style="font-weight: 150;">Cảm ơn bạn
								đã mua sắm tại VirtualLibaryWeb!</div>
							<div class="col-md-6">
								<button type="button" class="btn btn-danger">Hủy Đơn</button>
							</div>
						</div>
					</div>
					<div class="card cardMuaBanh">
						<div class="card-body row">
							<div class="col-md-6"></div>
							<div class="col-md-6">
								<button type="button" class="btn btn-light">Liên Hệ
									Người Bán</button>
							</div>
						</div>
					</div>

					<div class="card cardMuaBanh">
						<div class="card-body row">
							<div class="col-md-6"></div>
							<div class="col-md-6">
								<button type="button" class="btn btn-light">Xem Đáng
									Giá Shop</button>
							</div>
						</div>
					</div>
				</div>

				<div class="container-vanChuyen">
					<div class="card card-vanChuyen">
						<div class="card-body row">
							<p class="title-diaChi">Địa Chỉ Nhận Hàng</p>
							<div class="col-md-4">

								<p class="nguoiNhan">Nguyễn Văn Tèo</p>
								<p class="soDienThoai">(+84)839093743</p>
								<p class="diaChi">Ấp 3B, Xã Đạo Thành, Đạo Thạnh, Thành phố
									Mỹ Tho, Tiền Giang, Việt Nam</p>
							</div>
							<div class="col-md-8"
								style="border-left: solid 1px rgb(171, 171, 171);">
								<table class="table table-vanChuyen">
									<thead>
										<tr>
											<td scope="col"><img width="24" height="24"
												src="/assets/img/icon/tick.png" alt="bill" /></td>
											<td scope="col">17:15 30-07-2023</td>
											<td scope="col"><span class="trangThai-vanChuyen">Đã
													giao</span> Đơn hàng đã được giao thành công Người nhận hàng:
												Nguyễn Văn Tèo...</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><img width="24" height="24"
												src="/assets/img/icon/tick.png" alt="bill" /></td>
											<td>09:25 30-07-2023</td>
											<td><span class="trangThai-vanChuyen">Đang giao
													hàng</span> Đơn hàng đang trên đường giao đến bạn</td>
										</tr>
										<tr>
											<td><img width="24" height="24"
												src="/assets/img/icon/tick.png" alt="bill" /></td>
											<td>15:08 26-07-2023</td>
											<td><span class="trangThai-vanChuyen">Đang được
													chuẩn bị</span> Người bán đang chuẩn bị hàng</td>
										</tr>
										<tr>
											<td><img width="24" height="24"
												src="/assets/img/icon/tick.png" alt="bill" /></td>
											<td>12:38 26-07-2023</td>
											<td><span class="trangThai-vanChuyen">Đặt hàng
													thành công</span> Đơn hàng đã được đặt</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="card cardProduct">
					<div class="card-header cardProduct-header">
						<p class="tenNguoiBan">
							<img width="24px" height="24px" src="/assets/img/icon/user.png"
								alt=""> <span>Bạch Ngọc Sách</span>
						</p>
					</div>
					<div class="card-body cardProduct-body">
						<div class="list-book">
							<div class="book">
								<img src="/assets/img/books/Truyen/NhanThuong.jpg" alt="">
								<div class="book-content">
									<a href="">Ngôi Sao Hy Vọng</a>

									<div class="content">Nguyễn Thanh Tùng đứng trước chiếc
										cúp danh giá nhất của làng túc cầu Thế...</div>
									<div class="row info">
										<div class="col-6 info-book">
											<a class="rating-container" href="/Ebook/user/evaluate"
												style="color: yellow; font-size: 10px;"> <span
												class="star" data-value="1"><i
													class="fa-solid fa-star"></i></span> <span class="star"
												data-value="2"><i class="fa-solid fa-star"></i></span> <span
												class="star" data-value="3"><i
													class="fa-solid fa-star"></i></span> <span class="star"
												data-value="4"><i class="fa-solid fa-star"></i></span> <span
												class="star" data-value="5"><i
													class="fa-solid fa-star"></i></span>
											</a>
											<p class="gia">300.000đ</p>
											<p class="soLuong">x1</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="container-Gia">
					<div class="card cardGia">
						<div class="card-body row">
							<div class="col-md-8 text1">Tổng tiền hàng</div>
							<div class="col-md-4 text2">300.000đ</div>
						</div>
					</div>
					<div class="card cardGia">
						<div class="card-body row">
							<div class="col-md-8 text1">Phí vận chuyển</div>
							<div class="col-md-4 text2">56.000đ</div>
						</div>
					</div>
					<div class="card cardGia">
						<div class="card-body row">
							<div class="col-md-8 text1">Voucher sản phẩm</div>
							<div class="col-md-4 text2">-6.000đ</div>
						</div>
					</div>
					<div class="card cardGia">
						<div class="card-body row">
							<div class="col-md-8 text1">Thành tiền</div>
							<div class="col-md-4 text2 thanhTien">350.000đ</div>
						</div>
					</div>
					<div class="card cardGia">
						<div class="card-body row">
							<div class="col-md-8 text1">Phương thức thanh toán</div>
							<div class="col-md-4 text2">Thanh toán khi nhận hàng</div>
						</div>
					</div>
				</div>

			</aside>
		</div>
	</main>

	<script type="text/javascript">
		
	<%@include file="/assets/js/donHang.js"%>
		function toggleSubmenu() {
			var menuItem = document.querySelector('.menu-item');
			if (menuItem) {
				menuItem.classList.toggle('open');
			}
		}
	</script>
</body>
</html>