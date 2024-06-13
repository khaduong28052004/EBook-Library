package com.foti_java.controller.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("seller")
public class SellerVoucherManagerController {
	@RequestMapping("vouchermanager")
	public String voucherManager() {
		return "seller/pages/vouchermanager";
	}
}
