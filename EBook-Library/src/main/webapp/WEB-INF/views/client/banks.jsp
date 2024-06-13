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
									<button class="danhGia btn btn-danger" id="buttonAdd" data-bs-toggle="modal"
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
									${bank.nameBank}
									<c:if test="${bank.status}">
										<span
											style="width: 90px; margin-left: 10px; color: green; font-size: 17px;">Mặc
											Định</span>
									</c:if>
								</h6>
								<p class="card-text">
									Họ và tên: ${bank.name} <span class="soTK" id="soTK">Số tài khoản:
										${bank.accountNumber}</span>
								</p>
							</div>
							<div class="card-footer">
								<a class="btn btn-outline-danger" data-bs-toggle="modal"
									data-bs-target="#deleteModal${bank.id}">Xóa</a> <a type="button"
									class="btn btn-primary" href="/user/bank/edit?id=${bank.id}">Edit</a>
							</div>
						</div>
					</div>
					<div class="modal fade" id="deleteModal${bank.id}" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">Thông
										Báo</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<p>Bạn chắc chắn muốn xóa tài khoản ngân hàng này không?
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Thoát</button>
									<a type="button" class="btn btn-danger"
										href="/user/bank/delete?id=${bank.id}">Xác Nhận</a>
								</div>
							</div>
						</div>
					</div>

				</c:forEach>

			</aside>
		</div>
	</main>
	
	<!-- Modal -->

	<div class="modal" id="themTKNH1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Thêm Tài
						Khoản Ngân Hàng</h1>
				</div>
				<div class="modal-body Page2">
					<form action="" method="post">
						<div class="item">
							<label for="" class="title-item form-label">Ngân hàng</label>
							<div>
								<select name="bankId" id="banks" class="form-control">
								</select>
							</div>

						</div>
						<input type="hidden" id="selectedBankName" value="${bank.nameBank}">
						<input type="text" style="display: none" id="nameCheck" value="${bank.name}" required="required">
						<div class="item">
							<label for="" class="title-item form-label">Số tài khoản</label>
							<div>
								<input style="box-sizing: border-box;" type="text"
									name="accountNumber" id="accountNumber" class="form-control" value="${bank.accountNumber}" required="required">
							</div>
						</div>
						<div class="item">
							<label for="" class="form-label" >Tên tài khoản</label>
							<div>
								<input style="box-sizing: border-box;" type="text" name="name" value="${bank.name}"
									id="accountName" class="form-control" required>
							</div>
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" value="true" name="status" class="form-check-input" ${bank.status ? 'checked' : ''}
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1" >Đặt làm mặc định</label>
						</div>
						<p id="error" class="form-label" style="color:red;"></p>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-toggle="modal" data-bs-target="#themTKNH1">Trở
								Lại</button>
								
							<button type="submit" class="btn btn-success"
								id="completeButton " formaction="/user/bank/save">Lưu</button>
								
						</div>
					</form>

				</div>

			</div>
		</div>
	</div>


	<script type="text/javascript">
	let listBanks = ${listTKNH};
	if(${modal} == true){
		
		 setTimeout(() => {
		        const button = document.getElementById("buttonAdd");
		        if (button) {
		            button.click();
		        } else {
		            console.log("Element with id 'buttonAdd' not found");
		        }
		    }, 50);
	}
		function toggleSubmenu() {
			var menuItem = document.querySelector('.menu-item');
			if (menuItem) {
				menuItem.classList.toggle('open');
			}
		}

		
	    const defaultApiKey = 'dd956639-ba26-4c70-9679-928b6f76e8b2';
	    const defaultClientId = '5f38046f-7b67-44e4-8bf9-a78d619aac4f';
	    const bankName = document.getElementById('selectedBankName').value;
	    
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
	                	const isSelected = bank.name === bankName ? 'selected' : '';
	                    // Using string concatenation to avoid conflicts with JSP expressions
	                    var optionHTML = '<option value="' + bank.name + '" data-bin="' + bank.bin + '" data-short-name="' + bank.shortName + '" data-thumbnail="' + bank.logo + '" '+isSelected+'>(' + bank.bin + ') ' + bank.shortName + '</option>';
	                    selectElement.insertAdjacentHTML('beforeend', optionHTML);
	                });
	                if (bankName) {
	                    selectElement.value = bankName;
	                }
	            } catch (error) {
	                console.error('Error fetching bank names:', error);
	            }
	        }
	    
	     

	    function findAccountName(accountNumber, bankId) {
	    	if (listBanks.includes(accountNumber)) {
	            document.getElementById("error").innerText = `Tài khoản đã tồn tại trong cơ sở dữ liệu`;
	            document.getElementById("error").style.display = "block";
	            
	            return;
	        }
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
                            document.getElementById("nameCheck").value = data.data.accountName;
                            check = true;
                            
                        } else {
                            document.getElementById("error").innerText = `Số tài khoản không hợp lệ`;
                            document.getElementById("error").style.display = "block";
                            document.getElementById("accountName").value = '';
                            document.getElementById("nameCheck").value = '';

                            check = false;

                            
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
            let accountName =  document.getElementById("accountName");
         // Hàm để xử lý sự kiện thay đổi của inputBankId và inputAccountNumber
            function handleInputChange() {
                let value = inputAccountNumber.value;
                let selectedOption = inputBankId.options[inputBankId.selectedIndex];
                let bankBin = selectedOption.getAttribute('data-bin');
                console.log(value, bankBin);
                findAccountName(value, bankBin);
            }

            // Sự kiện khi trường số tài khoản hoặc tên tài khoản mất focus
            inputAccountNumber.addEventListener('focusout', handleInputChange);
            accountName.addEventListener('focusout', handleInputChange);

            // Sự kiện khi chọn một ngân hàng khác
            inputBankId.addEventListener('change', handleInputChange);
            
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
        let soTKElements = document.querySelectorAll('.soTK');

     // Duyệt qua mỗi phần tử và chỉ hiển thị ba số cuối của nội dung của chúng
     soTKElements.forEach(element => {
         let originalText = element.innerText;
         let visibleText = hideFirstCharacters(originalText) + showLastThreeDigits(originalText);
         element.innerText = visibleText;
     });

     // Hàm để che đi ký tự đầu của một chuỗi
     function hideFirstCharacters(text) {
         let numberOfHiddenCharacters = text.length - 3; // Số ký tự cần che đi
         let hiddenCharacters = '*'.repeat(numberOfHiddenCharacters); // Tạo một chuỗi gồm các ký tự '*'
         return hiddenCharacters;
     }

     // Hàm để chỉ hiển thị ba số cuối của một chuỗi
     function showLastThreeDigits(text) {
         if (text.length <= 3) {
             return text; // Trả về nguyên vẹn nếu chuỗi ít hơn hoặc bằng 3 ký tự
         } else {
             let visibleDigits = text.slice(-3); // Lấy ba ký tự cuối cùng
             return visibleDigits;
         }
     }
    </script>

</body>
</html>