document.addEventListener('DOMContentLoaded', () => {
	const stars = document.querySelectorAll('.star');
	const ratingText = document.getElementById('rating-text');
	let currentRating = 0;

	const ratings = {
		1: "Rất tệ",
		2: "Tệ",
		3: "Bình thường",
		4: "Tốt",
		5: "Rất tốt"
	};

	stars.forEach(star => {
		star.addEventListener('click', () => {
			const value = star.getAttribute('data-value');
			currentRating = value;
			updateRating(value);
		});

		star.addEventListener('mouseover', () => {
			highlightStars(star.getAttribute('data-value'));
		});

		star.addEventListener('mouseout', () => {
			resetHover();
		});
	});

	function updateRating(value) {
		stars.forEach(star => {
			star.classList.remove('selected');
		});
		for (let i = 0; i < value; i++) {
			stars[i].classList.add('selected');
		}
		ratingText.textContent = ratings[value];
	}

	function highlightStars(value) {
		resetHover();
		for (let i = 0; i < value; i++) {
			stars[i].classList.add('hovered');
		}
	}

	function resetHover() {
		stars.forEach(star => {
			star.classList.remove('hovered');
		});
		for (let i = 0; i < currentRating; i++) {
			stars[i].classList.add('selected');
		}
	}
});

let imagesArray = [];

//INPUT
containerInputSaveImage = document.querySelector("#input-save-image");
inputSaveImage = document.querySelector("#file-upload");
//SHOW
containerShowImg = document.querySelector(".show-img-form");
showImg = document.querySelector(".show-img-div");
//Message
message = document.querySelector(".message");
deleteImage = [];

// Hàm kiểm tra xem ảnh đã tồn tại trong mảng hay chưa
function isImageExists(image) {
	return imagesArray.some(existingImage => {
		return existingImage.name === image.name; //so sánh theo tên ảnh
	});
}

//THÊM IMG
if (inputSaveImage) {
	inputSaveImage.addEventListener("change", (event) => {
		const files = Array.from(event.target.files);
		const maxSize = 5 * 1024 * 1024; // 5 MB (có thể điều chỉnh theo nhu cầu)
		const allowedTypes = ['image/png', 'image/jpeg', 'image/jpg'];
		const currentImageCount = imagesArray.length;

		for (let index = 0; index < files.length; index++) {
			const image = files[index];

			// Kiểm tra tổng số ảnh nếu thêm ảnh hiện tại
			if (currentImageCount + index >= 3) {
				message.innerHTML = "Bạn chỉ có thể tải lên tối đa 3 ảnh.";
				inputSaveImage.value = ''; // Reset file input
				return;
			}

			// Kiểm tra xem ảnh đã tồn tại trong mảng hay chưa
			if (isImageExists(image)) {
				continue; // Bỏ qua nếu ảnh đã tồn tại
			}

			if (image.size > maxSize) {
				message.innerHTML = "Kích thước file ảnh quá lớn, vui lòng chọn file khác.";
				inputSaveImage.value = ''; // Reset file input
				return;
			}

			// Kiểm tra loại file
			if (!allowedTypes.includes(image.type)) {
				message.innerHTML = "Loại file không hợp lệ, vui lòng chọn file ảnh có định dạng PNG, JPEG hoặc JPG.";
				inputSaveImage.value = ''; // Reset file input
				return;
			}
		}

		// Nếu không có lỗi, thêm các ảnh hợp lệ vào mảng
		files.forEach((image) => {
			if (!isImageExists(image) && imagesArray.length < 3) {
				imagesArray.push(image);
			}
		});

		// Clear message and reset input
		message.innerHTML = "";
		message.style.cssText = "";
		inputSaveImage.value = ''; // Reset file input

		displayImage();
	});
} else {
	console.log("Element with id 'show-img-form' not found.");
}

// DISPLAY IMAGE
function displayImage() {
	showImg.innerHTML = ""; // Xóa bỏ tất cả các phần tử hiện có trước khi tạo mới
	imagesArray.forEach((imageFile, index) => {
		// Tạo các phần tử ảnh và nút xóa
		const img = document.createElement('img');
		img.src = URL.createObjectURL(imageFile);
		img.alt = 'image';

		const span = document.createElement('span');
		span.textContent = '×';
		span.style.cursor = 'pointer';
		span.onclick = function() {
			imagesArray.splice(index, 1);
			displayImage();
		};

		// Thêm các phần tử vào container
		const imageContainer = document.createElement('div');
		imageContainer.classList.add('image');
		imageContainer.appendChild(img);
		imageContainer.appendChild(span);

		// Thêm container vào showImg
		showImg.appendChild(imageContainer);
	});
}

containerShowImg.addEventListener("submit", (e) => {
	e.preventDefault();
	sendImageToServer();
});
document.querySelector('.trangThai').addEventListener('click', function() {


	// Chuyển trang sau 2 giây
	setTimeout(function() {
		window.location.href = 'https://example.com'; // Thay thế bằng URL trang bạn muốn chuyển tới
	}, 5000); // 2000 milliseconds = 2 seconds
});
