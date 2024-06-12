package com.foti_java.repository;

import java.util.List;

import java.util.Optional;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Bill;

import com.foti_java.model.OrderStatus;
import com.foti_java.model.Product;


public interface BillRepositoty extends JpaRepository<Bill, Integer> {
	//kien
	@Query(value="EXEC GetCustomerStatistics1", nativeQuery = true)
	List<Object[]> Selerstatistical();
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


	@Query(value = "SELECT Bills.*,  Products.price*Products.quantity AS Total FROM Bills JOIN Accounts ON Accounts.id = Bills.account_id "
			+ "JOIN BillDetails ON BillDetails.bill_id = Bills.id "
			+ "JOIN Products ON Products.id = BillDetails.product_id "
			+ "WHERE Bills.account_id IN (SELECT Accounts.id FROM Accounts WHERE Accounts.username LIKE %:username%)", nativeQuery = true)
	List<Bill> getBillsByUsername(@Param("username") String username);

	@Query(value = " SELECT Bills.totalPrice FROM Bills JOIN Accounts ON Accounts.id = Bills.account_id "
			+ "			JOIN BillDetails ON BillDetails.bill_id = Bills.id \r\n"
			+ "			JOIN Products ON Products.id = BillDetails.product_id WHERE Accounts.username= :username AND Bills.id = :id", nativeQuery = true)
	Double getTotal(@Param("username") String username, @Param("id") Integer id);

	@Query(value = "  SELECT Bills.* FROM Bills JOIN OrderStatuses ON Bills.orderStatuses_id = OrderStatuses.id\r\n"
			+ "JOIN Accounts ON Accounts.id = Bills.account_id "
			+ "	WHERE Bills.orderStatuses_id  IN (SELECT id FROM OrderStatuses WHERE OrderStatuses.name LIKE %:delivery%) AND Accounts.username LIKE :username ", nativeQuery = true)
	List<Bill> getBillsByDelivery(@Param("delivery") String delivery, @Param("username") String username);

	@Query(value = "SELECT Bills.* FROM Bills JOIN Accounts ON Accounts.id = Bills.account_id WHERE Accounts.username = :account AND Bills.id = :id", nativeQuery = true)
	Optional<Bill> findBillById(@Param("account") Integer accountId, @Param("id") Integer id);

	@Query(value = "SELECT Bills.* FROM Bills JOIN Accounts ON Accounts.id = Bills.account_id WHERE Accounts.username = :username", nativeQuery = true)
	List<Bill> getAll(@Param("username") String username);

	@Query(value = "SELECT a.shopName,b.id AS billId, p.name, p.price, bd.quantity,( bd.quantity * p.price) as total\r\n"
			+ "FROM Accounts a JOIN Bills b ON a.id = b.account_id JOIN BillDetails bd ON b.id = bd.bill_id JOIN Products p ON bd.product_id = p.id \r\n"
			+ "JOIN OrderStatuses os ON b.orderStatuses_id = os.id \r\n" + "WHERE a.username = :username  \r\n"
			+ " AND os.name = :orderStatus", nativeQuery = true)
	List<Object[]> getBillDetailsAccountAndStatus(@Param("username") String username,
			@Param("orderStatus") String orderStatus);

	@Query(value = "SELECT Accounts.shopName FROM Accounts JOIN Bills ON Accounts.id = Bills.account_id WHERE Accounts.username = :username AND Bills.id = :billId", nativeQuery = true)
	String findShop(@Param("username") String username, @Param("billId") Integer billId);

	@Query(value = "SELECT (P.price * B.quantity) AS total FROM Accounts A JOIN Bills B ON A.id = B.account_id JOIN Products P ON B.product_id = P.id WHERE Accounts.username = :username AND Bills.id = :billId", nativeQuery = true)
	String total(@Param("username") String username, @Param("billId") Integer billId);

	Optional<Bill> findById(Integer id);
	
	

	@Query(value = "exec PROC_TK_NAM_Seller ?1", nativeQuery = true)
	List<Object[]> PROC_TK_NAM_Seller(Integer id);
}

