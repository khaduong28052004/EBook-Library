package com.foti_java.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.foti_java.model.Account;
import com.foti_java.model.Like;
import com.foti_java.model.Product;
import com.foti_java.repository.LikeRepository;
import com.foti_java.repository.ProductRepository;
import com.foti_java.service.SessionService;

@Controller
@RequestMapping("user")
public class FavoriteController {
	@Autowired
	SessionService sessionService;
	@Autowired
	LikeRepository likeRepository;

	@Autowired
	ProductRepository productRepository;
	int index = 0;

	@RequestMapping("favorite")
	public String get(Model model) {

//		Account account = sessionService.getAttribute("account");
//		Pageable pageable = PageRequest.of(index, 8);
//		Page<Like> likes = likeRepository.findAllByAccountAndStatusTrue(account, pageable);
//		List<Product> listProduct = productRepository.findAllByLikes(likes.getContent());
//		model.addAttribute("listProduct", listProduct);
//		model.addAttribute("totalPages", likes.getTotalPages());
		return "client/favoriteBooks";
	}

	@RequestMapping("favorite/page/{index}")
	public String get(Model model, @PathVariable("index") Integer ind) {
		index = ind;
//		Account account = sessionService.getAttribute("account");
//		Pageable pageable = PageRequest.of(index, 8);
//		Page<Like> likes = likeRepository.findAllByAccountAndStatusTrue(account, pageable);
//		List<Product> listProduct = productRepository.findAllByLikes(likes.getContent());
//		model.addAttribute("listProduct", listProduct);
//		model.addAttribute("totalPages", likes.getTotalPages());
		return "client/favoriteBooks";
	}
}
