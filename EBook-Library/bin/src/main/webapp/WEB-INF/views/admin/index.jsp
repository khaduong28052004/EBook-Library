<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>





</head>

<body class="hold-transition sidebar-mini layout-fixed" >
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
	href="/assets/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="/assets/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/assets/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/assets/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
	href="/assets/plugins/summernote/summernote-bs4.min.css">

<!-- DataTables -->
<link rel="stylesheet"
	href="/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">Dashboard</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">Dashboard</li>
						</ol>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- Small boxes (Stat box) -->
				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-info">
							<div class="inner">
								<h3>33</h3>

								<p>Chờ duyệt</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-success">
							<div class="inner">
								<h3>
									30<sup style="font-size: 20px">%</sup>
								</h3>

								<p>Seller/user</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>150</h3>

								<p>Tài khoản</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>
									70.000.000 <span>VND</span>
								</h3>

								<p>Doanh thu</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->
				<!-- Main row -->
				<div class="row">
					<section class="col-lg-12 connectedSortable">
						<!-- BAR CHART -->
						<div class="card card-success">
							<div class="card-header">
								<h3 class="card-title">Thông kê doanh thu và lợi nhuận</h3>

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


					<!-- Left col -->
					<section class="col-lg-6 connectedSortable">
						<!-- PIE CHART -->
						<div class="card card-danger">
							<div class="card-header">
								<h3 class="card-title">Thống kê cửa hàng / Khách hàng</h3>

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
								<canvas id="pieChart"
									style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</section>

					<!-- Right col -->
					<section class="col-lg-6 connectedSortable">
						<!-- PIE CHART -->
						<div class="card card-danger">
							<div class="card-header">
								<h3 class="card-title">Thống Kê Doanh Thu/Lợi Nhuận</h3>

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
								<canvas id="lineChart"
									style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</section>
					<!-- full col -->
					<section class="col-lg-12 connectedSortable">
						<!-- DIRECT CHAT -->
						<div class="card direct-chat direct-chat-primary">
							<div class="card-header">
								<h3 class="card-title">Direct Chat</h3>

								<div class="card-tools">
									<span title="3 New Messages" class="badge badge-primary">3</span>
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<button type="button" class="btn btn-tool" title="Contacts"
										data-widget="chat-pane-toggle">
										<i class="fas fa-comments"></i>
									</button>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<!-- Conversations are loaded here -->
								<div class="direct-chat-messages">
									<!-- Message. Default to the left -->
									<div class="direct-chat-msg">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-left">Alexander
												Pierce</span> <span class="direct-chat-timestamp float-right">23
												Jan 2:00 pm</span>
										</div>
										<!-- /.direct-chat-infos -->
										<img class="direct-chat-img"
											src="/assets/dist/img/user1-128x128.jpg"
											alt="message user image">
										<!-- /.direct-chat-img -->
										<div class="direct-chat-text">Is this template really
											for free? That's unbelievable!</div>
										<!-- /.direct-chat-text -->
									</div>
									<!-- /.direct-chat-msg -->

									<!-- Message to the right -->
									<div class="direct-chat-msg right">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-right">Sarah
												Bullock</span> <span class="direct-chat-timestamp float-left">23
												Jan 2:05 pm</span>
										</div>
										<!-- /.direct-chat-infos -->
										<img class="direct-chat-img"
											src="/assets/dist/img/user3-128x128.jpg"
											alt="message user image">
										<!-- /.direct-chat-img -->
										<div class="direct-chat-text">You better believe it!</div>
										<!-- /.direct-chat-text -->
									</div>
									<!-- /.direct-chat-msg -->

									<!-- Message. Default to the left -->
									<div class="direct-chat-msg">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-left">Alexander
												Pierce</span> <span class="direct-chat-timestamp float-right">23
												Jan 5:37 pm</span>
										</div>
										<!-- /.direct-chat-infos -->
										<img class="direct-chat-img"
											src="/assets/dist/img/user1-128x128.jpg"
											alt="message user image">
										<!-- /.direct-chat-img -->
										<div class="direct-chat-text">Working with AdminLTE on a
											great new app! Wanna join?</div>
										<!-- /.direct-chat-text -->
									</div>
									<!-- /.direct-chat-msg -->

									<!-- Message to the right -->
									<div class="direct-chat-msg right">
										<div class="direct-chat-infos clearfix">
											<span class="direct-chat-name float-right">Sarah
												Bullock</span> <span class="direct-chat-timestamp float-left">23
												Jan 6:10 pm</span>
										</div>
										<!-- /.direct-chat-infos -->
										<img class="direct-chat-img"
											src="/assets/dist/img/user3-128x128.jpg"
											alt="message user image">
										<!-- /.direct-chat-img -->
										<div class="direct-chat-text">I would love to.</div>
										<!-- /.direct-chat-text -->
									</div>
									<!-- /.direct-chat-msg -->

								</div>
								<!--/.direct-chat-messages-->

								<!-- Contacts are loaded here -->
								<div class="direct-chat-contacts">
									<ul class="contacts-list">
										<li><a href="#"> <img class="contacts-list-img"
												src="/assets/dist/img/user1-128x128.jpg" alt="User Avatar">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Count Dracula <small
														class="contacts-list-date float-right">2/28/2015</small>
													</span> <span class="contacts-list-msg">How have you been?
														I was...</span>
												</div> <!-- /.contacts-list-info -->
										</a></li>
										<!-- End Contact Item -->
										<li><a href="#"> <img class="contacts-list-img"
												src="dist/img/user7-128x128.jpg" alt="User Avatar">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Sarah Doe <small
														class="contacts-list-date float-right">2/23/2015</small>
													</span> <span class="contacts-list-msg">I will be waiting
														for...</span>
												</div> <!-- /.contacts-list-info -->
										</a></li>
										<!-- End Contact Item -->
										<li><a href="#"> <img class="contacts-list-img"
												src="/assets/dist/img/user3-128x128.jpg" alt="User Avatar">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Nadia Jolie <small
														class="contacts-list-date float-right">2/20/2015</small>
													</span> <span class="contacts-list-msg">I'll call you back
														at...</span>
												</div> <!-- /.contacts-list-info -->
										</a></li>
										<!-- End Contact Item -->
										<li><a href="#"> <img class="contacts-list-img"
												src="/assets/dist/img/user5-128x128.jpg" alt="User Avatar">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Nora S. Vans <small
														class="contacts-list-date float-right">2/10/2015</small>
													</span> <span class="contacts-list-msg">Where is your
														new...</span>
												</div> <!-- /.contacts-list-info -->
										</a></li>
										<!-- End Contact Item -->
										<li><a href="#"> <img class="contacts-list-img"
												src="/assets/dist/img/user6-128x128.jpg" alt="User Avatar">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> John K. <small
														class="contacts-list-date float-right">1/27/2015</small>
													</span> <span class="contacts-list-msg">Can I take a look
														at...</span>
												</div> <!-- /.contacts-list-info -->
										</a></li>
										<!-- End Contact Item -->
										<li><a href="#"> <img class="contacts-list-img"
												src="/assets/dist/img/user8-128x128.jpg" alt="User Avatar">

												<div class="contacts-list-info">
													<span class="contacts-list-name"> Kenneth M. <small
														class="contacts-list-date float-right">1/4/2015</small>
													</span> <span class="contacts-list-msg">Never mind I
														found...</span>
												</div> <!-- /.contacts-list-info -->
										</a></li>
										<!-- End Contact Item -->
									</ul>
									<!-- /.contacts-list -->
								</div>
								<!-- /.direct-chat-pane -->
							</div>
							<!-- /.card-body -->
							<div class="card-footer">
								<form action="#" method="post">
									<div class="input-group">
										<input type="text" name="message"
											placeholder="Type Message ..." class="form-control">
										<span class="input-group-append">
											<button type="button" class="btn btn-primary">Send</button>
										</span>
									</div>
								</form>
							</div>
							<!-- /.card-footer-->
						</div>
						<!--/.direct-chat -->


					</section>
					<!-- /.Left col -->
					<!-- right col (We are only adding the ID to make the widgets sortable)-->
					<section class="col-lg-5 connectedSortable"></section>
					<!-- right col -->
				</div>
				<!-- /.row (main row) -->
			</div>
			<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->



	<!-- jQuery -->
	<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="/assets/plugins/chart.js/Chart.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/assets/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/assets/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables  & Plugins -->
	<script src="/assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="/assets/plugins/jszip/jszip.min.js"></script>
	<script src="/assets/plugins/pdfmake/pdfmake.min.js"></script>
	<script src="/assets/plugins/pdfmake/vfs_fonts.js"></script>
	<script
		src="/assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script
		src="/assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script
		src="/assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/assets/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/assets/dist/js/demo.js"></script>
	<!-- Page specific script -->
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			// Đoạn mã JavaScript sẽ được thực thi sau khi trang và tất cả các nguồn tài nguyên đã được tải xong

			var areaChartData = {
				labels : [ 'Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4',
						'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9',
						'Tháng 10', 'Tháng 11', 'Tháng 12' ],
				datasets : [ {
					label : 'Doanh thu',
					backgroundColor : 'rgba(60,141,188,0.9)',
					borderColor : 'rgba(60,141,188,0.8)',
					pointRadius : false,
					pointColor : '#3b8bba',
					pointStrokeColor : 'rgba(60,141,188,1)',
					pointHighlightFill : '#fff',
					pointHighlightStroke : 'rgba(60,141,188,1)',
					data : [ 1, 2, 40, 19, 86, 27, 90, 80, 40, 10, 30, 50 ]
				}, {
					label : 'Lợi nhuận',
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
					var temp0 = areaChartData.datasets[0];
					var temp1 = areaChartData.datasets[1];
					barChartData.datasets[0] = temp1;
					barChartData.datasets[1] = temp0;

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
		// piechart
		var pieChart = {
			labels : [ 'Cửa hàng', 'Khách hàng',
			// 'FireFox',
			// 'Safari',
			// 'Opera',
			// 'Navigator',
			],
			datasets : [ {
				data : [ 30, 70
				// ,400, 600, 300, 100
				],
				backgroundColor : [ '#f56954', '#00a65a',
				// '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'
				],
			} ]
		}

		var lineChart = {
			labels : [ 'Doanh thu', 'Lợi nhuận',
			// 'FireFox',
			// 'Safari',
			// 'Opera',
			// 'Navigator',
			],
			datasets : [ {
				data : [ 60, 40
				// ,400, 600, 300, 100
				],
				// backgroundColor: ['#f56954', '#00a65a',
				// // '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'
				backgroundColor : [ '#3c8dbc', '#d2d6de'

				],
			} ]
		}
		var pieChartCanvas = $('#pieChart').get(0).getContext('2d');
		var pieData = pieChart;
		var pieOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		new Chart(pieChartCanvas, {
			type : 'pie',
			data : pieData,
			options : pieOptions
		})
		var pieChartCanvas = $('#lineChart').get(0).getContext('2d');
		var pieData = lineChart;
		var pieOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		new Chart(pieChartCanvas, {
			type : 'pie',
			data : pieData,
			options : pieOptions
		})
	</script>

</body>
</html>