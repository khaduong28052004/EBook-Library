package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
<<<<<<< phucptpc05587
import org.springframework.data.repository.query.Param;
=======
>>>>>>> MergerCode01

import com.foti_java.model.Bill;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
<<<<<<< phucptpc05587
	//Phuc
    @Query(value = "EXEC CalculateMonthlyBills ?1", nativeQuery = true)
    List<Object[]> calculateMonthlyBills(Integer id); 
    @Query(value = "EXEC CalculateMonthlyBillsFalse ?1", nativeQuery = true)
    List<Object[]> calculateMonthlyBillsFalse(Integer id);
    @Query(value = "EXEC GetFollowerCountByShopId ?1", nativeQuery = true)
    Integer getFollwer(Integer id);
    @Query(value = "EXEC GetLikeCountByShopId ?1", nativeQuery = true)
    Integer getLike(Integer id);
    @Query(value = "EXEC GetEvlaueCountByShopId ?1", nativeQuery = true)
    Integer getEvalue(Integer id);
    @Query(value = "EXEC GetBillSuccessCountByShopId ?1", nativeQuery = true)
    Integer getBillSucess(Integer id);
    @Query(value = "EXEC GetTopBuyersByShopId ?1", nativeQuery = true)
    List<Object> getTopBuyers(Integer id);
    @Query(value = "EXEC GetEvalueNewByShopId ?1", nativeQuery = true)
    List<Object> getEvalueNew(Integer id);
    @Query(value = "EXEC GetTopProductByShopId ?1", nativeQuery = true)
    List<Object> getTopProduct(Integer id);
    @Query(value = "EXEC doanhThu ?1", nativeQuery = true)
    List<Object[]> getDoanhThu(Integer id);
    @Query(value = "EXEC loiNhuan ?1", nativeQuery = true)
    List<Object[]> getLoiNhuan (Integer id);
    @Query(value = "EXEC GetAvgEvalue ?1", nativeQuery = true)
    Double getAVGStar(Integer id);
    @Query(value = "EXEC tongDoanhThu ?1", nativeQuery = true)
    Integer getTongDoanhThu (Integer id);
    @Query(value = "EXEC tongLoiNhuan ?1", nativeQuery = true)
    Integer getTongLoiNhuan (Integer id);
    @Query("Select count(b) FROM Bill b INNER JOIN b.billDetails bd Where b.status = false And b.finishDay is null And bd.product.account.id = :id")
    Integer billChuaDuyet(@Param("id") Integer id);
   
    @Query("Select b FROM Bill b INNER JOIN b.billDetails bd Where b.status = true And b.finishDay is null And bd.product.account.id = :id and b.active = false")
    List<Bill> findByIdAccount(@Param("id") Integer id);
    //Tuyen
    @Query("SELECT B FROM Bill B " + "JOIN B.billDetails BD " + "JOIN BD.product P "
			+ "WHERE P.account.id = ?1 ORDER BY B.dateBuy DESC")
	List<Bill> findAllBySeller(Integer id);

	@Query(value = "exec PROC_TK_NAM_Seller ?1", nativeQuery = true)
	List<Object[]> PROC_TK_NAM_Seller(Integer id);
=======
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
>>>>>>> MergerCode01
}
