package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Account;
import com.foti_java.model.RoleDetail;
import java.util.List;
import java.util.Optional;


public interface RoleDetailRepository extends JpaRepository<RoleDetail, Integer>{
	@Query(value = "select * from RoleDetails where RoleDetails.account_id  = ?1", nativeQuery = true)
	List<RoleDetail> findByAccount(Integer account);
}
