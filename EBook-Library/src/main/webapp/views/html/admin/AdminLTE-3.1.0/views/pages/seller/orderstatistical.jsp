<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Statistical</title>
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

<body class="hold-transition sidebar-mini layout-fixed" ng-app="myApp">
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

						<!-- right col (We are only adding the ID to make the widgets sortable)-->
						<section class="col-lg-12 connectedSortable">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Thông kê doanh thu seller</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Họ và tên</th>
												<th>SDT</th>
												<th>Địa chỉ</th>
												<th>Email</th>
												<th>Doanh thu</th>
												<th>Chiết khấu</th>
												<th>Lợi nhuận</th>
												<th>Trạng thái</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="align-middle">Dương Văn Kha</td>
												<td class="align-middle">0899672816</td>
												<td class="align-middle">Cái Răng cần thơ</td>
												<td class="align-middle">khadv@gmail.com</td>
												<td>1.000.000.000</td>
												<td class="align-middle">1%</td>
												<td class="align-middle">10.000.000</td>
												<td>Đang hoạt động</td>
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
		document.addEventListener('DOMContentLoaded', function() {
			// Đoạn mã JavaScript sẽ được thực thi sau khi trang và tất cả các nguồn tài nguyên đã được tải xong

			var areaChartData = {
				labels : [ 'Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4',
						'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9',
						'Tháng 10', 'Tháng 11', 'Tháng 12' ],
				datasets : [ {
					label : 'Lợi nhuận',
					backgroundColor : 'rgba(60,141,188,0.9)',
					borderColor : 'rgba(60,141,188,0.8)',
					pointRadius : false,
					pointColor : '#3b8bba',
					pointStrokeColor : 'rgba(60,141,188,1)',
					pointHighlightFill : '#fff',
					pointHighlightStroke : 'rgba(60,141,188,1)',
					data : [ 1, 2, 40, 19, 86, 27, 90, 80, 40, 10, 30, 50 ]
				}, {
					label : 'Doanh thu',
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
	</script>


</body>
</html>