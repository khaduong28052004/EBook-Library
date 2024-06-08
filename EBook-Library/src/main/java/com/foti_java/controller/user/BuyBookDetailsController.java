package com.foti_java.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Product;
import com.foti_java.repository.ProductRepository;

@Controller
@RequestMapping("user")
public class BuyBookDetailsController {
	@Autowired
	ProductRepository productRepository;

	@RequestMapping("buybookdetails/{idProduct}")
	public String get(@PathVariable("idProduct") Integer idProduct, Model model) {
		Product product = productRepository.findById(idProduct).get();
		
			Page<Product> pageProduct = productRepository.findAllByAccountAndIdNot(product.getAccount(), idProduct,
					PageRequest.of(0, 10));
			model.addAttribute("listProduct", pageProduct.getContent());
		

		model.addAttribute("product", product);
		return "client/buyBookDetails";
	}
}
