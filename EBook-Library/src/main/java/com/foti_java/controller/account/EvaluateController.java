package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
@RequestMapping("user")
public class EvaluateController {
	@RequestMapping("evaluate")
	public String get() {
		return "html/user/evaluate";
		return "client/evaluate";
	}
}
