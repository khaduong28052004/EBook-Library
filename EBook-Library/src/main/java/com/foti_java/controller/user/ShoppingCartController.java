package com.foti_java.controller.user;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.http.HttpClient;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.CartDetail;
import com.foti_java.model.Product;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.CartDetailRepository;
import com.foti_java.repository.ProductRepository;
import com.foti_java.service.SessionService;
import com.foti_java.utils.ApiUtil;
import com.foti_java.utils.RanDom;

@Controller
@RequestMapping("user")
public class ShoppingCartController {
	@Autowired
	CartDetailRepository cartDetailRepository;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	BillRepositoty billRepositoty;

	@RequestMapping("shoppingcart")
	public String get(Model model) {
		Account account = accountRepositoty.findById(1).get();
		List<CartDetail> cartDetails = cartDetailRepository.findAllCartDetailsByAccount(account);
		model.addAttribute("listCarts", cartDetails);
		return "client/shoppingCart";
	}

	@GetMapping("shoppingcart/delete/{idCartDetail}")
	public String deleteCart(@PathVariable("idCartDetail") Integer idCartDetail) {
		cartDetailRepository.deleteById(idCartDetail);
		return "redirect:/user/shoppingcart";
	}

	@PostMapping("shoppingcart/deleteall")
	public String deleteAllCart(@RequestParam("idProduct") Integer[] cartId) {
		for (Integer cart : cartId) {
			cartDetailRepository.deleteById(cart);
		}
		return "redirect:/user/shoppingcart";
	}

	@GetMapping("shoppingcart/quantity/{cartId}")
	public String quantityCart(@PathVariable("cartId") Integer cartId, @RequestParam("btnradio") Integer quantity) {
		CartDetail cart = cartDetailRepository.findById(cartId).get();
		cart.setQuantity(quantity);
		cartDetailRepository.save(cart);
		return "redirect:/user/shoppingcart";
	}

	@PostMapping("shoppingcart/getCartPay")
	public String getCart(@RequestParam("idProduct") Integer[] cartId, Model model)
			throws ClientProtocolException, IOException {
		List<Integer> listCartId = new ArrayList<Integer>();
		for (Integer integer : cartId) {
			listCartId.add(integer);
		}
		List<CartDetail> listCarts = cartDetailRepository.findAllByIdIn(listCartId);
		Account account = accountRepositoty.getById(1);
		JSONObject jsonOrder = new JSONObject();
		jsonOrder.put("from_district_id", 1454);
		jsonOrder.put("from_ward_code", "21211");
		jsonOrder.put("service_id", 53320);

		jsonOrder.put("to_district_id", 1452);
		jsonOrder.put("to_ward_code", "21012");

		jsonOrder.put("weight", 500);

		jsonOrder.put("insurance_value", 10000);
		jsonOrder.put("cod_failed_amount", 2000);

		try {
			StringEntity entity = new StringEntity(jsonOrder.toString(), ContentType.APPLICATION_JSON);
			HttpPost post = new HttpPost("https://dev-online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee");
			post.setEntity(entity);
			post.setHeader("Token", "87b48598-2325-11ef-a951-76299e96dead");
			post.setHeader("Content-type", "application/json");
			ObjectMapper objectMapper = new ObjectMapper();
			CloseableHttpClient client = HttpClients.createDefault();
			CloseableHttpResponse response = client.execute(post);
//			List<Object[]> listOrderAPI = new ArrayList<Object[]>();
			JsonNode jsonNode = objectMapper.readTree(EntityUtils.toString(response.getEntity()));
			JsonNode data = jsonNode.get("data");
			model.addAttribute("service_fee", Double.parseDouble(data.get("service_fee").toString()));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		model.addAttribute("listCarts", listCarts);
		return "client/pay";
	}
}
