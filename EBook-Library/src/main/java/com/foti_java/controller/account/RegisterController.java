package com.foti_java.controller.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
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
//@RequestMapping("user")
public class RegisterController {

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
		System.out.println(account.getFullname());
		List<Role> role = roleRepository.findAll();
		RoleDetail roleDetail = new RoleDetail();
		roleDetail.setAccount(account);
		roleDetail.setRegistrationDate(null);
		roleDetail.setRole(role.get(3));
		roleDetailRepository.saveAndFlush(roleDetail);

		model.addAttribute("errorR", "Đăng ký thành công! Vui lòng đăng nhập.");
		return "client/login";
	}
}
