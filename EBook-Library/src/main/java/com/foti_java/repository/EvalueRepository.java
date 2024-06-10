package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Evalue;
import com.foti_java.model.Product;

public interface EvalueRepository extends JpaRepository<Evalue, Integer> {
	List<Evalue> findAllByProductIn(List<Product> listProduct);
}
