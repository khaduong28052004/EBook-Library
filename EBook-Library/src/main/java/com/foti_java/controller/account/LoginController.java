package com.foti_java.controller.account;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.MailSender;
import com.foti_java.model.Role;
import com.foti_java.model.RoleDetail;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.RoleDetailRepository;
import com.foti_java.repository.RoleRepository;
import com.foti_java.service.SendMailService;
import com.foti_java.service.SessionService;

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

	@RequestMapping("login")

	public String getChangePass() {

		return "client/login";
	}

	@PostMapping("login")
	public String login(Model model, @RequestParam("userName") String user, @RequestParam("password") String password) {
		// TODO: process POST request
		System.out.println(user);
		System.out.println(password);
		Account account = accountRepository.findByUsername(user);
		if (account != null) {
			if (!account.getPassword().equals(password)) {
				System.out.println("Sai mật khẩu!!");
				model.addAttribute("error", "Sai mật khẩu!");
				return "redirect:/Ebook/account/login";
			} else {
				sessionService.setAttribute("account", account);
				System.out.println("Đăng nhập thành công!");
				//
				//
				// xét quuyền ở đây nè
				List<RoleDetail> role1 = roleDetailRepository.findByAccount(account);
				System.out.println(role1.get(0).getId());
				for (RoleDetail roleDetail : role1) {
					// System.out.println(roleDetail.get().getId());
					// System.out.println(roleDetail.get().getId());
					System.out.println(roleDetail.getRole().getName());
					if (roleDetail.getRole().getName().equals("admin")) {
						if (roleDetail.getRole().getName().equals("admin")) {
							return "redirect:/Ebook/admin/accountmanager";

						} else if (roleDetail.getRole().getName().equals("seller")) {

						} else if (roleDetail.getRole().getName().equals("seller")) {
							return "redirect:/Ebook/seller/home";
						}
					}
				}
				return "redirect:/Ebook/user/buyBookHome";
			}
		} else {
			model.addAttribute("error", "Tài khoản không tồn tại!");
			System.out.println("Tài khoản không tồn tại !");
			return "redirect:/Ebook/account/login";
		}
	}

	@PostMapping("register")
	public String postMethodName(Model model, @RequestParam("gmail") String mail, @RequestParam("userName") String user,
			@RequestParam("password") String password) {
		// TODO: process POST request
		Account account = new Account();
		// String pattern = "yyyy-MM-dd";
		// Date now = new Date();
		// SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		// account.set
		// account.setEmail(mail);
		account.setUsername(user);
		account.setPassword(password);

		accountRepository.saveAndFlush(account);

		// String pattern = "yyyy-MM-dd";
		// Date now = new Date();
		// SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		// account.set
		// account.setEmail(mail);
		account.setUsername(user);
		account.setPassword(password);

		accountRepository.saveAndFlush(account);

		return "redirect:/Ebook/user/buyBookHome";
	}

	public int otp;
	public String Gmail;

	private String generateOtp() {
		Random random = new Random();
		otp = 100000 + random.nextInt(900000);
		return String.valueOf(otp);
	}

	public int otp;
	public String Gmail;

	private String generateOtp() {
		Random random = new Random();
		otp = 100000 + random.nextInt(900000);
		return String.valueOf(otp);
	}

	@PostMapping("otp")
	public String otp(Model model,@RequestParam("gmail") String mail) {

	// TODO: process POST request
	public String otp(Model model, @RequestParam("gmail") String mail) {
		// TODO: process POST request
		Account account = accountRepository.findByEmail(mail);
		
		if(account == null) {
			model.addAttribute("error","không tài khoản nào");

		if (account == null) {
			model.addAttribute("error", "không tài khoản nào");
			System.out.println("không tài khoản nào");
			return "redirect:/Ebook/account/login";
			
		}else {
			Gmail=mail;

		} else {
			Gmail = mail;
			String message = "send success";
//			mailerService.push(toEmail, subject, content);
			
//			MailSender Mail = new MailSender();
			sendMailService.push(mail, "forgotPassword send OTP", "Mã OPT: "+ generateOtp());
//			generateOtp();
		

			// MailSender Mail = new MailSender();
			sendMailService.push(mail, "forgotPassword send OTP", "Mã OPT: " + generateOtp());
			// generateOtp();

			model.addAttribute("gmail", Gmail);
			model.addAttribute("message", message);
		
//		    String pattern = "yyyy-MM-dd";

	        
//	        accountRepository.saveAndFlush(account);
			// String pattern = "yyyy-MM-dd";

			// accountRepository.saveAndFlush(account);
			return "html/account/forgotPassword";
		}
		
		

//		return "redirect:/Ebook/user/buyBookHome";
		// return "redirect:/Ebook/user/buyBookHome";
	}

	@PostMapping("forgotPassword")
	public String forgotPassword(Model model,@RequestParam("otp") String requeOpt) {

	public String forgotPassword(Model model, @RequestParam("otp") String requeOpt) {
		System.out.println(Gmail);
		System.out.println("otp ne");
		System.out.println(otp);
		model.addAttribute("gmail", Gmail);

		System.out.println(generateOtp());
		// return "html/account/forgotPassword";
		// return "html/account/forgotPassword";
		return "redirect:/Ebook/user/buyBookHome";
	}

}
