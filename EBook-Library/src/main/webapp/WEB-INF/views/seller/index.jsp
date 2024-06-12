<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

</head>

<body class="hold-transition sidebar-mini layout-fixed">
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
	<link rel="stylesheet" href="/assets/plugins/jqvmap/jqvmap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/assets/dist/css/adminlte.min.css">
	<!-- overlayScrollbars -->
	<link rel="stylesheet"
		href="/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
	<!-- Daterange picker -->
	<link rel="stylesheet"
		href="/assets/plugins/daterangepicker/daterangepicker.css">
	<!-- summernote -->
	<link rel="stylesheet"
		href="/assets/plugins/summernote/summernote-bs4.min.css">
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">Dashboard v2</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item">Dashboard v2</li>
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
				<!-- Info boxes -->
				<div class="row">
					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box">
							<span class="info-box-icon bg-info elevation-1"><i
								class="fas fa-cog"></i></span>

							<div class="info-box-content">
								<span class="info-box-text"> Lượt phản hồi</span> <span
									class="info-box-number"> 10 <small>%</small>
								</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-danger elevation-1"><i
								class="fas fa-thumbs-up"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Yêu Thích</span> <span
									class="info-box-number">41,410</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->

					<!-- fix for small devices only -->
					<div class="clearfix hidden-md-up"></div>

					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-success elevation-1"><i
								class="fas fa-shopping-cart"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Lượt Mua</span> <span
									class="info-box-number">760</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-12 col-sm-6 col-md-3">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-warning elevation-1"><i
								class="fas fa-users"></i></span>

							<div class="info-box-content">
								<span class="info-box-text"> Theo dõi</span> <span
									class="info-box-number">2,000</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Monthly Recap Report</h5>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-tool dropdown-toggle"
											data-toggle="dropdown">
											<i class="fas fa-wrench"></i>
										</button>
										<div class="dropdown-menu dropdown-menu-right" role="menu">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item">Another action</a> <a href="#"
												class="dropdown-item">Something else here</a> <a
												class="dropdown-divider"></a> <a href="#"
												class="dropdown-item">Separated link</a>
										</div>
									</div>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div class="row">
									<div class="col-md-8">
										<p class="text-center">
											<strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
										</p>

										<div class="chart">
											<!-- Sales Chart Canvas -->
											<canvas id="salesChart" height="180" style="height: 180px;"></canvas>
											<!-- <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas> -->
										</div>
										<!-- /.chart-responsive -->
									</div>
									<!-- /.col -->
									<div class="col-md-4">
										<p class="text-center">
											<strong>Goal Completion</strong>
										</p>

										<div class="progress-group">
											Add Products to Cart <span class="float-right"><b>160</b>/200</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-primary" style="width: 80%"></div>
											</div>
										</div>
										<!-- /.progress-group -->

										<div class="progress-group">
											Complete Purchase <span class="float-right"><b>310</b>/400</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-danger" style="width: 75%"></div>
											</div>
										</div>

										<!-- /.progress-group -->
										<div class="progress-group">
											<span class="progress-text">Visit Premium Page</span> <span
												class="float-right"><b>480</b>/800</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-success" style="width: 60%"></div>
											</div>
										</div>

										<!-- /.progress-group -->
										<div class="progress-group">
											Send Inquiries <span class="float-right"><b>250</b>/500</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-warning" style="width: 50%"></div>
											</div>
										</div>
										<!-- /.progress-group -->
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- ./card-body -->
							<div class="card-footer">
								<div class="row">
									<div class="col-sm-3 col-6">
										<div class="description-block border-right">
											<span class="description-percentage text-success"><i
												class="fas fa-caret-up"></i> 17%</span>
											<h5 class="description-header">$35,210.43</h5>
											<span class="description-text">TOTAL REVENUE</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-6">
										<div class="description-block border-right">
											<span class="description-percentage text-warning"><i
												class="fas fa-caret-left"></i> 0%</span>
											<h5 class="description-header">$10,390.90</h5>
											<span class="description-text">TOTAL COST</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-6">
										<div class="description-block border-right">
											<span class="description-percentage text-success"><i
												class="fas fa-caret-up"></i> 20%</span>
											<h5 class="description-header">$24,813.53</h5>
											<span class="description-text">TOTAL PROFIT</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-6">
										<div class="description-block">
											<span class="description-percentage text-danger"><i
												class="fas fa-caret-down"></i> 18%</span>
											<h5 class="description-header">1200</h5>
											<span class="description-text">GOAL COMPLETIONS</span>
										</div>
										<!-- /.description-block -->
									</div>
								</div>
								<!-- /.row -->
							</div>
							<!-- /.card-footer -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					<div class="col-md-8">
						<!-- MAP & BOX PANE -->
						<div class="card">
							<!-- <div class="card-header">
                <h3 class="card-title">US-Visitors Report</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div> -->
							<!-- /.card-header -->

							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						<div class="row">
							<div class="col-md-6">
								<!-- DIRECT CHAT -->
								<div class="card direct-chat direct-chat-warning">
									<div class="card-header">
										<h3 class="card-title">Direct Chat</h3>

										<div class="card-tools">
											<span title="3 New Messages" class="badge badge-warning">3</span>
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
												<div class="direct-chat-text">Working with AdminLTE on
													a great new app! Wanna join?</div>
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
															</span> <span class="contacts-list-msg">How have you
																been? I was...</span>
														</div> <!-- /.contacts-list-info -->
												</a></li>
												<!-- End Contact Item -->
												<li><a href="#"> <img class="contacts-list-img"
														src="/assets/dist/img/user7-128x128.jpg" alt="User Avatar">

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
															</span> <span class="contacts-list-msg">I'll call you
																back at...</span>
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
													<button type="button" class="btn btn-warning">Send</button>
												</span>
											</div>
										</form>
									</div>
									<!-- /.card-footer-->
								</div>
								<!--/.direct-chat -->
							</div>
							<!-- /.col -->

							<div class="col-md-6">
								<!-- USERS LIST -->
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">Latest Members</h3>

										<div class="card-tools">
											<span class="badge badge-danger">8 New Members</span>
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
									<!-- /.card-header -->
									<div class="card-body p-0">
										<ul class="users-list clearfix">
											<li><img src="/assets/dist/img/user1-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Alexander
													Pierce</a> <span class="users-list-date">Today</span></li>
											<li><img src="/assets/dist/img/user8-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Norman</a>
												<span class="users-list-date">Yesterday</span></li>
											<li><img src="/assets/dist/img/user7-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Jane</a>
												<span class="users-list-date">12 Jan</span></li>
											<li><img src="/assets/dist/img/user6-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">John</a>
												<span class="users-list-date">12 Jan</span></li>
											<li><img src="/assets/dist/img/user2-160x160.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Alexander</a>
												<span class="users-list-date">13 Jan</span></li>
											<li><img src="/assets/dist/img/user5-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Sarah</a>
												<span class="users-list-date">14 Jan</span></li>
											<li><img src="/assets/dist/img/user4-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Nora</a>
												<span class="users-list-date">15 Jan</span></li>
											<li><img src="/assets/dist/img/user3-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Nadia</a>
												<span class="users-list-date">15 Jan</span></li>
										</ul>
										<!-- /.users-list -->
									</div>
									<!-- /.card-body -->
									<div class="card-footer text-center">
										<a href="javascript:">View All Users</a>
									</div>
									<!-- /.card-footer -->
								</div>
								<!--/.card -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->

						<!-- TABLE: LATEST ORDERS -->
						<div class="card">
							<div class="card-header border-transparent">
								<h3 class="card-title">Sản phẩm bán chạy</h3>

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
							<!-- /.card-header -->
							<div class="card-body p-0">
								<div class="table-responsive">
									<table class="table m-0">
										<thead>
											<tr>
												<th>STT</th>
												<th>Tên sản phẩm</th>
												<th>Đánh giá</th>
												<th>Lượt mua</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="pages/examples/invoice.html">011</a></td>
												<td>Sách Giáo Khoa Lớp 1</td>
												<td><span class="badge badge-success">Xuất sắc</span></td>
												<td>
													<div class="sparkbar" data-color="#00a65a" data-height="20">12.000</div>
												</td>
											</tr>
											<tr>
												<td><a href="pages/examples/invoice.html">1848</a></td>
												<td>Sách Ngữ Văn 12</td>
												<td><span class="badge badge-warning">Trung bình</span></td>
												<td>
													<div class="sparkbar" data-color="#f39c12" data-height="20">2090</div>
												</td>
											</tr>
											<tr>
												<td><a href="pages/examples/invoice.html">7429</a></td>
												<td>Sách giáo trình tiếng anh</td>
												<td><span class="badge badge-danger">Thấp</span></td>
												<td>
													<div class="sparkbar" data-color="#f56954" data-height="20">100</div>
												</td>
											</tr>
											<tr>
												<td><a href="pages/examples/invoice.html">866446</a></td>
												<td>Sách lập trình java căn bản</td>
												<td><span class="badge badge-info">Tốt</span></td>
												<td>
													<div class="sparkbar" data-color="#00c0ef" data-height="20">5916</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.card-body -->
							<div class="card-footer clearfix">
								<a href="javascript:void(0)"
									class="btn btn-sm btn-info float-left">Place New Order</a> <a
									href="javascript:void(0)"
									class="btn btn-sm btn-secondary float-right">View All
									Orders</a>
							</div>
							<!-- /.card-footer -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->

					<div class="col-md-4">
						<!-- Info Boxes Style 2 -->
						<div class="info-box mb-3 bg-warning">
							<span class="info-box-icon"><i class="fas fa-tag"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Inventory</span> <span
									class="info-box-number">5,200</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
						<div class="info-box mb-3 bg-success">
							<span class="info-box-icon"><i class="far fa-heart"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Mentions</span> <span
									class="info-box-number">92,050</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
						<div class="info-box mb-3 bg-danger">
							<span class="info-box-icon"><i
								class="fas fa-cloud-download-alt"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Downloads</span> <span
									class="info-box-number">114,381</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
						<div class="info-box mb-3 bg-info">
							<span class="info-box-icon"><i class="far fa-comment"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Direct Messages</span> <span
									class="info-box-number">163,921</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
						<hr>
						<!-- <div class="card">
              <div class="card-header">
                <h3 class="card-title">Browser Usage</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div> -->
						<!-- /.card-header -->

						<!-- /.card-body -->

						<!-- /.card -->

						<!-- PRODUCT LIST -->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Recently Added Products</h3>

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
							<!-- /.card-header -->
							<div class="card-body p-0">
								<ul class="products-list product-list-in-card pl-2 pr-2">
									<li class="item">
										<div class="product-img">
											<img src="/assets/dist/img/default-150x150.png"
												alt="Product Image" class="img-size-50">
										</div>
										<div class="product-info">
											<a href="javascript:void(0)" class="product-title">Samsung
												TV <span class="badge badge-warning float-right">$1800</span>
											</a> <span class="product-description"> Samsung 32" 1080p
												60Hz LED Smart HDTV. </span>
										</div>
									</li>
									<!-- /.item -->
									<li class="item">
										<div class="product-img">
											<img src="/assets/dist/img/default-150x150.png"
												alt="Product Image" class="img-size-50">
										</div>
										<div class="product-info">
											<a href="javascript:void(0)" class="product-title">Bicycle
												<span class="badge badge-info float-right">$700</span>
											</a> <span class="product-description"> 26" Mongoose
												Dolomite Men's 7-speed, Navy Blue. </span>
										</div>
									</li>
									<!-- /.item -->
									<li class="item">
										<div class="product-img">
											<img src="/assets/dist/img/default-150x150.png"
												alt="Product Image" class="img-size-50">
										</div>
										<div class="product-info">
											<a href="javascript:void(0)" class="product-title"> Xbox
												One <span class="badge badge-danger float-right">
													$350 </span>
											</a> <span class="product-description"> Xbox One Console
												Bundle with Halo Master Chief Collection. </span>
										</div>
									</li>
									<!-- /.item -->
									<li class="item">
										<div class="product-img">
											<img src="/assets/dist/img/default-150x150.png"
												alt="Product Image" class="img-size-50"> <img
												src="/assets/dist/img//default-150x150.png" alt="">
										</div>
										<div class="product-info">
											<a href="javascript:void(0)" class="product-title">PlayStation
												4 <span class="badge badge-success float-right">$399</span>
											</a> <span class="product-description"> PlayStation 4
												500GB Console (PS4) </span>
										</div>
									</li>
									<!-- /.item -->
								</ul>
							</div>
							<!-- /.card-body -->
							<div class="card-footer text-center">
								<a href="javascript:void(0)" class="uppercase">View All
									Products</a>
							</div>
							<!-- /.card-footer -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!--/. container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>

	<!-- ChartJS -->
	<script src="/assets/plugins/chart.js/Chart.min.js"></script>

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


	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>


	<script>
		$(function() {
			'use strict'

			/* ChartJS
			 * -------
			 * Here we will create a few charts using ChartJS
			 */

			//-----------------------
			// - MONTHLY SALES CHART -
			//-----------------------
			// Get context with jQuery - using jQuery's .get() method.
			var salesChartCanvas = $('#salesChart').get(0).getContext('2d')

			var salesChartData = {
				labels : [ 'January', 'February', 'March', 'April', 'May',
						'June', 'July' ],
				datasets : [ {
					label : 'Digital Goods',
					backgroundColor : 'rgba(60,141,188,0.9)',
					borderColor : 'rgba(60,141,188,0.8)',
					pointRadius : false,
					pointColor : '#3b8bba',
					pointStrokeColor : 'rgba(60,141,188,1)',
					pointHighlightFill : '#fff',
					pointHighlightStroke : 'rgba(60,141,188,1)',
					data : [ 28, 48, 40, 19, 86, 27, 90 ]
				}, {
					label : 'Electronics',
					backgroundColor : 'rgba(210, 214, 222, 1)',
					borderColor : 'rgba(210, 214, 222, 1)',
					pointRadius : false,
					pointColor : 'rgba(210, 214, 222, 1)',
					pointStrokeColor : '#c1c7d1',
					pointHighlightFill : '#fff',
					pointHighlightStroke : 'rgba(220,220,220,1)',
					data : [ 65, 59, 80, 81, 56, 55, 40 ]
				} ]
			}

			var salesChartOptions = {
				maintainAspectRatio : false,
				responsive : true,
				legend : {
					display : false
				},
				scales : {
					xAxes : [ {
						gridLines : {
							display : false
						}
					} ],
					yAxes : [ {
						gridLines : {
							display : false
						}
					} ]
				}
			}

			// This will get the first returned node in the jQuery collection.
			// eslint-disable-next-line no-unused-vars
			var salesChart = new Chart(salesChartCanvas, {
				type : 'line',
				data : salesChartData,
				options : salesChartOptions
			})
		});
	</script>

</body>
</html>