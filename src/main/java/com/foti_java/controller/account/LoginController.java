package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/account")
public class LoginController {
	@RequestMapping("login")
	public String getChangePass() {
		return "html/account/login";
	}
}
