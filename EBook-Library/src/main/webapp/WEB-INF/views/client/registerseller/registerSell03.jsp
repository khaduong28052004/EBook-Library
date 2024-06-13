<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
 
</head>
<body>
   <link rel="stylesheet" href="/assets/css/registerSell/registerSell03.css">
 <div class="nav">
        <div class="logo">
            <div class="image">
                <img src="/assets/img/logo/V.jpg" alt="">
            </div>
            <div class="logo1">
                <a href="#">Virtual Library Web</a>
            </div>
        </div>
        <div class="avatar">
            <div class="container-avatar">
                <img src="/assets/img/books/Truyen/NhanGianKhuc.jpg" alt="">
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
                        <img src="/assets/img/icon/info-circle-svgrepo-com.png" alt="">
                    </div>
                    <div class="thongbao-content">
                        <span>Vui lòng cung cấp Thông Tin Định Danh của Chủ Shop (nếu là cá nhân), hoặc Người Đại Diện
                            Pháp Lý trên giấy đăng ký kinh doanh.</span>
                    </div>
                </div>
            </div>

            <form class="row">
                <div class="md-12 form-radio">
                    <label for="giayto" class="label-control"><span style="color: red;">*</span>Hình
                        thức định danh</label>
                    <div class="radios" style="display: flex">
                        <div>
                            <input type="radio" name="giayto" value="CCCD"> Căn cước công dân (CCCD)
                        </div>
                        <div>
                            <input type="radio" name="giayto" value="CMND"> Chứng minh nhân dân (CMND)
                        </div>
                        <div class="div">
                            <input type="radio" name="giayto" value="Hộ chiếu"> Hộ chiếu
                        </div>
                    </div>
                </div>

                <div class="md-12 form">
                    <label for="so-shop" class="label-control" style="width: 250px;"><span style="color: red;">*</span>
                        Số CCCD/ CMND/ Hộ chiếu
                    </label>
                    <input type="text" class="form-control" placeholder="Nhập theo thông tin trên giấy tờ">
                </div>
                <div class="md-12 form">
                    <label for="hoten-shop" class="label-control" style="width: 250px;"><span
                            style="color: red;">*</span> Họ & Tên</label>
                    <input type="text" class="form-control" placeholder="Nhập theo thông tin trên giấy tờ">
                </div>
                <div class="md-12 form">
                    <label for="anhchup-shop" class="label-control" style="width: 250px; padding: 10px;">Hình chụp của
                        thẻ CMND/CCCD/hộ chiếu</label>
                    <input type="file" class="form-control">
                </div>
                <div class="md-12 form">
                    <label for="anhchup-shop" class="label-control" style="width: 250px; padding: 10px;">Ảnh đang cầm
                        CMND/CCCD/Hộ chiếu</label>
                    <input type="file" class="form-control">
                </div>
                <hr>
                <div class="md-2 form-btn">
                   <a href="./registerSell02" type="submit"
						class="btn btn-outline-white btn-quaylai">Quay lại</a> <a
						href="./registerSell04" type="submit"
						class="btn btn-success btn-tieptheo">Tiếp theo</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>