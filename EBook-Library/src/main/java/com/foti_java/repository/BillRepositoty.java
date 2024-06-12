package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Bill;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {
	//kien
		@Query(value="EXEC GetCustomerStatistics1", nativeQuery = true)
		List<Object[]> Selerstatistical();
	

}
