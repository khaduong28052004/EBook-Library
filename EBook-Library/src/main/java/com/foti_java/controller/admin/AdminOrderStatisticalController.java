package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminOrderStatisticalController {
	@RequestMapping("orderstatistical")
	public String orderstatistical() {
		return "html/admin/AdminLTE-3.1.0/views/pages/orderstatistical";
	}
}
