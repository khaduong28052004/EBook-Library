package com.foti_java.controller.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.Bank;
import com.foti_java.repository.BankRepositoty;

@Controller
public class BankController {
	@Autowired
	BankRepositoty bankRepositoty;
	String active = "insert";
	Integer id;
	@GetMapping("/user/bank")
	public String getBank(Model model) {
		List<Bank> list = bankRepositoty.findAll();
		model.addAttribute("listBanks", list);
		return "client/banks";
	}
	
	@GetMapping("/user/bank/edit")
	public String editBank(@RequestParam("id") Integer idBank) {
		id = idBank;
		return "redirect:/user/bank";
	}
	@PostMapping("/user/bank/save")
	public String bankSave(Model model,@RequestParam("bankId") String idBank,@RequestParam("accountNumber") String accountNumber,@RequestParam("accountName") String accountName) {
		if(active.equals("insert")) {
			Bank bank = new Bank();
			bank.setName(accountName);
			bank.setAccountNumber(accountNumber);
			bank.setAccount(new Account());
			bankRepositoty.saveAndFlush(bank);
		}else {
			Bank bank = new Bank();
			bank.setId(id);
			bank.setAccountNumber(accountNumber);
			bank.setAccount(new Account());
			bank.setName(idBank);
		}
		return "redirect:/user/bank";
	}
	
}
