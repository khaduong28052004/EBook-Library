<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý seller</title>
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
		<!-- Navbar -->
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
							<h1>Quản lý seller</h1>
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
									<h3 class="card-title">Quản lý tài khoản seller</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Tên tài khoản</th>
												<th>Tên shop</th>
												<th>Họ và tên</th>
												<th>Lượt theo dõi</th>
												<th>Lượt đánh giá</th>
												<th>Đã bán</th>
												<th>Lợi nhuận</th>
												<th>Doanh thu</th>
												<th>Đánh giá</th>
												<th>Trạng thái</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="accounts" items="${listAccount }">
												<tr>
													<td class="align-middle">${accounts.username }</td>
													<td class="align-middle">${accounts.shopName }</td>
													<td class="align-middle">${accounts.fullname }</td>
													<td class="align-middle">${fn:length(accounts.followers)}</td>
													<td class="align-middle">4.8</td>
													<td class="align-middle">15.400</td>
													<td class="align-middle">200.000.000 <sub>vnd</sub></td>
													<td class="align-middle">40.000.000 <sub>vnd</sub></td>
													<td class="align-middle">
														<div class="progress progress-xs">
															<div class="progress-bar progress-bar-danger "
																style="width: 55%"></div>
														</div>
													</td>
													<td><button class="btn btn-danger">Ngừng hoạt
															động</button></td>
												</tr>
											</c:forEach>
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
						<!-- /.col -->
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Duyệt tài khoản seller</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example3" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Tên tài khoản</th>
												<th>Họ và tên</th>
												<th>SDT</th>
												<th>Địa chỉ</th>
												<th>Email</th>
												<th>Số CCCD</th>
												<th>Ngân hàng</th>
												<th>Số tài khoản</th>
												<th>Trạng thái</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="align-middle">khadv</td>
												<td class="align-middle">Dương Văn Kha</td>
												<td class="align-middle">0899672816</td>
												<td class="align-middle">Cái Răng cần thơ</td>
												<td class="align-middle">khadv@gmail.com</td>
												<td class="align-middle">76767363526</td>
												<td class="align-middle">TP Bank</td>
												<td class="align-middle">7847547575</td>
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
		<!-- Footer -->
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
		$(function() {
			$("#example3").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example3_wrapper .col-md-6:eq(0)');
			$('#example4').DataTable({
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

</body>

</html>