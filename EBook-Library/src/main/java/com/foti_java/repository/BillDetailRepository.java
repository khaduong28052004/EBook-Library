package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;
import com.foti_java.model.Bill;
import com.foti_java.model.BillDetail;

public interface BillDetailRepository extends JpaRepository<BillDetail, Integer> {

	@Query("SELECT BD FROM Bill B "
			+ "JOIN B.billDetails BD "
			+ "WHERE B.id = ?1 ORDER BY B.dateBuy DESC")
	List<BillDetail> findAllByBill(Integer id);
}
