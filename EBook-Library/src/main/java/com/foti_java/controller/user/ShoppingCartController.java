package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class ShoppingCartController {
	@RequestMapping("shoppingcart")
	public String get() {
		return "client/shoppingCart";
	}
}
