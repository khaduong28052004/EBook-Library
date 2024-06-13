package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.District;

public interface DistrictRepository extends JpaRepository<District, Integer> {
//	@Query("SELECT d FROM District d WHERE d.province.id = :provinceId")
//    List<District> getDistrictsByProvinceId(@Param("provinceId") Integer provinceId);
}
