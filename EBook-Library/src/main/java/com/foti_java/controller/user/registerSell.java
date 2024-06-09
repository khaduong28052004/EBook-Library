package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user/registerSell")
@RequestMapping("register/seller")
public class registerSell {
	@RequestMapping("registerSell01")
	@RequestMapping("registersell01")
	public String getRegisterSell01() {
		return "html/user/registerSell/registerSell01";
		return "client/registerseller/registerSell01";
	}

	@RequestMapping("registerSell02")
	@RequestMapping("registersell02")
	public String getRegisterSell02() {
		return "html/user/registerSell/registerSell02";
		return "client/registerseller/registerSell02";
	}

	@RequestMapping("registerSell03")
	@RequestMapping("registersell03")
	public String getRegisterSell03() {
		return "html/user/registerSell/registerSell03";
		return "client/registerseller/registerSell03";
	}
	@RequestMapping("registerSell04")
	@RequestMapping("registersell04")
	public String getRegisterSell04() {
		return "html/user/registerSell/registerSell04";
		return "client/registerseller/registerSell04";
	}
}
