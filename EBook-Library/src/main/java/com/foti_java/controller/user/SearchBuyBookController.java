package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
public class SearchBuyBookController {
	@RequestMapping("searchBuyBook")
	public String get() {
		return "html/user/SearchBuyBook";
	}
}