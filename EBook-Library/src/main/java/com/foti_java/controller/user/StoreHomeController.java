package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
@RequestMapping("user")
public class StoreHomeController {
	@RequestMapping("storeHome")
	@RequestMapping("storehome")
	public String get() {
		return "html/user/storeHome";
		return "client/storeHome";
	}
}
