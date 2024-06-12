package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Bill;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
	  //Tuyen
    @Query("SELECT B FROM Bill B " + "JOIN B.billDetails BD " + "JOIN BD.product P "
			+ "WHERE P.account.id = ?1 ORDER BY B.finishDay DESC")
	List<Bill> findAllBySeller(Integer id);

	@Query(value = "exec PROC_TK_NAM_Seller ?1", nativeQuery = true)
	List<Object[]> PROC_TK_NAM_Seller(Integer id);

	@Query(value = "exec TK_SELLER_IN_ACCOUNT", nativeQuery = true)
	List<Object[]> TK_SELLER_IN_ACCOUNT();
	
	@Query(value = "SELECT B.* FROM Bills B JOIN BillDetails BD ON B.id = BD.bill_id JOIN Products P ON P.id = BD.product_id\r\n"
			+ "WHERE P.account_id = ?1 AND B.status=1 AND B.finishDay IS NOT NULL AND B.finishDay BETWEEN ?2 AND ?3\r\n"
			+ "ORDER BY B.finishDay DESC",nativeQuery = true)
	List<Bill> findAllBySellerBeweenAnd(int id, String startDate, String endDate);
}
