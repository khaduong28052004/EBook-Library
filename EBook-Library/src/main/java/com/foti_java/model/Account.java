package com.foti_java.model;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
//@Table(name = "Accounts")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String username;
	String password;
	String avatar;
	String fullname;
	boolean gender;
	String email;
	@Temporal(TemporalType.DATE)
	Date birthday;
	String phone;
	String background;
	String shopName;
	String numberCitizenIdentification;
	String beforeCitizenIdentification;
	String afterCitizenIdentification;

	@OneToMany(mappedBy = "account")
	List<VoucherDetail> voucherDetails;

	@OneToMany(mappedBy = "account")
	List<RoleDetail> roledetails;

	@OneToMany(mappedBy = "account")
	List<Address> addresses;

	@OneToMany(mappedBy = "account")
	List<BankNumber> banksNumbers;

	@OneToMany(mappedBy = "account")
	List<Chat> chats;

	@OneToMany(mappedBy = "account")
	List<Follower> followers;
	
	@OneToMany(mappedBy = "account")
	List<Transection> transections;
	
	@OneToMany(mappedBy = "account")
	List<Bill> bills;
}
