package com.foti_java.controller;

import com.foti_java.service.VNPayService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.jstl.core.Config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class InsertAddress {
	@Autowired
	VNPayService vnPayService;

	@GetMapping("/test")
	public String handleTest(HttpServletRequest req, HttpServletResponse resp) {
		String baseUrl = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort();
		String vnpayUrl = vnPayService.createOrder(500000, "Test", baseUrl);
		return "redirect:" + vnpayUrl;
	}
	
    @GetMapping("/vnpay-payment")
    @ResponseBody
    public String GetMapping(HttpServletRequest request, Model model){
        int paymentStatus =vnPayService.orderReturn(request);

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
	// vui lòng tham khảo thêm tại code demo

}
