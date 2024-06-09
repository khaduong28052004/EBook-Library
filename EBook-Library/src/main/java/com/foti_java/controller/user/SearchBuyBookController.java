package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
@RequestMapping("user")
public class SearchBuyBookController {
	@RequestMapping("searchBuyBook")
	@RequestMapping("searchbuybook")
	public String get() {
		return "html/user/SearchBuyBook";
		return "client/SearchBuyBook";
	}
}
