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
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<style type="text/css">
<%@ include file="/views/css/home.css"%></style>
	    <script src="/js/sanPham.js"></script>
	
</head>
<body>
	<%@include file="/views/layout/common/header.jsp"%>
	<link rel="stylesheet" href="/views/css/storeHome.css">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4">
						<div class="introduce">
							<div class="introduce-store">
								<img src="/views/img/banner/BooksDetails_banner_HocTap1.jpg"
									alt="">
								<div class="nameStore">
									<h5>Kha Dương</h5>
									<p>Uy tín chất lượng hàng đầu, ngon bổ rẻ hơn những thương
										hiệu khác.</p>
								</div>

							</div>
							<div class="subscribe-message">
								<div class="subscribe">
									<a href="">Theo dõi</a>
								</div>
								<div class="message">
									<a href="">Nhắn tin</a>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="sales-information">
							<div class="row-1">
								<div class="row">
									<div class="col-md-6">
										<p>
											Sản phẩm : <span>100</span>
										</p>
									</div>
									<div class="col-md-6">
										<p>
											Người theo dõi : <span>971,5k</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row-2">
								<div class="row">
									<div class="col-md-6">
										<p>
											Đang theo dõi : <span>1</span>
										</p>
									</div>
									<div class="col-md-6">
										<p>
											Đánh giá : <span>511,5k</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row-3">
								<div class="row">
									<div class="col-md-6">
										<p>
											Trạng thái kinh doanh : <span>Còn</span>
										</p>
									</div>
									<div class="col-md-6">
										<p>
											Tham gia : <span>28-11-2018</span>
										</p>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>

			</div>
			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Sản phẩm -->
			<div class="col-md-3 SP">
				<div class="card">
					<div class="image-container">
						<img class="rounded-3 default-img"
							src="https://us.tiemmot.com/cdn/shop/products/2188a7bcb19258d6559bd6174f93e78c.jpg?v=1627640338"
							alt="Title" width="100%" height="" /> <img class=" rounded-3"
							src="https://tiki.vn/blog/wp-content/uploads/2023/08/phan-4-dac-nhan-tam-1024x1024.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://sachxua.vn/wp-content/uploads/2020/01/sung-vi-trung-thep-sach-ls.jpg"
							alt="Title" width="100%" height="300px" /> <img
							class=" rounded-3"
							src="https://salt.tikicdn.com/cache/w1200/ts/product/d2/c1/38/9dbdcc20f9f122e23582eb6d455b622a.jpg"
							alt="Title" width="100%" height="300px" />
					</div>
					<div class="card-body">
						<h5 class="card-title">Đắc nhân tâm</h5>
						<h5 class="card-text textOranger">100.000 VNĐ</h5>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span> <span class="d-inline-block ml-2">Đã bán 120</span>
						</div>
						<div class="row">
							<button class="col-md-6 btn btn-outline-danger">Mua Ngay</button>
							<div class="col-md-6 ">
								<i class="bi bi-heart-fill heard"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/layout/common/footer.jsp"%>
</body>
</html>