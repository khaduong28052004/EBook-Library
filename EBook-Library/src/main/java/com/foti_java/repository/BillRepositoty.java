package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
	Bill findFirstByAccountAndBillDetails(Account account, List<BillDetail> bill);
	
}
