<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateProfile</title>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  <style type="text/css">
     <%@include file="/views/css/updateProfile.css" %>
  </style>
</head>
<body>
<%@include file="/views/layout/account/header.jsp" %>
 <main class="container" style="margin: 0px; max-width: 2000px;">
        <div class="row">
            <article class="col-md-2">
                <nav class="vertical-menu">
                    <div class="menu-item">
                        <a class="text-nav" href="javascript:void(0);" onclick="toggleSubmenu()">Thông Tin Cá Nhân</a>
                        <div class="submenu">
                            <a class=" activeMenuCon" href="/Ebook/account/updateProfile">Xem Hồ Sơ</a>
                            <a class="text-subnav" href="/Ebook/account/banks">Ngân Hàng</a>
                        </div>
                    </div>
                    <a class="text-nav" href="/Ebook/account/bill">Đơn Hàng</a>
                </nav>
            </article>
            <aside class="col-md-10 row">
                <article class="col-md-8">
                    <div class="title">
                      <p>Hồ sơ của tôi</p>
                      <p style="font-size: 1rem;padding: 0px; margin: 0px;" class="text-secondary">Quản lý thông tin hồ sơ để bảo
                        mật tài khoản</p>
                      <hr>
                    </div>
                    <div class="body">
                      <form action="">
                        <div class="form-group md-3">
                          <label for="tenShop" class="form-label">Tên shop</label>
                          <input type="text" class="form-control" id="tenShop" value="NaBi Shop">
                          <div class="form-text text-danger">Vui lòng nhập tên shop.</div>
                        </div>
                        <div class="form-group row g-3">
                          <div class="col">
                            <label for="fullname" class="form-label">Username</label>
                            <input type="text" class="form-control" id="fullname">
                            <div class="form-text text-danger">Vui lòng nhập Username.</div>
                          </div>
                          <div class="col">
                            <label for="fullname" class="form-label">Password</label>
                            <input type="password" class="form-control" id="fullname" readonly value="123213123123">
                          </div>
                        </div>
                        <div class="form-group row g-3">
                          <div class="col">
                            <label for="fullname" class="form-label">Họ và tên</label>
                            <input type="text" class="form-control" id="fullname">
                            <div class="form-text text-danger">Vui lòng nhập họ và tên.</div>
                          </div>
                          <div class="col">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email">
                            <div class="form-text text-danger">Vui lòng nhập Email.</div>
                          </div>
                        </div>
                        <div class=" form-group row g-3">
                          <div class="col">
                            <label for="birthday" class="form-label">Ngày sinh</label>
                            <input type="date" class="form-control" id="birthday">
                            <div class="form-text text-danger">Vui lòng nhập ngày tháng năm sinh.</div>
                          </div>
                          <div class="col">
                            <label for="sdt" class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="sdt">
                            <div class="form-text text-danger">Vui lòng nhập số điện thoại.</div>
                          </div>
                        </div>
                        <div class="form-group md-3 d-flex justify-content-center">
                          <button style="width: 100px;" class="btn btn-outline-success">Lưu</button>
                        </div>
                      </form>
                    </div>
                  </article>
                  <aside class="col-md-4">
                    <div class="showImgBia">
                      <img id="displayedBia"
                        src="https://w7.pngwing.com/pngs/377/303/png-transparent-watercolor-background-watercolor-hand-painted-small-fresh-thumbnail.png"
                        alt="">
                    </div>
                    <div class="showImgAvt">
                      <img id="displayeAvt" src="/img/account/anh2.jpg" alt="">
                    </div>
                    <div class="title-TenShop">
                      <p>NaBi Shop</p>
                    </div>
                    <div class="uploadImg">
                      <div class="form-group row g-3">
                        <div class="col">
                          <label for="ImgAvt" class="form-label">Ảnh đại diện</label>
                          <input type="file" class="form-control" id="ImgAvt">
                          <div class="form-text text-danger">Vui lòng thêm ảnh đại diện.</div>
                        </div>
                        <div class="col">
                          <label for="ImgBia" class="form-label">Ảnh bìa</label>
                          <input type="file" class="form-control" id="ImgBia">
                          <div class="form-text text-danger">Vui lòng thêm ảnh bìa.</div>
                        </div>
                      </div>
                    </div>
                  </aside>
            </aside>
        </div>
    </main>

    <script type="text/javascript">
    function toggleSubmenu() {
        var menuItem = document.querySelector('.menu-item');
        if (menuItem) {
            menuItem.classList.toggle('open');
        }
    }
    
    document.getElementById("ImgAvt").addEventListener("change", function (event) {
        var input = event.target;
        if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
            document.getElementById("displayeAvt").src = e.target.result;
          }
          reader.readAsDataURL(input.files[0]);
        }
      });
      document.getElementById("ImgBia").addEventListener("change", function (event) {
        var input = event.target;
        if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
            document.getElementById("displayedBia").src = e.target.result;
          }
          reader.readAsDataURL(input.files[0]);
        }
      });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>
</html>