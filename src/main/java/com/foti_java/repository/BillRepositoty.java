package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Bill;

public interface BillRepositoty extends JpaRepository<Bill, Integer> {

}
