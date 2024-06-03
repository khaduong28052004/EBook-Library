package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BillDetailsController {
	@GetMapping("/Ebook/account/billDetails")
	public String getBillDetails() {
		return "/html/account/billDetails";
	}
}
