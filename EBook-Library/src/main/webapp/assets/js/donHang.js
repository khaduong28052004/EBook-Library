// Lấy giá trị activeMenu từ model và thiết lập lớp activeMenu tương ứng
const activeMenu = "${activeMenu}";
if (activeMenu) {
    const menuItem = document.querySelector(`#${activeMenu}`);
    if (menuItem) {
        menuItem.classList.add("activeMenu3");
    } else {
        console.error(`Không tìm thấy phần tử với id '${activeMenu}'`);
    }
}
