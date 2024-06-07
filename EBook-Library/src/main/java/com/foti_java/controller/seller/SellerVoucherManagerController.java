package com.foti_java.controller.seller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foti_java.model.TypeVoucher;
import com.foti_java.model.Voucher;
import com.foti_java.model.VoucherDetail;
import com.foti_java.repository.TypeVoucherRepository;
import com.foti_java.repository.VoucherDetailRepository;
import com.foti_java.repository.VoucherRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.server.PathParam;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("seller")
public class SellerVoucherManagerController {
	@Autowired
	HttpServletRequest req;
	@Autowired
	VoucherRepository voucherRepository;
	@Autowired
	TypeVoucherRepository typeVoucherRepository;
	@Autowired
	VoucherDetailRepository voucherDetailsRepository;
	Page<Voucher> page;
	Pageable pageable;
	Sort sort = Sort.by(org.springframework.data.domain.Sort.Direction.DESC, "id");

	String errorName = "";
	String errorDKPrice = "";
	String errorDateStart = "";
	String errorDateEnd = "";
	String errorSL = "";
	String errorPriceSale = "";
	List<Voucher> listVoucher;
	List<TypeVoucher> listTypeVoucher;
	String statusonl = "";
	Integer idTypeonl;

	@RequestMapping({ "vouchermanager", "vouchermanager/clear" })
	public String voucherManager(Model model, @RequestParam(name = "status", defaultValue = "") String status,
			@RequestParam(name = "typeVoucher", defaultValue = "") Integer idType,
			@RequestParam("page") Optional<Integer> pageNumber) {
		System.out.println("status: " + status);
		pageable = PageRequest.of(pageNumber.orElse(0), 5, sort);
		if (!status.isEmpty() && idType != null) {
			statusonl = status;
			idTypeonl = idType;
			Optional<TypeVoucher> typeVoucher = typeVoucherRepository.findById(idType);
			if (typeVoucher.isPresent()) {
				if (status.equals("ON")) {
					page = voucherRepository.findAllByStatusAndTypeVoucher(true, typeVoucher.get(), pageable);
				} else if (status.equals("OFF")) {
					page = voucherRepository.findAllByStatusAndTypeVoucher(false, typeVoucher.get(), pageable);
				} else {
					page = voucherRepository.findAllByTypeVoucher(typeVoucher.get(), pageable);
				}
			} else {
				page = voucherRepository.findAll(pageable);
			}
		} else if (!status.isEmpty()) {
			if (status.equals("ON")) {
				page = voucherRepository.findAllByStatus(true, pageable);
			} else if (status.equals("OFF")) {
				page = voucherRepository.findAllByStatus(false, pageable);
			} else {
				page = voucherRepository.findAll(pageable);
			}
		} else if (idType != null) {
			Optional<TypeVoucher> typeVoucher = typeVoucherRepository.findById(idType);
			if (typeVoucher.isPresent()) {
				page = voucherRepository.findAllByTypeVoucher(typeVoucher.get(), pageable);
			} else {
				page = voucherRepository.findAll(pageable);
			}
		} else {
			page = voucherRepository.findAll(pageable);
		}
		listVoucher = page.getContent();
		listTypeVoucher = typeVoucherRepository.findAll();
		model.addAttribute("typeVouchers", listTypeVoucher);
		model.addAttribute("vouchers", listVoucher);
		model.addAttribute("currentPage", page.getNumber());
		model.addAttribute("totalPages", page.getTotalPages());
		return "seller/pages/vouchermanager";
	}

	@GetMapping("vouchermanager/details")
	public String voucherDetailsManager(Model model, @RequestParam("voucherId") Integer voucherId) {
		Optional<Voucher> voucher = voucherRepository.findById(voucherId);
		List<VoucherDetail> list = voucherDetailsRepository.findAllByVoucher(voucher.get());
		model.addAttribute("voucherDetails", list);
		return "seller/pages/voucherDetailsManager";
	}

	public boolean check(Model model, String name, Integer voucher, double DKPrice, LocalDate dateStart,
			LocalDate dateEnd, int OriginalNumber, int priceSale, int quantity, boolean loaiSale) {
		if (DKPrice < 0) {
			errorPriceSale = "Vui lòng nhập giá sale";
			model.addAttribute("errorPriceSale", errorPriceSale);
			return false;
		}
		if (dateEnd.isBefore(LocalDate.now())) {
			errorDateEnd = "Ngày kết thúc phải > ngày hiện tại";
			model.addAttribute("errorDateEnd", errorDateEnd);
			return false;
		}
		if (dateEnd.isBefore(dateStart)) {
			errorDateEnd = "Ngày kết thúc phải > ngày bắt đầu";
			model.addAttribute("errorDateEnd", errorDateEnd);
			return false;
		}
		if (OriginalNumber < 0) {
			errorSL = "Số lượng phải lớn hơn 0";
			model.addAttribute("errorSL", errorSL);
			return false;
		}
		if (OriginalNumber < quantity) {
			errorSL = "Số lượng voucher phải lớn hơn số lượng đã dùng";
			model.addAttribute("errorSL", errorSL);
			return false;
		}
		if (loaiSale) {
			if (priceSale < 1 || priceSale > 100) {
				errorPriceSale = "sale từ 1 - 100%";
				model.addAttribute("errorPriceSale", errorPriceSale);
				return false;
			}
		} else {
			if (priceSale < 1000) {
				errorPriceSale = "sale phải lớn hơn 1000";
				model.addAttribute("errorPriceSale", errorPriceSale);
				return false;
			}
		}

		return true;
	}

	@GetMapping("vouchermanager/insert")
	public String getInsert(Model model) {
		listTypeVoucher = typeVoucherRepository.findAll();
		model.addAttribute("typeVouchers", listTypeVoucher);
		if (req.getRequestURI().contains("insert")) {
			model.addAttribute("voucher", new Voucher());
		}

		return "seller/pages/vouchermanager";
	}

	@GetMapping("vouchermanager/update/{id}")
	public String getUpdate(Model model, @PathVariable(name = "id") Integer id,
			@RequestParam(name = "status", defaultValue = "") String status,
			@RequestParam(name = "typeVoucher", defaultValue = "") Integer idType,
			@RequestParam("page") Optional<Integer> pageNumber) {
		Optional<Voucher> entity = null;
		listTypeVoucher = typeVoucherRepository.findAll();
		model.addAttribute("typeVouchers", listTypeVoucher);
		if (req.getRequestURI().contains("update") && id != null) {
			entity = voucherRepository.findById(id);
			model.addAttribute("voucher", entity.get());
			model.addAttribute("currentPath", "update");
		}
		return voucherManager(model, status, idType, pageNumber);
	}

	@GetMapping("vouchermanager/delete/{id}")
	public String getDelete(Model model, @PathVariable(name = "id") Integer id) {
		listTypeVoucher = typeVoucherRepository.findAll();
		model.addAttribute("typeVouchers", listTypeVoucher);
		if (req.getRequestURI().contains("delete")) {
			Optional<Voucher> entity = voucherRepository.findById(id);
			if (entity.get().isStatus()) {
				entity.get().setId(id);
				entity.get().setStatus(false);
			} else {
				entity.get().setId(id);
				entity.get().setStatus(true);
			}
			voucherRepository.saveAndFlush(entity.get());
			return "redirect:/seller/vouchermanager";
		}
		return "seller/pages/vouchermanager";
	}

	@PostMapping("vouchermanager")
	public String postInsert(Model model, @RequestParam("name") String name,
			@RequestParam("voucher") Integer typeVoucher, @RequestParam("loaiGG") boolean loaiGG,
			@RequestParam("PriceDK") double DKPrice,
			@RequestParam("dateStart") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateStart,
			@RequestParam("dateEnd") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateEnd,
			@RequestParam("quantity") int quantity, @RequestParam("priceSale") int priceSale,
			@RequestParam("note") String note) {

		Voucher entity = new Voucher();
		Optional<TypeVoucher> type = typeVoucherRepository.findById(typeVoucher);
		entity.setName(name);
		entity.setTypeVoucher(type.get());
		if (typeVoucher == 1) {
			entity.setPriceProduct(DKPrice);
		}
		if (typeVoucher == 2) {
			entity.setTotalPriceOrder(DKPrice);
		}
		// Chuyển đổi LocalDate sang Date
		Date startDate = Date.from(dateStart.atStartOfDay(ZoneId.systemDefault()).toInstant());
		Date endDate = Date.from(dateEnd.atStartOfDay(ZoneId.systemDefault()).toInstant());

		entity.setDateStart(startDate);
		System.out.println("ngày bắt đầu: " + entity.getDateStart());
		entity.setDateEnd(endDate);
		System.out.println("ngày kết thúc: " + entity.getDateEnd());

		entity.setOriginalNumber(quantity);
		entity.setStatus(true);
		entity.setSale(priceSale);
		entity.setNote(note);
		if (check(model, name, typeVoucher, DKPrice, dateStart, dateEnd, quantity, priceSale, 0, loaiGG)) {
			voucherRepository.saveAndFlush(entity);
			return "redirect:/seller/vouchermanager";
		} else {
			List<TypeVoucher> list = typeVoucherRepository.findAll();
			model.addAttribute("typeVouchers", list);
			model.addAttribute("voucher", entity);
			check(model, name, typeVoucher, DKPrice, dateStart, dateEnd, quantity, priceSale, 0, loaiGG);
			return "seller/pages/vouchermanager";
		}
	}

	@PostMapping("vouchermanager/update/{id}")
	public String postUpdate(Model model, @PathVariable(name = "id") Integer voucherID,
			@RequestParam("name") String name, @RequestParam("voucher") Integer typeVoucher,
			@RequestParam("loaiGG") boolean loaiGG, @RequestParam("PriceDK") double DKPrice,
			@RequestParam("dateStart") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateStart,
			@RequestParam("dateEnd") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateEnd,
			@RequestParam("quantity") int quantity, @RequestParam("priceSale") int priceSale,
			@RequestParam("note") String note) {

		Voucher entity = new Voucher();
		Optional<Voucher> entityOld = voucherRepository.findById(voucherID);
		Optional<TypeVoucher> type = typeVoucherRepository.findById(typeVoucher);
		entity.setId(voucherID);
		entity.setName(name);
		entity.setTypeVoucher(type.get());
		if (typeVoucher == 1) {
			entity.setPriceProduct(DKPrice);
		}
		if (typeVoucher == 2) {
			entity.setTotalPriceOrder(DKPrice);
		}

		// Chuyển đổi LocalDate sang Date
		Date startDate = Date.from(dateStart.atStartOfDay(ZoneId.systemDefault()).toInstant());
		Date endDate = Date.from(dateEnd.atStartOfDay(ZoneId.systemDefault()).toInstant());

		entity.setDateStart(startDate);
		entity.setDateEnd(endDate);
		entity.setOriginalNumber(quantity);
		entity.setStatus(true);
		entity.setSale(priceSale);
		entity.setNote(note);
		if (check(model, name, typeVoucher, DKPrice, dateStart, dateEnd, quantity, priceSale,
				entityOld.get().getQuantity(), loaiGG)) {
			entity.setQuantity(entityOld.get().getQuantity());
			voucherRepository.saveAndFlush(entity);
			return "redirect:/seller/vouchermanager";
		} else {

			listTypeVoucher = typeVoucherRepository.findAll();
			model.addAttribute("currentPath", "update");
			model.addAttribute("typeVouchers", listTypeVoucher);
			model.addAttribute("voucher", entity);
			check(model, name, typeVoucher, DKPrice, dateStart, dateEnd, quantity, priceSale,
					entityOld.get().getQuantity(), loaiGG);
			return "seller/pages/vouchermanager";
		}
	}
}
