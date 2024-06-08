package com.foti_java.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.foti_java.model.Product;
import java.util.List;


public interface ProductRepository extends JpaRepository<Product, Integer> {
List<Product> findAllByActiveAndStatus(boolean active, boolean status);
}
