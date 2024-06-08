package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Bill;
import com.foti_java.model.Voucher;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
	@Query("SELECT B FROM Bill B " + "JOIN B.billDetails BD " + "JOIN BD.product P "
			+ "WHERE P.account.id = ?1 ORDER BY B.dateBuy DESC")
	List<Bill> findAllBySeller(Integer id);

	@Query(value = "exec PROC_TK_NAM_Seller ?1", nativeQuery = true)
	List<Object[]> PROC_TK_NAM_Seller(Integer id);
}
