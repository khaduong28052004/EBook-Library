<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
        <style type="text/css">
        <%@include file="/views/css/bill.css"%>
        </style>
</head>
<body>
        <%@include file="/views/layout/account/header.jsp"%>
 <main class="container" style="margin: 0px; max-width: 2000px;">
<div class="row">
    <aside class="col-md-2">
        <nav class="vertical-menu">
            <div class="menu-item">
                <a class="text-nav" href="javascript:void(0);" onclick="toggleSubmenu()">Thông Tin Cá Nhân</a>
                <div class="submenu">
                    <a class="text-subnav" href="/Ebook/account/updateProfile">Xem Hồ Sơ</a>
                    <a class="text-subnav" href="/Ebook/account/banks">Ngân Hàng</a>
                </div>
            </div>
            <a class="activeMenu2" href="/Ebook/account/bill">Đơn Hàng</a>
        </nav>
    </aside>
    <aside class="col-md-10" >
        <div class="row">
    <div class="col-9 menuNgangNe">
        <div class="nav navbar">
            <li class="nav-item">
                <a class="nav-linkMenu" id="tatCa" aria-current="page" href="#">Tất cả</a>
            </li>
            <li class="nav-item">
                <a class="nav-linkMenu" id="vanChuyen" aria-current="page" href="#">Vận chuyển</a>
            </li>
            <li class="nav-item">
                <a class="nav-linkMenu" id="choGiaoHang" aria-current="page" href="#">Chờ giao hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-linkMenu" id="hoanThanh" aria-current="page" href="#">Hoàn thành</a>
            </li>
            <li class="nav-item">
                <a class="nav-linkMenu" id="daHuy" aria-current="page" href="#">Đã hủy</a>
            </li>
            <li class="nav-item">
                <a class="nav-linkMenu " id="traHang" aria-current="page" href="#">Trả hàng/Hoàn tiền</a>
            </li>
        </div>
    </div>
</div>
    <div style="height: 50px;"></div>
        <div class="card">
            <div class="card-header">
              <p class="tenNguoiBan">
              <img width="24px" height="24px" src="/views/img/icon/user.png" alt="">
              <span>Bạch Ngọc Sách</span>
            </p>    

              <p class="noiDungPhai"> <span class="trangThai">Đơn hàng đã được giao thành công</span> | <span class="danhGia">ĐÁNH GIÁ</span></p>
            </div>
            <div class="card-body">
                <div class="list-book">
                            <div class="book">
                                <img src="/views/img/books/Truyen/NhanThuong.jpg" alt="">
                                <div class="book-content">
                                    <a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

                                    <div class="content">Nguyễn Thanh Tùng đứng trước chiếc cúp danh giá nhất
                                        của làng túc cầu Thế...</div>
                                    <div class="row info">
                                        <div class="col-6 info-book">
                                            <p class="gia">300.000đ</p>
                                            <p class="soLuong">x1</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                     </div>
                </div>
                <div class="card-footer">
                    <div class="chucNang">
                    <p class="thanhTien"> <span class="soLuong">Thành tiền:</span> <span class="gia">340.000đ</span></p>
                    <button type="button" class="btn btn-outline-secondary">Huỷ Đơn</button>
                        <button type="button" class="btn btn-danger">Mua lại</button>
                        <button type="button" class="btn btn-light">Liên hệ người bán</button>
                        <button type="button" class="btn btn-light">Xem đánh giá shop</button>
                    </div>
                </div>
        </div>
    

        <div class="card">
            <div class="card-header">
              <p class="tenNguoiBan">
              <img width="24px" height="24px" src="/views/img/icon/user.png" alt="">
              <span>Bạch Ngọc Sách</span>
            </p>    

              <p class="noiDungPhai"> <span class="trangThai">Đơn hàng đã được giao thành công</span> | <span class="danhGia">ĐÁNH GIÁ</span></p>
            </div>
            <div class="card-body">
                <div class="list-book">
                            <div class="book">
                                <img src="/views/img/books/Truyen/NhanThuong.jpg" alt="">
                                <div class="book-content">
                                    <a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

                                    <div class="content">Nguyễn Thanh Tùng đứng trước chiếc cúp danh giá nhất
                                        của làng túc cầu Thế...</div>
                                    <div class="row info">
                                        <div class="col-6 info-book">
                                            <p class="gia">300.000đ</p>
                                            <p class="soLuong">x1</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                     </div>
                </div>
                <div class="card-footer">
                    <div class="chucNang">
                    <p class="thanhTien"> <span class="soLuong">Thành tiền:</span> <span class="gia">340.000đ</span></p>
                    <button type="button" class="btn btn-outline-secondary">Huỷ Đơn</button>
                        <button type="button" class="btn btn-danger">Mua lại</button>
                        <button type="button" class="btn btn-light">Liên hệ người bán</button>
                        <button type="button" class="btn btn-light">Xem đánh giá shop</button>
                    </div>
                </div>
        </div>

        <div class="card">
            <div class="card-header">
              <p class="tenNguoiBan">
              <img width="24px" height="24px" src="/views/img/icon/user.png" alt="">
              <span>Bạch Ngọc Sách</span>
            </p>    

              <p class="noiDungPhai"> <span class="trangThai">Đơn hàng đã được giao thành công</span> | <span class="danhGia">ĐÁNH GIÁ</span></p>
            </div>
            <div class="card-body">
                <div class="list-book">
                            <div class="book">
                                <img src="/views/img/books/Truyen/NhanThuong.jpg"" alt="">
                                <div class="book-content">
                                    <a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

                                    <div class="content">Nguyễn Thanh Tùng đứng trước chiếc cúp danh giá nhất
                                        của làng túc cầu Thế...</div>
                                    <div class="row info">
                                        <div class="col-6 info-book">
                                            <p class="gia">300.000đ</p>
                                            <p class="soLuong">x1</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="book">
                                <img src="/views/img/books/Truyen/NhanThuong.jpg" alt="">
                                <div class="book-content">
                                    <a href="/Ebook/account/billDetails">Ngôi Sao Hy Vọng</a>

                                    <div class="content">Nguyễn Thanh Tùng đứng trước chiếc cúp danh giá nhất
                                        của làng túc cầu Thế...</div>
                                    <div class="row info">
                                        <div class="col-6 info-book">
                                            <p class="gia">300.000đ</p>
                                            <p class="soLuong">x1</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                     </div>
                </div>
                <div class="card-footer">
                    <div class="chucNang">
                    <p class="thanhTien"> <span class="soLuong">Thành tiền:</span> <span class="gia">640.000đ</span></p>
                    <button type="button" class="btn btn-outline-secondary">Huỷ Đơn</button>
                        <button type="button" class="btn btn-danger">Mua lại</button>
                        <button type="button" class="btn btn-light">Liên hệ người bán</button>
                        <button type="button" class="btn btn-light">Xem đánh giá shop</button>
                    </div>
                </div>
        </div>
    </aside>
</div>
        </main>
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
        <%@include file="/views/js/donHang.js"%>
        function toggleSubmenu() {
            var menuItem = document.querySelector('.menu-item');
            if (menuItem) {
                menuItem.classList.toggle('open');
            }
        }
        </script>
</body>
</html>