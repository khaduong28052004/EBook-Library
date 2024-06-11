package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Address;


public interface AddressRepository extends JpaRepository<Address, Integer> {
	 @Query("SELECT d FROM Address d WHERE d.account.id = :acount_id")
	 List<Address> getAddressByAccountId(@Param("acount_id") Integer acount_id);
}
