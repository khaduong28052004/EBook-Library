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
    // Registration form validation
    const registerForm = document.getElementById('registerForm');
    registerForm.addEventListener('submit', function (event) {
        const userName = document.getElementById('registerUserName').value;
        const email = document.getElementById('registerEmail').value;
        const password = document.getElementById('registerPassword').value;

        if (!userName || !email || !password) {
            alert('Vui lòng điền đầy đủ thông tin.');
            event.preventDefault();
            return;
        }

        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            alert('Email không hợp lệ.');
            event.preventDefault();
            return;
        }

        if (password.length < 6) {
            alert('Mật khẩu phải chứa ít nhất 6 ký tự.');
            event.preventDefault();
        }
    });

    // Login form validation
    const loginForm = document.getElementById('loginForm');
    loginForm.addEventListener('submit', function (event) {
        const userName = document.getElementById('loginUserName').value;
        const password = document.getElementById('loginPassword').value;

        if (!userName || !password) {
            alert('Vui lòng điền đầy đủ thông tin.');
            event.preventDefault();
        }
    });

    // Forgot password form validation
    const forgotPasswordForm = document.getElementById('forgotPasswordForm');
    forgotPasswordForm.addEventListener('submit', function (event) {
        const email = document.getElementById('forgotPasswordEmail').value;

        if (!email) {
            alert('Vui lòng nhập email.');
            event.preventDefault();
            return;
        }

        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            alert('Email không hợp lệ.');
            event.preventDefault();
        }
    });
});
