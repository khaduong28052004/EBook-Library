package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ebook/user")
public class ShoppingCartController {
	@RequestMapping("shoppingCart")
	public String get() {
		return "layout/user/shoppingCart";
	}
}
