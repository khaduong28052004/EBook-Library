package com.foti_java.model;

import java.util.Date;
import java.util.List;

import org.hibernate.annotations.Nationalized;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
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
	private Integer id;

//	@Nationalized
	@Column(name = "username")
	private String username;

//	@Nationalized
	@Column(name = "password")
	private String password;

//	@Nationalized
	@Column(name = "avatar")
	private String avatar;

//	@Nationalized
	@Column(name = "fullname", columnDefinition = "VARCHAR")
	private String fullname;

	@Column(name = "gender")
	private boolean gender;
	
	@Column(name = "status")
	private boolean status;

//	@Nationalized
	@Column(name = "email")
	private String email;
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE) // Ensure correct date type
	@Column(name = "birthday")
	private Date birthday;

//	@Nationalized
	@Column(name = "phone")
	private String phone;

//	@Nationalized
	@Column(name = "background")
	private String background;
	
//	@Nationalized
	@Column(name = "shopname", columnDefinition = "VARCHAR")
	private String shopname;

//	@Nationalized
	@Column(name = "numbercitizenidentification")
	private String numberCitizenIdentification;

//	@Nationalized
	@Column(name = "beforecitizenidentification")
	private String beforeCitizenIdentification;

//	@Nationalized
	@Column(name = "aftercitizenidentification")
	private String afterCitizenIdentification;

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
}
