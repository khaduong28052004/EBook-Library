package com.foti_java.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Bill;

import lombok.Data;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
	//Phuc
    @Query(value = "EXEC CalculateMonthlyBills", nativeQuery = true)
    List<Object[]> calculateMonthlyBills(); 
    @Query(value = "EXEC CalculateMonthlyBillsFalse", nativeQuery = true)
    List<Object[]> calculateMonthlyBillsFalse();
    @Query("Select b FROM Bill b Where b.status = false And b.finishDay = null And b.account.id = :id")
    List<Bill> findByIdAccount(@Param("id") Integer id);
    //Tuyen
    @Query("SELECT B FROM Bill B " + "JOIN B.billDetails BD " + "JOIN BD.product P "
			+ "WHERE P.account.id = ?1 ORDER BY B.dateBuy DESC")
	List<Bill> findAllBySeller(Integer id);

	@Query(value = "exec PROC_TK_NAM_Seller ?1", nativeQuery = true)
	List<Object[]> PROC_TK_NAM_Seller(Integer id);

	@Query(value = "exec TK_SELLER_IN_ACCOUNT", nativeQuery = true)
	List<Object[]> TK_SELLER_IN_ACCOUNT();
	
	@Query(value = "SELECT B.* FROM Bills B JOIN BillDetails BD ON B.id = BD.bill_id JOIN Products P ON P.id = BD.product_id\r\n"
			+ "WHERE P.account_id = ?1 AND B.status=1 AND B.finishDay IS NOT NULL AND B.finishDay BETWEEN ?2 AND ?3\r\n"
			+ "ORDER BY B.dateBuy DESC",nativeQuery = true)
	List<Bill> findAllBySellerBeweenAnd(int id, String startDate, String endDate);
}