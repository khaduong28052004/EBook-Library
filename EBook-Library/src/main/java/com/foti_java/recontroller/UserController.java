package com.foti_java.recontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.BillDetailRepository;
import com.foti_java.repository.BillRepositoty;

import jakarta.websocket.server.PathParam;

@CrossOrigin("*")
@RestController
public class UserController {
	@Autowired
	AccountRepositoty accountRepositoty;
    @GetMapping("/rest/accountss")
    public List<Account> getall(){
    	return accountRepositoty.findAll();
    }
    
	@GetMapping("/rest/accounts")
	public Map<String, Object> getAll(Model model) {
//    	return accountRepositoty.findAll();
		Map<String, Object> response = new HashMap<>();
		response.put("status", "success");
		response.put("data", accountRepositoty.findAll());
		response.put("message", "Retrieve account data successfully");
		return response;
	}

	@GetMapping("/rest/accounts1/{id}")
	public Map<String, Object> getAccount1(@PathVariable("id") Integer id) {
		Map<String, Object> response = new HashMap<>();
		Optional<Account> accounts = accountRepositoty.findById(id);
		if (accounts.isEmpty()) {
			response.put("status", "error");
			response.put("data", Map.of("taikhoans", accountRepositoty.findById(id)));
			response.put("message", "đéo có thằng id này");
		} else {
			response.put("status", "success");
			response.put("data", accountRepositoty.findById(id));
			response.put("message", "Retrieve account data successfully");
		}
		return response;
	}

	@GetMapping("/rest/accounts/{id}")
	public Optional<Account> getAccount(@PathVariable("id") Integer id) {
		

		return accountRepositoty.findById(id);
	}
	//react
	
	// fill hóa đơn theo account 
	// fill  chi tiết theo hóa đơn
	@Autowired
	BillDetailRepository  billDetailRepository;
	@Autowired
	BillRepositoty  billRepositoty;
	
	@GetMapping("/api/getbill/byaccount/{id}")
	public  Map<String, Object> getallbill (@PathVariable Integer id){
		Map<String, Object> response = new HashMap<>();
		List<Bill> billaccount = billRepositoty.findByIdAccount(id);
		response.put("status", "success");
		response.put("data", billaccount);
		response.put("message", "Retrieve account data successfully");
	    return response;
	}
	
	@GetMapping("/api/getbilldetail/bybill/{id}")
	public  Map<String, Object> getallbilldetail (@PathVariable Integer id){
		Map<String, Object> response = new HashMap<>();
		List<BillDetail> billdetail = billDetailRepository.findAllByBill(id);
		response.put("status", "success");
		response.put("data", billdetail);
		response.put("message", "Retrieve account data successfully");
	    return response;
	}
	
	
	@PostMapping("/rest/accounts/test")
	public Account  gett(@RequestBody Account account) {	
		List<Account> list = accountRepositoty.findAll();
		if(account.getNumberCitizenIdentification().isEmpty()) {
			return account;
		}
		return   accountRepositoty.save(account);
    }
	
	
	
		// TODO Auto-generated constructor stub
	
	// Đánh dấu phương thức này xử lý các yêu cầu HTTP POST đến URL "/rest/accounts"
	@PostMapping("/rest/accounts")
	public Map<String, Object> post(@RequestBody Account account) {
	    // Tạo một Map để chứa phản hồi trả về cho client
	    Map<String, Object> response = new HashMap<>();
	    
	    // Lấy tất cả các tài khoản hiện có từ repository
	    List<Account> list = accountRepositoty.findAll();
	    
	    // Sử dụng Stream API để lọc các tài khoản có tên người dùng trùng với tên người dùng của account được gửi đến
	    List<Account> usernameStream = list.stream()
	        .filter(sv -> sv.getUsername().equals(account.getUsername()))
	        .collect(Collectors.toList());    
	    // Sử dụng Stream API để lọc các tài khoản có email trùng với email của account được gửi đến
	    List<Account> emailStream = list.stream()
	        .filter(sv -> sv.getEmail().equals(account.getEmail()))
	        .collect(Collectors.toList());    
	    // Kiểm tra xem có tài khoản nào trùng cả tên người dùng và email không
	    if (!usernameStream.isEmpty() && !emailStream.isEmpty()) {
	        // Nếu có, trả về phản hồi lỗi với thông báo cụ thể
	        response.put("status", "error");
	        response.put("message", "Username and email already exist");
	    } 
	    // Kiểm tra xem có tài khoản nào chỉ trùng tên người dùng không
	    else if (!usernameStream.isEmpty()) {
	        // Nếu có, trả về phản hồi lỗi với thông báo cụ thể
	        response.put("status", "error");
	        response.put("message", "Username already exists");
	    } 
	    // Kiểm tra xem có tài khoản nào chỉ trùng email không
	    else if (!emailStream.isEmpty()) {
	        // Nếu có, trả về phản hồi lỗi với thông báo cụ thể
	        response.put("status", "error");
	        response.put("message", "Email already exists");
	    } 
	    // Nếu không có tài khoản nào trùng tên người dùng hoặc email
	    else {
	        // Trả về phản hồi thành công và lưu tài khoản mới vào repository
	        response.put("status", "success");
	        response.put("message", "Retrieve account data successfully");
	        
	        accountRepositoty.save(account);
	    }

	    // Trả về Map chứa phản hồi cho client
	    return response;
	}


	@DeleteMapping("/rest/accounts/{id}")
	public void delete(@PathVariable("id") Integer id) {
		accountRepositoty.deleteById(id);
//       return "oke";
	}

}
