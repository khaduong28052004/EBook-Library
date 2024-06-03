package com.foti_java.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.criteria.Order;
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
//@Table(name = "BillDetails")
public class BillDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	int quantity;

	@ManyToOne
	@JoinColumn(name = "product_id")
	Product product;
	
	@ManyToOne
	@JoinColumn(name = "bill_id")
	Bill bill;
}
