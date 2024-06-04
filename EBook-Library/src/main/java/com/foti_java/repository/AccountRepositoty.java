package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;

public interface AccountRepositoty extends JpaRepository<Account, Integer> {

}
