package com.foti_java.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.repository.AccountRepositoty;

@Controller
@RequestMapping("admin")
public class AdminHomeController {
	@Autowired
	AccountRepositoty accountRepository;

	@RequestMapping("home")
	public String home(Model model) {
		int countSellerNotCheck = accountRepository.countSellerNotCheck();
		int countAccount = accountRepository.countAccount();
		int countSeller = accountRepository.countSeller();
		int countUser = accountRepository.countUser();
		int countAdmin = accountRepository.countAdmin();
		double AvgSeller = ((double) countSeller / countAccount) * 100;
		double totalPriceAdmin = accountRepository.totalPriceAdmin();
		
		model.addAttribute("countSellerNotCheck", countSellerNotCheck);
		model.addAttribute("AvgSeller", Math.round((AvgSeller * 10.0) / 10.0));
		model.addAttribute("countAccount", countAccount);
		model.addAttribute("totalPriceAdmin", totalPriceAdmin);
		model.addAttribute("countUser", countUser);
		model.addAttribute("countSeller", countSeller);
		model.addAttribute("countAdmin", countAdmin);
		return "admin/index";
	}

}
