package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Bank;

public interface BankRepositoty extends JpaRepository<Bank, Integer> {

}
