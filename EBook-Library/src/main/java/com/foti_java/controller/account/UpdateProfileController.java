package com.foti_java.controller.account;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.foti_java.model.Account;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.service.SessionService;

import jakarta.servlet.ServletContext;
@Controller
public class UpdateProfileController {
	
	@Autowired
	AccountRepositoty accountRepository;
	
	@Autowired
	ServletContext context;
	@Autowired
	SessionService sessionService;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	public int id =1;
	@GetMapping("/Ebook/account/updateProfile/user")
	public String getProfile(Model model) {
	
//		Account account = accountRepository.findById(id).orElse(null);
		  Account account1  = accountRepository.findById(id).orElse(null);
		   sessionService.setAttribute("account", account1);  
		   Account account = sessionService.getAttribute("account");	
		model.addAttribute("account", account);
		return "/html/account/updateProfile";
	}
	
	@PostMapping("/Ebook/account/updateProfile/user")
	public String updateProduct(
	        @RequestParam("shopname") String shopname,
	        @RequestParam("username") String username,
	        @RequestParam("fullname") String fullname,
	        @RequestParam("email") String email,
	        @RequestParam("phone") String phone,
	        @RequestParam("birthday") Date birthday,
	        @RequestParam("avatar") MultipartFile avatar,
	        @RequestParam("background") MultipartFile background,
	        @RequestParam("id") Integer id,
	        Model model) {
		String imageNameAVT = "";
		String imageNameBR = "";
		
//		Account account1 = accountRepository.findById(id);//id bạn muốn cập nhật
	   Account account1  = accountRepository.findById(id).get();
	   sessionService.setAttribute("account", account1);  
	   Account account = sessionService.getAttribute("account");			 
		// TODO: process POST request
		account.setShopname(shopname);
		account.setUsername(username);
		account.setFullname(fullname);
		account.setEmail(email);
		account.setBirthday(birthday);
		account.setPhone(phone);
		if (!avatar.isEmpty()) {
			String fileName = avatar.getOriginalFilename();
			String pathString = context.getRealPath("/img/account/" + fileName);
			Path path = Path.of(pathString);
			if (!Files.exists(path)) {
				try {
					Files.createDirectories(path);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			try {
				Files.copy(avatar.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
				imageNameAVT = fileName;
				account.setAvatar(imageNameAVT);
			} catch (IOException e) {
				// TODO Auto-generated catch bloc
				e.printStackTrace();
			}
		}
		if (!avatar.isEmpty()) {
			String fileNameBR = background.getOriginalFilename();
			String pathString = context.getRealPath("/img/background/" + fileNameBR);
			Path path = Path.of(pathString);
			if (!Files.exists(path)) {
				try {
					Files.createDirectories(path);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			try {
				Files.copy(background.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
				imageNameBR = fileNameBR;
				account.setBackground(imageNameBR);
			} catch (IOException e) {
				// TODO Auto-generated catch bloc
				e.printStackTrace();
			}
		}
		accountRepository.saveAndFlush(account);
		return "redirect:/Ebook/account/updateProfile/user";
	}
	
	
	//TEST
//	@PostMapping("/Ebook/account/updateProfile/user/update")
//	public String updateProfile(
//	        @RequestParam("shopname") String shopname,
//	        @RequestParam("username") String username,
//	        @RequestParam("fullname") String fullname,
//	        @RequestParam("email") String email,
//	        @RequestParam("phone") String phone,
//	        @RequestParam("birthday") Date birthday,
//	        @RequestParam("avatar") MultipartFile avatar,
//	        @RequestParam("background") MultipartFile background,
//	        @RequestParam("id") Integer id,
//	        Model model) {
//	    
//	    // Kiểm tra và xử lý lỗi nếu có
//	    if (shopname == null || shopname.trim().isEmpty() || shopname.length() < 3 || shopname.length() > 50) {
//	        model.addAttribute("error", "Tên cửa hàng phải có từ 3 đến 50 ký tự.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + id;
//	    }
//	    if (username == null || username.trim().isEmpty() || username.length() < 3 || username.length() > 20) {
//	        model.addAttribute("error", "Tên người dùng phải có từ 3 đến 20 ký tự.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + id;
//	    }
//	    // Kiểm tra và xử lý các điều kiện khác ở đây...
//	    
//	    // Tiếp tục xử lý nếu không có lỗi
//	    Account account = accountRepository.findById(id).orElse(null);
//	    if (account != null) {
//	        // Thực hiện cập nhật thông tin tài khoản và lưu vào cơ sở dữ liệu
//	        account.setShopname(shopname);
//	        account.setUsername(username);
//	        account.setFullname(fullname);
//	        account.setEmail(email);
//	        account.setPhone(phone);
//	        account.setBirthday(birthday);
//	        
//	        // Xử lý ảnh đại diện và ảnh nền
//	        // ...
//	        
//	        accountRepository.save(account);
//	    }
//	    
//	    return "redirect:/Ebook/account/updateProfile/user/" + id;
//	}

	
	
//		Account account = accountRepository.findById(id).get();
//	    // Kiểm tra `shopname`
//	    if (shopname == null || shopname.trim().isEmpty() || shopname.length() < 3 || shopname.length() > 50) {
//	        model.addAttribute("error", "Tên cửa hàng phải có từ 3 đến 50 ký tự.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    // Kiểm tra `username`
//	    if (username == null || username.trim().isEmpty() || username.length() < 3 || username.length() > 20) {
//	        model.addAttribute("error", "Tên người dùng phải có từ 3 đến 20 ký tự.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    // Kiểm tra `fullname`
//	    if (fullname == null || fullname.trim().isEmpty() || fullname.length() < 3 || fullname.length() > 50) {
//	        model.addAttribute("error", "Họ và tên phải có từ 3 đến 50 ký tự.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    // Kiểm tra `email`
//	    if (email == null || email.trim().isEmpty() || !isValidEmail(email)) {
//	        model.addAttribute("error", "Vui lòng nhập một địa chỉ email hợp lệ.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    // Kiểm tra `phone`
//	    if (phone == null || phone.trim().isEmpty() || !isValidPhone(phone)) {
//	        model.addAttribute("error", "Vui lòng nhập một số điện thoại hợp lệ.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    // Kiểm tra `avatar` và `background`
//	    if (avatar.isEmpty()) {
//	        model.addAttribute("error", "Vui lòng tải lên một hình ảnh đại diện.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    if (background.isEmpty()) {
//	        model.addAttribute("error", "Vui lòng tải lên một hình ảnh nền.");
//	        return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	    }
//	    String imageNameAVT = "";
//		String imageNameBR = "";
//
//		// TODO: process POST request
//		account.setShopname(shopname);
//		account.setUsername(username);
//		account.setFullname(fullname);
//		account.setEmail(email);
//		account.setBirthday(birthday);
//		account.setPhone(phone);
//		if (!avatar.isEmpty()) {
//			String fileName = avatar.getOriginalFilename();
//			String pathString = context.getRealPath("/img/account/" + fileName);
//			Path path = Path.of(pathString);
//			if (!Files.exists(path)) {
//				try {
//					Files.createDirectories(path);
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//			try {
//				Files.copy(avatar.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
//				imageNameAVT = fileName;
//				account.setAvatar(imageNameAVT);
//			} catch (IOException e) {
//				// TODO Auto-generated catch bloc
//				e.printStackTrace();
//			}
//		}
//		if (!avatar.isEmpty()) {
//			String fileNameBR = background.getOriginalFilename();
//			String pathString = context.getRealPath("/img/background/" + fileNameBR);
//			Path path = Path.of(pathString);
//			if (!Files.exists(path)) {
//				try {
//					Files.createDirectories(path);
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//			try {
//				Files.copy(background.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
//				imageNameBR = fileNameBR;
//				account.setBackground(imageNameBR);
//			} catch (IOException e) {
//				// TODO Auto-generated catch bloc
//				e.printStackTrace();
//			}
//		}
//		accountRepository.saveAndFlush(account);
//		return "redirect:/Ebook/account/updateProfile/user/" + account.getId();
//	}
//	private boolean isValidEmail(String email) {
//	    // Sử dụng biểu thức chính quy để kiểm tra tính hợp lệ của email
//	    String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
//	    return email.matches(emailRegex);
//	}
//	private boolean isValidPhone(String phone) {
//	    // Sử dụng biểu thức chính quy để kiểm tra tính hợp lệ của số điện thoại
//	    String phoneRegex = "^[0-9]{10}$";
//	    return phone.matches(phoneRegex);
//	}
	
}
