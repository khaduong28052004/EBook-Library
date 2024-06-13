package com.foti_java.controller.account;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.foti_java.model.Account;
import com.foti_java.model.Address;
import com.foti_java.model.Bill;
import com.foti_java.model.Evalue;
import com.foti_java.model.Product;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.AddressRepository;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.EvalueRepository;
import com.foti_java.repository.ProductRepository;

import jakarta.servlet.ServletContext;

@Controller
public class BillDetailsController {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	BillRepositoty billRepositoty;
	@Autowired
	AddressRepository addressRepository;
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	ServletContext session;
	@Autowired
	EvalueRepository evalueRepository;
	
	Account account = (Account) session.getAttribute("account");
	String username = account.getUsername();
//	String username = "user";

	@GetMapping("/user/billdetails/{idBill}")
	public String getBillDetails(@PathVariable("idBill") Integer idBill, Model model) {
		Bill bill = billRepositoty.findBillById(username, idBill);
		bill = billRepositoty.findBillById(username, idBill);
		String shopName = billRepositoty.getShopName(idBill);
		Address address = addressRepository.getAddress(idBill);
		Account account = accountRepositoty.getAccount(idBill);
		Product product = productRepository.getProuct(idBill);
		Integer star = evalueRepository.getStar(product.getId());
		double totalPrice = billRepositoty.setTotalPrice(idBill);
		if (star == null) {
			star = 0;
			model.addAttribute("star", star);
		} else if (star != null) {
			model.addAttribute("star", star);
		}
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("image", product.getImage());
		model.addAttribute("product", product);
		model.addAttribute("shopName", shopName);
		model.addAttribute("accountPhone", account.getPhone());
		model.addAttribute("accountName", account.getUsername());
		model.addAttribute("address", address.getNameAddress());
		model.addAttribute("bill", bill);
		model.addAttribute("id", idBill);
		model.addAttribute("orderStatus", bill.getOrderStatuses().getName());
		return "client/billDetails";
	}

	@GetMapping("/user/trolaibills")
	public String postMethodName() {
		return "redirect:/user/bill";
	}

}
