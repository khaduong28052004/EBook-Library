package com.foti_java.recontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.foti_java.model.Product;
import com.foti_java.repository.ProductRepository;
@CrossOrigin("*")
@RestController
@RequestMapping("/rest")
public class ProductRestCintroller {
	@Autowired
	ProductRepository productRepository;
	@GetMapping("/products")
	public List<Product> getAll() {  
		 return  productRepository.findAll();
	}
}
