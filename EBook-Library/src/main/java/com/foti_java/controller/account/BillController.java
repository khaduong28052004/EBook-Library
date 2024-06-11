package com.foti_java.controller.account;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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

	String user = (String) session.getAttribute("username");
//	String user = "user";

	@GetMapping("/user/bill")
	public String getAllBills(Model model, HttpServletRequest request) {
		// Lấy thông tin người dùng hiện tại từ request (nếu cần)
		// Principal principal = request.getUserPrincipal();
//		Principal principal = request.getUserPrincipal();
//
//	    if (principal != null) {
//		List<Bill> bills = billRepositoty.getAll("user");
//
//		List<Double> totals = new ArrayList<>();
//		for (Bill bill : bills) {
//			Double total = billRepositoty.getTotal("user", bill.getId());
//			totals.add(total);
//		}
//		model.addAttribute("bills", bills);
//		model.addAttribute("total", totals);
//		model.addAttribute("activeMenu", "tatCa");
//	    }
		
		// Lấy danh sách các hóa đơn từ repository
		List<Bill> bills = billRepositoty.getAll(user);

		// Thêm danh sách hóa đơn và tổng tiền vào model
		model.addAttribute("bills", bills);

		// Thêm thuộc tính activeMenu (nếu cần)
		model.addAttribute("activeMenu", "tatCa");

		// Trả về tên của view template
		return "client/bill";
	}

//
	@GetMapping("/user/bill/{delivery}")
	public String getBillByDelivery(Model model, HttpServletRequest request,
			@PathVariable("delivery") String delivery) {
		List<Bill> bills = new ArrayList<>();
		if ("VANCHUYEN".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Đang chờ đơn vị vận chuyển", "user");
		} else if ("DANGGIAOHANG".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Đã giao cho đơn vị vận chuyển", user);
		} else if ("HOANTHANH".equalsIgnoreCase(delivery)) {
			bills = billRepositoty.getBillsByDelivery("Hoàn Thành", user);
		}
//		else if ("DAHUY".equalsIgnoreCase(delivery)) {
//			bills = billRepositoty.getBillsByDelivery("Đã hủy");
//		} else if ("TRAHANG".equalsIgnoreCase(delivery)) {
//			bills = billRepositoty.getBillsByDelivery("Trả hàng/Hoàn tiền");
//		}
		else {
			return "redirect:/user/bill?activeMenu=tatCa";
		}
		model.addAttribute("bills", bills);
		model.addAttribute("activeMenu", delivery);
		return "client/bill";
	}

	@GetMapping("/user/forwardToBuyBookDetails/{idProduct}")
	public String forwardToBuyBookDetails(@PathVariable("idProduct") Integer idProduct, Model model) {
		return "redirect:/user/buybookdetails/" + idProduct;
	}

	@PostMapping("/user/huydon/{idProduct}")
	public String huyDon(@PathVariable("idProduct") Integer idProduct, Model model) {
		Optional<Bill> bill = billRepositoty.findById(idProduct);
		billRepositoty.deleteById(idProduct);
		return "redirect:/user/bill";
	}

	@PostMapping("/user/xemdonhang/{idProduct}")
	public String xemDonHang(@PathVariable("idProduct") Integer idProduct, Model model) {
		Optional<Bill> bill = billRepositoty.findById(idProduct);
		billRepositoty.deleteById(idProduct);
		return "redirect:/user/billdetails/" + idProduct;
	}

	@PostMapping("/user/mualai/{idProduct}")
	public String muaHang(@PathVariable("idProduct") Integer idProduct, Model model) {
		return "forward:/user/buybookdetails/" + idProduct;
	}

	@PostMapping("/user/xemsanpham/{idProduct}")
	public String xemSanPham(@PathVariable("idProduct") Integer idProduct, Model model) {
		return "forward:/user/buybookdetails/" + idProduct;
	}

//	CHƯA HOÀN THÀNH
	@PostMapping("/user/xacnhan/{idProduct}")
	public String xacNhan(@PathVariable("idProduct") Integer idProduct, Model model) {
		Bill bill = billRepositoty.findById(idProduct).orElse(null);
		if (bill != null) {
			// Tìm trạng thái đơn hàng "Confirmed"
			OrderStatus orderStatus = orderStatusRepository.findByName("Hoàn Thành");
			System.out.println(orderStatus.getName());
			System.out.println(orderStatus.getClass());
			// Cập nhật trạng thái đơn hàng
			bill.setOrderStatuses(orderStatus);
			System.out.println("Đơn hàng đã được xác nhận thành công");
			// Thêm thông tin vào model nếu cần hiển thị thông báo
			model.addAttribute("message", "Đơn hàng đã được xác nhận thành công!");
		} else {
			System.out.println("Đơn hàng không tồn tại!");
			model.addAttribute("message", "Đơn hàng không tồn tại!");
		}
		return "forward:/user/bill";
	}

	@PostMapping("/user/danhgia/{idProduct}")
	public String danhGia(@PathVariable("idProduct") Integer idProduct, Model model) {
		return "forward:/user/evaluate/" + idProduct;
	}
}
