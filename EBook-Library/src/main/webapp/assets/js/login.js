const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');
const forgotPassBtn = document.getElementById('forgotPassword');


registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});
loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});

forgotPassBtn.addEventListener('click', () => {
    container.classList.add("show-forgot-password");
});
loginBtn.addEventListener('click', () => {
    container.classList.remove("show-forgot-password");
});

document.addEventListener('DOMContentLoaded', function () {
    const registerForm = document.querySelector('.sign-up form');
    const loginForm = document.querySelector('.sign-in form');
    const forgotPasswordForm = document.querySelector('.forgotPassword form');
    const errorSpan = document.querySelector('.sign-up span');
    const loginErrorSpan = document.querySelector('.sign-in span');
    const forgotPasswordErrorSpan = document.querySelector('.forgotPassword span');

    // Thêm sự kiện submit cho form Đăng Ký
    registerForm.addEventListener('submit', function (event) {
        // Lấy giá trị từ các trường input
        const userName = document.getElementById('userName').value;
        const email = document.querySelector('.sign-up input[name="gmail"]').value;
        const password = document.querySelector('.sign-up input[name="password"]').value;

        // Xóa thông báo lỗi trước khi kiểm tra
        errorSpan.textContent = '';

        // Kiểm tra các điều kiện
        if (!userName.trim()) {
            errorSpan.textContent = 'Vui lòng nhập Tên Đăng Nhập.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }

        if (!email.trim()) {
            errorSpan.textContent = 'Vui lòng nhập Email.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }

        if (!password.trim()) {
            errorSpan.textContent = 'Vui lòng nhập Mật Khẩu.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }

        // Kiểm tra email hợp lệ
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            errorSpan.textContent = 'Email không hợp lệ.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }

        // Kiểm tra mật khẩu có ít nhất 6 ký tự
    //    if (password.length < 6) {
     //       errorSpan.textContent = 'Mật khẩu phải chứa ít nhất 6 ký tự.';
     //       event.preventDefault(); // Ngăn chặn việc submit form
     //       return;
    //    }
    });

    // Thêm sự kiện submit cho form Đăng Nhập
    loginForm.addEventListener('submit', function (event) {
        // Lấy giá trị từ các trường input
        const loginUserName = document.querySelector('.sign-in input[name="userName"]').value;
        const loginPassword = document.querySelector('.sign-in input[name="password"]').value;

        // Xóa thông báo lỗi trước khi kiểm tra
        loginErrorSpan.textContent = '';

        // Kiểm tra các điều kiện
        if (!loginUserName.trim() || !loginPassword.trim()) {
            loginErrorSpan.textContent = 'Vui lòng nhập đầy đủ Tên Đăng Nhập và Mật Khẩu.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }
    });

    // Thêm sự kiện submit cho form Quên Mật Khẩu
    forgotPasswordForm.addEventListener('submit', function (event) {
        // Lấy giá trị từ trường input
        const forgotPasswordEmail = document.querySelector('.forgotPassword input[name="gmail"]').value;

        // Xóa thông báo lỗi trước khi kiểm tra
        forgotPasswordErrorSpan.textContent = '';

        // Kiểm tra các điều kiện
        if (!forgotPasswordEmail.trim()) {
            forgotPasswordErrorSpan.textContent = 'Vui lòng nhập Email.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }

        // Kiểm tra email hợp lệ
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(forgotPasswordEmail)) {
            forgotPasswordErrorSpan.textContent = 'Email không hợp lệ.';
            event.preventDefault(); // Ngăn chặn việc submit form
            return;
        }
    });
});




