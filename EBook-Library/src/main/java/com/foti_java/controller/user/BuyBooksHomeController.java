package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
@RequestMapping("user")
public class BuyBooksHomeController {
	@RequestMapping("buyBookHome")
	@RequestMapping("buybookhome")
	public String get() {
		return "html/user/buyBooksHome";
		return "client/buyBooksHome";
	}
}
