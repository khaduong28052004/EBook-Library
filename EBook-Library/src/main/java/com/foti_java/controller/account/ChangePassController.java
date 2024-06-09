package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("Ebook/account")
@RequestMapping("user")
public class ChangePassController {
	@RequestMapping("changePass")
	@RequestMapping("changepass")
	public String getChangePass() {
		return "html/account/changPass";
		return "client/changPass";
	}

}
