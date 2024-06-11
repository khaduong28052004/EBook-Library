<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="/views/css/registerSell/registerSell03.css">
</head>
<body>
 <div class="nav">
        <div class="logo">
            <div class="image">
                <img src="/views/img/logo/V.jpg" alt="">
            </div>
            <div class="logo1">
                <a href="#">Virtual Library Web</a>
            </div>
        </div>
        <div class="avatar">
            <div class="container-avatar">
                <img src="/views/img/books/Truyen/NhanGianKhuc.jpg" alt="">
                <p class="username">TeoNV</p>
            </div>
        </div>
    </div>

    <main class="container">
        <div class="container-steps">
            <div class="step1">
                <div class="step-dot">
                    <span class="dot"></span>
                </div>
                <div class="step-content">Thông tin shop</div>
                <div class="step-tail">
                    <div class="tail"></div>
                </div>
            </div>
            <div class="step2">
                <div class="step-dot">
                    <span class="dot"></span>
                </div>
                <div class="step-content">Thông tin thuế</div>
                <div class="step-tail">
                    <div class="tail"></div>
                </div>
            </div>
            <div class="step3">
                <div class="step-dot">
                    <span class="dot"></span>
                </div>
                <div class="step-content">Thông tin định danh</div>
                <div class="step-tail">
                    <div class="tail"></div>
                </div>
            </div>
            <div class="step4">
                <div class="step-dot">
                    <span class="dot"></span>
                </div>
                <div class="step-content">Chờ xác nhận</div>
                <div class="step-tail">
                    <div class="tail"></div>
                </div>
            </div>
            <div class="step5">
                <div class="step-dot">
                    <span class="dot"></span>
                </div>
                <div class="step-content">Hoàn tất</div>
                <div class="step-tail">
                    <div class="tail-end"></div>
                </div>
            </div>
        </div>
        <div class="container-form">
            <div class="container-thongbao">
                <div class="thongbao">
                    <div class="thongbao-icon">
                        <img src="/img/icon/info-circle-svgrepo-com.png" alt="">
                    </div>
                    <div class="thongbao-content">
                        <span>Vui lòng cung cấp Thông Tin Định Danh của Chủ Shop (nếu là cá nhân), hoặc Người Đại Diện
                            Pháp Lý trên giấy đăng ký kinh doanh.</span>
                    </div>
                </div>
            </div>
        <form class="row" action="${pageContext.request.contextPath}/Ebook/user/registerSell/registerSell03" method="post" enctype="multipart/form-data">
            <div class="md-12 form-radio">
                <label for="giayto" class="label-control">
                    <span style="color: red;">*</span> Hình thức định danh
                </label>
                <div class="radios">
                    <div>
                        <input type="radio"  value="CCCD" required> Căn cước công dân (CCCD)
                    </div>
                    <div>
                        <input type="radio" value="CMND" required> Chứng minh nhân dân (CMND)
                    </div>
                    <div>
                        <input type="radio" value="Hộ chiếu" required> Hộ chiếu
                    </div>
                </div>
            </div>
            <div class="md-12 form">
                <label for="so-shop" class="label-control">
                    <span style="color: red;">*</span> Số CCCD/ CMND/ Hộ chiếu
                </label>
                <input type="text" id="so-shop" name="numberCitizenIdentification" class="form-control" placeholder="Nhập theo thông tin trên giấy tờ" required>
            </div>
            <div class="md-12 form">
                <label for="hoten-shop" class="label-control">
                    <span style="color: red;">*</span> Họ & Tên
                </label>
                <input type="text" id="hoten-shop" name="fullName" class="form-control" placeholder="Nhập theo thông tin trên giấy tờ" required>
            </div>
            <div class="md-12 form">
                <label for="anhchup-shop" class="label-control">
                    Hình chụp của thẻ CMND/CCCD/hộ chiếu
                </label>
                <input type="file" id="anhchup-shop" name="afterCitizenIdentification" class="form-control" required>
            </div>
            <div class="md-12 form">
                <label for="anhchup-selfie" class="label-control">
                    Ảnh đang cầm CMND/CCCD/Hộ chiếu
                </label>
                <input type="file" id="anhchup-selfie" name="beforeCitizenIdentification" class="form-control" required>
            </div>
            <hr>
            <div class="md-2 form-btn">
                <a href="./registerSell02" class="btn btn-quaylai">Quay lại</a>
                <button type="submit" class="btn btn-success btn-tieptheo">Tiếp theo</button>
            </div>
        </form>

        </div>
    </main>
</body>
</html>