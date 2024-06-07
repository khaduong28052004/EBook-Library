package com.foti_java.model;

import java.util.Date;
import java.util.List;

import org.hibernate.annotations.Nationalized;

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
@Table(name = "Accounts")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	@Nationalized
	String username;
	@Nationalized
	String password;
	@Nationalized
	String avatar;
	@Nationalized
	String fullname;
	boolean gender;
	@Nationalized
	String email;
	@Temporal(TemporalType.DATE)
	Date birthday;
	@Nationalized
	String phone;
	@Nationalized
	String background;
	@Nationalized
	String shopName;
	@Nationalized
	String numberCitizenIdentification;
	@Nationalized
	String beforeCitizenIdentification;
	@Nationalized
	String afterCitizenIdentification;

	@OneToMany(mappedBy = "account")
	List<VoucherDetail> voucherDetails;

	@OneToMany(mappedBy = "account")
	List<RoleDetail> roledetails;

	@OneToMany(mappedBy = "account")
	List<Address> addresses;

	@OneToMany(mappedBy = "account")
	List<Chat> chats;

	@OneToMany(mappedBy = "account")
	List<Follower> followers;
	
	@OneToMany(mappedBy = "account")
	List<Transaction> transections;
	
	@OneToMany(mappedBy = "account")
	List<Bill> bills;
	
	@OneToMany(mappedBy = "account")
	List<Bank> banks;
	
	@OneToMany(mappedBy = "account")
	List<Product> products;
}
