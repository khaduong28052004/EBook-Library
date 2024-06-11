package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Commune;
import com.foti_java.model.Province;

public interface ProvinceRepository extends JpaRepository<Province, Integer> {
	@Query("SELECT a.province FROM Address a WHERE a.account.id = :accountId")
	List<Province> getProvincesByAccountId(@Param("accountId") Integer accountId);
}
