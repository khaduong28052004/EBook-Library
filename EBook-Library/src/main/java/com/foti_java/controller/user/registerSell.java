package com.foti_java.controller.user;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;

import org.aspectj.apache.bcel.classfile.Module.Provide;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.foti_java.model.Account;
import com.foti_java.model.Address;
import com.foti_java.model.Commune;
import com.foti_java.model.District;
import com.foti_java.model.Province;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.CommuneRepository;
import com.foti_java.repository.DistrictRepository;
import com.foti_java.repository.ProvinceRepository;
import com.foti_java.service.SessionService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("Ebook/user/registerSell")
public class registerSell {
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	AccountRepositoty accountRepositoty;
	
	@Autowired
	ProvinceRepository provinceRepository;

	@Autowired
	DistrictRepository districtRepository;

	@Autowired
	CommuneRepository communeRepository;
	
	@GetMapping("edit/{id}")
	public String editProduct(Model model, @PathVariable("id") Integer id) {
		Account product = accountRepositoty.findById(id).get();
		model.addAttribute("product", product);
		return "html/user/registerSell/registerSell01";
	}
	
	@RequestMapping(value = "registerSell01/{id}", method = RequestMethod.GET)
	public String getRegisterSell01(Model model,
			@PathVariable("id") Integer id,
			@RequestParam(name = "selectedProvinceId", required = false) Integer selectedProvinceId,
			@RequestParam(name = "selectedDistrictsId", required = false) Integer selectedDistrictsId) {
		Account product = accountRepositoty.findById(id).get();
		model.addAttribute("product", product);
//		List<Province> provinces = provinceRepository.findAll();
//		model.addAttribute("provinces", provinces);
//		model.addAttribute("selectedProvinceId", selectedProvinceId);
//		List<District> districts = new ArrayList<>();
//		List<Commune> communes = new ArrayList<>();
//		if (selectedProvinceId != null) {
//			districts = districtRepository.getDistrictsByProvinceId(selectedProvinceId);
//			model.addAttribute("selectedDistrictsId", selectedDistrictsId);
//		}
//		if (selectedDistrictsId != null) {
//			communes = communeRepository.getCommunesByDistrictId(selectedDistrictsId);
//		}
//		model.addAttribute("districts", districts);
//		model.addAttribute("communes", communes);
		return "html/user/registerSell/registerSell01";
	}
//
//	@RequestMapping(value = "registerSell01", method = RequestMethod.POST)
//	public String postRegisterSell01(@RequestParam("shopName") String shopName,
//			@ModelAttribute("addresses") List<Address> addresses, @RequestParam("email") String email,
//			@RequestParam("phone") String phone, HttpSession session) {
//		Account account = new Account();
//		account.setShopName(shopName);
//		account.setAddresses(addresses);
//		account.setEmail(email);
//		account.setPhone(phone);
//		session.setAttribute("account", account);
//		return "redirect:/Ebook/user/registerSell/registerSell02";
//	}
//
//	@RequestMapping(value = "registerSell02", method = RequestMethod.GET)
//	public String getRegisterSell02() {
//		return "html/user/registerSell/registerSell02";
//	}
//
//	@RequestMapping(value = "registerSell02", method = RequestMethod.POST)
//	public String postRegisterSell02(
//			HttpSession session) {
//		return "redirect:/Ebook/user/registerSell/registerSell03";
//	}
//
//	@RequestMapping(value = "registerSell03", method = RequestMethod.GET)
//	public String getRegisterSell03() {
//		return "html/user/registerSell/registerSell03";
//	}
//
//	@RequestMapping(value = "registerSell03", method = RequestMethod.POST)
//	public String postRegisterSell03(@RequestParam("numberCitizenIdentification") String numberCitizenIdentification,
//			@RequestParam("fullName") String fullName,
//			@RequestParam("afterCitizenIdentification") MultipartFile afterCitizenIdentification,
//			@RequestParam("beforeCitizenIdentification") MultipartFile beforeCitizenIdentification,
//			HttpSession session) {
//		Account account = (Account) session.getAttribute("account");
//		account.setNumberCitizenIdentification(numberCitizenIdentification);
//		account.setFullname(fullName);
//		// Handle file uploads
//		String frontImagePath = saveFile(afterCitizenIdentification);
//		String selfieImagePath = saveFile(beforeCitizenIdentification);
//		account.setBeforeCitizenIdentification(frontImagePath);
//		account.setAfterCitizenIdentification(selfieImagePath);
//		accountRepositoty.save(account);
//		session.removeAttribute("account"); // Clear the session
//		return "redirect:/Ebook/user/registerSell/success";
//	}
//
//	private String saveFile(MultipartFile file) {
//		String uploadDir = "/views/img/account/";
//		String fileName = file.getOriginalFilename();
//		Path filePath = Paths.get(uploadDir, fileName);
//		try {
//			Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return filePath.toString();
//	}
//
//	@RequestMapping("registerSell04")
//	public String getSuccess() {
//		return "html/user/registerSell/registerSell04";
//	}
}