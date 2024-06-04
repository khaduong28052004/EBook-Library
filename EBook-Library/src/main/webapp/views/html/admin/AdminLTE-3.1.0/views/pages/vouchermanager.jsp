<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý voucher</title>

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
						<div class="col-md-12">

							<form id="quickForm">
								<div class="row">
									<div class="col-md-12">
										<div class="card-body" style="padding: 0px;">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label for="exampleInputEmail1">Tên voucher</label> <input
															type="text" name="tenTK" class="form-control"
															id="exampleInputEmail1" placeholder="Tên voucher">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="exampleInputEmail1">Số lượng</label> <input
															type="number" name="hoTen" class="form-control"
															id="exampleInputEmail1" placeholder="Số lượng">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label for="exampleInputEmail1">Điều Kiện</label>
														<div class="dieuKien" style="display: flex;">
															<input type="number" name="sdt" class="form-control"
																id="exampleInputEmail1"
																placeholder="Giá sản phẩm tối thiểu"
																style="margin-right: 15px;"> <input
																type="numner" name="email" class="form-control"
																id="exampleInputEmail1"
																placeholder="Giá hóa đơn tối thiểu">
														</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="exampleInputEmail1">Ngày bắt đầu</label> <input
															type="date" name="hoTen" class="form-control"
															id="exampleInputEmail1" placeholder="Ngày bắt đầu">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="exampleInputEmail1">Ngày kết thúc</label> <input
															type="date" name="hoTen" class="form-control"
															id="exampleInputEmail1" placeholder="Ngày kết thúc">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label for="exampleInputPassword1">Loại voucher</label> <select
															name="" id="" class="form-control">
															<option value="">Giảm giá tổng hóa đơn</option>
															<option value="">Giảm giá tiền ship</option>
														</select>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="exampleInputPassword1">Phần trăm giảm</label>
														<input type="number" name="password" class="form-control"
															placeholder="Phần trăm giảm">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label for="exampleInputPassword1">Tiền giảm</label> <input
															type="number" name="password" class="form-control"
															placeholder="Giảm tiền VND">
													</div>
												</div>
											</div>

										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label for="exampleInputPassword1">Ghi chú</label>
											<textarea name="diaChi" class="form-control"
												placeholder="Ghi chú"></textarea>
										</div>
									</div>
									<!-- /.card-body -->
									<div class="col-md-12">
										<div class="card-footer"
											style="background-color: rgba(240, 248, 255, 0); padding-left: 0px; padding-top: 0px;">
											<button type="submit" class="btn btn-primary"
												style="width: 100px;">Thêm</button>
											<button type="submit" class="btn btn-primary"
												style="width: 100px;">Sửa</button>
											<button type="submit" class="btn btn-primary"
												style="width: 100px;">Reset</button>

										</div>
									</div>

								</div>
							</form>


						</div>
						<div class="col-12">


							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Danh sách voucher</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>ID</th>
												<th>Tên voucher</th>
												<th>Điều kiện</th>
												<th>Số lượng</th>
												<th>Giảm giá</th>
												<th>Ngày bắt đầu</th>
												<th>Ngày kết thúc</th>
												<th>Ghi chú</th>
												<th>Trạng thái</th>
												<th style="width: 150px;">Thao tác</th>


											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="align-middle">7474646363</td>
												<td class="align-middle">Giảm giá 5k</td>
												<td class="align-middle">Tổng hóa đơn lớn hơn 100k</td>
												<td class="align-middle">200</td>
												<td>Giảm 5.000 phí ship</td>
												<td class="align-middle">28/05/2024</td>
												<td class="align-middle">28/06/2024</td>
												<td class="align-middle">Tài khoản mới được tặng miễn
													phí</td>
												<td class="align-middle">Đang hoạt động</td>
												<td class="align-middle text-center"><button
														class="btn btn-danger">Ngừng hoạt động</button></td>
											</tr>

											<tr>
												<td class="align-middle">7474646363</td>
												<td class="align-middle">Giảm giá 5k</td>
												<td class="align-middle">Tổng hóa đơn lớn hơn 100k</td>
												<td class="align-middle">200</td>
												<td>Giảm 50.000 tổng hóa đơn</td>
												<td class="align-middle">28/05/2024</td>
												<td class="align-middle">28/06/2024</td>
												<td class="align-middle">Tài khoản mới được tặng miễn
													phí</td>
												<td class="align-middle">Đang hoạt động</td>
												<td class="align-middle text-center"><button
														class="btn btn-danger">Ngừng hoạt động</button></td>
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
						<!-- /.col -->
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

		$(function() {
			$.validator.setDefaults({
				submitHandler : function() {
					alert("Form successful submitted!");
				}
			});
			$('#quickForm')
					.validate(
							{
								rules : {
									email : {
										required : true,
										email : true,
									},
									password : {
										required : true,
										minlength : 5
									},
									terms : {
										required : true
									},
								},
								messages : {
									email : {
										required : "Please enter a email address",
										email : "Please enter a vaild email address"
									},
									password : {
										required : "Please provide a password",
										minlength : "Your password must be at least 5 characters long"
									},
									terms : "Please accept our terms"
								},
								errorElement : 'span',
								errorPlacement : function(error, element) {
									error.addClass('invalid-feedback');
									element.closest('.form-group')
											.append(error);
								},
								highlight : function(element, errorClass,
										validClass) {
									$(element).addClass('is-invalid');
								},
								unhighlight : function(element, errorClass,
										validClass) {
									$(element).removeClass('is-invalid');
								}
							});
		});
	</script>
	<script>
		var app = angular.module("myApp", []);
	</script>
</body>
</html>