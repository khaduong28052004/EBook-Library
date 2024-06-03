package com.foti_java.model;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

@Entity
//@Table(name = "Vouchers")
public class Voucher {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String name;
	double priceProduct;
	double totalPriceOrder;
	int sale;
	int quantity;
	boolean status;
	@Temporal(TemporalType.DATE)
	Date dateStart;
	@Temporal(TemporalType.DATE)
	Date dateEnd;
	int originalNumber;
	
	@OneToMany(mappedBy = "voucher")
	List<VoucherDetail> voucherDetails;
	
	@ManyToOne
	@JoinColumn(name = "typeOfVourcher_id")
	typeOfVoucher typeOfVourcher;
	
	@OneToMany(mappedBy = "voucher")
	List<Bill> bills;
}
