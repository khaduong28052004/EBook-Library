package com.foti_java.controller.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/seller")
public class SellerOrderManagerController {
	@RequestMapping("ordermanager")
	public String orderManager() {
		return "html/admin/AdminLTE-3.1.0/views/pages/seller/ordermanager";
	}
}
