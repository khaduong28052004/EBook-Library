package com.foti_java.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
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
@Table(name = "Followers")
public class Follower {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	boolean status;
	int follower_id;
	
	@ManyToOne
	@JoinColumn(name = "account_id")
	Account account;
	
}
