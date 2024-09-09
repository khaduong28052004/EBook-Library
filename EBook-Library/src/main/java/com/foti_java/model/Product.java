package com.foti_java.model;

import java.util.Date;
import java.util.List;

import org.hibernate.annotations.Nationalized;

import com.fasterxml.jackson.annotation.JsonIgnore;

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


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Products")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	double price;
	double discount;
	boolean discountType;
	@Nationalized
	String name;
	@Nationalized
	String introduce;
	@Nationalized
	String writerName;
	@Nationalized
	String publishingCompany;
	@Temporal(TemporalType.DATE)
	Date date;
	String image;
	boolean status;
	int quantity;
	int quantitySell;
	boolean active;
	double weight;
	 @JsonIgnore
	@OneToMany(mappedBy = "product")
	List<ImageProduct> imageProducts;

	@ManyToOne
	@JoinColumn(name = "category_id")
	Category category;

	@ManyToOne
	@JoinColumn(name = "account_id")
	Account account;
	 @JsonIgnore
	@OneToMany(mappedBy = "product")
	List<CartDetail> cartDetail;
	 @JsonIgnore
	@OneToMany(mappedBy = "product")
	List<BillDetail> billDetails;
	 @JsonIgnore
	@OneToMany(mappedBy = "product")
	List<Evalue> evalues;
	 @JsonIgnore
	@OneToMany(mappedBy = "product")
	List<Share> shares;
	 @JsonIgnore
	@OneToMany(mappedBy = "product")
	List<Like> likes;
}
