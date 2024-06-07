package com.foti_java.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Account;
import com.foti_java.repository.AccountRepositoty;

@Controller
@RequestMapping("Ebook/admin")
public class AdminSellerManagerController {
	@Autowired
	AccountRepositoty accountRepository;
	List<Account> listAccount;

	@RequestMapping("sellermanager")
	public String requestMethodName(Model model) {
		listAccount = accountRepository.findAll();
		model.addAttribute("listAccount", listAccount);
		return "html/admin/AdminLTE-3.1.0/views/pages/sellermanager";
	}

}
