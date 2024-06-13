package com.foti_java.controller.account;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.Evalue;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.EvalueRepository;
import com.foti_java.repository.ProductRepository;

@Controller
public class EvaluateController {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	BillRepositoty billRepositoty;
	@Autowired
	EvalueRepository evalueRepository;

//	Account account = (Account) session.getAttribute("account");
//	String id = account.getId();
	Integer id = 1;

	@GetMapping("/user/evaluate/{idBill}")
	public String getEvaluates(@PathVariable("idBill") Integer idBill, Model model) {
		System.out.println(idBill);
		Evalue evalute = evalueRepository.getByBillId(id, idBill);
		model.addAttribute("evalute", evalute);
		return "client/evaluate";
	}

//	@PostMapping("/user/evaluate/gui")
//	public String saveEvaluates(@PathVariable("idBill") Integer idBill, Model model,
//			@RequestParam("checkDescription") String checkDescription, @RequestParam("content") String content,
//			@RequestParam("quality") String quality, @RequestParam("starDescription") String starDescription) {
//		Evalue evalute = new Evalue(checkDescription, content, quality, ,id,);
//		String starDescription = "";
//		evalueRepository.save(evalute);
//		model.addAttribute("evalute", evalute);
//		return "client/evaluate";
//	}

}

