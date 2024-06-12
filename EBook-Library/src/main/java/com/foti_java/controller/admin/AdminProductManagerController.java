package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminProductManagerController {
	@RequestMapping("productmanager")
	public String productManager() {
		return "admin/pages/productmanager";
	}
}
