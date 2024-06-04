package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminHomeController {
	@RequestMapping(("home"))
	public String home() {
		return "html/admin/AdminLTE-3.1.0/index";

	}

}
