<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Manager</title>
<!-- bootstrap -->
<%@include file = "/common/taglib-link.jsp" %>
</head>
<style>
/* breadcrumb */
.breadcrumb-item a {
	color: rgba(33, 37, 41, 0.75);
	text-decoration: none;
}

.container-them-sanpham {
	background-color: whitesmoke;
}

/* TITLE */
.title-manage-products {
	padding-top: 20px;
	margin-left: 2%;
	margin-bottom: 30px;
}

/* CONTAINER TABLE */
.container-info-sanpham {
	padding: 25px 15px 25px 15px;
	background-color: white;
}

.container-info-sanpham .info {
	margin-top: 20px;
	font-size: 15px;
}

/* CONTAINER TABLE */
.container-info-sanpham .info input {
	font-size: 15px;
}

.form-info-sanpham {
	margin: 0px;
}

.title {
	padding-bottom: 5px;
	margin-left: 25px;
	border-bottom: 1px solid #dee2e6;
}

.info {
	padding: 0 20px;
	margin: 0 0 20px 0;
}

.info span {
	font-size: 15px;
}

/* Ảnh */
.container-images {
	width: 100%;
	height: 200px;
	border: 1px solid #dee2e6;
	display: flex;
	justify-content: center; /* Canh giữa theo chiều ngang */
	align-items: center;
}

.show-img-div {
	display: flex;
}

/* Quy tắc chung cho .show-img-div .imageOld và .image */
.show-img-div .imageOld, .show-img-div .image {
	position: relative;
	display: inline-block;
	margin-right: 10px; /* Để tạo một khoảng cách giữa hình ảnh và nút x */
}

/* Quy tắc cho img bên trong .show-img-div .imageOld và .image */
.show-img-div .imageOld img, .show-img-div .image img {
	height: 150px;
	width: auto; /* Đảm bảo hình ảnh lấp đầy container */
	display: block;
	box-shadow: 0 0 6px #dee2e6;
	padding: 10px 10px;
}

/* Quy tắc cho span bên trong .show-img-div .imageOld và .image */
.show-img-div .imageOld span, .show-img-div .image span {
	position: absolute;
	top: 5px;
	right: 5px;
	background-color: rgba(255, 255, 255, 0.7); /* Tạo một nền cho nút x */
	padding: 0px 5px;
	border-radius: 50%;
	cursor: pointer;
	transition: background-color 0.3s;
	/* Hiệu ứng màu nền khi di chuột qua */
}

/* Quy tắc cho hover của span bên trong .show-img-div .image và .imageOld */
.show-img-div .image span:hover, .show-img-div .imageOld span:hover {
	background-color: #dee2e6; /* Tăng độ mờ của nút x khi di chuột qua */
}

/* CSS INPUT FILE  */
#file-upload[type="file"] {
	display: none;
}

.container-file-upload {
	border: 2px dotted #dee2e6;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* Tùy chỉnh giao diện của nút tùy chọn tập tin */
.custom-file-upload {
	/* background-color: #4CAF50; */
	/* color: white; */
	padding: 10px 20px;
	text-align: center;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}
/* Khi hover vào nút tùy chọn tập tin */
.custom-file-upload:hover {
	background-color: #e3e6de;
}

.custom-file-upload i {
	margin-right: 5px;
}

/* Giá sản phẩm */
.container-price-sanpham {
	padding: 25px 15px 25px 15px;
	margin-top: 10px;
	background-color: white;
	font-size: 15px;
}

.container-price-sanpham .info {
	margin-top: 20px;
}

.container-price-sanpham .info input {
	font-size: 15px;
}

/* Loại sản phẩm */
.loai-sanpham {
	display: flex;
	justify-content: space-around;
}

#loai-sanpham {
	font-size: 15px;
	margin-right: 10px;
}

/* button thêm loại */
.loai-sanpham .button-them {
	/* width: 120px; */
	
}

.loai-sanpham .button-them button {
	font-size: 15px;
}

/* BUTTON */
.container-button {
	border-top: 1px solid #dee2e6;
	padding: 25px 15px 25px 15px;
	background-color: white;
	display: flex;
	justify-content: end;
}

.container-button>button {
	margin-left: 10px;
	font-size: 15px;
}
/* .container-button a {
    color: white;
    text-decoration: none;
} */
</style>
<body class="hold-transition sidebar-mini layout-fixed">


	<!-- bootstrap -->
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
	<!-- Font Awesome Icons -->
	<link rel="stylesheet"
		href="/assets/plugins/fontawesome-free/css/all.min.css">
	<!-- overlayScrollbars -->
	<link rel="stylesheet"
		href="/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/assets/dist/css/adminlte.min.css">
	<!-- Link icon -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
	<link rel="stylesheet"
		href="/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet"
		href="/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet"
		href="/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

	<link rel="stylesheet" href="/assets/css/manageAddProduct.css">




	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">Quản Lý Sản Phẩm</h1>
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
				<div class="row">
					<section class="col-lg-12 connectedSortable">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Quản lý</h3>
							</div>
							<form action="/admin/create" method="post"
								enctype="multipart/form-data">
								<div class="card-body" style="padding: 0px;">
									<main class="container-them-sanpham ">
										<div class="container-col-1">
											<!-- 	<form class="container-info-sanpham"> -->
											<div class="form-info-sanpham row">
												<div class="info col-md-6">
													<div class="lbl-info">
														<label for="ten-sanpham" class="form-label">Tên
															sản phẩm <span style="color: red;">*</span>
														</label>
													</div>
													<input type="text" class="form-control" name="name"
														value="${product.nameProduct}" id="ten-sanpham"
														placeholder="Nhập tên sản phẩm" />
												</div>

												<div class="info col-md-6">
													<div class="lbl-info">
														<label for="ten-sanpham" class="form-label">Loại
															sản phẩm <span style="color: red;">*</span>
														</label>
													</div>
													<select class="form-control" name="category">
														<c:forEach var="item" items="${listCategories}">
															<option value="${item.id}"
																${item.id == product.category.id?'selected':''}>${item.name}</option>
														</c:forEach>
													</select>
												</div>

												<div class="info col-md-6">
													<div class="lbl-info">
														<label for="id-sanpham" class="form-label">Mã sản
															phẩm <span style="color: red;">*</span>
														</label>
													</div>
													<input type="text" class="form-control" name="id"
														value="${product.id}" id="id-sanpham" />
												</div>

												<div class="info col-md-6">
													<div class="lbl-info">
														<label for="soluong-sanpham" class="form-label">Số
															lượng </label>
													</div>
													<input type="number" class="form-control" name="quantity"
														id="soluong-sanpham" value="${product.quantity}" />
												</div>

												<div class="info col-md-12 row">
													<div class="message"></div>
													<div class="col-md-6 container-file-upload">
														<label for="file-upload"
															class="form-label custom-file-upload"> <i
															class="fa fa-cloud-upload "></i> Đăng tải ảnh sản phẩm
														</label>
													</div>
													<div class="col-md-6 save-image">
														<div id="input-save-image">
															<input type="file" class="form-control" id="file-upload"
																multiple="multiple" name="photo"
																accept="image/png, image/jpeg, imgae/jpg" />
														</div>
														<div class="show-img-form slider">
															<div class="container-images slides">
																<div class="show-img-div">
																	<%-- 							<c:forEach var="item" items="${product.images}"
																			varStatus="index">

																			<div class="imageOld">
																				<input type="text" name="idImage" value="${item.id}"
																					hidden="true"> <img
																					src="/image/${item.name}" alt="image"><span
																					style="cursor: pointer;" id="deleteImage"
																					onclick="deleteImage(${index.index})"
																					class="btnDelete">×</span>
																				<table>
																					<col>
																				</table>
																			</div>
																		</c:forEach> --%>
																</div>
															</div>
															<!-- <button class="prev" onclick="prevClick()">&#10094</button>
                                        <button class="next" onclick="nextClick()">&#10095</button> -->
														</div>
													</div>
												</div>
											</div>
											<!-- 		</form> -->

											<div class="container-price-sanpham">
												<div class="title">
													<h6>Giá sản phẩm</h6>
												</div>
												<div class="info col-md-12">
													<div class="lbl-info">
														<label for="price-sanpham" class="form-label">Mức
															giá của sản phẩm <span style="color: red;">*</span>
														</label>
													</div>
													<div class="input-group">
														<input type="number" class="form-control" name="price"
															id="gia-sanpham" value="${product.price}" min="0" /> <span
															class="input-group-text" id="khoiluong-sanpham2">VNĐ</span>
													</div>
												</div>
												<div class="info col-md-12">
													<div class="lbl-info">
														<label for="sale-sanpham" class="form-label">Mô tả</label>
													</div>
													<div class="input-group">
														<textarea class="form-control" rows="" cols=""
															name="content">${product.content}</textarea>
													</div>
												</div>

											</div>
											<div class="container-button">

												<button type="submit" class="btn btn-outline-success"
													style="width: 100px;" formaction="/admin/create">Thêm
													mới</button>
												<button type="submit" class="btn btn-outline-primary"
													style="width: 100px;" formaction="/update/${product.id}">Sửa</button>
												<a class="btn btn-outline-dark"
													style="width: 100px; margin-left: 10px">Mới</a>
											</div>
										</div>
									</main>
								</div>
							</form>
						</div>
					</section>
					<!-- Table -->
					<section class="col-lg-12 connectedSortable">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Danh sách sản phẩm</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<table id="example1" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th class="align-middle text-center">Mã sản phẩm</th>
											<th colspan="2" class="align-middle text-center">Sản
												phẩm</th>
											<th class="align-middle text-center">Số lượng</th>
											<th class="align-middle text-center">Giá</th>
											<th class="align-middle text-center">Đánh giá</th>
											<th class="align-middle text-center">Đã bán</th>
											<th class="align-middle text-center" style="width: 100px;">Thao
												tác</th>
										</tr>
									</thead>
									<tbody>
										<%-- 					<c:forEach var="item" items="${listProduct}">
												<tr>
													<td class="align-middle">${item.id}</td>
													<td class="align-middle">
														<div class="row">
															<c:forEach var="it" items="${item.images}">
																<div class="col-md-6" style="padding: 0px">
																	<img src="/image/${it.name}" alt="" width="50px">
																</div>
															</c:forEach>

														</div>
													</td>
													<td class="align-middle">${item.nameProduct}</td>
													<td class="align-middle">${item.quantity}</td>
													<td class="align-middle">${item.price}</td>
													<td class="align-middle">${item.stars}</td>
													<td class="align-middle">${item.amountSold}</td>
													<td class="align-middle text-center"><a
														href="/admin/edit/${item.id}" class="btn btn-primary">Edit</a>
														<a href="/admin/delete/${item.id}" class="btn btn-danger">
															Xóa</a></td>
												</tr>
											</c:forEach> --%>
										<tr>
											<td class="align-middle">1</td>
											<td class="align-middle">img</td>
											<td class="align-middle">Sản phẩm 1</td>
											<td class="align-middle">200</td>
											<td class="align-middle">99.000 <sup>đ</sup></td>
											<td class="align-middle">5*</td>
											<td class="align-middle">150</td>
											<td class="align-middle text-center"><a
												href="/admin/edit/${item.id}" class="btn btn-primary">Edit</a>
												<a href="/admin/delete/${item.id}" class="btn btn-danger">
													Xóa</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- /.card-body -->

					</section>
				</div>
				<!-- /.card -->



			</div>

			<!--/. container-fluid -->
		</section>
		<!-- /.content -->
		<!-- /.content-wrapper -->
	</div>
	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->



	<%@include file="/common/taglib-js.jsp"%>
	<script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true, "lengthChange": false, "autoWidth": false,
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
    });
    
  </script>


	<script>
    let imagesArray = [];
    let imageOld = [];
    let imageNew = document.querySelectorAll(".image");
    
    var listImageOld = document.querySelectorAll(".imageOld");
    function deleteImage(index){
    	listImageOld[index].remove();
    	console.log(listImageOld.length);
    }; 
    //INPUT
    containerInputSaveImage = document.querySelector("#input-save-image");
    inputSaveImage = document.querySelector("#file-upload");
    //SHOW
    containerShowImg = document.querySelector(".show-img-form");
    showImg = document.querySelector(".show-img-div");
    //Message
    message = document.querySelector(".message");
  //  deleteImage = [];
    // Hàm kiểm tra xem ảnh đã tồn tại trong mảng hay chưa
    function isImageExists(image) {
      return imagesArray.some(existingImage => {
        return existingImage.name === image.name; //so sánh theo tên ảnh
      });
    }

    //THÊM IMG
   if (inputSaveImage) {
      inputSaveImage.addEventListener("change", () => {
    	//  imagesArray=[];
        const files = inputSaveImage.files;
        for (let index = 0; index < files.length; index++) {
          const image = files[index];
          const maxSize = 5 * 1024 * 1024; // 5 MB (có thể điều chỉnh theo nhu cầu)
          const allowedTypes = ['image/png', 'image/jpeg', 'image/jpg'];
          const newImageCount = event.target.files.length + showImg.childElementCount;

          // Kiểm tra xem ảnh đã tồn tại trong mảng hay chưa
          if (!isImageExists(image)) {
            imagesArray.push(image);
            imageOld.push(imagesArray);
          } else {
            imagesArray.some(existingImage => {
              existingImage === image; //so sánh theo tên ảnh
            });
          };

    if (event.target.files.length <= 3) {
            message.innerHTML = "";
            message.style.cssText = "";
          }

          if (image.size > maxSize) {
            message.innerHTML = "Kích thước file ảnh quá lớn, vui lòng chọn file khác.";
            message.style.cssText = "background-color: #f8d7da; color :#b71c1c";
            return;
          }
          // Kiểm tra loại file
          if (!allowedTypes.includes(image.type)) {
            message.innerHTML('Loại file không hợp lệ, vui lòng chọn file ảnh có định dạng PNG, JPEG hoặc JPG.');
            message.style.cssText = "background-color: #f8d7da; color :#b71c1c";
            return;
          }
        }
        displayImage();
      })
    } else {
      console.log("Element with id 'show-img-form' not found.");
    }
  

    // DISPLAY IMAGE
    function displayImage() {
    	 imageNew = document.querySelectorAll(".image");
    	 if(imageNew.length>0){
    		  
    	    	for(var i =0; i<imageNew.length;i++){
    			imageNew[i].remove();
    	    	}
    		
    	}
      //showImg.innerHTML = ""; // Xóa bỏ tất cả các phần tử hiện có trước khi tạo mới
      imagesArray.forEach((imageFile, index) => {
        // Tạo các phần tử ảnh và nút xóa
/*         const table = document.createElement('table');
        const col = document.createElement('col'); */
        const input = document.createElement('input');
        input.setAttribute('type','text');
        input.setAttribute('hidden','true');
        input.setAttribute('value',' ');
        input.setAttribute('name','idImageNew');
        const img = document.createElement('img');
        img.src = URL.createObjectURL(imageFile);
        img.alt = 'image';
        const span = document.createElement('span');
        span.textContent = '×';
        span.style.cursor = 'pointer';
         span.onclick = function () {
           imagesArray.splice(index, 1);
          displayImage();
         };

        // Thêm các phần tử vào container
        const imageContainer = document.createElement('div');
        imageContainer.appendChild(input);
        imageContainer.classList.add('image');
        imageContainer.appendChild(img);
        imageContainer.appendChild(span);

/* 
        imageContainer.appendChild(table);
        table.appendChild(col); */

        // Thêm container vào showImg
        showImg.appendChild(imageContainer);
        // slideShow();
      });
     // imagesArray = []
    }

    containerShowImg.addEventListener("submit", (e) => {
      e.preventDefault();
      sendImageToServer();
    });

    // table

  </script>
</body>

</html>