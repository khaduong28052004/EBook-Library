package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BillController {
	@GetMapping("/Ebook/account/bill")
	public String getBill() {
		return"/html/account/bill";
	}
}
