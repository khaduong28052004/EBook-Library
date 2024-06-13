package com.foti_java.controller.account;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.CartDetail;
import com.foti_java.model.OrderStatus;
import com.foti_java.model.Product;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.CartDetailRepository;
import com.foti_java.repository.OrderStatusRepository;
import com.foti_java.repository.ProductRepository;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BillController {
	@Autowired
	BillRepositoty billRepositoty;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	ServletContext session;
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	CartDetailRepository cartDetailRepository;
	@Autowired
	OrderStatusRepository orderStatusRepository;

	Account account = (Account) session.getAttribute("account");
	String username = account.getUsername();

//	String username = "user";

	@GetMapping("/user/bill")
	public String getAllBills(Model model, HttpServletRequest request) {
		// Lấy danh sách các hóa đơn từ repository
		List<Bill> bills = billRepositoty.getAll(username);

		// Thêm danh sách hóa đơn và tổng tiền vào model
		model.addAttribute("bills", bills);

		// Thêm thuộc tính activeMenu (nếu cần)
		model.addAttribute("activeMenu", "tatCa");
		
//		String shopName = billRepositoty.getShopName(idBill);
//		model.addAttribute("shopName", shopName);

		// Trả về tên của view template
		return "client/bill";
	}

//
	@GetMapping("/user/bill/{delivery}")
	public String getBillByDelivery(Model model, HttpServletRequest request,
			@PathVariable("delivery") String delivery) {

		List<Bill> bills = new ArrayList<>();
		if ("CHUANBI".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Đang chờ đơn vị vận chuyển", username);
		} else if ("DAGIAOHANG".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Đã giao cho đơn vị vận chuyển", username);
		} else if ("VANCHUYEN".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Đang vận chuyển", username);
		} else if ("DANHANHANG".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Đã nhận hàng", username);
		} else if ("HOANTHANH".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Hoàn Thành", username);
		} else {
			return "redirect:/user/bill?activeMenu=tatCa";
		}
		model.addAttribute("bills", bills);
		model.addAttribute("activeMenu", delivery);
		return "client/bill";
	}

	@PostMapping("/user/huydon/{idBill}")
	public String huyDon(@PathVariable("idBill") Integer idBill, Model model) {
		Optional<Bill> bill = billRepositoty.findById(idBill);
		billRepositoty.deleteById(idBill);
		return "redirect:/user/bill";
	}

//	mua lại
//	@PostMapping("/user/mualai/{idProduct}")
//	public String muaHang(@PathVariable("idBill") Integer idBill, Model model) {
//		return "forward:/user/buybookdetails/" + idBill;
//	}

//	LỖI
//	@GetMapping("/user/forwardToBuyBookDetails/{idProduct}")
//	public String forwardToBuyBookDetails(@PathVariable("idProduct") Integer idProduct, Model model) {
//		return "redirect:/user/buybookdetails/" + idProduct;
//	}

	@PostMapping("/user/xacnhan/{idBill}")
	public String xacNhan(@PathVariable("idBill") Integer idBill, Model model, HttpServletRequest request) {
		Bill bill = billRepositoty.findById(idBill).orElse(null);
		if (bill != null) {
			OrderStatus orderStatus = orderStatusRepository.findByName("Hoàn Thành");

			if (orderStatus != null) {
				bill.setOrderStatuses(orderStatus);
				billRepositoty.save(bill);

				model.addAttribute("message", "Trạng thái đơn hàng đã được cập nhật thành công!");
			} else {
				model.addAttribute("message", "Trạng thái '" + "Vận chuyển" + "' của đơn hàng không tồn tại!");
			}
		} else {
			model.addAttribute("message", "Đơn hàng không tồn tại!");
		}

		return "redirect:/user/bill";
	}

	@PostMapping("/user/xemsanpham/{idBill}")
	public String xemSanPham(@PathVariable("idBill") Integer idBill, Model model) {
		return "forward:/user/buybookdetails/" + idBill;
	}

	@PostMapping("/user/xemdonhang/{idBill}")
	public String xemDonHang(@PathVariable("idBill") Integer idBill, Model model) {
		return "redirect:/user/billdetails/" + idBill;
	}

	@PostMapping("/user/danhgia/{idBill}")
	public String danhGia(@PathVariable("idBill") Integer idBill, Model model) {
		return "redirect:/user/evaluate/" + idBill;
	}
	
}
