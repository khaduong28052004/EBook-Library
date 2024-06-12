package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Bill;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
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
}