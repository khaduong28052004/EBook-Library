package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
@RequestMapping("user")
public class ShoppingCartController {
	@RequestMapping("shoppingCart")
	@RequestMapping("shoppingcart")
	public String get() {
		return "html/user/shoppingCart";
		return "client/shoppingCart";
	}
}
