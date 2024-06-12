package com.foti_java.controller.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foti_java.model.Account;
import com.foti_java.model.RoleDetail;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.RoleDetailRepository;
import com.foti_java.service.SessionService;

@Controller
public class LoginController {
	@Autowired
	AccountRepositoty accountRepositoty;
	@Autowired
	SessionService sessionService;

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("page", "");
		return "client/login";
	}

//	@PostMapping("/login")
//	public String postLogin(@RequestParam("userName") String userName, @RequestParam("passWord") String passWord,
//			Model model) {
//		Account account = accountRepositoty.findByUsernameAndPassword(userName, passWord);
//		if (account == null) {
//			model.addAttribute("error", "Sai username hoặc password");
//			return "client/login";
//		} else {
//			if (account.isStatus() == false) {
//				model.addAttribute("error", "Tài khoản của bạn đã bị khóa");
//				return "client/login";
//			}
//			System.out.println("address "+account.getAddresses().size());
//			sessionService.setAttribute("account", account);
//			return "redirect:/user/home";
//		}
//	}
	@Autowired
	RoleDetailRepository roleDetailRepository;

	@PostMapping("login")
	public String login(Model model, @RequestParam("userName") String user, @RequestParam("passWord") String password) {

		Account account = accountRepositoty.findByUsernameAndPassword(user, password);

		if (account != null) {
			if (account.isStatus()) {

				if (!account.getPassword().equals(password)) {
					System.out.println("Sai mật khẩu!!");
					model.addAttribute("error", "Sai mật khẩu!");
					return "client/login";
				} else {
					sessionService.setAttribute("account", account);
					System.out.println("Đăng nhập thành công!");
					List<RoleDetail> role1 = roleDetailRepository.findByAccount(account);
					System.out.println(role1.get(0).getId());
					for (RoleDetail roleDetail : role1) {
						System.out.println(roleDetail.getRole().getName());
						if (roleDetail.getRole().getName().equals("admin")) {
							return "redirect:/admin/accountmanager";
						} else if (roleDetail.getRole().getName().equals("seller")) {
							return "redirect:/seller/home";
						}
					}
					return "redirect:/user/home";
				}
			} else {
				model.addAttribute("error", "Tài khoản đã ngường hoặc động ! <br> vui lòng liên hệ hotline <br>"
						+ "để biết thêm chi tiết" + "<a> 1900323</a>");
				System.out.println("lỏ");
				return "client/login";

			}
		} else {
			model.addAttribute("error", "Tài khoản không tồn tại!");
			return "client/login";
		}
	}
	
//	@Autowired
//	RoleDetailRepository roleDetailRepository;
//	@PostMapping("login")
//	public String login(Model model, @RequestParam("userName") String user, @RequestParam("passWord") String password) {
//
//		Account account = accountRepositoty.findByUsernameAndPassword(user,password);
//
//		if (account != null) {
//			if (account.isStatus()) {
//
//				if (!account.getPassword().equals(password)) {
//					System.out.println("Sai mật khẩu!!");
//					model.addAttribute("error", "Sai mật khẩu!");
//					return "client/login";
//				} else {
//					sessionService.setAttribute("account", account);
//					System.out.println("Đăng nhập thành công!");
//					List<RoleDetail> role1 = roleDetailRepository.findByAccount(account);
//					System.out.println(role1.get(0).getId());
//					for (RoleDetail roleDetail : role1) {
//						System.out.println(roleDetail.getRole().getName());
//						if (roleDetail.getRole().getName().equals("admin")) {
//							return "redirect:/admin/accountmanager";
//						} else if (roleDetail.getRole().getName().equals("seller")) {
//							return "redirect:/seller/home";
//						}
//					}
//					return "redirect:/user/home";
//				}
//			} else {
//				model.addAttribute("error", "Tài khoản đã ngường hoặc động ! <br> vui lòng liên hệ hotline <br>"
//						+ "để biết thêm chi tiết" + "<a> 1900323</a>");
//				System.out.println("lỏ");
//				return "client/login";
//
//			}
//		} else {
//			model.addAttribute("error", "Tài khoản không tồn tại!");
//			return "client/login";
//		}
//	}
}
