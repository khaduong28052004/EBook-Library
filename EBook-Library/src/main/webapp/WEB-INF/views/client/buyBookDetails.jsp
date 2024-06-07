<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link rel="stylesheet" href="/assets/css/BuyBookDetails.css">

	<span class="top-bg-op-box"
		style="background-image: url(&quot;https://static.cdnno.com/storage/topbox/15d256d4071bbb3d0dd2a38cf1af8e5a.webp&quot;); position: absolute; z-index: 0; left: 0px; overflow: hidden; width: 100%; height: 388px; background-repeat: no-repeat; background-position: 50% 0px; background-size: cover;"></span>
	<div style="height: 280px;"></div>
	<main class="container shadow-sm p-3 mb-5 bg-body-tertiary rounded">
		<div class=" panel1 row">
			<article class="col-md-3">
				<div class="bigImg">
					<img id="imgActive"
						src="https://thuvienhoasen.org/images/file/SFO5nWNm2ggBAmBH/hat-giong-tam-hon.png"
						alt="">
				</div>
				<div class="smallImg">
					<img class="imgItem"
						src="https://thuvienhoasen.org/images/file/SFO5nWNm2ggBAmBH/hat-giong-tam-hon.png"
						alt=""> <img class="imgItem"
						src="https://salt.tikicdn.com/cache/w300/ts/product/a9/76/5a/f2abb1973b7bbe22f4bcb7c1dfd3f86d.jpg"
						alt=""> <img class="imgItem"
						src="https://down-vn.img.susercontent.com/file/73f7a15b46f699b03d9fa3c8de733f1c"
						alt=""> <img class="imgItem"
						src="https://product.hstatic.net/200000408481/product/1234_892c40cda53d4cbc851896f69b4a692b_grande.jpg"
						alt="">
				</div>
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body row">
								<div id="carouselExampleControlsNoTouching"
									class="carousel slide  col-md-6" data-bs-touch="false">
									<div class="carousel-inner">
										<div class="carousel-item active">
											<img src="" class=" imgSlide d-block w-100" alt="...">
										</div>
										<div class="carousel-item">
											<img src="" class="imgSlide d-block w-100" alt="...">
										</div>
										<div class="carousel-item">
											<img src="" class="imgSlide d-block w-100" alt="...">
										</div>
										<div class="carousel-item">
											<img src="" class="imgSlide d-block w-100" alt="...">
										</div>
									</div>
									<button class="carousel-control-prev" type="button"
										data-bs-target="#carouselExampleControlsNoTouching"
										data-bs-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Previous</span>
									</button>
									<button class="carousel-control-next" type="button"
										data-bs-target="#carouselExampleControlsNoTouching"
										data-bs-slide="next">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Next</span>
									</button>
								</div>
								<div class="SlideImg col-md-6 row">
									<div class="show-item col-md-3">
										<img src="" class="imgShowSlide d-block" alt="...">
									</div>
									<div class="show-item col-md-3">
										<img src="" class="imgShowSlide d-block" alt="...">
									</div>
									<div class="show-item col-md-3">
										<img src="" class="imgShowSlide d-block " alt="...">
									</div>
									<div class="show-item col-md-3">
										<img src="" class="imgShowSlide d-block" alt="...">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
			<aside class="col-md-9">
				<div class="panel-title row">
					<div class="title col-md-10">
						<p>Hạt giống tâm hồn</p>
					</div>
					<div class="col-md-2" style="margin-top: 20px;">
						<span id="tym" style="font-size: 1.5rem; margin-right: 20px;"><i
							class="bi bi-suit-heart-fill"></i></span> <span id="share"
							style="font-size: 1.8rem;" data-bs-toggle="modal"
							data-bs-target="#staticBackdrop"> <i
							class="bi bi-reply-all-fill"></i>
						</span>

						<!-- Modal -->
						<div class="modal fade" id="staticBackdrop"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5 text-center"
											id="staticBackdropLabel">SHARE</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body" style="margin: 10px;">
										<div class="mb-3" style="margin-bottom: 10px;">
											<p>Hãy chia sẽ những quyển sách hay đến bạn bè.</p>
										</div>
										<div class="mb-3">
											<label for="formGroupExampleInput1" class="form-label">Vui
												lòng nhập gmail</label> <input type="email"
												class="form-control border-primary"
												id="formGroupExampleInput1">
										</div>
										<div class="mb-3">
											<label for="formGroupExampleInput2" class="form-label">Vui
												lòng nhập nội dung gửi</label>
											<textarea name="" class="form-control border-primary"
												id="formGroupExampleInput2"></textarea>
										</div>
									</div>
									<div class="modal-footer ">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button data-bs-dismiss="modal" type="button"
											class="btn btn-primary">share</button>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="body">
					<div class="bodyPanle1 row">
						<div class="col-md-2">
							<p style="border-right: 1px solid gray;">
								4.2 <i class="bi bi-star-fill text-warning"></i>
							</p>
						</div>
						<div class="col-md-3">
							<p
								style="border-right: 1px solid gray; align-items: center; text-align: center;">120
								lượt đánh giá</p>
						</div>
						<div class="col-md-7">
							<p>đã bán 1</p>
						</div>
					</div>
					<!-- <hr> -->
					<div class="bodyPanle2">
						<p>230.000 VNĐ</p>
					</div>
					<div class="bodyPanle3 row">
						<p class="title col-md-1">
							<strong>Tình trạng: </strong>
						</p>
						<div class="checked col-md-11">
							<i class="bi bi-check-lg"></i>&emsp13;Còn hàng
						</div>
					</div>
					<div class="bodyPanle4">
						<label for="sl" class="title"><strong>Số lượng: </strong></label>
						<div class="btn-group me-2" role="group" aria-label="First group">
							<button type="button" class="btn btn-outline-secondary"
								onclick="decreaseValue()">-</button>
							<input type="number" style="width: 60px;"
								class="btn-outline-secondary text-center" name="btnradio"
								id="btnradio1" min="1" value="1">
							<button type="button" class="btn btn-outline-secondary"
								onclick="increaseValue()">+</button>
						</div>
					</div>
					<div class="footer">
						<li
							class="d-inline-block bg-success border border-success px-5 py-2 rounded-5 mr-2 mb-2"
							style="margin-right: 15px;"><a href="#"
							class="cursor-pointer text-light text-decoration-none font-weight-semibold d-flex justify-content-center">
								<i class="bi bi-basket-fill"></i> &emsp14; Mua ngay
						</a></li>
						<li
							class="d-inline-block bg-danger border border-danger px-5 py-2 rounded-5 mr-2 mb-2">
							<a href="#"
							class="cursor-pointer text-light text-decoration-none font-weight-semibold d-flex justify-content-center">
								<i class="bi bi-cart4"></i> &emsp14; Thêm vào giỏ hàng
						</a>
						</li>
					</div>
			</aside>
		</div>
		<div class="panel2 row">
			<div class="col-md-1">
				<img class="rounded-5" src="/assets/img/account/anh1.jpg" alt=""
					width="80%">
			</div>
			<div class="col-md-11">
				<p>An an shop</p>
				<button class="btn btn-danger">Chat ngay</button>
				<button class="btn btn-success">Xem shop</button>
			</div>
		</div>
		<div class="panel3">
			<div class="slider-container">
				<div class="slider">
					<!-- Sản phẩm -->
					<div class="card cardMoi SP">
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
					<!-- Sản phẩm -->
					<div class="card cardMoi SP">
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
					<!-- Sản phẩm -->
					<div class="card cardMoi SP">
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

					<!-- Sản phẩm -->
					<div class="card cardMoi SP">
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
					<!-- Sản phẩm -->
					<div class="card cardMoi SP">
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
			</div>
		</div>
		<div class="panel4 row">
			<div class="title">
				<p>Thông tin sản phẩm</p>
			</div>
			<div class="body row">
				<article class="col-md-2">
					<p>Mã hàng:</p>
					<p>Tên sách:</p>
					<p>Số lượng kho còn:</p>
					<p>Thể loại:</p>
					<p>Tên nhà cung cấp:</p>
					<p>Tác giả:</p>
					<p>Nhà xuất bản:</p>
					<p>Ngày đăng bán:</p>
					<p>Mô tả:</p>
				</article>
				<aside class="col-md-10">
					<p>8935210305497</p>
					<p>Hạt giống tâm hồn</p>
					<p>12</p>
					<p>Cuộc sống và tâm hồn</p>
					<p>Tân Việt</p>
					<p>Nguyễn Văn Phước</p>
					<p>Thanh Niên</p>
					<p>15/5/2024</p>
					<p>bìa cứng</p>
				</aside>
			</div>
		</div>
		<div class="panel5 ">
			<div class="title">
				<p>ĐÁNH GIÁ SẢN PHẨM</p>
			</div>
			<div class="header row">
				<article class="col-md-2">
					<p>4.9/5</p>
					<div class="star">
						<span class="active" style="width: 100%;"> <i
							class="bi bi-star-fill text-warning"></i> <i
							class="bi bi-star-fill text-warning"></i> <i
							class="bi bi-star-fill text-warning"></i> <i
							class="bi bi-star-fill text-warning"></i> <i
							class="bi bi-star-fill text-warning"></i>
						</span>
					</div>
				</article>
				<aside class="col-md-10">
					<a href="#1" class="DG-link" id="all">Tất cả</a> <a href="#2"
						class="DG-link">5 sao</a> <a href="#3" class="DG-link">4 sao</a> <a
						href="#4" class="DG-link">3 sao</a> <a href="#5" class="DG-link">2
						sao</a> <a href="#6" class="DG-link">1 sao</a>
				</aside>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="GDAnh">
							<div class="GDAnhItems">
								<img
									src="https://ghiensach.com/wp-content/uploads/2021/09/sach-ve-cuoc-song.jpg"
									alt="" height="100px">
							</div>
							<div class="GDAnhItems">
								<img
									src="https://ghiensach.com/wp-content/uploads/2021/09/sach-ve-cuoc-song.jpg"
									alt="" height="100px">
							</div>
							<div class="GDAnhItems">
								<img
									src="https://ghiensach.com/wp-content/uploads/2021/09/sach-ve-cuoc-song.jpg"
									alt="" height="100px">
							</div>
							<div class="GDAnhItemsLast">
								<img
									src="https://ghiensach.com/wp-content/uploads/2021/09/sach-ve-cuoc-song.jpg"
									alt="" height="100px">
							</div>
						</div>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="GDAnh">
							<div class="GDAnhItems">
								<img
									src="https://ghiensach.com/wp-content/uploads/2021/09/sach-ve-cuoc-song.jpg"
									alt="" height="100px">
							</div>
						</div>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="danhgia">
				<!-- Cmt -->
				<div class="cmt row">
					<div class="avatar col-md-1">
						<img src="/assets/img/account/anh1.jpg" alt="" class="rounded-5"
							width="45px" height="45px">
					</div>
					<div class="nd col-md-11">
						<h6 class="title fw-bold">Thanh Thanh</h6>
						<div class="star">
							<span class="active" style="width: 100%;"> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i> <i
								class="bi bi-star-fill text-warning"></i>
							</span>
						</div>
						<p class="text-secondary fw-6">
							<i class="bi bi-clock"></i> 15-05-2024 &emsp13;| sản phẩm: sách
							Hạt giống tâm hồn
						</p>
						<p class="content">
							<span class="text-secondary">chất lượng sản phẩm: </span><span>Tốt</span>
						</p>
						<p class="content">
							<span class="text-secondary">Đúng với thông tin sản phẩm:
							</span><span>Đúng ạ</span>
						</p>

						<p class="ndcmt">Đóng gói kỉ lưỡng.</p>
						<div class="phanhoi">
							<p>Phản hồi của người bán</p>
							<p class="text-secondary">Chúng tôi đã nhận được đánh giá tốt
								của bạn, chúng tôi rất vinh dự khi nhận được sự khẳng định của
								bạn và rất mong được phục vụ bạn một lần nữa.</p>
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
		</div>
	</main>
	<script src="/assets/js/BuyBookDetails.js"></script>
</body>
</html>