package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminVoucherManagerController {
	@RequestMapping("vouchermanager")
	public String voucherManager() {
		return "admin/pages/vouchermanager";
	}

}
