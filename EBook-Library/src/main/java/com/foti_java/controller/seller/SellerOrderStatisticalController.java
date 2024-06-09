package com.foti_java.controller.seller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;
import com.foti_java.model.Voucher;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.VoucherRepository;

@Controller
@RequestMapping("seller")
public class SellerOrderStatisticalController {
	@Autowired
	BillRepositoty billRepository;
	@Autowired
	BillDetailRepository billDetailRepository;
	@Autowired
	VoucherRepository voucherRepository;
	List<Voucher> listVoucher = new ArrayList<>();
	List<Bill> listBill = new ArrayList<>();
	List<BillDetail> listBillDetails = new ArrayList<>();

	@RequestMapping("orderstatistical")
	public String orderStatistical(Model model) {
		listBill = billRepository.findAllBySeller(7);
		for (Bill bill : listBill) {
			Voucher voucher = voucherRepository.findVoucherInBill(bill.getId());
			if (voucher != null) {
				listVoucher.add(voucher);
			}
		}
		List<Object[]> listTKSeller = billRepository.PROC_TK_NAM_Seller(7);
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
		model.addAttribute("vouchers", listVoucher);
		return "seller/pages/orderstatistical";
	}

	@GetMapping("/orderstatistical/details/{id}")
	public String fillDetails(Model model, @PathVariable("id") Integer id) {
		listBillDetails = billDetailRepository.findAllByBill(id);
//		model.addAttribute("listbillDetails", listBillDetails);
		model.addAttribute("bill", billRepository.findById(id).get());
		orderStatistical(model);
		return "seller/pages/orderstatistical";
	}
}
