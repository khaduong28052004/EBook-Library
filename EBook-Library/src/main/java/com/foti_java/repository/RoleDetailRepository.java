package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.RoleDetail;
import java.util.List;
import com.foti_java.model.Account;


public interface RoleDetailRepository extends JpaRepository<RoleDetail, Integer>{
	List<RoleDetail> findByAccount(Account account);
}
