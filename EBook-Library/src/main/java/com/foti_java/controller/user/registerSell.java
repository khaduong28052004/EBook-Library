package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("register/seller")
public class registerSell {
	@RequestMapping("registersell01")
	public String getRegisterSell01() {
		return "client/registerseller/registerSell01";
	}

	@RequestMapping("registersell02")
	public String getRegisterSell02() {
		return "client/registerseller/registerSell02";
	}

	@RequestMapping("registersell03")
	public String getRegisterSell03() {
		return "client/registerseller/registerSell03";
	}
	@RequestMapping("registersell04")
	public String getRegisterSell04() {
		return "client/registerseller/registerSell04";
	}
}
