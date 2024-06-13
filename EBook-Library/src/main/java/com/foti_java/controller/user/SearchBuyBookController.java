package com.foti_java.controller.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.tags.EvalTag;

import com.foti_java.model.Account;
import com.foti_java.model.Category;
import com.foti_java.model.Evalue;
import com.foti_java.model.Product;
import com.foti_java.repository.CategoryRepository;
import com.foti_java.repository.ProductRepository;
import com.foti_java.service.SessionService;

@Controller
@RequestMapping("user")
public class SearchBuyBookController {
	@Autowired
	ProductRepository productRepository;
	List<Product> list = new ArrayList<>();
	List<Category> listCategory = new ArrayList<>();
	Page<Product> page;
	Pageable pageable;
	int index = 0;

	String nameSearch = "";
	@Autowired
	CategoryRepository categoryRepository;
	List<Integer> listIdProduct;
	@Autowired
	SessionService sessionService;

	@RequestMapping("searchbuybook")
	public String productHome(Model model, @RequestParam("searchName") String name) {
		Account account = sessionService.getAttribute("account");
		listIdProduct = new ArrayList<Integer>();
		pageable = PageRequest.of(index, 8);
		page = productRepository.findAllByAccountNotAndNameContaining(account, name, pageable);
		list = page.getContent();
		for (int i = 0; i < page.getTotalPages(); i++) {
			Pageable pageableNew = PageRequest.of(i, 8);
			List<Product> listTotal = productRepository.findAllByAccountNotAndNameContaining(account, name, pageableNew)
					.getContent();
			for (Product product : listTotal) {
				listIdProduct.add(product.getId());
			}

		}
		model.addAttribute("listProducts", list);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("listCategories", categoryRepository.findAll());
		model.addAttribute("indexPage", index);
		return "client/SearchBuyBook";

	}

	@GetMapping("category")
	public String filterCategory(@RequestParam(name = "category", defaultValue = "") String[] category, Model model) {
		Account account = sessionService.getAttribute("account");
		listCategory = new ArrayList<Category>();
		for (String string : category) {
			listCategory.add(categoryRepository.findById(Integer.parseInt(string)).get());
		}
		pageable = PageRequest.of(index, 8);
		page = productRepository.findAllByIdInAndCategoryInAndAccountNot(listIdProduct, listCategory, account,
				pageable);
		list = page.getContent();
		if (list.size() > 0) {
			listIdProduct = new ArrayList<Integer>();
			for (int i = 0; i < page.getTotalPages(); i++) {
				Pageable pageableNew = PageRequest.of(i, 8);
				List<Product> listTotal = productRepository
						.findAllByIdInAndCategoryInAndAccountNot(listIdProduct, listCategory, account, pageableNew)
						.getContent();
				for (Product product : listTotal) {
					listIdProduct.add(product.getId());
				}
			}
		}
		model.addAttribute("listProducts", list);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("listCategories", categoryRepository.findAll());
		return "client/SearchBuyBook";

	}

	@GetMapping("filtePrice")
	public String filterPrice(@RequestParam("priceMin") double priceMin, @RequestParam("priceMax") double priceMax,
			Model model) {

		Account account = sessionService.getAttribute("account");

		pageable = PageRequest.of(index, 8);
		page = productRepository.findAllByIdInAndAccountNotAndPriceBetween(listIdProduct, account, priceMin, priceMax,
				pageable);
		list = page.getContent();
		if (list.size() > 0) {
			listIdProduct = new ArrayList<Integer>();
			for (int i = 0; i < page.getTotalPages(); i++) {
				Pageable pageableNew = PageRequest.of(i, 8);

				List<Product> listTotal = productRepository.findAllByIdInAndAccountNotAndPriceBetween(listIdProduct,
						account, priceMin, priceMax, pageableNew).getContent();
				for (Product product : listTotal) {
					listIdProduct.add(product.getId());
				}

			}
		}
		model.addAttribute("listProducts", list);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("listCategories", categoryRepository.findAll());
		return "client/SearchBuyBook";
	}

//	@GetMapping("search")
//	public String searchNameProduct(@RequestParam("searchName") String name, Model model) {
//		pageable = PageRequest.of(1, 2);
//		page = productRepository.findAllByNameContaining(name, pageable);
//		list = page.getContent();
////		nameSearch = name;
////		Min = 0;
////		Max = 0;
//		if (list.size() > 0) {
//			listIdProduct = new ArrayList<Integer>();
//			for (Product product : list) {
//				listIdProduct.add(product.getId());
//			}
//		}
//		model.addAttribute("listProducts", list);
//		model.addAttribute("totalPages", page.getTotalPages());
//		model.addAttribute("listCategories", categoryRepository.findAll());
//		return "client/SearchBuyBook";
//	}

	@GetMapping("page/{id}")
	public String indexPage(@PathVariable("id") Integer id, Model model) {
		index = id;
		pageable = PageRequest.of(index, 8);
		page = productRepository.findAllByIdIn(listIdProduct, pageable);
		list = page.getContent();
		model.addAttribute("listProducts", list);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("listCategories", categoryRepository.findAll());
		model.addAttribute("indexPage", index);
		return "client/SearchBuyBook";
	}

	@GetMapping("evaluate")
	public String filterEvaluate(Model model, @RequestParam("starRadio") String star) {
		List<Integer> listIdProductNew = new ArrayList<Integer>();
		for (Integer id : listIdProduct) {
			double totalStart = 0;
			for (Evalue eva : productRepository.findById(id).get().getEvalues()) {
				totalStart = totalStart + eva.getStar();
			}
			if (totalStart / productRepository.findById(id).get().getEvalues().size() >= Integer.parseInt(star)) {
				listIdProductNew.add(id);
			}
		}
		pageable = PageRequest.of(index, 8);
		page = productRepository.findAllByIdIn(listIdProductNew, pageable);
		list = page.getContent();
		if (list.size() > 0) {
			listIdProduct = new ArrayList<Integer>();
			for (int i = 0; i < page.getTotalPages(); i++) {
				Pageable pageableNew = PageRequest.of(i, 8);

				List<Product> listTotal = productRepository.findAllByIdIn(listIdProductNew, pageableNew).getContent();

				for (Product product : listTotal) {
					listIdProduct.add(product.getId());
				}
			}
		}
		model.addAttribute("listProducts", list);
		model.addAttribute("totalPages", page.getTotalPages());
		model.addAttribute("listCategories", categoryRepository.findAll());
		model.addAttribute("indexPage", index);
		return "client/SearchBuyBook";

	}
}
