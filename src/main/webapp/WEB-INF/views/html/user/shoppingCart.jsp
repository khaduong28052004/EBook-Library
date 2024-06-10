<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<style type="text/css">
<%@ include file="/views/css/home.css"%></style>
	
</head>
<body>
<%@include file="/views/layout/common/header.jsp" %>
<link rel="stylesheet" href="/views/css/shoppingCart.css">
<div class="container-fluid" style="background-color: rgba(128, 128, 128, 0.055); padding: 0px;margin: 0px;">
    <div class="row" style="margin: 50px;">
        <div class="col-md-12" style="margin-top: 30px;">
            <div class="card " style="border-radius: 0px;">
                <div class="cart-title">
                    <div class="row">
                        <div class="col-md-4">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <h3>Sản phẩm</h3>
                        </div>
                        <div class="col-md-2">
                            <h3>Đơn giá</h3>
                        </div>
                        <div class="col-md-2">
                            <h3>Số lượng</h3>
                        </div>
                        <div class="col-md-2">
                            <h3>Tiền</h3>
                        </div>
                        <div class="col-md-2">
                            <h3>Thao tác</h3>
                        </div>

                    </div>
                </div>

            </div>

        </div>
        <div class="col-md-12" style="margin-top: 10px;">
            <div class="card" style="border-radius: 0px;">
                <div class="cart-nameStore">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <h3>Kha Duong Shop</h3>

                </div>
            </div>
            <div class="card" style="border-radius: 0px;">
                <div class="cart-product">
                    <div class="row">
                        <div class="col-md-4">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <img src="/img/books/Truyen/NhanGianKhuc.jpg" alt="">
                            <div class="title-product" style="margin-left: 10px;">Truyện Nhân Gian Khúc kfdsn jfdls
                                fklsd jfksd jf jfklsd jflks jflks jlsd jlsd fl jfsdl jflsd lk flksdjf lkjlkjfd jflsd
                                jfsl jfls kfjdls jflsd lkjkflsdf jfsdl jflsd ds lkjfls jfdsjf jfksdj jfso</div>
                        </div>
                        <div class="col-md-2" style=" display: flex;">
                            <h3 style="font-size: 17px; text-decoration: line-through;">189.000<sup>đ</sup></h3>
                            <h3 style="font-size: 17px; margin-left: 10px;">99.000<sup>đ</sup></h3>
                        </div>
                        <div class="col-md-2">
                            <input type="number" name="" id="" value="1" min="1">
                        </div>
                        <div class="col-md-2">
                            <h3 style="font-size: 17px; margin-left: 10px; text-align: center;">99.000<sup>đ</sup></h3>
                        </div>
                        <div class="col-md-2" style="display: flex; justify-content: center;">
                            <button class="btn btn-danger">Xóa</button>
                        </div>

                    </div>
                </div>
                <div class="card" style="border-radius: 0px;">
                    <div class="voucher-cart">
                        <i class="fa-solid fa-ticket" style="color: green;"></i>
                        <h3> Voucher</h3>
                        <a href="">Xem thêm</a>
                    </div>
                </div>
            </div>

        </div>
        <!-- cart 2 -->



        <div class="col-md-12" style="margin-top: 10px;">
            <div class="card" style="border-radius: 0px;">
                <div class="cart-nameStore">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <h3>Kha Duong Shop</h3>

                </div>
            </div>
            <div class="card" style="border-radius: 0px;">
                <div class="cart-product">
                    <div class="row">
                        <div class="col-md-4">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <img src="/img/books/Truyen/NhanGianKhuc.jpg" alt="">
                            <div class="title-product" style="margin-left: 10px;">Truyện Nhân Gian Khúc kfdsn jfdls
                                fklsd jfksd jf jfklsd jflks jflks jlsd jlsd fl jfsdl jflsd lk flksdjf lkjlkjfd jflsd
                                jfsl jfls kfjdls jflsd lkjkflsdf jfsdl jflsd ds lkjfls jfdsjf jfksdj jfso</div>
                        </div>
                        <div class="col-md-2" style=" display: flex;">
                            <h3 style="font-size: 17px; text-decoration: line-through;">189.000<sup>đ</sup></h3>
                            <h3 style="font-size: 17px; margin-left: 10px;">99.000<sup>đ</sup></h3>
                        </div>
                        <div class="col-md-2">
                            <input type="number" name="" id="" value="1" min="1">
                        </div>
                        <div class="col-md-2">
                            <h3 style="font-size: 17px; margin-left: 10px; text-align: center;">99.000<sup>đ</sup></h3>
                        </div>
                        <div class="col-md-2" style="display: flex; justify-content: center;">
                            <button class="btn btn-danger">Xóa</button>
                        </div>

                    </div>
                </div>
                <div class="card" style="border-radius: 0px;">
                    <div class="voucher-cart">
                        <i class="fa-solid fa-ticket" style="color: green;"></i>
                        <h3> Voucher</h3>
                        <a href="">Xem thêm</a>
                    </div>
                </div>
            </div>

        </div>

        <!-- Thanh toán -->

        <div class="col-md-12" style="margin-bottom: 30px; margin-top: 20px;">
            <div class="card" style="border-radius: 0px;">
                <div class="payment-cart">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <h3>Chọn Tất cả [2]</h3>
                    <button class="btn btn-danger">Xóa</button>
                    <div class="payment">
                        <h3>Tổng thanh toán [2 sản phẩm] : <span>198.000<sup>đ</sup></span></h3>
                    </div>
                    <div class="btn-payment">
                        <button class="btn btn-success">Mua hàng</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

</div>
<%@include file="/views/layout/common/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>
</html>