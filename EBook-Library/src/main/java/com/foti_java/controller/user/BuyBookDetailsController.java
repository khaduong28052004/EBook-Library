package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
@RequestMapping("user")
public class BuyBookDetailsController {
	@RequestMapping("buyBookDetails")
	@RequestMapping("buybookdetails")
	public String get() {
		return "html/user/buyBookDetails";
		return "client/buyBookDetails";
	}
}
