package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
public class FillListController {
	@RequestMapping("fillList")
	public String get() {
		return "layout/user/fillList";
	}
}
