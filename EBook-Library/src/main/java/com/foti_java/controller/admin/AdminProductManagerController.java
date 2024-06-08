package com.foti_java.controller.admin;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Account;
import com.foti_java.model.Product;
import com.foti_java.repository.ProductRepository;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("admin")
public class AdminProductManagerController {
	@Autowired
	ProductRepository productRepository;
	List<Product> listProducts;
	@Autowired
	HttpServletRequest req;

	@RequestMapping("productmanager")
	public String productManager(Model model) {
		listProducts = productRepository.findAllByActiveAndStatus(false,true);
		model.addAttribute("products", listProducts);
		return "admin/pages/productmanager";
	}

	@GetMapping({ "productmanager/false/{id}", "productmanager/true/{id}" })
	public String getCheck(@PathVariable("id") Integer id) {
		Optional<Product> entity = productRepository.findById(id);
		entity.get().setId(id);
		if (req.getRequestURI().contains("false")) {
			entity.get().setStatus(false);
		}if (req.getRequestURI().contains("true")) {
			entity.get().setActive(true);
		}
		productRepository.saveAndFlush(entity.get());
		return "redirect:/admin/productmanager";
	}

}
