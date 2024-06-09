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