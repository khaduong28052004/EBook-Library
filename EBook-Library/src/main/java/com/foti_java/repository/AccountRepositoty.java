package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;
import com.foti_java.model.RoleDetail;


public interface AccountRepositoty extends JpaRepository<Account, Integer> {

	@Query(value = "SELECT COUNT(id) as 'acc' " + "FROM Accounts " + "WHERE status = 1 "
			+ "AND numberCitizenIdentification IS NOT NULL " + "AND id NOT IN (" + "    SELECT account_id "
			+ "    FROM RoleDetails " + "    WHERE role_id = 2" + ");", nativeQuery = true)
	Integer countSellerNotCheck();

	@Query(value = "SELECT COUNT(id) as 'acc' " + "FROM Accounts " + "WHERE status = 1 ", nativeQuery = true)
	Integer countAccount();
	
	@Query(value = "  SELECT COUNT(id) as cnt\r\n"
			+ "    FROM Accounts \r\n"
			+ "    WHERE status = 1 \r\n"
			+ "    AND id  IN (\r\n"
			+ "        SELECT account_id \r\n"
			+ "        FROM RoleDetails \r\n"
			+ "        WHERE role_id = 2\r\n"
			+ "    );", nativeQuery = true)
	Integer countSeller();
	
	@Query(value = "  SELECT COUNT(id) as cnt\r\n"
			+ "    FROM Accounts \r\n"
			+ "    WHERE status = 1 \r\n"
			+ "    AND id  IN (\r\n"
			+ "        SELECT account_id \r\n"
			+ "        FROM RoleDetails \r\n"
			+ "        WHERE role_id = 3\r\n"
			+ "    );", nativeQuery = true)
	Integer countUser();
	
	@Query(value = "  SELECT COUNT(id) as cnt\r\n"
			+ "    FROM Accounts \r\n"
			+ "    WHERE status = 1 \r\n"
			+ "    AND id  IN (\r\n"
			+ "        SELECT account_id \r\n"
			+ "        FROM RoleDetails \r\n"
			+ "        WHERE role_id = 1\r\n"
			+ "    );", nativeQuery = true)
	Integer countAdmin();
	
	@Query(value = "select SUM(totalPrice) from Bills WHERE MONTH(dateBuy) = MONTH(GETDATE()) AND YEAR(dateBuy)=YEAR(GETDATE())\r\n"
			+ "", nativeQuery = true)
	Double totalPriceAdmin();
	
	@Query(value = "SELECT \r\n"
			+ "    role,\r\n"
			+ "    COUNT(id) AS count,\r\n"
			+ "    ROUND((COUNT(id) * 100.0 / (SELECT COUNT(*) FROM Accounts)), 1) AS percentage\r\n"
			+ "FROM (\r\n"
			+ "    SELECT id, 'User' AS role\r\n"
			+ "    FROM Accounts \r\n"
			+ "    WHERE status = 1 AND id NOT IN (SELECT account_id FROM RoleDetails WHERE role_id IN (2, 3))\r\n"
			+ "    UNION ALL\r\n"
			+ "    SELECT id, 'Seller' AS role\r\n"
			+ "    FROM Accounts \r\n"
			+ "    WHERE status = 1 AND id IN (SELECT account_id FROM RoleDetails WHERE role_id = 2)\r\n"
			+ "    UNION ALL\r\n"
			+ "    SELECT id, 'Admin' AS role\r\n"
			+ "    FROM Accounts \r\n"
			+ "    WHERE status = 1 AND id IN (SELECT account_id FROM RoleDetails WHERE role_id = 3)\r\n"
			+ ") AS role_counts\r\n"
			+ "GROUP BY role;", nativeQuery = true)
	List<Object[]> findListAccount();

	List<Account> findAllByStatus(boolean status);
	
	@Query(value = "SELECT * FROM Accounts WHERE numberCitizenIdentification IS NOT NULL AND id NOT IN (SELECT A.id FROM Accounts A JOIN RoleDetails RD ON A.id = RD.account_id JOIN Roles R ON R.id = RD.role_id WHERE R.id=2)"
			, nativeQuery = true)
	List<Account> findAllCheckSeller();
}
