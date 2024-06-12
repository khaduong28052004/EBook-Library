package com.foti_java.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{
      @Override
    default Optional<Role> findById(Integer id) {
    	// TODO Auto-generated method stub
    	return Optional.empty();
    }
      
   
}
