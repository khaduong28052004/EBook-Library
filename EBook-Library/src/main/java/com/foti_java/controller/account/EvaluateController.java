package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
public class EvaluateController {
	@RequestMapping("evaluate")
	public String get() {
		return "layout/user/evaluate";
	}
}
