package com.foti_java.controller.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("seller")
public class SellerHomeController {
	@RequestMapping("home")
	public String home() {
		return "html/admin/AdminLTE-3.1.0/views/pages/seller/index";
	}
}
