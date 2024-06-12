package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;

public interface AccountRepositoty extends JpaRepository<Account, Integer> {
//   @Query("select c form account c where name like ?1")
//   public List<Account> findlogin(String username); 
     public Account findByUsername(String username);
     public Account findByEmail(String email);
}
