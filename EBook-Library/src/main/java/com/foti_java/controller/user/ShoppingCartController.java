package com.foti_java.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.CartDetail;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.CartDetailRepository;
import com.foti_java.service.SessionService;

@Controller
@RequestMapping("user")
public class ShoppingCartController {
	@Autowired
	CartDetailRepository cartDetailRepository;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountRepositoty accountRepositoty;

	@RequestMapping("shoppingcart")
	public String get(Model model) {
		Account account = accountRepositoty.findById(1).get();
		List<CartDetail> cartDetails = cartDetailRepository.findAllCartDetailsByAccount(account);
		model.addAttribute("listCarts", cartDetails);
		return "client/shoppingCart";
	}

	@GetMapping("shoppingcart/delete/{idCartDetail}")
	public String deleteCart(@PathVariable("idCartDetail") Integer idCartDetail) {
		cartDetailRepository.deleteById(idCartDetail);
		return "redirect:/user/shoppingcart";
	}

	@PostMapping("shoppingcart/deleteall")
	public String deleteAllCart(@RequestParam("idProduct") Integer[] cartId) {
		for (Integer cart : cartId) {
			cartDetailRepository.deleteById(cart);
		}
		return "redirect:/user/shoppingcart";
	}
}
