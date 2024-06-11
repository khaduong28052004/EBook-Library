package com.foti_java.controller.seller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.repository.BillRepositoty;

@Controller
@RequestMapping("seller")
public class SellerHomeController {
	@Autowired
	BillRepositoty billRepositoty;
	@GetMapping("home")
	public String home(Model model) {
		int follwer = billRepositoty.getFollwer(1);
		int like = billRepositoty.getLike(1);
		int eValue = billRepositoty.getEvalue(1);
		int billSucces = billRepositoty.getBillSucess(1);
		int billChuaDuyet = billRepositoty.billChuaDuyet(1);
		double avgStar = billRepositoty.getAVGStar(1);
		int tongDoanhThu = billRepositoty.getTongDoanhThu(1);
		int tongLoiNhuan = billRepositoty.getTongLoiNhuan(1);
		List<Object> listTopAccount = billRepositoty.getTopBuyers(1);
		List<Object> listEvalueNew = billRepositoty.getEvalueNew(1);
		List<Object> listTopProduct = billRepositoty.getTopProduct(1);
		List<Object[]> listDoanhThu = billRepositoty.getDoanhThu(1);
		List<Object[]> listLoiNhuan = billRepositoty.getLoiNhuan(1);
		List<String> doanhThu = new ArrayList<>();
		List<String> loiNhuan = new ArrayList<>();
	    for (Object[] objArray : listDoanhThu) {
	        Map<String, Object> jsonMap = new HashMap<>();
	        jsonMap.put("value", objArray[0]);
	        doanhThu.add("'"+jsonMap+"'");
	    }
	    for (Object[] objArray : listLoiNhuan) {
	        Map<String, Object> jsonMap = new HashMap<>();
	        jsonMap.put("value", objArray[0]);
	        loiNhuan.add("'"+jsonMap+"'");
	    }
	    model.addAttribute("tongDoanhThu",tongDoanhThu);
	    model.addAttribute("tongLoiNhuan",tongLoiNhuan);
	    model.addAttribute("avgStar",avgStar);
	    model.addAttribute("billChuaDuyet",billChuaDuyet);
	    model.addAttribute("doanhThu",doanhThu);
	    model.addAttribute("loiNhuan", loiNhuan);
		model.addAttribute("listTopProduct",listTopProduct);
		model.addAttribute("listEvalueNew",listEvalueNew);
		model.addAttribute("listTopAccount",listTopAccount);
		model.addAttribute("billSucces", billSucces);
		model.addAttribute("eValue", eValue);
		model.addAttribute("like", like);
		model.addAttribute("follwer",follwer);
		return "seller/index";
	}
}
