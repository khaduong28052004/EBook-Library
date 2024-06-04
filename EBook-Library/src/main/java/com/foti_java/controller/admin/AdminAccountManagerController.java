package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/admin")
public class AdminAccountManagerController {
	@RequestMapping("accountmanager")
	public String accountManager() {
		return "html/admin/AdminLTE-3.1.0/views/pages/accountmanager";
	}
}
