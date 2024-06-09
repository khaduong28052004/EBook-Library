package com.foti_java.model;

import java.util.Date;
import java.util.List;

import org.hibernate.annotations.Nationalized;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
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
@Table(name = "Bills")
public class Bill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	double totalPrice;
	double discount;
	int quantity;
	boolean status;

	@Temporal(TemporalType.TIMESTAMP)
	Date dateBuy = new Date();

	@Nationalized
	String address;
	double priceShipping;
	
	Date finishDay;
	@OneToMany(mappedBy = "bill")
	List<BillDetail> billDetails;
	
	@ManyToOne
	@JoinColumn(name = "voucher_id")
	Voucher voucher;
//	
	@OneToOne(mappedBy = "bill")
	VoucherDetail voucherDetail;

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
	
	@OneToMany(mappedBy = "bill")
	List<ReturnBook> returnBooks;
}
