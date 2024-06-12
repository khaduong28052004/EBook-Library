package com.foti_java.controller.account;

import java.util.ArrayList;
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
import com.foti_java.service.SessionService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BankController {
	@Autowired
	SessionService serviceSessionService;
	@Autowired
	HttpServletRequest req;
	@Autowired
	BankRepositoty bankRepositoty;
	String active = "insert";
	Integer id;
	Bank banks = new Bank();
	boolean modal = false;
	@GetMapping("/user/bank")
	public String getBank(Model model) {
		Account account = serviceSessionService.getAttribute("account");
		active = "insert";
		List<String> listTKNH = new ArrayList<>();
		List<Bank> list = bankRepositoty.findAllById(account.getId());
		List<Bank> listAccountNumber = bankRepositoty.findAll();
		req.setAttribute("listBanks", list);
		for(Bank bank : listAccountNumber) {
			listTKNH.add("'"+bank.getAccountNumber()+"'");
		}
		req.setAttribute("listTKNH", listTKNH);
		req.setAttribute("bank", banks);
		req.setAttribute("modal", modal);
		banks = new Bank();
		modal = false;
		return "client/banks";
	}
	
	@GetMapping("/user/bank/edit")
	public String editBank(@RequestParam("id") Integer idBank) {
		Account account = serviceSessionService.getAttribute("account");
		id = idBank;
		active = "update";
		List<Bank> list = bankRepositoty.findAll();
		for(Bank bank : list) {
			if(bank.getId() ==  id) {
				banks = bank;
				modal = true;
			}
		}
		List<String> listTKNH = new ArrayList<>();
		List<Bank> listBank = bankRepositoty.findAllById(account.getId());
		for(Bank bank : list) {
			if(id!=bank.getId()) {
				listTKNH.add("'"+bank.getAccountNumber()+"'");
			}
			
		}
		req.setAttribute("listTKNH", listTKNH);
		req.setAttribute("listBanks", listBank);
		req.setAttribute("bank", banks);
		req.setAttribute("modal", modal);
		banks = new Bank();
		modal = false;
		return "client/banks";
	}
	@GetMapping("/user/bank/delete")
	public String deleteBank(@RequestParam("id") Integer idBank) {
		id = idBank;
		boolean statusDelete = false;
		List<Bank> list = bankRepositoty.findAll();
		for(Bank bank : list) {
			if(bank.getId() ==  id) {
				statusDelete = bank.isStatus();
				bankRepositoty.delete(bank);
			}
		}
		setDefautDelete(id,statusDelete);
		return "redirect:/user/bank";
	}
	@PostMapping("/user/bank/save")
	public String bankSave(Model model,@RequestParam("bankId") String idBank,
									   @RequestParam("accountNumber") String accountNumber,
									   @RequestParam("name") String accountName
									  ) {
		boolean status = Boolean.parseBoolean(req.getParameter("status"));
		Account account = new Account();
		account.setId(1);
		if(status!=true) {
			status = false;
		}
		if(active.equals("insert")) {
			System.out.println("INSERT");
			Bank bank = new Bank();
			bank.setName(accountName);
			bank.setStatus(status);
			bank.setAccountNumber(accountNumber);
			bank.setAccount(account);
			bank.setNameBank(idBank);
			bankRepositoty.saveAndFlush(bank);
			setDefaut(bank.getId(),status);
			setDefautUpdate(bank.getId());
		}else {
			Bank bank = new Bank();
			System.out.println("UPDATE");
			bank.setId(id);
			bank.setName(accountName);
			bank.setStatus(status);
			bank.setAccountNumber(accountNumber);
			bank.setAccount(account);
			bank.setNameBank(idBank);
			bankRepositoty.saveAndFlush(bank);
			setDefaut(id,status);
			setDefautUpdate(id);
		}
		return "redirect:/user/bank";
	}
	
	public void setDefaut(Integer id, boolean status) {
		Account account = serviceSessionService.getAttribute("account");
		if(status) {
			List<Bank> list = bankRepositoty.findAllById(account.getId());
			for(Bank bank : list) {
				if(id != bank.getId()) {
					bank.setStatus(false);
					bankRepositoty.saveAndFlush(bank);
				}
			}
		}
	}
	public void setDefautUpdate(Integer id) {
		boolean checkValue = false;
		Account account = serviceSessionService.getAttribute("account");
			List<Bank> list = bankRepositoty.findAllById(account.getId());
			for(Bank bank : list) {
				if(true == bank.isStatus()) {
					checkValue = true;
					break;
				}
			}
		if(!checkValue) {
			for(Bank bank : list) {
				if(id == bank.getId()) {
					bank.setStatus(true);
					bankRepositoty.saveAndFlush(bank);
					break;
				}
			}
		}
	}
	
	public void setDefautDelete(Integer id, boolean status) {
		Account account = serviceSessionService.getAttribute("account");
		if(status) {
			List<Bank> list = bankRepositoty.findAllById(account.getId());
			for(Bank bank : list) {
				if(id != bank.getId()) {
					bank.setStatus(true);
					bankRepositoty.saveAndFlush(bank);
					break;
				}
			}
		}
	}
	
}
