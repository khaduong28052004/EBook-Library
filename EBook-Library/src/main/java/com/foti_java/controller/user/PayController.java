package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class PayController {
	@RequestMapping("pay")
	public String get() {
		return "client/pay";
	}
}
