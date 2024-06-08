package com.foti_java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foti_java.model.Product;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.ProductRepository;

@Controller
public class HomeTestController {
	@Autowired
	ProductRepository productRepository;
	List<Product> listProduct;

	@RequestMapping("/user/home")
	public String requestMethodName() {
		Sort sort = Sort.by(Sort.Direction.DESC, "quantitySell");
		listProduct = productRepository.findAll(sort);
		return "client/buyBooksHome";
	}

}
