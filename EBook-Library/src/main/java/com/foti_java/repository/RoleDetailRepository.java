package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Account;
import com.foti_java.model.RoleDetail;
import java.util.List;
import java.util.Optional;


public interface RoleDetailRepository extends JpaRepository<RoleDetail, Integer>{
//   public List<RoleDetail> findById(Integer id);
//   public Optional<RoleDetail> findByAccount(Account account);
	@Override
	default List<RoleDetail> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	 public List<RoleDetail> findByAccount(Account account);
	
}
