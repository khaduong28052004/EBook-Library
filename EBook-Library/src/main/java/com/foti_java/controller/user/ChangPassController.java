package com.foti_java.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.foti_java.model.Account;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.service.SessionService;
import com.foti_java.utils.MD5Encoder;

@Controller
public class ChangPassController {
	 @Autowired
	 SessionService sessionService;
	 @Autowired
	 AccountRepositoty accountRepository;
	public String error;
	@GetMapping("Ebook/account/changePass")
	public String getMethodName(Model model) {
		Account user = sessionService.getAttribute("account");
		 model.addAttribute("fullname",user.getFullname());
		 return "client/changPass";
		
	}
 @PostMapping("Ebook/account/changePass")
 public String postMethodName(Model model ,@RequestParam(name ="password")String password,@RequestParam(name ="repassword")String repassword,@RequestParam(name ="re1password")String re1password) {

	Account user = sessionService.getAttribute("account");
	 model.addAttribute("fullname",user.getFullname());
	 if(user == null) {
		 return "client/buyBooksHome";
	 }else {
		 System.out.println("chào bạn");
	 }
    if(MD5Encoder.encode(password).equals(user.getPassword())) {
    	if(repassword.equals(re1password)) {
    		user.setPassword(MD5Encoder.encode(re1password));
    		accountRepository.saveAndFlush(user);
    		error ="đổi mật khẩu thành công";
    		model.addAttribute("error",error);
    		return "redirect:/seller/home";
    	} else {
    		error ="mật khẩu mới vời nhập lại không khớp";
    		model.addAttribute("error",error);
    		return "client/changPass";
    	}   	
    } else {
    	error ="mật khẩu không khớp";
		model.addAttribute("error",error);
   	 return "client/changPass";
	}
	 

 }
 
}
