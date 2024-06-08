package com.foti_java.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Account;
import com.foti_java.repository.AccountRepositoty;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("admin")
public class AdminAccountManagerController {
	@Autowired
	AccountRepositoty accountRepository;
	List<Account> listAccount;

	@RequestMapping("accountmanager")
	public String accountManager(Model model) {
		listAccount = accountRepository.findAll();
		model.addAttribute("listAccount", listAccount);
		return "admin/pages/accountmanager";
	}

	@GetMapping("accountmanager/status/{id}")
	public String getMethodName(Model model, @PathVariable("id") Integer id) {
		Optional<Account> entity = accountRepository.findById(id);
		entity.get().setId(id);
		if (entity.get().isStatus()) {
			entity.get().setStatus(false);
		} else {
			entity.get().setStatus(true);
		}
		accountRepository.saveAndFlush(entity.get());
		return "redirect:/admin/accountmanager";
	}

}
