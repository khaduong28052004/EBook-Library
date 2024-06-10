<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voucher Manager</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/summernote/summernote-bs4.min.css">


<!-- DataTables -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="/views/html/admin/AdminLTE-3.1.0/dist/img/AdminLTELogo.png"
				alt="AdminLTELogo" height="60" width="60">
		</div>

		<%@include file="../views/header.jsp"%>
		<%@include file="../views/menu.jsp"%>


		<img src="" alt="">

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<!-- Main row -->
					<div class="row">



						<!-- full col -->

						<!-- right col (We are only adding the ID to make the widgets sortable)-->
						<section class="col-lg-12 connectedSortable">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Thông kê doanh thu seller</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<main>
										<div class="container" style="margin: 0px;">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-2">
														<div class="card">
															<div class="card-body">
																<h5 class="card-title">
																	<p>
																		<strong
																			style="font-family: 'Times New Roman', Times, serif;">Loại
																			Voucher</strong>
																	</p>
																</h5>
																<p class="card-text">
																<div class="form-check">
																	<input class="form-check-input" type="radio"
																		name="flexRadioDefault" id="flexRadioDefault1">
																	<label class="form-check-label" for="flexRadioDefault1">
																		Giảm giá </label>
																</div>
																<div class="form-check">
																	<input class="form-check-input" type="radio"
																		name="flexRadioDefault" id="flexRadioDefault2" checked>
																	<label class="form-check-label" for="flexRadioDefault2">
																		Vận chuyển </label>
																</div>
																</p>
															</div>
														</div>
														<!-- TRẠNG THÁI -->
														<div class="card" style="margin-top: 25px;">
															<div class="card-body">
																<h5 class="card-title">
																	<p>
																		<strong
																			style="font-family: 'Times New Roman', Times, serif;">Trạng
																			thái</strong>
																	</p>
																</h5>
																<p class="card-text">
																<div class="form-check">
																	<input class="form-check-input" type="radio"
																		name="flexRadioDefault1" id="flexRadioDefault3">
																	<label class="form-check-label" for="flexRadioDefault3">
																		Còn hạn </label>
																</div>
																<div class="form-check">
																	<input class="form-check-input" type="radio"
																		name="flexRadioDefault1" id="flexRadioDefault4"
																		checked> <label class="form-check-label"
																		for="flexRadioDefault4"> Hết hạn </label>
																</div>
																</p>
															</div>
														</div>

													</div>
													<div class="col-md-10">
														<button class="btn btn-success" type="text"
															data-bs-toggle="modal" data-bs-target="#exampleModal1"
															style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
															<i class="fa-solid fa-plus"
																style="color: #ffffff; margin-right: 5px;"></i> Thêm
															voucher
														</button>
														<!-- <div class="card"> -->
														<div style="margin-top: 20px;">
															<table class="table">
																<thead class="table table-success">
																	<tr
																		style="font-family: 'Times New Roman', Times, serif;">
																		<th>Mã voucher</th>
																		<th>Tên voucher</th>

																		<th>Ngày bắt đầu</th>
																		<th>Ngày kết thúc</th>
																		<th>Loại voucher</th>
																		<th>Trạng thái</th>
																		<th>Tên người mua</th>
																		<th>Còn lại</th>
																		<th></th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>1</td>
																		<td>Miễn phí vận chuyển 20.000đ</td>

																		<td>23/05/2024</td>
																		<td>23/7/2024</td>
																		<td>Vận chuyển</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>30</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>2</td>
																		<td>Giảm 8%</td>

																		<td>23/05/2024</td>
																		<td>23/7/2024</td>
																		<td>Giảm giá</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>20</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>2</td>
																		<td>Giảm 8%</td>

																		<td>23/05/2024</td>
																		<td>23/7/2024</td>
																		<td>Giảm giá</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>20</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>2</td>
																		<td>Giảm 8%</td>

																		<td>23/05/2024</td>
																		<td>23/7/2024</td>
																		<td>Giảm giá</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>20</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>2</td>
																		<td>Giảm 8%</td>

																		<td>23/05/2024</td>
																		<td>23/7/2024</td>
																		<td>Giảm giá</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>20</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>2</td>
																		<td>Giảm 8%</td>

																		<td>23/05/2024</td>
																		<td>23/7/2024</td>
																		<td>Giảm giá</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>20</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																	<tr>
																		<td>3</td>
																		<td>Miễn phí vận chuyển 40.000đ</td>

																		<td>23/07/2024</td>
																		<td>23/9/2024</td>
																		<td>Vận chuyển</td>
																		<td>Còn hạn</td>
																		<td>Ly</td>
																		<td>40</td>
																		<td>
																			<button class="btn btn-success" type="text"
																				data-bs-toggle="modal"
																				data-bs-target="#exampleModal"
																				style="color: rgb(67, 73, 228); cursor: pointer; color: white;">
																				<i class="fa-solid fa-pen-to-square"
																					style="color: #ffffff;"></i> Sửa
																			</button>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<!-- </div> -->
													</div>
												</div>
											</div>
										</div>
									</main>
									<footer>
										<!-- place footer here -->
									</footer>
									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Thông
														tin voucher</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="1"> <label for="floatingInputGrid">Mã
																	voucher</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="Miễn phí vận chuyển"> <label
																	for="floatingInputGrid">Tên voucher</label>
															</div>
														</div>
													</div>
													<!-- 2 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="date" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="23/05/2024"> <label
																	for="floatingInputGrid">Ngày bắt đầu</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="date" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="23/05/2024"> <label
																	for="floatingInputGrid">Ngày kết thúc</label>
															</div>
														</div>
													</div>
													<!-- 3 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="Vận chuyển"> <label
																	for="floatingInputGrid">Loại voucher</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="Miễn phí vận chuyển"> <label
																	for="floatingInputGrid">Còn hạn</label>
															</div>
														</div>
													</div>
													<!-- 4 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="Ly"> <label for="floatingInputGrid">Tên
																	người mua</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="30"> <label for="floatingInputGrid">Còn
																	lại</label>
															</div>
														</div>
													</div>
													<!-- 5 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="300.000"> <label for="floatingInputGrid">Giá
																	sản phẩm: </label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value="300.000"> <label for="floatingInputGrid">Tổng
																	hóa đơn:</label>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">
														<i class="fa-solid fa-circle-xmark"
															style="color: #ffffff; margin-right: 5px;"></i>Đóng
													</button>
													<button type="button" class="btn btn-primary">
														<i class="fa-solid fa-pen-to-square"
															style="color: #ffffff; margin-right: 5px;"></i>Cập nhật
													</button>
													<button type="button" class="btn btn-danger">
														<i class="fa-solid fa-trash"
															style="color: #f5f9ff; margin-right: 5px;"></i>Xóa
													</button>
												</div>
											</div>
										</div>
									</div>
									<!-- THÊM VOUCHER -->
									<!-- Modal -->
									<div class="modal fade" id="exampleModal1" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Thông
														tin voucher</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Mã
																	voucher</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Tên
																	voucher</label>
															</div>
														</div>
													</div>
													<!-- 2 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="date" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Ngày
																	bắt đầu</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="date" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Ngày
																	kết thúc</label>
															</div>
														</div>
													</div>
													<!-- 3 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Loại
																	voucher</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Còn
																	hạn</label>
															</div>
														</div>
													</div>
													<!-- 4 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Tên
																	người mua</label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Còn
																	lại</label>
															</div>
														</div>
													</div>
													<!-- 5 -->
													<div class="row g-2">
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Giá
																	sản phẩm: </label>
															</div>
														</div>
														<div class="col-md">
															<div class="form-floating" style="margin-top: 10px;">
																<input type="text" class="form-control"
																	id="floatingInputGrid" placeholder="name@example.com"
																	value=""> <label for="floatingInputGrid">Tổng
																	hóa đơn:</label>
															</div>
														</div>
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">
														<i class="fa-solid fa-circle-xmark"
															style="color: #ffffff; margin-right: 5px;"></i>Đóng
													</button>
													<button type="button" class="btn btn-success">
														<i class="fa-solid fa-plus"
															style="color: #ffffff; margin-right: 5px;"></i>Thêm
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</section>
						<!-- right col -->
					</div>
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
				</section>
				<!-- /.content -->
			</div>






		</div>
		<%@include file="../views/footer.jsp"%>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/chart.js/Chart.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/views/html/admin/AdminLTE-3.1.0/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables  & Plugins -->
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/jszip/jszip.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/pdfmake/pdfmake.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/pdfmake/vfs_fonts.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script
		src="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/views/html/admin/AdminLTE-3.1.0/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/views/html/admin/AdminLTE-3.1.0/dist/js/demo.js"></script>
	<!-- Page specific script -->


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