package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Account;
import com.foti_java.model.Address;

public interface AddressRepository extends JpaRepository<Address, Integer> {
	List<Address> findAllByAccount(Account account);
	@Query(value = "SELECT Address.* FROM Address JOIN Accounts ON Address.acount_id =Accounts.id  JOIN Products P ON P.account_id =Accounts.id JOIN BillDetails BD ON BD.product_id = P.id WHERE BD.bill_id= :billId", nativeQuery = true)
	 Address getAddress(@Param("billId") Integer billId) ;
}
