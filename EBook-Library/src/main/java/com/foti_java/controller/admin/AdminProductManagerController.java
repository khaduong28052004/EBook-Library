package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/admin")
public class AdminProductManagerController {
	@RequestMapping("productmanager")
	public String productManager() {
		return "html/admin/AdminLTE-3.1.0/views/pages/productmanager";
		return "admin/pages/productmanager";
	}
}
