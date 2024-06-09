package com.foti_java.controller.admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;
import com.foti_java.model.Role;
import com.foti_java.model.RoleDetail;
import com.foti_java.model.SellerStatistics;
import com.foti_java.model.Voucher;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.RoleDetailRepository;
import com.foti_java.repository.RoleRepository;
import com.foti_java.repository.VoucherRepository;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequestMapping("admin")
public class AdminSellerManagerController {
	@Autowired
	BillDetailRepository billDetailRepository;
	@Autowired
	AccountRepositoty accountRepository;
	@Autowired
	BillRepositoty billRepository;
	@Autowired
	RoleDetailRepository roleDTRepository;
	@Autowired
	RoleRepository roleRepository;
	@Autowired
	VoucherRepository voucherRepository;
	List<Voucher> listVoucher = new ArrayList<>();
	List<Bill> listBill = new ArrayList<>();
	List<BillDetail> listBillDetails = new ArrayList<>();

	@RequestMapping("sellermanager")
	public String requestMethodName(Model model) {
		List<Object[]> list = billRepository.TK_SELLER_IN_ACCOUNT();
		List<SellerStatistics> statisticsList = new ArrayList<>();

		for (Object[] objects : list) {
			SellerStatistics stats = new SellerStatistics();
			stats.setId(Integer.parseInt(objects[0].toString()));
			stats.setUsername(objects[1].toString());
			stats.setFullname(objects[2].toString());
			stats.setCountTD(Integer.parseInt(objects[3].toString()));
			stats.setCountDanhGia(Integer.parseInt(objects[4].toString()));
			stats.setCountDaBan(Integer.parseInt(objects[5].toString()));
			stats.setLoiNhuan(Float.parseFloat(objects[6].toString()));
			stats.setDoanhThu(Float.parseFloat(objects[7].toString()));
			stats.setAvgDanhGia(Float.parseFloat(objects[8].toString()));
			stats.setStatus(Boolean.parseBoolean(objects[9].toString()));
			statisticsList.add(stats);
		}
		List<Account> listCheckSeller = accountRepository.findAllCheckSeller();

		// Set the list as a request attribute to pass to JSP
		model.addAttribute("statisticsList", statisticsList);
		model.addAttribute("listCheckSeller", listCheckSeller);

		return "admin/pages/sellermanager";
	}

	@GetMapping("/sellermanager/id/{id}")
	public String getMethodName(@PathVariable("id") Integer id) {
		Optional<Account> entity = accountRepository.findById(id);
		entity.get().setId(id);
		entity.get().setStatus(!entity.get().isStatus());
		accountRepository.saveAndFlush(entity.get());
		return "redirect:/admin/sellermanager";
	}

	@GetMapping("/sellermanager/checkSeller/{id}")
	public String getMethodName(@PathVariable("id") Integer id, @RequestParam("status") boolean status) {
		if (status) {
			Optional<Account> entity = accountRepository.findById(id);
			if (entity.isPresent()) {
				Account account = entity.get();
				Optional<Role> roleOpt = roleRepository.findById(2);
				if (roleOpt.isPresent()) {
					RoleDetail roleDetails = new RoleDetail();
					roleDetails.setRegistrationDate(new Date());
					roleDetails.setRole(roleOpt.get());
					roleDetails.setAccount(account);
					roleDTRepository.saveAndFlush(roleDetails);
				}
			}
		} else {
			Optional<Account> account = accountRepository.findById(id);
			account.get().setId(id);
			account.get().setNumberCitizenIdentification(null);
			accountRepository.saveAndFlush(account.get());
		}
		return "redirect:/admin/sellermanager";
	}

	int idSeller;

	@GetMapping("/sellermanager/bills")
	public String getFillDetails(Model model, @RequestParam("accountId") Integer id) {
		listBill = billRepository.findAllBySeller(id);
		idSeller = id;
		for (Bill bill : listBill) {
			Voucher voucher = voucherRepository.findVoucherInBill(bill.getId());
			if (voucher != null) {
				listVoucher.add(voucher);
			}
		}
		model.addAttribute("listbills", listBill);
		model.addAttribute("listbillDetails", listBillDetails);
		model.addAttribute("vouchers", listVoucher);
		return "admin/pages/sellermanagerDetails";
	}

	@GetMapping("/sellermanager/bills/details/{id}")
	public String fillDetails(Model model, @PathVariable("id") Integer id) {
		listBillDetails = billDetailRepository.findAllByBill(id);
//		model.addAttribute("listbillDetails", listBillDetails);
		model.addAttribute("bill", billRepository.findById(id).get());
		 getFillDetails(model, idSeller);
		return "admin/pages/sellermanagerDetails";
	}
}
