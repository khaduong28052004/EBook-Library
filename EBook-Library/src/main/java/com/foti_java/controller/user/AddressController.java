package com.foti_java.controller.user;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.foti_java.model.Account;
import com.foti_java.model.Address;
import com.foti_java.model.Commune;
import com.foti_java.model.District;
import com.foti_java.model.Province;
import com.foti_java.repository.AccountRepositoty;
import com.foti_java.repository.AddressRepository;
import com.foti_java.repository.CommuneRepository;
import com.foti_java.repository.DistrictRepository;
import com.foti_java.repository.ProvinceRepository;


@Controller
@RequestMapping("Ebook/user")
public class AddressController {
	@Autowired
	AccountRepositoty accountRepository;
	@Autowired
	AddressRepository addressRepository;
	@Autowired
	ProvinceRepository provinceRepository;

	@Autowired
	DistrictRepository districtRepository;

	@Autowired
	CommuneRepository communeRepository;

	@GetMapping("/listAddress/{id}")
	public String listAddress(Model model, @PathVariable("id") Integer id) {
		// Lấy thông tin tài khoản
		Account account = accountRepository.findById(id).orElse(null);
		if (account == null) {
			// Nếu không tìm thấy tài khoản, trả về trang lỗi
			return "error";
		}
		// Lấy danh sách địa chỉ của tài khoản
		List<Address> addresses = addressRepository.getAddressByAccountId(id);
		// Thêm dữ liệu vào Model
		model.addAttribute("account", account);
		model.addAttribute("addresses", addresses);
		// Trả về tên view
		return "html/user/pay";
	}
// THÊM
	
	@GetMapping("/add/{id}")
	public String addProduct(Model model, 
			@RequestParam(name = "province", required = false) Integer province,
			@RequestParam(name = "district", required = false) Integer district,
			@PathVariable("id") Integer id) {
		Account account = accountRepository.findById(id).orElse(null);
		List<Province> provinces = provinceRepository.findAll();
		model.addAttribute("provinces", provinces);
		model.addAttribute("province", province);
		model.addAttribute("account", account);
		List<District> districts = new ArrayList<>();
		List<Commune> communes = new ArrayList<>();
		if (province != null) {
			districts = districtRepository.getDistrictsByProvinceId(province);
			model.addAttribute("district", district);
		}
		if (district != null) {
			communes = communeRepository.getCommunesByDistrictId(district);
		}
		model.addAttribute("districts", districts);
		model.addAttribute("communes", communes);
		return "html/user/AddAddress";
	}
	
	@PostMapping("/create")
	public String createAddress(Model model, 
	        @RequestParam("nameaddress") String nameAddress,
	        @RequestParam("phone") String phone,
	        @RequestParam("fullnameaddress") String fullNameAddress,
//	        @RequestParam("province") Province provinceId,
//	        @RequestParam("district") District districtId,
//	        @RequestParam("commune") Commune communeId,
	        @RequestParam("id") Integer id
	        //@Principal User user
	        ) {
	    
	    // Lấy thông tin tài khoản
	    Account account = accountRepository.findById(id).orElse(null);
	    if (account == null) {
	        // Nếu không tìm thấy tài khoản, trả về trang lỗi
	        return "error";
	    }
	    
	    // Tạo địa chỉ mới
	    Address address = new Address();
	    address.setNameAddress(nameAddress);
	    address.setPhone(phone);
	    address.setFullNameAddress(fullNameAddress);
//	    address.setProvince(provinceId);
//	    address.setDistrict(districtId);
//	    address.setCommune(communeId);
	    address.setAccount(account);
	    
	    // Lưu địa chỉ vào cơ sở dữ liệu
	    addressRepository.save(address);
	    
	    // Chuyển hướng về trang danh sách địa chỉ
	    return "redirect:/Ebook/user/listAddress/" + account.getId();
	}
	
	
	// CẬP NHẬT
	
	@GetMapping("/edit/{id}")
	public String getProfile(Model model,
			@PathVariable("id") Integer id) {
		Address address = addressRepository.findById(id).orElse(null);
		model.addAttribute("address", address);
		return "/html/user/UpdateAddress";
	}
	
@PostMapping("/update")
	public String updateProduct(
	        @RequestParam("nameaddress") String nameaddress,
	        @RequestParam("id") Integer id,
	        @RequestParam("phone") String phone,
	        @RequestParam("fullnameaddress") String fullnameaddress,
	        Model model) {
		Address address = addressRepository.findById(id).get();
		// TODO: process POST request
		address.setNameAddress(fullnameaddress);
		address.setPhone(phone);
		address.setFullNameAddress(fullnameaddress);

		addressRepository.saveAndFlush(address);
		return "redirect:/Ebook/user/listAddress/" + address.getAccount().getId();
	}
}
