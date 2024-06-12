<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý seller</title>

</head>

<body class="hold-transition sidebar-mini" ng-app="myApp">
<%@include file = "/common/taglib-link.jsp" %>

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
											<tr>
												<td class="align-middle">khadv</td>
												<td class="align-middle">Dương Văn Kha</td>
												<td class="align-middle">200.000</td>
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
											<tr>
												<td class="align-middle">khadv</td>
												<td class="align-middle">Dương Văn Kha</td>
												<td class="align-middle">200.000</td>
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
												<td><button class="btn btn-primary">Tiếp tục
														hoạt động</button></td>

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



		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->

	<!-- ./wrapper -->

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