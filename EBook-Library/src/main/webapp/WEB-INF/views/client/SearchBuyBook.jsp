<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">




</head>
<body>
	<link rel="stylesheet" href="/assets/css/SearchBuyBook.css">


	<span class="top-bg-op-box"
		style="background-image: url(&quot;https://static.cdnno.com/storage/topbox/15d256d4071bbb3d0dd2a38cf1af8e5a.webp&quot;); position: absolute; z-index: 0; left: 0px; overflow: hidden; width: 100%; height: 388px; background-repeat: no-repeat; background-position: 50% 0px; background-size: cover;"></span>
	<div style="height: 280px;"></div>
	<main class="main pb-4 container">
		<div class="Panel1 row">
			<article class="col-md-3">
				<!-- <h4>BỘ LỌC TÌM KIẾM</h4> -->
				<div class="find">
					<div class="find-title">Thể loại</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="TLSKG">
						<label class="form-check-label" for="TLSKG"> Sách giáo
							khoa </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="TLTruyen">
						<label class="form-check-label" for="TLTruyen"> Truyện
							trang </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="TLDeThi">
						<label class="form-check-label" for="TLDeThi"> Tổng hợp đề
							thi THPTQG </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="TLIT">
						<label class="form-check-label" for="TLIT"> Sách lập trình
						</label>
					</div>
				</div>
				<div class="find">
					<div class="find-title">Nơi bán</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="NBHCM">
						<label class="form-check-label" for="NBHCM"> Hồ Chí Minh </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="NBCanTho">
						<label class="form-check-label" for="NBCanTho"> Cần Thơ </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="NBDaNang">
						<label class="form-check-label" for="NBDaNang"> Đà Nẵng </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="NBHaNoi">
						<label class="form-check-label" for="NBHaNoi"> Hà Nội </label>
					</div>
					<div>
						<p class="text-secondary text-center">Xem thêm</p>
					</div>
				</div>

				<div class="find">
					<div class="find-title">Giá bán</div>
					<div class="mb-3 form-group">
						<label for="giatu" class="form-label">Giá từ (VNĐ)</label> <input
							type="number" class="form-control" id="giatu" placeholder="">
					</div>
					<div class="mb-3 form-group">
						<label for="giaden" class="form-label">Đến (VNĐ)</label> <input
							type="number" class="form-control" id="giaden" placeholder="">
					</div>

					<div align="center">
						<button class="btn btn-outline-success" style="padding: 5px 20px;">Áp
							dụng</button>
					</div>
				</div>
				<div class="find">
					<div class="find-title">Đánh giá</div>
					<div class="form-check">
						<input class="form-check-input" name="starRadio" type="radio"
							id="starRadio5"> <label class="form-check-label"
							for="starRadio5"> <span class="active"
							style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
						</span>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" name="starRadio" type="radio"
							id="starRadio4"> <label class="form-check-label"
							for="starRadio4"> <span class="active"
							style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill"></i> Trở lên
						</span>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" name="starRadio" type="radio"
							id="starRadio3"> <label class="form-check-label"
							for="starRadio3"> <span class="active"
							style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> Trở
								lên
						</span>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" name="starRadio" type="radio"
							id="starRadio2"> <label class="form-check-label"
							for="starRadio2"> <span class="active"
							style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
								class="bi bi-star-fill"></i> Trở lên
						</span>
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" name="starRadio" type="radio"
							id="starRadio1"> <label class="form-check-label"
							for="starRadio1"> <span class="active"
							style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> <i
								class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i> Trở
								lên
						</span>
						</label>
					</div>
				</div>
				<div align="center">
					<button class="btn btn-outline-success" style="padding: 5px 50px;">Lọc</button>
				</div>
			</article>
			<aside class="col-md-9 row justify-content-center">
				<div class="col-md-12 arrange">
					<p>Sắp xếp theo</p>
					<button>Giá bán</button>
					<button>Lượt mua</button>
					<button>Mới nhất</button>
					<div class="numberPage">1/12</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Sản phẩm -->
				<div class="col-md-4 SP">
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
								<button class="col-md-6 btn btn-outline-danger">Mua
									Ngay</button>
								<div class="col-md-6 ">
									<i class="bi bi-heart-fill heard"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="btn-toolbar justify-content-center" role="toolbar"
					aria-label="Toolbar with button groups">
					<div class="btn-group me-2" role="group" aria-label="First group">
						<button type="button" class="btn btn-outline-success">...</button>
						<button type="button" class="btn btn-outline-success">1</button>
						<button type="button" class="btn btn-outline-success">2</button>
						<button type="button" class="btn btn-outline-success">3</button>
						<button type="button" class="btn btn-outline-success">4</button>
						<button type="button" class="btn btn-outline-success">5</button>
						<button type="button" class="btn btn-outline-success">...</button>
					</div>
				</div>
			</aside>
		</div>
	</main>

	<script src="/assets/js/sanPham.js"></script>
</body>
</html>