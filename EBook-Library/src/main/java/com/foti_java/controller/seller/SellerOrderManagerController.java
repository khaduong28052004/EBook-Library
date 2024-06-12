package com.foti_java.controller.seller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.service.SendMailService;
import com.foti_java.service.SessionService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("Ebook/seller")
public class SellerOrderManagerController {
	@Autowired
	SessionService sessionService;
	@Autowired
	SendMailService mailService;
	@Autowired
	HttpServletRequest req;
	@Autowired
	BillRepositoty billRepository;
	@GetMapping("ordermanager")
	public String orderManager(Model model) {
		Account account = sessionService.getAttribute("account");
	    List<Object[]> listBillSucces = billRepository.calculateMonthlyBills(account.getId());
	    List<Object[]> listBillFalse = billRepository.calculateMonthlyBillsFalse(account.getId());
	    List<Bill> listBill = billRepository.findByIdAccount(account.getId());
	    List<String> listSucces = new ArrayList<>();
	    List<String> listFalse = new ArrayList<>();
	    for (Object[] objArray : listBillSucces) {
	        Map<String, Object> jsonMap = new HashMap<>();
	        jsonMap.put("value", objArray[0]);
	        listSucces.add("'"+jsonMap+"'");
	    }
	    for (Object[] objArray : listBillFalse) {
	        Map<String, Object> jsonMap = new HashMap<>();
	        jsonMap.put("value", objArray[0]);
	        listFalse.add("'"+jsonMap+"'");
	    }
	    model.addAttribute("listFalse", listFalse);
	    model.addAttribute("listSucces", listSucces);
	    model.addAttribute("listBill", listBill);
		return "seller/pages/ordermanager";
	}
	@GetMapping("ordermanager/xacNhan")
	public String xacNhan(Model model,@RequestParam("id") Integer id) {
		List<Bill> list = billRepository.findAll();
		for(Bill bill : list) {
			if(bill.getId() == id) {
				bill.setId(id);
				bill.setActive(true);
				billRepository.saveAndFlush(bill);
			}
		}
		return "redirect:/seller/ordermanager";
	}
	@PostMapping("ordermanager/huy")
	public String huy(Model model,@RequestParam("id") Integer id) {
		String email = req.getParameter("email" + id);
		String fullname = req.getParameter("fullname" + id);
		String address = req.getParameter("address" + id);
		String contentCancel = req.getParameter("contentCancel" + id);
		String emailSuprot = req.getParameter("emailSuprot"+id);
		String subject = "Thông báo hủy đơn hàng";
		String content = "<!DOCTYPE html>" +
			    "<html lang='vi'>" +
			    "<head>" +
			    "<meta charset='UTF-8'>" +
			    "<meta name='viewport' content='width=device-width, initial-scale=1.0'>" +
			    "<style>" +
			    "body { font-family: Arial, sans-serif; background-color: #f7f7f7; margin: 0; padding: 0; }" +
			    ".container { max-width: 600px; margin: 40px auto; background-color: #fff; padding: 30px; border-radius: 10px; box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); }" +
			    ".header { border-bottom: 1px solid #e0e0e0; padding-bottom: 20px; margin-bottom: 20px; }" +
			    "h1 { color: #333; font-size: 24px; }" +
			    "p { color: #555; font-size: 16px; line-height: 1.5; }" +
			    ".footer { margin-top: 40px; font-size: 14px; color: #999; text-align: center; }" +
			    ".button { display: inline-block; padding: 10px 20px; margin-top: 20px; font-size: 16px; color: #fff; background-color: #007BFF; border-radius: 5px; text-decoration: none; }" +
			    ".button:hover { background-color: #0056b3; }" +
			    "</style>" +
			    
			    "</head>" +
			    "<body>" +
			    "<div class='container'>" +
			    "<div class='header'>" +
			    "<h1>Xin chào, "+fullname+"</h1>" +
			    "</div>" +
			    "<p>Chúng tôi rất tiếc phải thông báo rằng đơn hàng của bạn đã bị hủy. Chúng tôi hiểu rằng điều này thật đáng thất vọng và xin chân thành xin lỗi vì sự bất tiện này.</p>" +
			    "<p><strong>Lý do hủy đơn hàng:</strong> " + contentCancel + "</p>" +
			    "<p>Nếu bạn có bất kỳ câu hỏi hoặc cần hỗ trợ thêm, vui lòng liên hệ với đội ngũ hỗ trợ của chúng tôi. Chúng tôi luôn sẵn sàng giúp đỡ bạn.</p>" +
			    "<p>Cảm ơn bạn đã thông cảm và kiên nhẫn.</p>" +
			    "<p>Trân trọng,</p>" +
			    "<p>Đội ngũ hỗ trợ khách hàng</p>" +
			    "<a href='mailto:"+emailSuprot+"' class='button'>Liên hệ hỗ trợ</a>" +
			    "<div class='footer'>" +
			    "<p>&copy; 2024 Công ty của bạn. Mọi quyền được bảo lưu.</p>" +
			    "</div>" +
			    "</div>" +
			    "</body>" +
			    "</html>";
	    mailService.push(email,subject,content);
		List<Bill> list = billRepository.findAll();
		for(Bill bill : list) {
			if(bill.getId() == id) {
				bill.setId(id);
				bill.setActive(false);
				bill.setStatus(false);
				bill.setFinishDay(new Date());
				billRepository.saveAndFlush(bill);
			}
		}
		return "redirect:/seller/ordermanager";
	}
}
