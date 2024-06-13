package com.foti_java.controller.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foti_java.model.Account;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.service.SessionService;
import com.foti_java.utils.MD5Encoder;

@Controller
public class LoginController {
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	SessionService sessionService;

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("page", "");
		return "client/login";
	}

	@PostMapping("/login")
	public String postLogin(@RequestParam("userName") String userName, @RequestParam("passWord") String passWord,
			Model model) {
		Account account = accountRepositoty.findByUsernameAndPassword(userName, passWord);
		Account account = accountRepositoty.findByUsernameAndPassword(userName, MD5Encoder.encode(passWord));
		if (account == null) {
			model.addAttribute("error", "Sai username hoặc password");
			return "client/login";
		} else {
			if (account.isStatus() == false) {
				model.addAttribute("error", "Tài khoản của bạn đã bị khóa");
				return "client/login";
			}
			System.out.println("address "+account.getAddresses().size());
			sessionService.setAttribute("account", account);
			return "redirect:/user/home";
		}
	}
}
