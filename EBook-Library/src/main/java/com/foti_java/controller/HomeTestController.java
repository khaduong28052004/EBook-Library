package com.foti_java.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping("/user/home")
	public String requestMethodName(Model model) {
		Sort sort = Sort.by(Sort.Direction.DESC, "quantitySell");
		Pageable pageableHot = PageRequest.of(0, 2, sort);
		Page<Product> pageProductHot = productRepository.findAll(pageableHot);
		List<Integer> listId = new ArrayList<>();
		for (int i = 0; i < pageProductHot.getContent().size(); i++) {
			listId.add(pageProductHot.getContent().get(i).getId());
		}
		Page<Product> pageProductNew = productRepository.findAllByIdNotIn(listId,
				PageRequest.of(0, 2, Sort.by(Sort.Direction.ASC, "date")));
		model.addAttribute("listProductHot", pageProductHot.getContent());
		model.addAttribute("listProductNew", pageProductNew.getContent());
//		System.out.println("listProduct"+ );
		return "client/buyBooksHome";
	}

}
