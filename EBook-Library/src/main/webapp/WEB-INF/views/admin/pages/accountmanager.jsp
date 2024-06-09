<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Statistical</title>



</head>

<body class="hold-transition sidebar-mini layout-fixed">
<%@include file="/common/taglib-link.jsp"%>

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
								<div class="col-md-3">
									<div class="card"
										style="width: 280px; height: 280px; padding: 10px;">
										<img src="/html/admin/AdminLTE-3.1.0/dist/img/avatar.png"
											style="width: 100%;" alt="">
									</div>
								</div>
								<div class="col-md-8">

									<div class="card-body" style="padding: 0px;">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Tên tài khoản</label> <input
														type="text" name="tenTK" class="form-control"
														id="exampleInputEmail1" placeholder="Tên tài khoản">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Họ và tên</label> <input
														type="email" name="hoTen" class="form-control"
														id="exampleInputEmail1" placeholder="Họ và tên">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Số điện thoại</label> <input
														type="number" name="sdt" class="form-control"
														id="exampleInputEmail1" placeholder="Số điện thoại">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Email</label> <input
														type="email" name="email" class="form-control"
														id="exampleInputEmail1" placeholder="Email">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label for="exampleInputPassword1">Avata</label> <input
														type="file" name="password" class="form-control"
														placeholder="Password">
												</div>
											</div>

											<div class="col-md-12">
												<div class="form-group mb-0" style="display: inline-flex;">
													<div class="custom-control custom-checkbox"
														style="margin-right: 10px;">
														<input type="checkbox" class="custom-control-input"
															id="cboAdmin"> <label
															class="custom-control-label" for="cboAdmin">Admin</label>

													</div>
													<div class="custom-control custom-checkbox"
														style="margin-right: 10px;">
														<input type="checkbox" class="custom-control-input"
															id="cboSeller"> <label
															class="custom-control-label" for="cboSeller">Seller</label>

													</div>
													<div class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input"
															id="cboUser"> <label class="custom-control-label"
															for="cboUser">User</label>

													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleInputPassword1">Địa chỉ</label>
										<textarea name="diaChi" class="form-control"
											placeholder="Địa chỉ"></textarea>
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
								<h3 class="card-title">Danh sách tài khoản</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>Tên tài khoản</th>
											<th>Họ và tên</th>
											<th>Email</th>
											<th>SDT</th>
											<th>Địa chỉ</th>
											<th>Trang Thái</th>
											<th>Quyền</th>
											<th style="width: 150px;">Thao tác</th>


										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="align-middle">khadv</td>
											<td class="align-middle">Dương Văn Kha</td>
											<td class="align-middle">khadv@gmail.com</td>
											<td class="align-middle">0899672816</td>
											<td class="align-middle">Hậu Giang</td>
											<td class="align-middle">Đang hoạt động</td>
											<td class="align-middle">admin</td>

											<td class="align-middle text-center"><button
													class="btn btn-danger">Ngừng hoạt động</button></td>
										</tr>
										<tr>
											<td class="align-middle">khadv</td>
											<td class="align-middle">Dương Văn Kha</td>
											<td class="align-middle">khadv@gmail.com</td>
											<td class="align-middle">0899672816</td>
											<td class="align-middle">Hậu Giang</td>
											<td class="align-middle">Ngừng hoạt động</td>
											<td class="align-middle">admin, seller</td>

											<td class="align-middle text-center"><button
													class="btn btn-success">Tiếp tục hoạt động</button></td>
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


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->

	<%@include file="/common/taglib-js.jsp"%>



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


</body>
</html>