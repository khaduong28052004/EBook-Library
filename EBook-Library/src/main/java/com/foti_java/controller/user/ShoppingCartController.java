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
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.foti_java.model.Account;
import com.foti_java.model.AccountProduct;
import com.foti_java.model.Address;
import com.foti_java.model.Bill;
import com.foti_java.model.CartDetail;
import com.foti_java.model.Product;
import com.foti_java.model.RoleDetail;
import com.foti_java.model.Voucher;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.AddressRepository;
import com.foti_java.repository.BillRepositoty;
import com.foti_java.repository.CartDetailRepository;
import com.foti_java.repository.ProductRepository;
import com.foti_java.repository.VoucherRepository;
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
	@Autowired
	VoucherRepository voucherRepository;
	@Autowired
	AddressRepository addressRepository;

	@RequestMapping("shoppingcart")
	public String get(Model model) {
		Account account = sessionService.getAttribute("account");
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

//	@PostMapping("shoppingcart/getCartPay")
//	public String getCart(@RequestParam("idProduct") Integer[] cartId, Model model)
//			throws ClientProtocolException, IOException {
//		Account account = sessionService.getAttribute("account");
//		List<Account> listAccounts = new ArrayList<>();
//		for (Integer in : cartId) {
//			listAccounts.add(cartDetailRepository.getById(in).getAccount());
//		}
//		for (Account ac : accountRepositoty.findAll()) {
//			boolean check = false;
//			for (RoleDetail roleDetail : ac.getRoledetails()) {
//				if (roleDetail.getRole().getName().equalsIgnoreCase("admin")) {
//					listAccounts.add(account);
//					check = true;
//					break;
//				}
//			}
//			if (check) {
//				break;
//			}
//		}
//		List<Voucher> listVouchers = voucherRepository.findAllByAccountIn(listAccounts);
//		List<Integer> listCartId = new ArrayList<Integer>();
//		for (Integer integer : cartId) {
//			listCartId.add(integer);
//		}
//		double weight = 0;
//		List<CartDetail> listCarts = cartDetailRepository.findAllByIdIn(listCartId);
//		for (CartDetail cartDetail : listCarts) {
//			weight = weight + (cartDetail.getQuantity() * cartDetail.getProduct().getWeight());
//		}
//
//		Address addrTo = new Address();
//		Address addrFrom = new Address();
//		for (Address address : account.getAddresses()) {
//			if (address.isStatus()) {
//				addrTo = address;
//
//				break;
//			}
//		}
//		for (Address address : cartDetailRepository.getById(cartId[0]).getProduct().getAccount().getAddresses()) {
//			if (address.isStatus()) {
//				addrFrom = address;
//				break;
//			}
//		}
//
//		JSONObject jsonOrder = new JSONObject();
//
//		jsonOrder.put("from_district_id", Integer.parseInt(addrFrom.getDistrict().getDistrictId()));
//		jsonOrder.put("from_ward_code", addrFrom.getCommune().getCommuneId().toString());
//		jsonOrder.put("service_id", 53320);
//		jsonOrder.put("to_district_id", Integer.parseInt(addrTo.getDistrict().getDistrictId()));
//		jsonOrder.put("to_ward_code", addrTo.getCommune().getCommuneId().toString());
//		jsonOrder.put("weight", weight);
//
//		try {
//			StringEntity entity = new StringEntity(jsonOrder.toString(), ContentType.APPLICATION_JSON);
//			HttpPost post = new HttpPost("https://dev-online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee");
//			post.setEntity(entity);
//			post.setHeader("Token", "87b48598-2325-11ef-a951-76299e96dead");
//			post.setHeader("Content-type", "application/json");
//			ObjectMapper objectMapper = new ObjectMapper();
//			CloseableHttpClient client = HttpClients.createDefault();
//			CloseableHttpResponse response = client.execute(post);
//			JsonNode jsonNode = objectMapper.readTree(EntityUtils.toString(response.getEntity()));
//			JsonNode data = jsonNode.get("data");
//			model.addAttribute("service_fee", Double.parseDouble(data.get("service_fee").toString()));
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
//
//		model.addAttribute("listVouchers", listVouchers);
//		model.addAttribute("listCarts", listCarts);
//		return "client/pay";
//	}

	// ---------------------------------------------------------------------------------Test-------------------------------------------------------

	@PostMapping("shoppingcart/getCartPay")
	public String getCart(@RequestParam("idProduct") Integer[] cartId, Model model)
			throws ClientProtocolException, IOException {
		Account account = sessionService.getAttribute("account");
		List<Account> listAccounts = new ArrayList<>();
		for (Integer in : cartId) {
			listAccounts.add(cartDetailRepository.findById(in).get().getAccount());
		}
		for (Account ac : accountRepositoty.findAll()) {
			boolean check = false;
			for (RoleDetail roleDetail : ac.getRoledetails()) {
				if (roleDetail.getRole().getName().equalsIgnoreCase("admin")) {
					listAccounts.add(account);
					check = true;
					break;
				}
			}
			if (check) {
				break;
			}
		}

		List<Integer> listCartId = new ArrayList<Integer>();
		for (Integer integer : cartId) {
			listCartId.add(integer);
		}
		double weight = 0;
		List<CartDetail> listCarts = cartDetailRepository.findAllByIdIn(listCartId);
		for (CartDetail cartDetail : listCarts) {
			weight = weight + (cartDetail.getQuantity() * cartDetail.getProduct().getWeight());
		}

		Address addrTo = new Address();
		Address addrFrom = new Address();
		for (Address address : account.getAddresses()) {
			if (address.isStatus()) {
				addrTo = address;

				break;
			}
		}
		for (Address address : cartDetailRepository.getById(cartId[0]).getProduct().getAccount().getAddresses()) {
			if (address.isStatus()) {
				addrFrom = address;
				break;
			}
		}

		JSONObject jsonOrder = new JSONObject();

		jsonOrder.put("from_district_id", Integer.parseInt(addrFrom.getDistrict().getDistrictId()));
		jsonOrder.put("from_ward_code", addrFrom.getCommune().getCommuneId().toString());
		jsonOrder.put("service_id", 53320);
		jsonOrder.put("to_district_id", Integer.parseInt(addrTo.getDistrict().getDistrictId()));
		jsonOrder.put("to_ward_code", addrTo.getCommune().getCommuneId().toString());
		jsonOrder.put("weight", weight);

		try {
			StringEntity entity = new StringEntity(jsonOrder.toString(), ContentType.APPLICATION_JSON);
			HttpPost post = new HttpPost("https://dev-online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee");
			post.setEntity(entity);
			post.setHeader("Token", "87b48598-2325-11ef-a951-76299e96dead");
			post.setHeader("Content-type", "application/json");
			ObjectMapper objectMapper = new ObjectMapper();
			CloseableHttpClient client = HttpClients.createDefault();
			CloseableHttpResponse response = client.execute(post);
			JsonNode jsonNode = objectMapper.readTree(EntityUtils.toString(response.getEntity()));
			JsonNode data = jsonNode.get("data");
			model.addAttribute("service_fee", Double.parseDouble(data.get("service_fee").toString()));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		List<Integer> idProduct = new ArrayList<>();
		for (CartDetail cartDetail : listCarts) {
			idProduct.add(cartDetail.getProduct().getId());
		}
		List<Product> listProduct = productRepository.findAllByIdIn(idProduct);
		List<Integer> idSeller = new ArrayList<Integer>();
		for (Product in : listProduct) {
			idSeller.add(in.getAccount().getId());
		}
		List<Account> listSeller = accountRepositoty.findAllByIdIn(idSeller);
		for (Account ac : listSeller) {
			listAccounts.add(ac);
		}
		List<Voucher> listVouchers = voucherRepository.findAllByAccountIn(listAccounts);
		model.addAttribute("addresses", addressRepository.findAllByAccount(account));
		model.addAttribute("account",account);
		model.addAttribute("listVouchers", listVouchers);
		model.addAttribute("listCarts", listCarts);
		model.addAttribute("listProduct", listProduct);
		model.addAttribute("listSeller", listSeller);
		System.out.println("voucher " + listVouchers.size());
		return "client/pay";
	}
}
