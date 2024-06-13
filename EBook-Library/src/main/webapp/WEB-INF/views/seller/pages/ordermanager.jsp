<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Manager</title>




</head>

<body class="hold-transition sidebar-mini layout-fixed">
<%@include file = "/common/taglib-link.jsp" %>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<!-- Main row -->
				<div class="row">
					<section class="col-lg-12 connectedSortable">
						<!-- BAR CHART -->
						<div class="card card-success">
							<div class="card-header">
								<h3 class="card-title">Thông kê đơn hàng</h3>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							<div class="card-body">
								<div class="chart">
									<canvas id="barChart"
										style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</section>
					<!-- full col -->
					<section class="col-lg-12 connectedSortable">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Quản lý hóa đơn</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>Mã hoá đơn</th>
											<th>Tên người đặt</th>
											<th>Số điện thoại</th>
											<th>Địa chỉ người nhận</th>
											<th>Số lượng</th>
											<th>Tổng tiền</th>
											<th>Ngày đặt</th>
											<th>Phí giao hàng</th>
											<th>Chiết khấu</th>
											<th>Thành tiền</th>

											<th style="width: 200px;">Thao tác</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="align-middle">7477467464</td>
											<td class="align-middle">Dương Văn Kha</td>
											<td class="align-middle">0899672816</td>
											<td class="align-middle">Cái Răng cần thơ</td>
											<td class="align-middle">200</td>
											<td>10.000.000</td>
											<td class="align-middle">28/05/2024</td>
											<td class="align-middle">60.000</td>
											<td class="align-middle">100.000</td>
											<td class="align-middle">9.840.000</td>
											<td><buuton class="btn btn-success">Xác nhận</buuton>
												<button class="btn btn-danger">Hủy đơn</button></td>
										</tr>
										<tr>
											<td class="align-middle">7477467464</td>
											<td class="align-middle">Dương Văn Kha</td>
											<td class="align-middle">0899672816</td>
											<td class="align-middle">Cái Răng cần thơ</td>
											<td class="align-middle">200</td>
											<td>10.000.000</td>
											<td class="align-middle">28/05/2024</td>
											<td class="align-middle">60.000</td>
											<td class="align-middle">100.000</td>
											<td class="align-middle">9.840.000</td>
											<td><buuton class="btn btn-success">Xác nhận</buuton>
												<button class="btn btn-danger">Hủy đơn</button></td>
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


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->



	<%@include file="/common/taglib-js.jsp"%>
	<!-- AdminLTE for demo purposes -->
	<!-- <script src="/assets/dist/js/demo.js"></script> -->
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			// Đoạn mã JavaScript sẽ được thực thi sau khi trang và tất cả các nguồn tài nguyên đã được tải xong

			var areaChartData = {
				labels : [ 'Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4',
						'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9',
						'Tháng 10', 'Tháng 11', 'Tháng 12' ],
				datasets : [ {
					label : 'Thành công',
					backgroundColor : 'rgba(60,141,188,0.9)',
					borderColor : 'rgba(60,141,188,0.8)',
					pointRadius : false,
					pointColor : '#3b8bba',
					pointStrokeColor : 'rgba(60,141,188,1)',
					pointHighlightFill : '#fff',
					pointHighlightStroke : 'rgba(60,141,188,1)',
					data : [ 1, 2, 40, 19, 86, 27, 90, 80, 40, 10, 30, 50 ]
				}, {
					label : 'Bị hủy hoặc trả hàng',
					backgroundColor : 'rgba(210, 214, 222, 1)',
					borderColor : 'rgba(210, 214, 222, 1)',
					pointRadius : false,
					pointColor : 'rgba(210, 214, 222, 1)',
					pointStrokeColor : '#c1c7d1',
					pointHighlightFill : '#fff',
					pointHighlightStroke : 'rgba(220,220,220,1)',
					data : [ 65, 59, 80, 81, 56, 55, 40, 70, 40, 10, 67, 100 ]
				}, ]
			};

			var barChartCanvas = document.getElementById('barChart');
			if (barChartCanvas) {
				var barChartContext = barChartCanvas.getContext('2d');
				if (barChartContext) {
					var barChartData = Object.assign({}, areaChartData); // Sử dụng Object.assign() thay vì $.extend() của jQuery
					var temp0 = areaChartData.datasets[1];
					var temp1 = areaChartData.datasets[0];
					barChartData.datasets[1] = temp1;
					barChartData.datasets[0] = temp0;
					var barChartOptions = {
						responsive : true,
						maintainAspectRatio : false,
						datasetFill : false
					};

					new Chart(barChartContext, {
						type : 'bar',
						data : barChartData,
						options : barChartOptions
					});
				} else {
					console.error('getContext() returned null');
				}
			} else {
				console.error('Cannot find canvas element with id "barChart"');
			}
		});

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