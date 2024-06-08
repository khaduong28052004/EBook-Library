package com.foti_java.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;
import com.foti_java.model.TypeVoucher;
import com.foti_java.model.Voucher;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.TypeVoucherRepository;
import com.foti_java.repository.VoucherRepository;

@Controller
@RequestMapping("admin")
public class AdminOrderStatisticalController {

	@RequestMapping("orderstatistical")
	public String orderstatistical(Model model) {
		return "admin/pages/orderstatistical";
	}
}
