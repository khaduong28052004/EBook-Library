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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

</head>
<body>
	<link rel="stylesheet" href="/templates/clients/plugins/css/evaluate.css">
	<script type="text/javascript" src="/views/js/evaluate.js"></script>
	<main class="container" style="margin: 0px; max-width: 2000px;">
		<div class="row">
			<div class="col-9 menuNgangNe">
				<div class="nav navbar">
					<div class="card-header headerTrangThai"
						style="background-color: white;">
						<p class="tenNguoiBan">
							<img width="30" height="30"
								src="https://img.icons8.com/ios/50/back--v1.png" alt="back--v1"
								alt="left-squared" /> Đánh giá sản phẩm
						</p>
						<p class="noiDungPhai">
							<button type="submit" class=" btn btn-danger trangThai"
								data-bs-toggle="modal" data-bs-target="#successModal">
								Gửi</button>
						</p>
					</div>
				</div>
			</div>
		</div>

		<form class="container-info-sanpham">
			<div class="form-info-sanpham row">
				<div class="info col-md-12">
					<div class="rating-container">
						<p id="" class="rating-text1">Chất lượng sản phẩm:</p>
						<span class="star" data-value="1"><i
							class="fa-solid fa-star"></i></span> <span class="star" data-value="2"><i
							class="fa-solid fa-star"></i></span> <span class="star" data-value="3"><i
							class="fa-solid fa-star"></i></span> <span class="star" data-value="4"><i
							class="fa-solid fa-star"></i></span> <span class="star" data-value="5"><i
							class="fa-solid fa-star"></i></span>
						<p id="rating-text" class="rating-text2"></p>
					</div>
					<div class="info col-md-12">
						<div class="card">
							<div class="card-header">
								<p>
									Đúng với thông tin sản phẩm: <span style="color: grey">để
										lại đánh giá</span>
								</p>
							</div>
							<div class="card-body">
								<textarea name="" class="form-control" id="" required></textarea>
							</div>
						</div>
					</div>

					<div class="info col-md-12">
						<div class="card">
							<div class="card-header">
								<p>
									Chất lượng sản phẩm: <span style="color: grey">để lại
										đánh giá</span>
								</p>
							</div>
							<div class="card-body">
								<textarea name="" class="form-control" id="" required></textarea>
							</div>
						</div>
					</div>
					<div class="info col-md-12 row">
						<label for="" class="message" style="color: red;"></label>
						<div class="col-md-4 container-file-upload">
							<label for="file-upload" class="form-label custom-file-upload">
								<i class="fa fa-cloud-upload "></i> Đăng tải ảnh sản phẩm
							</label>
						</div>
						<div class="col-md-8 save-image">
							<div id="input-save-image">
								<input type="file" class="form-control" id="file-upload"
									multiple="multiple" accept="image/png, image/jpeg, image/jpg"
									required />
							</div>
							<div class="show-img-form slider">
								<div class="container-images slides">
									<div class="show-img-div"></div>
								</div>
								<!-- <button class="prev" onclick="prevClick()">&#10094</button>
                                  <button class="next" onclick="nextClick()">&#10095</button> -->
							</div>
						</div>
					</div>
				</div>
		</form>


		<!-- </div> -->
	</main>
	<footer>
		<!-- place footer here -->
	</footer>
	<!-- Bootstrap JavaScript Libraries -->
	<!-- Modal -->
	<div class="modal fade" id="btnSeacrh" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<input class="form-control me-2 search" type="search"
						placeholder="Search" aria-label="Search">

				</div>
				<div class="modal-body">...</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="successModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Thông báo</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Gửi đánh giá thành công!</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Đóng</button>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>
</html>