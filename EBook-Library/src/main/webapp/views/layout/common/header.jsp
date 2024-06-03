<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body>
	<header class="container  sticky-top">
		<div class="page-content rounded-2 "
			style="padding-top: 0px; padding-bottom: 0px;">

			<nav class="navbar navbar-expand-lg" id="navbar">
				<!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
                    aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> -->
				<div
					class="collapse navbar-collapse row d-flex justify-content-center"
					id="navbarScroll">
					<a class="col-md-1" aria-current="page"
						href="/Ebook/user/buyBookHome"> <img
						src="/views/img/logo/V.jpg" alt="" width="70%" height="70%">
					</a>
					<div class="col-md-5">
						<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
							style="--bs-scroll-height: 100px;">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> Thể loại </a>
								<ul class="dropdown-menu" style="width: 500px;">
									<div class=" row">
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Sách
												giáo khoa</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Đề
												thi tốt nghiệp</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Truyện
												tranh</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Truyện
												ngôn tình</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Sách
												giáo khoa</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Đề
												thi tốt nghiệp</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Truyện
												tranh</a></li>
										<li class="col-md-6 align-items-center"><a
											class="dropdown-item" href="/Ebook/user/searchBuyBook">Truyện
												ngôn tình</a></li>
									</div>
								</ul></li>
							<li class="nav-item"></li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="/Ebook/user/buyBookHome"> Mua sách</a></li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="/Ebook/user/favorite"> Yêu Thích</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<form class="search d-flex" role="search">
							<input class="form-control me-2" type="search"
								style="width: 100%;" placeholder="Search" aria-label="Search">
							<!-- <button class="btn btn-outline-success" type="submit"><i class="bi bi-search"></i></button> -->
						</form>

					</div>
					<div class="col-md-2">
						<ul>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> <i
									class="fa-solid fa-user" style="color: green;"></i> Tài khoản
								</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item"
										href="/Ebook/account/changePass">Đổi mật khẩu</a></li>
									<li><a class="dropdown-item"
										href="/Ebook/account/changePass">Cập nhật tài khoản</a></li>
									<li><a class="dropdown-item"
										href="/Ebook/user/registerSell/registerSell01">Đăng ký bán
											sách</a></li>
									<!-- <hr> -->
									<li><a class="dropdown-item" href="/Ebook/account/login">Đăng
											xuất</a></li>
								</ul>
							</div>
						</ul>
					</div>
				</div>
		</div>
		<!-- </div> -->

		</nav>
		</div>
	</header>

</body>
</html>