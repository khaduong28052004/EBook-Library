package com.foti_java.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.foti_java.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	List<Product> findAllByActiveAndStatus(boolean active, boolean status);
    @Query("SELECT p FROM Product p WHERE p.status = true")
    public List<Product> findByStatus();
}