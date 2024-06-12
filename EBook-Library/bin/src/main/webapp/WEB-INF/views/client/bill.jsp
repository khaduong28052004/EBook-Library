<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill</title>

</head>
<body>
	<link rel="stylesheet" href="/assets/css/bill.css">
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
					<a class="activeMenu2" href="/Ebook/account/bill">Đơn Hàng</a>
				</nav>
			</aside>
			<aside class="col-md-10">
				<div class="row">
					<div class="col-9 menuNgangNe">
						<div class="nav navbar">
							<li class="nav-item"><a class="nav-linkMenu" id="tatCa"
								aria-current="page" href="#">Tất cả</a></li>
							<li class="nav-item"><a class="nav-linkMenu" id="vanChuyen"
								aria-current="page" href="#">Vận chuyển</a></li>
							<li class="nav-item"><a class="nav-linkMenu"
								id="choGiaoHang" aria-current="page" href="#">Chờ giao hàng</a>
							</li>
							<li class="nav-item"><a class="nav-linkMenu" id="hoanThanh"
								aria-current="page" href="#">Hoàn thành</a></li>
							<li class="nav-item"><a class="nav-linkMenu" id="daHuy"
								aria-current="page" href="#">Đã hủy</a></li>
							<li class="nav-item"><a class="nav-linkMenu " id="traHang"
								aria-current="page" href="#">Trả hàng/Hoàn tiền</a></li>
						</div>
					</div>
				</div>
				<div style="height: 50px;"></div>
				<div class="card">
					<div class="card-header">
						<p class="tenNguoiBan">
							<img width="24px" height="24px" src="/assets/img/icon/user.png"
								alt=""> <span>Bạch Ngọc Sách</span>
						</p>

						<p class="noiDungPhai">
							<span class="trangThai">Đơn hàng đã được giao thành công</span> |
							<span class="danhGia">ĐÁNH GIÁ</span>
						</p>
					</div>
					<div class="card-body">
						<div class="list-book">
							<div class="book">
								<img src="/assets/img/books/Truyen/NhanThuong.jpg" alt="">
								<div class="book-content">
									<a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

									<div class="content">Nguyễn Thanh Tùng đứng trước chiếc
										cúp danh giá nhất của làng túc cầu Thế...</div>
									<div class="row info">
										<div class="col-6 info-book">
											<p class="gia">300.000đ</p>
											<p class="soLuong">x1</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="chucNang">
							<p class="thanhTien">
								<span class="soLuong">Thành tiền:</span> <span class="gia">340.000đ</span>
							</p>
							<button type="button" class="btn btn-outline-secondary">Huỷ
								Đơn</button>
							<button type="button" class="btn btn-danger">Mua lại</button>
							<button type="button" class="btn btn-light">Liên hệ
								người bán</button>
							<button type="button" class="btn btn-light">Xem đánh giá
								shop</button>
						</div>
					</div>
				</div>


				<div class="card">
					<div class="card-header">
						<p class="tenNguoiBan">
							<img width="24px" height="24px" src="/assets/img/icon/user.png"
								alt=""> <span>Bạch Ngọc Sách</span>
						</p>

						<p class="noiDungPhai">
							<span class="trangThai">Đơn hàng đã được giao thành công</span> |
							<span class="danhGia">ĐÁNH GIÁ</span>
						</p>
					</div>
					<div class="card-body">
						<div class="list-book">
							<div class="book">
								<img src="/assets/img/books/Truyen/NhanThuong.jpg" alt="">
								<div class="book-content">
									<a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

									<div class="content">Nguyễn Thanh Tùng đứng trước chiếc
										cúp danh giá nhất của làng túc cầu Thế...</div>
									<div class="row info">
										<div class="col-6 info-book">
											<p class="gia">300.000đ</p>
											<p class="soLuong">x1</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="chucNang">
							<p class="thanhTien">
								<span class="soLuong">Thành tiền:</span> <span class="gia">340.000đ</span>
							</p>
							<button type="button" class="btn btn-outline-secondary">Huỷ
								Đơn</button>
							<button type="button" class="btn btn-danger">Mua lại</button>
							<button type="button" class="btn btn-light">Liên hệ
								người bán</button>
							<button type="button" class="btn btn-light">Xem đánh giá
								shop</button>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-header">
						<p class="tenNguoiBan">
							<img width="24px" height="24px" src="/assets/img/icon/user.png"
								alt=""> <span>Bạch Ngọc Sách</span>
						</p>

						<p class="noiDungPhai">
							<span class="trangThai">Đơn hàng đã được giao thành công</span> |
							<span class="danhGia">ĐÁNH GIÁ</span>
						</p>
					</div>
					<div class="card-body">
						<div class="list-book">
							<div class="book">
								<img src="/assets/img/books/Truyen/NhanThuong.jpg" " alt="">
								<div class="book-content">
									<a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

									<div class="content">Nguyễn Thanh Tùng đứng trước chiếc
										cúp danh giá nhất của làng túc cầu Thế...</div>
									<div class="row info">
										<div class="col-6 info-book">
											<p class="gia">300.000đ</p>
											<p class="soLuong">x1</p>
										</div>
									</div>
								</div>
							</div>

							<div class="book">
								<img src="/assets/img/books/Truyen/NhanThuong.jpg" alt="">
								<div class="book-content">
									<a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

									<div class="content">Nguyễn Thanh Tùng đứng trước chiếc
										cúp danh giá nhất của làng túc cầu Thế...</div>
									<div class="row info">
										<div class="col-6 info-book">
											<p class="gia">300.000đ</p>
											<p class="soLuong">x1</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer">
						<div class="chucNang">
							<p class="thanhTien">
								<span class="soLuong">Thành tiền:</span> <span class="gia">640.000đ</span>
							</p>
							<button type="button" class="btn btn-outline-secondary">Huỷ
								Đơn</button>
							<button type="button" class="btn btn-danger">Mua lại</button>
							<button type="button" class="btn btn-light">Liên hệ
								người bán</button>
							<button type="button" class="btn btn-light">Xem đánh giá
								shop</button>
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