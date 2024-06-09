<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý seller</title>

</head>

<body class="hold-transition sidebar-mini" ng-app="myApp">
	<%@include file="/common/taglib-link.jsp"%>

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
							<div class="card-header row">
								<h3 class=" col-md-11 card-title">Hóa đơn</h3>
								<a href="/admin/sellermanager" class=" col-md-1 btn btn-success">Quay
									lại</a>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>Mã hóa đơn</th>
											<th>Ngày tạo</th>
											<th>Ngày hoàn thành</th>
											<th>Người mua</th>
											<th>Số lượng</th>
											<th>Tổng tiền</th>
											<th>Voucher</th>
											<th>Tiền ship</th>
											<th>Địa chỉ</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<c:forEach var="bills" items="${listbills }">
												<tr>
													<th>${bills.id }</th>
													<td>${bills.dateBuy }</td>
													<td>${bills.finishDay }</td>
													<td>${bills.account.username }</td>
													<td>${bills.quantity }</td>
													<td>${bills.totalPrice }</td>
													<td><c:set var="voucherFound" value="false" /> <c:forEach
															var="voucher" items="${vouchers}">
															<c:if
																test="${voucher.id == bills.id && voucherFound == false}">
                   									 		${voucher.name}
                   									 		<c:set var="voucherFound" value="true" />
															</c:if>
														</c:forEach></td>
													<td>${bills.priceShipping }</td>
													<td>${bills.address }</td>
													<td><a
														href="/admin/sellermanager/bills/details/${bills.id }"
														class="btn btn-success"><i class="bi bi-list-ul"></i></a></td>
												</tr>
											</c:forEach>
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
											<th>Mã hóa đơn</th>
											<th>Sản phẩm</th>
											<th>Số lượng</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="billDetails" items="${listbillDetails }">
											<tr>
												<th>${bill.id }</th>
												<td>${billDetails.product.name }</td>
												<td>${billDetails.quantity}</td>
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