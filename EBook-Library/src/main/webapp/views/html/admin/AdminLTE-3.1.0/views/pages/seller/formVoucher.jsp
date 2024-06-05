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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

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
							<div>
								<form action="" method="post">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Thông tin
											voucher</h5>
										<a href="/Ebook/seller/vouchermanager" class="btn btn-success">Quay
											lại</a>
									</div>
									<div class="modal-body">
										<div class="row g-2">
											<div class="col-md">
												<div class="form-floating">
													<input name="name" value="${voucher.name}" type="text"
														class="form-control" id="floatingInputGrid"
														placeholder="name@example.com"> <label
														for="floatingInputGrid">Tên voucher</label>
													<p class="text-danger">${errorName }</p>
												</div>
											</div>
											<div class="col-md">
												<div class="form-floating">
													<select name="voucher" class="form-select"
														aria-label="Default select example">
														<c:forEach var="voucherItem" items="${typeVouchers }">
															<option
																${voucherItem.id == voucher.typeVoucher.id ? 'selected' : ''}
																value="${voucherItem.id}">${voucherItem.name }</option>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
										<!-- 2 -->
										<div class="row g-2">
											<div class="col-md">
												<div class="form-floating row"
													style="margin-top: 25px; margin-left: 10px">
													<div class="form-check col-md-6">
														<input checked class="form-check-input" type="radio"
															${voucher.priceProduct>0?'checked':'' } value="true"
															name="dieuKien" id="dieuKien1"> <label
															class="form-check-label" for="dieuKien1"> Sản
															phẩm </label>
													</div>
													<div class="form-check col-md-6">
														<input class="form-check-input" type="radio" value="false"
															${voucher.priceProduct>0?'':'checked' } name="dieuKien"
															id="dieuKien2"> <label class="form-check-label"
															for="dieuKien2"> Tổng bill </label>
													</div>
												</div>
											</div>
											<div class="col-md">
												<div class="form-floating input-group"
													" style="margin-top: 10px;">
													<c:choose>
														<c:when test="${voucher.priceProduct > 0}">
															<input name="PriceDK" type="number" min="0"
																value="${voucher.priceProduct}" class="form-control"
																id="floatingInputGrid"
																aria-label="Dollar amount (with dot and two decimal places)">
															<span class="input-group-text">VNĐ</span>
														</c:when>
														<c:otherwise>
															<input name="PriceDK" type="number" min="0"
																value="${voucher.totalPriceOrder}" class="form-control"
																id="floatingInputGrid"
																aria-label="Dollar amount (with dot and two decimal places)">
															<span class="input-group-text">VNĐ</span>
														</c:otherwise>
													</c:choose>
													<label for="floatingInputGrid">Điều kiện</label>
													<p class="text-danger">${errorDKPrice}</p>
												</div>
											</div>
										</div>
										<!-- 3 -->
										<div class="row g-2">
											<div class="col-md">
												<div class="form-floating" style="margin-top: 10px;">
													<input name="dateStart" type="date" required
														class="form-control" id="floatingInputGrid"
														placeholder="name@example.com"
														value="${voucher.dateStart}"> <label
														for="floatingInputGrid">Ngày bắt đầu</label>
													<p class="text-danger">${errorDateStart }</p>
												</div>
											</div>
											<div class="col-md">
												<div class="form-floating" style="margin-top: 10px;">
													<input name="dateEnd" type="date" class="form-control"
														required id="floatingInputGrid"
														placeholder="name@example.com" value="${voucher.dateEnd}">
													<label for="floatingInputGrid">Ngày kết thúc</label>
													<p class="text-danger">${errorDateEnd }</p>
												</div>
											</div>
										</div>
										<!-- 4 -->
										<div class="row g-2">
											<div class="col-md">
												<div class="form-floating" style="margin-top: 10px;">
													<input name="quantity" type="number" class="form-control"
														id="floatingInputGrid" placeholder="name@example.com"
														min="1" value="${voucher.originalNumber }"> <label
														for="floatingInputGrid">Số lượng</label>
													<p class="text-danger">${errorSL }</p>
												</div>
											</div>
											<div class="col-md">
												<div class="form-floating input-group"
													style="margin-top: 10px;">
													<input name="priceSale" type="number" min="0" max="100"
														value="${voucher.sale }" class="form-control"
														id="floatingInputGrid"
														aria-label="Dollar amount (with dot and two decimal places)">
													<span class="input-group-text">%</span> <label
														for="floatingInputGrid">Sale</label>

												</div>
												<p class="text-danger">${errorPriceSale }</p>
											</div>
										</div>

									</div>
									<div class="modal-footer">
										<a href="/Ebook/seller/vouchermanager"
											class="btn btn-secondary"> <i
											class="fa-solid fa-circle-xmark"
											style="color: #ffffff; margin-right: 5px;"></i>Quay lại
										</a>
										<button type="submit" class="btn btn-success">
											<i class="fa-solid fa-plus"
												style="color: #ffffff; margin-right: 5px;"></i>Xác nhận
										</button>

										<c:if test="${currentPath == 'update'}">
											<a href="../delete/${voucher.id }" class="btn btn-danger"
												style="color: white;"> <c:choose>
													<c:when test="${voucher.status}">
														<i class="bi bi-trash-fill"
															style="color: #ffffff; margin-right: 5px;"></i> Ngừng hoạt
													động</c:when>
													<c:otherwise>
														<i class="bi bi-check-circle-fill"
															style="color: #ffffff; margin-right: 5px;"></i> Hoạt động lại
													</c:otherwise>
												</c:choose>

											</a>
										</c:if>
									</div>
								</form>
							</div>
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