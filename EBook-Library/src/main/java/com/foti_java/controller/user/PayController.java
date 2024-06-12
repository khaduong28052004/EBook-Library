package com.foti_java.controller.user;

import java.math.BigInteger;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;
import com.foti_java.model.PaymentMethod;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.OrderStatusRepository;
import com.foti_java.repository.PaymentMethodRepository;
import com.foti_java.repository.ProductRepository;
import com.foti_java.service.SessionService;
import com.foti_java.service.VNPayService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("user")
public class PayController {
	@Autowired
	VNPayService vnPayService;
	@Autowired
	BillRepositoty billRepositoty;
	String cart[];
	BigInteger total;
	BigInteger service_fee;
	@Autowired
	SessionService sessionService;
	@Autowired
	PaymentMethodRepository paymentMethodRepository;
	@Autowired
	OrderStatusRepository orderStatusRepository;

	@Autowired
	BillDetailRepository billRepository;
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	ProductRepository productRepository;

	@PostMapping("pay")
	@ResponseBody
	public String handleTest(HttpServletRequest req, HttpServletResponse resp, @RequestParam("total") String totalParam,
			@RequestParam("service_fee") String serv_fee, @RequestParam("idCart") String[] idCart,
			@RequestParam("idProduct") Integer[] idProduct, @RequestParam("payRadio") int payRadio,
			@RequestParam("totalPriceProduct") String[] totalPriceProduct, @RequestParam("idSeller") Integer[] idSeller,
			@RequestParam("address") String idAddress, @RequestParam("quantityProduct") Integer[] quantityProduct) {
		String chuoiToTal = totalParam.replace(".", "");
		String chuoiSericeFee = serv_fee.replace(".", "");
		Account account = sessionService.getAttribute("account");
		if (payRadio == 1) {

			total = new BigInteger(chuoiToTal);
			service_fee = new BigInteger(chuoiSericeFee);

			String baseUrl = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort();
			String vnpayUrl = vnPayService.createOrder(total.add(service_fee), "Thanh toan hoa don mua hang", baseUrl);
			cart = idCart;
			return "redirect:" + vnpayUrl;
		} else {
			for (int i = 0; i < idSeller.length; i++) {
				Bill bill = new Bill();
				bill.setAccount((Account) sessionService.getAttribute("account"));
				bill.setActive(false);
				bill.setPriceShipping(Double.parseDouble(chuoiSericeFee) / idSeller.length);
				bill.setDateBuy(new Date());
				bill.setPaymentMethod(paymentMethodRepository.findById(payRadio).get());
				bill.setOrderStatuses(orderStatusRepository.findById(1).get());
				bill.setStatus(true);
				bill.setAddress(idAddress);
				bill.setTotalPrice(Double.parseDouble(totalPriceProduct[i]));
				bill.setQuantity(quantityProduct[i]);

				for (int j = 0; j < idProduct.length; j++) {
					BillDetail billDetail = new BillDetail();
					if(idProduct[j] == accountRepositoty.findById(idSeller[i]).get().getId()){
						billDetail.setBill(bill);
						billDetail.setProduct(productRepository.findById(idProduct[j]).get());
//						billDetail.set
					}
				}
			}
			return "redirect:/user/htome";
		}

	}

	@GetMapping("/vnpay-payment")
	@ResponseBody
	public String GetMapping(HttpServletRequest request, Model model) {
		int paymentStatus = vnPayService.orderReturn(request);
		String orderInfo = request.getParameter("vnp_OrderInfo");
		String paymentTime = request.getParameter("vnp_PayDate");
		String transactionId = request.getParameter("vnp_TransactionNo");
		String totalPrice = request.getParameter("vnp_Amount");
		model.addAttribute("orderId", orderInfo);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("paymentTime", paymentTime);
		model.addAttribute("transactionId", transactionId);
		return totalPrice;
	}
}
