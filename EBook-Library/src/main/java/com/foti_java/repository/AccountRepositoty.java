package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;

public interface AccountRepositoty extends JpaRepository<Account, Integer> {
	Account findByUsernameAndPassword(String userName, String passWord);

	Account findByEmail(String email);

	List<Account> findAllByIdIn(List<Integer> list);
}
