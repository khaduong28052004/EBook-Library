package com.foti_java.controller.seller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;
import com.foti_java.model.Voucher;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.VoucherRepository;
import com.foti_java.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("Ebook/seller")
public class SellerOrderStatisticalController {
	@Autowired
	BillRepositoty billRepository;
	@Autowired
	BillDetailRepository billDetailRepository;
	@Autowired
	VoucherRepository voucherRepository;
	@Autowired
	HttpServletRequest req;
	@Autowired
	SessionService session;
	List<Voucher> listVoucher = new ArrayList<>();
	List<Bill> listBill = new ArrayList<>();
	List<BillDetail> listBillDetails = new ArrayList<>();
	String startDate;
	String endDate;

	@RequestMapping("orderstatistical")
	public String orderStatistical(Model model, @RequestParam(value = "dateStart", defaultValue = "") String dateStart,
			@RequestParam(value = "dateEnd", defaultValue = "") String dateEnd) {
		Account account =session.getAttribute("account");
		if (dateStart == null && dateEnd == null) {
			listBill = billRepository.findAllBySeller(account.getId());
		} else {
			startDate = dateStart;
			endDate = dateEnd;
			listBill = billRepository.findAllBySellerBeweenAnd(account.getId(), dateStart, dateEnd);
			model.addAttribute("dateStart", dateStart);
			model.addAttribute("dateEnd", dateEnd);

		}
		for (Bill bill : listBill) {
			Voucher voucher = voucherRepository.findVoucherInBill(bill.getId());
			if (voucher != null) {
				listVoucher.add(voucher);
			}
		}
		List<Object[]> listTKSeller = billRepository.PROC_TK_NAM_Seller(account.getId());
		List<String> jsonListDT = new ArrayList<String>();
		List<String> jsonListLN = new ArrayList<String>();
		for (Object[] objArray : listTKSeller) {
			Map<String, Object> jsonMap = new HashMap<String, Object>();
			jsonMap.put("value", objArray[1]);
			jsonListDT.add("'" + jsonMap + "'");

			Map<String, Object> jsonMapLN = new HashMap<String, Object>();
			jsonMapLN.put("value", objArray[2]);
			jsonListLN.add("'" + jsonMapLN + "'");

		}

		model.addAttribute("SellerSuccessJsonDT", jsonListDT);
		model.addAttribute("SellerSuccessJsonLN", jsonListLN);

		model.addAttribute("listbills", listBill);
		model.addAttribute("listbillDetails", listBillDetails);
		model.addAttribute("dateStart", dateStart);
		model.addAttribute("dateEnd", dateEnd);
		model.addAttribute("vouchers", listVoucher);
		return "seller/pages/orderstatistical";
	}

	@GetMapping("/orderstatistical/details/{id}")
	public String fillDetails(Model model, @PathVariable("id") Integer id) {
		listBillDetails = billDetailRepository.findAllByBill(id);
//		model.addAttribute("listbillDetails", listBillDetails);
		model.addAttribute("bill", billRepository.findById(id).get());
		orderStatistical(model, startDate, endDate);
		return "seller/pages/orderstatistical";
	}
}
