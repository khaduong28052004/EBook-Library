package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminAccountManagerController {
	@RequestMapping("accountmanager")
	public String accountManager() {
		return "admin/pages/accountmanager";
	}
}
