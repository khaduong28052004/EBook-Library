package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Bill;

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
}