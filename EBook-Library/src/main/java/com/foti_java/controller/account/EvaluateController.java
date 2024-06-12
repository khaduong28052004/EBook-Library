package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class EvaluateController {
	@RequestMapping("evaluate")
	public String get() {
		return "client/evaluate";
	}
}
