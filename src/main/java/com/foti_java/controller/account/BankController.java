package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BankController {
	@GetMapping("/Ebook/account/banks")
	public String getBank() {
		return "/html/account/banks";
	}
}
