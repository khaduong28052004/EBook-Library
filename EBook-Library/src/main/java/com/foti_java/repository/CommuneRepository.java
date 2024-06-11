package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.foti_java.model.Commune;
import com.foti_java.model.District;

public interface CommuneRepository extends JpaRepository<Commune, Integer>{
//	 @Query("SELECT d FROM Commune d WHERE d.district.id = :districts_id")
//	    List<Commune> getCommunesByCommuneId(@Param("provinces_id") Integer districts_id);
	 @Query("SELECT d FROM Commune d WHERE d.district.id = :districts_id")
	 List<Commune> getCommunesByDistrictId(@Param("districts_id") Integer districts_id);

}
