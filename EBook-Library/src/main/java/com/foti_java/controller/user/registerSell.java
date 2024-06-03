package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user/registerSell")
public class registerSell {
	@RequestMapping("registerSell01")
	public String getRegisterSell01() {
		return "html/user/registerSell/registerSell01";
	}

	@RequestMapping("registerSell02")
	public String getRegisterSell02() {
		return "html/user/registerSell/registerSell02";
	}

	@RequestMapping("registerSell03")
	public String getRegisterSell03() {
		return "html/user/registerSell/registerSell03";
	}
	@RequestMapping("registerSell04")
	public String getRegisterSell04() {
		return "html/user/registerSell/registerSell04";
	}
}
