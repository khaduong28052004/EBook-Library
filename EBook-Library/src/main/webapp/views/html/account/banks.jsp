<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
                          <style type="text/css">
     <%@include file="/views/css/banks.css" %>
  </style>
</head>
<body>
<%@include file="/views/layout/account/header.jsp" %>
<main class="container" style="margin: 0px; max-width: 2000px;">
<div class="row">
    <aside class="col-md-2">
        <nav class="vertical-menu">
            <div class="menu-item">
                <a class="text-nav" href="javascript:void(0);" onclick="toggleSubmenu()">Thông Tin Cá Nhân</a>
                <div class="submenu">
                    <a class="text-subnav" href="/Ebook/account/updateProfile">Xem Hồ Sơ</a>
                    <a class="activeMenuCon" href="/Ebook/account/banks">Ngân Hàng</a>
                </div>
            </div>
            <a class="text-nav" href="/Ebook/account/bill">Đơn Hàng</a>
        </nav>
    </aside>
    <aside class="col-md-10" >
        <div class="row">
            <div class="col-md-12 menuNgangNe">
                <div class="nav navbar">
                        <div class="card-header headerTrangThai" style="background-color: white;">
                          <p class="tenNguoiBan">Tài Khoản Ngân Hàng Của Tôi</p>
                          <p class="noiDungPhai" > <button class="danhGia btn btn-danger"  data-bs-toggle="modal" data-bs-target="#themTKNH1">Thêm Tài Khoản Ngân Hàng</button></p>
                        </div>
                        
                </div>
               
            </div>
        </div>
        <div style="height: 100px;"></div>
        <div class="card">
            <div class="card-custom">
                <div class="card-body">
                    <h6 class="card-title" style="font-weight: bold;">BDIV: Ngân hàng TMCP Đầu tư và Phát triển Việt Nam <span style="width: 90px;  margin-left: 10px ;color: green; font-size: 17px;">Mặc Định</span></h6>
                    <p class="card-text">Họ và tên: Phạm Trí Phúc <span class="soTK">Số tài khoản: ****098</span></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-outline-danger">Xóa</a>
                    <button type="button" class="btn btn-primary" disabled>Thiết lập làm mặc định</button>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-custom">
                <div class="card-body">
                    <h6 class="card-title" style="font-weight: bold;">BDIV: Ngân hàng TMCP Đầu tư và Phát triển Việt Nam</h6>
                    <p class="card-text">Họ và tên: Phạm Trí Phúc <span class="soTK">Số tài khoản: ****098</span></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-outline-danger">Xóa</a>
                    <a href="#" class="btn btn-primary">Thiết lập làm mặc định</a>
                </div>
            </div>
        </div>


        <div class="card">
            <div class="card-custom">
                <div class="card-body">
                    <h6 class="card-title" style="font-weight: bold;">BDIV: Ngân hàng TMCP Đầu tư và Phát triển Việt Nam </h6>
                    <p class="card-text">Họ và tên: Phạm Trí Phúc <span class="soTK">Số tài khoản: ****098</span></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-outline-danger">Xóa</a>
                    <a href="#" class="btn btn-primary">Thiết lập làm mặc định</a>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-custom">
                <div class="card-body">
                    <h6 class="card-title" style="font-weight: bold;">BDIV: Ngân hàng TMCP Đầu tư và Phát triển Việt Nam </h6>
                    <p class="card-text">Họ và tên: Phạm Trí Phúc <span class="soTK">Số tài khoản: ****098</span></p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-outline-danger">Xóa</a>
                    <a href="#" class="btn btn-primary">Thiết lập làm mặc định</a>
                </div>
            </div>
    </aside>
</div>
        </main>
        <footer>
            <!-- place footer here -->
        </footer>
        <!-- Bootstrap JavaScript Libraries -->

<!-- Modal -->
<div class="modal fade" id="themTKNH1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Thông Tin Người Dùng</h1>
        </div>
        <div class="modal-body">
          <div class="Page1">
            
            <form action="">
                <div class="mb-3">
                   <input type="text" name="" class="form-control" id="" placeholder="Tên" />
                </div>
                <div class="mb-3">
                    <input type="text" name="" class="form-control" id="" placeholder="Số CMND" />
                </div>
            </form>
          </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Trở Lại</button>
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#themTKNH2">Tiếp Tục</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="themTKNH2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Thêm Tài Khoản Ngân Hàng</h1>
        </div>
        <div class="modal-body">
          <div class="Page2">
            <form id="registrationForm">
                <div class="mb-3">
                    <select class="form-select" aria-label="Default select example">
                        <option>Tên ngân hàng</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                      </select>
                </div>
                <div class="mb-3">
                    <input type="text" name="accountNumber" class="form-control" placeholder="Số tài khoản" required />
                </div>
                <div class="mb-3">
                    <input type="text" name="fullName" class="form-control" placeholder="Tên đầy đủ (viết hoa, không dấu)" required />
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                    <label class="form-check-label" for="flexCheckChecked">
                      Đặt làm mặc định
                    </label>
                </div>
            </form>
          </div>
          <div id="loading" class="d-none text-center">
            <div class="spinner-border text-primary" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
            <p style="font-size: 16px;">Đang xử lý, vui lòng chờ...</p>
          </div>
          <div id="successMessage" class="d-none text-center">
            <p style="font-size: 16px;">Thêm tài khoản ngân hàng thành công!</p>
          </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#themTKNH1">Trở Lại</button>
            <button type="button" class="btn btn-success" id="completeButton">Hoàn Thành</button>
        </div>
      </div>
    </div>
  </div>
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
        
        <script type="text/javascript">
        function toggleSubmenu() {
            var menuItem = document.querySelector('.menu-item');
            if (menuItem) {
                menuItem.classList.toggle('open');
            }
        }

        document.getElementById('completeButton').addEventListener('click', function() {
            // Ẩn form và hiển thị hiệu ứng tải
            document.querySelector('.Page2').classList.add('d-none');
            document.getElementById('loading').classList.remove('d-none');
            
            // Giả lập việc xử lý đăng ký (sử dụng setTimeout để mô phỏng quá trình xử lý)
            setTimeout(function() {
                // Ẩn hiệu ứng tải và hiển thị thông báo hoàn thành
                document.getElementById('loading').classList.add('d-none');
                document.getElementById('successMessage').classList.remove('d-none');
            }, 2000); // Thời gian xử lý giả lập là 2 giây

                // Chuyển trang sau 2 giây
                setTimeout(function() {
                window.location.href = '/account/banks'; // Thay thế bằng URL trang bạn muốn chuyển tới
            }, 4000); // 2000 milliseconds = 2 seconds
        });

        </script>

</body>
</html>