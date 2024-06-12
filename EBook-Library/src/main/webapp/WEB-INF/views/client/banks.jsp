<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<link rel="stylesheet" href="/assets/css/banks.css">
	<main class="container" style="margin: 0px; max-width: 2000px;">
		<div class="row">
			<aside class="col-md-2">
				<nav class="vertical-menu">
					<div class="menu-item">
						<a class="text-nav" href="javascript:void(0);"
							onclick="toggleSubmenu()">Thông Tin Cá Nhân</a>
						<div class="submenu">
							<a class="text-subnav" href="/Ebook/account/updateProfile">Xem
								Hồ Sơ</a> <a class="activeMenuCon" href="/Ebook/account/banks">Ngân
								Hàng</a>
						</div>
					</div>
					<a class="text-nav" href="/Ebook/account/bill">Đơn Hàng</a>
				</nav>
			</aside>
			<aside class="col-md-10">
				<div class="row">
					<div class="col-md-12 menuNgangNe">
						<div class="nav navbar">
							<div class="card-header headerTrangThai"
								style="background-color: white;">
								<p class="tenNguoiBan" style="font-weight: bold;">Tài Khoản Ngân Hàng Của Tôi</p>
								<p class="noiDungPhai">
									<button class="danhGia btn btn-danger" data-bs-toggle="modal"
										data-bs-target="#themTKNH1">Thêm Tài Khoản Ngân Hàng</button>
								</p>
							</div>

						</div>

					</div>
				</div>

				<c:forEach var="bank" items="${listBanks}">
					<div class="card">
						<div class="card-custom">
							<div class="card-body">
								<h6 class="card-title" style="font-weight: bold;">
									BDIV: Ngân hàng TMCP Đầu tư và Phát triển Việt Nam <span
										style="width: 90px; margin-left: 10px; color: green; font-size: 17px;">Mặc
										Định</span>
								</h6>
								<p class="card-text">
									Họ và tên: ${bank.name} <span class="soTK">Số tài
										khoản: ${bank.name}</span>
								</p>
							</div>
							<div class="card-footer">
								<a href="#" class="btn btn-outline-danger">Xóa</a>
								<button type="button" class="btn btn-primary">Edit</button>
							</div>
						</div>
					</div>
				</c:forEach>

			</aside>
		</div>
	</main>

	<div class="modal fade" id="themTKNH1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Thêm Tài
						Khoản Ngân Hàng</h1>
				</div>
				<div class="modal-body Page2">
						<form action="">
							<div class="item">
								<label for="" class="title-item form-label">Ngân hàng</label>
								<div>
									<select name="bankId" id="banks" class="form-control">
									</select>
								</div>

							</div>
							<div class="item">
								<label for="" class="title-item form-label">Số tài khoản</label>
								<div>
									<input style="box-sizing: border-box;" type="text" name="accountNumber"
										id="accountNumber" class="form-control">
								</div>
							</div>
							<div class="item">
								<label for="" class="form-label">Tên tài khoản</label>
								<div>
									<input style="box-sizing: border-box;" type="text" name="accountName"
										id="accountName" disabled class="form-control">
								</div>
							</div>
							<p id="error"></p>
						</form>
					<div id="loading" class="d-none text-center">
						<div class="spinner-border text-primary" role="status">
							<span class="visually-hidden">Loading...</span>
						</div>
						<p style="font-size: 16px;">Đang xử lý, vui lòng chờ...</p>
					</div>
					<div id="successMessage" class="d-none text-center">
						<p style="font-size: 16px;">Thêm tài khoản ngân hàng thành
							công!</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-toggle="modal" data-bs-target="#themTKNH1">Trở
						Lại</button>
					<button type="button" class="btn btn-success" id="completeButton">Hoàn
						Thành</button>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		function toggleSubmenu() {
			var menuItem = document.querySelector('.menu-item');
			if (menuItem) {
				menuItem.classList.toggle('open');
			}
		}


	    const defaultApiKey = 'd3b50422-de43-4235-ba79-f2a0e86d347e';
	    const defaultClientId = '192ad2f0-865b-4a1f-abe7-0e2ae97f3571';

	      async function fetchBankNames() {
	            try {
	                // Replace with the actual API URL
	                const response = await fetch('https://api.vietqr.io/v2/banks');
	                
	                // Check if the response is ok
	                if (!response.ok) {
	                    throw new Error('Network response was not ok ' + response.statusText);
	                }

	                // Parse the JSON response
	                const jsonResponse = await response.json();
	                const bankData = jsonResponse.data; // Extract the data array from the response

	                // Get the select element
	                const selectElement = document.getElementById('banks');

	                // Populate the select element with bank names
	                bankData.forEach(bank => {
	                    // Using string concatenation to avoid conflicts with JSP expressions
	                    var optionHTML = '<option value="' + bank.id + '" data-bin="' + bank.bin + '" data-short-name="' + bank.shortName + '" data-thumbnail="' + bank.logo + '">(' + bank.bin + ') ' + bank.shortName + '</option>';
	                    selectElement.insertAdjacentHTML('beforeend', optionHTML);
	                });
	            } catch (error) {
	                console.error('Error fetching bank names:', error);
	            }
	        }


	    function findAccountName(accountNumber, bankId) {
            var xmlhttp = new XMLHttpRequest();
            let params = {
                accountNumber: accountNumber,
                bin: bankId
            };
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == XMLHttpRequest.DONE) { // XMLHttpRequest.DONE == 4
                    if (xmlhttp.status == 200) {
                        console.log(JSON.parse(xmlhttp.responseText));
                        let data = JSON.parse(xmlhttp.responseText);
                        if (data.code == "00") {
                            document.getElementById("error").style.display = "none";
                            document.getElementById("accountName").value = data.data.accountName;
                        } else {
                            document.getElementById("error").innerText = `Số tài khoản không hợp lệ`;
                            document.getElementById("error").style.display = "block";
                            document.getElementById("accountName").value = '';
                        }
                    } else if (xmlhttp.status == 400) {
                        alert('There was an error 400');
                    } else {
                        alert('something else other than 200 was returned');
                    }
                }
            };

            xmlhttp.open("POST", "https://api.vietqr.io/v2/lookup", true);
            xmlhttp.setRequestHeader("Content-Type", "application/json");
            xmlhttp.setRequestHeader("x-api-key", defaultApiKey);
            xmlhttp.setRequestHeader("x-client-id", defaultClientId);
            xmlhttp.send(JSON.stringify(params));
        }

        function init() {
            let inputBankId = document.getElementById('banks');
            let inputAccountNumber = document.getElementById('accountNumber');
            
            inputAccountNumber.addEventListener('focusout', async function (e) {
                let value = e.target.value;
                if (value.length > 0) {
                    // Retrieve the selected option element
                    let selectedOption = inputBankId.options[inputBankId.selectedIndex];
                    // Get the bin from the data attribute
                    let bankBin = selectedOption.getAttribute('data-bin');
                    console.log(value, bankBin);
                    findAccountName(value, bankBin);
                }
            });
        }

        function cutData(data) {
            if (data.length < 5) {
                return data;
            } else {
                let lastData = data.slice(data.length - 5, data.length);
                return `***${lastData}`;
            }
        }

        // Initialize the app
        document.addEventListener('DOMContentLoaded', (event) => {
            fetchBankNames();
            init();
        });

    </script>

</body>
</html>