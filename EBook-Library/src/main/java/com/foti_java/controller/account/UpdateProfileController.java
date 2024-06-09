package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UpdateProfileController {
	@GetMapping("/Ebook/account/updateProfile")
	@GetMapping("updateProfile")
	public String getProfile() {
		return "/html/account/updateProfile";
	}
}
