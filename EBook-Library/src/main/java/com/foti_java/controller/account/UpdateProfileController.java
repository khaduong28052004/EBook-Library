package com.foti_java.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UpdateProfileController {
	@GetMapping("/Ebook/account/updateProfile")
	public String getProfile() {
		return "/html/account/updateProfile";
	}
}
