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
//@Table(name = "Bills")
public class Bill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	double totalPrice;
	int quantity;
	boolean status;
	String address;
	double priceShipping;
	
	@OneToMany(mappedBy = "bill")
	List<BillDetail> billDetails;
	
	@ManyToOne
	@JoinColumn(name = "voucher_id")
	Voucher voucher;
//	
//	@OneToMany(mappedBy = "bill")
//	List<ReturnBook> returnBooks;
	
	@ManyToOne
	@JoinColumn(name = "orderStatuses_id")
	OrderStatus orderStatuses;
	
	@ManyToOne
	@JoinColumn(name = "paymentMethod_id")
	PaymentMethod paymentMethod;
	
	@ManyToOne
	@JoinColumn(name = "account_id")
	Account account;
}
