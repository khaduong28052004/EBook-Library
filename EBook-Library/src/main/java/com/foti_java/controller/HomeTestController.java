package com.foti_java.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Account;
import com.foti_java.model.Address;
import com.foti_java.model.Commune;
import com.foti_java.model.District;
import com.foti_java.model.Product;
import com.foti_java.model.Province;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.AddressRepository;
import com.foti_java.repository.CommuneRepository;
import com.foti_java.repository.DistrictRepository;
import com.foti_java.repository.ProductRepository;
import com.foti_java.repository.ProvinceRepository;
import com.foti_java.utils.ApiUtil;

@Controller
public class HomeTestController {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	ProvinceRepository provinceRepository;
	@Autowired
	DistrictRepository districtRepository;
	@Autowired
	CommuneRepository communeRepository;
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	AddressRepository addressRepository;

	@RequestMapping("/user/home")
	public String requestMethodName(Model model) {
//		List<Account> listAccounts = accountRepositoty.findAll();
//		for (int i = 0; i < listAccounts.size(); i++) {
//			Address address = new Address();
//			address.setAccount(listAccounts.get(i));
//			Province province = provinceRepository.findAll().get(i);
//			address.setProvince(province);
//			District district = districtRepository.findAll().get(i);
//			address.setDistrict(district);
//			Commune commune = communeRepository.findAll().get(i);
//			address.setCommune(commune);
//			address.setStatus(true);
//			address.setNameAddress("Đường số " + i + (i + i));
//			address.setFullNameAddress("Đường số " + i + (i + i)+", " + commune.getName() + ", " + district.getName() + ", "
//					+ province.getName());
//			addressRepository.save(address);
//
//		}
		Sort sort = Sort.by(Sort.Direction.DESC, "quantitySell");
		Pageable pageableHot = PageRequest.of(0, 2, sort);
		Page<Product> pageProductHot = productRepository.findAll(pageableHot);
		List<Integer> listId = new ArrayList<>();
		for (int i = 0; i < pageProductHot.getContent().size(); i++) {
			listId.add(pageProductHot.getContent().get(i).getId());
		}
		Page<Product> pageProductNew = productRepository.findAllByIdNotIn(listId,
				PageRequest.of(0, 2, Sort.by(Sort.Direction.DESC, "date")));
		model.addAttribute("listProductHot", pageProductHot.getContent());
		model.addAttribute("listProductNew", pageProductNew.getContent());
//		System.out.println("listProduct"+ );
		return "client/buyBooksHome";
	}

}
