package com.foti_java.controller.account;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.CartDetail;
import com.foti_java.model.Role;
import com.foti_java.model.RoleDetail;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.CartDetailRepository;
import com.foti_java.repository.RoleDetailRepository;
import com.foti_java.repository.RoleRepository;
import com.foti_java.service.SendMailService;
import com.foti_java.service.SessionService;
import com.foti_java.utils.MD5Encoder;

@Controller
public class LoginController {

	@Autowired
	AccountRepositoty accountRepository;
	@Autowired
	SessionService sessionService;
	@Autowired
	RoleDetailRepository roleDetailRepository;
	@Autowired
	RoleRepository roleRepository;
	@Autowired
	SendMailService sendMailService;
	@Autowired
	CartDetailRepository cartDetailRepository;

	@RequestMapping("login")
	public String getChangePass() {

		return "client/login";
	}

	@PostMapping("login")
	public String login(Model model, @RequestParam("userName") String user, @RequestParam("password") String password) {
		System.out.println(user);
		System.out.println(password);
		System.out.println(MD5Encoder.encode(password));

		Account account = accountRepository.findByUsername(user);

		if (account != null) {
			if (account.isStatus()) {

				if (!account.getPassword().equals(MD5Encoder.encode(password))) {
					System.out.println("Sai mật khẩu!!");
					model.addAttribute("error", "Sai mật khẩu!");
					return "client/login";
				} else {
					sessionService.setAttribute("account", account);
					System.out.println("Đăng nhập thành công!");
					List<RoleDetail> role1 = roleDetailRepository.findByAccount(account);
					System.out.println(role1.get(0).getId());
					for (RoleDetail roleDetail : role1) {
						System.out.println("helloaf==------------------------------------------------");
						System.out.println(roleDetail.getRole().getName());
						if (roleDetail.getRole().getName().equals("admin")) {
							return "redirect:/admin/accountmanager";
						} else if (roleDetail.getRole().getName().equals("seller")) {
							return "redirect:/seller/home";
						}
					}
					return "redirect:/user/home";
				}
			} else {
				model.addAttribute("error",
						"Tài khoản đã ngường hoặc động ! <br> vui lòng liên hệ hotline <br>" + "để biết thêm chi tiết"
								+ "<a> 1900323</a>");
				System.out.println("lỏ");
				return "client/login";

			}	
		} else {
			model.addAttribute("error", "Tài khoản không tồn tại!");
			return "client/login";
		}
	}

	public String error = "";
	public String errorR = "";
	public String errorE = "";

	@PostMapping("register")
	public String register(Model model, @RequestParam("gmail") String mail, @RequestParam("fullName") String fullname,
			@RequestParam("userName") String user, @RequestParam("password") String password) {
		List<Account> accountList = accountRepository.findAll();
		for (Account account : accountList) {
			if (account.getEmail().equals(mail)) {
				errorR = "Email này đã được sử dụng";
				model.addAttribute("errorR", errorR);
				model.addAttribute("page", "rg");
				return "client/login";
			}
			if (account.getUsername().equals(user)) {
				errorR = "Tài khoản này đã được sử dụng";
				model.addAttribute("errorR", errorR);
				model.addAttribute("page", "rg");
				return "client/login";
			}
		
		}
		errorR = "";
		Account account = new Account();
		account.setUsername(user);
		account.setFullname(fullname);
		account.setPassword(MD5Encoder.encode(password));
		account.setEmail(mail);
		account.setStatus(true);
		accountRepository.saveAndFlush(account);
//        model.addAttribute("page", "rg");
		// thêm quyền cho bản
		System.out.println(account.getFullname());
		List<Role> role = roleRepository.findAll();
		RoleDetail roleDetail = new RoleDetail();
		roleDetail.setAccount(account);
		roleDetail.setRegistrationDate(null);
		roleDetail.setRole(role.get(2));
		roleDetailRepository.saveAndFlush(roleDetail);
		// tạo cartDetail
		CartDetail cartDetail = new CartDetail();
		cartDetail.setAccount(account);
		cartDetail.setQuantity(0);
		cartDetailRepository.saveAndFlush(cartDetail);

		model.addAttribute("errorR", "Đăng ký thành công! Vui lòng đăng nhập.");
		return "client/login";
	}

	private String otp1;
	private String Gmail;

	private String generateOtp() {
		Random random = new Random();
		int otp = 100000 + random.nextInt(900000);
		return String.valueOf(otp);
	}
    public String errorM=""; 
	@GetMapping("/resendOtp/{gmail}")
	public String resendOtp(Model model,@PathVariable(name = "gmail") String mail) {
		otp1 = generateOtp();
		errorM = "Đã gửi lại vui lòng kiểm tra mail! ";
		sendMailService.push(mail, "forgotPassword send OTP", "Mã OTP: " + otp1);
		model.addAttribute("error",errorM);
		return "client/forgotPassword";
	}

	@PostMapping("otp")
	public String otp(Model model, @RequestParam("gmail") String mail) {
		Account account = accountRepository.findByEmail(mail);
		if (account == null) {
			errorE = "Không tìm thấy tài khoản với email này.";
	        model.addAttribute("page", "ft");
			model.addAttribute("errorE", errorE);
			return "client/login";
		} else {
			Gmail = mail;
			otp1 = generateOtp();
			sendMailService.push(mail, "forgotPassword send OTP", "Mã OTP: " + otp1);
			model.addAttribute("gmail", Gmail);
			model.addAttribute("message", "OTP đã được gửi thành công!");
			return "client/forgotPassword";
		}
	}
	@GetMapping("forgotPassword")
	public String getMethodName() {
		return "client/updatePassword";
	}
	

	@PostMapping("forgotPassword")
	public String forgotPassword(Model model, @RequestParam("otp") String requestOtp) {
		model.addAttribute("gmail", Gmail);
		if (requestOtp.equals(otp1)) {
			otp1 = null;
			return "client/updatePassword";
		} else {
			model.addAttribute("error", "Mã OTP không đúng.");
			return "client/forgotPassword";
		}
	}

	@PostMapping("changPassword")
	public String changePassword(Model model, @RequestParam("password") String password,
			@RequestParam("re-password") String rePassword) {
		if (!rePassword.equals(password)) {
			model.addAttribute("error", "Mật khẩu không khớp.");
			return "client/updatePassword";
		}
		Account account = accountRepository.findByEmail(Gmail);
		account.setPassword(MD5Encoder.encode(password));
		accountRepository.saveAndFlush(account);
		return "redirect:/user/home";
	}
}
