<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý voucher</title>
</head>

<body class="hold-transition sidebar-mini">
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
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword1">Loại voucher</label> <select
														name="" id="" class="form-control">
														<option value="">Giảm giá trên hóa đơn</option>
														<option value="">Giảm giá trên tiền ship</option>
													</select>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword1">Loại giảm giá</label> <select
														name="" id="" class="form-control">
														<option value="">Giảm giá theo %</option>
														<option value="">Giảm giá theo VND</option>
													</select>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Điều Kiện</label>
													<div class="dieuKien" style="display: flex;">
														<input type="number" name="sdt" class="form-control"
															id="exampleInputEmail1" placeholder="Giá tối thiểu"
															style="margin-right: 15px;">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword1">Giảm giá</label> <input
														type="number" name="password" class="form-control"
														placeholder=" % hoặc VND">
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
											<td class="align-middle text-center" style="width: 170px"><button
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


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	<!-- ChartJS -->
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

</body>
</html>