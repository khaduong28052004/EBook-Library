package com.foti_java.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.CartDetail;
import com.foti_java.model.Product;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.CartDetailRepository;
import com.foti_java.repository.ProductRepository;

@Controller
@RequestMapping("user")
public class BuyBookDetailsController {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	CartDetailRepository cartDetailRepository;

	@RequestMapping("buybookdetails/{idProduct}")
	public String get(@PathVariable("idProduct") Integer idProduct, Model model) {
		Product product = productRepository.findById(idProduct).get();

		Page<Product> pageProduct = productRepository.findAllByAccountAndIdNot(product.getAccount(), idProduct,
				PageRequest.of(0, 10));
		model.addAttribute("listProduct", pageProduct.getContent());

		model.addAttribute("product", product);
		return "client/buyBookDetails";
	}

	@GetMapping("shoppingcart/add/{idProduct}")
	public String cartAdd(Model model, @PathVariable("idProduct") Integer idProduct,
			@RequestParam("btnradio") Integer quantity) {
//		Account account = (Account) sessionService.getAttribute("account");
		Account account = accountRepositoty.findById(1).get();
		Product product = productRepository.findById(idProduct).get();
		CartDetail cartDetail = cartDetailRepository.findByAccountAndProduct(account, product);
		if (cartDetail == null) {
			CartDetail cart = new CartDetail();
			cart.setProduct(product);
			cart.setAccount(account);
			cart.setQuantity(quantity);
			cartDetailRepository.save(cart);
		} else {
			cartDetail.setQuantity(cartDetail.getQuantity() + quantity);
			cartDetailRepository.save(cartDetail);
		}
		return "redirect:/user/shoppingcart";

	}
}
