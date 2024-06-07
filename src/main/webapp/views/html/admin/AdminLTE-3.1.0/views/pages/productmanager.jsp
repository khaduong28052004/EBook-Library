<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/fontawesome-free/css/all.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


<!-- Theme style -->
<link rel="stylesheet"
	href="/views/html/admin/AdminLTE-3.1.0/dist/css/adminlte.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
</head>

<body class="hold-transition sidebar-mini" ng-app="myApp">
	<div class="wrapper">
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="/views/html/admin/AdminLTE-3.1.0/dist/img/AdminLTELogo.png"
				alt="AdminLTELogo" height="60" width="60">
		</div>
		<%@include file="../header.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@include file="../menu.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>DataTables</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">DataTables</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Duyệt sản phẩm bán</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example2" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th colspan="2" class="align-middle text-center">Sách</th>
												<th>Loại sách</th>
												<th>Tác giả</th>
												<th>Nhà xuất bản</th>
												<th>Giá</th>
												<th>Giảm giá</th>
												<th>Số lượng</th>
												<th style="width: 135px;">Mô tả</th>


											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="align-middle" style="width: 160px;">
													<div class="row">

														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NhanGianKhuc.jpg"
																width="100%" height="120px" alt="">
														</div>


														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NhanThuong.jpg" width="100%"
																height="120px" alt="">
														</div>


														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NgoiSaoHiVong.webp"
																width="100%" height="120px" alt="">
														</div>


														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NhanGianKhuc.jpg"
																width="100%" height="120px" alt="">
														</div>
													</div>
												</td>
												<td class="align-middle">Nhân Gian Khúc</td>
												<td class="align-middle">Truyện</td>
												<td class="align-middle">Văn Kha</td>
												<td class="align-middle">VanKha</td>
												<td class="align-middle">169.000 VND</td>
												<td class="align-middle"><span
													style="text-decoration: line-through;">149.000 VND</span></td>
												<td class="align-middle">200</td>
												<td class="align-middle"><button
														class="btn btn-primary">Đồng ý</button>
													<button class="btn btn-danger">Từ chối</button></td>
											</tr>

											<tr>
												<td class="align-middle" style="width: 160px;">
													<div class="row">

														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NhanGianKhuc.jpg"
																width="100%" height="120px" alt="">
														</div>


														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NhanThuong.jpg" width="100%"
																height="120px" alt="">
														</div>


														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NgoiSaoHiVong.webp"
																width="100%" height="120px" alt="">
														</div>


														<div class="col-md-6" style="padding: 3px;">
															<img src="/img/books/Truyen/NhanGianKhuc.jpg"
																width="100%" height="120px" alt="">
														</div>
													</div>
												</td>
												<td class="align-middle">Nhân Gian Khúc</td>
												<td class="align-middle">Truyện</td>
												<td class="align-middle">Văn Kha</td>
												<td class="align-middle">VanKha</td>
												<td class="align-middle">169.000 VND</td>
												<td class="align-middle"><span
													style="text-decoration: line-through;">149.000 VND</span></td>
												<td class="align-middle">200</td>
												<td class="align-middle"><button
														class="btn btn-primary">Đồng ý</button>
													<button class="btn btn-danger">Từ chối</button></td>
											</tr>

										</tbody>
										<!-- <tfoot>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </tfoot> -->
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="../footer.jsp"%>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
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
	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false,
				"responsive" : true,
			});
		});
	</script>
	<script>
		var app = angular.module("myApp", []);
	</script>
</body>
</html>